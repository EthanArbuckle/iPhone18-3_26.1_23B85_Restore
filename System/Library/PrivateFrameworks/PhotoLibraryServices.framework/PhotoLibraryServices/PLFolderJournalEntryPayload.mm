@interface PLFolderJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
+ (void)updateChildrenOrderingInFolder:(id)a3 usingChildCollectionUUIDs:(id)a4 includePendingChanges:(BOOL)a5;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)isProjectAlbumRootFolder;
- (BOOL)isRootFolder;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSOrderedSet)childCollectionUUIDs;
- (id)insertAlbumFromDataInManagedObjectContext:(id)a3;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)updateAlbum:(id)a3 includePendingChanges:(BOOL)a4;
@end

@implementation PLFolderJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v4 = a3;
  v5 = +[PLManagedFolder validKindsForPersistence];
  v6 = [v4 objectForKeyedSubscript:@"kind"];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (void)updateChildrenOrderingInFolder:(id)a3 usingChildCollectionUUIDs:(id)a4 includePendingChanges:(BOOL)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 childCollections];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110__PLFolderJournalEntryPayload_updateChildrenOrderingInFolder_usingChildCollectionUUIDs_includePendingChanges___block_invoke;
  v19[3] = &unk_1E7574BC0;
  v11 = v9;
  v20 = v11;
  v22 = a5;
  v12 = v8;
  v21 = v12;
  v13 = [a1 sortedObjectsToAddWithUUIDs:v11 uuidKey:@"uuid" andExistingObjects:v10 fetchBlock:v19];

  if (v13)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 uuid];
      *buf = 138412546;
      *v24 = v15;
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
      v18 = [v12 uuid];
      *buf = 67109378;
      *v24 = v17;
      *&v24[4] = 2112;
      *&v24[6] = v18;
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
  block[4] = a1;
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
  block[4] = a1;
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
  v11.receiver = a1;
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

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToKey:@"childCollections"])
  {
    v23 = v10;
    v11 = v9;
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
    if (v8 || v20)
    {
      v21 = [v12 isEqualToOrderedSet:v8];
    }

    else
    {
      v21 = 1;
    }

    v10 = v23;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PLFolderJournalEntryPayload;
    v21 = [(PLGenericAlbumJournalEntryPayload *)&v24 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10];
  }

  return v21;
}

- (void)updateAlbum:(id)a3 includePendingChanges:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = PLFolderJournalEntryPayload;
  v6 = a3;
  [(PLGenericAlbumJournalEntryPayload *)&v9 updateAlbum:v6 includePendingChanges:v4];
  v7 = objc_opt_class();
  v8 = [(PLFolderJournalEntryPayload *)self childCollectionUUIDs:v9.receiver];
  [v7 updateChildrenOrderingInFolder:v6 usingChildCollectionUUIDs:v8 includePendingChanges:v4];
}

- (id)insertAlbumFromDataInManagedObjectContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v6 = [v5 intValue];

  if ((v6 - 3998) < 2)
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
    if (v6 == 1553)
    {
      v7 = [(PLGenericAlbumJournalEntryPayload *)self title];
      v8 = [v4 photoLibrary];
      v9 = v7;
      v10 = 1553;
      goto LABEL_8;
    }

    if (v6 == 4000)
    {
      v7 = [(PLGenericAlbumJournalEntryPayload *)self title];
      v8 = [v4 photoLibrary];
      v9 = v7;
      v10 = 4000;
LABEL_8:
      v12 = [PLManagedFolder insertNewFolderWithTitle:v9 kind:v10 intoLibrary:v8];

      goto LABEL_12;
    }

    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [(PLGenericAlbumJournalEntryPayload *)self kind];
      v14 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unknown Folder Kind %@ for uuid %@", &v18, 0x16u);
    }
  }

  v12 = 0;
LABEL_12:
  v15 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v16 = [v15 payloadIDString];
  [v12 setUuid:v16];

  return v12;
}

- (BOOL)isProjectAlbumRootFolder
{
  v2 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v3 = [v2 intValue] == 3998;

  return v3;
}

- (BOOL)isRootFolder
{
  v2 = [(PLGenericAlbumJournalEntryPayload *)self kind];
  v3 = [v2 intValue] == 3999;

  return v3;
}

- (NSOrderedSet)childCollectionUUIDs
{
  v3 = [(NSMutableDictionary *)self->super.super._payloadAttributes objectForKeyedSubscript:@"childCollections"];
  v4 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v3];

  return v4;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToKey:@"childCollections"])
  {
    v8 = [v7 key];

    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLFolderJournalEntryPayload;
    v10 = [(PLGenericAlbumJournalEntryPayload *)&v12 payloadValueFromAttributes:v6 forPayloadProperty:v7];
  }

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"childCollections"])
  {
    v11 = [(PLManagedObjectJournalEntryPayload *)self orderedSetForUUIDEncodedData:v10];

    v13.receiver = self;
    v13.super_class = PLFolderJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v13 appendAttributeKey:v8 value:v11 toDescriptionBuilder:v9];
    v10 = v11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLFolderJournalEntryPayload;
    [(PLGenericAlbumJournalEntryPayload *)&v12 appendAttributeKey:v8 value:v10 toDescriptionBuilder:v9];
  }
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v13 isEqualToKey:@"childCollections"])
  {
    v47.receiver = self;
    v47.super_class = PLFolderJournalEntryPayload;
    v34 = [(PLGenericAlbumJournalEntryPayload *)&v47 updatePayloadAttributes:v10 andNilAttributes:v11 withManagedObject:v12 forPayloadProperty:v13];
    goto LABEL_21;
  }

  v37 = self;
  v38 = v13;
  v40 = v11;
  v41 = v10;
  v39 = v12;
  v14 = v12;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = v14;
  v16 = [v14 childCollections];
  v17 = [v16 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v19 = *v49;
  v20 = off_1E7560000;
  v42 = v16;
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
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v48 + 1) + 8 * v21);
      v23 = [(__objc2_class *)v20[57] validKindsForPersistence];
      v24 = [v22 kind];
      if ([v23 containsObject:v24])
      {
        goto LABEL_12;
      }

      v25 = +[PLManagedAlbum validKindsForPersistence];
      v26 = [v22 kind];
      if ([v25 containsObject:v26])
      {
        goto LABEL_11;
      }

      v27 = +[PLFetchingAlbum validKindsForPersistence];
      v28 = [v22 kind];
      if ([v27 containsObject:v28])
      {

        v19 = v45;
        v20 = off_1E7560000;
LABEL_11:

        v18 = v46;
LABEL_12:

LABEL_13:
        v29 = [v22 uuid];
        [v15 addObject:v29];

        goto LABEL_14;
      }

      v30 = +[PLProjectAlbum validKindsForPersistence];
      v31 = [v22 kind];
      v44 = [v30 containsObject:v31];

      v15 = v43;
      v16 = v42;

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
    v32 = [v16 countByEnumeratingWithState:&v48 objects:v52 count:16];
    v18 = v32;
  }

  while (v32);
LABEL_19:

  v33 = [(PLManagedObjectJournalEntryPayload *)v37 encodedDataForUUIDStringOrderedSet:v15];
  v11 = v40;
  v10 = v41;
  v13 = v38;
  [(PLManagedObjectJournalEntryPayload *)v37 updatePayloadAttributes:v41 andNilAttributes:v40 forPayloadProperty:v38 withUUIDStringData:v33];

  v34 = 1;
  v12 = v39;
LABEL_21:

  return v34;
}

@end