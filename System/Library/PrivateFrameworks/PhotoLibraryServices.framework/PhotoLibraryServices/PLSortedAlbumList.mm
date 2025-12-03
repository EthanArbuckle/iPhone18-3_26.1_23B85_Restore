@interface PLSortedAlbumList
- (BOOL)albumHasFixedOrder:(id)order;
- (BOOL)canEditAlbums;
- (BOOL)hasAtLeastOneAlbum;
- (BOOL)isFolder;
- (BOOL)mappedDataSourceChanged:(id)changed remoteNotificationData:(id)data;
- (BOOL)needsReordering;
- (NSMutableOrderedSet)_albums;
- (NSObject)cachedIndexMapState;
- (NSString)_typeDescription;
- (PLSortedAlbumList)initWithAlbumList:(id)list sortComparator:(id)comparator;
- (id)albums;
- (id)albumsSortingComparator;
- (id)managedObjectContext;
- (id)objectInSortedAlbumsAtIndex:(unint64_t)index;
- (id)photoLibrary;
- (int)filter;
- (signed)albumListType;
- (unint64_t)albumsCount;
- (unint64_t)indexInSortedAlbumsOfObject:(id)object;
- (unint64_t)unreadAlbumsCount;
- (void)createSortedIndexesMap;
- (void)dealloc;
- (void)insertObject:(id)object inSortedAlbumsAtIndex:(unint64_t)index;
- (void)preheatAlbumsAtIndexes:(id)indexes forProperties:(id)properties relationships:(id)relationships;
- (void)preheatAlbumsForProperties:(id)properties relationships:(id)relationships;
- (void)removeObjectFromSortedAlbumsAtIndex:(unint64_t)index;
- (void)replaceObjectInSortedAlbumsAtIndex:(unint64_t)index withObject:(id)object;
- (void)setNeedsReordering;
- (void)updateAlbumsOrderIfNeeded;
@end

@implementation PLSortedAlbumList

- (BOOL)mappedDataSourceChanged:(id)changed remoteNotificationData:(id)data
{
  [(PLSortedAlbumList *)self set_albums:0, data];
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

- (void)replaceObjectInSortedAlbumsAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  v7 = backingIndexForIndex(self, index);
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albums = [backingAlbumList albums];
  [albums replaceObjectAtIndex:v7 withObject:objectCopy];
}

- (void)removeObjectFromSortedAlbumsAtIndex:(unint64_t)index
{
  v4 = backingIndexForIndex(self, index);
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albums = [backingAlbumList albums];
  [albums removeObjectAtIndex:v4];
}

- (void)insertObject:(id)object inSortedAlbumsAtIndex:(unint64_t)index
{
  objectCopy = object;
  v7 = backingIndexForIndex(self, index);
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albums = [backingAlbumList albums];
  [albums insertObject:objectCopy atIndex:v7];
}

- (id)objectInSortedAlbumsAtIndex:(unint64_t)index
{
  v4 = backingIndexForIndex(self, index);
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albums = [backingAlbumList albums];
  v7 = [albums objectAtIndex:v4];

  return v7;
}

- (unint64_t)indexInSortedAlbumsOfObject:(id)object
{
  objectCopy = object;
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albums = [backingAlbumList albums];
  v7 = [albums indexOfObject:objectCopy];

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
    [(PLSortedAlbumList *)selfCopy createSortedIndexesMap];
    fromBackingMap = selfCopy->_fromBackingMap;

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
    albumsCount = [(PLSortedAlbumList *)self albumsCount];
    if (albumsCount)
    {
      v7 = albumsCount;
      v8 = malloc_type_malloc(8 * albumsCount, 0x100004000313F17uLL);
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
      backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
      albums = [backingAlbumList albums];
      array = [albums array];

      sortComparator = [(PLSortedAlbumList *)self sortComparator];
      if (sortComparator)
      {
        v19 = [array sortedArrayWithOptions:16 usingComparator:sortComparator];
      }

      else
      {
        v19 = array;
      }

      v20 = v19;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __43__PLSortedAlbumList_createSortedIndexesMap__block_invoke;
      v23[3] = &unk_1E7574CB0;
      v21 = array;
      v24 = v21;
      selfCopy = self;
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
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  _typeDescription = [backingAlbumList _typeDescription];
  v8 = [v3 stringWithFormat:@"%@\nBacking album list = %@", v5, _typeDescription];

  return v8;
}

- (id)photoLibrary
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  photoLibrary = [backingAlbumList photoLibrary];

  return photoLibrary;
}

- (void)preheatAlbumsAtIndexes:(id)indexes forProperties:(id)properties relationships:(id)relationships
{
  v8 = MEMORY[0x1E696AD50];
  relationshipsCopy = relationships;
  propertiesCopy = properties;
  indexesCopy = indexes;
  v12 = objc_alloc_init(v8);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__PLSortedAlbumList_preheatAlbumsAtIndexes_forProperties_relationships___block_invoke;
  v18 = &unk_1E7576388;
  selfCopy = self;
  v20 = v12;
  v13 = v12;
  [indexesCopy enumerateIndexesUsingBlock:&v15];

  v14 = [(PLSortedAlbumList *)self backingAlbumList:v15];
  [v14 preheatAlbumsAtIndexes:v13 forProperties:propertiesCopy relationships:relationshipsCopy];
}

uint64_t __72__PLSortedAlbumList_preheatAlbumsAtIndexes_forProperties_relationships___block_invoke(uint64_t a1, CFIndex a2)
{
  v3 = backingIndexForIndex(*(a1 + 32), a2);
  v4 = *(a1 + 40);

  return [v4 addIndex:v3];
}

- (void)preheatAlbumsForProperties:(id)properties relationships:(id)relationships
{
  relationshipsCopy = relationships;
  propertiesCopy = properties;
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  [backingAlbumList preheatAlbumsForProperties:propertiesCopy relationships:relationshipsCopy];
}

- (void)updateAlbumsOrderIfNeeded
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  [backingAlbumList updateAlbumsOrderIfNeeded];
}

- (BOOL)needsReordering
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  needsReordering = [backingAlbumList needsReordering];

  return needsReordering;
}

- (void)setNeedsReordering
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  [backingAlbumList setNeedsReordering];
}

- (id)albumsSortingComparator
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albumsSortingComparator = [backingAlbumList albumsSortingComparator];

  return albumsSortingComparator;
}

- (BOOL)albumHasFixedOrder:(id)order
{
  orderCopy = order;
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  v6 = [backingAlbumList albumHasFixedOrder:orderCopy];

  return v6;
}

- (BOOL)isFolder
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  isFolder = [backingAlbumList isFolder];

  return isFolder;
}

- (BOOL)canEditAlbums
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  canEditAlbums = [backingAlbumList canEditAlbums];

  return canEditAlbums;
}

- (signed)albumListType
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albumListType = [backingAlbumList albumListType];

  return albumListType;
}

- (id)managedObjectContext
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  managedObjectContext = [backingAlbumList managedObjectContext];

  return managedObjectContext;
}

- (unint64_t)unreadAlbumsCount
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  unreadAlbumsCount = [backingAlbumList unreadAlbumsCount];

  return unreadAlbumsCount;
}

- (BOOL)hasAtLeastOneAlbum
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  hasAtLeastOneAlbum = [backingAlbumList hasAtLeastOneAlbum];

  return hasAtLeastOneAlbum;
}

- (int)filter
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  filter = [backingAlbumList filter];

  return filter;
}

- (unint64_t)albumsCount
{
  backingAlbumList = [(PLSortedAlbumList *)self backingAlbumList];
  albums = [backingAlbumList albums];
  v4 = [albums count];

  return v4;
}

- (id)albums
{
  _albums = [(PLSortedAlbumList *)self _albums];

  if (!_albums)
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

- (PLSortedAlbumList)initWithAlbumList:(id)list sortComparator:(id)comparator
{
  listCopy = list;
  comparatorCopy = comparator;
  v14.receiver = self;
  v14.super_class = PLSortedAlbumList;
  v8 = [(PLSortedAlbumList *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(PLSortedAlbumList *)v8 setBackingAlbumList:listCopy];
    [(PLSortedAlbumList *)v9 setSortComparator:comparatorCopy];
    backingAlbumList = [(PLSortedAlbumList *)v9 backingAlbumList];
    v11 = [backingAlbumList conformsToProtocol:&unk_1F100DBA8];

    if (v11)
    {
      backingAlbumList2 = [(PLSortedAlbumList *)v9 backingAlbumList];
      [backingAlbumList2 registerDerivedAlbumList:v9];
    }
  }

  return v9;
}

@end