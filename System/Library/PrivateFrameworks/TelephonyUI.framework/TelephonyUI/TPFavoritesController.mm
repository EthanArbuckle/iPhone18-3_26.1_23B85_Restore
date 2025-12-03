@interface TPFavoritesController
- (BOOL)canAddEntry;
- (CNContactStore)contactStore;
- (NSArray)favoritesEntries;
- (NSCache)contactCache;
- (NSCache)transportNameCache;
- (TPFavoritesController)init;
- (TPFavoritesController)initWithContactStore:(id)store prefetchCount:(unint64_t)count;
- (TUCallProviderManager)callProviderManager;
- (id)contactCacheKeyForFavoritesEntry:(id)entry;
- (id)contactForFavoritesEntry:(id)entry;
- (id)contactForFavoritesEntry:(id)entry keyDescriptors:(id)descriptors;
- (id)contactsForFavoritesEntries:(id)entries keyDescriptors:(id)descriptors;
- (id)fetchContactForFavoritesEntries:(id)entries keyDescriptors:(id)descriptors;
- (id)fetchContactForFavoritesEntry:(id)entry;
- (id)fetchContactForFavoritesEntry:(id)entry keyDescriptors:(id)descriptors;
- (id)fetchFavoritesEntries;
- (id)fetchTransportNameForFavoritesEntry:(id)entry;
- (id)transportNameCacheKeyForFavoritesEntry:(id)entry;
- (id)transportNameForFavoritesEntry:(id)entry;
- (unint64_t)absoluteIndexForIndex:(unint64_t)index;
- (void)addEntry:(id)entry;
- (void)dealloc;
- (void)fetchFavoritesEntries;
- (void)fetchIfNeeded;
- (void)handleContactsFavoritesDidChangeNotification:(id)notification;
- (void)moveEntryAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)performInitialFetchIfNeeded;
- (void)providersChangedForProviderManager:(id)manager;
- (void)removeEntriesAtIndexes:(id)indexes;
- (void)setFavoritesEntries:(id)entries;
@end

@implementation TPFavoritesController

- (void)fetchIfNeeded
{
  delayedFetchBlock = [(TPFavoritesController *)self delayedFetchBlock];

  if (delayedFetchBlock)
  {
    delayedFetchBlock2 = [(TPFavoritesController *)self delayedFetchBlock];
    dispatch_block_cancel(delayedFetchBlock2);
  }

  objc_initWeak(&location, self);
  serialDispatchQueue = self->_serialDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__TPFavoritesController_fetchIfNeeded__block_invoke;
  v6[3] = &unk_1E7C0C3B0;
  objc_copyWeak(&v7, &location);
  dispatch_async(serialDispatchQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (NSArray)favoritesEntries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__TPFavoritesController_favoritesEntries__block_invoke;
  v6[3] = &unk_1E7C0C3D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__TPFavoritesController_fetchIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setDelayedFetchBlock:0];
    [v2 performInitialFetchIfNeeded];
    WeakRetained = v2;
  }
}

- (void)performInitialFetchIfNeeded
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  if (!self->_favoritesEntries)
  {
    v4 = TPDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B4894000, v4, OS_LOG_TYPE_DEFAULT, "Performing Initial Fetch", v13, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x1E69D8A90]);
    callProviderManager = self->_callProviderManager;
    self->_callProviderManager = v5;

    [(TUCallProviderManager *)self->_callProviderManager addDelegate:self queue:self->_serialDispatchQueue];
    if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695CE18]);
      p_super = &self->_contactStore->super;
      self->_contactStore = v7;
    }

    else
    {
      p_super = TPDefaultLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [(TPFavoritesController *)p_super performInitialFetchIfNeeded];
      }
    }

    v9 = [objc_alloc(MEMORY[0x1E695CE90]) initWithContactStore:self->_contactStore];
    favoritesManager = self->_favoritesManager;
    self->_favoritesManager = v9;

    fetchFavoritesEntries = [(TPFavoritesController *)self fetchFavoritesEntries];
    [(TPFavoritesController *)self setFavoritesEntries:fetchFavoritesEntries];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleContactsFavoritesDidChangeNotification_ name:*MEMORY[0x1E695C458] object:0];
  }
}

- (id)fetchFavoritesEntries
{
  v54 = *MEMORY[0x1E69E9840];
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v4 = TPDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4894000, v4, OS_LOG_TYPE_DEFAULT, "Fetching Favorites Entries", buf, 2u);
  }

  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactCache = [(TPFavoritesController *)self contactCache];
  [contactCache removeAllObjects];

  transportNameCache = [(TPFavoritesController *)self transportNameCache];
  [transportNameCache removeAllObjects];

  favoritesManager = [(TPFavoritesController *)self favoritesManager];
  entries = [favoritesManager entries];
  v9 = [entries copy];

  v10 = TPDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TPFavoritesController *)v9 fetchFavoritesEntries];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v43 = *v46;
    v15 = *MEMORY[0x1E695C150];
    v41 = *MEMORY[0x1E695C1B8];
    *&v12 = 138412290;
    v40 = v12;
    do
    {
      v16 = 0;
      do
      {
        if (*v46 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        v18 = TPDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v49 = 67109120;
          LODWORD(v50) = v14;
          _os_log_debug_impl(&dword_1B4894000, v18, OS_LOG_TYPE_DEBUG, "Fetching data for entry %i", v49, 8u);
        }

        v19 = v17;
        actionType = [v19 actionType];
        if ([actionType isEqualToString:v15])
        {
        }

        else
        {
          actionType2 = [v19 actionType];
          v22 = [actionType2 isEqualToString:v41];

          v23 = v19;
          if (!v22)
          {
            goto LABEL_21;
          }
        }

        callProviderManager = [(TPFavoritesController *)self callProviderManager];
        v25 = [callProviderManager providerForFavoritesEntry:v19];

        if (!v25)
        {
          [(TPFavoritesController *)self setNeedsProvidersUpdates:1];
        }

        v23 = v19;
        if (([v25 supportsAudioAndVideo] & 1) == 0)
        {
          v23 = v19;
          if (([v25 supportsAudioOnly] & 1) == 0)
          {

            v23 = 0;
          }
        }

LABEL_21:
        if (v23)
        {
          [v44 addObject:v23];
          if (!-[TPFavoritesController prefetchCount](self, "prefetchCount") || (v26 = -[TPFavoritesController prefetchCount](self, "prefetchCount"), v26 >= [v44 count]))
          {
            v27 = TPDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [(TPFavoritesController *)buf fetchFavoritesEntries:&v52];
            }

            contactCache2 = [(TPFavoritesController *)self contactCache];
            v29 = [(TPFavoritesController *)self fetchContactForFavoritesEntry:v23];
            v30 = [(TPFavoritesController *)self contactCacheKeyForFavoritesEntry:v23];
            [contactCache2 setObject:v29 forKey:v30];

            v31 = [(TPFavoritesController *)self fetchTransportNameForFavoritesEntry:v19];
            if (v31)
            {
              transportNameCache2 = [(TPFavoritesController *)self transportNameCache];
              v33 = [(TPFavoritesController *)self transportNameCacheKeyForFavoritesEntry:v19];
              [transportNameCache2 setObject:v31 forKey:v33];
            }

            else
            {
              transportNameCache2 = TPDefaultLog();
              if (os_log_type_enabled(transportNameCache2, OS_LOG_TYPE_ERROR))
              {
                *v49 = v40;
                v50 = v19;
                _os_log_error_impl(&dword_1B4894000, transportNameCache2, OS_LOG_TYPE_ERROR, "Cannot find a transport name for this favorites entry %@", v49, 0xCu);
              }
            }

            name = [v23 name];
          }
        }

        ++v16;
        ++v14;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v13);
  }

  v35 = TPDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v44 count];
    *v49 = 134217984;
    v50 = v36;
    _os_log_impl(&dword_1B4894000, v35, OS_LOG_TYPE_DEFAULT, "Found %lu Favorite Entries", v49, 0xCu);
  }

  v37 = [v44 copy];
  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (NSCache)contactCache
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  contactCache = self->_contactCache;

  return contactCache;
}

- (NSCache)transportNameCache
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  transportNameCache = self->_transportNameCache;

  return transportNameCache;
}

- (TUCallProviderManager)callProviderManager
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  callProviderManager = self->_callProviderManager;

  return callProviderManager;
}

- (TPFavoritesController)init
{
  [(TPFavoritesController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPFavoritesController)initWithContactStore:(id)store prefetchCount:(unint64_t)count
{
  storeCopy = store;
  v27.receiver = self;
  v27.super_class = TPFavoritesController;
  v8 = [(TPFavoritesController *)&v27 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("TPFavoritesController.serialQueue", v9);
    serialDispatchQueue = v8->_serialDispatchQueue;
    v8->_serialDispatchQueue = v10;

    objc_storeStrong(&v8->_contactStore, store);
    objc_storeStrong(&v8->_completionDispatchQueue, MEMORY[0x1E69E96A0]);
    v8->_prefetchCount = count;
    v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    contactCache = v8->_contactCache;
    v8->_contactCache = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    transportNameCache = v8->_transportNameCache;
    v8->_transportNameCache = v14;

    objc_initWeak(&location, v8);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __60__TPFavoritesController_initWithContactStore_prefetchCount___block_invoke;
    v24 = &unk_1E7C0C3B0;
    objc_copyWeak(&v25, &location);
    v16 = dispatch_block_create(0, &v21);
    [(TPFavoritesController *)v8 setDelayedFetchBlock:v16, v21, v22, v23, v24];

    v17 = dispatch_time(0, 1000000000);
    v18 = v8->_serialDispatchQueue;
    delayedFetchBlock = [(TPFavoritesController *)v8 delayedFetchBlock];
    dispatch_after(v17, v18, delayedFetchBlock);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __60__TPFavoritesController_initWithContactStore_prefetchCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained performInitialFetchIfNeeded];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TPFavoritesController;
  [(TPFavoritesController *)&v4 dealloc];
}

- (CNContactStore)contactStore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__TPFavoritesController_contactStore__block_invoke;
  v6[3] = &unk_1E7C0C3D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__TPFavoritesController_addEntry___block_invoke;
  v7[3] = &unk_1E7C0C400;
  v7[4] = self;
  v8 = entryCopy;
  v6 = entryCopy;
  dispatch_async(serialDispatchQueue, v7);
}

void __34__TPFavoritesController_addEntry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) favoritesManager];
  v3 = [v2 entries];
  v4 = [v3 indexOfObject:*(a1 + 40)];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) favoritesManager];
    [v5 removeEntryAtIndex:v4];
  }

  v6 = [*(a1 + 32) favoritesManager];
  v7 = [v6 isFull];

  if (v7)
  {
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }
  }

  else
  {
    v8 = [*(a1 + 32) favoritesManager];
    [v8 addEntry:*(a1 + 40)];
  }

  v9 = [*(a1 + 32) favoritesManager];
  [v9 save];

  v10 = [*(a1 + 32) fetchFavoritesEntries];
  [*(a1 + 32) setFavoritesEntries:v10];
}

- (BOOL)canAddEntry
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__TPFavoritesController_canAddEntry__block_invoke;
  v5[3] = &unk_1E7C0C3D8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialDispatchQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __36__TPFavoritesController_canAddEntry__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) favoritesManager];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isFull] ^ 1;
}

- (void)moveEntryAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__TPFavoritesController_moveEntryAtIndex_toIndex___block_invoke;
  block[3] = &unk_1E7C0C428;
  block[4] = self;
  block[5] = index;
  block[6] = toIndex;
  dispatch_async(serialDispatchQueue, block);
}

void __50__TPFavoritesController_moveEntryAtIndex_toIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) absoluteIndexForIndex:*(a1 + 40)];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (*(a1 + 48))
    {
      v4 = [*(a1 + 32) absoluteIndexForIndex:?];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(a1 + 32) favoritesManager];
    [v5 moveEntryAtIndex:v3 toIndex:v4];

    v6 = [*(a1 + 32) favoritesManager];
    [v6 save];

    v7 = [*(a1 + 32) fetchFavoritesEntries];
    [*(a1 + 32) setFavoritesEntries:v7];
  }
}

- (void)removeEntriesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TPFavoritesController_removeEntriesAtIndexes___block_invoke;
  v7[3] = &unk_1E7C0C400;
  v8 = indexesCopy;
  selfCopy = self;
  v6 = indexesCopy;
  dispatch_async(serialDispatchQueue, v7);
}

void __48__TPFavoritesController_removeEntriesAtIndexes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__TPFavoritesController_removeEntriesAtIndexes___block_invoke_2;
  v5[3] = &unk_1E7C0C450;
  v5[4] = *(a1 + 40);
  [v2 enumerateIndexesUsingBlock:v5];
  v3 = [*(a1 + 40) favoritesManager];
  [v3 save];

  v4 = [*(a1 + 40) fetchFavoritesEntries];
  [*(a1 + 40) setFavoritesEntries:v4];
}

void __48__TPFavoritesController_removeEntriesAtIndexes___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) favoritesManager];
  [v3 removeEntryAtIndex:a2];
}

- (id)contactForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__TPFavoritesController_contactForFavoritesEntry___block_invoke;
  block[3] = &unk_1E7C0C478;
  block[4] = self;
  v10 = entryCopy;
  v11 = &v12;
  v6 = entryCopy;
  dispatch_sync(serialDispatchQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__TPFavoritesController_contactForFavoritesEntry___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) contactCacheKeyForFavoritesEntry:*(a1 + 40)];
  v2 = [*(a1 + 32) contactCache];
  v3 = [v2 objectForKey:v10];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) fetchContactForFavoritesEntry:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) contactCache];
    [v9 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v10];
  }
}

- (id)contactForFavoritesEntry:(id)entry keyDescriptors:(id)descriptors
{
  entryCopy = entry;
  descriptorsCopy = descriptors;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__TPFavoritesController_contactForFavoritesEntry_keyDescriptors___block_invoke;
  v13[3] = &unk_1E7C0C4A0;
  v13[4] = self;
  v14 = entryCopy;
  v15 = descriptorsCopy;
  v16 = &v17;
  v9 = descriptorsCopy;
  v10 = entryCopy;
  dispatch_sync(serialDispatchQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __65__TPFavoritesController_contactForFavoritesEntry_keyDescriptors___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactForFavoritesEntry:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)contactsForFavoritesEntries:(id)entries keyDescriptors:(id)descriptors
{
  entriesCopy = entries;
  descriptorsCopy = descriptors;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__TPFavoritesController_contactsForFavoritesEntries_keyDescriptors___block_invoke;
  v13[3] = &unk_1E7C0C4A0;
  v13[4] = self;
  v14 = entriesCopy;
  v15 = descriptorsCopy;
  v16 = &v17;
  v9 = descriptorsCopy;
  v10 = entriesCopy;
  dispatch_sync(serialDispatchQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __68__TPFavoritesController_contactsForFavoritesEntries_keyDescriptors___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactForFavoritesEntries:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)transportNameForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__TPFavoritesController_transportNameForFavoritesEntry___block_invoke;
  block[3] = &unk_1E7C0C478;
  block[4] = self;
  v10 = entryCopy;
  v11 = &v12;
  v6 = entryCopy;
  dispatch_sync(serialDispatchQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__TPFavoritesController_transportNameForFavoritesEntry___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) transportNameCacheKeyForFavoritesEntry:*(a1 + 40)];
  v2 = [*(a1 + 32) transportNameCache];
  v3 = [v2 objectForKey:v10];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (![*(*(*(a1 + 48) + 8) + 40) length])
  {
    v6 = [*(a1 + 32) fetchTransportNameForFavoritesEntry:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [*(a1 + 32) transportNameCache];
      [v9 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v10];
    }
  }
}

- (unint64_t)absoluteIndexForIndex:(unint64_t)index
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = self->_favoritesEntries;
  if ([(NSArray *)v6 count]<= index)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [(NSArray *)v6 objectAtIndex:index];
    if (v7)
    {
      favoritesManager = [(TPFavoritesController *)self favoritesManager];
      entries = [favoritesManager entries];
      v10 = [entries indexOfObject:v7];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v10;
}

- (id)contactCacheKeyForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = MEMORY[0x1E696AEC0];
  v7 = MEMORY[0x1E696AD98];
  v8 = [entryCopy hash];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 stringWithFormat:@"%@", v9];

  return v10;
}

- (id)fetchContactForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = [(TPFavoritesController *)self fetchContactForFavoritesEntry:entryCopy keyDescriptors:0];

  if (!v6)
  {
    v7 = TPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TPFavoritesController fetchContactForFavoritesEntry:v7];
    }

    v6 = objc_alloc_init(MEMORY[0x1E695CD58]);
  }

  return v6;
}

- (id)fetchContactForFavoritesEntry:(id)entry keyDescriptors:(id)descriptors
{
  v28 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  descriptorsCopy = descriptors;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  contactProperty = [entryCopy contactProperty];
  contact = [contactProperty contact];

  if (descriptorsCopy && contact && ([contact areKeysAvailable:descriptorsCopy] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithArray:descriptorsCopy];
    availableKeyDescriptor = [contact availableKeyDescriptor];
    if (availableKeyDescriptor)
    {
      [v11 addObject:availableKeyDescriptor];
    }

    contactStore = self->_contactStore;
    identifier = [contact identifier];
    v21 = 0;
    v15 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:identifier keysToFetch:v11 error:&v21];
    v16 = v21;

    if (!v15)
    {
      v17 = TPDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = self->_contactStore;
        *buf = 138412802;
        v23 = v20;
        v24 = 2112;
        v25 = entryCopy;
        v26 = 2112;
        v27 = v16;
        _os_log_error_impl(&dword_1B4894000, v17, OS_LOG_TYPE_ERROR, "Could not retrieve a contact using contact store (%@), favorites entry (%@) error (%@)", buf, 0x20u);
      }
    }

    contact = v15;
  }

  v18 = *MEMORY[0x1E69E9840];

  return contact;
}

- (id)fetchContactForFavoritesEntries:(id)entries keyDescriptors:(id)descriptors
{
  v41 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  descriptorsCopy = descriptors;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v9 = [MEMORY[0x1E695E0F0] mutableCopy];
  v10 = objc_opt_new();
  [v10 addObjectsFromArray:descriptorsCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = entriesCopy;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        contactProperty = [*(*(&v30 + 1) + 8 * i) contactProperty];
        contact = [contactProperty contact];

        if (descriptorsCopy && contact && ([contact areKeysAvailable:descriptorsCopy] & 1) == 0)
        {
          identifier = [contact identifier];
          [v9 addObject:identifier];

          availableKeyDescriptor = [contact availableKeyDescriptor];
          if (availableKeyDescriptor)
          {
            [v10 addObject:availableKeyDescriptor];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v13);
  }

  if ([v9 count])
  {
    v20 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v9];
    contactStore = self->_contactStore;
    allObjects = [v10 allObjects];
    v29 = 0;
    v23 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v20 keysToFetch:allObjects error:&v29];
    v24 = v29;

    if (!v23 || v24)
    {
      v25 = TPDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = self->_contactStore;
        *buf = 138412802;
        v35 = v28;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v24;
        _os_log_error_impl(&dword_1B4894000, v25, OS_LOG_TYPE_ERROR, "Could not retrieve a contact using contact store (%@), favorites entry (%@) error (%@)", buf, 0x20u);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)fetchTransportNameForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  localizedBundleName = [entryCopy localizedBundleName];

  return localizedBundleName;
}

- (id)transportNameCacheKeyForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = MEMORY[0x1E696AEC0];
  v7 = MEMORY[0x1E696AD98];
  v8 = [entryCopy hash];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 stringWithFormat:@"%@", v9];

  return v10;
}

- (void)setFavoritesEntries:(id)entries
{
  entriesCopy = entries;
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  if (self->_favoritesEntries != entriesCopy)
  {
    v6 = [(NSArray *)entriesCopy copy];
    favoritesEntries = self->_favoritesEntries;
    self->_favoritesEntries = v6;

    completionDispatchQueue = [(TPFavoritesController *)self completionDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__TPFavoritesController_setFavoritesEntries___block_invoke;
    block[3] = &unk_1E7C0C368;
    block[4] = self;
    dispatch_async(completionDispatchQueue, block);
  }
}

void __45__TPFavoritesController_setFavoritesEntries___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TPFavoritesControllerFavoritesEntriesDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

- (void)handleContactsFavoritesDidChangeNotification:(id)notification
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__TPFavoritesController_handleContactsFavoritesDidChangeNotification___block_invoke;
  block[3] = &unk_1E7C0C368;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

void __70__TPFavoritesController_handleContactsFavoritesDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchFavoritesEntries];
  [*(a1 + 32) setFavoritesEntries:v2];
}

- (void)providersChangedForProviderManager:(id)manager
{
  serialDispatchQueue = [(TPFavoritesController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  if ([(TPFavoritesController *)self needsProvidersUpdates])
  {
    [(TPFavoritesController *)self setNeedsProvidersUpdates:0];
    fetchFavoritesEntries = [(TPFavoritesController *)self fetchFavoritesEntries];
    [(TPFavoritesController *)self setFavoritesEntries:fetchFavoritesEntries];
  }
}

- (void)fetchContactForFavoritesEntry:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_1B4894000, log, OS_LOG_TYPE_ERROR, "Creating an empty contact for favorites entry %@.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)fetchFavoritesEntries
{
  prefetchCount = [a2 prefetchCount];
  *self = 134217984;
  *a3 = prefetchCount;
  _os_log_debug_impl(&dword_1B4894000, a4, OS_LOG_TYPE_DEBUG, "Performing contact fetch, prefetch count: %lu", self, 0xCu);
}

@end