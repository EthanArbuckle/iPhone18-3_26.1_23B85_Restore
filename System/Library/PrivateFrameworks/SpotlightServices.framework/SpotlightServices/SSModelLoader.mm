@interface SSModelLoader
+ (id)assetDirectoryPathForType:(unint64_t)type forUpdate:(BOOL)update;
+ (id)sharedInstance;
- (BOOL)hasPendingUpdates;
- (SSModelLoader)init;
- (void)moveNewlyPackagedAssets:(id)assets;
- (void)removeAssetsForType:(unint64_t)type group:(id)group;
- (void)removeAssetsWithName:(id)name;
- (void)unpackageModelAssets:(id)assets assetName:(id)name completion:(id)completion;
- (void)unpackageModelAssets:(id)assets type:(unint64_t)type group:(id)group completion:(id)completion;
- (void)unpackageModelAssets:(id)assets type:(unint64_t)type intoDirectory:(id)directory group:(id)group completion:(id)completion;
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

+ (id)assetDirectoryPathForType:(unint64_t)type forUpdate:(BOOL)update
{
  v5 = @"Library/Spotlight/Resources_V3/";
  if (update)
  {
    v5 = @"Library/Spotlight/Resources.update_V3/";
  }

  v6 = v5;
  v7 = NSHomeDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (type == 1)
  {
    v10 = @"Default";
    goto LABEL_7;
  }

  if (type == 2)
  {
    v10 = @"Experimental";
LABEL_7:
    v11 = [v8 stringByAppendingPathComponent:v10];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  if (([defaultManager fileExistsAtPath:v11] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v11;
}

- (BOOL)hasPendingUpdates
{
  if ([(NSMutableSet *)self->_pendingUpdates count])
  {
    return 1;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = 2;
  do
  {
    v6 = [objc_opt_class() assetDirectoryPathForType:v5 forUpdate:1];
    v7 = [defaultManager contentsOfDirectoryAtPath:v6 error:0];
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

- (void)removeAssetsWithName:(id)name
{
  v10 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (assetIsValid(nameCopy))
  {
    AssetTypeForName = getAssetTypeForName(nameCopy);
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

- (void)removeAssetsForType:(unint64_t)type group:(id)group
{
  groupCopy = group;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSModelLoader_removeAssetsForType_group___block_invoke;
  block[3] = &unk_1E8596808;
  v10 = groupCopy;
  typeCopy = type;
  block[4] = self;
  v8 = groupCopy;
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

- (void)unpackageModelAssets:(id)assets assetName:(id)name completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  nameCopy = name;
  completionCopy = completion;
  if (assetIsValid(nameCopy))
  {
    AssetTypeForName = getAssetTypeForName(nameCopy);
    v12 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:assetsCopy];
    v13 = [objc_opt_class() assetDirectoryPathForType:AssetTypeForName forUpdate:1];
    v14 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = AssetTypeForName;
      _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_INFO, "[Model loading] unpackaging %lu", &v16, 0xCu);
    }

    [(SSModelLoader *)self unpackageModelAssets:v12 type:AssetTypeForName intoDirectory:v13 group:0 completion:completionCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)unpackageModelAssets:(id)assets type:(unint64_t)type group:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  assetsCopy = assets;
  v13 = [objc_opt_class() assetDirectoryPathForType:type forUpdate:1];
  [(SSModelLoader *)self unpackageModelAssets:assetsCopy type:type intoDirectory:v13 group:groupCopy completion:completionCopy];
}

- (void)unpackageModelAssets:(id)assets type:(unint64_t)type intoDirectory:(id)directory group:(id)group completion:(id)completion
{
  assetsCopy = assets;
  directoryCopy = directory;
  groupCopy = group;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SSModelLoader_unpackageModelAssets_type_intoDirectory_group_completion___block_invoke;
  block[3] = &unk_1E8596830;
  objc_copyWeak(v26, &location);
  v22 = directoryCopy;
  v23 = assetsCopy;
  v26[1] = type;
  v24 = groupCopy;
  v25 = completionCopy;
  v17 = groupCopy;
  v18 = completionCopy;
  v19 = assetsCopy;
  v20 = directoryCopy;
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

- (void)moveNewlyPackagedAssets:(id)assets
{
  assetsCopy = assets;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSModelLoader_moveNewlyPackagedAssets___block_invoke;
  block[3] = &unk_1E8596858;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_group_async(assetsCopy, queue, block);

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