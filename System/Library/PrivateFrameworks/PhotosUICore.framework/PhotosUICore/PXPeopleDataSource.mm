@interface PXPeopleDataSource
- (NSArray)persons;
- (PXPeopleDataSource)initWithName:(id)name objects:(id)objects;
- (PXPeopleDataSource)initWithName:(id)name objectsReloadBlock:(id)block asynchronousLoad:(BOOL)load callbackDelegate:(id)delegate;
- (PXPeopleDataSourceDelegate)delegate;
- (id)_itemsArrayFromObjects:(id)objects;
- (id)localizedTitle;
- (id)memberAtIndex:(unint64_t)index;
- (id)personAtIndex:(unint64_t)index;
- (id)titleAtIndex:(unint64_t)index;
- (unint64_t)numberOfMembers;
- (unint64_t)photoQuantityAtIndex:(unint64_t)index;
- (void)_asyncLoadImageForItem:(id)item targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
- (void)_updateMembers;
- (void)dealloc;
- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
- (void)loadObjectsAndUpdateMembersWithCompletion:(id)completion;
- (void)setFilterPredicate:(id)predicate;
- (void)setObjects:(id)objects;
- (void)setReloadBlock:(id)block;
- (void)setSortComparator:(id)comparator;
@end

@implementation PXPeopleDataSource

- (PXPeopleDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_asyncLoadImageForItem:(id)item targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  if (handler)
  {
    v7 = MEMORY[0x1E696ABC0];
    handlerCopy = handler;
    v9 = [v7 px_genericErrorWithDebugDescription:{@"Self isn't subclassed, returning a nil image: %@", self}];
    handlerCopy[2](handlerCopy, 0, v9, *off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
  }
}

- (id)_itemsArrayFromObjects:(id)objects
{
  v19 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PXPersonItem alloc];
        v12 = [(PXPersonItem *)v11 initWithPerson:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateMembers
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PXPeopleDataSource__updateMembers__block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  reloadQueue = [(PXPeopleDataSource *)self reloadQueue];
  if (!reloadQueue || (label = dispatch_queue_get_label(0)) != 0 && !strcmp(label, "com.apple.Photos.PeopleDataSourceReloadQueue"))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(reloadQueue, v3);
  }
}

void __36__PXPeopleDataSource__updateMembers__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) objects];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v12 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = [*(a1 + 32) filterPredicate];
  if (v8)
  {
    [v2 filterUsingPredicate:v8];
  }

  v9 = [*(a1 + 32) _itemsArrayFromObjects:v2];
  v10 = [*(a1 + 32) sortComparator];
  if (v10)
  {
    v11 = [v9 sortedArrayUsingComparator:v10];

    v9 = v11;
  }

  [*(a1 + 32) setMembers:v9];
}

- (void)loadObjectsAndUpdateMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  reloadQueue = [(PXPeopleDataSource *)self reloadQueue];
  if (reloadQueue)
  {
    if ([(PXPeopleDataSource *)self useAsynchronousLoad])
    {
      v6 = MEMORY[0x1E69E9750];
    }

    else
    {
      v6 = MEMORY[0x1E69E97D0];
    }

    reloadBlock = [(PXPeopleDataSource *)self reloadBlock];
    v8 = reloadBlock;
    if (reloadBlock)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__PXPeopleDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke;
      v12[3] = &unk_1E7744FE0;
      v12[4] = self;
      v9 = &v13;
      v13 = reloadBlock;
      v14 = completionCopy;
      v6(reloadQueue, v12);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__PXPeopleDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke_2;
      v10[3] = &unk_1E774C2F0;
      v10[4] = self;
      v9 = &v11;
      v11 = completionCopy;
      v6(reloadQueue, v10);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __64__PXPeopleDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[5] + 16))();
  [v2 setObjects:v3];

  result = a1[6];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __64__PXPeopleDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateMembers];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setFilterPredicate:(id)predicate
{
  objc_storeStrong(&self->_filterPredicate, predicate);

  [(PXPeopleDataSource *)self _updateMembers];
}

- (void)setSortComparator:(id)comparator
{
  v4 = _Block_copy(comparator);
  sortComparator = self->_sortComparator;
  self->_sortComparator = v4;

  [(PXPeopleDataSource *)self _updateMembers];
}

- (void)setReloadBlock:(id)block
{
  v4 = _Block_copy(block);
  reloadBlock = self->_reloadBlock;
  self->_reloadBlock = v4;
}

- (void)setObjects:(id)objects
{
  objc_storeStrong(&self->_objects, objects);

  [(PXPeopleDataSource *)self _updateMembers];
}

- (id)localizedTitle
{
  if ([(PXPeopleDataSource *)self isDisclosed])
  {
    [(PXPeopleDataSource *)self localizedDisclosedTitle];
  }

  else
  {
    [(PXPeopleDataSource *)self localizedUndisclosedTitle];
  }
  v3 = ;

  return v3;
}

- (unint64_t)photoQuantityAtIndex:(unint64_t)index
{
  v3 = [(PXPeopleDataSource *)self personAtIndex:index];
  faceCount = [v3 faceCount];

  return faceCount;
}

- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v12 = [(PXPeopleDataSource *)self memberAtIndex:index];
  [(PXPeopleDataSource *)self _asyncLoadImageForItem:v12 targetSize:handlerCopy displayScale:width resultHandler:height, scale];
}

- (id)titleAtIndex:(unint64_t)index
{
  v3 = [(PXPeopleDataSource *)self personAtIndex:index];
  name = [v3 name];

  return name;
}

- (id)personAtIndex:(unint64_t)index
{
  v3 = [(PXPeopleDataSource *)self memberAtIndex:index];
  modelObject = [v3 modelObject];

  return modelObject;
}

- (id)memberAtIndex:(unint64_t)index
{
  members = [(PXPeopleDataSource *)self members];
  if ([members count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [members objectAtIndexedSubscript:index];
  }

  return v5;
}

- (unint64_t)numberOfMembers
{
  members = [(PXPeopleDataSource *)self members];
  v4 = [members count];

  maximumNumberOfMembers = [(PXPeopleDataSource *)self maximumNumberOfMembers];
  if (v4 >= maximumNumberOfMembers)
  {
    v6 = maximumNumberOfMembers;
  }

  else
  {
    v6 = v4;
  }

  if (maximumNumberOfMembers)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (NSArray)persons
{
  members = [(PXPeopleDataSource *)self members];
  v3 = PFMap();

  return v3;
}

- (void)dealloc
{
  [(PXPeopleDataSource *)self stopListeningForChanges];
  [(PXPeopleDataSource *)self setReloadQueue:0];
  v3.receiver = self;
  v3.super_class = PXPeopleDataSource;
  [(PXPeopleDataSource *)&v3 dealloc];
}

- (PXPeopleDataSource)initWithName:(id)name objects:(id)objects
{
  nameCopy = name;
  objectsCopy = objects;
  v14.receiver = self;
  v14.super_class = PXPeopleDataSource;
  v9 = [(PXPeopleDataSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_objects, objects);
    defaultComparator = [(PXPeopleDataSource *)v10 defaultComparator];
    sortComparator = v10->_sortComparator;
    v10->_sortComparator = defaultComparator;
  }

  return v10;
}

- (PXPeopleDataSource)initWithName:(id)name objectsReloadBlock:(id)block asynchronousLoad:(BOOL)load callbackDelegate:(id)delegate
{
  nameCopy = name;
  blockCopy = block;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = PXPeopleDataSource;
  v14 = [(PXPeopleDataSource *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v15->_useAsynchronousLoad = load;
    if (blockCopy)
    {
      v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v17 = dispatch_queue_create("com.apple.Photos.PeopleDataSourceReloadQueue", v16);
      reloadQueue = v15->_reloadQueue;
      v15->_reloadQueue = v17;

      v19 = _Block_copy(blockCopy);
      reloadBlock = v15->_reloadBlock;
      v15->_reloadBlock = v19;
    }

    defaultComparator = [(PXPeopleDataSource *)v15 defaultComparator];
    sortComparator = v15->_sortComparator;
    v15->_sortComparator = defaultComparator;
  }

  return v15;
}

@end