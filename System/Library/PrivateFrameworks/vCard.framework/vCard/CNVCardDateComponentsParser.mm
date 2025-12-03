@interface CNVCardDateComponentsParser
- (CNVCardDateComponentsParser)init;
- (id)dateComponentsFromString:(id)string calendarIdentifier:(id)identifier;
- (id)dateComponentsFromString:(id)string omitYear:(int64_t)year;
- (id)dateComponentsWithParser:(id)parser;
- (id)gregorianDateComponentsWithParser:(id)parser;
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

- (id)gregorianDateComponentsWithParser:(id)parser
{
  parserCopy = parser;
  v5 = [parserCopy firstParameterWithName:@"X-APPLE-OMIT-YEAR"];
  v6 = v5;
  if (v5)
  {
    values = [v5 values];
    firstObject = [values firstObject];
    integerValue = [firstObject integerValue];
  }

  else
  {
    integerValue = 1604;
  }

  parseStringValue = [parserCopy parseStringValue];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v11 = 0;
  }

  else
  {
    if ([parseStringValue hasPrefix:@"-"] && (objc_msgSend(parseStringValue, "hasPrefix:", @"--") & 1) == 0)
    {
      v12 = [parseStringValue substringFromIndex:1];

      parseStringValue = v12;
    }

    v11 = [(CNVCardDateComponentsParser *)self dateComponentsFromString:parseStringValue omitYear:integerValue];
  }

  return v11;
}

- (id)dateComponentsFromString:(id)string omitYear:(int64_t)year
{
  v6 = [(CNVCardDateComponentsFormatter *)self->_formatter dateComponentsFromString:string];
  if ([v6 year] == 1604 || objc_msgSend(v6, "year") == year)
  {
    [v6 setYear:0x7FFFFFFFFFFFFFFFLL];
  }

  [v6 setCalendar:self->_gregorianCalendar];

  return v6;
}

- (id)dateComponentsWithParser:(id)parser
{
  parserCopy = parser;
  parseRemainingLine = [parserCopy parseRemainingLine];
  v6 = [parserCopy firstParameterWithName:@"CALSCALE"];

  values = [v6 values];
  firstObject = [values firstObject];

  if (firstObject)
  {
    v9 = [(CNVCardDateComponentsParser *)self dateComponentsFromString:parseRemainingLine calendarIdentifier:firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dateComponentsFromString:(id)string calendarIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:identifierCopy];
    if (v7)
    {
      v8 = v7;
LABEL_7:
      v12 = [CNVCardDateComponentsFormatter dateComponentsFromALTBDAYString:stringCopy];
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

    lowercaseString = [identifierCopy lowercaseString];

    v11 = [MEMORY[0x277CBEA80] calendarWithIdentifier:lowercaseString];
    if (v11)
    {
      v8 = v11;
      identifierCopy = lowercaseString;
      goto LABEL_7;
    }

    v9 = 0;
    identifierCopy = lowercaseString;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

@end