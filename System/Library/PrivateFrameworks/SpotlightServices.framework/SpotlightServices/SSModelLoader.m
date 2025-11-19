@interface SSModelLoader
+ (id)assetDirectoryPathForType:(unint64_t)a3 forUpdate:(BOOL)a4;
+ (id)sharedInstance;
- (BOOL)hasPendingUpdates;
- (SSModelLoader)init;
- (void)moveNewlyPackagedAssets:(id)a3;
- (void)removeAssetsForType:(unint64_t)a3 group:(id)a4;
- (void)removeAssetsWithName:(id)a3;
- (void)unpackageModelAssets:(id)a3 assetName:(id)a4 completion:(id)a5;
- (void)unpackageModelAssets:(id)a3 type:(unint64_t)a4 group:(id)a5 completion:(id)a6;
- (void)unpackageModelAssets:(id)a3 type:(unint64_t)a4 intoDirectory:(id)a5 group:(id)a6 completion:(id)a7;
@end

@implementation SSModelLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[SSModelLoader sharedInstance];
  }

  v3 = sharedInstance_loader;

  return v3;
}

uint64_t __31__SSModelLoader_sharedInstance__block_invoke()
{
  sharedInstance_loader = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SSModelLoader)init
{
  v10.receiver = self;
  v10.super_class = SSModelLoader;
  v2 = [(SSModelLoader *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.searchd.ranking.loader", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingUpdates = v2->_pendingUpdates;
    v2->_pendingUpdates = v7;
  }

  return v2;
}

+ (id)assetDirectoryPathForType:(unint64_t)a3 forUpdate:(BOOL)a4
{
  v5 = @"Library/Spotlight/Resources_V3/";
  if (a4)
  {
    v5 = @"Library/Spotlight/Resources.update_V3/";
  }

  v6 = v5;
  v7 = NSHomeDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  if (a3 == 1)
  {
    v10 = @"Default";
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v10 = @"Experimental";
LABEL_7:
    v11 = [v8 stringByAppendingPathComponent:v10];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  if (([v9 fileExistsAtPath:v11] & 1) == 0)
  {
    [v9 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v11;
}

- (BOOL)hasPendingUpdates
{
  if ([(NSMutableSet *)self->_pendingUpdates count])
  {
    return 1;
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = 2;
  do
  {
    v6 = [objc_opt_class() assetDirectoryPathForType:v5 forUpdate:1];
    v7 = [v4 contentsOfDirectoryAtPath:v6 error:0];
    if ([v7 count])
    {
      pendingUpdates = self->_pendingUpdates;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      [(NSMutableSet *)pendingUpdates addObject:v9];
    }

    --v5;
  }

  while (v5);
  v3 = [(NSMutableSet *)self->_pendingUpdates count]!= 0;

  return v3;
}

- (void)removeAssetsWithName:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (assetIsValid(v4))
  {
    AssetTypeForName = getAssetTypeForName(v4);
    v6 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = AssetTypeForName;
      _os_log_impl(&dword_1D9F69000, v6, OS_LOG_TYPE_DEFAULT, "[Model loading] removing resource for type %lu", &v8, 0xCu);
    }

    [(SSModelLoader *)self removeAssetsForType:AssetTypeForName group:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeAssetsForType:(unint64_t)a3 group:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSModelLoader_removeAssetsForType_group___block_invoke;
  block[3] = &unk_1E8596808;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void __43__SSModelLoader_removeAssetsForType_group___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() assetDirectoryPathForType:a1[6] forUpdate:0];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  [v4 removeItemAtPath:v3 error:&v7];
  v5 = v7;

  v6 = a1[5];
  if (v6)
  {
    dispatch_group_leave(v6);
  }

  [SSADEventReporter reportModelDeletionForType:a1[6]];
}

- (void)unpackageModelAssets:(id)a3 assetName:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (assetIsValid(v9))
  {
    AssetTypeForName = getAssetTypeForName(v9);
    v12 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:v8];
    v13 = [objc_opt_class() assetDirectoryPathForType:AssetTypeForName forUpdate:1];
    v14 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = AssetTypeForName;
      _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_INFO, "[Model loading] unpackaging %lu", &v16, 0xCu);
    }

    [(SSModelLoader *)self unpackageModelAssets:v12 type:AssetTypeForName intoDirectory:v13 group:0 completion:v10];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)unpackageModelAssets:(id)a3 type:(unint64_t)a4 group:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [objc_opt_class() assetDirectoryPathForType:a4 forUpdate:1];
  [(SSModelLoader *)self unpackageModelAssets:v12 type:a4 intoDirectory:v13 group:v11 completion:v10];
}

- (void)unpackageModelAssets:(id)a3 type:(unint64_t)a4 intoDirectory:(id)a5 group:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SSModelLoader_unpackageModelAssets_type_intoDirectory_group_completion___block_invoke;
  block[3] = &unk_1E8596830;
  objc_copyWeak(v26, &location);
  v22 = v13;
  v23 = v12;
  v26[1] = a4;
  v24 = v14;
  v25 = v15;
  v17 = v14;
  v18 = v15;
  v19 = v12;
  v20 = v13;
  dispatch_async(queue, block);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

void __74__SSModelLoader_unpackageModelAssets_type_intoDirectory_group_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
LABEL_6:
    v12 = *(a1 + 48);
    if (v12)
    {
      dispatch_group_leave(v12);
    }

    goto LABEL_11;
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  v14 = 0;
  v6 = [v3 removeItemAtPath:v4 error:&v14];
  v7 = v14;

  if (v6)
  {
    v8 = +[SSCompressionHelper sharedInstance];
    v9 = [v8 unTarFileWithFd:*(a1 + 40) toPath:*(a1 + 32)];

    if (!v9)
    {
      v10 = [WeakRetained pendingUpdates];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
      [v10 addObject:v11];

      (*(*(a1 + 56) + 16))();
    }

    goto LABEL_6;
  }

  v13 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __74__SSModelLoader_unpackageModelAssets_type_intoDirectory_group_completion___block_invoke_cold_1(v5, v7, v13);
  }

LABEL_11:
}

- (void)moveNewlyPackagedAssets:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSModelLoader_moveNewlyPackagedAssets___block_invoke;
  block[3] = &unk_1E8596858;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_group_async(v4, queue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__SSModelLoader_moveNewlyPackagedAssets___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [WeakRetained pendingUpdates];
  v4 = [v3 copy];

  obj = v4;
  v29 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (!v29)
  {
    goto LABEL_20;
  }

  v27 = *v34;
  *&v5 = 138412290;
  v25 = v5;
  v28 = v2;
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v34 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v33 + 1) + 8 * i);
      v8 = [v7 unsignedIntegerValue];
      v9 = *(a1 + 32);
      v10 = [objc_opt_class() assetDirectoryPathForType:v8 forUpdate:1];
      v11 = *(a1 + 32);
      v12 = [objc_opt_class() assetDirectoryPathForType:v8 forUpdate:0];
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v32 = 0;
      v14 = [v13 removeItemAtPath:v12 error:&v32];
      v15 = v32;
      v16 = v15;
      if ((v14 & 1) == 0)
      {
        v20 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __41__SSModelLoader_moveNewlyPackagedAssets___block_invoke_cold_1(v16, v20);
        }

        goto LABEL_19;
      }

      v31 = v15;
      v17 = [v13 moveItemAtPath:v10 toPath:v12 error:&v31];
      v18 = v31;

      v19 = PRSLogCategoryDefault();
      v20 = v19;
      if ((v17 & 1) == 0)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __41__SSModelLoader_moveNewlyPackagedAssets___block_invoke_cold_2(v18, v20);
        }

        v16 = v18;
LABEL_19:
        v2 = v28;

        goto LABEL_20;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        *buf = v25;
        v38 = v21;
        _os_log_impl(&dword_1D9F69000, v20, OS_LOG_TYPE_INFO, "[Model loading] moved resources for type %@", buf, 0xCu);
      }

      +[SSADEventReporter reportModelUnpackageEventWithType:](SSADEventReporter, "reportModelUnpackageEventWithType:", [v7 unsignedIntegerValue]);
      v2 = v28;
      v22 = [v28 pendingUpdates];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v22 removeObject:v23];
    }

    v29 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_20:

LABEL_21:
  v24 = *MEMORY[0x1E69E9840];
}

@end