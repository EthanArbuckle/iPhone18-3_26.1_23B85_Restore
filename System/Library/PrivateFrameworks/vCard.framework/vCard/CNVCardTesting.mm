@interface CNVCardTesting
+ (BOOL)version21DataUsingAdapter:(id)a3 containsData:(id)a4;
+ (BOOL)version30CardForPerson:(id)a3 containsLine:(id)a4;
+ (BOOL)version30CardForPerson:(id)a3 containsString:(id)a4;
+ (BOOL)version30DataUsingAdapter:(id)a3 containsData:(id)a4;
+ (id)activityAlertResultWithTypes:(id)a3 sounds:(id)a4 vibrations:(id)a5;
+ (id)cardDataWithBodyLines:(id)a3 version:(id)a4 encoding:(unint64_t)a5;
+ (id)chineseDateWithEra:(int64_t)a3 year:(int64_t)a4 month:(int64_t)a5 day:(int64_t)a6;
+ (id)gregorianDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5;
+ (id)instantMessagingItemWithUsername:(id)a3 service:(id)a4 label:(id)a5;
+ (id)linesUsingAdapter:(id)a3 options:(id)a4;
+ (id)parseCardWithBodyLine:(id)a3;
+ (id)parseCardWithBodyLines:(id)a3 version:(id)a4 encoding:(unint64_t)a5;
+ (id)parseCardWithData:(id)a3;
+ (id)parseCardWithData:(id)a3 options:(id)a4;
+ (id)unknownPropertyWithName:(id)a3 line:(id)a4;
+ (id)version21DataUsingAdapter:(id)a3;
+ (id)version30DataUsingAdapter:(id)a3;
@end

@implementation CNVCardTesting

+ (id)parseCardWithBodyLine:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [a1 parseCardWithBodyLines:{v6, v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)parseCardWithBodyLines:(id)a3 version:(id)a4 encoding:(unint64_t)a5
{
  v6 = [a1 cardDataWithBodyLines:a3 version:a4 encoding:a5];
  v7 = [a1 parseCardWithData:v6];

  return v7;
}

+ (id)parseCardWithData:(id)a3
{
  v3 = [CNVCardDictionarySerialization dictionariesWithData:a3 error:0];
  v4 = [v3 firstObject];

  return v4;
}

+ (id)parseCardWithData:(id)a3 options:(id)a4
{
  v4 = [CNVCardDictionarySerialization dictionariesWithData:a3 options:a4 error:0];
  v5 = [v4 firstObject];

  return v5;
}

+ (id)cardDataWithBodyLines:(id)a3 version:(id)a4 encoding:(unint64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAB68] string];
  [v9 appendString:@"BEGIN:VCARD\r\n"];
  [v9 appendFormat:@"VERSION:%@\r\n", v8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 appendFormat:@"%@\r\n", *(*(&v18 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v9 appendString:@"END:VCARD\r\n"];
  v15 = [v9 dataUsingEncoding:a5];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)unknownPropertyWithName:(id)a3 line:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CNVCardUnknownPropertyDescription);
  [(CNVCardUnknownPropertyDescription *)v7 setPropertyName:v6];

  [(CNVCardUnknownPropertyDescription *)v7 setOriginalLine:v5];

  return v7;
}

+ (id)linesUsingAdapter:(id)a3 options:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v13 count:1];
  v9 = [CNVCardWriting stringWithPeople:v8 options:v6 error:0, v13, v14];

  v10 = [v9 componentsSeparatedByString:@"\r\n"];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)version30DataUsingAdapter:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [CNVCardWriting dataWithPeople:v5 options:0 error:0, v9, v10];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)version21DataUsingAdapter:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(CNVCardWritingOptions);
  [(CNVCardWritingOptions *)v4 setOutputVersion:1];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [CNVCardWriting dataWithPeople:v5 options:v4 error:0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)version30CardForPerson:(id)a3 containsLine:(id)a4
{
  v6 = a4;
  v7 = [a1 linesUsingAdapter:a3];
  LOBYTE(a1) = [v7 containsObject:v6];

  return a1;
}

+ (BOOL)version30CardForPerson:(id)a3 containsString:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v12 count:1];
  v9 = [CNVCardWriting stringWithPeople:v8 options:0 error:0, v12, v13];

  LOBYTE(v7) = [v9 containsString:v6];
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)version30DataUsingAdapter:(id)a3 containsData:(id)a4
{
  v6 = a4;
  v7 = [a1 version30DataUsingAdapter:a3];
  LOBYTE(a1) = [v7 _cn_containsData:v6];

  return a1;
}

+ (BOOL)version21DataUsingAdapter:(id)a3 containsData:(id)a4
{
  v6 = a4;
  v7 = [a1 version21DataUsingAdapter:a3];
  LOBYTE(a1) = [v7 _cn_containsData:v6];

  return a1;
}

+ (id)instantMessagingItemWithUsername:(id)a3 service:(id)a4 label:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"username";
  v16[1] = @"service";
  v17[0] = a3;
  v17[1] = a4;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [a1 itemWithValue:v12 label:v9];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)gregorianDateWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5
{
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:a3];
  [v8 setMonth:a4];
  [v8 setDay:a5];
  v9 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v8 setCalendar:v9];

  return v8;
}

+ (id)chineseDateWithEra:(int64_t)a3 year:(int64_t)a4 month:(int64_t)a5 day:(int64_t)a6
{
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v10 setEra:a3];
  [v10 setYear:a4];
  [v10 setMonth:a5];
  [v10 setDay:a6];
  v11 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE590]];
  [v10 setCalendar:v11];

  return v10;
}

+ (id)activityAlertResultWithTypes:(id)a3 sounds:(id)a4 vibrations:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if ([v7 count])
  {
    v11 = 0;
    v12 = *MEMORY[0x277CFBD18];
    do
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
      v14 = [v8 objectAtIndexedSubscript:v11];
      v15 = (*(v12 + 16))(v12, v14);

      if (v15)
      {
        v16 = [v8 objectAtIndexedSubscript:v11];
        [v13 setObject:v16 forKeyedSubscript:@"sound"];
      }

      v17 = [v9 objectAtIndexedSubscript:v11];
      v18 = (*(v12 + 16))(v12, v17);

      if (v18)
      {
        v19 = [v9 objectAtIndexedSubscript:v11];
        [v13 setObject:v19 forKeyedSubscript:@"vibration"];
      }

      v20 = [v7 objectAtIndexedSubscript:v11];
      [v10 setObject:v13 forKeyedSubscript:v20];

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  v24 = @"ActivityAlert";
  v25[0] = v10;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end