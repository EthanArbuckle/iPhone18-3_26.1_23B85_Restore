@interface PLFileSystemVolumeJournalEntryPayload
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (id)insertFileSystemVolumeFromDataInManagedObjectContext:(id)a3;
@end

@implementation PLFileSystemVolumeJournalEntryPayload

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PLFileSystemVolumeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames;

  return v2;
}

void __77__PLFileSystemVolumeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PLFileSystemVolumeJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken != -1)
  {
    dispatch_once(&modelProperties_onceToken, block);
  }

  v2 = modelProperties_modelProperties;

  return v2;
}

uint64_t __56__PLFileSystemVolumeJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties;
  modelProperties_modelProperties = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"resources";
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
  v7[1] = @"name";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v8[1] = v3;
  v7[2] = @"volumeUuidString";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"volumeUuid" andType:700 info:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)insertFileSystemVolumeFromDataInManagedObjectContext:(id)a3
{
  v4 = [(PLManagedObject *)PLFileSystemVolume insertInManagedObjectContext:a3];
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  [v4 setUuid:v6];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v4 payloadAttributesToUpdate:0];

  return v4;
}

@end