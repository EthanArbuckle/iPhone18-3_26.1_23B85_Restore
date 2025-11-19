@interface PXAssetMetadataDonator
+ (PXAssetMetadataDonator)sharedDonator;
+ (id)new;
- (PXAssetMetadataDonator)init;
- (id)_init;
- (void)_notifyWhenDonationIsComplete:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)donate:(id)a3;
- (void)donateMetadataForAsset:(id)a3;
@end

@implementation PXAssetMetadataDonator

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PXAssetMetadataDonator_applicationDidEnterBackground___block_invoke;
  v12[3] = &unk_1E7749A28;
  v6 = v5;
  v13 = v6;
  v14 = &v15;
  v7 = [v6 beginBackgroundTaskWithName:@"Asset Metadata Donation" expirationHandler:v12];
  v16[3] = v7;
  [(PXAssetMetadataDonator *)self donate:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PXAssetMetadataDonator_applicationDidEnterBackground___block_invoke_2;
  v9[3] = &unk_1E7749A28;
  v8 = v6;
  v10 = v8;
  v11 = &v15;
  [(PXAssetMetadataDonator *)self _notifyWhenDonationIsComplete:v9];

  _Block_object_dispose(&v15, 8);
}

- (void)_notifyWhenDonationIsComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PXAssetMetadataDonator__notifyWhenDonationIsComplete___block_invoke;
    aBlock[3] = &unk_1E7744A38;
    aBlock[4] = self;
    v10 = v11;
    v9 = v4;
    v6 = _Block_copy(aBlock);
    v7 = dispatch_time(0, 5000000000);
    dispatch_after(v7, MEMORY[0x1E69E96A0], v6);
    dispatch_async(self->_backgroundQueue, v6);

    _Block_object_dispose(v11, 8);
  }
}

void __56__PXAssetMetadataDonator__notifyWhenDonationIsComplete___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

- (void)donate:(id)a3
{
  backgroundQueue = self->_backgroundQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXAssetMetadataDonator_donate___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(backgroundQueue, block);
}

void __33__PXAssetMetadataDonator_donate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v17 = [*(a1 + 32) locationDescriptions];
  if ([v17 count])
  {
    v1 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v2 = v17;
    v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v3)
    {
      v4 = *v20;
      do
      {
        v5 = 0;
        do
        {
          if (*v20 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v19 + 1) + 8 * v5);
          v23 = 0;
          v24 = &v23;
          v25 = 0x2050000000;
          v7 = getPPLocationNamedEntitiesClass_softClass;
          v26 = getPPLocationNamedEntitiesClass_softClass;
          if (!getPPLocationNamedEntitiesClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getPPLocationNamedEntitiesClass_block_invoke;
            v29 = &unk_1E774BD00;
            v30 = &v23;
            __getPPLocationNamedEntitiesClass_block_invoke(buf);
            v7 = v24[3];
          }

          v8 = v7;
          _Block_object_dispose(&v23, 8);
          v9 = objc_alloc_init(v7);
          [v9 setUnstructuredLocationString:v6];
          [v1 addObject:v9];

          ++v5;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v3);
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v10 = getPPCustomDonationClass_softClass;
    v26 = getPPCustomDonationClass_softClass;
    if (!getPPCustomDonationClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPPCustomDonationClass_block_invoke;
      v29 = &unk_1E774BD00;
      v30 = &v23;
      __getPPCustomDonationClass_block_invoke(buf);
      v10 = v24[3];
    }

    v11 = v10;
    _Block_object_dispose(&v23, 8);
    v18 = 0;
    v12 = [v10 donatePhotosOneUpLocationNamedEntities:v1 bundleId:@"com.apple.mobileslideshow" error:&v18];
    v13 = v18;
    if (v12)
    {
      v14 = [*(a1 + 32) locationDescriptions];
      [v14 removeAllObjects];

      v15 = [*(a1 + 32) locationDescriptionsByAssetLocalIdentifiers];
      [v15 removeAllObjects];
    }

    else
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[PXAssetMetadataDonator donate:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "%s - %@", buf, 0x16u);
      }
    }
  }
}

- (void)donateMetadataForAsset:(id)a3
{
  v4 = a3;
  backgroundQueue = self->_backgroundQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXAssetMetadataDonator_donateMetadataForAsset___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(backgroundQueue, v7);
}

void __49__PXAssetMetadataDonator_donateMetadataForAsset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationDescriptionsByAssetLocalIdentifiers];
  v3 = [*(a1 + 40) localIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v10 = 0;
    [*(a1 + 40) fetchPropertySetsIfNeeded];
    v5 = [*(a1 + 40) photosOneUpProperties];
    v6 = [v5 localizedGeoDescriptionIsHome:&v10];

    if (v6)
    {
      v7 = [*(a1 + 32) locationDescriptionsByAssetLocalIdentifiers];
      v8 = [*(a1 + 40) localIdentifier];
      [v7 setObject:v6 forKeyedSubscript:v8];

      if ((v10 & 1) == 0)
      {
        v9 = [*(a1 + 32) locationDescriptions];
        [v9 addObject:v6];
      }
    }
  }
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = PXAssetMetadataDonator;
  v2 = [(PXAssetMetadataDonator *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    [(PXAssetMetadataDonator *)v2 setLocationDescriptions:v3];

    v4 = dispatch_queue_create("PXAssetMetadataDonator Background Queue", 0);
    [(PXAssetMetadataDonator *)v2 setBackgroundQueue:v4];

    v5 = [MEMORY[0x1E695DF90] dictionary];
    [(PXAssetMetadataDonator *)v2 setLocationDescriptionsByAssetLocalIdentifiers:v5];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    [v6 addObserver:v2 selector:sel_donate_ name:*MEMORY[0x1E69DDBC8] object:v7];
    [v6 addObserver:v2 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:v7];
  }

  return v2;
}

- (PXAssetMetadataDonator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetMetadataDonator.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXAssetMetadataDonator init]"}];

  abort();
}

+ (PXAssetMetadataDonator)sharedDonator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXAssetMetadataDonator_sharedDonator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDonator_onceToken != -1)
  {
    dispatch_once(&sharedDonator_onceToken, block);
  }

  v2 = sharedDonator_sharedDonator;

  return v2;
}

void __39__PXAssetMetadataDonator_sharedDonator__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedDonator_sharedDonator;
  sharedDonator_sharedDonator = v1;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXAssetMetadataDonator.m" lineNumber:44 description:{@"%s is not available as initializer", "+[PXAssetMetadataDonator new]"}];

  abort();
}

@end