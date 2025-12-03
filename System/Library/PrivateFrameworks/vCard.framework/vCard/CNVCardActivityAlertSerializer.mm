@interface CNVCardActivityAlertSerializer
+ (id)serializeDictionary:(id)dictionary;
+ (id)serializeString:(id)string;
@end

@implementation CNVCardActivityAlertSerializer

+ (id)serializeDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  string = [MEMORY[0x277CCAB68] string];
  allKeys = [dictionaryCopy allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = *MEMORY[0x277CFBD30];
    v18 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [dictionaryCopy objectForKey:v12];
        if (((*(v10 + 16))(v10, v12) & 1) == 0 && ((*(v10 + 16))(v10, v13) & 1) == 0)
        {
          if ([string length])
          {
            [string appendString:{@", "}];
          }

          v14 = [self serializeString:v12];
          [string appendString:v14];

          [string appendString:@"="];
          v15 = [self serializeString:v13];
          [string appendString:v15];

          v9 = v18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return string;
}

+ (id)serializeString:(id)string
{
  stringCopy = string;
  if ([CNVCardActivityAlertQuotingSerializationStrategy strategyWouldAlterString:stringCopy])
  {
    v4 = CNVCardActivityAlertQuotingSerializationStrategy;
LABEL_5:
    v5 = [(__objc2_class *)v4 serializeString:stringCopy];
    goto LABEL_7;
  }

  if ([CNVCardActivityAlertEscapingSerializationStrategy strategyWouldAlterString:stringCopy])
  {
    v4 = CNVCardActivityAlertEscapingSerializationStrategy;
    goto LABEL_5;
  }

  v5 = stringCopy;
LABEL_7:
  v6 = v5;

  return v6;
}

@end