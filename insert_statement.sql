INSERT INTO BASE_DATA (
            DVID, DATE1, VENUE, HOUSE, ADDRESS,
            GUEST, STATUS, BOOKING_ID,
            PURPOSE1, CONTRACTOR1,
            SOURCE1, BOOKING_DATE, 
            AMOUNT1, STATUS1,
            NOTE, EXPENSE_ID, BOOKING_ID1,
            PURPOSE2, CONTRACTOR2,
            SOURCE2, PAYMENT_DATE, 
            AMOUNT2, REMAINING, 
            STATUS2, PAID_BY
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ,
        (
            row['DVID'], row['DATE1'], row['VENUE'], row['HOUSE'], row['ADDRESS'],
            row['GUEST'], row['STATUS'], row['BOOKING_ID'], row['PURPOSE1'], row['CONTRACTOR1'],
            row['SOURCE1'], row['BOOKING_DATE'], row['AMOUNT1'], row['STATUS1'],
            row['NOTE'], row['EXPENSE_ID'], row['BOOKING_ID1'], row['PURPOSE2'], row['CONTRACTOR2'],
            row['SOURCE2'], row['PAYMENT_DATE'], row['AMOUNT2'], row['REMAINING'], row['STATUS2'], row['PAID_BY']
        )
    );
	
	
	
	
/*Stored Proc for BOOKING Table

insert into BOOKING (BOOKING_ID,PURPOSE,CONTRACTOR,SOURCE,BOOKING_DATE,AMOUNT,STATUS,NOTE,EID) 

select BD.BOOKING_ID as BOOKING_ID,
BD.PURPOSE1 as PURPOSE,
BD.CONTRACTOR1 as CONTRACTOR,
BD.SOURCE1 as SOURCE,
BD.BOOKING_DATE as BOOKING_DATE, 
BD.AMOUNT1 as AMOUNT,
case when BD.AMOUNT1 is not null then 'CONFIRMED' else 'PENDING' end as STATUS,
BD.NOTE as NOTE,
EV.EVENT_TYP_ID as EID

from BASE_DATA BD

inner join EVENT_TYPE EV
on BD.PURPOSE1=EV.EVENT_CATEGORY

where BD.BOOKING_ID is not null


*/