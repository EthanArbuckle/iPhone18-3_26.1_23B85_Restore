@interface CNVCardActivityAlertSerialization
+ (id)dictionaryWithType:(id)a3 info:(id)a4;
+ (id)infoFromDictionary:(id)a3;
+ (id)stringWithType:(id)a3 info:(id)a4;
+ (id)typeFromDictionary:(id)a3;
+ (void)parseString:(id)a3 intoTypeAndInfo:(id)a4;
@end

@implementation CNVCardActivityAlertSerialization

+ (id)stringWithType:(id)a3 info:(id)a4
{
  v4 = [a1 dictionaryWithType:a3 info:a4];
  v5 = [CNVCardActivityAlertSerializer serializeDictionary:v4];

  return v5;
}

+ (id)dictionaryWithType:(id)a3 info:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  v9 = sAPITypeToSerializedType_block_invoke_3(v8, v7);

  [v8 _cn_setNonNilObject:v9 forKey:@"type"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CNVCardActivityAlertSerialization_dictionaryWithType_info___block_invoke;
  v12[3] = &unk_27A710E20;
  v10 = v8;
  v13 = v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

void __61__CNVCardActivityAlertSerialization_dictionaryWithType_info___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = sAPIKeyToSerializedKey_block_invoke(v5, a2);
  [v4 setObject:v5 forKey:v6];
}

+ (void)parseString:(id)a3 intoTypeAndInfo:(id)a4
{
  v6 = a4;
  v9 = [a1 activityAlertWithString:a3];
  v7 = [a1 typeFromDictionary:v9];
  v8 = [a1 infoFromDictionary:v9];
  v6[2](v6, v7, v8);
}

+ (id)typeFromDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"type"];
  v4 = sSerializedTypeToAPIType_block_invoke_4(v3, v3);

  return v4;
}

+ (id)infoFromDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CNVCardActivityAlertSerialization_infoFromDictionary___block_invoke;
  v8[3] = &unk_27A710E20;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __56__CNVCardActivityAlertSerialization_infoFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 _cn_caseInsensitiveIsEqual:@"type"];
  if ((v6 & 1) == 0)
  {
    v7 = sSerializedKeyToAPIKey_block_invoke_2(v6, v8);
    [*(a1 + 32) setObject:v5 forKey:v7];
  }
}

@end