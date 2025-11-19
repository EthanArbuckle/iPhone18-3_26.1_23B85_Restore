@interface PLSuggestionComputeJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4 suggestionTypes:(id)a5;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)payloadAdapterForManagedObject:(id)a3;
+ (id)payloadClassID;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)insertWithAssets:(id)a3 inManagedObjectContext:(id)a4;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSSet)assetIdentifiers;
- (NSString)keyAssetUUID;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (int64_t)assetIdentifierType;
- (unint64_t)assetIdentifierCount;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)setKeyAssetUUID:(id)a3;
- (void)setLocalAssetIdentifierForCloudIdentifiers:(id)a3;
@end

@implementation PLSuggestionComputeJournalEntryPayload

+ (id)payloadClassID
{
  v2 = [a1 entityName];
  v3 = [v2 stringByAppendingString:@"Compute"];

  return v3;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLSuggestionComputeJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_99739 != -1)
  {
    dispatch_once(&modelProperties_onceToken_99739, block);
  }

  v2 = modelProperties_modelProperties_99740;

  return v2;
}

uint64_t __57__PLSuggestionComputeJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_99740;
  modelProperties_modelProperties_99740 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_99740;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v27[19] = *MEMORY[0x1E69E9840];
  v26[0] = @"uuid";
  v24 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v27[0] = v24;
  v26[1] = @"type";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[1] = v23;
  v26[2] = @"subtype";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[2] = v22;
  v26[3] = @"title";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[3] = v21;
  v26[4] = @"subtitle";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[4] = v20;
  v26[5] = @"state";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[5] = v19;
  v26[6] = @"version";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[6] = v18;
  v26[7] = @"featuredState";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[7] = v17;
  v26[8] = @"suggestionContext";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[8] = v16;
  v26[9] = @"relatedCollectionUUID";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[9] = v15;
  v26[10] = @"notificationState";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[10] = v14;
  v26[11] = @"creationDate";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[11] = v13;
  v26[12] = @"activationDate";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[12] = v2;
  v26[13] = @"relevantUntilDate";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[13] = v3;
  v26[14] = @"expungeDate";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[14] = v4;
  v26[15] = @"actionData";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[15] = v5;
  v26[16] = @"featuresData";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[16] = v6;
  v26[17] = @"availableFeatures";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v27[17] = v7;
  v26[18] = @"keyAssets";
  v25[0] = @"uuid";
  v25[1] = @"cloudAssetGUID";
  v25[2] = @"trashedState";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"keyAsset" relatedEntityPropertyNames:v9 shouldPrefetchRelationship:1];

  v27[18] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:19];

  return v11;
}

- (void)setKeyAssetUUID:(id)a3
{
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:a3];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"keyAsset"];
}

- (NSString)keyAssetUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"keyAsset"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  return v4;
}

- (int64_t)assetIdentifierType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"assetIDType"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setLocalAssetIdentifierForCloudIdentifiers:(id)a3
{
  v5 = [a3 allValues];
  v4 = [v5 firstObject];
  [(PLSuggestionComputeJournalEntryPayload *)self setKeyAssetUUID:v4];
}

- (unint64_t)assetIdentifierCount
{
  v2 = [(PLSuggestionComputeJournalEntryPayload *)self keyAssetUUID];
  v3 = v2 != 0;

  return v3;
}

- (NSSet)assetIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(PLSuggestionComputeJournalEntryPayload *)self keyAssetUUID];
  if (v4)
  {
    [v3 addObject:v4];
  }

  return v3;
}

- (BOOL)insertWithAssets:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v9 = [v8 payloadIDString];
  v10 = [PLSuggestion suggestionWithUUID:v9 inManagedObjectContext:v7];

  if (!v10)
  {
    v10 = [(PLManagedObject *)PLSuggestion insertInManagedObjectContext:v7];
    v11 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
    v12 = [v11 payloadIDString];
    [v10 setUuid:v12];

    [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v10 payloadAttributesToUpdate:0];
    [v10 setKeyAssets:v6];
    [v10 setRestoreType:1];
    [v10 updateStartAndEndDate];
  }

  return 1;
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if (![v9 isEqualToKey:@"keyAsset"])
  {
    v15.receiver = self;
    v15.super_class = PLSuggestionComputeJournalEntryPayload;
    v13 = [(PLManagedObjectJournalEntryPayload *)&v15 comparePayloadValue:v8 toObjectDictionaryValue:v10 forPayloadProperty:v9];
    goto LABEL_13;
  }

  v11 = [v10 firstObject];

  if ([(PLSuggestionComputeJournalEntryPayload *)self assetIdentifierType])
  {
    if ([(PLSuggestionComputeJournalEntryPayload *)self assetIdentifierType]!= 1)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v12 = @"cloudAssetGUID";
  }

  else
  {
    v12 = @"uuid";
  }

  v10 = [v11 objectForKeyedSubscript:v12];
LABEL_9:
  if (v8 | v10)
  {
    v13 = [v10 isEqualToString:v8];
  }

  else
  {
    v13 = 1;
  }

LABEL_13:
  return v13;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"keyAsset"])
  {
    v8 = [v7 key];

    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLSuggestionComputeJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"keyAsset"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v10];

    v13.receiver = self;
    v13.super_class = PLSuggestionComputeJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v9];
    v10 = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLSuggestionComputeJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v10 toDescriptionBuilder:v9];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 isEqualToKey:@"keyAsset"])
  {
    v14 = [v12 keyAssets];
    v15 = [v14 anyObject];

    v16 = [v15 cloudAssetGUID];
    if (v16)
    {
      [v15 cloudAssetGUID];
    }

    else
    {
      [v15 uuid];
    }
    v18 = ;
    v19 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v18];
    v20 = [v13 key];
    [v10 setObject:v19 forKeyedSubscript:v20];

    v21 = [v15 cloudAssetGUID];
    if (v21)
    {
      v22 = &unk_1F0FBE6C8;
    }

    else
    {
      v22 = &unk_1F0FBE6E0;
    }

    [v10 setObject:v22 forKeyedSubscript:@"assetIDType"];

    v17 = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PLSuggestionComputeJournalEntryPayload;
    v17 = [(PLManagedObjectJournalEntryPayload *)&v24 updatePayloadAttributes:v10 andNilAttributes:v11 withManagedObject:v12 forPayloadProperty:v13];
  }

  return v17;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4 suggestionTypes:(id)a5
{
  v7 = a3;
  if (a4)
  {
    v8 = 1;
  }

  else
  {
    v9 = a5;
    v10 = [v7 objectForKeyedSubscript:@"type"];
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      v12 = [@"keyAssets" stringByAppendingPathExtension:@"uuid"];
      v13 = [v7 objectForKeyedSubscript:v12];

      if ([v13 count] == 1)
      {
        v14 = [v13 firstObject];
        v15 = [@"keyAssets" stringByAppendingPathExtension:@"cloudAssetGUID"];
        v16 = [v7 objectForKeyedSubscript:v15];
        v17 = [v16 firstObject];

        v18 = [@"keyAssets" stringByAppendingPathExtension:@"trashedState"];
        v19 = [v7 objectForKeyedSubscript:v18];
        v20 = [v19 firstObject];

        if (v14 | v17)
        {
          v8 = [v20 integerValue] == 0;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 supportedSuggestionTypes];
  LOBYTE(a1) = [a1 isValidForPersistenceWithObjectDictionary:v7 additionalEntityName:v6 suggestionTypes:v8];

  return a1;
}

+ (id)payloadAdapterForManagedObject:(id)a3
{
  v4 = a3;
  v5 = [PLSuggestionComputePayloadAdapter alloc];
  v6 = [a1 supportedSuggestionTypes];
  v7 = [(PLSuggestionComputePayloadAdapter *)v5 initWithManagedObject:v4 suggestionTypes:v6];

  return v7;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PLSuggestionComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_99737 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_99737, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_99738;

  return v2;
}

void __78__PLSuggestionComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_99738;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_99738 = v1;
}

+ (id)nonPersistedModelPropertiesDescription
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15[0] = @"cachedCount";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[0] = v14;
  v15[1] = @"cachedPhotosCount";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[1] = v13;
  v15[2] = @"cachedVideosCount";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[2] = v2;
  v15[3] = @"cloudDeleteState";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[3] = v3;
  v15[4] = @"cloudLocalState";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[4] = v4;
  v15[5] = @"endDate";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[5] = v5;
  v15[6] = @"sharingComposition";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[6] = v6;
  v15[7] = @"sharingComposition";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[7] = v7;
  v15[8] = @"startDate";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[8] = v8;
  v15[9] = @"representativeSuggestionAssets";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[9] = v9;
  v15[10] = @"restoreType";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:11];

  return v11;
}

@end