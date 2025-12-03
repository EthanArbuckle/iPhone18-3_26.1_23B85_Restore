@interface PLFolderJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
+ (void)updateChildrenOrderingInFolder:(id)folder usingChildCollectionUUIDs:(id)ds includePendingChanges:(BOOL)changes;
- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property;
- (BOOL)isProjectAlbumRootFolder;
- (BOOL)isRootFolder;
- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property;
- (NSOrderedSet)childCollectionUUIDs;
- (id)insertAlbumFromDataInManagedObjectContext:(id)context;
- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property;
- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder;
- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes;
@end

@implementation PLFolderJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  dictionaryCopy = dictionary;
  v5 = +[PLManagedFolder validKindsForPersistence];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kind"];

  LOBYTE(dictionaryCopy) = [v5 containsObject:v6];
  return dictionaryCopy;
}

+ (void)updateChildrenOrderingInFolder:(id)folder usingChildCollectionUUIDs:(id)ds includePendingChanges:(BOOL)changes
{
  v25 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  dsCopy = ds;
  childCollections = [folderCopy childCollections];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110__PLFolderJournalEntryPayload_updateChildrenOrderingInFolder_usingChildCollectionUUIDs_includePendingChanges___block_invoke;
  v19[3] = &unk_1E7574BC0;
  v11 = dsCopy;
  v20 = v11;
  changesCopy = changes;
  v12 = folderCopy;
  v21 = v12;
  v13 = [self sortedObjectsToAddWithUUIDs:v11 uuidKey:@"uuid" andExistingObjects:childCollections fetchBlock:v19];

  if (v13)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v12 uuid];
      *buf = 138412546;
      *v24 = uuid;
      *&v24[8] = 2112;
      *&v24[10] = v11;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Updating children in folder %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v13];
    [v12 removeChildCollections:v16];
    [v12 addChildCollections:v16];
  }

  else
  {
    if (![v11 count])
    {
      goto LABEL_6;
    }

    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 count];
      uuid2 = [v12 uuid];
      *buf = 67109378;
      *v24 = v17;
      *&v24[4] = 2112;
      *&v24[6] = uuid2;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Persisted child collection UUIDs (%d total) match database ordering for folder %@", buf, 0x12u);
    }
  }

LABEL_6:
}

id __110__PLFolderJournalEntryPayload_updateChildrenOrderingInFolder_usingChildCollectionUUIDs_includePendingChanges___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLGenericAlbum entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AE18];
  v6 = [*(a1 + 32) array];
  v7 = [v5 predicateWithFormat:@"uuid in %@", v6];
  [v4 setPredicate:v7];

  if (*(a1 + 48) == 1)
  {
    [v4 setIncludesPendingChanges:1];
  }

  v8 = [*(a1 + 40) managedObjectContext];
  v11 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v11];

  return v9;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLFolderJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistedPropertyNamesForEntityNames_onceToken_64649 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_64649, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_64650;

  return v2;
}

void __67__PLFolderJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_64650;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_64650 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLFolderJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (modelProperties_onceToken_64651 != -1)
  {
    dispatch_once(&modelProperties_onceToken_64651, block);
  }

  v2 = modelProperties_modelProperties_64652;

  return v2;
}

uint64_t __46__PLFolderJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_64652;
  modelProperties_modelProperties_64652 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_64652;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___PLFolderJournalEntryPayload;
  v4 = objc_msgSendSuper2(&v11, sel_modelPropertiesDescription);
  v5 = [v3 initWithDictionary:v4];

  v12[0] = @"uuid";
  v12[1] = @"kind";
  v13 = @"childCollections";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"childCollections" relatedEntityPropertyNames:v7 shouldPrefetchRelationship:1];

  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 addEntriesFromDictionary:v9];

  return v5;
}

- (BOOL)comparePayloadValue:(id)value toObjectDictionaryValue:(id)dictionaryValue forPayloadProperty:(id)property
{
  v30 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  dictionaryValueCopy = dictionaryValue;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"childCollections"])
  {
    v23 = propertyCopy;
    v11 = dictionaryValueCopy;
    v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          if ([PLFolderJournalEntryPayload isValidForPersistenceWithObjectDictionary:v18 additionalEntityName:0]|| [PLAlbumJournalEntryPayload isValidForPersistenceWithObjectDictionary:v18 additionalEntityName:0]|| [PLFetchingAlbumJournalEntryPayload isValidForPersistenceWithObjectDictionary:v18 additionalEntityName:0]|| [PLProjectAlbumJournalEntryPayload isValidForPersistenceWithObjectDictionary:v18 additionalEntityName:0])
          {
            v19 = [v18 objectForKeyedSubscript:@"uuid"];
            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    v20 = [v12 count];
    if (valueCopy || v20)
    {
      v21 = [v12 isEqualToOrderedSet:valueCopy];
    }

    else
    {
      v21 = 1;
    }

    propertyCopy = v23;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PLFolderJournalEntryPayload;
    v21 = [(PLGenericAlbumJournalEntryPayload *)&v24 comparePayloadValue:valueCopy toObjectDictionaryValue:dictionaryValueCopy forPayloadProperty:propertyCopy];
  }

  return v21;
}

- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  v9.receiver = self;
  v9.super_class = PLFolderJournalEntryPayload;
  albumCopy = album;
  [(PLGenericAlbumJournalEntryPayload *)&v9 updateAlbum:albumCopy includePendingChanges:changesCopy];
  v7 = objc_opt_class();
  v8 = [(PLFolderJournalEntryPayload *)self childCollectionUUIDs:v9.receiver];
  [v7 updateChildrenOrderingInFolder:albumCopy usingChildCollectionUUIDs:v8 includePendingChanges:changesCopy];
}

- (id)insertAlbumFromDataInManagedObjectContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kind = [(PLGenericAlbumJournalEntryPayload *)self kind];
  intValue = [kind intValue];

  if ((intValue - 3998) < 2)
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Can't replace singleton root folder from payload", &v18, 2u);
    }
  }

  else
  {
    if (intValue == 1553)
    {
      title = [(PLGenericAlbumJournalEntryPayload *)self title];
      photoLibrary = [contextCopy photoLibrary];
      v9 = title;
      v10 = 1553;
      goto LABEL_8;
    }

    if (intValue == 4000)
    {
      title = [(PLGenericAlbumJournalEntryPayload *)self title];
      photoLibrary = [contextCopy photoLibrary];
      v9 = title;
      v10 = 4000;
LABEL_8:
      v12 = [PLManagedFolder insertNewFolderWithTitle:v9 kind:v10 intoLibrary:photoLibrary];

      goto LABEL_12;
    }

    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      kind2 = [(PLGenericAlbumJournalEntryPayload *)self kind];
      payloadID = [(PLManagedObjectJournalEntryPayload *)self payloadID];
      v18 = 138412546;
      v19 = kind2;
      v20 = 2112;
      v21 = payloadID;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unknown Folder Kind %@ for uuid %@", &v18, 0x16u);
    }
  }

  v12 = 0;
LABEL_12:
  payloadID2 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  payloadIDString = [payloadID2 payloadIDString];
  [v12 setUuid:payloadIDString];

  return v12;
}

- (BOOL)isProjectAlbumRootFolder
{
  kind = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v3 = [kind intValue] == 3998;

  return v3;
}

- (BOOL)isRootFolder
{
  kind = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v3 = [kind intValue] == 3999;

  return v3;
}

- (NSOrderedSet)childCollectionUUIDs
{
  v3 = [(NSMutableDictionary *)self->super.super._payloadAttributes objectForKeyedSubscript:@"childCollections"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (id)payloadValueFromAttributes:(id)attributes forPayloadProperty:(id)property
{
  attributesCopy = attributes;
  propertyCopy = property;
  if ([propertyCopy isEqualToKey:@"childCollections"])
  {
    v8 = [propertyCopy key];

    v9 = [attributesCopy objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLFolderJournalEntryPayload;
    v10 = [(PLGenericAlbumJournalEntryPayload *)&v12 payloadValueFromAttributes:attributesCopy forPayloadProperty:propertyCopy];
  }

  return v10;
}

- (void)appendAttributeKey:(id)key value:(id)value toDescriptionBuilder:(id)builder
{
  keyCopy = key;
  builderCopy = builder;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"childCollections"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:valueCopy];

    v13.receiver = self;
    v13.super_class = PLFolderJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v13 appendAttributeKey:keyCopy value:v11 toDescriptionBuilder:builderCopy];
    valueCopy = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLFolderJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v12 appendAttributeKey:keyCopy value:valueCopy toDescriptionBuilder:builderCopy];
  }
}

- (BOOL)updatePayloadAttributes:(id)attributes andNilAttributes:(id)nilAttributes withManagedObject:(id)object forPayloadProperty:(id)property
{
  v53 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  nilAttributesCopy = nilAttributes;
  objectCopy = object;
  propertyCopy = property;
  if (![propertyCopy isEqualToKey:@"childCollections"])
  {
    v47.receiver = self;
    v47.super_class = PLFolderJournalEntryPayload;
    v34 = [(PLGenericAlbumJournalEntryPayload *)&v47 updatePayloadAttributes:attributesCopy andNilAttributes:nilAttributesCopy withManagedObject:objectCopy forPayloadProperty:propertyCopy];
    goto LABEL_21;
  }

  selfCopy = self;
  v38 = propertyCopy;
  v40 = nilAttributesCopy;
  v41 = attributesCopy;
  v39 = objectCopy;
  v14 = objectCopy;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = v14;
  childCollections = [v14 childCollections];
  v17 = [childCollections countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v19 = *v49;
  v20 = off_1E7560000;
  v42 = childCollections;
  v43 = v15;
  v45 = *v49;
  do
  {
    v21 = 0;
    v46 = v18;
    do
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(childCollections);
      }

      v22 = *(*(&v48 + 1) + 8 * v21);
      validKindsForPersistence = [(__objc2_class *)v20[57] validKindsForPersistence];
      kind = [v22 kind];
      if ([validKindsForPersistence containsObject:kind])
      {
        goto LABEL_12;
      }

      v25 = +[PLManagedAlbum validKindsForPersistence];
      kind2 = [v22 kind];
      if ([v25 containsObject:kind2])
      {
        goto LABEL_11;
      }

      v27 = +[PLFetchingAlbum validKindsForPersistence];
      kind3 = [v22 kind];
      if ([v27 containsObject:kind3])
      {

        v19 = v45;
        v20 = off_1E7560000;
LABEL_11:

        v18 = v46;
LABEL_12:

LABEL_13:
        uuid = [v22 uuid];
        [v15 addObject:uuid];

        goto LABEL_14;
      }

      v30 = +[PLProjectAlbum validKindsForPersistence];
      kind4 = [v22 kind];
      v44 = [v30 containsObject:kind4];

      v15 = v43;
      childCollections = v42;

      v19 = v45;
      v18 = v46;
      v20 = off_1E7560000;
      if (v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v21;
    }

    while (v18 != v21);
    v32 = [childCollections countByEnumeratingWithState:&v48 objects:v52 count:16];
    v18 = v32;
  }

  while (v32);
LABEL_19:

  v33 = [(PLManagedObjectJournalEntryPayload *)selfCopy encodedDataForUUIDStringOrderedSet:v15];
  nilAttributesCopy = v40;
  attributesCopy = v41;
  propertyCopy = v38;
  [(PLManagedObjectJournalEntryPayload *)selfCopy updatePayloadAttributes:v41 andNilAttributes:v40 forPayloadProperty:v38 withUUIDStringData:v33];

  v34 = 1;
  objectCopy = v39;
LABEL_21:

  return v34;
}

@end