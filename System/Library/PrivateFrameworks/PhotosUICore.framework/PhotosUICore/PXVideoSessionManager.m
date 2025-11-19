@interface PXVideoSessionManager
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoCrossfadeDuration;
+ (BOOL)isLivePhotoStabilizationEnabled;
+ (PXVideoSessionManager)sharedInstance;
- (NSArray)activeSessions;
- (NSString)description;
- (PXVideoSessionManager)init;
- (PXVideoSessionManager)initWithResourceReclamationController:(id)a3;
- (id)checkOutSessionWithContentProvider:(id)a3;
- (id)contentProviderForAsset:(id)a3 withOptions:(id)a4 mediaProvider:(id)a5 requestURLOnly:(BOOL)a6;
- (id)videoSessionForAsset:(id)a3 mediaProvider:(id)a4;
- (id)videoSessionForAsset:(id)a3 withOptions:(id)a4 mediaProvider:(id)a5;
- (void)_flushReusablePlayerPool;
- (void)_updateCanStoreReusablePlayers;
- (void)checkInReusableWrappedPlayer:(id)a3;
- (void)checkInVideoSession:(id)a3;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXVideoSessionManager

- (void)_flushReusablePlayerPool
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PXVideoSessionManager__flushReusablePlayerPool__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(ivarQueue, block);
}

- (void)_updateCanStoreReusablePlayers
{
  v3 = +[PXApplicationState sharedState];
  v4 = [v3 visibilityState] != 3;

  ivarQueue = self->_ivarQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXVideoSessionManager__updateCanStoreReusablePlayers__block_invoke;
  v6[3] = &unk_1E7749428;
  v6[4] = self;
  v7 = v4;
  dispatch_async(ivarQueue, v6);
}

_BYTE *__55__PXVideoSessionManager__updateCanStoreReusablePlayers__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = *(a1 + 40);
  result = *(a1 + 32);
  if ((result[136] & 1) == 0)
  {
    return [result _ivarQueue_flushReusablePlayerPool];
  }

  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ApplicationStateContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXVideoSessionManager.m" lineNumber:181 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXVideoSessionManager *)self _updateCanStoreReusablePlayers];
    v9 = v11;
  }
}

- (void)checkInReusableWrappedPlayer:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 status] == 2)
  {
    v5 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 error];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Dropping checked-in wrapped player because it's status is .failed. Error: %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    [(PXReusableObjectPool *)self->_ivarQueue_playerPool checkInReusableObject:v4];
  }
}

- (NSArray)activeSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45122;
  v10 = __Block_byref_object_dispose__45123;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PXVideoSessionManager_activeSessions__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__PXVideoSessionManager_activeSessions__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)description
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__45122;
  v25 = __Block_byref_object_dispose__45123;
  v26 = 0;
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PXVideoSessionManager_description__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(ivarQueue, block);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v22[5];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      v6 += v7;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) description];
        [v3 appendFormat:@"\t%@\n", v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = PXVideoSessionManager;
  v12 = [(PXVideoSessionManager *)&v15 description];
  v13 = [v11 stringWithFormat:@"%@, %lu sessions:\n%@", v12, v6, v3];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __36__PXVideoSessionManager_description__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)checkInVideoSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    ivarQueue = self->_ivarQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXVideoSessionManager_checkInVideoSession___block_invoke;
    v7[3] = &unk_1E774C620;
    v8 = v4;
    v9 = self;
    dispatch_async(ivarQueue, v7);
  }
}

void __45__PXVideoSessionManager_checkInVideoSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentProvider];
  v3 = [v2 contentIdentifier];

  [*(*(a1 + 40) + 128) removeObject:v3];
  v4 = [*(*(a1 + 40) + 128) countForObject:v3];
  if (!v4)
  {
    [*(*(a1 + 40) + 120) removeObjectForKey:v3];
  }

  v5 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__PXVideoSessionManager_checkInVideoSession___block_invoke_2;
  v15[3] = &unk_1E774C5F8;
  v15[4] = v5;
  [v5 performChanges:v15];
  if (!v4)
  {
    v6 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PXVideoSessionManager_checkInVideoSession___block_invoke_3;
    v13[3] = &unk_1E7731938;
    v14 = v6;
    [v14 performChanges:v13 withPresentationContext:1 presenter:0];
    v7 = *(*(a1 + 40) + 104);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__PXVideoSessionManager_checkInVideoSession___block_invoke_4;
    v10[3] = &unk_1E774C620;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = v9;
    dispatch_async(v7, v10);
  }
}

void __45__PXVideoSessionManager_checkInVideoSession___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setDesiredPlayState:0];
  v3 = [*(a1 + 32) videoPlayer];
  [v3 replaceCurrentItemWithPlayerItem:0];
}

void __45__PXVideoSessionManager_checkInVideoSession___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) performFinalCleanup];
  v3 = *(a1 + 40);
  v4 = *(v3 + 96);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PXVideoSessionManager_checkInVideoSession___block_invoke_5;
  v6[3] = &unk_1E774C620;
  v7 = v2;
  v8 = v3;
  v5 = v2;
  dispatch_async(v4, v6);
}

uint64_t __45__PXVideoSessionManager_checkInVideoSession___block_invoke_5(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = *(result + 40);
    if (*(v1 + 136) == 1)
    {
      return [*(v1 + 112) checkInReusableObject:?];
    }
  }

  return result;
}

- (id)checkOutSessionWithContentProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 contentIdentifier];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__45122;
  v19 = __Block_byref_object_dispose__45123;
  v20 = 0;
  ivarQueue = self->_ivarQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PXVideoSessionManager_checkOutSessionWithContentProvider___block_invoke;
  v11[3] = &unk_1E77448A8;
  v11[4] = self;
  v12 = v5;
  v13 = v4;
  v14 = &v15;
  v7 = v4;
  v8 = v5;
  dispatch_sync(ivarQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __60__PXVideoSessionManager_checkOutSessionWithContentProvider___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(*(a1 + 32) + 112) checkOutReusableObjectWithReuseIdentifier:42];
    v6 = [PXVideoSession alloc];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) resourceReclamationController];
    v9 = [(PXVideoSession *)v6 initWithContentProvider:v7 videoPlayer:v5 resourceReclamationController:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(*(a1 + 32) + 120) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 128) addObject:*(a1 + 40)];
  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__PXVideoSessionManager_checkOutSessionWithContentProvider___block_invoke_2;
  v14[3] = &unk_1E774C5F8;
  v14[4] = v12;
  return [v12 performChanges:v14];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PXVideoSessionManager;
  [(PXVideoSessionManager *)&v4 dealloc];
}

- (PXVideoSessionManager)initWithResourceReclamationController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXVideoSessionManager;
  v6 = [(PXVideoSessionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceReclamationController, a3);
    [v5 registerObserver:v7];
    px_dispatch_queue_create_serial_with_priority();
  }

  return 0;
}

uint64_t __63__PXVideoSessionManager_initWithResourceReclamationController___block_invoke_2(uint64_t a1)
{
  v2 = +[PXApplicationState sharedState];
  [v2 registerChangeObserver:*(a1 + 32) context:ApplicationStateContext];

  v3 = *(a1 + 32);

  return [v3 _updateCanStoreReusablePlayers];
}

id __63__PXVideoSessionManager_initWithResourceReclamationController___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C1B20]);

  return v0;
}

- (PXVideoSessionManager)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69C1AC8]);
  v4 = [(PXVideoSessionManager *)self initWithResourceReclamationController:v3];

  return v4;
}

+ (PXVideoSessionManager)sharedInstance
{
  if (sharedInstance_onceToken_45152 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_45152, &__block_literal_global_45153);
  }

  v3 = sharedInstance_sharedInstance_45154;

  return v3;
}

void __39__PXVideoSessionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXVideoSessionManager);
  v1 = sharedInstance_sharedInstance_45154;
  sharedInstance_sharedInstance_45154 = v0;
}

- (id)contentProviderForAsset:(id)a3 withOptions:(id)a4 mediaProvider:(id)a5 requestURLOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6 && (([v11 shouldCrossfadeLivePhotosWhenLooping] & 1) != 0 || (objc_msgSend(v11, "shouldStabilizeLivePhotosIfPossible") & 1) != 0 || (objc_msgSend(v11, "isAudioAllowed") & 1) == 0))
  {
    PXAssertGetLog();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 mediaType] != 1 || v6)
    {
      v18 = v12;
      v19 = v10;
      v20 = [PXPhotoKitVideoContentProvider alloc];
      [v11 strategies];
      v21 = v33 = v12;
      v22 = [v11 audioSessionKind];
      v23 = [(PXVideoSessionManager *)self resourceReclamationController];
      v13 = [(PXPhotoKitVideoContentProvider *)v20 initWithAsset:v19 mediaProvider:v18 deliveryStrategies:v21 audioSessionKind:v22 requestURLOnly:v6 resourceReclamationController:v23];

      v12 = v33;
    }

    else if ([v11 shouldPlayLivePhotosWithSettlingEffectIfPossible])
    {
      v13 = [[PXWallpaperAssetVideoContentProvider alloc] initWithWallpaperAsset:v10];
    }

    else
    {
      v34 = v12;
      v24 = v10;
      v25 = objc_alloc_init(PXPhotoKitLivePhotoVideoContentProviderSpec);
      if (v11)
      {
        [v11 livePhotoLoopTimeRange];
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
      }

      *buf = v41;
      v39 = v42;
      v40 = v43;
      [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v25 setLoopTimeRange:buf, v34];
      *buf = *MEMORY[0x1E6960CC0];
      *&v39 = *(MEMORY[0x1E6960CC0] + 16);
      [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v25 setLoopStartTime:buf];
      if ([v11 shouldCrossfadeLivePhotosWhenLooping])
      {
        v26 = objc_opt_class();
        if (v26)
        {
          [v26 livePhotoCrossfadeDuration];
        }

        else
        {
          v36 = 0uLL;
          v37 = 0;
        }

        *buf = v36;
        *&v39 = v37;
        [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v25 setCrossfadeDuration:buf];
      }

      if ([v11 shouldStabilizeLivePhotosIfPossible])
      {
        -[PXPhotoKitLivePhotoVideoContentProviderSpec setStabilizeIfPossible:](v25, "setStabilizeIfPossible:", [objc_opt_class() isLivePhotoStabilizationEnabled]);
      }

      v27 = v12;
      if ([v11 isAudioAllowed])
      {
        [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v25 setWantsAudio:1];
      }

      v28 = [PXPhotoKitLivePhotoVideoContentProvider alloc];
      v29 = [v11 strategies];
      v30 = [v11 audioSessionKind];
      v31 = [(PXVideoSessionManager *)self resourceReclamationController];
      v13 = [(PXPhotoKitLivePhotoVideoContentProvider *)v28 initWithAsset:v24 mediaProvider:v35 deliveryStrategies:v29 audioSessionKind:v30 spec:v25 resourceReclamationController:v31];

      v12 = v27;
    }
  }

  else
  {
    v14 = [PXDisplayAssetVideoContentProvider alloc];
    v15 = [v11 strategies];
    v16 = [v11 audioSessionKind];
    v17 = [(PXVideoSessionManager *)self resourceReclamationController];
    v13 = [(PXDisplayAssetVideoContentProvider *)v14 initWithAsset:v10 mediaProvider:v12 deliveryStrategies:v15 audioSessionKind:v16 requestURLOnly:v6 resourceReclamationController:v17];
  }

  if ([v11 shouldCreateUniqueVideoSession])
  {
    [(PXWallpaperAssetVideoContentProvider *)v13 makeUniqueContentIdentifier];
  }

  return v13;
}

- (id)videoSessionForAsset:(id)a3 withOptions:(id)a4 mediaProvider:(id)a5
{
  v6 = [(PXVideoSessionManager *)self contentProviderForAsset:a3 withOptions:a4 mediaProvider:a5 requestURLOnly:0];
  v7 = [(PXVideoSessionManager *)self checkOutSessionWithContentProvider:v6];

  return v7;
}

- (id)videoSessionForAsset:(id)a3 mediaProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
  v9 = [(PXVideoSessionManager *)self videoSessionForAsset:v7 withOptions:v8 mediaProvider:v6];

  return v9;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoCrossfadeDuration
{
  v6 = +[PXCuratedLibrarySettings sharedInstance];
  [v6 livePhotoLoopingCrossfadeDuration];
  CMTimeMakeWithSeconds(retstr, v4, 600);

  return result;
}

+ (BOOL)isLivePhotoStabilizationEnabled
{
  v2 = +[PXCuratedLibrarySettings sharedInstance];
  v3 = [v2 stabilizeLivePhotos];

  return v3;
}

@end