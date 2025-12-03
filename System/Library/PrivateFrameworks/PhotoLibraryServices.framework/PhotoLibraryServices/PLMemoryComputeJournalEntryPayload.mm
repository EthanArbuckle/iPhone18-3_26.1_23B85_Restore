@interface PLMemoryComputeJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
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
- (NSSet)curatedAssetUUIDs;
- (NSSet)extendedCuratedAssetUUIDs;
- (NSSet)representativeAssetUUIDs;
- (NSString)keyAssetUUID;
- (id)_allAssetUUIDs;
- (id)_memoryInManagedObjectContext:(id)context error:(id *)error;
- (id)_remapToLocalIdentifiersForCloudIdentifiers:(id)identifiers;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (int64_t)assetIdentifierType;
- (unint64_t)assetIdentifierCount;
- (void)_setAsset:(id)asset forPayloadProperty:(id)property payloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes;
- (void)_setAssets:(id)assets forPayloadProperty:(id)property payloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes;
- (void)_updateMemory:(id)memory withAssets:(id)assets;
- (void)setCuratedAssetUUIDs:(id)ds;
@end

@implementation PLMemoryComputeJournalEntryPayload

- (id)_remapToLocalIdentifiersForCloudIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E695DFA8];
  identifiersCopy = identifiers;
  v6 = [[v4 alloc] initWithSet:identifiersCopy];

  localAssetIdentifierForCloudIdentifiers = self->_localAssetIdentifierForCloudIdentifiers;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PLMemoryComputeJournalEntryPayload__remapToLocalIdentifiersForCloudIdentifiers___block_invoke;
  v10[3] = &unk_1E7577D60;
  v8 = v6;
  v11 = v8;
  [(NSDictionary *)localAssetIdentifierForCloudIdentifiers enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

void __82__PLMemoryComputeJournalEntryPayload__remapToLocalIdentifiersForCloudIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 32) removeObject:v6];
    [*(a1 + 32) addObject:v5];
  }
}

- (void)_updateMemory:(id)memory withAssets:(id)assets
{
  assetsCopy = assets;
  memoryCopy = memory;
  if ([(PLMemoryComputeJournalEntryPayload *)self assetIdentifierType]== 1)
  {
    v8 = @"cloudAssetGUID";
  }

  else
  {
    v8 = @"uuid";
  }

  v9 = MEMORY[0x1E696AE18];
  curatedAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self curatedAssetUUIDs];
  v11 = [v9 predicateWithFormat:@"%K in %@", v8, curatedAssetUUIDs];
  v12 = [assetsCopy filteredSetUsingPredicate:v11];
  [memoryCopy setCuratedAssets:v12];

  v13 = MEMORY[0x1E696AE18];
  extendedCuratedAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self extendedCuratedAssetUUIDs];
  v15 = [v13 predicateWithFormat:@"%K in %@", v8, extendedCuratedAssetUUIDs];
  v16 = [assetsCopy filteredSetUsingPredicate:v15];
  [memoryCopy setExtendedCuratedAssets:v16];

  v17 = MEMORY[0x1E696AE18];
  representativeAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self representativeAssetUUIDs];
  v18 = [v17 predicateWithFormat:@"%K in %@", v8, representativeAssetUUIDs];
  v19 = [assetsCopy filteredSetUsingPredicate:v18];

  [memoryCopy setRepresentativeAssets:v19];
}

- (id)_allAssetUUIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  keyAssetUUID = [(PLMemoryComputeJournalEntryPayload *)self keyAssetUUID];
  if (keyAssetUUID)
  {
    [v3 addObject:keyAssetUUID];
  }

  curatedAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self curatedAssetUUIDs];
  if (curatedAssetUUIDs)
  {
    [v3 unionSet:curatedAssetUUIDs];
  }

  extendedCuratedAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self extendedCuratedAssetUUIDs];

  if (extendedCuratedAssetUUIDs)
  {
    [v3 unionSet:extendedCuratedAssetUUIDs];
  }

  representativeAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self representativeAssetUUIDs];

  if (representativeAssetUUIDs)
  {
    [v3 unionSet:representativeAssetUUIDs];
  }

  return v3;
}

- (void)_setAssets:(id)assets forPayloadProperty:(id)property payloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes
{
  assetsCopy = assets;
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  propertyCopy = property;
  v13 = [attributesCopy objectForKeyedSubscript:@"assetIDType"];
  integerValue = [v13 integerValue];

  v15 = [assetsCopy valueForKey:@"cloudAssetGUID"];
  v16 = v15;
  if (!integerValue)
  {
    if ([v15 count])
    {
      v17 = &unk_1F0FBDF18;
    }

    else
    {
      v17 = &unk_1F0FBDF30;
    }

    [attributesCopy setObject:v17 forKeyedSubscript:@"assetIDType"];
  }

  if (![v16 count])
  {
    v18 = [assetsCopy valueForKey:@"uuid"];

    v16 = v18;
  }

  v19 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringSet:v16];
  [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy forPayloadProperty:propertyCopy withUUIDStringData:v19];
}

- (void)_setAsset:(id)asset forPayloadProperty:(id)property payloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes
{
  assetCopy = asset;
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  propertyCopy = property;
  if (assetCopy)
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"assetIDType"];
    integerValue = [v13 integerValue];

    if (!integerValue)
    {
      cloudAssetGUID = [assetCopy cloudAssetGUID];
      if (cloudAssetGUID)
      {
        v16 = &unk_1F0FBDF18;
      }

      else
      {
        v16 = &unk_1F0FBDF30;
      }

      [attributesCopy setObject:v16 forKeyedSubscript:@"assetIDType"];
    }

    cloudAssetGUID2 = [assetCopy cloudAssetGUID];
    if (cloudAssetGUID2)
    {
      [assetCopy cloudAssetGUID];
    }

    else
    {
      [assetCopy uuid];
    }
    v18 = ;
    v19 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v18];
    v20 = [propertyCopy key];

    [attributesCopy setObject:v19 forKeyedSubscript:v20];
  }

  else
  {
    cloudAssetGUID2 = [propertyCopy key];

    [nilAttributesCopy addObject:cloudAssetGUID2];
  }
}

- (id)_memoryInManagedObjectContext:(id)context error:(id *)error
{
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  entityName = [objc_opt_class() entityName];
  v9 = [v6 fetchRequestWithEntityName:entityName];

  [v9 setFetchBatchSize:1];
  [v9 setFetchLimit:1];
  v10 = MEMORY[0x1E696AE18];
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v12 = [v10 predicateWithFormat:@"%K == %@", @"uuid", payloadID];
  [v9 setPredicate:v12];

  v13 = [contextCopy executeFetchRequest:v9 error:error];

  return v13;
}

- (int64_t)assetIdentifierType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"assetIDType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)assetIdentifierCount
{
  if (self->_allAssetIdentifiers)
  {
    allAssetIdentifiers = self->_allAssetIdentifiers;

    return [(NSMutableSet *)allAssetIdentifiers count];
  }

  else
  {
    assetIdentifiers = [(PLMemoryComputeJournalEntryPayload *)self assetIdentifiers];
    v6 = [assetIdentifiers count];

    return v6;
  }
}

- (NSSet)assetIdentifiers
{
  _allAssetUUIDs = [(PLMemoryComputeJournalEntryPayload *)self _allAssetUUIDs];
  allAssetIdentifiers = self->_allAssetIdentifiers;
  self->_allAssetIdentifiers = _allAssetUUIDs;

  v5 = self->_allAssetIdentifiers;

  return v5;
}

- (BOOL)insertWithAssets:(id)assets inManagedObjectContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  contextCopy = context;
  v15 = 0;
  v8 = [(PLMemoryComputeJournalEntryPayload *)self _memoryInManagedObjectContext:contextCopy error:&v15];
  v9 = v15;
  if (!v8)
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
      *buf = 138543618;
      v17 = payloadID;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to look up compute cache memory %{public}@ on restore, skipping: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (![v8 count])
  {
    v10 = [(PLManagedObject *)PLMemory insertInManagedObjectContext:contextCopy];
    payloadID2 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
    payloadIDString = [payloadID2 payloadIDString];
    [v10 setUuid:payloadIDString];

    [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v10 payloadAttributesToUpdate:0];
    [(PLMemoryComputeJournalEntryPayload *)self _updateMemory:v10 withAssets:assetsCopy];
LABEL_6:
  }

  return v8 != 0;
}

- (NSSet)representativeAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"representativeAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];
  v5 = [(PLMemoryComputeJournalEntryPayload *)self _remapToLocalIdentifiersForCloudIdentifiers:v4];

  return v5;
}

- (NSSet)extendedCuratedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"extendedCuratedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];
  v5 = [(PLMemoryComputeJournalEntryPayload *)self _remapToLocalIdentifiersForCloudIdentifiers:v4];

  return v5;
}

- (void)setCuratedAssetUUIDs:(id)ds
{
  v4 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringSet:ds];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"curatedAssets"];
}

- (NSSet)curatedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"curatedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];
  v5 = [(PLMemoryComputeJournalEntryPayload *)self _remapToLocalIdentifiersForCloudIdentifiers:v4];

  return v5;
}

- (NSString)keyAssetUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"keyAsset"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_localAssetIdentifierForCloudIdentifiers objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  dictionaryValueCopy = dictionaryValue;
  propertyCopy = property;
  if (([propertyCopy isEqualToKey:@"curatedAssets"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"extendedCuratedAssets") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToKey:", @"representativeAssets"))
  {
    if ([(PLMemoryComputeJournalEntryPayload *)self assetIdentifierType]== 1)
    {
      v11 = @"cloudAssetGUID";
    }

    else
    {
      v11 = @"uuid";
    }

    v12 = [dictionaryValueCopy valueForKey:v11];
    v13 = [(PLMemoryComputeJournalEntryPayload *)self _remapToLocalIdentifiersForCloudIdentifiers:valueCopy];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v12];
    v15 = [v13 isEqualToSet:v14];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PLMemoryComputeJournalEntryPayload;
    v15 = [(PLManagedObjectJournalEntryPayload *)&v17 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  return v15;
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
LABEL_7:
    v11 = v10;

    goto LABEL_8;
  }

  if (([propertyCopy isEqualToKey:@"curatedAssets"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"extendedCuratedAssets") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToKey:", @"representativeAssets"))
  {
    v8 = [propertyCopy key];
    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v9];
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = PLMemoryComputeJournalEntryPayload;
  v11 = [(PLManagedObjectJournalEntryPayload *)&v13 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
LABEL_8:

  return v11;
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  propertyCopy = property;
  v14 = objectCopy;
  if ([propertyCopy isEqualToKey:@"keyAsset"])
  {
    keyAsset = [v14 keyAsset];
    [(PLMemoryComputeJournalEntryPayload *)self _setAsset:keyAsset forPayloadProperty:propertyCopy payloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy];
  }

  else
  {
    if ([propertyCopy isEqualToKey:@"curatedAssets"])
    {
      curatedAssets = [v14 curatedAssets];
    }

    else if ([propertyCopy isEqualToKey:@"extendedCuratedAssets"])
    {
      curatedAssets = [v14 extendedCuratedAssets];
    }

    else
    {
      if (![propertyCopy isEqualToKey:@"representativeAssets"])
      {
        v17 = 0;
        goto LABEL_11;
      }

      curatedAssets = [v14 representativeAssets];
    }

    keyAsset = curatedAssets;
    [(PLMemoryComputeJournalEntryPayload *)self _setAssets:curatedAssets forPayloadProperty:propertyCopy payloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy];
  }

  v17 = 1;
LABEL_11:

  return v17;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  if (name)
  {
    return 1;
  }

  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"pendingState"];
  v7 = [v6 integerValue] == 2;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"rejected"];

  LOBYTE(dictionaryCopy) = [v8 BOOLValue];
  return v7 & (dictionaryCopy ^ 1);
}

+ (id)payloadAdapterForManagedObject:(id)object
{
  objectCopy = object;
  v4 = [(PLJournalEntryPayloadUpdateAdapter *)[PLMemoryComputePayloadAdapter alloc] initWithManagedObject:objectCopy];

  return v4;
}

+ (id)payloadClassID
{
  entityName = [self entityName];
  v3 = [entityName stringByAppendingString:@"Compute"];

  return v3;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PLMemoryComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistedPropertyNamesForEntityNames_onceToken_93483 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_93483, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_93484;

  return v2;
}

void __74__PLMemoryComputeJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_93484;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_93484 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PLMemoryComputeJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (modelProperties_onceToken_93485 != -1)
  {
    dispatch_once(&modelProperties_onceToken_93485, block);
  }

  v2 = modelProperties_modelProperties_93486;

  return v2;
}

uint64_t __53__PLMemoryComputeJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_93486;
  modelProperties_modelProperties_93486 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_93486;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v39[34] = *MEMORY[0x1E69E9840];
  v38[0] = @"storyColorGradeKind";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[0] = v37;
  v38[1] = @"storySerializedTitleCategory";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[1] = v36;
  v38[2] = @"cloudDeleteState";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[2] = v35;
  v38[3] = @"cloudLocalState";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[3] = v34;
  v38[4] = @"lastMoviePlayedDate";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[4] = v33;
  v38[5] = @"lastViewedDate";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[5] = v32;
  v38[6] = @"lastEnrichmentDate";
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[6] = v31;
  v38[7] = @"pendingPlayCount";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[7] = v30;
  v38[8] = @"pendingShareCount";
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[8] = v29;
  v38[9] = @"pendingViewCount";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[9] = v28;
  v38[10] = @"featuredState";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[10] = v27;
  v38[11] = @"syndicatedContentState";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[11] = v26;
  v38[12] = @"sharingComposition";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[12] = v25;
  v38[13] = @"searchIndexRebuildState";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[13] = v24;
  v38[14] = @"startDate";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[14] = v23;
  v38[15] = @"endDate";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[15] = v22;
  v38[16] = @"assetListPredicate";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[16] = v21;
  v38[17] = @"blacklistedFeature";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[17] = v20;
  v38[18] = @"favorite";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[18] = v19;
  v38[19] = @"movieAssetState";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[19] = v18;
  v38[20] = @"movieData";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[20] = v17;
  v38[21] = @"notificationState";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[21] = v16;
  v38[22] = @"playCount";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[22] = v15;
  v38[23] = @"shareCount";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[23] = v14;
  v38[24] = @"viewCount";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[24] = v2;
  v38[25] = @"rejected";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[25] = v3;
  v38[26] = @"userActionOptions";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[26] = v4;
  v38[27] = @"movieCuratedAssets";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[27] = v5;
  v38[28] = @"userCuratedAssets";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[28] = v6;
  v38[29] = @"customUserAssets";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[29] = v7;
  v38[30] = @"userRemovedAssets";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[30] = v8;
  v38[31] = @"userFeedbacks";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[31] = v9;
  v38[32] = @"targetUserEditedMemory";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[32] = v10;
  v38[33] = @"sourceGeneratedMemory";
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v39[33] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:34];

  return v13;
}

+ (id)modelPropertiesDescription
{
  v32[15] = *MEMORY[0x1E69E9840];
  v31[0] = @"uuid";
  v26 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v32[0] = v26;
  v31[1] = @"title";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[1] = v25;
  v31[2] = @"subtitle";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[2] = v24;
  v31[3] = @"creationDate";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[3] = v23;
  v31[4] = @"category";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[4] = v22;
  v31[5] = @"pendingState";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"pending" andType:100 info:0];
  v32[5] = v21;
  v31[6] = @"photosGraphData";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[6] = v20;
  v31[7] = @"photosGraphVersion";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[7] = v19;
  v31[8] = @"score";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[8] = v18;
  v31[9] = @"subcategory";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[9] = v17;
  v31[10] = @"graphMemoryIdentifier";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v32[10] = v16;
  v31[11] = @"keyAsset";
  v30[0] = @"uuid";
  v30[1] = @"cloudAssetGUID";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:v15];
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"keyAsset" relatedEntityPropertyNames:v2 shouldPrefetchRelationship:1];

  v32[11] = v3;
  v31[12] = @"curatedAssets";
  v29[0] = @"uuid";
  v29[1] = @"cloudAssetGUID";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"curatedAssets" relatedEntityPropertyNames:v5 shouldPrefetchRelationship:1];

  v32[12] = v6;
  v31[13] = @"extendedCuratedAssets";
  v28[0] = @"uuid";
  v28[1] = @"cloudAssetGUID";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"extendedCuratedAssets" relatedEntityPropertyNames:v8 shouldPrefetchRelationship:1];

  v32[13] = v9;
  v31[14] = @"representativeAssets";
  v27[0] = @"uuid";
  v27[1] = @"cloudAssetGUID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  v12 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"representativeAssets" relatedEntityPropertyNames:v11 shouldPrefetchRelationship:1];

  v32[14] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:15];

  return v13;
}

@end