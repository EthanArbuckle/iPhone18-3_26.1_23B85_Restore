@interface PLAggregateAlbumList
+ (PLAggregateAlbumList)albumListWithFilter:(int)a3 inPhotoLibrary:(id)a4;
- (PLAggregateAlbumList)initWithFilter:(int)a3 inPhotoLibrary:(id)a4;
- (id)albums;
- (id)managedObjectContext;
- (id)photoLibrary;
- (unint64_t)albumsCount;
- (void)_invalidateAllAlbums;
- (void)assetContainerListDidChange:(id)a3;
- (void)dealloc;
@end

@implementation PLAggregateAlbumList

- (id)photoLibrary
{
  v2 = [(NSMutableOrderedSet *)self->_childAlbumLists lastObject];
  v3 = [v2 photoLibrary];

  return v3;
}

- (id)managedObjectContext
{
  v2 = [(NSMutableOrderedSet *)self->_childAlbumLists lastObject];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (unint64_t)albumsCount
{
  v2 = [(PLAggregateAlbumList *)self albums];
  v3 = [v2 count];

  return v3;
}

- (id)albums
{
  v20 = *MEMORY[0x1E69E9840];
  allAlbums = self->_allAlbums;
  if (!allAlbums)
  {
    v4 = objc_opt_new();
    v5 = self->_allAlbums;
    self->_allAlbums = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_childAlbumLists;
    v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = self->_allAlbums;
          v12 = [*(*(&v15 + 1) + 8 * v10) albums];
          [(NSMutableOrderedSet *)v11 unionOrderedSet:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    allAlbums = self->_allAlbums;
  }

  v13 = [(NSMutableOrderedSet *)allAlbums mutableCopy];

  return v13;
}

- (void)assetContainerListDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 albumList];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  childAlbumLists = self->_childAlbumLists;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__PLAggregateAlbumList_assetContainerListDidChange___block_invoke;
  v21[3] = &unk_1E75708F0;
  v7 = v5;
  v22 = v7;
  v23 = &v24;
  [(NSMutableOrderedSet *)childAlbumLists enumerateObjectsUsingBlock:v21];
  v8 = [PLAggregateAlbumListChangeNotification notificationForAggregateAlbumList:self fromAlbumListChangeNotification:v4 indexOffset:v25[3]];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__PLAggregateAlbumList_assetContainerListDidChange___block_invoke_2;
  v16[3] = &unk_1E7570918;
  v16[4] = &v17;
  [v8 enumerateMovesWithBlock:v16];
  if (([v4 shouldReload] & 1) != 0 || *(v18 + 24) == 1)
  {
    [(PLAggregateAlbumList *)self willChangeValueForKey:@"albums"];
    [(PLAggregateAlbumList *)self _invalidateAllAlbums];
    [(PLAggregateAlbumList *)self didChangeValueForKey:@"albums"];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 deletedIndexes];
    if ([v10 count])
    {
      [(PLAggregateAlbumList *)self willChange:3 valuesAtIndexes:v10 forKey:@"albums"];
      [(NSMutableOrderedSet *)self->_allAlbums removeObjectsAtIndexes:v10];
      [(PLAggregateAlbumList *)self didChange:3 valuesAtIndexes:v10 forKey:@"albums"];
    }

    v11 = [v8 insertedIndexes];

    if ([v11 count])
    {
      [(PLAggregateAlbumList *)self willChange:2 valuesAtIndexes:v11 forKey:@"albums"];
      allAlbums = self->_allAlbums;
      v13 = [v8 insertedObjects];
      [(NSMutableOrderedSet *)allAlbums insertObjects:v13 atIndexes:v11];

      [(PLAggregateAlbumList *)self didChange:2 valuesAtIndexes:v11 forKey:@"albums"];
    }

    v14 = [v8 changedIndexes];

    if ([v14 count])
    {
      [(PLAggregateAlbumList *)self willChange:1 valuesAtIndexes:v14 forKey:@"albums"];
      [(PLAggregateAlbumList *)self didChange:1 valuesAtIndexes:v14 forKey:@"albums"];
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = +[PLChangeNotificationCenter defaultCenter];
  [v15 enqueueNotification:v8];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);
}

void __52__PLAggregateAlbumList_assetContainerListDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) == a2)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [a2 albums];
    *(*(*(a1 + 40) + 8) + 24) += [v6 count];
  }
}

- (void)_invalidateAllAlbums
{
  allAlbums = self->_allAlbums;
  self->_allAlbums = 0;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PLChangeNotificationCenter defaultCenter];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_childAlbumLists;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeAssetContainerListChangeObserver:self containerList:*(*(&v12 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  childAlbumLists = self->_childAlbumLists;
  self->_childAlbumLists = 0;

  allAlbums = self->_allAlbums;
  self->_allAlbums = 0;

  v11.receiver = self;
  v11.super_class = PLAggregateAlbumList;
  [(PLAggregateAlbumList *)&v11 dealloc];
}

- (PLAggregateAlbumList)initWithFilter:(int)a3 inPhotoLibrary:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v17.receiver = self;
  v17.super_class = PLAggregateAlbumList;
  v7 = [(PLAggregateAlbumList *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    childAlbumLists = v7->_childAlbumLists;
    v7->_childAlbumLists = v8;

    [(PLAggregateAlbumList *)v7 setFilter:v4];
    v10 = +[PLChangeNotificationCenter defaultCenter];
    v11 = 0;
    while (1)
    {
      v12 = __albumListTypes[v11];
      if (v12 <= 2)
      {
        if (!__albumListTypes[v11])
        {
          v13 = [PLManagedAlbumList albumListInPhotoLibrary:v6];
          goto LABEL_19;
        }

        if (v12 == 1)
        {
          v13 = [PLManagedAlbumList eventListInPhotoLibrary:v6];
LABEL_19:
          v14 = v13;
          if (v13)
          {
            v15 = [PLFilteredAlbumList filteredAlbumList:v13 filter:v4];
            [(NSMutableOrderedSet *)v7->_childAlbumLists addObject:v15];
            [v10 addAssetContainerListChangeObserver:v7 containerList:v15];
          }

          goto LABEL_21;
        }

        if (v12 == 2)
        {
          v13 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:v6];
          goto LABEL_19;
        }
      }

      else if (__albumListTypes[v11] > 6u)
      {
        if (v12 == 7)
        {
          v13 = [PLManagedAlbumList importListInPhotoLibrary:v6];
          goto LABEL_19;
        }

        if (v12 == 10)
        {
          v13 = [PLManagedAlbumList scenesAlbumListInPhotoLibrary:v6];
          goto LABEL_19;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = [PLManagedAlbumList placesAlbumListInPhotoLibrary:v6];
          goto LABEL_19;
        }

        if (v12 == 4)
        {
          v13 = [PLManagedAlbumList allStreamedAlbumsListInPhotoLibrary:v6];
          goto LABEL_19;
        }
      }

LABEL_21:
      if (++v11 == 5)
      {

        break;
      }
    }
  }

  return v7;
}

+ (PLAggregateAlbumList)albumListWithFilter:(int)a3 inPhotoLibrary:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [[a1 alloc] initWithFilter:v4 inPhotoLibrary:v6];

  return v7;
}

@end