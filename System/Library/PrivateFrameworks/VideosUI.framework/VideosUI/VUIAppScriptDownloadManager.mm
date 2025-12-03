@interface VUIAppScriptDownloadManager
+ (id)sharedInstance;
- (id)_init;
- (void)fetchAppJavascript:(id)javascript cachePolicy:(unint64_t)policy completionHandler:(id)handler;
@end

@implementation VUIAppScriptDownloadManager

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[VUIAppScriptDownloadManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_3;

  return v3;
}

void __45__VUIAppScriptDownloadManager_sharedInstance__block_invoke()
{
  v0 = [[VUIAppScriptDownloadManager alloc] _init];
  v1 = sharedInstance___sharedInstance_3;
  sharedInstance___sharedInstance_3 = v0;
}

- (id)_init
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VUIAppScriptDownloadManager;
  v2 = [(VUIAppScriptDownloadManager *)&v14 init];
  if (v2)
  {
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v4 = [objc_alloc(MEMORY[0x1E696AF18]) initWithMemoryCapacity:0x100000 diskCapacity:52428800 diskPath:0];
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      memoryCapacity = [v4 memoryCapacity];
      diskCapacity = [v4 diskCapacity];
      *buf = 134218240;
      v16 = memoryCapacity;
      v17 = 2048;
      v18 = diskCapacity;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "Applicaiton script download manager uses custom URL cache: mem capacity %lu disk capacity %lu", buf, 0x16u);
    }

    [defaultSessionConfiguration setURLCache:v4];
    v8 = [MEMORY[0x1E696AF78] sessionWithConfiguration:defaultSessionConfiguration];
    session = v2->_session;
    v2->_session = v8;

    [(VUIAppScriptDownloadManager *)v2 setCurrentURL:0];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(VUIAppScriptDownloadManager *)v2 setAppScriptDict:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionBlocksDict = v2->_completionBlocksDict;
    v2->_completionBlocksDict = v11;
  }

  return v2;
}

- (void)fetchAppJavascript:(id)javascript cachePolicy:(unint64_t)policy completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  javascriptCopy = javascript;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      absoluteString = [javascriptCopy absoluteString];
      *buf = 138412290;
      v23 = absoluteString;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "Prefetch application script from: %@.", buf, 0xCu);
    }
  }

  v12 = kVUIBagTVAppJetpackURL;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v14 = [_TtC8VideosUI20VUIJetPackController controllerWithBagKey:v12 defaults:standardUserDefaults urlOverrideDefaultKey:@"boot-url" withCachePolicy:policy];

  objc_initWeak(buf, self);
  getJetPackSource = [v14 getJetPackSource];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__VUIAppScriptDownloadManager_fetchAppJavascript_cachePolicy_completionHandler___block_invoke;
  v18[3] = &unk_1E87335D8;
  objc_copyWeak(&v21, buf);
  v16 = handlerCopy;
  v20 = v16;
  v18[4] = self;
  v17 = javascriptCopy;
  v19 = v17;
  [getJetPackSource addFinishBlock:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __80__VUIAppScriptDownloadManager_fetchAppJavascript_cachePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5 && !v6)
  {
    v8 = [v5 source];
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 url];
      v11 = [v10 absoluteString];
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "Successfully downloaded script from: %@.", buf, 0xCu);
    }

    v12 = *(a1 + 48);
    if (!v12)
    {
      if (v8)
      {
        v13 = *(a1 + 32);
        objc_sync_enter(v13);
        v14 = [WeakRetained appScriptDict];
        [v14 setObject:v8 forKey:*(a1 + 40)];

        objc_sync_exit(v13);
      }

      goto LABEL_12;
    }

LABEL_11:
    (*(v12 + 16))(v12, v8, v6, 200);
    goto LABEL_12;
  }

  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v5 url];
    v17 = [v16 absoluteString];
    v18 = [v6 description];
    *buf = 138412546;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "Failed to download application script from: %@. -- %@", buf, 0x16u);
  }

  v8 = 0;
  v12 = *(a1 + 48);
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_lock(&__completionBlocksLock);
  [WeakRetained[2] objectForKey:*(a1 + 40)];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v19 = v25 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v20)
  {
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v19);
        }

        (*(*(*(&v24 + 1) + 8 * v22) + 16))(*(*(&v24 + 1) + 8 * v22));
        ++v22;
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }

  [v19 removeAllObjects];
  os_unfair_lock_unlock(&__completionBlocksLock);
  v23 = *(a1 + 32);
  objc_sync_enter(v23);
  [WeakRetained setCurrentURL:0];
  objc_sync_exit(v23);
}

@end