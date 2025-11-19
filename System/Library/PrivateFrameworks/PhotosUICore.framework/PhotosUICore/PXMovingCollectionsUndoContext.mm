@interface PXMovingCollectionsUndoContext
+ (id)makeFetchOptionsWithCollectionList:(id)a3;
+ (id)parentCollectionListsForCollections:(id)a3;
- (PXMovingCollectionsUndoContext)init;
- (PXMovingCollectionsUndoContext)initWithCollections:(id)a3;
- (void)enumerateCollectionListsUsingBlock:(id)a3;
- (void)storeOriginalParentCollectionListFetchResults;
@end

@implementation PXMovingCollectionsUndoContext

- (void)enumerateCollectionListsUsingBlock:(id)a3
{
  v4 = a3;
  parentCollectionChildInfos = self->_parentCollectionChildInfos;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PXMovingCollectionsUndoContext_enumerateCollectionListsUsingBlock___block_invoke;
  v7[3] = &unk_1E7748078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)parentCollectionChildInfos enumerateKeysAndObjectsUsingBlock:v7];
}

void __69__PXMovingCollectionsUndoContext_enumerateCollectionListsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PXMovingCollectionsUndoContext_enumerateCollectionListsUsingBlock___block_invoke_2;
  v16[3] = &unk_1E7748050;
  v17 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v16];
  v9 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PXMovingCollectionsUndoContext_enumerateCollectionListsUsingBlock___block_invoke_3;
  v13[3] = &unk_1E774A7B8;
  v14 = v5;
  v15 = v9;
  v10 = v9;
  v11 = v5;
  [v8 enumerateIndexesUsingBlock:v13];
  v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
  (*(*(a1 + 40) + 16))();
}

uint64_t __69__PXMovingCollectionsUndoContext_enumerateCollectionListsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];

  return [v2 addIndex:v3];
}

void __69__PXMovingCollectionsUndoContext_enumerateCollectionListsUsingBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  [*(a1 + 40) addObject:v5];
}

- (void)storeOriginalParentCollectionListFetchResults
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_storedParentCollectionFetchResults removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_parentCollectionChildInfos;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = MEMORY[0x1E6978758];
        v10 = [objc_opt_class() makeFetchOptionsWithCollectionList:{v8, v12}];
        v11 = [v9 fetchCollectionsInCollectionList:v8 options:v10];
        [(NSMutableDictionary *)self->_storedParentCollectionFetchResults setObject:v11 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (PXMovingCollectionsUndoContext)initWithCollections:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PXMovingCollectionsUndoContext;
  v5 = [(PXMovingCollectionsUndoContext *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    collections = v5->_collections;
    v5->_collections = v6;

    v8 = objc_opt_new();
    parentCollectionChildInfos = v5->_parentCollectionChildInfos;
    v5->_parentCollectionChildInfos = v8;

    v10 = objc_opt_new();
    storedParentCollectionFetchResults = v5->_storedParentCollectionFetchResults;
    v5->_storedParentCollectionFetchResults = v10;

    v12 = objc_opt_new();
    v13 = [objc_opt_class() parentCollectionListsForCollections:v4];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__PXMovingCollectionsUndoContext_initWithCollections___block_invoke;
    v16[3] = &unk_1E7748028;
    v17 = v12;
    v18 = v5;
    v14 = v12;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];
  }

  return v5;
}

void __54__PXMovingCollectionsUndoContext_initWithCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = MEMORY[0x1E6978758];
    v8 = [objc_opt_class() makeFetchOptionsWithCollectionList:v5];
    v6 = [v7 fetchCollectionsInCollectionList:v5 options:v8];

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v9 = [v6 indexOfObject:v12];
  v10 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v5];
  if (!v10)
  {
    v10 = objc_opt_new();
    [*(*(a1 + 40) + 16) setObject:v10 forKeyedSubscript:v5];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  [v10 setObject:v12 forKeyedSubscript:v11];
}

- (PXMovingCollectionsUndoContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMovingCollectionsUndoContext.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXMovingCollectionsUndoContext init]"}];

  abort();
}

+ (id)makeFetchOptionsWithCollectionList:(id)a3
{
  v3 = [a3 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setIncludeUserSmartAlbums:1];
  [v4 setIncludeTrashedAssets:1];

  return v4;
}

+ (id)parentCollectionListsForCollections:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 px_fetchContainer];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

@end