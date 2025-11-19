@interface VUIMPHomeShareMediaLibraryManager
+ (id)_sharedMPMediaLibraries;
- (NSArray)homeShareMediaLibraries;
- (VUIHomeShareMediaLibraryManagerDelegate)delegate;
- (VUIMPHomeShareMediaLibraryManager)initWithManager:(id)a3;
- (VUIMediaLibraryManager)manager;
- (id)_homeShareMediaLibraries;
- (void)_handleAvailableMediaLibrariesDidChange:(id)a3;
- (void)_notifyDelegateHomeShareMediaLibrariesDidUpdate:(id)a3 withChangeSet:(id)a4;
- (void)_updateMediaLibrariesWithSharedMPMediaLibraries:(id)a3;
- (void)dealloc;
@end

@implementation VUIMPHomeShareMediaLibraryManager

- (id)_homeShareMediaLibraries
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [objc_opt_class() _sharedMPMediaLibraries];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [VUIMPHomeShareMediaLibrary alloc];
        v11 = [(VUIMPHomeShareMediaLibraryManager *)self manager];
        v12 = [(VUIMPMediaLibrary *)v10 initWithMPMediaLibrary:v9 type:1 manager:v11];

        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)_sharedMPMediaLibraries
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69705E8] sharedMediaLibraries];
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"name" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  return v5;
}

- (VUIMPHomeShareMediaLibraryManager)initWithManager:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VUIMPHomeShareMediaLibraryManager;
  v5 = [(VUIMPHomeShareMediaLibraryManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, v4);
    v7 = [(VUIMPHomeShareMediaLibraryManager *)v6 _homeShareMediaLibraries];
    v8 = [v7 mutableCopy];
    mutableHomeShareMediaLibraries = v6->_mutableHomeShareMediaLibraries;
    v6->_mutableHomeShareMediaLibraries = v8;

    v10 = dispatch_queue_create("com.apple.videosui.VUIMPHomeShareMediaLibraryManager.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v6->_serialProcessingDispatchQueue;
    v6->_serialProcessingDispatchQueue = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v6 selector:sel__handleAvailableMediaLibrariesDidChange_ name:*MEMORY[0x1E696FBA0] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIMPHomeShareMediaLibraryManager;
  [(VUIMPHomeShareMediaLibraryManager *)&v4 dealloc];
}

- (NSArray)homeShareMediaLibraries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__21;
  v11 = __Block_byref_object_dispose__21;
  v12 = 0;
  v3 = [(VUIMPHomeShareMediaLibraryManager *)self serialProcessingDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__VUIMPHomeShareMediaLibraryManager_homeShareMediaLibraries__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__VUIMPHomeShareMediaLibraryManager_homeShareMediaLibraries__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableHomeShareMediaLibraries];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_handleAvailableMediaLibrariesDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VUIMPHomeShareMediaLibraryManager *)self serialProcessingDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__VUIMPHomeShareMediaLibraryManager__handleAvailableMediaLibrariesDidChange___block_invoke;
  v6[3] = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__VUIMPHomeShareMediaLibraryManager__handleAvailableMediaLibrariesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [objc_opt_class() _sharedMPMediaLibraries];
    [v3 _updateMediaLibrariesWithSharedMPMediaLibraries:v2];

    WeakRetained = v3;
  }
}

- (void)_updateMediaLibrariesWithSharedMPMediaLibraries:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIMPHomeShareMediaLibraryManager *)self mutableHomeShareMediaLibraries];
  v6 = [(VUIMPHomeShareMediaLibraryManager *)self _homeShareMediaLibraries];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIMPHomeShareMediaLibraryManager: Shared MP media libraries did change: %@. latestHomeShareMediaLibraries: %@, Current Libraries: %@", &v12, 0x20u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E69DF6B0]);
  v9 = [v8 changeSetFromObjects:v5 toObjects:v6 identifierBlock:&__block_literal_global_109 isEqualBlock:&__block_literal_global_16_1];
  [v5 vui_applyChangeSet:v9 destinationObjects:v6];
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIMPHomeShareMediaLibraryManager: Updated home share media libraries : %@ using change set: %@", &v12, 0x16u);
  }

  v11 = [v5 copy];
  [(VUIMPHomeShareMediaLibraryManager *)self _notifyDelegateHomeShareMediaLibrariesDidUpdate:v11 withChangeSet:v9];
}

uint64_t __85__VUIMPHomeShareMediaLibraryManager__updateMediaLibrariesWithSharedMPMediaLibraries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

- (void)_notifyDelegateHomeShareMediaLibrariesDidUpdate:(id)a3 withChangeSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUIMPHomeShareMediaLibraryManager *)self delegate];
  [v8 homeShareManager:self mediaLibrariesDidUpdate:v7 withChangeSet:v6];
}

- (VUIHomeShareMediaLibraryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VUIMediaLibraryManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end