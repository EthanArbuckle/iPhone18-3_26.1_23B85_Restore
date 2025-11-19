@interface PLSortedAlbumList
- (BOOL)albumHasFixedOrder:(id)a3;
- (BOOL)canEditAlbums;
- (BOOL)hasAtLeastOneAlbum;
- (BOOL)isFolder;
- (BOOL)mappedDataSourceChanged:(id)a3 remoteNotificationData:(id)a4;
- (BOOL)needsReordering;
- (NSMutableOrderedSet)_albums;
- (NSObject)cachedIndexMapState;
- (NSString)_typeDescription;
- (PLSortedAlbumList)initWithAlbumList:(id)a3 sortComparator:(id)a4;
- (id)albums;
- (id)albumsSortingComparator;
- (id)managedObjectContext;
- (id)objectInSortedAlbumsAtIndex:(unint64_t)a3;
- (id)photoLibrary;
- (int)filter;
- (signed)albumListType;
- (unint64_t)albumsCount;
- (unint64_t)indexInSortedAlbumsOfObject:(id)a3;
- (unint64_t)unreadAlbumsCount;
- (void)createSortedIndexesMap;
- (void)dealloc;
- (void)insertObject:(id)a3 inSortedAlbumsAtIndex:(unint64_t)a4;
- (void)preheatAlbumsAtIndexes:(id)a3 forProperties:(id)a4 relationships:(id)a5;
- (void)preheatAlbumsForProperties:(id)a3 relationships:(id)a4;
- (void)removeObjectFromSortedAlbumsAtIndex:(unint64_t)a3;
- (void)replaceObjectInSortedAlbumsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)setNeedsReordering;
- (void)updateAlbumsOrderIfNeeded;
@end

@implementation PLSortedAlbumList

- (BOOL)mappedDataSourceChanged:(id)a3 remoteNotificationData:(id)a4
{
  [(PLSortedAlbumList *)self set_albums:0, a4];
  toBackingMap = self->_toBackingMap;
  if (toBackingMap)
  {
    CFRelease(toBackingMap);
    self->_toBackingMap = 0;
  }

  fromBackingMap = self->_fromBackingMap;
  if (fromBackingMap)
  {
    CFRelease(fromBackingMap);
    self->_fromBackingMap = 0;
  }

  return 1;
}

- (NSObject)cachedIndexMapState
{
  fromBackingMap = self->_fromBackingMap;
  if (fromBackingMap)
  {
    v3 = fromBackingMap;
  }

  return fromBackingMap;
}

- (void)replaceObjectInSortedAlbumsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = backingIndexForIndex(self, a3);
  v9 = [(PLSortedAlbumList *)self backingAlbumList];
  v8 = [v9 albums];
  [v8 replaceObjectAtIndex:v7 withObject:v6];
}

- (void)removeObjectFromSortedAlbumsAtIndex:(unint64_t)a3
{
  v4 = backingIndexForIndex(self, a3);
  v6 = [(PLSortedAlbumList *)self backingAlbumList];
  v5 = [v6 albums];
  [v5 removeObjectAtIndex:v4];
}

- (void)insertObject:(id)a3 inSortedAlbumsAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = backingIndexForIndex(self, a4);
  v9 = [(PLSortedAlbumList *)self backingAlbumList];
  v8 = [v9 albums];
  [v8 insertObject:v6 atIndex:v7];
}

- (id)objectInSortedAlbumsAtIndex:(unint64_t)a3
{
  v4 = backingIndexForIndex(self, a3);
  v5 = [(PLSortedAlbumList *)self backingAlbumList];
  v6 = [v5 albums];
  v7 = [v6 objectAtIndex:v4];

  return v7;
}

- (unint64_t)indexInSortedAlbumsOfObject:(id)a3
{
  v4 = a3;
  v5 = [(PLSortedAlbumList *)self backingAlbumList];
  v6 = [v5 albums];
  v7 = [v6 indexOfObject:v4];

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = self;
    [(PLSortedAlbumList *)v9 createSortedIndexesMap];
    fromBackingMap = v9->_fromBackingMap;

    if (fromBackingMap)
    {
      return CFArrayGetValueAtIndex(fromBackingMap, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NSMutableOrderedSet)_albums
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_albums);

  return WeakRetained;
}

- (void)createSortedIndexesMap
{
  if (!self->_toBackingMap)
  {
    v28 = v2;
    v29 = v3;
    v6 = [(PLSortedAlbumList *)self albumsCount];
    if (v6)
    {
      v7 = v6;
      v8 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
      v9 = v8;
      v10 = 0;
      v11 = xmmword_19C609D60;
      v12 = vdupq_n_s64(v7 - 1);
      v13 = vdupq_n_s64(2uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, v11));
        if (v14.i8[0])
        {
          v8[v10] = v10;
        }

        if (v14.i8[4])
        {
          v8[v10 + 1] = (v10 + 1);
        }

        v10 += 2;
        v11 = vaddq_s64(v11, v13);
      }

      while (((v7 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
      v15 = [(PLSortedAlbumList *)self backingAlbumList];
      v16 = [v15 albums];
      v17 = [v16 array];

      v18 = [(PLSortedAlbumList *)self sortComparator];
      if (v18)
      {
        v19 = [v17 sortedArrayWithOptions:16 usingComparator:v18];
      }

      else
      {
        v19 = v17;
      }

      v20 = v19;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __43__PLSortedAlbumList_createSortedIndexesMap__block_invoke;
      v23[3] = &unk_1E7574CB0;
      v21 = v17;
      v24 = v21;
      v25 = self;
      v26 = a2;
      v27 = v9;
      [v20 enumerateObjectsUsingBlock:v23];
      v22 = 0;
      self->_toBackingMap = CFArrayCreate(0, v9, v7, 0);
      do
      {
        v9[CFArrayGetValueAtIndex(self->_toBackingMap, v22)] = v22;
        ++v22;
      }

      while (v7 != v22);
      self->_fromBackingMap = CFArrayCreate(0, v9, v7, 0);
      free(v9);
    }
  }
}

void __43__PLSortedAlbumList_createSortedIndexesMap__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) indexOfObjectIdenticalTo:a2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PLSortedAlbumList.m" lineNumber:253 description:&stru_1F0F06D80];
  }

  *(*(a1 + 56) + 8 * a3) = v5;
}

- (NSString)_typeDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLSortedAlbumList *)self backingAlbumList];
  v7 = [v6 _typeDescription];
  v8 = [v3 stringWithFormat:@"%@\nBacking album list = %@", v5, v7];

  return v8;
}

- (id)photoLibrary
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 photoLibrary];

  return v3;
}

- (void)preheatAlbumsAtIndexes:(id)a3 forProperties:(id)a4 relationships:(id)a5
{
  v8 = MEMORY[0x1E696AD50];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__PLSortedAlbumList_preheatAlbumsAtIndexes_forProperties_relationships___block_invoke;
  v18 = &unk_1E7576388;
  v19 = self;
  v20 = v12;
  v13 = v12;
  [v11 enumerateIndexesUsingBlock:&v15];

  v14 = [(PLSortedAlbumList *)self backingAlbumList:v15];
  [v14 preheatAlbumsAtIndexes:v13 forProperties:v10 relationships:v9];
}

uint64_t __72__PLSortedAlbumList_preheatAlbumsAtIndexes_forProperties_relationships___block_invoke(uint64_t a1, CFIndex a2)
{
  v3 = backingIndexForIndex(*(a1 + 32), a2);
  v4 = *(a1 + 40);

  return [v4 addIndex:v3];
}

- (void)preheatAlbumsForProperties:(id)a3 relationships:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLSortedAlbumList *)self backingAlbumList];
  [v8 preheatAlbumsForProperties:v7 relationships:v6];
}

- (void)updateAlbumsOrderIfNeeded
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  [v2 updateAlbumsOrderIfNeeded];
}

- (BOOL)needsReordering
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 needsReordering];

  return v3;
}

- (void)setNeedsReordering
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  [v2 setNeedsReordering];
}

- (id)albumsSortingComparator
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 albumsSortingComparator];

  return v3;
}

- (BOOL)albumHasFixedOrder:(id)a3
{
  v4 = a3;
  v5 = [(PLSortedAlbumList *)self backingAlbumList];
  v6 = [v5 albumHasFixedOrder:v4];

  return v6;
}

- (BOOL)isFolder
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 isFolder];

  return v3;
}

- (BOOL)canEditAlbums
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 canEditAlbums];

  return v3;
}

- (signed)albumListType
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 albumListType];

  return v3;
}

- (id)managedObjectContext
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (unint64_t)unreadAlbumsCount
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 unreadAlbumsCount];

  return v3;
}

- (BOOL)hasAtLeastOneAlbum
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 hasAtLeastOneAlbum];

  return v3;
}

- (int)filter
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 filter];

  return v3;
}

- (unint64_t)albumsCount
{
  v2 = [(PLSortedAlbumList *)self backingAlbumList];
  v3 = [v2 albums];
  v4 = [v3 count];

  return v4;
}

- (id)albums
{
  v3 = [(PLSortedAlbumList *)self _albums];

  if (!v3)
  {
    v4 = [(PLSortedAlbumList *)self mutableOrderedSetValueForKey:@"sortedAlbums"];
    [(PLSortedAlbumList *)self set_albums:v4];
  }

  return [(PLSortedAlbumList *)self _albums];
}

- (void)dealloc
{
  toBackingMap = self->_toBackingMap;
  if (toBackingMap)
  {
    CFRelease(toBackingMap);
  }

  fromBackingMap = self->_fromBackingMap;
  if (fromBackingMap)
  {
    CFRelease(fromBackingMap);
  }

  sortComparator = self->_sortComparator;
  self->_sortComparator = 0;

  v6.receiver = self;
  v6.super_class = PLSortedAlbumList;
  [(PLSortedAlbumList *)&v6 dealloc];
}

- (PLSortedAlbumList)initWithAlbumList:(id)a3 sortComparator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PLSortedAlbumList;
  v8 = [(PLSortedAlbumList *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(PLSortedAlbumList *)v8 setBackingAlbumList:v6];
    [(PLSortedAlbumList *)v9 setSortComparator:v7];
    v10 = [(PLSortedAlbumList *)v9 backingAlbumList];
    v11 = [v10 conformsToProtocol:&unk_1F100DBA8];

    if (v11)
    {
      v12 = [(PLSortedAlbumList *)v9 backingAlbumList];
      [v12 registerDerivedAlbumList:v9];
    }
  }

  return v9;
}

@end