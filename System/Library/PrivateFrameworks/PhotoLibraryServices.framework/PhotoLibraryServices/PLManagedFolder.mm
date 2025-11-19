@interface PLManagedFolder
+ (BOOL)isProcessingOrderKeyCompliance;
+ (id)insertNewFolderWithTitle:(id)a3 kind:(int)a4 intoLibrary:(id)a5;
+ (id)sortDescriptorsForAlbumsInFolderWithSortKey:(unsigned int)a3 ascending:(BOOL)a4;
+ (id)validKindsForPersistence;
+ (void)setIsProcessingOrderKeyCompliance:(BOOL)a3;
- (BOOL)canPerformEditOperation:(unint64_t)a3;
- (BOOL)hasAtLeastOneAlbum;
- (BOOL)isEmpty;
- (BOOL)isValidForPersistence;
- (id)descriptionOfChildCollectionOrderValues;
- (id)listOfLastModifiedDateChangeProperties;
- (id)payloadForChangedKeys:(id)a3;
- (unint64_t)albumsCount;
- (unint64_t)approximateCount;
- (unint64_t)containersCount;
- (unint64_t)count;
- (void)addChildCollections:(id)a3;
- (void)addChildCollectionsObject:(id)a3;
- (void)didSave;
- (void)enforceFixedOrderKeyComplianceWithOrderKeyManager:(id)a3;
- (void)insertChildCollections:(id)a3 atIndexes:(id)a4;
- (void)insertObject:(id)a3 inChildCollectionsAtIndex:(unint64_t)a4;
- (void)moveChildCollectionsAtIndexes:(id)a3 toIndex:(unint64_t)a4;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)preheatAlbumsAtIndexes:(id)a3 forProperties:(id)a4 relationships:(id)a5;
- (void)prepareForDeletion;
- (void)removeChildCollections:(id)a3;
- (void)removeChildCollectionsAtIndexes:(id)a3;
- (void)removeChildCollectionsObject:(id)a3;
- (void)removeObjectFromChildCollectionsAtIndex:(unint64_t)a3;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
- (void)replaceChildCollectionsAtIndexes:(id)a3 withChildCollections:(id)a4;
- (void)replaceObjectInChildCollectionsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)willSave;
@end

@implementation PLManagedFolder

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLManagedFolder *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLFolderJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeChildCollections:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v5 = [(PLManagedFolder *)self primitiveChildCollections];
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 indexOfObject:{*(*(&v14 + 1) + 8 * v11), v14}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 addIndex:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  if ([v6 count])
  {
    [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
    v13 = [(PLManagedFolder *)self primitiveChildCollections];
    [v13 removeObjectsAtIndexes:v6];

    [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
  }
}

- (void)addChildCollections:(id)a3
{
  v4 = a3;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v5 = [(PLManagedFolder *)self primitiveValueForKey:@"childCollections"];
  v6 = [v5 count];
  v7 = [v4 count];

  v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v6, v7}];
  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v10 forKey:@"childCollections"];
  v8 = [(PLManagedFolder *)self primitiveChildCollections];
  v9 = [v4 array];

  [v8 insertObjects:v9 atIndexes:v10];
  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v10 forKey:@"childCollections"];
}

- (void)removeChildCollectionsObject:(id)a3
{
  v4 = a3;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v5 = [(PLManagedFolder *)self primitiveChildCollections];
  v6 = [v5 indexOfObject:v4];

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v6];
    [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v8 forKey:@"childCollections"];
    v7 = [(PLManagedFolder *)self primitiveChildCollections];
    [v7 removeObjectAtIndex:v6];

    [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v8 forKey:@"childCollections"];
  }
}

- (void)addChildCollectionsObject:(id)a3
{
  v4 = a3;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v5 = objc_alloc(MEMORY[0x1E696AC90]);
  v6 = [(PLManagedFolder *)self primitiveChildCollections];
  v8 = [v5 initWithIndex:{objc_msgSend(v6, "count")}];

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v8 forKey:@"childCollections"];
  v7 = [(PLManagedFolder *)self primitiveChildCollections];
  [v7 addObject:v4];

  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v8 forKey:@"childCollections"];
}

- (void)moveChildCollectionsAtIndexes:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v7 = [(PLManagedFolder *)self primitiveChildCollections];
  v9 = [v7 objectsAtIndexes:v6];

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  [(PLManagedFolder *)self removeChildCollectionsAtIndexes:v6];

  v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a4, objc_msgSend(v9, "count")}];
  [(PLManagedFolder *)self insertChildCollections:v9 atIndexes:v8];
}

- (void)replaceChildCollectionsAtIndexes:(id)a3 withChildCollections:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v8 forKey:@"childCollections"];
  v7 = [(PLManagedFolder *)self primitiveChildCollections];
  [v7 replaceObjectsAtIndexes:v8 withObjects:v6];

  [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v8 forKey:@"childCollections"];
}

- (void)removeChildCollectionsAtIndexes:(id)a3
{
  v5 = a3;
  [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v5 forKey:@"childCollections"];
  v4 = [(PLManagedFolder *)self primitiveChildCollections];
  [v4 removeObjectsAtIndexes:v5];

  [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v5 forKey:@"childCollections"];
}

- (void)insertChildCollections:(id)a3 atIndexes:(id)a4
{
  v8 = a4;
  v6 = a3;
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v8 forKey:@"childCollections"];
  v7 = [(PLManagedFolder *)self primitiveChildCollections];
  [v7 insertObjects:v6 atIndexes:v8];

  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v8 forKey:@"childCollections"];
}

- (void)replaceObjectInChildCollectionsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a4;
  v9 = [[v6 alloc] initWithIndex:a3];
  [(PLManagedFolder *)self willChange:4 valuesAtIndexes:v9 forKey:@"childCollections"];
  v8 = [(PLManagedFolder *)self primitiveChildCollections];
  [v8 replaceObjectAtIndex:a3 withObject:v7];

  [(PLManagedFolder *)self didChange:4 valuesAtIndexes:v9 forKey:@"childCollections"];
}

- (void)removeObjectFromChildCollectionsAtIndex:(unint64_t)a3
{
  v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
  [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
  v5 = [(PLManagedFolder *)self primitiveChildCollections];
  [v5 removeObjectAtIndex:a3];

  [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
}

- (void)insertObject:(id)a3 inChildCollectionsAtIndex:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a3;
  v9 = [[v6 alloc] initWithIndex:a4];
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v9 forKey:@"childCollections"];
  v8 = [(PLManagedFolder *)self primitiveChildCollections];
  [v8 insertObject:v7 atIndex:a4];

  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v9 forKey:@"childCollections"];
}

- (void)enforceFixedOrderKeyComplianceWithOrderKeyManager:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"orderKeyManager"}];
  }

  if ([v3 inWriteStashedLocationMode])
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(a2);
      *buf = 138412290;
      v47 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "%@: Skipping enforced fixed order", buf, 0xCu);
    }

    goto LABEL_34;
  }

  v6 = [(PLManagedFolder *)self objectID];
  v7 = [(PLManagedFolder *)self managedObjectContext];
  v34 = v6;
  v35 = v3;
  v8 = [v3 objectIDsAndOrderValuesForRelationship:@"childCollections" onObjectWithID:v6 invalidateCache:1 inContext:v7];

  v9 = [v8 objectAtIndexedSubscript:0];
  v33 = v8;
  v39 = [v8 objectAtIndexedSubscript:1];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(PLManagedFolder *)self childCollections];
  v10 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v12 = *v43;
  v38 = 1024;
  v13 = off_1E7560000;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v42 + 1) + 8 * i);
      v16 = [v15 objectID];
      v17 = [v9 indexOfObject:v16];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = PLBackendGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = NSStringFromSelector(a2);
          *buf = 138412546;
          v47 = v19;
          v48 = 2112;
          v49 = v16;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "%@: unable to enforce order key compliance for %@, child object ID not found (ignoring)", buf, 0x16u);
        }

        goto LABEL_23;
      }

      v20 = v17;
      v21 = [v39 objectAtIndexedSubscript:v17];
      v22 = [v21 longLongValue];

      if (-[__objc2_class albumKindHasFixedOrder:](v13[52], "albumKindHasFixedOrder:", [v15 kindValue]))
      {
        v23 = -[__objc2_class priorityForAlbumKind:](v13[52], "priorityForAlbumKind:", [v15 kindValue]);
        if (v22 != v23)
        {
          v24 = v23;
          v18 = [(PLManagedFolder *)self managedObjectContext];
          v25 = v35;
          v26 = v24;
LABEL_22:
          [v25 stashFolderAlbumsLocationValue:v26 forAlbumWithID:v16 inFolderWithID:v34 atIndex:v20 usingContext:v18];
          v13 = off_1E7560000;
LABEL_23:

          goto LABEL_25;
        }
      }

      else if (v22 < v38)
      {
        if (v38 == 1024)
        {
          v27 = 0x100000;
        }

        else
        {
          v27 = v38;
        }

        v38 = v27 + 1024;
        v18 = [(PLManagedFolder *)self managedObjectContext];
        v25 = v35;
        v26 = v27;
        goto LABEL_22;
      }

      v13 = off_1E7560000;
LABEL_25:
    }

    v11 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  }

  while (v11);
LABEL_27:

  v3 = v35;
  if ([v35 hasStashedLocationValues])
  {
    v41 = 0;
    v28 = [v35 writeStashedLocationValuesInContext:0 error:&v41];
    v29 = v41;
    if ((v28 & 1) == 0)
    {
      v30 = PLBackendGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        *buf = 138412546;
        v47 = v31;
        v48 = 2112;
        v49 = v29;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "%@: Failed to write stashed location values for modified non fixed album order. Error: %@", buf, 0x16u);
      }
    }
  }

  v4 = v34;
LABEL_34:
}

- (void)removePersistedFileSystemDataWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedFolderMetadata alloc] initWithPLManagedFolder:self pathManager:v8];
    [(PLPersistedFolderMetadata *)v6 removePersistedData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedFolderMetadata alloc] initWithPLManagedFolder:self pathManager:v8];
    [(PLPersistedFolderMetadata *)v6 writePersistedData];
  }
}

- (BOOL)isValidForPersistence
{
  v3 = [objc_opt_class() validKindsForPersistence];
  v4 = [(PLManagedFolder *)self kind];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (void)preheatAlbumsAtIndexes:(id)a3 forProperties:(id)a4 relationships:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PLManagedFolder *)self hasFaultForRelationshipNamed:@"childCollections"])
  {
    v11 = [(PLManagedFolder *)self childCollections];
    v12 = [v11 array];

    if (v8)
    {
      v13 = [v12 objectsAtIndexes:v8];

      v12 = v13;
    }

    v14 = objc_alloc(MEMORY[0x1E695D5E0]);
    v15 = +[PLGenericAlbum entityName];
    v16 = [v14 initWithEntityName:v15];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v12];
    [v16 setPredicate:v17];

    [v16 setIncludesPropertyValues:1];
    [v16 setReturnsObjectsAsFaults:0];
    if (v9)
    {
      [v16 setPropertiesToFetch:v9];
    }

    if (v10)
    {
      [v16 setRelationshipKeyPathsForPrefetching:v10];
    }

    v18 = [(PLGenericAlbum *)self photoLibrary];
    v19 = [v18 managedObjectContext];

    v23 = 0;
    v20 = [v19 executeFetchRequest:v16 error:&v23];
    v21 = v23;
    v22 = v21;
    if (!v20)
    {
      NSLog(&cfstr_ErrorFetchingA_1.isa, self, v21);
    }
  }
}

- (BOOL)hasAtLeastOneAlbum
{
  v2 = [(PLManagedFolder *)self childCollections];
  v3 = [v2 count] != 0;

  return v3;
}

- (unint64_t)albumsCount
{
  v2 = [(PLManagedFolder *)self childCollections];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)containersCount
{
  v2 = [(PLManagedFolder *)self childCollections];
  v3 = [v2 count];

  return v3;
}

- (BOOL)canPerformEditOperation:(unint64_t)a3
{
  v4 = [(PLGenericAlbum *)self kindValue];
  v5 = a3 == 16;
  v6 = (a3 & 0x61) == 0;
  v7 = a3 ^ 1;
  if (v4 != 4000)
  {
    v7 = 0;
  }

  if (v4 != 3999)
  {
    v6 = v7;
  }

  if (v4 != 3998)
  {
    return v6;
  }

  return v5;
}

- (BOOL)isEmpty
{
  v2 = [(PLManagedFolder *)self childCollections];
  v3 = [v2 count] == 0;

  return v3;
}

- (unint64_t)count
{
  v2 = [(PLManagedFolder *)self childCollections];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)approximateCount
{
  v2 = [(PLManagedFolder *)self childCollections];
  v3 = [v2 count];

  return v3;
}

- (id)listOfLastModifiedDateChangeProperties
{
  v2 = MEMORY[0x1E695DFA8];
  v6.receiver = self;
  v6.super_class = PLManagedFolder;
  v3 = [(PLGenericAlbum *)&v6 listOfLastModifiedDateChangeProperties];
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"childCollections"];

  return v4;
}

- (void)prepareForDeletion
{
  v8.receiver = self;
  v8.super_class = PLManagedFolder;
  [(PLManagedFolder *)&v8 prepareForDeletion];
  v3 = [(PLManagedFolder *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    if ([(PLGenericAlbum *)self kindValue]== 4000)
    {
      [v3 recordCloudDeletionForObject:self];
    }

    v4 = [(PLManagedFolder *)self uuid];
    if (!v4 || ![(PLManagedFolder *)self isValidForPersistence]&& ![PLGenericAlbum is1WaySyncKind:[(PLGenericAlbum *)self kindValue]])
    {
      goto LABEL_10;
    }

    v5 = [(PLManagedFolder *)self managedObjectContext];
    v6 = [v5 isReadOnly];

    if ((v6 & 1) == 0)
    {
      v4 = [(PLGenericAlbum *)self photoLibrary];
      v7 = [v4 pathManager];
      [(PLManagedFolder *)self removePersistedFileSystemDataWithPathManager:v7];

LABEL_10:
    }
  }
}

- (void)didSave
{
  v17.receiver = self;
  v17.super_class = PLManagedFolder;
  [(PLGenericAlbum *)&v17 didSave];
  if ([(PLManagedFolder *)self needsPersistenceUpdate])
  {
    v4 = [(PLManagedFolder *)self uuid];
    if (v4 && ([(PLManagedFolder *)self isDeleted]& 1) == 0)
    {
      v11 = [(PLManagedFolder *)self isValidForPersistence];

      if (!v11)
      {
        goto LABEL_5;
      }

      v4 = [(PLManagedFolder *)self managedObjectContext];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:115 description:@"Must be PLManagedObjectContext"];
      }

      if (([v4 isDatabaseCreationContext] & 1) == 0)
      {
        v12 = [(PLGenericAlbum *)self photoLibrary];
        v13 = [v12 pathManager];
        [(PLManagedFolder *)self persistMetadataToFileSystemWithPathManager:v13];
      }
    }
  }

LABEL_5:
  if ([(PLManagedFolder *)self needsFixedOrderKeysComplianceUpdate]&& ([(PLManagedFolder *)self isDeleted]& 1) == 0)
  {
    [(PLManagedFolder *)self setNeedsFixedOrderKeysComplianceUpdate:0];
    v5 = [(PLGenericAlbum *)self photoLibrary];
    v6 = [v5 libraryServicesManager];
    v7 = [v6 databaseContext];

    v8 = [PLRelationshipOrderKeyManager alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __26__PLManagedFolder_didSave__block_invoke;
    v15[3] = &unk_1E7574C88;
    v16 = v7;
    v9 = v7;
    v10 = [(PLRelationshipOrderKeyManager *)v8 initWithGenerateContextBlock:v15];
    [objc_opt_class() setIsProcessingOrderKeyCompliance:1];
    [(PLManagedFolder *)self enforceFixedOrderKeyComplianceWithOrderKeyManager:v10];
    [objc_opt_class() setIsProcessingOrderKeyCompliance:0];
  }

  [(PLManagedFolder *)self setNeedsPersistenceUpdate:0];
}

id __26__PLManagedFolder_didSave__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[PLManagedFolder didSave]_block_invoke";
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Generating PLRelationshipOrderKeyManager context on-demand for: %s...", &v7, 0xCu);
  }

  v5 = [objc_msgSend(*(a1 + 32) newShortLivedLibraryForOrderKeyManagerWithName:{a2), "managedObjectContext"}];

  return v5;
}

- (void)willSave
{
  v9.receiver = self;
  v9.super_class = PLManagedFolder;
  [(PLGenericAlbum *)&v9 willSave];
  v3 = [(PLManagedFolder *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"childCollections"];

  [(PLManagedFolder *)self setNeedsPersistenceUpdate:0];
  v5 = [(PLManagedFolder *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if ([(PLManagedFolder *)self isValidForPersistence])
  {
    if (([(PLManagedFolder *)self isInserted]& 1) == 0 && !v4)
    {
      v6 = [v3 objectForKeyedSubscript:@"title"];
      if (v6 || ([v3 objectForKeyedSubscript:@"trashedState"], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "objectForKeyedSubscript:", @"isPinned"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "objectForKeyedSubscript:", @"isPrototype"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v8 = [v3 objectForKeyedSubscript:@"lastModifiedDate"];

        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }

    [(PLManagedFolder *)self setNeedsPersistenceUpdate:1];
  }

LABEL_11:
  if ([(PLGenericAlbum *)self kindValue]== 3999 && v5)
  {
    v7 = [PLManagedAlbumList albumListInManagedObjectContext:v5];
    [PLManagedAlbumList pushChangesFromAlbumContainer:self toAlbumContainer:v7];
    if (v4 && ([v5 isInitializingSingletons] & 1) == 0 && (objc_msgSend(objc_opt_class(), "isProcessingOrderKeyCompliance") & 1) == 0)
    {
      [(PLManagedFolder *)self setNeedsFixedOrderKeysComplianceUpdate:1];
    }
  }

LABEL_18:
}

+ (id)validKindsForPersistence
{
  pl_dispatch_once();
  v2 = validKindsForPersistence_pl_once_object_17;

  return v2;
}

void __43__PLManagedFolder_validKindsForPersistence__block_invoke()
{
  v0 = [&unk_1F0FC0090 copy];
  v1 = validKindsForPersistence_pl_once_object_17;
  validKindsForPersistence_pl_once_object_17 = v0;
}

+ (id)insertNewFolderWithTitle:(id)a3 kind:(int)a4 intoLibrary:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = a3;
  v9 = [v7 managedObjectContext];
  v10 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:v9];

  [v10 setKindValue:v5];
  [v10 setTitle:v8];

  v11 = [PLManagedAlbumList albumListInPhotoLibrary:v7];

  v12 = [v11 albums];
  [v12 addObject:v10];

  return v10;
}

+ (id)sortDescriptorsForAlbumsInFolderWithSortKey:(unsigned int)a3 ascending:(BOOL)a4
{
  v4 = a4;
  v18[1] = *MEMORY[0x1E69E9840];
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"trashedDate" ascending:a4];
        v17 = v6;
        v7 = MEMORY[0x1E695DEC8];
        v8 = &v17;
        goto LABEL_17;
      }
    }

    else if (a3 != 101)
    {
      if (a3 != 100)
      {
        if (a3 != 6)
        {
          goto LABEL_19;
        }

        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:a4 selector:sel_localizedCaseInsensitiveCompare_];
    v16 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v16;
    goto LABEL_17;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastModifiedDate" ascending:a4];
      v15[0] = v6;
      v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:v4 selector:sel_localizedCaseInsensitiveCompare_];
      v15[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"parentFolder" ascending:a4];
    v14 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v14;
    goto LABEL_17;
  }

  if (a3 == 1)
  {
LABEL_10:
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:a4];
    v18[0] = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v18;
LABEL_17:
    v10 = [v7 arrayWithObjects:v8 count:1];
LABEL_18:

    if (v10)
    {
      goto LABEL_22;
    }
  }

LABEL_19:
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = a3;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Unexpected folder sort key value: %d", v13, 8u);
  }

  v10 = 0;
LABEL_22:

  return v10;
}

+ (void)setIsProcessingOrderKeyCompliance:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v4 threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v6 setObject:v5 forKey:@"PLManagedFolderIsProcessingOrderKeyCompliance"];
}

+ (BOOL)isProcessingOrderKeyCompliance
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"PLManagedFolderIsProcessingOrderKeyCompliance"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)descriptionOfChildCollectionOrderValues
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PLManagedFolder *)self managedObjectContext];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLManagedFolder *)self objectID];
  v7 = [v3 _orderKeysForRelationshipWithName__:@"childCollections" onObjectWithID:v6];

  if ([v7 count] == 2)
  {
    v24 = v5;
    v25 = v3;
    v8 = [v7 objectAtIndexedSubscript:1];
    v9 = [v8 objectEnumerator];

    v10 = [(PLManagedFolder *)self objectID];
    v11 = [v10 URIRepresentation];
    v12 = [v7 objectAtIndexedSubscript:0];
    [v4 appendFormat:@"FOLDER %@ [%d]\n", v11, objc_msgSend(v12, "count")];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v7 objectAtIndexedSubscript:0];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v9 nextObject];
          v20 = [v18 URIRepresentation];
          [v4 appendFormat:@"%@ -> %@\n", v19, v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v5 = v24;
    v3 = v25;
  }

  else
  {
    v21 = [(PLManagedFolder *)self objectID];
    v22 = [v21 URIRepresentation];
    [v4 appendFormat:@"FOLDER %@ [0 childCollections]\n", v22];
  }

  objc_autoreleasePoolPop(v5);

  return v4;
}

@end