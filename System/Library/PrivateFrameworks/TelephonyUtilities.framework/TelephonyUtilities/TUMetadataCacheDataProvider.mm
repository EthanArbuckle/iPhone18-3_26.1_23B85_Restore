@interface TUMetadataCacheDataProvider
+ (id)classIdentifier;
- (BOOL)isEmpty;
- (TUMetadataCacheDataProvider)init;
- (TUMetadataCacheDataProvider)initWithQueue:(id)queue;
- (TUMetadataCacheDataProviderDelegate)delegate;
- (id)description;
- (id)metadataDictForDestinationID:(id)d;
- (id)metadataForDestinationID:(id)d;
- (void)_invalidateCache;
- (void)invalidateCache;
- (void)refresh;
- (void)setDelegate:(id)delegate;
- (void)setMetadataDict:(id)dict forDestinationID:(id)d;
- (void)setObject:(id)object forDestinationID:(id)d;
@end

@implementation TUMetadataCacheDataProvider

- (TUMetadataCacheDataProvider)init
{
  v3 = MEMORY[0x1E696AEC0];
  classIdentifier = [objc_opt_class() classIdentifier];
  v5 = NSStringFromSelector(sel_queue);
  v6 = [v3 stringWithFormat:@"%@.%@", classIdentifier, v5];

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v8 = dispatch_queue_create([v6 UTF8String], v7);
  v9 = [(TUMetadataCacheDataProvider *)self initWithQueue:v8];

  return v9;
}

+ (id)classIdentifier
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:v2];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = NSStringFromClass(v2);
  v7 = [v3 stringWithFormat:@"%@.%@", bundleIdentifier, v6];

  return v7;
}

- (TUMetadataCacheDataProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = TUMetadataCacheDataProvider;
  v6 = [(TUMetadataCacheDataProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    providerCache = v7->_providerCache;
    v7->_providerCache = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    providerDictCache = v7->_providerDictCache;
    v7->_providerDictCache = dictionary2;
  }

  return v7;
}

- (TUMetadataCacheDataProviderDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__TUMetadataCacheDataProvider_delegate__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__TUMetadataCacheDataProvider_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__TUMetadataCacheDataProvider_setDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (id)metadataForDestinationID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__TUMetadataCacheDataProvider_metadataForDestinationID___block_invoke;
  block[3] = &unk_1E7425390;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__TUMetadataCacheDataProvider_metadataForDestinationID___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) providerCache];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 value];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)metadataDictForDestinationID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TUMetadataCacheDataProvider_metadataDictForDestinationID___block_invoke;
  block[3] = &unk_1E7425390;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__TUMetadataCacheDataProvider_metadataDictForDestinationID___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) providerDictCache];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 value];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setObject:(id)object forDestinationID:(id)d
{
  objectCopy = object;
  dCopy = d;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TUMetadataCacheDataProvider_setObject_forDestinationID___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = dCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __58__TUMetadataCacheDataProvider_setObject_forDestinationID___block_invoke(uint64_t a1)
{
  v3 = [[TUOptionalObject alloc] initWithValue:*(a1 + 48)];
  v2 = [*(a1 + 32) providerCache];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

- (void)setMetadataDict:(id)dict forDestinationID:(id)d
{
  dictCopy = dict;
  dCopy = d;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TUMetadataCacheDataProvider_setMetadataDict_forDestinationID___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = dCopy;
  v13 = dictCopy;
  v9 = dictCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __64__TUMetadataCacheDataProvider_setMetadataDict_forDestinationID___block_invoke(uint64_t a1)
{
  v3 = [[TUOptionalObject alloc] initWithValue:*(a1 + 48)];
  v2 = [*(a1 + 32) providerDictCache];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

- (void)refresh
{
  queue = [(TUMetadataCacheDataProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TUMetadataCacheDataProvider_refresh__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__TUMetadataCacheDataProvider_refresh__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) providerCache];
  v4 = [v3 allKeys];
  v6 = [v2 setWithArray:v4];

  [*(a1 + 32) _invalidateCache];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dataProvider:*(a1 + 32) requestedRefreshWithDestinationIDs:v6];
  }
}

- (void)invalidateCache
{
  queue = [(TUMetadataCacheDataProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__TUMetadataCacheDataProvider_invalidateCache__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidateCache
{
  queue = [(TUMetadataCacheDataProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  providerCache = [(TUMetadataCacheDataProvider *)self providerCache];
  [providerCache removeAllObjects];
}

- (BOOL)isEmpty
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__TUMetadataCacheDataProvider_isEmpty__block_invoke;
  v5[3] = &unk_1E7425318;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __38__TUMetadataCacheDataProvider_isEmpty__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) providerCache];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] == 0;
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  queue = [(TUMetadataCacheDataProvider *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__TUMetadataCacheDataProvider_description__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__TUMetadataCacheDataProvider_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v8 = [*(a1 + 32) providerCache];
  v5 = [v2 stringWithFormat:@"%@: %@", v4, v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end