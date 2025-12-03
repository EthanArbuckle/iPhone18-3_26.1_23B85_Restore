@interface PLSuggestionComputeJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name suggestionTypes:(id)types;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)payloadAdapterForManagedObject:(id)object;
+ (id)payloadClassID;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)insertWithAssets:(id)assets inManagedObjectContext:(id)context;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSSet)assetIdentifiers;
- (NSString)keyAssetUUID;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (int64_t)assetIdentifierType;
- (unint64_t)assetIdentifierCount;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)setKeyAssetUUID:(id)d;
- (void)setLocalAssetIdentifierForCloudIdentifiers:(id)identifiers;
@end

@implementation PLSuggestionComputeJournalEntryPayload

+ (id)payloadClassID
{
  entityName = [self entityName];
  v3 = [entityName stringByAppendingString:@"Compute"];

  return v3;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLSuggestionComputeJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)setKeyAssetUUID:(id)d
{
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:d];
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setLocalAssetIdentifierForCloudIdentifiers:(id)identifiers
{
  allValues = [identifiers allValues];
  firstObject = [allValues firstObject];
  [(PLSuggestionComputeJournalEntryPayload *)self setKeyAssetUUID:firstObject];
}

- (unint64_t)assetIdentifierCount
{
  keyAssetUUID = [(PLSuggestionComputeJournalEntryPayload *)self keyAssetUUID];
  v3 = keyAssetUUID != 0;

  return v3;
}

- (NSSet)assetIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  keyAssetUUID = [(PLSuggestionComputeJournalEntryPayload *)self keyAssetUUID];
  if (keyAssetUUID)
  {
    [v3 addObject:keyAssetUUID];
  }

  return v3;
}

- (BOOL)insertWithAssets:(id)assets inManagedObjectContext:(id)context
{
  assetsCopy = assets;
  contextCopy = context;
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  payloadIDString = [payloadID payloadIDString];
  v10 = [PLSuggestion suggestionWithUUID:payloadIDString inManagedObjectContext:contextCopy];

  if (!v10)
  {
    v10 = [(PLManagedObject *)PLSuggestion insertInManagedObjectContext:contextCopy];
    payloadID2 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
    payloadIDString2 = [payloadID2 payloadIDString];
    [v10 setUuid:payloadIDString2];

    [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v10 payloadAttributesToUpdate:0];
    [v10 setKeyAssets:assetsCopy];
    [v10 setRestoreType:1];
    [v10 updateStartAndEndDate];
  }

  return 1;
}

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  dictionaryValueCopy = dictionaryValue;
  if (![propertyCopy isEqualToKey:@"keyAsset"])
  {
    v15.receiver = self;
    v15.super_class = PLSuggestionComputeJournalEntryPayload;
    v13 = [(PLManagedObjectJournalEntryPayload *)&v15 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
    goto LABEL_13;
  }

  firstObject = [dictionaryValueCopy firstObject];

  if ([(PLSuggestionComputeJournalEntryPayload *)self assetIdentifierType])
  {
    if ([(PLSuggestionComputeJournalEntryPayload *)self assetIdentifierType]!= 1)
    {
      dictionaryValueCopy = 0;
      goto LABEL_9;
    }

    v12 = @"cloudAssetGUID";
  }

  else
  {
    v12 = @"uuid";
  }

  dictionaryValueCopy = [firstObject objectForKeyedSubscript:v12];
LABEL_9:
  if (valueCopy | dictionaryValueCopy)
  {
    v13 = [dictionaryValueCopy isEqualToString:valueCopy];
  }

  else
  {
    v13 = 1;
  }

LABEL_13:
  return v13;
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"keyAsset"])
  {
    v8 = [propertyCopy key];

    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLSuggestionComputeJournalEntryPayload;
    v10 = [(PLManagedObjectJournalEntryPayload *)&v12 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v10;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  builderCopy = builder;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"keyAsset"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:valueCopy];

    v13.receiver = self;
    v13.super_class = PLSuggestionComputeJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
    valueCopy = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLSuggestionComputeJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"keyAsset"])
  {
    keyAssets = [objectCopy keyAssets];
    anyObject = [keyAssets anyObject];

    cloudAssetGUID = [anyObject cloudAssetGUID];
    if (cloudAssetGUID)
    {
      [anyObject cloudAssetGUID];
    }

    else
    {
      [anyObject uuid];
    }
    v18 = ;
    v19 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v18];
    v20 = [propertyCopy key];
    [attributesCopy setObject:v19 forKeyedSubscript:v20];

    cloudAssetGUID2 = [anyObject cloudAssetGUID];
    if (cloudAssetGUID2)
    {
      v22 = &unk_1F0FBE6C8;
    }

    else
    {
      v22 = &unk_1F0FBE6E0;
    }

    [attributesCopy setObject:v22 forKeyedSubscript:@"assetIDType"];

    v17 = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PLSuggestionComputeJournalEntryPayload;
    v17 = [(PLManagedObjectJournalEntryPayload *)&v24 updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy withManagedObject:objectCopy forPayloadProperty:propertyCopy];
  }

  return v17;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name suggestionTypes:(id)types
{
  dictionaryCopy = dictionary;
  if (name)
  {
    v8 = 1;
  }

  else
  {
    typesCopy = types;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v11 = [typesCopy containsObject:v10];

    if (v11)
    {
      v12 = [@"keyAssets" stringByAppendingPathExtension:@"uuid"];
      v13 = [dictionaryCopy objectForKeyedSubscript:v12];

      if ([v13 count] == 1)
      {
        firstObject = [v13 firstObject];
        v15 = [@"keyAssets" stringByAppendingPathExtension:@"cloudAssetGUID"];
        v16 = [dictionaryCopy objectForKeyedSubscript:v15];
        firstObject2 = [v16 firstObject];

        v18 = [@"keyAssets" stringByAppendingPathExtension:@"trashedState"];
        v19 = [dictionaryCopy objectForKeyedSubscript:v18];
        firstObject3 = [v19 firstObject];

        if (firstObject | firstObject2)
        {
          v8 = [firstObject3 integerValue] == 0;
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

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  supportedSuggestionTypes = [self supportedSuggestionTypes];
  LOBYTE(self) = [self isValidForPersistenceWithObjectDictionary:dictionaryCopy additionalEntityName:nameCopy suggestionTypes:supportedSuggestionTypes];

  return self;
}

+ (id)payloadAdapterForManagedObject:(id)object
{
  objectCopy = object;
  v5 = [PLSuggestionComputePayloadAdapter alloc];
  supportedSuggestionTypes = [self supportedSuggestionTypes];
  v7 = [(PLSuggestionComputePayloadAdapter *)v5 initWithManagedObject:objectCopy suggestionTypes:supportedSuggestionTypes];

  return v7;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PLSuggestionComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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