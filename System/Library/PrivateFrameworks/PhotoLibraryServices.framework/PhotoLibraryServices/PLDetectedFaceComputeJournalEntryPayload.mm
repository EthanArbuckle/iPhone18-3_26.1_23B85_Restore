@interface PLDetectedFaceComputeJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)payloadAdapterForManagedObject:(id)a3;
+ (id)payloadClassID;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)insertWithAssets:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation PLDetectedFaceComputeJournalEntryPayload

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLDetectedFaceComputeJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_49708 != -1)
  {
    dispatch_once(&modelProperties_onceToken_49708, block);
  }

  v2 = modelProperties_modelProperties_49709;

  return v2;
}

uint64_t __59__PLDetectedFaceComputeJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_49709;
  modelProperties_modelProperties_49709 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_49709;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___PLDetectedFaceComputeJournalEntryPayload;
  v3 = objc_msgSendSuper2(&v12, sel_modelPropertiesDescription);
  v4 = [v2 dictionaryWithDictionary:v3];

  [v4 removeObjectForKey:@"rejectedPersons"];
  [v4 removeObjectForKey:@"clusterRejectedPersons"];
  v14[0] = @"personUUID";
  v14[1] = @"verifiedType";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"person" relatedEntityPropertyNames:v6 shouldPrefetchRelationship:1];

  [v4 setObject:v7 forKeyedSubscript:@"personForFace"];
  v13[0] = @"uuid";
  v13[1] = @"cloudAssetGUID";
  v13[2] = @"trashedState";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"asset" relatedEntityPropertyNames:v9 shouldPrefetchRelationship:1];

  [v4 setObject:v10 forKeyedSubscript:@"assetForFace"];

  return v4;
}

+ (id)payloadClassID
{
  v2 = [a1 entityName];
  v3 = [v2 stringByAppendingString:@"Compute"];

  return v3;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = 1;
    goto LABEL_13;
  }

  v9 = [v6 objectForKeyedSubscript:@"assetForFace.uuid"];
  if (!v9)
  {
    v4 = [v7 objectForKeyedSubscript:@"assetForFace.cloudAssetGUID"];
    if (!v4)
    {
      v11 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [v7 objectForKeyedSubscript:@"assetForFace.trashedState"];
  v11 = [v10 integerValue] == 0;

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = [v7 objectForKeyedSubscript:@"personForFace.personUUID"];
  if (v12)
  {
    v13 = [v7 objectForKeyedSubscript:@"personForFace.verifiedType"];
    v14 = [v13 integerValue] != 0;
  }

  else
  {
    v14 = 0;
  }

  v8 = v11 && v14;
LABEL_13:

  return v8;
}

+ (id)payloadAdapterForManagedObject:(id)a3
{
  v3 = a3;
  v4 = [(PLJournalEntryPayloadUpdateAdapter *)[PLDetectedFaceComputePayloadAdapter alloc] initWithManagedObject:v3];

  return v4;
}

- (BOOL)insertWithAssets:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [v8 additionalAttributes];
  v10 = [v9 faceAnalysisVersion];

  v11 = 0;
  if (v8 && v10 <= 1)
  {
    v14.receiver = self;
    v14.super_class = PLDetectedFaceComputeJournalEntryPayload;
    if ([(PLDetectedFaceJournalEntryPayload *)&v14 insertWithAssets:v6 inManagedObjectContext:v7])
    {
      v12 = [v8 additionalAttributes];
      v11 = 1;
      [v12 setFaceAnalysisVersion:1];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v9 isEqualToKey:@"person"])
  {
    v11 = [v10 objectForKeyedSubscript:@"personUUID"];

    if (v8 | v11)
    {
      v12 = [v11 isEqualToString:v8];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLDetectedFaceComputeJournalEntryPayload;
    v12 = [(PLDetectedFaceJournalEntryPayload *)&v14 comparePayloadValue:v8 toObjectDictionaryValue:v10 forPayloadProperty:v9];
  }

  return v12;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PLDetectedFaceComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_49706 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_49706, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_49707;

  return v2;
}

void __80__PLDetectedFaceComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_49707;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_49707 = v1;
}

+ (id)nonPersistedModelPropertiesDescription
{
  v2 = MEMORY[0x1E695DF90];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PLDetectedFaceComputeJournalEntryPayload;
  v3 = objc_msgSendSuper2(&v8, sel_nonPersistedModelPropertiesDescription);
  v4 = [v2 dictionaryWithDictionary:v3];

  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  [v4 setObject:v5 forKeyedSubscript:@"rejectedPersons"];

  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  [v4 setObject:v6 forKeyedSubscript:@"clusterRejectedPersons"];

  return v4;
}

@end