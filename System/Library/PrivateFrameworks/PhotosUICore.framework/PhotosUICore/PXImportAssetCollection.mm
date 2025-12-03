@interface PXImportAssetCollection
+ (id)dayFormatter;
- (BOOL)isEqual:(id)equal;
- (PXImportAssetCollection)init;
- (id)arrangedObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)itemAtIndex:(unint64_t)index;
- (id)localizedTitle;
- (id)unsortedObjects;
- (int64_t)indexOfItem:(id)item;
- (int64_t)numberOfItems;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)arrangedObjects:(id)objects;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectsInRange:(_NSRange)range;
@end

@implementation PXImportAssetCollection

- (id)localizedTitle
{
  if ([(PXImportAssetCollection *)self alreadyImportedGroup])
  {
    v3 = PLLocalizedFrameworkString();
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__144903;
    v12 = __Block_byref_object_dispose__144904;
    v13 = 0;
    assetQueue = self->_assetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PXImportAssetCollection_localizedTitle__block_invoke;
    v7[3] = &unk_1E7749A28;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(assetQueue, v7);
    if (v9[5])
    {
      dayFormatter = [objc_opt_class() dayFormatter];
      v3 = [dayFormatter stringFromDate:v9[5]];
    }

    else
    {
      v3 = 0;
    }

    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

void __41__PXImportAssetCollection_localizedTitle__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) arrangedObjects];
  v7 = [v2 firstObject];

  v3 = v7;
  if (v7)
  {
    v4 = [v7 fileCreationDate];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

- (int64_t)indexOfItem:(id)item
{
  itemCopy = item;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  assetQueue = self->_assetQueue;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXImportAssetCollection_indexOfItem___block_invoke;
  block[3] = &unk_1E7746448;
  v10 = itemCopy;
  v11 = &v12;
  block[4] = self;
  v6 = itemCopy;
  dispatch_sync(assetQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __39__PXImportAssetCollection_indexOfItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) arrangedObjects];
  *(*(*(a1 + 48) + 8) + 24) = [v2 indexOfObject:*(a1 + 40)];
}

- (id)itemAtIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__144903;
  assetQueue = self->_assetQueue;
  v13 = __Block_byref_object_dispose__144904;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXImportAssetCollection_itemAtIndex___block_invoke;
  block[3] = &unk_1E77477B8;
  block[5] = &v9;
  block[6] = index;
  block[4] = self;
  dispatch_sync(assetQueue, block);
  v4 = _importDataLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = v10[5];
    *buf = 136315394;
    v16 = "[PXImportAssetCollection itemAtIndex:]";
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __39__PXImportAssetCollection_itemAtIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) arrangedObjects];
  v4 = [v3 count];

  if (v2 < v4)
  {
    v5 = [*(a1 + 32) arrangedObjects];
    v6 = [v5 objectAtIndex:*(a1 + 48)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = [*(a1 + 32) arrangedObjects];
    v9 = [v12 firstObject];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)unsortedObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__144903;
  v10 = __Block_byref_object_dispose__144904;
  v11 = 0;
  assetQueue = self->_assetQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PXImportAssetCollection_unsortedObjects__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(assetQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__PXImportAssetCollection_unsortedObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)arrangedObjects:(id)objects
{
  objectsCopy = objects;
  v5 = objectsCopy;
  if (objectsCopy)
  {
    assetQueue = self->_assetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__PXImportAssetCollection_arrangedObjects___block_invoke;
    v7[3] = &unk_1E774C2F0;
    v7[4] = self;
    v8 = objectsCopy;
    dispatch_sync(assetQueue, v7);
  }
}

void __43__PXImportAssetCollection_arrangedObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) arrangedObjects];
  (*(*(a1 + 40) + 16))();
}

- (id)arrangedObjects
{
  dispatch_assert_queue_V2(self->_assetQueue);
  if (self->_needsSorting)
  {
    self->_needsSorting = 0;
    v3 = [(NSMutableArray *)self->_assetList mutableCopy];
    [v3 sortUsingComparator:&__block_literal_global_14_144910];
    v4 = +[PXImportExpansionPlaceholderViewModel sharedInstance];
    firstObject = [v3 firstObject];

    if (firstObject == v4)
    {
      [v3 removeObject:v4];
      [v3 insertObject:v4 atIndex:{objc_msgSend(v3, "count") / 2}];
    }

    objc_storeStrong(&self->_arrangedAssetList, v3);
  }

  else
  {
    v3 = [(NSArray *)self->_arrangedAssetList copy];
  }

  return v3;
}

uint64_t __42__PXImportAssetCollection_arrangedObjects__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 fileCreationDate];
  v7 = [v5 fileCreationDate];
  if ([v6 isEqual:v7])
  {
    v8 = [v4 fileName];
    v9 = [v5 fileName];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = [v6 compare:v7];
  }

  return v10;
}

- (int64_t)numberOfItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  assetQueue = self->_assetQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PXImportAssetCollection_numberOfItems__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(assetQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__PXImportAssetCollection_numberOfItems__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)removeObjectsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14 = *MEMORY[0x1E69E9840];
  v6 = _importDataLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15.location = location;
    v15.length = length;
    v8 = NSStringFromRange(v15);
    *buf = 136315394;
    v11 = "[PXImportAssetCollection removeObjectsInRange:]";
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PXImportAssetCollection_removeObjectsInRange___block_invoke;
  block[3] = &unk_1E7745A10;
  block[5] = location;
  block[6] = length;
  block[4] = self;
  dispatch_sync(assetQueue, block);
}

void __48__PXImportAssetCollection_removeObjectsInRange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) arrangedObjects];
  v4 = [v3 objectsAtIndexes:v2];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(a1 + 32) + 32);
        v11 = [*(*(&v12 + 1) + 8 * v9) uuid];
        [v10 removeObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 16) removeObjectsInArray:v5];
  *(*(a1 + 32) + 40) = 1;
}

- (void)removeAllObjects
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[PXImportAssetCollection removeAllObjects]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXImportAssetCollection_removeAllObjects__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_sync(assetQueue, block);
}

uint64_t __43__PXImportAssetCollection_removeAllObjects__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    [*(*(a1 + 32) + 16) removeAllObjects];
    result = [*(*(a1 + 32) + 32) removeAllObjects];
    *(*(a1 + 32) + 40) = 1;
  }

  return result;
}

- (void)removeObject:(id)object
{
  v14 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = _importDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[PXImportAssetCollection removeObject:]";
    v12 = 2112;
    v13 = objectCopy;
    _os_log_debug_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  assetQueue = self->_assetQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PXImportAssetCollection_removeObject___block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v9 = objectCopy;
  v7 = objectCopy;
  dispatch_sync(assetQueue, v8);
}

void __40__PXImportAssetCollection_removeObject___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) uuid];
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = [*(a1 + 40) uuid];
    [v4 removeObject:v5];

    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    *(*(a1 + 32) + 40) = 1;
  }

  else
  {
    v6 = _importDataLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[PXImportAssetCollection removeObject:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "%s: Attempted to remove %@ from PXImportAssetCollection but it doesn't contain it.", &v8, 0x16u);
    }
  }
}

- (void)addObjectsFromArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = _importDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[PXImportAssetCollection addObjectsFromArray:]";
    v13 = 2112;
    v14 = arrayCopy;
    _os_log_debug_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  assetQueue = self->_assetQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PXImportAssetCollection_addObjectsFromArray___block_invoke;
  v8[3] = &unk_1E774C620;
  v9 = arrayCopy;
  selfCopy = self;
  v7 = arrayCopy;
  dispatch_sync(assetQueue, v8);
}

void __47__PXImportAssetCollection_addObjectsFromArray___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 136315394;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = *(*(a1 + 40) + 32);
        v11 = [v9 uuid];
        LOBYTE(v10) = [v10 containsObject:v11];

        if (v10)
        {
          v12 = _importDataLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v19 = "[PXImportAssetCollection addObjectsFromArray:]_block_invoke";
            v20 = 2112;
            v21 = v9;
            _os_log_error_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%s: Attempted to add %@ to PXImportAssetCollection but it already contains it.", buf, 0x16u);
          }
        }

        else
        {
          v12 = [v9 uuid];
          [v2 addObject:v12];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 40) + 16) addObjectsFromArray:*(a1 + 32)];
  [*(*(a1 + 40) + 32) addObjectsFromArray:v2];
  *(*(a1 + 40) + 40) = 1;
}

- (void)addObject:(id)object
{
  v14 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = _importDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[PXImportAssetCollection addObject:]";
    v12 = 2112;
    v13 = objectCopy;
    _os_log_debug_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
  }

  assetQueue = self->_assetQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PXImportAssetCollection_addObject___block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v9 = objectCopy;
  v7 = objectCopy;
  dispatch_sync(assetQueue, v8);
}

void __37__PXImportAssetCollection_addObject___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) uuid];
  LOBYTE(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = _importDataLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[PXImportAssetCollection addObject:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "%s: Attempted to add %@ to PXImportAssetCollection but it already contains it.", &v8, 0x16u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    v5 = *(*(a1 + 32) + 32);
    v6 = [*(a1 + 40) uuid];
    [v5 addObject:v6];

    *(*(a1 + 32) + 40) = 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(PXImportAssetCollection *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ <%p> %@ (%ld items)", v4, self, identifier, -[PXImportAssetCollection numberOfItems](self, "numberOfItems")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(PXImportAssetCollection *)self identifier];
    identifier2 = [v5 identifier];

    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PXImportAssetCollection;
    v8 = [(PXImportAssetCollection *)&v10 isEqual:equalCopy];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableArray *)self->_assetList mutableCopy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSArray *)self->_arrangedAssetList mutableCopy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(NSMutableSet *)self->_assetUUIDs mutableCopy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(NSString *)self->_identifier copy];
  v12 = *(v4 + 48);
  *(v4 + 48) = v11;

  *(v4 + 41) = self->_alreadyImportedGroup;
  *(v4 + 40) = 1;
  return v4;
}

- (PXImportAssetCollection)init
{
  v15.receiver = self;
  v15.super_class = PXImportAssetCollection;
  v2 = [(PXImportAssetCollection *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"%@-assetQueue", v6];
    v8 = dispatch_queue_create([v7 UTF8String], v3);
    assetQueue = v2->_assetQueue;
    v2->_assetQueue = v8;

    v10 = objc_opt_new();
    assetList = v2->_assetList;
    v2->_assetList = v10;

    v12 = objc_opt_new();
    assetUUIDs = v2->_assetUUIDs;
    v2->_assetUUIDs = v12;
  }

  return v2;
}

+ (id)dayFormatter
{
  if (dayFormatter_onceToken != -1)
  {
    dispatch_once(&dayFormatter_onceToken, &__block_literal_global_144938);
  }

  v3 = dayFormatter__dayFormatter;

  return v3;
}

void __39__PXImportAssetCollection_dayFormatter__block_invoke()
{
  v0 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:2];
  v1 = dayFormatter__dayFormatter;
  dayFormatter__dayFormatter = v0;
}

@end