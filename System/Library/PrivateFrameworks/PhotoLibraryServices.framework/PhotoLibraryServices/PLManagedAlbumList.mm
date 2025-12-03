@interface PLManagedAlbumList
+ (BOOL)_albumOrderMatchesFrom:(id)from inDestination:(id)destination;
+ (BOOL)albumKindHasFixedOrder:(int)order;
+ (BOOL)isValidPathForPersistence:(id)persistence;
+ (BOOL)restoreAlbumListFromPersistedDataAtPath:(id)path library:(id)library;
+ (id)_albumListWithType:(signed __int16)type inManagedObjectContext:(id)context;
+ (id)_singletonListWithType:(signed __int16)type library:(id)library;
+ (id)_typeDescriptionForAlbumListType:(signed __int16)type;
+ (id)_validAlbumsFromSource:(id)source destination:(id)destination;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (unint64_t)priorityForAlbumKind:(int)kind;
+ (void)addSingletonObjectsToContext:(id)context;
+ (void)initialize;
+ (void)persistAlbumListUUIDs:(id)ds type:(signed __int16)type pathManager:(id)manager allowsOverwrite:(BOOL)overwrite;
+ (void)pushChangesFromAlbumContainer:(id)container toAlbumContainer:(id)albumContainer;
- (BOOL)albumHasFixedOrder:(id)order;
- (BOOL)hasAtLeastOneAlbum;
- (BOOL)hasDerivedIndexMappers;
- (BOOL)needsReordering;
- (NSMutableOrderedSet)albums;
- (NSString)_typeDescription;
- (id)_albumsCountFetchRequest;
- (id)albumsSortingComparator;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (signed)albumListType;
- (unint64_t)albumsCount;
- (unint64_t)unreadAlbumsCount;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)dealloc;
- (void)didSave;
- (void)enumerateDerivedAlbumLists:(id)lists;
- (void)insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:(id)album;
- (void)preheatAlbumsAtIndexes:(id)indexes forProperties:(id)properties relationships:(id)relationships;
- (void)registerDerivedAlbumList:(id)list;
- (void)registerForChanges;
- (void)setAlbumListType:(signed __int16)type;
- (void)setNeedsReordering;
- (void)unregisterAllDerivedAlbums;
- (void)unregisterForChanges;
- (void)updateAlbumsOrderIfNeeded;
- (void)willSave;
- (void)willTurnIntoFault;
@end

@implementation PLManagedAlbumList

- (void)didSave
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PLManagedAlbumList;
  [(PLManagedObject *)&v22 didSave];
  managedObjectContext = [(PLManagedAlbumList *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext isDatabaseCreationContext] & 1) == 0 && PLIsAssetsd())
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];

    if ([PLManagedAlbumList isValidTypeForPersistence:[(PLManagedAlbumList *)self albumListType]]&& ([(PLManagedAlbumList *)self hasFaultForRelationshipNamed:@"albums"]& 1) == 0)
    {
      modelMigrator = [libraryServicesManager modelMigrator];
      if ([modelMigrator isPostProcessingLightweightMigration])
      {

LABEL_9:
        array = [MEMORY[0x1E695DF70] array];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        albums = [(PLManagedAlbumList *)self albums];
        v11 = [albums countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(albums);
              }

              uuid = [*(*(&v18 + 1) + 8 * v14) uuid];
              if (uuid)
              {
                [array addObject:uuid];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [albums countByEnumeratingWithState:&v18 objects:v23 count:16];
          }

          while (v12);
        }

        albumListType = [(PLManagedAlbumList *)self albumListType];
        pathManager = [libraryServicesManager pathManager];
        [PLManagedAlbumList persistAlbumListUUIDs:array type:albumListType pathManager:pathManager allowsOverwrite:1];

        goto LABEL_19;
      }

      managedObjectContext2 = [(PLManagedAlbumList *)self managedObjectContext];
      isInitializingSingletons = [managedObjectContext2 isInitializingSingletons];

      if ((isInitializingSingletons & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_19:
  }
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLManagedAlbumList;
  [(PLManagedObject *)&v10 willSave];
  managedObjectContext = [(PLManagedAlbumList *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext isDatabaseCreationContext] & 1) == 0)
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    if (![(PLManagedAlbumList *)self albumListType])
    {
      changedValues = [(PLManagedAlbumList *)self changedValues];
      v6 = [changedValues objectForKeyedSubscript:@"albums"];

      if (v6)
      {
        if (photoLibrary)
        {
          v7 = [(PLGenericAlbum *)PLManagedFolder rootFolderInLibrary:photoLibrary];
          updatedObjects = [managedObjectContext updatedObjects];
          v9 = [updatedObjects containsObject:v7];

          if ((v9 & 1) == 0)
          {
            [PLManagedAlbumList pushChangesFromAlbumContainer:self toAlbumContainer:v7];
          }
        }
      }
    }
  }
}

- (void)unregisterForChanges
{
  if ([(PLManagedAlbumList *)self isRegisteredForChanges])
  {
    v3 = +[PLChangeNotificationCenter defaultCenter];
    [(PLManagedAlbumList *)self removeObserver:v3 forKeyPath:@"albums" context:&PLChangeNotificationCenterKVOContext];

    [(PLManagedAlbumList *)self setIsRegisteredForChanges:0];
  }
}

- (void)registerForChanges
{
  if ([(PLManagedObject *)self isRegisteredWithUserInterfaceContext]&& ![(PLManagedAlbumList *)self isRegisteredForChanges])
  {
    v3 = +[PLChangeNotificationCenter defaultCenter];
    [(PLManagedAlbumList *)self addObserver:v3 forKeyPath:@"albums" options:8 context:&PLChangeNotificationCenterKVOContext];

    [(PLManagedAlbumList *)self setIsRegisteredForChanges:1];
  }
}

- (BOOL)hasDerivedIndexMappers
{
  WeakRetained = objc_loadWeakRetained(self->_derivedAlbumLists);

  if (WeakRetained)
  {
    return 1;
  }

  v5 = &self->_derivedAlbumLists[1];
  v6 = -1;
  while (v6 != 3)
  {
    v7 = objc_loadWeakRetained(v5);

    ++v6;
    ++v5;
    if (v7)
    {
      return v6 < 4;
    }
  }

  v6 = 4;
  return v6 < 4;
}

- (void)enumerateDerivedAlbumLists:(id)lists
{
  derivedAlbumLists = self->_derivedAlbumLists;
  listsCopy = lists;
  v4 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbumLists);
    if (listsCopy && WeakRetained)
    {
      listsCopy[2](listsCopy, WeakRetained);
    }

    ++derivedAlbumLists;
    --v4;
  }

  while (v4);
}

- (void)unregisterAllDerivedAlbums
{
  derivedAlbumLists = self->_derivedAlbumLists;
  v3 = 5;
  do
  {
    objc_storeWeak(derivedAlbumLists++, 0);
    --v3;
  }

  while (v3);
}

- (void)registerDerivedAlbumList:(id)list
{
  v12 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v5 = objc_autoreleasePoolPush();
  derivedAlbumLists = self->_derivedAlbumLists;
  v7 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbumLists);

    if (!WeakRetained)
    {
      objc_storeWeak(derivedAlbumLists, listCopy);
      goto LABEL_8;
    }

    ++derivedAlbumLists;
    --v7;
  }

  while (v7);
  v9 = PLMigrationGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = 5;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "More than maximum %ld derived album lists trying to register. This will fail.", &v10, 0xCu);
  }

LABEL_8:
  objc_autoreleasePoolPop(v5);
}

- (void)preheatAlbumsAtIndexes:(id)indexes forProperties:(id)properties relationships:(id)relationships
{
  v29 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  propertiesCopy = properties;
  relationshipsCopy = relationships;
  if ([(PLManagedAlbumList *)self hasFaultForRelationshipNamed:@"albums"])
  {
    albums = [(PLManagedAlbumList *)self albums];
    array = [albums array];

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

    photoLibrary = [(PLManagedObject *)self photoLibrary];
    managedObjectContext = [photoLibrary managedObjectContext];

    v24 = 0;
    v20 = [managedObjectContext executeFetchRequest:v16 error:&v24];
    v21 = v24;
    if (!v20)
    {
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        uuid = [(PLManagedAlbumList *)self uuid];
        *buf = 138543618;
        v26 = uuid;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Error fetching albums for album list %{public}@: %@", buf, 0x16u);
      }
    }
  }
}

- (void)updateAlbumsOrderIfNeeded
{
  needsReorderingNumber = [(PLManagedAlbumList *)self needsReorderingNumber];
  bOOLValue = [needsReorderingNumber BOOLValue];

  if (bOOLValue)
  {
    if ([(PLManagedAlbumList *)self albumListType]== 4)
    {
      albumsSortingComparator = [(PLManagedAlbumList *)self albumsSortingComparator];
      albums = [(PLManagedAlbumList *)self albums];
      [albums sortWithOptions:16 usingComparator:albumsSortingComparator];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [(PLManagedAlbumList *)self setNeedsReorderingNumber:v7];
  }
}

- (BOOL)needsReordering
{
  needsReorderingNumber = [(PLManagedAlbumList *)self needsReorderingNumber];
  bOOLValue = [needsReorderingNumber BOOLValue];

  return bOOLValue;
}

- (void)setNeedsReordering
{
  needsReorderingNumber = [(PLManagedAlbumList *)self needsReorderingNumber];
  bOOLValue = [needsReorderingNumber BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(PLManagedAlbumList *)self setNeedsReorderingNumber:v5];
  }
}

- (void)insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:(id)album
{
  v20 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  if (albumCopy)
  {
    albums = [(PLManagedAlbumList *)self albums];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 0;
    albumsSortingComparator = [(PLManagedAlbumList *)self albumsSortingComparator];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__PLManagedAlbumList_insertIntoOrderedAlbumsAtIndexByPriorityForAlbum___block_invoke;
    v13[3] = &unk_1E756A230;
    v7 = albumsSortingComparator;
    v15 = v7;
    v8 = albumCopy;
    v14 = v8;
    p_buf = &buf;
    [albums enumerateObjectsUsingBlock:v13];
    v9 = [albums indexOfObject:v8];
    v10 = *(*(&buf + 1) + 24);
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v10 >= [albums count])
      {
        [albums addObject:v8];
      }

      else
      {
        [albums insertObject:v8 atIndex:*(*(&buf + 1) + 24)];
      }
    }

    else if (v9 != v10)
    {
      if (v9 < v10)
      {
        *(*(&buf + 1) + 24) = v10 - 1;
      }

      v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
      [albums moveObjectsAtIndexes:v12 toIndex:*(*(&buf + 1) + 24)];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    albums = PLMigrationGetLog();
    if (os_log_type_enabled(albums, OS_LOG_TYPE_INFO))
    {
      uuid = [(PLManagedAlbumList *)self uuid];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = uuid;
      _os_log_impl(&dword_19BF1F000, albums, OS_LOG_TYPE_INFO, "Attempted to insert nil album into album list: %{public}@", &buf, 0xCu);
    }
  }
}

uint64_t __71__PLManagedAlbumList_insertIntoOrderedAlbumsAtIndexByPriorityForAlbum___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))();
  if (result == -1)
  {
    *a4 = 1;
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

- (id)albumsSortingComparator
{
  v2 = [&__block_literal_global_26330 copy];

  return v2;
}

uint64_t __45__PLManagedAlbumList_albumsSortingComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[PLManagedAlbumList priorityForAlbumKind:](PLManagedAlbumList, "priorityForAlbumKind:", [v4 kindValue]);
  v7 = +[PLManagedAlbumList priorityForAlbumKind:](PLManagedAlbumList, "priorityForAlbumKind:", [v5 kindValue]);
  if (v6 >= v7)
  {
    if (v6 <= v7)
    {
      if ([v4 conformsToProtocol:&unk_1F0FFFF38] && objc_msgSend(v5, "conformsToProtocol:", &unk_1F0FFFF38))
      {
        v9 = [v4 cloudLastInterestingChangeDate];
        v10 = [v5 cloudLastInterestingChangeDate];
        v11 = v10;
        if (v9)
        {
          if (v10)
          {
            v8 = [v10 compare:v9];
          }

          else
          {
            v8 = -1;
          }
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (BOOL)albumHasFixedOrder:(id)order
{
  kindValue = [order kindValue];

  return [PLManagedAlbumList albumKindHasFixedOrder:kindValue];
}

- (NSString)_typeDescription
{
  v3 = objc_opt_class();
  albumListType = [(PLManagedAlbumList *)self albumListType];

  return [v3 _typeDescriptionForAlbumListType:albumListType];
}

- (unint64_t)unreadAlbumsCount
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CloudSharedAlbum"];
  v4 = MEMORY[0x1E696AE18];
  objectID = [(PLManagedAlbumList *)self objectID];
  v6 = [v4 predicateWithFormat:@"%@ IN albumLists", objectID];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudNotificationsEnabled == YES"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"hasUnseenContent == YES"];
  v9 = MEMORY[0x1E696AB28];
  v21[0] = v6;
  v21[1] = v7;
  v21[2] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  [v3 setPredicate:v11];
  managedObjectContext = [(PLManagedAlbumList *)self managedObjectContext];
  v18 = 0;
  v13 = [managedObjectContext countForFetchRequest:v3 error:&v18];
  v14 = v18;

  if (v14)
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v14 localizedDescription];
      *buf = 138412290;
      v20 = localizedDescription;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch unread albums count: %@", buf, 0xCu);
    }
  }

  return v13;
}

- (BOOL)hasAtLeastOneAlbum
{
  if (([(PLManagedAlbumList *)self hasFaultForRelationshipNamed:@"albums"]& 1) != 0)
  {
    _albumsCountFetchRequest = [(PLManagedAlbumList *)self _albumsCountFetchRequest];
    [_albumsCountFetchRequest setFetchLimit:1];
    managedObjectContext = [(PLManagedAlbumList *)self managedObjectContext];
    v5 = [managedObjectContext countForFetchRequest:_albumsCountFetchRequest error:0];

    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0;
  }

  else
  {
    _albumsCountFetchRequest = [(PLManagedAlbumList *)self albums];
    v6 = [_albumsCountFetchRequest count] == 0;
  }

  v7 = !v6;

  return v7;
}

- (unint64_t)albumsCount
{
  _albumsCountFetchRequest = [(PLManagedAlbumList *)self _albumsCountFetchRequest];
  managedObjectContext = [(PLManagedAlbumList *)self managedObjectContext];
  v5 = [managedObjectContext countForFetchRequest:_albumsCountFetchRequest error:0];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)_albumsCountFetchRequest
{
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLGenericAlbum entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AE18];
  objectID = [(PLManagedAlbumList *)self objectID];
  v8 = [v6 predicateWithFormat:@"%@ IN albumLists", objectID];
  [v5 setPredicate:v8];

  return v5;
}

- (NSMutableOrderedSet)albums
{
  [(PLManagedAlbumList *)self willAccessValueForKey:@"albums"];
  v3 = [(PLManagedAlbumList *)self mutableOrderedSetValueForKey:@"albums"];
  [(PLManagedAlbumList *)self didAccessValueForKey:@"albums"];

  return v3;
}

- (void)setAlbumListType:(signed __int16)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithShort:type];
  [(PLManagedAlbumList *)self setIdentifier:v4];
}

- (signed)albumListType
{
  identifier = [(PLManagedAlbumList *)self identifier];
  shortValue = [identifier shortValue];

  return shortValue;
}

- (void)willTurnIntoFault
{
  [(PLManagedAlbumList *)self unregisterForChanges];
  v3.receiver = self;
  v3.super_class = PLManagedAlbumList;
  [(PLManagedAlbumList *)&v3 willTurnIntoFault];
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = PLManagedAlbumList;
  [(PLManagedAlbumList *)&v3 awakeFromFetch];
  [(PLManagedAlbumList *)self registerForChanges];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLManagedAlbumList;
  [(PLManagedAlbumList *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLManagedAlbumList *)self setUuid:uUIDString];

  [(PLManagedAlbumList *)self registerForChanges];
}

- (void)dealloc
{
  [(PLManagedAlbumList *)self unregisterAllDerivedAlbums];
  v3.receiver = self;
  v3.super_class = PLManagedAlbumList;
  [(PLManagedAlbumList *)&v3 dealloc];
}

+ (BOOL)restoreAlbumListFromPersistedDataAtPath:(id)path library:(id)library
{
  v32 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  libraryCopy = library;
  lastPathComponent = [pathCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  intValue = [stringByDeletingPathExtension intValue];

  v11 = intValue;
  if ([self isValidTypeForPersistence:intValue] && objc_msgSend(self, "isValidPathForPersistence:", pathCopy))
  {
    v12 = [self _singletonListWithType:intValue library:libraryCopy];
    if (!v12)
    {
LABEL_14:

      v20 = 1;
      goto LABEL_15;
    }

    v13 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:pathCopy];
    v14 = MEMORY[0x1E695DFB8];
    v15 = [v13 objectForKey:@"albums"];
    v16 = [v14 orderedSetWithArray:v15];

    albums = [v12 albums];
    v18 = [albums valueForKey:@"uuid"];

    if ([v16 isEqual:v18])
    {
      v19 = PLMigrationGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v29 = v11;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "Persisted albumList %d UUIDs match existing UUID ordering", buf, 8u);
      }
    }

    else
    {
      if (![v16 count])
      {
LABEL_13:

        goto LABEL_14;
      }

      v21 = PLMigrationGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v29 = v11;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Sorting albumList %d to match UUID ordering %@", buf, 0x12u);
      }

      albumsSortingComparator = [v12 albumsSortingComparator];
      albums2 = [v12 albums];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__PLManagedAlbumList_restoreAlbumListFromPersistedDataAtPath_library___block_invoke;
      v25[3] = &unk_1E756A6C0;
      v27 = albumsSortingComparator;
      v26 = v16;
      v19 = albumsSortingComparator;
      [albums2 sortUsingComparator:v25];
    }

    goto LABEL_13;
  }

  v20 = 0;
LABEL_15:

  return v20;
}

uint64_t __70__PLManagedAlbumList_restoreAlbumListFromPersistedDataAtPath_library___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 40) + 16))();
  if (!v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 uuid];
    v10 = [v8 indexOfObject:v9];

    v11 = *(a1 + 32);
    v12 = [v6 uuid];
    v13 = [v11 indexOfObject:v12];

    if (v10 >= v13)
    {
      v7 = v10 > v13;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

+ (void)persistAlbumListUUIDs:(id)ds type:(signed __int16)type pathManager:(id)manager allowsOverwrite:(BOOL)overwrite
{
  typeCopy = type;
  dsCopy = ds;
  managerCopy = manager;
  if ([self isValidTypeForPersistence:typeCopy])
  {
    v11 = MEMORY[0x1E695DFF8];
    v12 = [managerCopy privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];

    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.albumlistmetadata", typeCopy];
    v15 = [v13 URLByAppendingPathComponent:typeCopy];
    if (overwrite || ([MEMORY[0x1E696AC08] defaultManager], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "path"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "fileExistsAtPath:", v17), v17, v16, (v18 & 1) == 0))
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:dsCopy forKey:@"albums"];
      v20 = [MEMORY[0x1E696AE40] dataWithPropertyList:v19 format:100 options:0 error:0];
      [MEMORY[0x1E69BF230] persistMetadata:v20 fileURL:v15];
      v21 = MEMORY[0x1E69BF238];
      path = [v15 path];
      [v21 changeFileOwnerToMobileAtPath:path error:0];
    }
  }
}

+ (BOOL)isValidPathForPersistence:(id)persistence
{
  pathExtension = [persistence pathExtension];
  v4 = [pathExtension isEqualToString:@"albumlistmetadata"];

  return v4;
}

+ (void)pushChangesFromAlbumContainer:(id)container toAlbumContainer:(id)albumContainer
{
  albumContainerCopy = albumContainer;
  v7 = albumContainerCopy;
  if (container && albumContainerCopy)
  {
    v12 = albumContainerCopy;
    v8 = [self _validAlbumsFromSource:container destination:albumContainerCopy];
    albums = [v12 albums];
    v10 = [self _albumOrderMatchesFrom:v8 inDestination:albums];

    if ((v10 & 1) == 0)
    {
      albums2 = [v12 albums];
      [albums2 pl_insertObjects:v8 atIndex:0];
    }

    v7 = v12;
  }
}

+ (id)_validAlbumsFromSource:(id)source destination:(id)destination
{
  v25 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  destinationCopy = destination;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = sourceCopy;
  albums = [sourceCopy albums];
  v9 = [albums countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(albums);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (([v13 isDeleted] & 1) == 0)
        {
          parentFolder = [v13 parentFolder];
          if (!parentFolder || (v15 = parentFolder, [destinationCopy albums], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v13), v16, v15, v17))
          {
            [array addObject:v13];
          }
        }
      }

      v10 = [albums countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return array;
}

+ (BOOL)_albumOrderMatchesFrom:(id)from inDestination:(id)destination
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  destinationCopy = destination;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = fromCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (2)
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [destinationCopy indexOfObject:{*(*(&v17 + 1) + 8 * v12), v17}];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v14, v13 != 0x7FFFFFFFFFFFFFFFLL) && v14 <= v13)
        {
          v15 = 0;
          goto LABEL_14;
        }

        ++v12;
        v13 = v14;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_14:

  return v15;
}

+ (void)addSingletonObjectsToContext:(id)context
{
  contextCopy = context;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v62 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedAlbumList.m" lineNumber:782 description:{@"%@ can only be called from assetsd", v62}];
  }

  v6 = [self _albumListWithType:0 inManagedObjectContext:contextCopy];
  if (!v6)
  {
    v6 = [self insertInManagedObjectContext:contextCopy];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [v6 setIdentifier:v7];
  }

  v8 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1616 inManagedObjectContext:contextCopy];
  if (v8)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v8];
  }

  v9 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1613 inManagedObjectContext:contextCopy];
  if (v9)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v9];
  }

  v10 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1614 inManagedObjectContext:contextCopy];
  if (v10)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v10];
  }

  v11 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1605 inManagedObjectContext:contextCopy];
  if (v11)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v11];
  }

  v81 = v11;
  v12 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1639 inManagedObjectContext:contextCopy];
  if (v12)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v12];
  }

  selfCopy = self;
  v13 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1606 inManagedObjectContext:contextCopy];
  if (v13)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v13];
  }

  v14 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1615 inManagedObjectContext:contextCopy];
  if (v14)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v14];
  }

  v83 = v9;
  v78 = v14;
  v15 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1610 inManagedObjectContext:contextCopy];
  if (v15)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v15];
  }

  v77 = v15;
  v16 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1617 inManagedObjectContext:contextCopy];
  if (v16)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v16];
  }

  v76 = v16;
  v17 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1618 inManagedObjectContext:contextCopy];
  if (v17)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v17];
  }

  v18 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1611 inManagedObjectContext:contextCopy];
  if (v18)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v18];
  }

  v75 = v18;
  v84 = v8;
  v19 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1609 inManagedObjectContext:contextCopy];
  if (v19)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v19];
  }

  v80 = v12;
  v74 = v19;
  v20 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1552 inManagedObjectContext:contextCopy];
  if (v20)
  {
    albums = [v6 albums];
    [albums addObject:v20];
  }

  v22 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4001 inManagedObjectContext:contextCopy];
  if (v22)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v22];
  }

  v72 = v22;
  v23 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4003 inManagedObjectContext:contextCopy];
  if (v23)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v23];
  }

  v24 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4002 inManagedObjectContext:contextCopy];
  if (v24)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v24];
  }

  v79 = v13;
  v25 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1612 inManagedObjectContext:contextCopy];
  if (v25)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v25];
  }

  v26 = v17;
  v69 = v25;
  v27 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4004 inManagedObjectContext:contextCopy];
  if (v27)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v27];
  }

  v28 = v10;
  v68 = v27;
  v29 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4005 inManagedObjectContext:contextCopy];
  if (v29)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v29];
  }

  v30 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4006 inManagedObjectContext:contextCopy];
  if (v30)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v30];
  }

  v73 = v20;
  v66 = v30;
  v31 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1619 inManagedObjectContext:contextCopy];
  if (v31)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v31];
  }

  v32 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1620 inManagedObjectContext:contextCopy];
  if (v32)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v32];
  }

  v64 = v32;
  v33 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1621 inManagedObjectContext:contextCopy];
  if (v33)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v33];
  }

  v63 = v33;
  v65 = v31;
  v82 = v28;
  v34 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1622 inManagedObjectContext:contextCopy];
  if (v34)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v34];
  }

  v70 = v24;
  v35 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1623 inManagedObjectContext:contextCopy];
  if (v35)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v35];
  }

  v71 = v23;
  v36 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1624 inManagedObjectContext:contextCopy];
  if (v36)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v36];
  }

  v37 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1634 inManagedObjectContext:contextCopy];
  if (v37)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v37];
  }

  v67 = v29;
  v38 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1636 inManagedObjectContext:contextCopy];
  if (v38)
  {
    [v6 insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v38];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PLManagedAlbumList_addSingletonObjectsToContext___block_invoke;
  aBlock[3] = &unk_1E756A258;
  v39 = contextCopy;
  v87 = v39;
  v40 = v6;
  v88 = v40;
  v41 = _Block_copy(aBlock);
  v41[2](v41, 1626);
  v41[2](v41, 1627);
  v41[2](v41, 1630);
  v41[2](v41, 1631);
  v41[2](v41, 1637);
  v41[2](v41, 1632);
  v41[2](v41, 1640);
  v41[2](v41, 1641);
  v41[2](v41, 1642);
  v41[2](v41, 1628);
  v42 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3999 inManagedObjectContext:v39];
  [PLManagedAlbumList pushChangesFromAlbumContainer:v40 toAlbumContainer:v42];

  v43 = [selfCopy _albumListWithType:7 inManagedObjectContext:v39];

  if (!v43)
  {
    v44 = [selfCopy insertInManagedObjectContext:v39];
    v45 = [MEMORY[0x1E696AD98] numberWithInt:7];
    [v44 setIdentifier:v45];
  }

  v46 = [selfCopy _albumListWithType:1 inManagedObjectContext:v39];

  if (!v46)
  {
    v47 = [selfCopy insertInManagedObjectContext:v39];
    v48 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v47 setIdentifier:v48];
  }

  v49 = [selfCopy _albumListWithType:2 inManagedObjectContext:v39];

  if (!v49)
  {
    v50 = [selfCopy insertInManagedObjectContext:v39];
    v51 = [MEMORY[0x1E696AD98] numberWithInt:2];
    [v50 setIdentifier:v51];
  }

  v52 = [selfCopy _albumListWithType:3 inManagedObjectContext:v39];

  if (!v52)
  {
    v53 = [selfCopy insertInManagedObjectContext:v39];
    v54 = [MEMORY[0x1E696AD98] numberWithInt:3];
    [v53 setIdentifier:v54];
  }

  v55 = [selfCopy _albumListWithType:10 inManagedObjectContext:v39];

  if (!v55)
  {
    v56 = [selfCopy insertInManagedObjectContext:v39];
    v57 = [MEMORY[0x1E696AD98] numberWithInt:10];
    [v56 setIdentifier:v57];
  }

  v58 = [selfCopy _albumListWithType:4 inManagedObjectContext:v39];

  if (!v58)
  {
    v59 = [selfCopy insertInManagedObjectContext:v39];
    v60 = [MEMORY[0x1E696AD98] numberWithInt:4];
    [v59 setIdentifier:v60];
  }
}

void __51__PLManagedAlbumList_addSingletonObjectsToContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:a2 inManagedObjectContext:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:v3];
    v3 = v4;
  }
}

+ (id)_albumListWithType:(signed __int16)type inManagedObjectContext:(id)context
{
  typeCopy = type;
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x1E695D5E0]);
  entityName = [self entityName];
  v10 = [v8 initWithEntityName:entityName];

  typeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier = %d", typeCopy];
  [v10 setPredicate:typeCopy];
  v17 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v17];
  v13 = v17;
  if (v12)
  {
    lastObject = [v12 lastObject];
  }

  else
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error fetching album list: %@", buf, 0xCu);
    }

    lastObject = 0;
  }

  objc_autoreleasePoolPop(v7);

  return lastObject;
}

+ (id)_typeDescriptionForAlbumListType:(signed __int16)type
{
  if (type < 0xB && ((0x4BFu >> type) & 1) != 0)
  {
    type = off_1E756A278[type];
  }

  else
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown %d>", type];
  }

  return type;
}

+ (unint64_t)priorityForAlbumKind:(int)kind
{
  result = -1;
  if (kind <= 1549)
  {
    v4 = 210;
    v5 = 120;
    if (kind != 1505)
    {
      v5 = -1;
    }

    if (kind != 1502)
    {
      v4 = v5;
    }

    v6 = 10;
    v7 = 180;
    if (kind != 1500)
    {
      v7 = -1;
    }

    if (kind != 1000)
    {
      v6 = v7;
    }

    if (kind <= 1501)
    {
      v4 = v6;
    }

    v8 = 230;
    v9 = 240;
    if (kind != 16)
    {
      v9 = -1;
    }

    if (kind != 15)
    {
      v8 = v9;
    }

    v10 = 400;
    v11 = 222;
    if (kind != 12)
    {
      v11 = -1;
    }

    if (kind != 2)
    {
      v10 = v11;
    }

    if (kind <= 14)
    {
      v8 = v10;
    }

    v12 = kind <= 999;
  }

  else
  {
    if (kind <= 4000)
    {
      switch(kind)
      {
        case 1550:
          result = 220;
          break;
        case 1551:
          result = 221;
          break;
        case 1552:
          result = 170;
          break;
        case 1600:
          result = 250;
          break;
        case 1602:
          result = 130;
          break;
        case 1603:
          result = 65;
          break;
        case 1604:
          result = 66;
          break;
        case 1605:
          result = 80;
          break;
        case 1606:
          result = 60;
          break;
        case 1609:
          result = 30;
          break;
        case 1610:
          result = 91;
          break;
        case 1611:
          result = 270;
          break;
        case 1612:
          result = 280;
          break;
        case 1613:
          result = 12;
          break;
        case 1614:
          result = 100;
          break;
        case 1615:
          result = 92;
          break;
        case 1616:
          result = 15;
          break;
        case 1617:
          result = 70;
          break;
        case 1618:
          result = 110;
          break;
        case 1619:
          result = 50;
          break;
        case 1620:
          result = 76;
          break;
        case 1621:
          result = 75;
          break;
        case 1622:
          result = 115;
          break;
        case 1623:
          result = 78;
          break;
        case 1624:
          result = 275;
          break;
        case 1625:
          result = 13;
          break;
        case 1626:
          result = 285;
          break;
        case 1627:
          result = 112;
          break;
        case 1628:
          result = 11;
          break;
        case 1630:
          result = 117;
          break;
        case 1631:
          result = 93;
          break;
        case 1632:
          result = 94;
          break;
        case 1634:
          result = 290;
          break;
        case 1636:
          result = 21;
          break;
        case 1637:
          result = 95;
          break;
        case 1639:
          result = 79;
          break;
        case 1640:
          result = 291;
          break;
        case 1641:
          result = 295;
          break;
        case 1642:
          result = 300;
          break;
        default:
          return result;
      }

      return result;
    }

    v4 = 141;
    v13 = 161;
    v14 = 33;
    if (kind != 4006)
    {
      v14 = -1;
    }

    if (kind != 4005)
    {
      v13 = v14;
    }

    if (kind != 4004)
    {
      v4 = v13;
    }

    v8 = 160;
    v15 = 140;
    v16 = 150;
    if (kind != 4003)
    {
      v16 = -1;
    }

    if (kind != 4002)
    {
      v15 = v16;
    }

    if (kind != 4001)
    {
      v8 = v15;
    }

    v12 = kind <= 4003;
  }

  if (v12)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)albumKindHasFixedOrder:(int)order
{
  result = 0;
  if (order > 1599)
  {
    if (((order - 1600) > 0x2A || ((1 << (order - 64)) & 0x7B5DFFFFE7DLL) == 0) && (order - 4004) >= 3)
    {
      return result;
    }

    return 1;
  }

  if ((order - 1500) <= 0x34 && ((1 << (order + 36)) & 0x10000000000005) != 0 || order == 1000)
  {
    return 1;
  }

  return result;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PLManagedAlbumList;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  v5 = [keyCopy isEqualToString:{@"adjustmentFormatIdentifier", v9.receiver, v9.super_class}];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"identifier"];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

+ (id)_singletonListWithType:(signed __int16)type library:(id)library
{
  typeCopy = type;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedAlbumList.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"aPhotoLibrary"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v9 = [self _albumListWithType:typeCopy inManagedObjectContext:managedObjectContext];
  if (!v9)
  {
    [libraryCopy repairSingletonObjects];
    v9 = [self _albumListWithType:typeCopy inManagedObjectContext:managedObjectContext];
  }

  return v9;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    pl_dispatch_once();
  }
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([objc_opt_class() isValidTypeForPersistence:{-[PLManagedAlbumList albumListType](self, "albumListType")}])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLAlbumListJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  uuid = [(PLManagedAlbumList *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

@end