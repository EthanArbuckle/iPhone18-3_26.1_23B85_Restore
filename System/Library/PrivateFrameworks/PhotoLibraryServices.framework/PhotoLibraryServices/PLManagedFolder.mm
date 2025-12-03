@interface PLManagedFolder
+ (BOOL)isProcessingOrderKeyCompliance;
+ (id)insertNewFolderWithTitle:(id)title kind:(int)kind intoLibrary:(id)library;
+ (id)sortDescriptorsForAlbumsInFolderWithSortKey:(unsigned int)key ascending:(BOOL)ascending;
+ (id)validKindsForPersistence;
+ (void)setIsProcessingOrderKeyCompliance:(BOOL)compliance;
- (BOOL)canPerformEditOperation:(unint64_t)operation;
- (BOOL)hasAtLeastOneAlbum;
- (BOOL)isEmpty;
- (BOOL)isValidForPersistence;
- (id)descriptionOfChildCollectionOrderValues;
- (id)listOfLastModifiedDateChangeProperties;
- (id)payloadForChangedKeys:(id)keys;
- (unint64_t)albumsCount;
- (unint64_t)approximateCount;
- (unint64_t)containersCount;
- (unint64_t)count;
- (void)addChildCollections:(id)collections;
- (void)addChildCollectionsObject:(id)object;
- (void)didSave;
- (void)enforceFixedOrderKeyComplianceWithOrderKeyManager:(id)manager;
- (void)insertChildCollections:(id)collections atIndexes:(id)indexes;
- (void)insertObject:(id)object inChildCollectionsAtIndex:(unint64_t)index;
- (void)moveChildCollectionsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)persistMetadataToFileSystemWithPathManager:(id)manager;
- (void)preheatAlbumsAtIndexes:(id)indexes forProperties:(id)properties relationships:(id)relationships;
- (void)prepareForDeletion;
- (void)removeChildCollections:(id)collections;
- (void)removeChildCollectionsAtIndexes:(id)indexes;
- (void)removeChildCollectionsObject:(id)object;
- (void)removeObjectFromChildCollectionsAtIndex:(unint64_t)index;
- (void)removePersistedFileSystemDataWithPathManager:(id)manager;
- (void)replaceChildCollectionsAtIndexes:(id)indexes withChildCollections:(id)collections;
- (void)replaceObjectInChildCollectionsAtIndex:(unint64_t)index withObject:(id)object;
- (void)willSave;
@end

@implementation PLManagedFolder

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLManagedFolder *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLFolderJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeChildCollections:(id)collections
{
  v19 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = collectionsCopy;
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

        v12 = [primitiveChildCollections indexOfObject:{*(*(&v14 + 1) + 8 * v11), v14}];
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
    primitiveChildCollections2 = [(PLManagedFolder *)self primitiveChildCollections];
    [primitiveChildCollections2 removeObjectsAtIndexes:v6];

    [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
  }
}

- (void)addChildCollections:(id)collections
{
  collectionsCopy = collections;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v5 = [(PLManagedFolder *)self primitiveValueForKey:@"childCollections"];
  v6 = [v5 count];
  v7 = [collectionsCopy count];

  v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v6, v7}];
  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v10 forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  array = [collectionsCopy array];

  [primitiveChildCollections insertObjects:array atIndexes:v10];
  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v10 forKey:@"childCollections"];
}

- (void)removeChildCollectionsObject:(id)object
{
  objectCopy = object;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  v6 = [primitiveChildCollections indexOfObject:objectCopy];

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v6];
    [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v8 forKey:@"childCollections"];
    primitiveChildCollections2 = [(PLManagedFolder *)self primitiveChildCollections];
    [primitiveChildCollections2 removeObjectAtIndex:v6];

    [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v8 forKey:@"childCollections"];
  }
}

- (void)addChildCollectionsObject:(id)object
{
  objectCopy = object;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  v5 = objc_alloc(MEMORY[0x1E696AC90]);
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  v8 = [v5 initWithIndex:{objc_msgSend(primitiveChildCollections, "count")}];

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v8 forKey:@"childCollections"];
  primitiveChildCollections2 = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections2 addObject:objectCopy];

  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v8 forKey:@"childCollections"];
}

- (void)moveChildCollectionsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  indexesCopy = indexes;
  [(PLManagedFolder *)self willAccessValueForKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  v9 = [primitiveChildCollections objectsAtIndexes:indexesCopy];

  [(PLManagedFolder *)self didAccessValueForKey:@"childCollections"];
  [(PLManagedFolder *)self removeChildCollectionsAtIndexes:indexesCopy];

  v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{index, objc_msgSend(v9, "count")}];
  [(PLManagedFolder *)self insertChildCollections:v9 atIndexes:v8];
}

- (void)replaceChildCollectionsAtIndexes:(id)indexes withChildCollections:(id)collections
{
  collectionsCopy = collections;
  indexesCopy = indexes;
  [(PLManagedFolder *)self willChange:3 valuesAtIndexes:indexesCopy forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections replaceObjectsAtIndexes:indexesCopy withObjects:collectionsCopy];

  [(PLManagedFolder *)self didChange:3 valuesAtIndexes:indexesCopy forKey:@"childCollections"];
}

- (void)removeChildCollectionsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  [(PLManagedFolder *)self willChange:3 valuesAtIndexes:indexesCopy forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections removeObjectsAtIndexes:indexesCopy];

  [(PLManagedFolder *)self didChange:3 valuesAtIndexes:indexesCopy forKey:@"childCollections"];
}

- (void)insertChildCollections:(id)collections atIndexes:(id)indexes
{
  indexesCopy = indexes;
  collectionsCopy = collections;
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:indexesCopy forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections insertObjects:collectionsCopy atIndexes:indexesCopy];

  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:indexesCopy forKey:@"childCollections"];
}

- (void)replaceObjectInChildCollectionsAtIndex:(unint64_t)index withObject:(id)object
{
  v6 = MEMORY[0x1E696AC90];
  objectCopy = object;
  v9 = [[v6 alloc] initWithIndex:index];
  [(PLManagedFolder *)self willChange:4 valuesAtIndexes:v9 forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections replaceObjectAtIndex:index withObject:objectCopy];

  [(PLManagedFolder *)self didChange:4 valuesAtIndexes:v9 forKey:@"childCollections"];
}

- (void)removeObjectFromChildCollectionsAtIndex:(unint64_t)index
{
  v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
  [(PLManagedFolder *)self willChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections removeObjectAtIndex:index];

  [(PLManagedFolder *)self didChange:3 valuesAtIndexes:v6 forKey:@"childCollections"];
}

- (void)insertObject:(id)object inChildCollectionsAtIndex:(unint64_t)index
{
  v6 = MEMORY[0x1E696AC90];
  objectCopy = object;
  v9 = [[v6 alloc] initWithIndex:index];
  [(PLManagedFolder *)self willChange:2 valuesAtIndexes:v9 forKey:@"childCollections"];
  primitiveChildCollections = [(PLManagedFolder *)self primitiveChildCollections];
  [primitiveChildCollections insertObject:objectCopy atIndex:index];

  [(PLManagedFolder *)self didChange:2 valuesAtIndexes:v9 forKey:@"childCollections"];
}

- (void)enforceFixedOrderKeyComplianceWithOrderKeyManager:(id)manager
{
  v51 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"orderKeyManager"}];
  }

  if ([managerCopy inWriteStashedLocationMode])
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

  objectID = [(PLManagedFolder *)self objectID];
  managedObjectContext = [(PLManagedFolder *)self managedObjectContext];
  v34 = objectID;
  v35 = managerCopy;
  v8 = [managerCopy objectIDsAndOrderValuesForRelationship:@"childCollections" onObjectWithID:objectID invalidateCache:1 inContext:managedObjectContext];

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
      objectID2 = [v15 objectID];
      v17 = [v9 indexOfObject:objectID2];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        managedObjectContext2 = PLBackendGetLog();
        if (os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
        {
          v19 = NSStringFromSelector(a2);
          *buf = 138412546;
          v47 = v19;
          v48 = 2112;
          v49 = objectID2;
          _os_log_impl(&dword_19BF1F000, managedObjectContext2, OS_LOG_TYPE_ERROR, "%@: unable to enforce order key compliance for %@, child object ID not found (ignoring)", buf, 0x16u);
        }

        goto LABEL_23;
      }

      v20 = v17;
      v21 = [v39 objectAtIndexedSubscript:v17];
      longLongValue = [v21 longLongValue];

      if (-[__objc2_class albumKindHasFixedOrder:](v13[52], "albumKindHasFixedOrder:", [v15 kindValue]))
      {
        v23 = -[__objc2_class priorityForAlbumKind:](v13[52], "priorityForAlbumKind:", [v15 kindValue]);
        if (longLongValue != v23)
        {
          v24 = v23;
          managedObjectContext2 = [(PLManagedFolder *)self managedObjectContext];
          v25 = v35;
          v26 = v24;
LABEL_22:
          [v25 stashFolderAlbumsLocationValue:v26 forAlbumWithID:objectID2 inFolderWithID:v34 atIndex:v20 usingContext:managedObjectContext2];
          v13 = off_1E7560000;
LABEL_23:

          goto LABEL_25;
        }
      }

      else if (longLongValue < v38)
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
        managedObjectContext2 = [(PLManagedFolder *)self managedObjectContext];
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

  managerCopy = v35;
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

- (void)removePersistedFileSystemDataWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedFolderMetadata alloc] initWithPLManagedFolder:self pathManager:v8];
    [(PLPersistedFolderMetadata *)v6 removePersistedData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedFolderMetadata alloc] initWithPLManagedFolder:self pathManager:v8];
    [(PLPersistedFolderMetadata *)v6 writePersistedData];
  }
}

- (BOOL)isValidForPersistence
{
  validKindsForPersistence = [objc_opt_class() validKindsForPersistence];
  kind = [(PLManagedFolder *)self kind];
  v5 = [validKindsForPersistence containsObject:kind];

  return v5;
}

- (void)preheatAlbumsAtIndexes:(id)indexes forProperties:(id)properties relationships:(id)relationships
{
  indexesCopy = indexes;
  propertiesCopy = properties;
  relationshipsCopy = relationships;
  if ([(PLManagedFolder *)self hasFaultForRelationshipNamed:@"childCollections"])
  {
    childCollections = [(PLManagedFolder *)self childCollections];
    array = [childCollections array];

    if (indexesCopy)
    {
      v13 = [array objectsAtIndexes:indexesCopy];

      array = v13;
    }

    v14 = objc_alloc(MEMORY[0x1E695D5E0]);
    v15 = +[PLGenericAlbum entityName];
    v16 = [v14 initWithEntityName:v15];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", array];
    [v16 setPredicate:v17];

    [v16 setIncludesPropertyValues:1];
    [v16 setReturnsObjectsAsFaults:0];
    if (propertiesCopy)
    {
      [v16 setPropertiesToFetch:propertiesCopy];
    }

    if (relationshipsCopy)
    {
      [v16 setRelationshipKeyPathsForPrefetching:relationshipsCopy];
    }

    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    managedObjectContext = [photoLibrary managedObjectContext];

    v23 = 0;
    v20 = [managedObjectContext executeFetchRequest:v16 error:&v23];
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
  childCollections = [(PLManagedFolder *)self childCollections];
  v3 = [childCollections count] != 0;

  return v3;
}

- (unint64_t)albumsCount
{
  childCollections = [(PLManagedFolder *)self childCollections];
  v3 = [childCollections count];

  return v3;
}

- (unint64_t)containersCount
{
  childCollections = [(PLManagedFolder *)self childCollections];
  v3 = [childCollections count];

  return v3;
}

- (BOOL)canPerformEditOperation:(unint64_t)operation
{
  kindValue = [(PLGenericAlbum *)self kindValue];
  v5 = operation == 16;
  v6 = (operation & 0x61) == 0;
  v7 = operation ^ 1;
  if (kindValue != 4000)
  {
    v7 = 0;
  }

  if (kindValue != 3999)
  {
    v6 = v7;
  }

  if (kindValue != 3998)
  {
    return v6;
  }

  return v5;
}

- (BOOL)isEmpty
{
  childCollections = [(PLManagedFolder *)self childCollections];
  v3 = [childCollections count] == 0;

  return v3;
}

- (unint64_t)count
{
  childCollections = [(PLManagedFolder *)self childCollections];
  v3 = [childCollections count];

  return v3;
}

- (unint64_t)approximateCount
{
  childCollections = [(PLManagedFolder *)self childCollections];
  v3 = [childCollections count];

  return v3;
}

- (id)listOfLastModifiedDateChangeProperties
{
  v2 = MEMORY[0x1E695DFA8];
  v6.receiver = self;
  v6.super_class = PLManagedFolder;
  listOfLastModifiedDateChangeProperties = [(PLGenericAlbum *)&v6 listOfLastModifiedDateChangeProperties];
  v4 = [v2 setWithSet:listOfLastModifiedDateChangeProperties];

  [v4 addObject:@"childCollections"];

  return v4;
}

- (void)prepareForDeletion
{
  v8.receiver = self;
  v8.super_class = PLManagedFolder;
  [(PLManagedFolder *)&v8 prepareForDeletion];
  managedObjectContext = [(PLManagedFolder *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    if ([(PLGenericAlbum *)self kindValue]== 4000)
    {
      [managedObjectContext recordCloudDeletionForObject:self];
    }

    uuid = [(PLManagedFolder *)self uuid];
    if (!uuid || ![(PLManagedFolder *)self isValidForPersistence]&& ![PLGenericAlbum is1WaySyncKind:[(PLGenericAlbum *)self kindValue]])
    {
      goto LABEL_10;
    }

    managedObjectContext2 = [(PLManagedFolder *)self managedObjectContext];
    isReadOnly = [managedObjectContext2 isReadOnly];

    if ((isReadOnly & 1) == 0)
    {
      uuid = [(PLGenericAlbum *)self photoLibrary];
      pathManager = [uuid pathManager];
      [(PLManagedFolder *)self removePersistedFileSystemDataWithPathManager:pathManager];

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
    uuid = [(PLManagedFolder *)self uuid];
    if (uuid && ([(PLManagedFolder *)self isDeleted]& 1) == 0)
    {
      isValidForPersistence = [(PLManagedFolder *)self isValidForPersistence];

      if (!isValidForPersistence)
      {
        goto LABEL_5;
      }

      uuid = [(PLManagedFolder *)self managedObjectContext];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedFolder.m" lineNumber:115 description:@"Must be PLManagedObjectContext"];
      }

      if (([uuid isDatabaseCreationContext] & 1) == 0)
      {
        photoLibrary = [(PLGenericAlbum *)self photoLibrary];
        pathManager = [photoLibrary pathManager];
        [(PLManagedFolder *)self persistMetadataToFileSystemWithPathManager:pathManager];
      }
    }
  }

LABEL_5:
  if ([(PLManagedFolder *)self needsFixedOrderKeysComplianceUpdate]&& ([(PLManagedFolder *)self isDeleted]& 1) == 0)
  {
    [(PLManagedFolder *)self setNeedsFixedOrderKeysComplianceUpdate:0];
    photoLibrary2 = [(PLGenericAlbum *)self photoLibrary];
    libraryServicesManager = [photoLibrary2 libraryServicesManager];
    databaseContext = [libraryServicesManager databaseContext];

    v8 = [PLRelationshipOrderKeyManager alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __26__PLManagedFolder_didSave__block_invoke;
    v15[3] = &unk_1E7574C88;
    v16 = databaseContext;
    v9 = databaseContext;
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
  changedValues = [(PLManagedFolder *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"childCollections"];

  [(PLManagedFolder *)self setNeedsPersistenceUpdate:0];
  managedObjectContext = [(PLManagedFolder *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if ([(PLManagedFolder *)self isValidForPersistence])
  {
    if (([(PLManagedFolder *)self isInserted]& 1) == 0 && !v4)
    {
      v6 = [changedValues objectForKeyedSubscript:@"title"];
      if (v6 || ([changedValues objectForKeyedSubscript:@"trashedState"], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"isPinned"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"isPrototype"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v8 = [changedValues objectForKeyedSubscript:@"lastModifiedDate"];

        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }

    [(PLManagedFolder *)self setNeedsPersistenceUpdate:1];
  }

LABEL_11:
  if ([(PLGenericAlbum *)self kindValue]== 3999 && managedObjectContext)
  {
    v7 = [PLManagedAlbumList albumListInManagedObjectContext:managedObjectContext];
    [PLManagedAlbumList pushChangesFromAlbumContainer:self toAlbumContainer:v7];
    if (v4 && ([managedObjectContext isInitializingSingletons] & 1) == 0 && (objc_msgSend(objc_opt_class(), "isProcessingOrderKeyCompliance") & 1) == 0)
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

+ (id)insertNewFolderWithTitle:(id)title kind:(int)kind intoLibrary:(id)library
{
  v5 = *&kind;
  libraryCopy = library;
  titleCopy = title;
  managedObjectContext = [libraryCopy managedObjectContext];
  v10 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:managedObjectContext];

  [v10 setKindValue:v5];
  [v10 setTitle:titleCopy];

  v11 = [PLManagedAlbumList albumListInPhotoLibrary:libraryCopy];

  albums = [v11 albums];
  [albums addObject:v10];

  return v10;
}

+ (id)sortDescriptorsForAlbumsInFolderWithSortKey:(unsigned int)key ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v18[1] = *MEMORY[0x1E69E9840];
  if (key > 3)
  {
    if (key <= 5)
    {
      if (key == 4)
      {
        v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"trashedDate" ascending:ascending];
        v17 = v6;
        v7 = MEMORY[0x1E695DEC8];
        v8 = &v17;
        goto LABEL_17;
      }
    }

    else if (key != 101)
    {
      if (key != 100)
      {
        if (key != 6)
        {
          goto LABEL_19;
        }

        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:ascending selector:sel_localizedCaseInsensitiveCompare_];
    v16 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v16;
    goto LABEL_17;
  }

  if (key > 1)
  {
    if (key == 2)
    {
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastModifiedDate" ascending:ascending];
      v15[0] = v6;
      v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:ascendingCopy selector:sel_localizedCaseInsensitiveCompare_];
      v15[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!key)
  {
LABEL_12:
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"parentFolder" ascending:ascending];
    v14 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v14;
    goto LABEL_17;
  }

  if (key == 1)
  {
LABEL_10:
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:ascending];
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
    v13[1] = key;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Unexpected folder sort key value: %d", v13, 8u);
  }

  v10 = 0;
LABEL_22:

  return v10;
}

+ (void)setIsProcessingOrderKeyCompliance:(BOOL)compliance
{
  complianceCopy = compliance;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:complianceCopy];
  [threadDictionary setObject:v5 forKey:@"PLManagedFolderIsProcessingOrderKeyCompliance"];
}

+ (BOOL)isProcessingOrderKeyCompliance
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKey:@"PLManagedFolderIsProcessingOrderKeyCompliance"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)descriptionOfChildCollectionOrderValues
{
  v31 = *MEMORY[0x1E69E9840];
  managedObjectContext = [(PLManagedFolder *)self managedObjectContext];
  string = [MEMORY[0x1E696AD60] string];
  v5 = objc_autoreleasePoolPush();
  objectID = [(PLManagedFolder *)self objectID];
  v7 = [managedObjectContext _orderKeysForRelationshipWithName__:@"childCollections" onObjectWithID:objectID];

  if ([v7 count] == 2)
  {
    v24 = v5;
    v25 = managedObjectContext;
    v8 = [v7 objectAtIndexedSubscript:1];
    objectEnumerator = [v8 objectEnumerator];

    objectID2 = [(PLManagedFolder *)self objectID];
    uRIRepresentation = [objectID2 URIRepresentation];
    v12 = [v7 objectAtIndexedSubscript:0];
    [string appendFormat:@"FOLDER %@ [%d]\n", uRIRepresentation, objc_msgSend(v12, "count")];

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
          nextObject = [objectEnumerator nextObject];
          uRIRepresentation2 = [v18 URIRepresentation];
          [string appendFormat:@"%@ -> %@\n", nextObject, uRIRepresentation2];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v5 = v24;
    managedObjectContext = v25;
  }

  else
  {
    objectID3 = [(PLManagedFolder *)self objectID];
    uRIRepresentation3 = [objectID3 URIRepresentation];
    [string appendFormat:@"FOLDER %@ [0 childCollections]\n", uRIRepresentation3];
  }

  objc_autoreleasePoolPop(v5);

  return string;
}

@end