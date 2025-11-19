@interface CNVCardActivityAlertSerializer
+ (id)serializeDictionary:(id)a3;
+ (id)serializeString:(id)a3;
@end

@implementation CNVCardActivityAlertSerializer

+ (id)serializeDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = [MEMORY[0x277CCAB68] string];
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_3];

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
        v13 = [v3 objectForKey:v12];
        if (((*(v10 + 16))(v10, v12) & 1) == 0 && ((*(v10 + 16))(v10, v13) & 1) == 0)
        {
          if ([v20 length])
          {
            [v20 appendString:{@", "}];
          }

          v14 = [a1 serializeString:v12];
          [v20 appendString:v14];

          [v20 appendString:@"="];
          v15 = [a1 serializeString:v13];
          [v20 appendString:v15];

          v9 = v18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)serializeString:(id)a3
{
  v3 = a3;
  if ([CNVCardActivityAlertQuotingSerializationStrategy strategyWouldAlterString:v3])
  {
    v4 = CNVCardActivityAlertQuotingSerializationStrategy;
LABEL_5:
    v5 = [(__objc2_class *)v4 serializeString:v3];
    goto LABEL_7;
  }

  if ([CNVCardActivityAlertEscapingSerializationStrategy strategyWouldAlterString:v3])
  {
    v4 = CNVCardActivityAlertEscapingSerializationStrategy;
    goto LABEL_5;
  }

  v5 = v3;
LABEL_7:
  v6 = v5;

  return v6;
}

@end