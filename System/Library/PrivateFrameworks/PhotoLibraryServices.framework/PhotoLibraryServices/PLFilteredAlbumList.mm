@interface PLFilteredAlbumList
+ (id)filteredAlbumList:(id)a3 filter:(int)a4;
- (BOOL)albumHasFixedOrder:(id)a3;
- (BOOL)canEditAlbums;
- (BOOL)mappedDataSourceChanged:(id)a3 remoteNotificationData:(id)a4;
- (BOOL)needsReordering;
- (BOOL)shouldIncludeObjectAtIndex:(unint64_t)a3;
- (NSIndexSet)filteredIndexes;
- (NSMutableOrderedSet)_albums;
- (NSMutableOrderedSet)albums;
- (NSString)_typeDescription;
- (NSString)description;
- (PLFilteredAlbumList)initWithBackingAlbumList:(id)a3 filter:(int)a4;
- (PLPhotoLibrary)photoLibrary;
- (id)albumsSortingComparator;
- (id)filteredAlbumsAtIndexes:(id)a3;
- (id)identifier;
- (id)managedObjectContext;
- (id)objectInFilteredAlbumsAtIndex:(unint64_t)a3;
- (signed)albumListType;
- (unint64_t)albumsCount;
- (unint64_t)countOfFilteredAlbums;
- (unint64_t)indexInFilteredAlbumsOfObject:(id)a3;
- (unint64_t)unreadAlbumsCount;
- (void)_backingContextDidChange:(id)a3;
- (void)_invalidateFilteredIndexes;
- (void)dealloc;
- (void)enumerateDerivedAlbumLists:(id)a3;
- (void)insertFilteredAlbums:(id)a3 atIndexes:(id)a4;
- (void)insertObject:(id)a3 inFilteredAlbumsAtIndex:(unint64_t)a4;
- (void)preheatAlbumsAtIndexes:(id)a3 forProperties:(id)a4 relationships:(id)a5;
- (void)preheatAlbumsForProperties:(id)a3 relationships:(id)a4;
- (void)registerDerivedAlbumList:(id)a3;
- (void)removeFilteredAlbumsAtIndexes:(id)a3;
- (void)removeObjectFromFilteredAlbumsAtIndex:(unint64_t)a3;
- (void)replaceFilteredAlbumsAtIndexes:(id)a3 withFilteredValues:(id)a4;
- (void)replaceObjectInFilteredAlbumsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)setNeedsReordering;
- (void)unregisterAllDerivedAlbums;
- (void)updateAlbumsOrderIfNeeded;
@end

@implementation PLFilteredAlbumList

- (void)enumerateDerivedAlbumLists:(id)a3
{
  derivedAlbumLists = self->_derivedAlbumLists;
  v6 = a3;
  v4 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbumLists);
    if (WeakRetained)
    {
      v6[2](v6, WeakRetained);
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

- (void)registerDerivedAlbumList:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  derivedAlbumLists = self->_derivedAlbumLists;
  v7 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbumLists);

    if (!WeakRetained)
    {
      objc_storeWeak(derivedAlbumLists, v4);
      goto LABEL_8;
    }

    ++derivedAlbumLists;
    --v7;
  }

  while (v7);
  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = 5;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "More than maximum %ld derived album lists trying to register. This will fail.", &v10, 0xCu);
  }

LABEL_8:
  objc_autoreleasePoolPop(v5);
}

- (void)replaceFilteredAlbumsAtIndexes:(id)a3 withFilteredValues:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PLFilteredAlbumList *)self backingAlbumList];
  v8 = [v10 albums];
  v9 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:v7];

  [v8 replaceObjectsAtIndexes:v9 withObjects:v6];
}

- (void)replaceObjectInFilteredAlbumsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v8 = [(PLFilteredAlbumList *)self backingAlbumList];
  v7 = [v8 albums];
  [v7 replaceObjectAtIndex:-[PLIndexMapper backingIndexForIndex:](self->_indexMapper withObject:{"backingIndexForIndex:", a3), v6}];
}

- (void)removeFilteredAlbumsAtIndexes:(id)a3
{
  v4 = a3;
  v7 = [(PLFilteredAlbumList *)self backingAlbumList];
  v5 = [v7 albums];
  v6 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:v4];

  [v5 removeObjectsAtIndexes:v6];
}

- (void)insertFilteredAlbums:(id)a3 atIndexes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PLFilteredAlbumList *)self backingAlbumList];
  v8 = [v10 albums];
  v9 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:v6];

  [v8 insertObjects:v7 atIndexes:v9];
}

- (void)removeObjectFromFilteredAlbumsAtIndex:(unint64_t)a3
{
  v6 = [(PLFilteredAlbumList *)self backingAlbumList];
  v5 = [v6 albums];
  [v5 removeObjectAtIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", a3)}];
}

- (void)insertObject:(id)a3 inFilteredAlbumsAtIndex:(unint64_t)a4
{
  v6 = a3;
  v8 = [(PLFilteredAlbumList *)self backingAlbumList];
  v7 = [v8 albums];
  [v7 insertObject:v6 atIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", a4)}];
}

- (id)filteredAlbumsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbumList *)self backingAlbumList];
  v6 = [v5 albums];
  v7 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:v4];

  v8 = [v6 objectsAtIndexes:v7];

  return v8;
}

- (id)objectInFilteredAlbumsAtIndex:(unint64_t)a3
{
  v5 = [(PLFilteredAlbumList *)self backingAlbumList];
  v6 = [v5 albums];
  v7 = [v6 objectAtIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", a3)}];

  return v7;
}

- (unint64_t)indexInFilteredAlbumsOfObject:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbumList *)self backingAlbumList];
  v6 = [v5 albums];
  v7 = [v6 indexOfObject:v4];

  v8 = [(PLIndexMapper *)self->_indexMapper indexForBackingIndex:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8;
  if (v8 >= [(NSMutableIndexSet *)self->_filteredIndexes count]|| v7 != [(PLIndexMapper *)self->_indexMapper backingIndexForIndex:v9])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)countOfFilteredAlbums
{
  v2 = [(PLFilteredAlbumList *)self filteredIndexes];
  v3 = [v2 count];

  return v3;
}

- (NSMutableOrderedSet)_albums
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_albums);

  return WeakRetained;
}

- (BOOL)mappedDataSourceChanged:(id)a3 remoteNotificationData:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PLFilteredAlbumList *)self set_albums:0];
  if ([(PLIndexMapper *)self->_indexMapper applyContainerChangeNotification:v5 changeTypes:15 toFilteredIndexes:self->_filteredIndexes])
  {
    v6 = [(PLFilteredAlbumList *)self backingAlbumList];
    v7 = [v6 albums];
    v8 = [v7 array];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 kindValue] == 4003 || objc_msgSend(v15, "kindValue") == 4002 || objc_msgSend(v15, "kindValue") == 4001)
          {
            v16 = [(PLFilteredAlbumList *)self shouldIncludeObjectAtIndex:v12];
            filteredIndexes = self->_filteredIndexes;
            if (v16)
            {
              [(NSMutableIndexSet *)filteredIndexes addIndex:v12];
            }

            else
            {
              [(NSMutableIndexSet *)filteredIndexes removeIndex:v12];
            }
          }

          ++v12;
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    [(PLFilteredAlbumList *)self _invalidateFilteredIndexes];
  }

  return 1;
}

- (BOOL)shouldIncludeObjectAtIndex:(unint64_t)a3
{
  v5 = [(PLFilteredAlbumList *)self predicate];
  v6 = [(PLFilteredAlbumList *)self backingAlbumList];
  v7 = [v6 albums];
  v8 = [v7 objectAtIndex:a3];
  v9 = [v5 evaluateWithObject:v8];

  return v9;
}

- (NSIndexSet)filteredIndexes
{
  filteredIndexes = self->_filteredIndexes;
  if (!filteredIndexes)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(PLFilteredAlbumList *)self backingAlbumList];
    v7 = [v6 albums];
    v8 = [v7 array];

    v9 = [(PLFilteredAlbumList *)self predicate];
    v10 = [v8 filteredArrayUsingPredicate:v9];

    v11 = [MEMORY[0x1E696AD50] indexSet];
    v12 = [v8 count];
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __38__PLFilteredAlbumList_filteredIndexes__block_invoke;
    v22 = &unk_1E756E328;
    v26 = v29;
    v27 = v12;
    v13 = v8;
    v28 = a2;
    v23 = v13;
    v24 = self;
    v14 = v11;
    v25 = v14;
    [v10 enumerateObjectsUsingBlock:&v19];
    v15 = self->_filteredIndexes;
    self->_filteredIndexes = v14;
    v16 = v14;

    _Block_object_dispose(v29, 8);
    objc_autoreleasePoolPop(v5);
    filteredIndexes = self->_filteredIndexes;
  }

  v17 = [(NSMutableIndexSet *)filteredIndexes copy:v19];

  return v17;
}

uint64_t __38__PLFilteredAlbumList_filteredIndexes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 24);
  v4 = [*(a1 + 32) indexOfObjectIdenticalTo:a2 inRange:{v3, *(a1 + 64) - v3}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"PLFilteredAlbumList.m" lineNumber:460 description:&stru_1F0F06D80];
  }

  *(*(*(a1 + 56) + 8) + 24) = v4;
  v5 = *(a1 + 48);

  return [v5 addIndex:v4];
}

- (unint64_t)unreadAlbumsCount
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 unreadAlbumsCount];

  return v3;
}

- (void)_invalidateFilteredIndexes
{
  [(PLFilteredAlbumList *)self set_albums:0];
  filteredIndexes = self->_filteredIndexes;
  self->_filteredIndexes = 0;
}

- (NSString)_typeDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLFilteredAlbumList *)self backingAlbumList];
  v7 = [v6 _typeDescription];
  v8 = [v3 stringWithFormat:@"%@\nBacking album list = %@", v5, v7];

  return v8;
}

- (id)managedObjectContext
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (id)identifier
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 identifier];

  return v3;
}

- (void)_backingContextDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKey:*MEMORY[0x1E695D2F8]];

  v5 = [(PLFilteredAlbumList *)self backingAlbumList];
  v6 = [v7 containsObject:v5];

  if (v6)
  {
    [(PLFilteredAlbumList *)self willChangeValueForKey:@"albums"];
    [(PLFilteredAlbumList *)self setBackingAlbumList:0];
    [(PLFilteredAlbumList *)self _invalidateFilteredIndexes];
    [(PLFilteredAlbumList *)self didChangeValueForKey:@"albums"];
  }
}

- (NSString)description
{
  v3 = [(PLFilteredAlbumList *)self backingAlbumList];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PLFilteredAlbumList *)self backingAlbumList];
    v6 = [v5 _typeDescription];
  }

  else
  {
    v6 = @"[]";
  }

  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p> type: %@", objc_opt_class(), self, v6];
  filteredIndexes = self->_filteredIndexes;
  if (filteredIndexes)
  {
    v9 = [(NSMutableIndexSet *)filteredIndexes pl_shortDescription];
    [v7 appendFormat:@", filtered items: %@ (count: %lu)", v9, -[NSMutableIndexSet count](self->_filteredIndexes, "count")];
  }

  else
  {
    [v7 appendString:{@", filtered items not calculated"}];
  }

  v10 = [(PLFilteredAlbumList *)self backingAlbumList];
  [v7 appendFormat:@", backing list: %p", v10];

  if (self->_filteredIndexes)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [(PLFilteredAlbumList *)self albums];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34__PLFilteredAlbumList_description__block_invoke;
    v16[3] = &unk_1E7577F08;
    v17 = v11;
    v13 = v11;
    [v12 enumerateObjectsUsingBlock:v16];

    v14 = [v13 componentsJoinedByString:{@", "}];
    [v7 appendFormat:@", albums: {%@}", v14];
  }

  return v7;
}

void __34__PLFilteredAlbumList_description__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a2];
  [v7 addObject:v8];

  if (a3 >= 0x15)
  {
    [*(a1 + 32) addObject:@"..."];
    *a4 = 1;
  }
}

- (PLPhotoLibrary)photoLibrary
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 photoLibrary];

  return v3;
}

- (unint64_t)albumsCount
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v4 = MEMORY[0x1E696AE18];
  v5 = [(PLFilteredAlbumList *)self backingAlbumList];
  v6 = [v5 objectID];
  v7 = [v4 predicateWithFormat:@"%@ IN albumLists", v6];
  [v3 addObject:v7];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind != %d) OR (cachedCount > 0)", 1552];
  [v3 addObject:v8];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind != %d", 1602];
  [v3 addObject:v9];

  v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLGenericAlbum entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  [v13 setPredicate:v10];
  [v13 setFetchLimit:1];
  v14 = [(PLFilteredAlbumList *)self backingAlbumList];
  v15 = [v14 managedObjectContext];
  v16 = [v15 countForFetchRequest:v13 error:0];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (NSMutableOrderedSet)albums
{
  v3 = [(PLFilteredAlbumList *)self _albums];

  if (!v3)
  {
    v4 = [(PLFilteredAlbumList *)self mutableOrderedSetValueForKey:@"filteredAlbums"];
    [(PLFilteredAlbumList *)self set_albums:v4];
  }

  return [(PLFilteredAlbumList *)self _albums];
}

- (void)preheatAlbumsAtIndexes:(id)a3 forProperties:(id)a4 relationships:(id)a5
{
  indexMapper = self->_indexMapper;
  v9 = a5;
  v10 = a4;
  v12 = [(PLIndexMapper *)indexMapper backingIndexesForIndexes:a3];
  v11 = [(PLFilteredAlbumList *)self backingAlbumList];
  [v11 preheatAlbumsAtIndexes:v12 forProperties:v10 relationships:v9];
}

- (void)preheatAlbumsForProperties:(id)a3 relationships:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLFilteredAlbumList *)self backingAlbumList];
  [v8 preheatAlbumsForProperties:v7 relationships:v6];
}

- (void)updateAlbumsOrderIfNeeded
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  [v2 updateAlbumsOrderIfNeeded];
}

- (BOOL)needsReordering
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 needsReordering];

  return v3;
}

- (void)setNeedsReordering
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  [v2 setNeedsReordering];
}

- (id)albumsSortingComparator
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 albumsSortingComparator];

  return v3;
}

- (BOOL)albumHasFixedOrder:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbumList *)self backingAlbumList];
  v6 = [v5 albumHasFixedOrder:v4];

  return v6;
}

- (BOOL)canEditAlbums
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 canEditAlbums];

  return v3;
}

- (signed)albumListType
{
  v2 = [(PLFilteredAlbumList *)self backingAlbumList];
  v3 = [v2 albumListType];

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PLFilteredAlbumList *)self unregisterAllDerivedAlbums];
  [(PLFilteredAlbumList *)self _invalidateFilteredIndexes];
  v4.receiver = self;
  v4.super_class = PLFilteredAlbumList;
  [(PLFilteredAlbumList *)&v4 dealloc];
}

- (PLFilteredAlbumList)initWithBackingAlbumList:(id)a3 filter:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v57.receiver = self;
  v57.super_class = PLFilteredAlbumList;
  v7 = [(PLFilteredAlbumList *)&v57 init];
  if (!v7)
  {
    goto LABEL_46;
  }

  v8 = [[PLIndexMapper alloc] initWithDataSource:v7];
  indexMapper = v7->_indexMapper;
  v7->_indexMapper = v8;

  [(PLFilteredAlbumList *)v7 setBackingAlbumList:v6];
  v10 = [(PLFilteredAlbumList *)v7 backingAlbumList];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(PLFilteredAlbumList *)v7 backingAlbumList];
    [v12 registerDerivedAlbumList:v7];
  }

  [(PLFilteredAlbumList *)v7 setFilter:v4];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  [(PLFilteredAlbumList *)v7 setPredicate:v13];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = *MEMORY[0x1E695D360];
  v16 = [(PLFilteredAlbumList *)v7 backingAlbumList];
  v17 = [v16 managedObjectContext];
  [v14 addObserver:v7 selector:sel__backingContextDidChange_ name:v15 object:v17];

  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  if (v4)
  {
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"photosCount > 0"];
    [v18 addObject:v19];
  }

  if ((v4 & 2) != 0)
  {
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"videosCount > 0"];
    [v18 addObject:v20];
  }

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isStandInAlbum == NO"];
  if ((v4 & 0x20000) != 0)
  {
    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isEmpty == NO"];
    v23 = MEMORY[0x1E696AB28];
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v21, v22, 0}];
    v25 = [v23 orPredicateWithSubpredicates:v24];

    [v18 addObject:v25];
  }

  else
  {
    [v18 addObject:v21];
  }

  if ((v4 & 0x80000) != 0)
  {
    v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isFolder == NO"];
    [v18 addObject:v27];

    if ((v4 & 0x400000) == 0)
    {
LABEL_13:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x400000) == 0)
  {
    goto LABEL_13;
  }

  v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isRecentlyAddedAlbum == NO"];
  [v18 addObject:v28];

  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isEmpty == NO"];
  [v18 addObject:v29];

  if ((v4 & 0x40000) == 0)
  {
LABEL_15:
    if ((v4 & 0x100000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isSmartAlbum == NO OR isEmpty == NO OR kind == %d", 1612];
  [v18 addObject:v30];

  if ((v4 & 0x100000) != 0)
  {
LABEL_16:
    if ((v4 & 0x200000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedState == %d", 0];
  [v18 addObject:v31];

  if ((v4 & 0x200000) != 0)
  {
LABEL_17:
    if ((v4 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind != %d", 1612];
  [v18 addObject:v32];

  if ((v4 & 0x1000000) != 0)
  {
LABEL_18:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isCameraAlbum == NO"];
    [v18 addObject:v34];
    goto LABEL_40;
  }

LABEL_37:
  v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind != %d", 1619];
  [v18 addObject:v33];

  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if (v4 & 0x400) == 0 && (MGGetBoolAnswer())
  {
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_41:
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isPhotoStreamAlbum == NO"];
    [v18 addObject:v43];

    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

LABEL_42:
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isLibrary == NO"];
    [v18 addObject:v44];
    goto LABEL_48;
  }

  v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isCameraAlbum == NO"];
  v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isCameraAlbum == YES"];
  v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isEmpty == NO"];
  v37 = MEMORY[0x1E696AB28];
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v35, v36, 0}];
  v39 = [v37 andPredicateWithSubpredicates:v38];

  v40 = MEMORY[0x1E696AB28];
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v34, v39, 0}];
  v42 = [v40 orPredicateWithSubpredicates:v41];

  [v18 addObject:v42];
LABEL_40:

  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_41;
  }

LABEL_22:
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  if ((v4 & 0x800) == 0)
  {
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isLibrary == NO"];
  v47 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isLibrary == YES"];
  v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isEmpty == NO    "];
  v49 = MEMORY[0x1E696AB28];
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v47, v48, 0}];
  v51 = [v49 andPredicateWithSubpredicates:v50];

  v52 = MEMORY[0x1E696AB28];
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v44, v51, 0}];
  v54 = [v52 orPredicateWithSubpredicates:v53];

  [v18 addObject:v54];
LABEL_48:

  if ((v4 & 0x4000) == 0)
  {
LABEL_25:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

LABEL_50:
    v56 = [MEMORY[0x1E696AE18] predicateWithFormat:@"( isPendingPhotoStreamAlbum == NO)"];
    [v18 addObject:v56];

    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_49:
  v55 = [MEMORY[0x1E696AE18] predicateWithFormat:@"( (isOwnedCloudSharedAlbum == YES) OR (isMultipleContributorCloudSharedAlbum == YES))"];
  [v18 addObject:v55];

  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_50;
  }

LABEL_26:
  if ((v4 & 0x8000) != 0)
  {
LABEL_27:
    v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isCloudSharedAlbum == NO"];
    [v18 addObject:v26];
  }

LABEL_28:
  if ([v18 count])
  {
    if ([v18 count] == 1)
    {
      [v18 objectAtIndex:0];
    }

    else
    {
      [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
    }
    v45 = ;
    [(PLFilteredAlbumList *)v7 setPredicate:v45];
  }

LABEL_46:
  return v7;
}

+ (id)filteredAlbumList:(id)a3 filter:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithBackingAlbumList:v6 filter:v4];

  return v7;
}

@end