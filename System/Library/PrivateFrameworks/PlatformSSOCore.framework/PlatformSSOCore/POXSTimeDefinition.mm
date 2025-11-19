@interface POXSTimeDefinition
- (id)stringFromValue:(id)a3;
- (id)valueFromString:(id)a3;
@end

@implementation POXSTimeDefinition

- (id)valueFromString:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
        v9 = [v8 dateFromString:{v3, v14}];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 calendar];
          v5 = [v11 components:3178720 fromDate:v10];

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

- (id)stringFromValue:(id)a3
{
  v3 = a3;
  v4 = [v3 timeZone];
  v5 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  if ([v4 isEqualToTimeZone:v5])
  {
    v6 = 2;
  }

  else
  {
    if (v4)
    {
      v7 = [POXSDateFormatterFactory newTimeFormatterWithTimeZoneStyle:1];
      [v7 setTimeZone:v4];
      goto LABEL_7;
    }

    v6 = 0;
  }

  v7 = [POXSDateFormatterFactory newTimeFormatterWithTimeZoneStyle:v6];
LABEL_7:
  v8 = [v7 calendar];
  v9 = [v8 dateFromComponents:v3];

  v10 = [v7 stringFromDate:v9];

  return v10;
}

@end