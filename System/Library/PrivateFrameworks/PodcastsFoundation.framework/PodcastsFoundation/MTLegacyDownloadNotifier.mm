@interface MTLegacyDownloadNotifier
- (MTLegacyDownloadNotifier)init;
- (id)_listenerWithDelegate:(id)a3;
- (void)_sendDelegateSelector:(SEL)a3 withDownload:(id)a4;
- (void)_sendDelegateSelector:(SEL)a3 withDownloadCount:(id)a4;
- (void)_sendDelegateSelector:(SEL)a3 withDownloads:(id)a4;
- (void)registerForUpdates:(id)a3;
- (void)unregisterForUpdates:(id)a3;
@end

@implementation MTLegacyDownloadNotifier

- (MTLegacyDownloadNotifier)init
{
  v6.receiver = self;
  v6.super_class = MTLegacyDownloadNotifier;
  v2 = [(MTLegacyDownloadNotifier *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    downloadListeners = v2->_downloadListeners;
    v2->_downloadListeners = v3;
  }

  return v2;
}

- (id)_listenerWithDelegate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [(MTLegacyDownloadNotifier *)self downloadListeners];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__MTLegacyDownloadNotifier__listenerWithDelegate___block_invoke;
  v9[3] = &unk_1E8568F88;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__MTLegacyDownloadNotifier__listenerWithDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 delegate];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)registerForUpdates:(id)a3
{
  v6 = a3;
  v4 = [(MTLegacyDownloadNotifier *)self _listenerWithDelegate:?];
  if (!v4)
  {
    v4 = [[MTLegacyDownloadListener alloc] initWithDelegate:v6];
    v5 = [(MTLegacyDownloadNotifier *)self downloadListeners];
    [v5 addObject:v4];
  }
}

- (void)unregisterForUpdates:(id)a3
{
  v4 = [(MTLegacyDownloadNotifier *)self _listenerWithDelegate:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(MTLegacyDownloadNotifier *)self downloadListeners];
    [v5 removeObject:v6];

    v4 = v6;
  }
}

- (void)_sendDelegateSelector:(SEL)a3 withDownloadCount:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__MTLegacyDownloadNotifier__sendDelegateSelector_withDownloadCount___block_invoke;
  aBlock[3] = &unk_1E8568FB0;
  v10 = v6;
  v11 = a3;
  aBlock[4] = self;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  [MEMORY[0x1E696AF00] mainThread:v8];
}

void __68__MTLegacyDownloadNotifier__sendDelegateSelector_withDownloadCount___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [*(a1 + 32) downloadListeners];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 delegate];

        if (v9)
        {
          v10 = [v8 delegate];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = *(a1 + 48);
        if (objc_opt_respondsToSelector())
        {
          [v16 performSelector:*(a1 + 48) withObject:{*(a1 + 40), v19}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendDelegateSelector:(SEL)a3 withDownload:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__MTLegacyDownloadNotifier__sendDelegateSelector_withDownload___block_invoke;
    aBlock[3] = &unk_1E8568FB0;
    aBlock[4] = self;
    v11 = a3;
    v10 = v6;
    v8 = _Block_copy(aBlock);
    [MEMORY[0x1E696AF00] mainThread:v8];
  }
}

void __63__MTLegacyDownloadNotifier__sendDelegateSelector_withDownload___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [*(a1 + 32) downloadListeners];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 delegate];

        if (v9)
        {
          v10 = [v8 delegate];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * j) performSelector:*(a1 + 48) withObject:{*(a1 + 40), v17}];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_sendDelegateSelector:(SEL)a3 withDownloads:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__MTLegacyDownloadNotifier__sendDelegateSelector_withDownloads___block_invoke;
  aBlock[3] = &unk_1E8568FB0;
  v10 = v6;
  v11 = a3;
  aBlock[4] = self;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  [MEMORY[0x1E696AF00] mainThread:v8];
}

void __64__MTLegacyDownloadNotifier__sendDelegateSelector_withDownloads___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [*(a1 + 32) downloadListeners];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 delegate];

        if (v9)
        {
          v10 = [v8 delegate];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = *(a1 + 48);
        if (objc_opt_respondsToSelector())
        {
          [v16 performSelector:*(a1 + 48) withObject:{*(a1 + 40), v19}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end