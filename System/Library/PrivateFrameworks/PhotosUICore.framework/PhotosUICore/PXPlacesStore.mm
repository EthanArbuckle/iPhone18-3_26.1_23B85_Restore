@interface PXPlacesStore
- ($3BFE36E7F21C9C4470F2C816F6078BCC)minimalEncompassingMapRect;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)rect;
- (NSSet)allItems;
- (PXPlacesStore)initWithCapacityPerNode:(unint64_t)node;
- (id)_findItemsInMapRect:(id)rect;
- (id)findItemsInMapRect:(id)rect;
- (void)_commitChanges;
- (void)addItem:(id)item;
- (void)addItems:(id)items;
- (void)addItemsFromArray:(id)array;
- (void)dealloc;
- (void)endUpdates;
- (void)removeItem:(id)item;
- (void)removeItems:(id)items;
@end

@implementation PXPlacesStore

- ($3BFE36E7F21C9C4470F2C816F6078BCC)rect
{
  objc_copyStruct(v6, &self->_rect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)minimalEncompassingMapRect
{
  pthread_rwlock_rdlock(&self->_rwlock);
  numberOfItems = [(PXPlacesStore *)self numberOfItems];
  v4 = malloc_type_malloc(16 * numberOfItems, 0x1000040451B5BE8uLL);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  rootNode = self->_rootNode;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__PXPlacesStore_minimalEncompassingMapRect__block_invoke;
  v21[3] = &unk_1E7738390;
  v21[4] = v22;
  v21[5] = v4;
  PXQuadTreeNodeRunCollector(rootNode, v21);
  if (numberOfItems == 1)
  {
    v6 = *v4;
    v7 = v4[1];
    v8 = 0.0;
    v9 = 0.0;
  }

  else if (numberOfItems < 2)
  {
    v6 = *MEMORY[0x1E696F0D0];
    v7 = *(MEMORY[0x1E696F0D0] + 8);
    v9 = *(MEMORY[0x1E696F0D0] + 16);
    v8 = *(MEMORY[0x1E696F0D0] + 24);
  }

  else
  {
    qsort(v4, numberOfItems, 0x10uLL, mapPointComparator);
    v10 = *(MEMORY[0x1E696F0D8] + 16);
    v11 = v4 + 2;
    v6 = 0.0;
    v12 = -3.40282347e38;
    v7 = 3.40282347e38;
    v13 = 0.0;
    do
    {
      v14 = *(v11 - 1);
      if (--numberOfItems)
      {
        v15 = v11;
      }

      else
      {
        v15 = v4;
      }

      v16 = *v15 - *(v11 - 2);
      if (!numberOfItems)
      {
        v16 = v16 + v10;
      }

      if (v16 > v13)
      {
        v13 = v16;
        v6 = *v15;
      }

      if (v14 > v12)
      {
        v12 = *(v11 - 1);
      }

      if (v14 < v7)
      {
        v7 = *(v11 - 1);
      }

      v11 += 2;
    }

    while (numberOfItems);
    v9 = v10 - v13;
    v8 = v12 - v7;
  }

  free(v4);
  pthread_rwlock_unlock(&self->_rwlock);
  _Block_object_dispose(v22, 8);
  v17 = v6;
  v18 = v7;
  v19 = v9;
  v20 = v8;
  result.var1.var1 = v20;
  result.var1.var0 = v19;
  result.var0.var1 = v18;
  result.var0.var0 = v17;
  return result;
}

void *__43__PXPlacesStore_minimalEncompassingMapRect__block_invoke(void *result, int a2, uint64_t a3, int a4, void *__src)
{
  if (a3)
  {
    v6 = result;
    result = memcpy((result[5] + 16 * *(*(result[4] + 8) + 24)), __src, 16 * a3);
    *(*(v6[4] + 8) + 24) += a3;
  }

  return result;
}

- (id)_findItemsInMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__PXPlacesStore__findItemsInMapRect___block_invoke;
  v10[3] = &unk_1E7738368;
  v10[4] = v8;
  PXQuadTreeNodeFindItemsInRect(self->_rootNode, v10, v6, v5, var0, var1);
  return v8;
}

- (id)findItemsInMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  pthread_rwlock_rdlock(&self->_rwlock);
  Log = PKPlacesKitGetLog();
  v9 = os_signpost_id_generate(Log);
  v10 = PKPlacesKitGetLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PX_PLACES_STORE_QUERY", "", buf, 2u);
  }

  v28.origin.x = v6;
  v28.origin.y = v5;
  v28.size.width = var0;
  v28.size.height = var1;
  if (MKMapRectSpans180thMeridian(v28))
  {
    v29.origin.x = v6;
    v29.origin.y = v5;
    v29.size.width = var0;
    v29.size.height = var1;
    v30 = MKMapRectIntersection(v29, *MEMORY[0x1E696F0D8]);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v30.origin.x = v6;
    v30.origin.y = v5;
    v30.size.width = var0;
    v30.size.height = var1;
    v31 = MKMapRectRemainder(v30);
    v16 = v31.origin.x;
    v17 = v31.origin.y;
    v18 = v31.size.width;
    v19 = v31.size.height;
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    height = [(PXPlacesStore *)self _findItemsInMapRect:x, y, width, height];
    v22 = [(PXPlacesStore *)self _findItemsInMapRect:v16, v17, v18, v19];
    [v20 unionSet:height];
    [v20 unionSet:v22];
    var1 = v20;
  }

  else
  {
    var1 = [(PXPlacesStore *)self _findItemsInMapRect:v6, v5, var0, var1];
  }

  v24 = var1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v9, "PX_PLACES_STORE_QUERY", "", v26, 2u);
  }

  pthread_rwlock_unlock(&self->_rwlock);
  return v24;
}

- (NSSet)allItems
{
  [(PXPlacesStore *)self rect];

  return [(PXPlacesStore *)self findItemsInMapRect:?];
}

- (void)_commitChanges
{
  v58 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->_rwlock);
  dispatch_semaphore_wait(self->_itemChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = PKPlacesKitGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = PKPlacesKitGetLog();
  v6 = v5;
  v39 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PX_PLACES_STORE_LOAD", "", buf, 2u);
  }

  log = v6;
  spid = v4;
  itemsToAdd = [(PXPlacesStore *)self itemsToAdd];
  itemsToRemove = [(PXPlacesStore *)self itemsToRemove];
  itemsToAddArray = [(PXPlacesStore *)self itemsToAddArray];
  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [MEMORY[0x1E695DFA8] set];
  *buf = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = [(NSMutableSet *)itemsToRemove countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(itemsToRemove);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        [v16 coordinate];
        latitude = v59.latitude;
        longitude = v59.longitude;
        if (CLLocationCoordinate2DIsValid(v59))
        {
          v60.latitude = latitude;
          v60.longitude = longitude;
          v19 = MKMapPointForCoordinate(v60);
          if (PXQuadTreeNodeRemoveItem(self->_rootNode, v16, buf, v19.x, v19.y))
          {
            [v10 addObject:v16];
          }
        }
      }

      v13 = [(NSMutableSet *)itemsToRemove countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v13);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = [(NSMutableSet *)itemsToAdd countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(itemsToAdd);
        }

        v24 = *(*(&v46 + 1) + 8 * j);
        [v24 coordinate];
        v25 = v61.latitude;
        v26 = v61.longitude;
        if (CLLocationCoordinate2DIsValid(v61))
        {
          v62.latitude = v25;
          v62.longitude = v26;
          v27 = MKMapPointForCoordinate(v62);
          if (PXQuadTreeNodeInsertItem(self->_rootNode, v24, v27.x, v27.y))
          {
            [v11 addObject:v24];
          }
        }
      }

      v21 = [(NSMutableSet *)itemsToAdd countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v21);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = [(NSMutableArray *)itemsToAddArray countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v43;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(itemsToAddArray);
        }

        v32 = *(*(&v42 + 1) + 8 * k);
        [v32 coordinate];
        v33 = v63.latitude;
        v34 = v63.longitude;
        if (CLLocationCoordinate2DIsValid(v63))
        {
          v64.latitude = v33;
          v64.longitude = v34;
          v35 = MKMapPointForCoordinate(v64);
          if (PXQuadTreeNodeInsertItem(self->_rootNode, v32, v35.x, v35.y))
          {
            [v11 addObject:v32];
          }
        }
      }

      v29 = [(NSMutableArray *)itemsToAddArray countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v29);
  }

  self->_numberOfItems -= *buf;
  self->_numberOfItems += [v11 count];
  [(NSMutableSet *)itemsToAdd removeAllObjects];
  [(NSMutableSet *)itemsToRemove removeAllObjects];
  [(NSMutableArray *)itemsToAddArray removeAllObjects];
  dispatch_semaphore_signal(self->_itemChangeSemaphore);
  pthread_rwlock_unlock(&self->_rwlock);
  if ([(PXPlacesStore *)self delegate])
  {
    if ([v10 count])
    {
      v36 = [v11 mutableCopy];
      [v36 intersectSet:v10];
      [v11 minusSet:v36];
      [v10 minusSet:v36];
    }

    else
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v37 = [[_PXMapStoreChange alloc] initWithAddedItems:v11 removedItems:v10 updatedItems:v36];

    [(PXPlacesGeotaggedItemDataSourceDelegate *)[(PXPlacesStore *)self delegate] dataSource:self didChange:v37];
  }

  if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
  {
    *v41 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, log, OS_SIGNPOST_INTERVAL_END, spid, "PX_PLACES_STORE_LOAD", "", v41, 2u);
  }
}

- (void)removeItems:(id)items
{
  if (!items)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  dispatch_semaphore_wait(self->_itemChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableSet *)[(PXPlacesStore *)self itemsToRemove] unionSet:items];
  dispatch_semaphore_signal(self->_itemChangeSemaphore);
  if (!atomic_load(&self->_updateCount))
  {

    [(PXPlacesStore *)self _commitChanges];
  }
}

- (void)removeItem:(id)item
{
  if (!item)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  dispatch_semaphore_wait(self->_itemChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableSet *)[(PXPlacesStore *)self itemsToRemove] addObject:item];
  dispatch_semaphore_signal(self->_itemChangeSemaphore);
  if (!atomic_load(&self->_updateCount))
  {

    [(PXPlacesStore *)self _commitChanges];
  }
}

- (void)addItemsFromArray:(id)array
{
  if (!array)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  dispatch_semaphore_wait(self->_itemChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)[(PXPlacesStore *)self itemsToAddArray] addObjectsFromArray:array];
  dispatch_semaphore_signal(self->_itemChangeSemaphore);
  if (!atomic_load(&self->_updateCount))
  {

    [(PXPlacesStore *)self _commitChanges];
  }
}

- (void)addItems:(id)items
{
  if (!items)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  dispatch_semaphore_wait(self->_itemChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableSet *)[(PXPlacesStore *)self itemsToAdd] unionSet:items];
  dispatch_semaphore_signal(self->_itemChangeSemaphore);
  if (!atomic_load(&self->_updateCount))
  {

    [(PXPlacesStore *)self _commitChanges];
  }
}

- (void)addItem:(id)item
{
  if (!item)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  dispatch_semaphore_wait(self->_itemChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableSet *)[(PXPlacesStore *)self itemsToAdd] addObject:item];
  dispatch_semaphore_signal(self->_itemChangeSemaphore);
  if (!atomic_load(&self->_updateCount))
  {

    [(PXPlacesStore *)self _commitChanges];
  }
}

- (void)endUpdates
{
  p_updateCount = &self->_updateCount;
  v4 = atomic_load(&self->_updateCount);
  if (v4 <= 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (atomic_fetch_add(p_updateCount, 0xFFFFFFFF) == 1)
  {

    [(PXPlacesStore *)self _commitChanges];
  }
}

- (void)dealloc
{
  PXQuadTreeNodeFree(self->_rootNode);
  pthread_rwlock_destroy(&self->_rwlock);
  dispatch_release(self->_itemChangeSemaphore);
  v3.receiver = self;
  v3.super_class = PXPlacesStore;
  [(PXPlacesStore *)&v3 dealloc];
}

- (PXPlacesStore)initWithCapacityPerNode:(unint64_t)node
{
  v9.receiver = self;
  v9.super_class = PXPlacesStore;
  v4 = [(PXPlacesStore *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696F0D8];
    v7 = *(MEMORY[0x1E696F0D8] + 16);
    *(v4 + 280) = *MEMORY[0x1E696F0D8];
    *(v4 + 296) = v7;
    *(v4 + 31) = node;
    *(v4 + 1) = PXQuadTreeNodeMake(node, *v6, v6[1], v6[2], v6[3]);
    v5->_itemsToAdd = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5->_itemsToAddArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_itemsToRemove = objc_alloc_init(MEMORY[0x1E695DFA8]);
    atomic_store(0, &v5->_updateCount);
    pthread_rwlock_init(&v5->_rwlock, 0);
    v5->_itemChangeSemaphore = dispatch_semaphore_create(1);
  }

  return v5;
}

@end