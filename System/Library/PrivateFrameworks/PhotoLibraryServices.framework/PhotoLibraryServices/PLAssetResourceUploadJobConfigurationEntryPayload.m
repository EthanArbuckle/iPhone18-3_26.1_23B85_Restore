@interface PLAssetResourceUploadJobConfigurationEntryPayload
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (id)insertAssetResourceUploadJobConfigurationFromDataInManagedObjectContext:(id)a3;
@end

@implementation PLAssetResourceUploadJobConfigurationEntryPayload

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PLAssetResourceUploadJobConfigurationEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_38410 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_38410, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_38411;

  return v2;
}

void __89__PLAssetResourceUploadJobConfigurationEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_38411;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_38411 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PLAssetResourceUploadJobConfigurationEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_38412 != -1)
  {
    dispatch_once(&modelProperties_onceToken_38412, block);
  }

  v2 = modelProperties_modelProperties_38413;

  return v2;
}

uint64_t __68__PLAssetResourceUploadJobConfigurationEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_38413;
  modelProperties_modelProperties_38413 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_38413;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"completionDate";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v8[0] = v2;
  v7[1] = @"attemptCount";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v8[1] = v3;
  v7[2] = @"uploadJobs";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)modelPropertiesDescription
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"uuid";
  v2 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v8[0] = v2;
  v7[1] = @"bundleIdentifier";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v8[1] = v3;
  v7[2] = @"state";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)insertAssetResourceUploadJobConfigurationFromDataInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  v7 = [(PLAssetResourceUploadJobConfigurationEntryPayload *)self bundleIdentifier];
  v8 = [PLAssetResourceUploadJobConfiguration insertIntoManagedObjectContext:v4 uuid:v6 bundleID:v7];

  [v8 setState:{-[PLAssetResourceUploadJobConfigurationEntryPayload state](self, "state")}];
  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v8 payloadAttributesToUpdate:0];

  return v8;
}

@end