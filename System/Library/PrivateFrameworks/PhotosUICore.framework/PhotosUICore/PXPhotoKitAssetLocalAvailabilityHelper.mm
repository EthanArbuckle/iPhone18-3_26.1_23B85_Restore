@interface PXPhotoKitAssetLocalAvailabilityHelper
- (PXPhotoKitAssetLocalAvailabilityHelper)initWithAssets:(id)assets treatLivePhotoAsStill:(BOOL)still;
- (id)_setUpLocalAvailabilityRequests;
- (id)ensureLocalAvailabilityOfAssetsWithCompletionHandler:(id)handler;
- (unint64_t)_ensureAssetsAreLocallyAvailable:(id *)available;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLocalAvailabilityProgress:(id)progress;
@end

@implementation PXPhotoKitAssetLocalAvailabilityHelper

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &PXPhotoKitAssetLocalAvailabilityHelperFractionCompletedContext)
  {
    localAvailabilityProgress = [(PXPhotoKitAssetLocalAvailabilityHelper *)self localAvailabilityProgress];
    v14 = [objectCopy isEqual:localAvailabilityProgress];

    if (v14)
    {
      localAvailabilityProgress2 = [(PXPhotoKitAssetLocalAvailabilityHelper *)self localAvailabilityProgress];
      [localAvailabilityProgress2 fractionCompleted];
      v17 = v16;

      v18 = PLUIGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v26 = v17;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_INFO, "PXPhotoKitAssetLocalAvailabilityHelper: Fraction completed: %f", buf, 0xCu);
      }
    }
  }

  else if (context == &PXPhotoKitAssetLocalAvailabilityHelperIsCancelledContext)
  {
    localAvailabilityProgress3 = [(PXPhotoKitAssetLocalAvailabilityHelper *)self localAvailabilityProgress];
    v20 = [objectCopy isEqual:localAvailabilityProgress3];

    if (v20)
    {
      localAvailabilityProgress4 = [(PXPhotoKitAssetLocalAvailabilityHelper *)self localAvailabilityProgress];
      isCancelled = [localAvailabilityProgress4 isCancelled];

      if (isCancelled)
      {
        v23 = PLUIGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_INFO, "PXPhotoKitAssetLocalAvailabilityHelper: Action was cancelled", buf, 2u);
        }

        self->_wasInterrupted = 1;
      }
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PXPhotoKitAssetLocalAvailabilityHelper;
    [(PXPhotoKitAssetLocalAvailabilityHelper *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (unint64_t)_ensureAssetsAreLocallyAvailable:(id *)available
{
  v5 = objc_alloc_init(MEMORY[0x1E6978A28]);
  [v5 setTreatLivePhotoAsStill:{-[PXPhotoKitAssetLocalAvailabilityHelper treatLivePhotoAsStill](self, "treatLivePhotoAsStill")}];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__150216;
  v26 = __Block_byref_object_dispose__150217;
  v27 = 0;
  v6 = dispatch_group_create();
  resourceLocalAvailabilityRequests = self->_resourceLocalAvailabilityRequests;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __75__PXPhotoKitAssetLocalAvailabilityHelper__ensureAssetsAreLocallyAvailable___block_invoke;
  v17 = &unk_1E773DB50;
  v8 = v6;
  v18 = v8;
  selfCopy = self;
  v9 = v5;
  v20 = v9;
  v21 = &v22;
  [(NSMutableArray *)resourceLocalAvailabilityRequests enumerateObjectsUsingBlock:&v14];
  if ([(PXPhotoKitAssetLocalAvailabilityHelper *)self wasInterrupted:v14])
  {
    localAvailabilityProgress = [(PXPhotoKitAssetLocalAvailabilityHelper *)self localAvailabilityProgress];
    [localAvailabilityProgress cancel];

    v11 = 2;
  }

  else
  {
    v12 = v23[5];
    if (v12)
    {
      if (available)
      {
        *available = v12;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  _Block_object_dispose(&v22, 8);
  return v11;
}

void __75__PXPhotoKitAssetLocalAvailabilityHelper__ensureAssetsAreLocallyAvailable___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  dispatch_group_enter(*(a1 + 32));
  objc_storeStrong((*(a1 + 40) + 48), a2);
  v8 = *(a1 + 48);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __75__PXPhotoKitAssetLocalAvailabilityHelper__ensureAssetsAreLocallyAvailable___block_invoke_2;
  v16 = &unk_1E773DB28;
  v9 = v7;
  v10 = *(a1 + 56);
  v17 = v9;
  v19 = v10;
  v20 = a4;
  v18 = *(a1 + 32);
  [v9 retrieveRequiredResourcesWithOptions:v8 completionHandler:&v13];
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v11 = *(a1 + 40);
  v12 = *(v11 + 48);
  *(v11 + 48) = 0;

  if ([*(a1 + 40) wasInterrupted])
  {
    *a4 = 1;
  }
}

void __75__PXPhotoKitAssetLocalAvailabilityHelper__ensureAssetsAreLocallyAvailable___block_invoke_2(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [*(a1 + 32) asset];
  v12 = [v11 localIdentifier];

  if (a2)
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v9;
      v14 = "PXPhotoKitAssetLocalAvailabilityHelper: Asset %@ retrieval succeeded: %@";
LABEL_7:
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v15, v16, v14, &v17, 0x16u);
    }
  }

  else if (a3)
  {
    **(a1 + 56) = 1;
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v9;
      v14 = "PXPhotoKitAssetLocalAvailabilityHelper: Asset %@ retrieval cancelled: %@";
      goto LABEL_7;
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    **(a1 + 56) = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      v14 = "PXPhotoKitAssetLocalAvailabilityHelper: Asset %@ retrieval failed with error: %@.";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));
}

- (id)_setUpLocalAvailabilityRequests
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6978A28]);
  [v3 setTreatLivePhotoAsStill:{-[PXPhotoKitAssetLocalAvailabilityHelper treatLivePhotoAsStill](self, "treatLivePhotoAsStill")}];
  array = [MEMORY[0x1E695DF70] array];
  pinnedResourceLocalAvailabilityRequests = self->_pinnedResourceLocalAvailabilityRequests;
  self->_pinnedResourceLocalAvailabilityRequests = array;

  array2 = [MEMORY[0x1E695DF70] array];
  resourceLocalAvailabilityRequests = self->_resourceLocalAvailabilityRequests;
  self->_resourceLocalAvailabilityRequests = array2;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  assets = [(PXPhotoKitAssetLocalAvailabilityHelper *)self assets];
  v9 = [assets countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(assets);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [objc_alloc(MEMORY[0x1E6978A20]) initWithAsset:v13 requestType:2];
        [(NSMutableArray *)self->_pinnedResourceLocalAvailabilityRequests addObject:v14];
        v15 = [v14 resourceAvailabilityForOptions:v3 resourceInfo:0];
        v16 = PLUIGetLog();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v17)
          {
            localIdentifier = [v13 localIdentifier];
            *buf = 138412290;
            v35 = localIdentifier;
            _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_INFO, "PXPhotoKitAssetLocalAvailabilityHelper: [Queued] Resources need retrieval for %@", buf, 0xCu);
          }

          [(NSMutableArray *)self->_resourceLocalAvailabilityRequests addObject:v14];
        }

        else
        {
          if (v17)
          {
            localIdentifier2 = [v13 localIdentifier];
            *buf = 138412290;
            v35 = localIdentifier2;
            _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_INFO, "PXPhotoKitAssetLocalAvailabilityHelper: [Skipped] Resources already available for %@", buf, 0xCu);
          }
        }
      }

      v10 = [assets countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v10);
  }

  v20 = PLUIGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [(NSMutableArray *)self->_resourceLocalAvailabilityRequests count];
    assets2 = [(PXPhotoKitAssetLocalAvailabilityHelper *)self assets];
    v23 = [assets2 count];
    *buf = 134218240;
    v35 = v21;
    v36 = 2048;
    v37 = v23;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_INFO, "PXPhotoKitAssetLocalAvailabilityHelper: %tu / %tu assets need to have their resource retrieved.", buf, 0x16u);
  }

  v24 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{-[NSMutableArray count](self->_resourceLocalAvailabilityRequests, "count")}];
  v25 = self->_resourceLocalAvailabilityRequests;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73__PXPhotoKitAssetLocalAvailabilityHelper__setUpLocalAvailabilityRequests__block_invoke;
  v28[3] = &unk_1E773DB00;
  v26 = v24;
  v29 = v26;
  [(NSMutableArray *)v25 enumerateObjectsUsingBlock:v28];
  [(PXPhotoKitAssetLocalAvailabilityHelper *)self setLocalAvailabilityProgress:v26];

  return v26;
}

void __73__PXPhotoKitAssetLocalAvailabilityHelper__setUpLocalAvailabilityRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 progress];
  [v2 addChild:v3 withPendingUnitCount:1];
}

- (void)setLocalAvailabilityProgress:(id)progress
{
  progressCopy = progress;
  v5 = self->_localAvailabilityProgress;
  v6 = v5;
  if (v5 == progressCopy)
  {
  }

  else
  {
    v7 = [(NSProgress *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(NSProgress *)self->_localAvailabilityProgress removeObserver:self forKeyPath:@"fractionCompleted"];
      [(NSProgress *)self->_localAvailabilityProgress removeObserver:self forKeyPath:@"cancelled"];
      objc_storeStrong(&self->_localAvailabilityProgress, progress);
      [(NSProgress *)self->_localAvailabilityProgress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:&PXPhotoKitAssetLocalAvailabilityHelperFractionCompletedContext];
      [(NSProgress *)self->_localAvailabilityProgress addObserver:self forKeyPath:@"cancelled" options:4 context:&PXPhotoKitAssetLocalAvailabilityHelperIsCancelledContext];
    }
  }
}

- (id)ensureLocalAvailabilityOfAssetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_localAvailabilityProgress)
  {
    PXAssertGetLog();
  }

  self->_wasInterrupted = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("PXPhotoKitAssetLocalAvailabilityHelper", v5);
  workQueue = self->_workQueue;
  self->_workQueue = v6;

  _setUpLocalAvailabilityRequests = [(PXPhotoKitAssetLocalAvailabilityHelper *)self _setUpLocalAvailabilityRequests];
  v9 = self->_workQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PXPhotoKitAssetLocalAvailabilityHelper_ensureLocalAvailabilityOfAssetsWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E774C2F0;
  v12[4] = self;
  v13 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, v12);

  return _setUpLocalAvailabilityRequests;
}

void __95__PXPhotoKitAssetLocalAvailabilityHelper_ensureLocalAvailabilityOfAssetsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 _ensureAssetsAreLocallyAvailable:&v13];
  v4 = v13;
  v5 = *(a1 + 40);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__PXPhotoKitAssetLocalAvailabilityHelper_ensureLocalAvailabilityOfAssetsWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E773DAC8;
    v12 = v3;
    v11 = v5;
    v6 = v4;
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __95__PXPhotoKitAssetLocalAvailabilityHelper_ensureLocalAvailabilityOfAssetsWithCompletionHandler___block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2 == 2)
  {
    v3 = *(a1[6] + 16);
  }

  else if (v2 == 1)
  {
    v3 = *(a1[6] + 16);
  }

  else
  {
    if (v2)
    {
      goto LABEL_8;
    }

    v3 = *(a1[6] + 16);
  }

  v3();
LABEL_8:
  v4 = a1[5];

  return [v4 setLocalAvailabilityProgress:0];
}

- (void)dealloc
{
  [(PXPhotoKitAssetLocalAvailabilityHelper *)self setLocalAvailabilityProgress:0];
  v3.receiver = self;
  v3.super_class = PXPhotoKitAssetLocalAvailabilityHelper;
  [(PXPhotoKitAssetLocalAvailabilityHelper *)&v3 dealloc];
}

- (PXPhotoKitAssetLocalAvailabilityHelper)initWithAssets:(id)assets treatLivePhotoAsStill:(BOOL)still
{
  assetsCopy = assets;
  v11.receiver = self;
  v11.super_class = PXPhotoKitAssetLocalAvailabilityHelper;
  v8 = [(PXPhotoKitAssetLocalAvailabilityHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assets, assets);
    v9->_treatLivePhotoAsStill = still;
  }

  return v9;
}

@end