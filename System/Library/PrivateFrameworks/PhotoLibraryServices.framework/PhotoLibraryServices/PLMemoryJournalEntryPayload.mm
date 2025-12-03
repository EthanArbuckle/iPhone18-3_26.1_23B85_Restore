@interface PLMemoryJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)context includePendingAssetChanges:(BOOL)changes;
- (BOOL)updateAssetsInMemory:(id)memory includePendingAssetChanges:(BOOL)changes;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSOrderedSet)customUserAssetUUIDs;
- (NSSet)curatedAssetUUIDs;
- (NSSet)extendedCuratedAssetUUIDs;
- (NSSet)movieCuratedAssetUUIDs;
- (NSSet)representativeAssetUUIDs;
- (NSSet)userCuratedAssetUUIDs;
- (NSSet)userRemovedAssetUUIDs;
- (NSString)keyAssetUUID;
- (PLMemoryJournalEntryPayload)initWithUserFeedback:(id)feedback changedKeys:(id)keys;
- (id)insertMemoryFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update;
@end

@implementation PLMemoryJournalEntryPayload

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  valueCopy = value;
  dictionaryValueCopy = dictionaryValue;
  propertyCopy = property;
  if (![propertyCopy isEqualToKey:@"movieAssetState"])
  {
    if ([propertyCopy isEqualToKey:@"keyAsset"])
    {
      v13 = [dictionaryValueCopy isEqualToString:valueCopy];
LABEL_6:
      v12 = v13;
      goto LABEL_17;
    }

    if (([propertyCopy isEqualToKey:@"curatedAssets"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"extendedCuratedAssets") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"movieCuratedAssets") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"userCuratedAssets") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"userRemovedAssets") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToKey:", @"representativeAssets"))
    {
      v14 = [MEMORY[0x1E695DFD8] setWithArray:dictionaryValueCopy];
      v15 = [v14 isEqualToSet:valueCopy];
    }

    else
    {
      if (![propertyCopy isEqualToKey:@"customUserAssets"])
      {
        v17.receiver = self;
        v17.super_class = PLMemoryJournalEntryPayload;
        v13 = [(PLManagedObjectJournalEntryPayload *)&v17 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
        goto LABEL_6;
      }

      v14 = [MEMORY[0x1E695DFB8] orderedSetWithArray:dictionaryValueCopy];
      v15 = [v14 isEqualToOrderedSet:valueCopy];
    }

    v12 = v15;

    goto LABEL_17;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v11 = [dictionaryValueCopy count];
  v24 = v11 == [valueCopy count];
  if (*(v22 + 24) == 1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__PLMemoryJournalEntryPayload_comparePayloadValue_toObjectDictionaryValue_forPayloadProperty___block_invoke;
    v18[3] = &unk_1E756E5F8;
    v19 = valueCopy;
    v20 = &v21;
    [dictionaryValueCopy enumerateKeysAndObjectsUsingBlock:v18];

    v12 = *(v22 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v21, 8);
LABEL_17:

  return v12 & 1;
}

void __94__PLMemoryJournalEntryPayload_comparePayloadValue_toObjectDictionaryValue_forPayloadProperty___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v12];
  v11 = [v10 isEqual:v9];

  if ((v11 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)applyPayloadProperty:(id)property toManagedObject:(id)object key:(id)key payloadAttributesToUpdate:(id)update
{
  v51 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  objectCopy = object;
  keyCopy = key;
  updateCopy = update;
  if ([propertyCopy requiresConversion])
  {
    v13 = objectCopy;
    v14 = [propertyCopy key];
    v15 = [v14 isEqualToString:@"movieAssetState"];

    if (v15)
    {
      payloadAttributes = self->super._payloadAttributes;
      v17 = [propertyCopy key];
      v18 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v17];
      [v13 setMovieAssetState:v18];
    }

    else if ([propertyCopy isEqualToKey:@"userFeedbacks"])
    {
      v37 = v13;
      v38 = propertyCopy;
      v34 = objectCopy;
      selfCopy = self;
      v22 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"userFeedbacks"];
      v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v22;
      v24 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v47;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v47 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v46 + 1) + 8 * i);
            v29 = [v28 objectForKeyedSubscript:@"userFeedbackUUID"];
            if (v29)
            {
              managedObjectContext = [v37 managedObjectContext];
              v31 = [PLUserFeedback insertIntoManagedObjectContext:managedObjectContext withUUID:v29];

              subRelationshipProperties = [v38 subRelationshipProperties];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __98__PLMemoryJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke;
              v42[3] = &unk_1E7572828;
              v42[4] = selfCopy;
              v43 = v31;
              v44 = updateCopy;
              v45 = v28;
              v33 = v31;
              [subRelationshipProperties enumerateKeysAndObjectsUsingBlock:v42];

              [v23 addObject:v33];
            }
          }

          v25 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v25);
      }

      v13 = v37;
      [v37 setUserFeedbacks:v23];

      propertyCopy = v38;
      objectCopy = v34;
    }
  }

  else
  {
    v19 = [propertyCopy key];
    v20 = [v19 isEqualToString:@"viewCount"];

    if (v20)
    {
      v21 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"viewCount"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41.receiver = self;
        v41.super_class = PLMemoryJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v41 applyPayloadProperty:propertyCopy toManagedObject:objectCopy key:keyCopy payloadAttributesToUpdate:updateCopy];
      }
    }

    else
    {
      v40.receiver = self;
      v40.super_class = PLMemoryJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v40 applyPayloadProperty:propertyCopy toManagedObject:objectCopy key:keyCopy payloadAttributesToUpdate:updateCopy];
    }
  }
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
LABEL_10:
    v11 = v10;

    goto LABEL_11;
  }

  if (([propertyCopy isEqualToKey:@"curatedAssets"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"extendedCuratedAssets") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"movieCuratedAssets") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"userCuratedAssets") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"userRemovedAssets") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToKey:", @"representativeAssets"))
  {
    v8 = [propertyCopy key];
    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v9];
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToKey:@"customUserAssets"])
  {
    v8 = [propertyCopy key];
    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
    goto LABEL_10;
  }

  v13.receiver = self;
  v13.super_class = PLMemoryJournalEntryPayload;
  v11 = [(PLManagedObjectJournalEntryPayload *)&v13 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
LABEL_11:

  return v11;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  valueCopy = value;
  builderCopy = builder;
  if ([keyCopy isEqualToString:@"keyAsset"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:valueCopy];
    v15.receiver = self;
    v15.super_class = PLMemoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v15 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
  }

  else if (([keyCopy isEqualToString:@"curatedAssets"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"extendedCuratedAssets") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"movieCuratedAssets") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"userCuratedAssets") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"userRemovedAssets") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"representativeAssets"))
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:valueCopy];
    v14.receiver = self;
    v14.super_class = PLMemoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v14 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
  }

  else
  {
    if (![keyCopy isEqualToString:@"customUserAssets"])
    {
      v12.receiver = self;
      v12.super_class = PLMemoryJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
      goto LABEL_11;
    }

    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:valueCopy];
    v13.receiver = self;
    v13.super_class = PLMemoryJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
  }

LABEL_11:
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  propertyCopy = property;
  v14 = objectCopy;
  if (![propertyCopy isEqualToKey:@"movieAssetState"])
  {
    if ([propertyCopy isEqualToKey:@"keyAsset"])
    {
      keyAsset = [v14 keyAsset];
      uuid = [keyAsset uuid];
      v17 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:uuid];
      v18 = [propertyCopy key];
      [attributesCopy setObject:v17 forKeyedSubscript:v18];

      goto LABEL_17;
    }

    if ([propertyCopy isEqualToKey:@"curatedAssets"])
    {
      curatedAssets = [v14 curatedAssets];
    }

    else if ([propertyCopy isEqualToKey:@"extendedCuratedAssets"])
    {
      curatedAssets = [v14 extendedCuratedAssets];
    }

    else if ([propertyCopy isEqualToKey:@"movieCuratedAssets"])
    {
      curatedAssets = [v14 movieCuratedAssets];
    }

    else if ([propertyCopy isEqualToKey:@"userCuratedAssets"])
    {
      curatedAssets = [v14 userCuratedAssets];
    }

    else if ([propertyCopy isEqualToKey:@"representativeAssets"])
    {
      curatedAssets = [v14 representativeAssets];
    }

    else
    {
      if ([propertyCopy isEqualToKey:@"customUserAssets"])
      {
        customUserAssets = [v14 customUserAssets];
        relatedEntityPropertyNames = [propertyCopy relatedEntityPropertyNames];
        anyObject = [relatedEntityPropertyNames anyObject];
        keyAsset = [customUserAssets valueForKey:anyObject];

        v23 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringOrderedSet:keyAsset];
        goto LABEL_16;
      }

      if (![propertyCopy isEqualToKey:@"userRemovedAssets"])
      {
        v24 = 0;
        goto LABEL_18;
      }

      curatedAssets = [v14 userRemovedAssets];
    }

    v20 = curatedAssets;
    relatedEntityPropertyNames2 = [propertyCopy relatedEntityPropertyNames];
    anyObject2 = [relatedEntityPropertyNames2 anyObject];
    keyAsset = [v20 valueForKey:anyObject2];

    v23 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringSet:keyAsset];
LABEL_16:
    uuid = v23;
    [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy forPayloadProperty:propertyCopy withUUIDStringData:v23];
    goto LABEL_17;
  }

  keyAsset = [v14 movieAssetState];
  uuid = [propertyCopy key];
  [attributesCopy setObject:keyAsset forKeyedSubscript:uuid];
LABEL_17:

  v24 = 1;
LABEL_18:

  return v24;
}

- (NSOrderedSet)customUserAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customUserAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (NSSet)representativeAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"representativeAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (NSSet)userRemovedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"userRemovedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (NSSet)userCuratedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"userCuratedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (NSSet)movieCuratedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"movieCuratedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (NSString)keyAssetUUID
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"keyAsset"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v3];

  return v4;
}

- (NSSet)extendedCuratedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"extendedCuratedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (NSSet)curatedAssetUUIDs
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"curatedAssets"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v3];

  return v4;
}

- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)context includePendingAssetChanges:(BOOL)changes
{
  changesCopy = changes;
  v29 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  contextCopy = context;
  v8 = [v6 set];
  representativeAssetUUIDs = [(PLMemoryJournalEntryPayload *)self representativeAssetUUIDs];
  [v8 unionSet:representativeAssetUUIDs];

  curatedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self curatedAssetUUIDs];
  [v8 unionSet:curatedAssetUUIDs];

  extendedCuratedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self extendedCuratedAssetUUIDs];
  [v8 unionSet:extendedCuratedAssetUUIDs];

  movieCuratedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self movieCuratedAssetUUIDs];
  [v8 unionSet:movieCuratedAssetUUIDs];

  userCuratedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self userCuratedAssetUUIDs];
  [v8 unionSet:userCuratedAssetUUIDs];

  userRemovedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self userRemovedAssetUUIDs];
  [v8 unionSet:userRemovedAssetUUIDs];

  customUserAssetUUIDs = [(PLMemoryJournalEntryPayload *)self customUserAssetUUIDs];
  v16 = [customUserAssetUUIDs set];
  [v8 unionSet:v16];

  keyAssetUUID = [(PLMemoryJournalEntryPayload *)self keyAssetUUID];
  if (keyAssetUUID)
  {
    [v8 addObject:keyAssetUUID];
  }

  allObjects = [v8 allObjects];
  v24 = 0;
  v19 = [PLManagedAsset countForAssetsWithUUIDs:allObjects includePendingChanges:changesCopy inManagedObjectContext:contextCopy error:&v24];

  v20 = v24;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch count for assets in memory metadata %@, %@", buf, 0x16u);
    }
  }

  v22 = v19 == [v8 count];

  return v22;
}

- (BOOL)updateAssetsInMemory:(id)memory includePendingAssetChanges:(BOOL)changes
{
  changesCopy = changes;
  memoryCopy = memory;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  curatedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self curatedAssetUUIDs];
  [v7 unionSet:curatedAssetUUIDs];

  extendedCuratedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self extendedCuratedAssetUUIDs];
  [v7 unionSet:extendedCuratedAssetUUIDs];

  movieCuratedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self movieCuratedAssetUUIDs];
  [v7 unionSet:movieCuratedAssetUUIDs];

  userCuratedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self userCuratedAssetUUIDs];
  [v7 unionSet:userCuratedAssetUUIDs];

  userRemovedAssetUUIDs = [(PLMemoryJournalEntryPayload *)self userRemovedAssetUUIDs];
  [v7 unionSet:userRemovedAssetUUIDs];

  representativeAssetUUIDs = [(PLMemoryJournalEntryPayload *)self representativeAssetUUIDs];
  [v7 unionSet:representativeAssetUUIDs];

  keyAssetUUID = [(PLMemoryJournalEntryPayload *)self keyAssetUUID];

  if (keyAssetUUID)
  {
    keyAssetUUID2 = [(PLMemoryJournalEntryPayload *)self keyAssetUUID];
    [v7 addObject:keyAssetUUID2];
  }

  if (changesCopy)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  allObjects = [v7 allObjects];
  managedObjectContext = [memoryCopy managedObjectContext];
  v64 = v16;
  v19 = [PLManagedAsset assetsWithUUIDs:allObjects options:v16 inManagedObjectContext:managedObjectContext];

  v20 = [v19 count];
  v66 = v20 == [v7 count];
  v21 = MEMORY[0x1E696AE18];
  curatedAssetUUIDs2 = [(PLMemoryJournalEntryPayload *)self curatedAssetUUIDs];
  v23 = [v21 predicateWithFormat:@"%K in %@", @"uuid", curatedAssetUUIDs2];
  v24 = [v19 filteredArrayUsingPredicate:v23];

  v65 = v24;
  v25 = [MEMORY[0x1E695DFD8] setWithArray:v24];
  [memoryCopy setCuratedAssets:v25];

  v26 = MEMORY[0x1E696AE18];
  extendedCuratedAssetUUIDs2 = [(PLMemoryJournalEntryPayload *)self extendedCuratedAssetUUIDs];
  v28 = [v26 predicateWithFormat:@"%K in %@", @"uuid", extendedCuratedAssetUUIDs2];
  v29 = [v19 filteredArrayUsingPredicate:v28];

  v63 = v29;
  v30 = [MEMORY[0x1E695DFD8] setWithArray:v29];
  [memoryCopy setExtendedCuratedAssets:v30];

  v31 = MEMORY[0x1E696AE18];
  movieCuratedAssetUUIDs2 = [(PLMemoryJournalEntryPayload *)self movieCuratedAssetUUIDs];
  v33 = [v31 predicateWithFormat:@"%K in %@", @"uuid", movieCuratedAssetUUIDs2];
  v34 = [v19 filteredArrayUsingPredicate:v33];

  v62 = v34;
  v35 = [MEMORY[0x1E695DFD8] setWithArray:v34];
  [memoryCopy setMovieCuratedAssets:v35];

  v36 = MEMORY[0x1E696AE18];
  userCuratedAssetUUIDs2 = [(PLMemoryJournalEntryPayload *)self userCuratedAssetUUIDs];
  v38 = [v36 predicateWithFormat:@"%K in %@", @"uuid", userCuratedAssetUUIDs2];
  v39 = [v19 filteredArrayUsingPredicate:v38];

  v61 = v39;
  v40 = [MEMORY[0x1E695DFD8] setWithArray:v39];
  [memoryCopy setUserCuratedAssets:v40];

  v41 = MEMORY[0x1E696AE18];
  representativeAssetUUIDs2 = [(PLMemoryJournalEntryPayload *)self representativeAssetUUIDs];
  v43 = [v41 predicateWithFormat:@"%K in %@", @"uuid", representativeAssetUUIDs2];
  v44 = [v19 filteredArrayUsingPredicate:v43];

  v45 = [MEMORY[0x1E695DFD8] setWithArray:v44];
  [memoryCopy setRepresentativeAssets:v45];

  v46 = MEMORY[0x1E696AE18];
  userRemovedAssetUUIDs2 = [(PLMemoryJournalEntryPayload *)self userRemovedAssetUUIDs];
  v48 = [v46 predicateWithFormat:@"%K in %@", @"uuid", userRemovedAssetUUIDs2];
  v49 = [v19 filteredArrayUsingPredicate:v48];

  v50 = [MEMORY[0x1E695DFD8] setWithArray:v49];
  [memoryCopy setUserRemovedAssets:v50];

  keyAssetUUID3 = [(PLMemoryJournalEntryPayload *)self keyAssetUUID];

  if (keyAssetUUID3)
  {
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __79__PLMemoryJournalEntryPayload_updateAssetsInMemory_includePendingAssetChanges___block_invoke;
    v71[3] = &unk_1E756E5A8;
    v71[4] = self;
    v52 = [v19 indexOfObjectPassingTest:v71];
    if (v52 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v66 = 0;
    }

    else
    {
      v53 = [v19 objectAtIndexedSubscript:v52];
      [memoryCopy setKeyAsset:v53];
    }
  }

  customUserAssetUUIDs = [(PLMemoryJournalEntryPayload *)self customUserAssetUUIDs];
  v55 = objc_opt_class();
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __79__PLMemoryJournalEntryPayload_updateAssetsInMemory_includePendingAssetChanges___block_invoke_2;
  v67[3] = &unk_1E756E5D0;
  v56 = customUserAssetUUIDs;
  v68 = v56;
  v70 = v64;
  v57 = memoryCopy;
  v69 = v57;
  v58 = [v55 sortedObjectsToAddWithUUIDs:v56 uuidKey:@"uuid" andExistingObjects:0 fetchBlock:v67];
  if (v58)
  {
    v59 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v58];
    [v57 setCustomUserAssets:v59];
  }

  return v66;
}

uint64_t __79__PLMemoryJournalEntryPayload_updateAssetsInMemory_includePendingAssetChanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) keyAssetUUID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __79__PLMemoryJournalEntryPayload_updateAssetsInMemory_includePendingAssetChanges___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [PLManagedAsset assetsWithUUIDs:v2 options:v3 inManagedObjectContext:v4];

  return v5;
}

- (PLMemoryJournalEntryPayload)initWithUserFeedback:(id)feedback changedKeys:(id)keys
{
  feedbackCopy = feedback;
  keysCopy = keys;
  if (keysCopy)
  {
    v8 = MEMORY[0x1E695DFD8];
    modelProperties = [objc_opt_class() modelProperties];
    v10 = [modelProperties objectForKeyedSubscript:@"userFeedbacks"];
    subRelationshipProperties = [v10 subRelationshipProperties];
    allKeys = [subRelationshipProperties allKeys];
    v13 = [v8 setWithArray:allKeys];

    if ([keysCopy intersectsSet:v13])
    {
      memory = [feedbackCopy memory];
      payloadID = [feedbackCopy payloadID];
      payloadVersion = [objc_opt_class() payloadVersion];
      v17 = [MEMORY[0x1E695DFD8] setWithObject:@"userFeedbacks"];
      modelProperties2 = [objc_opt_class() modelProperties];
      v21.receiver = self;
      v21.super_class = PLMemoryJournalEntryPayload;
      v19 = [(PLManagedObjectJournalEntryPayload *)&v21 initWithPayloadID:payloadID payloadVersion:payloadVersion managedObject:memory changedKeys:v17 modelProperties:modelProperties2];
    }

    else
    {

      v19 = 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

- (id)insertMemoryFromDataInManagedObjectContext:(id)context
{
  v4 = [(PLManagedObject *)PLMemory insertInManagedObjectContext:context];
  payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  payloadIDString = [payloadID payloadIDString];
  [v4 setUuid:payloadIDString];

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v4 payloadAttributesToUpdate:0];

  return v4;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  v4 = [dictionary objectForKeyedSubscript:{@"pendingState", name}];
  v5 = [v4 intValue] == 0;

  return v5;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLMemoryJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistedPropertyNamesForEntityNames_onceToken_59325 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_59325, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_59326;

  return v2;
}

void __67__PLMemoryJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_59326;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_59326 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLMemoryJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (modelProperties_onceToken_59327 != -1)
  {
    dispatch_once(&modelProperties_onceToken_59327, block);
  }

  v2 = modelProperties_modelProperties_59328;

  return v2;
}

uint64_t __46__PLMemoryJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_59328;
  modelProperties_modelProperties_59328 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_59328;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  v32[20] = *MEMORY[0x1E69E9840];
  v31[0] = @"graphMemoryIdentifier";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[0] = v28;
  v31[1] = @"storyColorGradeKind";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[1] = v27;
  v31[2] = @"storySerializedTitleCategory";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[2] = v26;
  v31[3] = @"cloudDeleteState";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[3] = v25;
  v31[4] = @"cloudLocalState";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[4] = v24;
  v31[5] = @"lastMoviePlayedDate";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[5] = v23;
  v31[6] = @"lastViewedDate";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[6] = v22;
  v31[7] = @"lastEnrichmentDate";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[7] = v21;
  v31[8] = @"pendingPlayCount";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[8] = v20;
  v31[9] = @"pendingShareCount";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[9] = v19;
  v31[10] = @"pendingViewCount";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[10] = v18;
  v31[11] = @"featuredState";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[11] = v17;
  v31[12] = @"syndicatedContentState";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[12] = v16;
  v31[13] = @"sharingComposition";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[13] = v15;
  v31[14] = @"searchIndexRebuildState";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[14] = v14;
  v31[15] = @"startDate";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[15] = v13;
  v31[16] = @"endDate";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[16] = v2;
  v31[17] = @"sourceGeneratedMemory";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[17] = v3;
  v31[18] = @"targetUserEditedMemory";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v32[18] = v4;
  v31[19] = @"userFeedbacks";
  v29[0] = @"cloudDeleteState";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v30[0] = v5;
  v29[1] = @"cloudLocalState";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v30[1] = v6;
  v29[2] = @"memory";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v30[2] = v7;
  v29[3] = @"person";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v30[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v9 subRelationshipEntityName:0 isToMany:1 isAdditionalEntityName:1 info:0];
  v32[19] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:20];

  return v11;
}

+ (id)modelPropertiesDescription
{
  v55[31] = *MEMORY[0x1E69E9840];
  v54[0] = @"uuid";
  v51 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v55[0] = v51;
  v54[1] = @"title";
  v50 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[1] = v50;
  v54[2] = @"subtitle";
  v49 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[2] = v49;
  v54[3] = @"creationDate";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[3] = v48;
  v54[4] = @"assetListPredicate";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[4] = v47;
  v54[5] = @"blacklistedFeature";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[5] = v46;
  v54[6] = @"category";
  v45 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[6] = v45;
  v54[7] = @"favorite";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[7] = v44;
  v54[8] = @"movieAssetState";
  v43 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[8] = v43;
  v54[9] = @"movieData";
  v42 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[9] = v42;
  v54[10] = @"notificationState";
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[10] = v41;
  v54[11] = @"pendingState";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"pending" andType:100 info:0];
  v55[11] = v40;
  v54[12] = @"creationType";
  v39 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"creationType" andType:100 info:0];
  v55[12] = v39;
  v54[13] = @"photosGraphData";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[13] = v38;
  v54[14] = @"photosGraphVersion";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[14] = v37;
  v54[15] = @"playCount";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[15] = v36;
  v54[16] = @"rejected";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[16] = v35;
  v54[17] = @"score";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[17] = v34;
  v54[18] = @"shareCount";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[18] = v33;
  v54[19] = @"subcategory";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[19] = v32;
  v54[20] = @"userActionOptions";
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userCreated" andType:100 info:0];
  v55[20] = v31;
  v54[21] = @"viewCount";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v55[21] = v30;
  v54[22] = @"keyAsset";
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"keyAsset" relatedEntityPropertyNames:v2 shouldPrefetchRelationship:1];

  v55[22] = v29;
  v54[23] = @"curatedAssets";
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"curatedAssets" relatedEntityPropertyNames:v3 shouldPrefetchRelationship:1];

  v55[23] = v28;
  v54[24] = @"extendedCuratedAssets";
  v4 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"extendedCuratedAssets" relatedEntityPropertyNames:v4 shouldPrefetchRelationship:1];

  v55[24] = v27;
  v54[25] = @"movieCuratedAssets";
  v5 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"movieCuratedAssets" relatedEntityPropertyNames:v5 shouldPrefetchRelationship:1];

  v55[25] = v26;
  v54[26] = @"userCuratedAssets";
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userCuratedAssets" relatedEntityPropertyNames:v6 shouldPrefetchRelationship:1];

  v55[26] = v25;
  v54[27] = @"representativeAssets";
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"representativeAssets" relatedEntityPropertyNames:v7 shouldPrefetchRelationship:1];

  v55[27] = v24;
  v54[28] = @"customUserAssets";
  v8 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"customUserAssets" relatedEntityPropertyNames:v8 shouldPrefetchRelationship:1];

  v55[28] = v23;
  v54[29] = @"userRemovedAssets";
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userRemovedAssets" relatedEntityPropertyNames:v9 shouldPrefetchRelationship:1];

  v55[29] = v22;
  v54[30] = @"userFeedbacks";
  v10 = +[PLUserFeedback entityName];
  v52[0] = @"uuid";
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackUUID" andType:700 info:0];
  v53[0] = v11;
  v52[1] = @"type";
  v12 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackType" andType:100 info:0];
  v53[1] = v12;
  v52[2] = @"feature";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackFeature" andType:100 info:0];
  v53[2] = v13;
  v52[3] = @"creationType";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackCreationType" andType:100 info:0];
  v53[3] = v14;
  v52[4] = @"context";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackContext" andType:700 info:0];
  v53[4] = v15;
  v52[5] = @"lastModifiedDate";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbackLastModifiedDate" andType:900 info:0];
  v53[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:6];
  v18 = v10;
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"userFeedbacks" subRelationshipProperties:v17 subRelationshipEntityName:v10 isToMany:1 isAdditionalEntityName:1 info:0];
  v55[30] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:31];

  return v20;
}

@end