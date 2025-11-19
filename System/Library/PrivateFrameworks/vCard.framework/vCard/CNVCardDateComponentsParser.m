@interface CNVCardDateComponentsParser
- (CNVCardDateComponentsParser)init;
- (id)dateComponentsFromString:(id)a3 calendarIdentifier:(id)a4;
- (id)dateComponentsFromString:(id)a3 omitYear:(int64_t)a4;
- (id)dateComponentsWithParser:(id)a3;
- (id)gregorianDateComponentsWithParser:(id)a3;
@end

@implementation CNVCardDateComponentsParser

- (CNVCardDateComponentsParser)init
{
  v10.receiver = self;
  v10.super_class = CNVCardDateComponentsParser;
  v2 = [(CNVCardDateComponentsParser *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNVCardDateComponentsFormatter);
    formatter = v2->_formatter;
    v2->_formatter = v3;

    v5 = objc_alloc(MEMORY[0x277CBEA80]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    gregorianCalendar = v2->_gregorianCalendar;
    v2->_gregorianCalendar = v6;

    v8 = v2;
  }

  return v2;
}

- (id)gregorianDateComponentsWithParser:(id)a3
{
  v4 = a3;
  v5 = [v4 firstParameterWithName:@"X-APPLE-OMIT-YEAR"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 values];
    v8 = [v7 firstObject];
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = 1604;
  }

  v10 = [v4 parseStringValue];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v11 = 0;
  }

  else
  {
    if ([v10 hasPrefix:@"-"] && (objc_msgSend(v10, "hasPrefix:", @"--") & 1) == 0)
    {
      v12 = [v10 substringFromIndex:1];

      v10 = v12;
    }

    v11 = [(CNVCardDateComponentsParser *)self dateComponentsFromString:v10 omitYear:v9];
  }

  return v11;
}

- (id)dateComponentsFromString:(id)a3 omitYear:(int64_t)a4
{
  v6 = [(CNVCardDateComponentsFormatter *)self->_formatter dateComponentsFromString:a3];
  if ([v6 year] == 1604 || objc_msgSend(v6, "year") == a4)
  {
    [v6 setYear:0x7FFFFFFFFFFFFFFFLL];
  }

  [v6 setCalendar:self->_gregorianCalendar];

  return v6;
}

- (id)dateComponentsWithParser:(id)a3
{
  v4 = a3;
  v5 = [v4 parseRemainingLine];
  v6 = [v4 firstParameterWithName:@"CALSCALE"];

  v7 = [v6 values];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [(CNVCardDateComponentsParser *)self dateComponentsFromString:v5 calendarIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dateComponentsFromString:(id)a3 calendarIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v6];
    if (v7)
    {
      v8 = v7;
LABEL_7:
      v12 = [CNVCardDateComponentsFormatter dateComponentsFromALTBDAYString:v5];
      [v12 setCalendar:v8];
      if ([v12 isValidDate])
      {
        v9 = v12;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_11;
    }

    v10 = [v6 lowercaseString];

    v11 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v10];
    if (v11)
    {
      v8 = v11;
      v6 = v10;
      goto LABEL_7;
    }

    v9 = 0;
    v6 = v10;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

@end