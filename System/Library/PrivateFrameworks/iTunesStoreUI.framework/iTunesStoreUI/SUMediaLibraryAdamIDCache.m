@interface SUMediaLibraryAdamIDCache
+ (id)sharedCache;
- (SUMediaLibraryAdamIDCache)init;
- (void)_libraryChangedNotification:(id)a3;
- (void)_populateCache;
- (void)dealloc;
- (void)getContainsAdamID:(id)a3 completionBlock:(id)a4;
- (void)getIntersectionWithSet:(id)a3 completionBlock:(id)a4;
- (void)getProperties:(id)a3 ofAdamIDs:(id)a4 withCompletionBlock:(id)a5;
- (void)populateCache;
@end

@implementation SUMediaLibraryAdamIDCache

- (SUMediaLibraryAdamIDCache)init
{
  v6.receiver = self;
  v6.super_class = SUMediaLibraryAdamIDCache;
  v2 = [(SUMediaLibraryAdamIDCache *)&v6 init];
  if (v2)
  {
    v2->_adamIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_callbackQueue = dispatch_queue_create("com.apple.iTunesStoreUI.SUMediaLibraryAdamIDCache.callback", 0);
    v2->_dispatchQueue = dispatch_queue_create("com.apple.iTunesStoreUI.SUMediaLibraryAdamIDCache", 0);
    [MEMORY[0x1E6970618] setFilteringDisabled:1];
    v3 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__libraryChangedNotification_ name:*MEMORY[0x1E696FBA8] object:v3];
    [v3 beginGeneratingLibraryChangeNotifications];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696FBA8] object:0];
  [objc_msgSend(MEMORY[0x1E69705E8] "defaultMediaLibrary")];
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v6.receiver = self;
  v6.super_class = SUMediaLibraryAdamIDCache;
  [(SUMediaLibraryAdamIDCache *)&v6 dealloc];
}

+ (id)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SUMediaLibraryAdamIDCache_sharedCache__block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = a1;
  if (sharedCache_sOnce != -1)
  {
    dispatch_once(&sharedCache_sOnce, block);
  }

  return sharedCache_sCache;
}

id __40__SUMediaLibraryAdamIDCache_sharedCache__block_invoke()
{
  result = objc_alloc_init(objc_opt_class());
  sharedCache_sCache = result;
  return result;
}

- (void)getContainsAdamID:(id)a3 completionBlock:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SUMediaLibraryAdamIDCache_getContainsAdamID_completionBlock___block_invoke;
  block[3] = &unk_1E8165A68;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

void __63__SUMediaLibraryAdamIDCache_getContainsAdamID_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 32) & 1) == 0)
  {
    [v2 _populateCache];
    v2 = a1[4];
  }

  v3 = [*(v2 + 8) containsObject:a1[5]];
  v4 = *(a1[4] + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__SUMediaLibraryAdamIDCache_getContainsAdamID_completionBlock___block_invoke_2;
  v5[3] = &unk_1E8166460;
  v5[4] = a1[6];
  v6 = v3;
  dispatch_async(v4, v5);
}

- (void)getIntersectionWithSet:(id)a3 completionBlock:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SUMediaLibraryAdamIDCache_getIntersectionWithSet_completionBlock___block_invoke;
  block[3] = &unk_1E8165A68;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

void __68__SUMediaLibraryAdamIDCache_getIntersectionWithSet_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[32] & 1) == 0)
  {
    [v2 _populateCache];
  }

  v3 = [*(a1 + 40) mutableCopy];
  [v3 intersectSet:*(*(a1 + 32) + 8)];
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__SUMediaLibraryAdamIDCache_getIntersectionWithSet_completionBlock___block_invoke_2;
  v6[3] = &unk_1E8164C68;
  v5 = *(a1 + 48);
  v6[4] = v3;
  v6[5] = v5;
  dispatch_async(v4, v6);
}

- (void)getProperties:(id)a3 ofAdamIDs:(id)a4 withCompletionBlock:(id)a5
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__SUMediaLibraryAdamIDCache_getProperties_ofAdamIDs_withCompletionBlock___block_invoke;
  v6[3] = &unk_1E8164D18;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = self;
  v6[7] = a5;
  dispatch_async(dispatchQueue, v6);
}

void __73__SUMediaLibraryAdamIDCache_getProperties_ofAdamIDs_withCompletionBlock___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(MEMORY[0x1E6970618]);
  [v2 setItemPropertiesToFetch:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a1[4])}];
  [v2 setSortItems:0];
  [v2 setUseSections:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E696FB60];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [MEMORY[0x1E6970610] predicateWithValue:*(*(&v16 + 1) + 8 * i) forProperty:v8];
        [v2 addFilterPredicate:v10];
        v11 = [v2 items];
        if ([v11 count])
        {
          [v3 addObjectsFromArray:v11];
        }

        [v2 removeFilterPredicate:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = a1[7];
  if (v12)
  {
    v13 = *(a1[6] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__SUMediaLibraryAdamIDCache_getProperties_ofAdamIDs_withCompletionBlock___block_invoke_2;
    block[3] = &unk_1E8164C68;
    block[4] = v3;
    block[5] = v12;
    dispatch_async(v13, block);
  }

  objc_autoreleasePoolPop(context);
}

- (void)populateCache
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SUMediaLibraryAdamIDCache_populateCache__block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

_BYTE *__42__SUMediaLibraryAdamIDCache_populateCache__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    return [result _populateCache];
  }

  return result;
}

- (void)_libraryChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SUMediaLibraryAdamIDCache__libraryChangedNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __57__SUMediaLibraryAdamIDCache__libraryChangedNotification___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 0;
    return [*(result + 32) _populateCache];
  }

  return result;
}

- (void)_populateCache
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6970618]);
  [v3 addFilterPredicate:{objc_msgSend(MEMORY[0x1E6970610], "predicateWithValue:forProperty:", MEMORY[0x1E695E118], *MEMORY[0x1E696FA38])}];
  [v3 setItemPropertiesToFetch:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObjects:", *MEMORY[0x1E696FB60], *MEMORY[0x1E696FB68], 0)}];
  [v3 setSortItems:0];
  [v3 setUseSections:0];
  [(NSMutableSet *)self->_adamIDs removeAllObjects];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__SUMediaLibraryAdamIDCache__populateCache__block_invoke;
  v14[3] = &unk_1E8167308;
  v14[4] = self;
  [v3 _enumerateItemsUsingBlock:v14];
  self->_isPopulated = 1;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SUMediaLibraryAdamIDCache__populateCache__block_invoke_2;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(callbackQueue, block);
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [(NSMutableSet *)self->_adamIDs count];
    v15 = 138412546;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    LODWORD(v12) = 22;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v15, v12}];
      free(v11);
      SSFileLog();
    }
  }
}

uint64_t __43__SUMediaLibraryAdamIDCache__populateCache__block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [a2 valueForProperty:*MEMORY[0x1E696FB60]];
    if (v4)
    {
      [*(*(v3 + 32) + 8) addObject:v4];
    }

    result = [a2 valueForProperty:*MEMORY[0x1E696FB68]];
    if (result)
    {
      v5 = result;
      v6 = *(*(v3 + 32) + 8);

      return [v6 addObject:v5];
    }
  }

  return result;
}

uint64_t __43__SUMediaLibraryAdamIDCache__populateCache__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"SUMediaLibraryCacheDidChangeNotification" object:v3];
}

@end