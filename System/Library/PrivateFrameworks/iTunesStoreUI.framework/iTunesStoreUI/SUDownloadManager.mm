@interface SUDownloadManager
- (BOOL)deleteDownload:(id)a3;
- (NSArray)downloads;
- (SSDownloadManager)downloadManager;
- (SUDownloadManager)initWithDownloadManager:(id)a3;
- (SUDownloadManager)initWithDownloadManager:(id)a3 clientInterface:(id)a4;
- (id)downloadForDownloadIdentifier:(int64_t)a3;
- (void)_finishPreflightWithCompletionBlock:(id)a3;
- (void)_reloadDownloadManager;
- (void)_removeObject:(id)a3 fromArray:(id *)a4;
- (void)dealloc;
- (void)preflightWithCompletionBlock:(id)a3;
- (void)reloadDownloadManager;
@end

@implementation SUDownloadManager

- (SUDownloadManager)initWithDownloadManager:(id)a3
{
  v5 = +[SUClientDispatch clientInterface];

  return [(SUDownloadManager *)self initWithDownloadManager:a3 clientInterface:v5];
}

- (SUDownloadManager)initWithDownloadManager:(id)a3 clientInterface:(id)a4
{
  v9.receiver = self;
  v9.super_class = SUDownloadManager;
  v6 = [(SUDownloadManager *)&v9 init];
  if (v6)
  {
    v6->_clientInterface = a4;
    v6->_downloadManager = a3;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.SUDownloadManager.%p", v6];
    v6->_dispatchQueue = dispatch_queue_create([v7 UTF8String], 0);
  }

  return v6;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SUDownloadManager;
  [(SUDownloadManager *)&v4 dealloc];
}

- (BOOL)deleteDownload:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SUDownloadManager_deleteDownload___block_invoke;
  block[3] = &unk_1E8165CA0;
  block[4] = a3;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __36__SUDownloadManager_deleteDownload___block_invoke(uint64_t a1)
{
  [*(a1 + 32) storeItemIdentifier];
  v2 = SSGetUnsignedLongLongFromValue();
  v3 = [objc_msgSend(*(a1 + 32) "managedDownload")];
  v4 = dispatch_semaphore_create(0);
  v5 = *(*(a1 + 40) + 32);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(*(a1 + 32), "managedDownload"), 0}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SUDownloadManager_deleteDownload___block_invoke_2;
  v8[3] = &unk_1E8166EA8;
  v7 = *(a1 + 48);
  v8[4] = v4;
  v8[5] = v7;
  [v5 cancelDownloads:v6 completionBlock:v8];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v4);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) _removeObject:*(a1 + 32) fromArray:*(a1 + 40) + 8];
    [*(*(a1 + 40) + 40) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v3)}];
    [objc_msgSend(*(*(a1 + 40) + 16) "purchaseManager")];
  }
}

- (id)downloadForDownloadIdentifier:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__45;
  v11 = __Block_byref_object_dispose__45;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SUDownloadManager_downloadForDownloadIdentifier___block_invoke;
  block[3] = &unk_1E8166ED0;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __51__SUDownloadManager_downloadForDownloadIdentifier___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1[6]];
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 40) objectForKey:v2];
}

- (SSDownloadManager)downloadManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SUDownloadManager_downloadManager__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__SUDownloadManager_downloadManager__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)downloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SUDownloadManager_downloads__block_invoke;
  v5[3] = &unk_1E81650B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__SUDownloadManager_downloads__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _reloadDownloadManager];
    v3 = *(*(a1 + 32) + 8);
  }

  result = v3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)preflightWithCompletionBlock:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke;
  v4[3] = &unk_1E8166F20;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

void __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E8166EF8;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    *(*(a1 + 32) + 8) = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:*(a1 + 32)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke_3;
    v5[3] = &unk_1E8166F48;
    v5[4] = v3;
    v5[5] = v2;
    v5[6] = *(a1 + 40);
    [v4 getDownloadsUsingBlock:v5];
  }
}

void __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke_4;
  v2[3] = &unk_1E8166F20;
  v3 = *(a1 + 40);
  dispatch_async(v1, v2);
}

uint64_t __50__SUDownloadManager_preflightWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _finishPreflightWithCompletionBlock:v3];
}

- (void)reloadDownloadManager
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SUDownloadManager_reloadDownloadManager__block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)_finishPreflightWithCompletionBlock:(id)a3
{
  if (![(NSArray *)self->_cachedDownloads count])
  {

    self->_cachedDownloads = 0;
  }

  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SUDownloadManager__finishPreflightWithCompletionBlock___block_invoke;
    block[3] = &unk_1E8166EF8;
    block[4] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_reloadDownloadManager
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(SSDownloadManager *)self->_downloadManager downloads];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v10, "persistentIdentifier")}];
        v12 = [(NSMutableDictionary *)self->_downloadsByID objectForKey:v11];
        if (v12)
        {
          v13 = v12;
          [(ISUDownload *)v12 setManagedDownload:v10];
        }

        else
        {
          v13 = [[ISUDownload alloc] initWithManagedDownload:v10];
        }

        [v4 addObject:v13];
        [(NSMutableDictionary *)v3 setObject:v13 forKey:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  self->_cachedDownloads = [v4 copy];
  self->_downloadsByID = v3;
}

- (void)_removeObject:(id)a3 fromArray:(id *)a4
{
  if (*a4)
  {
    v5 = [*a4 indexOfObject:a3];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [*a4 mutableCopy];
      [v7 removeObjectAtIndex:v6];

      *a4 = [v7 copy];
    }
  }
}

@end