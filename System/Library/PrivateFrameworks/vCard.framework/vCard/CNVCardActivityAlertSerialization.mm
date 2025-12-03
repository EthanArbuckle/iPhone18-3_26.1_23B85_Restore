@interface CNVCardActivityAlertSerialization
+ (id)dictionaryWithType:(id)type info:(id)info;
+ (id)infoFromDictionary:(id)dictionary;
+ (id)stringWithType:(id)type info:(id)info;
+ (id)typeFromDictionary:(id)dictionary;
+ (void)parseString:(id)string intoTypeAndInfo:(id)info;
@end

@implementation CNVCardActivityAlertSerialization

+ (id)stringWithType:(id)type info:(id)info
{
  v4 = [self dictionaryWithType:type info:info];
  v5 = [CNVCardActivityAlertSerializer serializeDictionary:v4];

  return v5;
}

+ (id)dictionaryWithType:(id)type info:(id)info
{
  v5 = MEMORY[0x277CBEB38];
  infoCopy = info;
  typeCopy = type;
  dictionary = [v5 dictionary];
  v9 = sAPITypeToSerializedType_block_invoke_3(dictionary, typeCopy);

  [dictionary _cn_setNonNilObject:v9 forKey:@"type"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CNVCardActivityAlertSerialization_dictionaryWithType_info___block_invoke;
  v12[3] = &unk_27A710E20;
  v10 = dictionary;
  v13 = v10;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

void __61__CNVCardActivityAlertSerialization_dictionaryWithType_info___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = sAPIKeyToSerializedKey_block_invoke(v5, a2);
  [v4 setObject:v5 forKey:v6];
}

+ (void)parseString:(id)string intoTypeAndInfo:(id)info
{
  infoCopy = info;
  v9 = [self activityAlertWithString:string];
  v7 = [self typeFromDictionary:v9];
  v8 = [self infoFromDictionary:v9];
  infoCopy[2](infoCopy, v7, v8);
}

+ (id)typeFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"type"];
  v4 = sSerializedTypeToAPIType_block_invoke_4(v3, v3);

  return v4;
}

+ (id)infoFromDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CNVCardActivityAlertSerialization_infoFromDictionary___block_invoke;
  v8[3] = &unk_27A710E20;
  v6 = dictionary;
  v9 = v6;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];

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