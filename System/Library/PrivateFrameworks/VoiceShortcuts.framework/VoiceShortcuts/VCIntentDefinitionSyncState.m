@interface VCIntentDefinitionSyncState
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation VCIntentDefinitionSyncState

id __58__VCIntentDefinitionSyncState_applicationsJSONTransformer__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6067;
  v13 = __Block_byref_object_dispose__6068;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__VCIntentDefinitionSyncState_applicationsJSONTransformer__block_invoke_3;
  v8[3] = &unk_2788FFBD8;
  v8[4] = &v9;
  v6 = [v5 if_compactMap:v8];
  if (a4)
  {
    *a4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __58__VCIntentDefinitionSyncState_applicationsJSONTransformer__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = 0;
  v7 = [MEMORY[0x277D7C768] JSONDictionaryFromModel:a3 error:&v11];
  v8 = v11;
  v9 = v11;
  v10 = v7;
  *a5 = v7;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
  }
}

id __58__VCIntentDefinitionSyncState_applicationsJSONTransformer__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6067;
  v13 = __Block_byref_object_dispose__6068;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__VCIntentDefinitionSyncState_applicationsJSONTransformer__block_invoke_155;
  v8[3] = &unk_2788FFBB0;
  v8[4] = &v9;
  v6 = [v5 if_compactMap:v8];
  if (a4)
  {
    *a4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __58__VCIntentDefinitionSyncState_applicationsJSONTransformer__block_invoke_155(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = MEMORY[0x277D7C768];
  v8 = a3;
  v13 = 0;
  v9 = [v7 modelOfClass:objc_opt_class() fromJSONDictionary:v8 error:&v13];

  v10 = v13;
  v11 = v13;
  v12 = v9;
  *a5 = v9;
  if (v11)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v10);
  }
}

+ (id)JSONKeyPathsByPropertyKey
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"databaseUUID";
  v5[1] = @"sequenceNumber";
  v6[0] = @"LSDatabaseUUID";
  v6[1] = @"LSDatabaseSequenceNumber";
  v5[2] = @"applications";
  v6[2] = @"applications";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end