@interface SFUILoadedMetadataCollection
- (SFUILoadedMetadataCollection)initWithMetadatas:(id)a3;
- (SFUILoadedMetadataCollectionDelegate)delegate;
- (void)_didFinishLoading;
- (void)_listenForMetadataChanges;
- (void)_load;
- (void)_metadataDidChange:(id)a3;
@end

@implementation SFUILoadedMetadataCollection

- (void)_listenForMetadataChanges
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  headerMetadataObservers = self->_headerMetadataObservers;
  self->_headerMetadataObservers = v3;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(SFUILoadedMetadataCollection *)self metadatas];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 _populateMetadataForBackwardCompatibility];
        objc_initWeak(&location, self);
        v9 = objc_alloc(getLPLinkMetadataObserverClass());
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __57__SFUILoadedMetadataCollection__listenForMetadataChanges__block_invoke;
        v12[3] = &unk_1E7EE3CB8;
        objc_copyWeak(&v13, &location);
        v12[4] = v8;
        v10 = [v9 initWithMetadata:v8 callback:v12];
        [(NSMutableArray *)self->_headerMetadataObservers addObject:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_load
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = dispatch_group_create();
  v4 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  val = self;
  v5 = [(SFUILoadedMetadataCollection *)self metadatas];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        dispatch_group_enter(v3);
        [v4 addObject:v10];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __37__SFUILoadedMetadataCollection__load__block_invoke;
        v16[3] = &unk_1E7EE3DB0;
        v17 = v4;
        v18 = v10;
        v19 = v3;
        [v10 _loadAsynchronousFieldsWithUpdateHandler:v16];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    objc_initWeak(&location, val);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__SFUILoadedMetadataCollection__load__block_invoke_2;
    block[3] = &unk_1E7EE3688;
    objc_copyWeak(&v14, &location);
    v11 = MEMORY[0x1E69E96A0];
    dispatch_group_notify(v3, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SFUILoadedMetadataCollection *)val _didFinishLoading];
  }
}

- (void)_didFinishLoading
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(SFUILoadedMetadataCollection *)self metadatas];
  [(SFUILoadedMetadataCollection *)self setLoadedMetadatas:v3];

  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SFUILoadedMetadataCollection *)self loadedMetadatas];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B9E4B000, v4, OS_LOG_TYPE_DEFAULT, "did finish loading metadata:%@", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x1E695DEC8]);
  v7 = [(SFUILoadedMetadataCollection *)self loadedMetadatas];
  v8 = [v6 initWithArray:v7 copyItems:1];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SFUILoadedMetadataCollection__didFinishLoading__block_invoke;
  v9[3] = &unk_1E7EE3DD8;
  v9[4] = self;
  SFUILinkMetadataSerializationForLocalUseOnly(v8, v9);
}

void __49__SFUILoadedMetadataCollection__didFinishLoading__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  sf_dispatch_on_main_queue();
}

- (SFUILoadedMetadataCollection)initWithMetadatas:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFUILoadedMetadataCollection;
  v5 = [(SFUILoadedMetadataCollection *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    metadatas = v5->_metadatas;
    v5->_metadatas = v6;

    v8 = SFUILinkMetadataSerializationForLocalLowFidelityUseOnly(v4);
    [(SFUILoadedMetadataCollection *)v5 setLoadedSerializedMetadatas:v8];

    [(SFUILoadedMetadataCollection *)v5 _listenForMetadataChanges];
    [(SFUILoadedMetadataCollection *)v5 _load];
  }

  return v5;
}

void __57__SFUILoadedMetadataCollection__listenForMetadataChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _metadataDidChange:*(a1 + 32)];
}

- (void)_metadataDidChange:(id)a3
{
  v4 = a3;
  v3 = v4;
  sf_dispatch_on_main_queue();
}

void __51__SFUILoadedMetadataCollection__metadataDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) copy];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B9E4B000, v3, OS_LOG_TYPE_DEFAULT, "did update metadata:%@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 metadataCollection:*(a1 + 40) didChangeMetadata:v2];
}

void __37__SFUILoadedMetadataCollection__load__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeObject:*(a1 + 40)];
    v3 = *(a1 + 48);

    dispatch_group_leave(v3);
  }
}

void __37__SFUILoadedMetadataCollection__load__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinishLoading];
}

void __49__SFUILoadedMetadataCollection__didFinishLoading__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setLoadedSerializedMetadatas:*(a1 + 40)];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) loadedSerializedMetadatas];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B9E4B000, v2, OS_LOG_TYPE_DEFAULT, "did finish serializing loaded metadata:%@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 metadataCollectionDidFinishLoading:*(a1 + 32)];
}

- (SFUILoadedMetadataCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end