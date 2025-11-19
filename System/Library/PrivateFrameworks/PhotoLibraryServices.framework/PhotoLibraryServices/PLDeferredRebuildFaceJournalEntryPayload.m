@interface PLDeferredRebuildFaceJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (id)insertDeferredRebuildFaceFromDataInManagedObjectContext:(id)a3;
@end

@implementation PLDeferredRebuildFaceJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:{@"uuid", a4}];
  v5 = v4 != 0;

  return v5;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PLDeferredRebuildFaceJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_96600 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_96600, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_96601;

  return v2;
}

void __80__PLDeferredRebuildFaceJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_96601;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_96601 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLDeferredRebuildFaceJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_96602 != -1)
  {
    dispatch_once(&modelProperties_onceToken_96602, block);
  }

  v2 = modelProperties_modelProperties_96603;

  return v2;
}

uint64_t __59__PLDeferredRebuildFaceJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_96603;
  modelProperties_modelProperties_96603 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_96603;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20[0] = @"uuid";
  v19 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v21[0] = v19;
  v20[1] = @"faceUUID";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[1] = v18;
  v20[2] = @"assetCloudGUID";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[2] = v17;
  v20[3] = @"assetUUID";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[3] = v16;
  v20[4] = @"personUUID";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[4] = v15;
  v20[5] = @"centerX";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[5] = v14;
  v20[6] = @"centerY";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[6] = v13;
  v20[7] = @"size";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[7] = v2;
  v20[8] = @"hidden";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[8] = v3;
  v20[9] = @"manual";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[9] = v4;
  v20[10] = @"representative";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[10] = v5;
  v20[11] = @"rejected";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[11] = v6;
  v20[12] = @"clusterRejected";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[12] = v7;
  v20[13] = @"nameSource";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[13] = v8;
  v20[14] = @"cloudNameSource";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[14] = v9;
  v20[15] = @"faceAlgorithmVersion";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v21[15] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:16];

  return v11;
}

- (id)insertDeferredRebuildFaceFromDataInManagedObjectContext:(id)a3
{
  v4 = [(PLManagedObject *)PLDeferredRebuildFace insertInManagedObjectContext:a3];
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v6 = [v5 payloadIDString];
  [v4 setUuid:v6];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v4 payloadAttributesToUpdate:0];

  return v4;
}

@end