@interface SUQueueSessionManager
- (SUQueueSessionManager)init;
- (id)_queueSessionWithDownloadKinds:(id)a3 fromArray:(id)a4;
- (id)_queueSessionWithManagerOptions:(id)a3 fromArray:(id)a4;
- (id)_queueSessionWithQueue:(id)a3 fromArray:(id)a4;
- (id)beginDownloadManagerSessionForDownloadKind:(id)a3;
- (id)beginDownloadManagerSessionWithDownloadKinds:(id)a3;
- (id)beginDownloadManagerSessionWithManagerOptions:(id)a3;
- (id)beginPreorderManagerSessionWithItemKinds:(id)a3;
- (void)_endQueueSession:(id)a3 fromArray:(id)a4;
- (void)dealloc;
- (void)endDownloadManagerSessionForManager:(id)a3;
- (void)endPreorderManagerSessionWithManager:(id)a3;
@end

@implementation SUQueueSessionManager

- (SUQueueSessionManager)init
{
  v5.receiver = self;
  v5.super_class = SUQueueSessionManager;
  v2 = [(SUQueueSessionManager *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.SUQueueSessionManager.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SUQueueSessionManager;
  [(SUQueueSessionManager *)&v4 dealloc];
}

- (id)beginDownloadManagerSessionForDownloadKind:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__48;
  v11 = __Block_byref_object_dispose__48;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SUQueueSessionManager_beginDownloadManagerSessionForDownloadKind___block_invoke;
  block[3] = &unk_1E8165CA0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __68__SUQueueSessionManager_beginDownloadManagerSessionForDownloadKind___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 16);
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [v7 downloadKinds];
        if (![v8 count])
        {
          v8 = [objc_msgSend(v7 "managerOptions")];
        }

        if ([v8 containsObject:a1[5]])
        {
          [v7 setCount:{objc_msgSend(v7, "count") + 1}];
          result = [v7 queue];
          *(*(a1[6] + 8) + 40) = result;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)beginDownloadManagerSessionWithDownloadKinds:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69D48D8]);
  [v5 setDownloadKinds:a3];
  [v5 setPrefetchedDownloadProperties:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", *MEMORY[0x1E69D4B88], *MEMORY[0x1E69D4BF0], 0)}];
  [v5 setPrefetchedDownloadExternalProperties:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", *MEMORY[0x1E69D4AC8], 0)}];
  v6 = [(SUQueueSessionManager *)self beginDownloadManagerSessionWithManagerOptions:v5];

  return v6;
}

- (id)beginDownloadManagerSessionWithManagerOptions:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__48;
  v11 = __Block_byref_object_dispose__48;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SUQueueSessionManager_beginDownloadManagerSessionWithManagerOptions___block_invoke;
  block[3] = &unk_1E8165CA0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __71__SUQueueSessionManager_beginDownloadManagerSessionWithManagerOptions___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[2];
  if (!v3)
  {
    *(a1[4] + 16) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2 = a1[4];
    v3 = v2[2];
  }

  v4 = [v2 _queueSessionWithManagerOptions:a1[5] fromArray:v3];
  if (v4)
  {
    v5 = v4;
    [v4 setCount:{objc_msgSend(v4, "count") + 1}];
    *(*(a1[6] + 8) + 40) = [v5 queue];
  }

  else
  {
    if (!*(*(a1[6] + 8) + 40))
    {
      *(*(a1[6] + 8) + 40) = objc_alloc(MEMORY[0x1E69D48D0]);
      *(*(a1[6] + 8) + 40) = [*(*(a1[6] + 8) + 40) initWithManagerOptions:a1[5]];
    }

    v6 = [[SUClientQueueSession alloc] initWithQueue:*(*(a1[6] + 8) + 40)];
    [(SUClientQueueSession *)v6 setManagerOptions:a1[5]];
    [*(a1[4] + 16) addObject:v6];

    v7 = *(*(a1[6] + 8) + 40);
  }

  v8 = *(*(a1[6] + 8) + 40);

  return v8;
}

- (id)beginPreorderManagerSessionWithItemKinds:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__48;
  v11 = __Block_byref_object_dispose__48;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SUQueueSessionManager_beginPreorderManagerSessionWithItemKinds___block_invoke;
  block[3] = &unk_1E8165CA0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __66__SUQueueSessionManager_beginPreorderManagerSessionWithItemKinds___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  if (!v3)
  {
    *(a1[4] + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2 = a1[4];
    v3 = v2[3];
  }

  v4 = [v2 _queueSessionWithDownloadKinds:a1[5] fromArray:v3];
  if (v4)
  {
    v5 = v4;
    [v4 setCount:{objc_msgSend(v4, "count") + 1}];
    *(*(a1[6] + 8) + 40) = [v5 queue];
  }

  else
  {
    *(*(a1[6] + 8) + 40) = [objc_alloc(MEMORY[0x1E69D4980]) initWithItemKinds:a1[5]];
    if (*(*(a1[6] + 8) + 40))
    {
      v6 = [[SUClientQueueSession alloc] initWithQueue:*(*(a1[6] + 8) + 40)];
      [(SUClientQueueSession *)v6 setDownloadKinds:a1[5]];
      [*(a1[4] + 24) addObject:v6];
    }
  }
}

- (void)endDownloadManagerSessionForManager:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SUQueueSessionManager_endDownloadManagerSessionForManager___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __61__SUQueueSessionManager_endDownloadManagerSessionForManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queueSessionWithQueue:*(a1 + 40) fromArray:*(*(a1 + 32) + 16)];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);
    v5 = v4[2];

    return [v4 _endQueueSession:v3 fromArray:v5];
  }

  return result;
}

- (void)endPreorderManagerSessionWithManager:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__SUQueueSessionManager_endPreorderManagerSessionWithManager___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __62__SUQueueSessionManager_endPreorderManagerSessionWithManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queueSessionWithQueue:*(a1 + 40) fromArray:*(*(a1 + 32) + 24)];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);
    v5 = v4[3];

    return [v4 _endQueueSession:v3 fromArray:v5];
  }

  return result;
}

- (void)_endQueueSession:(id)a3 fromArray:(id)a4
{
  v6 = [a3 count];
  if (v6 < 2)
  {

    [a4 removeObject:a3];
  }

  else
  {

    [a3 setCount:v6 - 1];
  }
}

- (id)_queueSessionWithDownloadKinds:(id)a3 fromArray:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(a4);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "downloadKinds")])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_queueSessionWithManagerOptions:(id)a3 fromArray:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(a4);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "managerOptions")])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_queueSessionWithQueue:(id)a3 fromArray:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(a4);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 queue] == a3)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end