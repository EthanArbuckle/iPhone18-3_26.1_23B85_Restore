@interface PXMediaProviderManager
+ (PXMediaProviderManager)defaultManager;
- (PXMediaProviderManager)init;
- (id)imageProviderForAsset:(id)asset;
@end

@implementation PXMediaProviderManager

- (id)imageProviderForAsset:(id)asset
{
  assetCopy = asset;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4156;
  v16 = __Block_byref_object_dispose__4157;
  v17 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PXMediaProviderManager_imageProviderForAsset___block_invoke;
  block[3] = &unk_1E7BB5CA0;
  v10 = assetCopy;
  v11 = &v12;
  block[4] = self;
  v6 = assetCopy;
  dispatch_sync(isolationQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__PXMediaProviderManager_imageProviderForAsset___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:objc_opt_class()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = objc_alloc_init([*(a1 + 40) defaultImageProviderClass]);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(a1 + 32) + 16);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = objc_opt_class();

    [v8 setObject:v9 forKey:v10];
  }
}

- (PXMediaProviderManager)init
{
  v9.receiver = self;
  v9.super_class = PXMediaProviderManager;
  v2 = [(PXMediaProviderManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.photos.PXMediaProviderManager", v3);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v4;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    imageProviderByClass = v2->_imageProviderByClass;
    v2->_imageProviderByClass = strongToStrongObjectsMapTable;
  }

  return v2;
}

+ (PXMediaProviderManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, &__block_literal_global_4166);
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

uint64_t __40__PXMediaProviderManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end