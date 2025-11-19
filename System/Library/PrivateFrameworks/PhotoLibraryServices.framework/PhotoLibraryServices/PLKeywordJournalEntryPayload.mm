@interface PLKeywordJournalEntryPayload
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (id)insertKeywordFromDataInManagedObjectContext:(id)a3;
@end

@implementation PLKeywordJournalEntryPayload

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PLKeywordJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_4221 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_4221, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_4222;

  return v2;
}

void __68__PLKeywordJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_4222;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_4222 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PLKeywordJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_4223 != -1)
  {
    dispatch_once(&modelProperties_onceToken_4223, block);
  }

  v2 = modelProperties_modelProperties_4224;

  return v2;
}

uint64_t __47__PLKeywordJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_4224;
  modelProperties_modelProperties_4224 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_4224;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"assetAttributes";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)modelPropertiesDescription
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"uuid";
  v2 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v8[0] = v2;
  v7[1] = @"title";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v8[1] = v3;
  v7[2] = @"shortcut";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)insertKeywordFromDataInManagedObjectContext:(id)a3
{
  v4 = [(PLManagedObject *)PLManagedKeyword insertInManagedObjectContext:a3];
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  [v4 setUuid:v6];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v4 payloadAttributesToUpdate:0];

  return v4;
}

@end