@interface POXSTimeDefinition
- (id)stringFromValue:(id)value;
- (id)valueFromString:(id)string;
@end

@implementation POXSTimeDefinition

- (id)valueFromString:(id)string
{
  v19 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (valueFromString__onceToken != -1)
  {
    [POXSTimeDefinition valueFromString:];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = valueFromString__timeFormatters;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 dateFromString:{stringCopy, v14}];
        if (v9)
        {
          v10 = v9;
          calendar = [v8 calendar];
          v5 = [calendar components:3178720 fromDate:v10];

          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __38__POXSTimeDefinition_valueFromString___block_invoke()
{
  valueFromString__timeFormatters = +[POXSDateFormatterFactory newTimeFormatters];

  return MEMORY[0x2821F96F8]();
}

- (id)stringFromValue:(id)value
{
  valueCopy = value;
  timeZone = [valueCopy timeZone];
  v5 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  if ([timeZone isEqualToTimeZone:v5])
  {
    v6 = 2;
  }

  else
  {
    if (timeZone)
    {
      v7 = [POXSDateFormatterFactory newTimeFormatterWithTimeZoneStyle:1];
      [v7 setTimeZone:timeZone];
      goto LABEL_7;
    }

    v6 = 0;
  }

  v7 = [POXSDateFormatterFactory newTimeFormatterWithTimeZoneStyle:v6];
LABEL_7:
  calendar = [v7 calendar];
  v9 = [calendar dateFromComponents:valueCopy];

  v10 = [v7 stringFromDate:v9];

  return v10;
}

@end