@interface CNVCardDateComponentsFormatter
+ (id)dateComponentsFromALTBDAYString:(id)a3;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (id)altBDAYStringFromDateComponents:(id)a3;
- (id)compactYearMonthDayDateFormatter;
- (id)compactYearMonthDayDateHourMinuteSecondZFormatter;
- (id)dateComponentsFromALTBDAYString:(id)a3;
- (id)dateComponentsFromString:(id)a3;
- (id)gregorianCalendar;
- (id)hyphenatedMonthDayDateFormatter;
- (id)monthDayDateFormatter;
- (id)monthDayStringFromDateComponents:(id)a3;
- (id)stringForComponentValue:(int64_t)a3 format:(id)a4;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromDateComponents:(id)a3;
- (id)yearMonthDayDateFormatter;
- (id)yearMonthDayDateHourMinuteSecondZFormatter;
- (id)yearMonthDayStringFromDateComponents:(id)a3;
@end

@implementation CNVCardDateComponentsFormatter

- (id)stringFromDateComponents:(id)a3
{
  if (a3)
  {
    v4 = [(CNVCardDateComponentsFormatter *)self stringForObjectValue:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)gregorianCalendar
{
  gregorianCalendar = self->_gregorianCalendar;
  if (!gregorianCalendar)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA80]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v6 = self->_gregorianCalendar;
    self->_gregorianCalendar = v5;

    gregorianCalendar = self->_gregorianCalendar;
  }

  return gregorianCalendar;
}

- (id)hyphenatedMonthDayDateFormatter
{
  hyphenatedMonthDayDateFormatter = self->_hyphenatedMonthDayDateFormatter;
  if (!hyphenatedMonthDayDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_hyphenatedMonthDayDateFormatter;
    self->_hyphenatedMonthDayDateFormatter = v4;

    v6 = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_hyphenatedMonthDayDateFormatter setCalendar:v6];

    [(NSDateFormatter *)self->_hyphenatedMonthDayDateFormatter setDateFormat:@"--MM-dd"];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:-1.25138736e10];
    [(NSDateFormatter *)self->_hyphenatedMonthDayDateFormatter setDefaultDate:v7];

    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_hyphenatedMonthDayDateFormatter setLocale:v8];

    hyphenatedMonthDayDateFormatter = self->_hyphenatedMonthDayDateFormatter;
  }

  return hyphenatedMonthDayDateFormatter;
}

- (id)monthDayDateFormatter
{
  monthDayDateFormatter = self->_monthDayDateFormatter;
  if (!monthDayDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_monthDayDateFormatter;
    self->_monthDayDateFormatter = v4;

    v6 = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_monthDayDateFormatter setCalendar:v6];

    [(NSDateFormatter *)self->_monthDayDateFormatter setDateFormat:@"--MMdd"];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:-1.25138736e10];
    [(NSDateFormatter *)self->_monthDayDateFormatter setDefaultDate:v7];

    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_monthDayDateFormatter setLocale:v8];

    monthDayDateFormatter = self->_monthDayDateFormatter;
  }

  return monthDayDateFormatter;
}

- (id)yearMonthDayDateHourMinuteSecondZFormatter
{
  yearMonthDayDateHourMinuteSecondZFormatter = self->_yearMonthDayDateHourMinuteSecondZFormatter;
  if (!yearMonthDayDateHourMinuteSecondZFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_yearMonthDayDateHourMinuteSecondZFormatter;
    self->_yearMonthDayDateHourMinuteSecondZFormatter = v4;

    v6 = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_yearMonthDayDateHourMinuteSecondZFormatter setCalendar:v6];

    [(NSDateFormatter *)self->_yearMonthDayDateHourMinuteSecondZFormatter setDateFormat:@"y-MM-dd'T'HH:mm:ss'Z'"];
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_yearMonthDayDateHourMinuteSecondZFormatter setLocale:v7];

    yearMonthDayDateHourMinuteSecondZFormatter = self->_yearMonthDayDateHourMinuteSecondZFormatter;
  }

  return yearMonthDayDateHourMinuteSecondZFormatter;
}

- (id)yearMonthDayDateFormatter
{
  yearMonthDayDateFormatter = self->_yearMonthDayDateFormatter;
  if (!yearMonthDayDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_yearMonthDayDateFormatter;
    self->_yearMonthDayDateFormatter = v4;

    v6 = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_yearMonthDayDateFormatter setCalendar:v6];

    [(NSDateFormatter *)self->_yearMonthDayDateFormatter setDateFormat:@"y-MM-dd"];
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_yearMonthDayDateFormatter setLocale:v7];

    yearMonthDayDateFormatter = self->_yearMonthDayDateFormatter;
  }

  return yearMonthDayDateFormatter;
}

- (id)compactYearMonthDayDateFormatter
{
  compactYearMonthDayDateFormatter = self->_compactYearMonthDayDateFormatter;
  if (!compactYearMonthDayDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_compactYearMonthDayDateFormatter;
    self->_compactYearMonthDayDateFormatter = v4;

    v6 = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_compactYearMonthDayDateFormatter setCalendar:v6];

    [(NSDateFormatter *)self->_compactYearMonthDayDateFormatter setDateFormat:@"yyyyMMdd"];
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_compactYearMonthDayDateFormatter setLocale:v7];

    compactYearMonthDayDateFormatter = self->_compactYearMonthDayDateFormatter;
  }

  return compactYearMonthDayDateFormatter;
}

- (id)compactYearMonthDayDateHourMinuteSecondZFormatter
{
  compactYearMonthDayDateHourMinuteSecondZFormatter = self->_compactYearMonthDayDateHourMinuteSecondZFormatter;
  if (!compactYearMonthDayDateHourMinuteSecondZFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_compactYearMonthDayDateHourMinuteSecondZFormatter;
    self->_compactYearMonthDayDateHourMinuteSecondZFormatter = v4;

    v6 = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_compactYearMonthDayDateHourMinuteSecondZFormatter setCalendar:v6];

    [(NSDateFormatter *)self->_compactYearMonthDayDateHourMinuteSecondZFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_compactYearMonthDayDateHourMinuteSecondZFormatter setLocale:v7];

    compactYearMonthDayDateHourMinuteSecondZFormatter = self->_compactYearMonthDayDateHourMinuteSecondZFormatter;
  }

  return compactYearMonthDayDateHourMinuteSecondZFormatter;
}

- (id)dateComponentsFromString:(id)a3
{
  if (a3)
  {
    v8 = 0;
    v4 = [(CNVCardDateComponentsFormatter *)self getObjectValue:&v8 forString:a3 errorDescription:0];
    v5 = v8;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)monthDayStringFromDateComponents:(id)a3
{
  v3 = a3;
  if ([v3 month] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld-%02ld-%02ld", 1604, objc_msgSend(v3, "month"), objc_msgSend(v3, "day")];
  }

  return v4;
}

- (id)yearMonthDayStringFromDateComponents:(id)a3
{
  v3 = a3;
  if ([v3 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld-%02ld-%02ld", objc_msgSend(v3, "year"), objc_msgSend(v3, "month"), objc_msgSend(v3, "day")];
  }

  return v4;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(CNVCardDateComponentsFormatter *)self yearMonthDayStringFromDateComponents:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [(CNVCardDateComponentsFormatter *)self monthDayStringFromDateComponents:v4];
      v7 = v8;
      if (v8)
      {
        v9 = v8;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = a4;
  if (![v8 length])
  {
    LOBYTE(v16) = 0;
    goto LABEL_17;
  }

  v9 = [(CNVCardDateComponentsFormatter *)self yearMonthDayDateFormatter];
  v54 = 0;
  v10 = [v9 getObjectValue:&v54 forString:v8 errorDescription:a5];
  v11 = 0;
  if (v10)
  {
    gregorianCalendar = self->_gregorianCalendar;
    v13 = v54;
    v11 = [(NSCalendar *)gregorianCalendar components:28 fromDate:v13];
    [v11 setCalendar:self->_gregorianCalendar];
  }

  v14 = [(CNVCardDateComponentsFormatter *)self yearMonthDayDateHourMinuteSecondZFormatter];
  v48 = v14;
  if (v10)
  {
    v15 = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateFormatter];
LABEL_10:
    v23 = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateHourMinuteSecondZFormatter];
LABEL_11:
    v24 = [(CNVCardDateComponentsFormatter *)self hyphenatedMonthDayDateFormatter];
LABEL_12:
    v25 = [(CNVCardDateComponentsFormatter *)self monthDayDateFormatter];
    goto LABEL_13;
  }

  v53 = 0;
  v17 = [v14 getObjectValue:&v53 forString:v8 errorDescription:a5];
  v18 = v17;
  if (v17)
  {
    v19 = self->_gregorianCalendar;
    v20 = v53;
    v21 = [(NSCalendar *)v19 components:28 fromDate:v20];

    [v21 setCalendar:self->_gregorianCalendar];
    v11 = v21;
  }

  v22 = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateFormatter];
  v15 = v22;
  if (v18)
  {
    goto LABEL_10;
  }

  v52 = 0;
  v28 = [v22 getObjectValue:&v52 forString:v8 errorDescription:a5];
  v29 = v28;
  if (v28)
  {
    v30 = self->_gregorianCalendar;
    v31 = v52;
    v32 = [(NSCalendar *)v30 components:28 fromDate:v31];

    [v32 setCalendar:self->_gregorianCalendar];
    v11 = v32;
  }

  v33 = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateHourMinuteSecondZFormatter];
  v23 = v33;
  if (v29)
  {
    goto LABEL_11;
  }

  v51 = 0;
  v34 = [v33 getObjectValue:&v51 forString:v8 errorDescription:a5];
  v35 = v34;
  if (v34)
  {
    v36 = self->_gregorianCalendar;
    v45 = v51;
    v37 = [(NSCalendar *)v36 components:28 fromDate:v45];

    [v37 setCalendar:self->_gregorianCalendar];
    v11 = v37;
  }

  v38 = [(CNVCardDateComponentsFormatter *)self hyphenatedMonthDayDateFormatter];
  v24 = v38;
  if (v35)
  {
    goto LABEL_12;
  }

  v50 = 0;
  v46 = [v38 getObjectValue:&v50 forString:v8 errorDescription:a5];
  if (v46)
  {
    v39 = self->_gregorianCalendar;
    v42 = v50;
    v40 = [(NSCalendar *)v39 components:24 fromDate:v42];

    [v40 setCalendar:self->_gregorianCalendar];
    v11 = v40;
  }

  v41 = [(CNVCardDateComponentsFormatter *)self monthDayDateFormatter];
  v25 = v41;
  if ((v46 & 1) == 0)
  {
    v49 = 0;
    v16 = [v41 getObjectValue:&v49 forString:v8 errorDescription:a5];
    if (v16)
    {
      v43 = self->_gregorianCalendar;
      v47 = v49;
      v44 = [(NSCalendar *)v43 components:24 fromDate:v47];

      v11 = v44;
      [v44 setCalendar:self->_gregorianCalendar];
    }

    goto LABEL_14;
  }

LABEL_13:
  LOBYTE(v16) = 1;
LABEL_14:
  if (a3)
  {
    v26 = v11;
    *a3 = v11;
  }

LABEL_17:
  return v16;
}

+ (id)dateComponentsFromALTBDAYString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v5 dateComponentsFromALTBDAYString:v4];

  return v6;
}

- (id)dateComponentsFromALTBDAYString:(id)a3
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [CNVCardDateScanner scannerWithString:v4];

  [v5 setEra:{objc_msgSend(v6, "scanCalendarUnit:", 2)}];
  [v5 setYear:{objc_msgSend(v6, "scanCalendarUnit:", 4)}];
  [v5 setMonth:{objc_msgSend(v6, "scanCalendarUnit:", 8)}];
  [v5 setLeapMonth:{objc_msgSend(v6, "scanLeapMarker")}];
  [v5 setDay:{objc_msgSend(v6, "scanCalendarUnit:", 16)}];
  if ([v5 day] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "month") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)altBDAYStringFromDateComponents:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [v4 era], @"%04li");
  [v5 appendString:v6];

  v7 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [v4 year], @"%04li");
  [v5 appendString:v7];

  v8 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [v4 month], @"%02li");
  [v5 appendString:v8];

  if ([v4 isLeapMonth])
  {
    [v5 appendString:@"L"];
  }

  v9 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [v4 day], @"%02li");
  [v5 appendString:v9];

  return v5;
}

- (id)stringForComponentValue:(int64_t)a3 format:(id)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"-";
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:a4, a3];
  }

  return v5;
}

@end