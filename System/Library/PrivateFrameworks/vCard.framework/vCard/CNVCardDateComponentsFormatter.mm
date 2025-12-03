@interface CNVCardDateComponentsFormatter
+ (id)dateComponentsFromALTBDAYString:(id)string;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (id)altBDAYStringFromDateComponents:(id)components;
- (id)compactYearMonthDayDateFormatter;
- (id)compactYearMonthDayDateHourMinuteSecondZFormatter;
- (id)dateComponentsFromALTBDAYString:(id)string;
- (id)dateComponentsFromString:(id)string;
- (id)gregorianCalendar;
- (id)hyphenatedMonthDayDateFormatter;
- (id)monthDayDateFormatter;
- (id)monthDayStringFromDateComponents:(id)components;
- (id)stringForComponentValue:(int64_t)value format:(id)format;
- (id)stringForObjectValue:(id)value;
- (id)stringFromDateComponents:(id)components;
- (id)yearMonthDayDateFormatter;
- (id)yearMonthDayDateHourMinuteSecondZFormatter;
- (id)yearMonthDayStringFromDateComponents:(id)components;
@end

@implementation CNVCardDateComponentsFormatter

- (id)stringFromDateComponents:(id)components
{
  if (components)
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

    gregorianCalendar = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_hyphenatedMonthDayDateFormatter setCalendar:gregorianCalendar];

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

    gregorianCalendar = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_monthDayDateFormatter setCalendar:gregorianCalendar];

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

    gregorianCalendar = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_yearMonthDayDateHourMinuteSecondZFormatter setCalendar:gregorianCalendar];

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

    gregorianCalendar = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_yearMonthDayDateFormatter setCalendar:gregorianCalendar];

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

    gregorianCalendar = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_compactYearMonthDayDateFormatter setCalendar:gregorianCalendar];

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

    gregorianCalendar = [(CNVCardDateComponentsFormatter *)self gregorianCalendar];
    [(NSDateFormatter *)self->_compactYearMonthDayDateHourMinuteSecondZFormatter setCalendar:gregorianCalendar];

    [(NSDateFormatter *)self->_compactYearMonthDayDateHourMinuteSecondZFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_compactYearMonthDayDateHourMinuteSecondZFormatter setLocale:v7];

    compactYearMonthDayDateHourMinuteSecondZFormatter = self->_compactYearMonthDayDateHourMinuteSecondZFormatter;
  }

  return compactYearMonthDayDateHourMinuteSecondZFormatter;
}

- (id)dateComponentsFromString:(id)string
{
  if (string)
  {
    v8 = 0;
    v4 = [(CNVCardDateComponentsFormatter *)self getObjectValue:&v8 forString:string errorDescription:0];
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

- (id)monthDayStringFromDateComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld-%02ld-%02ld", 1604, objc_msgSend(componentsCopy, "month"), objc_msgSend(componentsCopy, "day")];
  }

  return v4;
}

- (id)yearMonthDayStringFromDateComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld-%02ld-%02ld", objc_msgSend(componentsCopy, "year"), objc_msgSend(componentsCopy, "month"), objc_msgSend(componentsCopy, "day")];
  }

  return v4;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(CNVCardDateComponentsFormatter *)self yearMonthDayStringFromDateComponents:valueCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [(CNVCardDateComponentsFormatter *)self monthDayStringFromDateComponents:valueCopy];
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

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  if (![stringCopy length])
  {
    LOBYTE(v16) = 0;
    goto LABEL_17;
  }

  yearMonthDayDateFormatter = [(CNVCardDateComponentsFormatter *)self yearMonthDayDateFormatter];
  v54 = 0;
  v10 = [yearMonthDayDateFormatter getObjectValue:&v54 forString:stringCopy errorDescription:description];
  v11 = 0;
  if (v10)
  {
    gregorianCalendar = self->_gregorianCalendar;
    v13 = v54;
    v11 = [(NSCalendar *)gregorianCalendar components:28 fromDate:v13];
    [v11 setCalendar:self->_gregorianCalendar];
  }

  yearMonthDayDateHourMinuteSecondZFormatter = [(CNVCardDateComponentsFormatter *)self yearMonthDayDateHourMinuteSecondZFormatter];
  v48 = yearMonthDayDateHourMinuteSecondZFormatter;
  if (v10)
  {
    compactYearMonthDayDateFormatter = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateFormatter];
LABEL_10:
    compactYearMonthDayDateHourMinuteSecondZFormatter = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateHourMinuteSecondZFormatter];
LABEL_11:
    hyphenatedMonthDayDateFormatter = [(CNVCardDateComponentsFormatter *)self hyphenatedMonthDayDateFormatter];
LABEL_12:
    monthDayDateFormatter = [(CNVCardDateComponentsFormatter *)self monthDayDateFormatter];
    goto LABEL_13;
  }

  v53 = 0;
  v17 = [yearMonthDayDateHourMinuteSecondZFormatter getObjectValue:&v53 forString:stringCopy errorDescription:description];
  v18 = v17;
  if (v17)
  {
    v19 = self->_gregorianCalendar;
    v20 = v53;
    v21 = [(NSCalendar *)v19 components:28 fromDate:v20];

    [v21 setCalendar:self->_gregorianCalendar];
    v11 = v21;
  }

  compactYearMonthDayDateFormatter2 = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateFormatter];
  compactYearMonthDayDateFormatter = compactYearMonthDayDateFormatter2;
  if (v18)
  {
    goto LABEL_10;
  }

  v52 = 0;
  v28 = [compactYearMonthDayDateFormatter2 getObjectValue:&v52 forString:stringCopy errorDescription:description];
  v29 = v28;
  if (v28)
  {
    v30 = self->_gregorianCalendar;
    v31 = v52;
    v32 = [(NSCalendar *)v30 components:28 fromDate:v31];

    [v32 setCalendar:self->_gregorianCalendar];
    v11 = v32;
  }

  compactYearMonthDayDateHourMinuteSecondZFormatter2 = [(CNVCardDateComponentsFormatter *)self compactYearMonthDayDateHourMinuteSecondZFormatter];
  compactYearMonthDayDateHourMinuteSecondZFormatter = compactYearMonthDayDateHourMinuteSecondZFormatter2;
  if (v29)
  {
    goto LABEL_11;
  }

  v51 = 0;
  v34 = [compactYearMonthDayDateHourMinuteSecondZFormatter2 getObjectValue:&v51 forString:stringCopy errorDescription:description];
  v35 = v34;
  if (v34)
  {
    v36 = self->_gregorianCalendar;
    v45 = v51;
    v37 = [(NSCalendar *)v36 components:28 fromDate:v45];

    [v37 setCalendar:self->_gregorianCalendar];
    v11 = v37;
  }

  hyphenatedMonthDayDateFormatter2 = [(CNVCardDateComponentsFormatter *)self hyphenatedMonthDayDateFormatter];
  hyphenatedMonthDayDateFormatter = hyphenatedMonthDayDateFormatter2;
  if (v35)
  {
    goto LABEL_12;
  }

  v50 = 0;
  v46 = [hyphenatedMonthDayDateFormatter2 getObjectValue:&v50 forString:stringCopy errorDescription:description];
  if (v46)
  {
    v39 = self->_gregorianCalendar;
    v42 = v50;
    v40 = [(NSCalendar *)v39 components:24 fromDate:v42];

    [v40 setCalendar:self->_gregorianCalendar];
    v11 = v40;
  }

  monthDayDateFormatter2 = [(CNVCardDateComponentsFormatter *)self monthDayDateFormatter];
  monthDayDateFormatter = monthDayDateFormatter2;
  if ((v46 & 1) == 0)
  {
    v49 = 0;
    v16 = [monthDayDateFormatter2 getObjectValue:&v49 forString:stringCopy errorDescription:description];
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
  if (value)
  {
    v26 = v11;
    *value = v11;
  }

LABEL_17:
  return v16;
}

+ (id)dateComponentsFromALTBDAYString:(id)string
{
  stringCopy = string;
  v5 = objc_alloc_init(self);
  v6 = [v5 dateComponentsFromALTBDAYString:stringCopy];

  return v6;
}

- (id)dateComponentsFromALTBDAYString:(id)string
{
  v3 = MEMORY[0x277CBEAB8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = [CNVCardDateScanner scannerWithString:stringCopy];

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

- (id)altBDAYStringFromDateComponents:(id)components
{
  componentsCopy = components;
  string = [MEMORY[0x277CCAB68] string];
  v6 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [componentsCopy era], @"%04li");
  [string appendString:v6];

  v7 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [componentsCopy year], @"%04li");
  [string appendString:v7];

  v8 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [componentsCopy month], @"%02li");
  [string appendString:v8];

  if ([componentsCopy isLeapMonth])
  {
    [string appendString:@"L"];
  }

  v9 = -[CNVCardDateComponentsFormatter stringForComponentValue:format:](self, "stringForComponentValue:format:", [componentsCopy day], @"%02li");
  [string appendString:v9];

  return string;
}

- (id)stringForComponentValue:(int64_t)value format:(id)format
{
  if (value == 0x7FFFFFFFFFFFFFFFLL)
  {
    value = @"-";
  }

  else
  {
    value = [MEMORY[0x277CCACA8] stringWithFormat:format, value];
  }

  return value;
}

@end