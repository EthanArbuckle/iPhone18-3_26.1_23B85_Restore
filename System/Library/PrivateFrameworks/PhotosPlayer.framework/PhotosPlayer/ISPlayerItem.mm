@interface ISPlayerItem
+ (ISPlayerItem)playerItemWithAsset:(id)a3 targetSize:(CGSize)a4;
+ (ISPlayerItem)playerItemWithAsset:(id)a3 targetSize:(CGSize)a4 contentAspectRatio:(id)a5;
- (AVVideoComposition)videoComposition;
- (BOOL)_blendsVideoFramesForVideoPlayerItem:(id)a3;
- (BOOL)_isContentSupportsVitalityValid;
- (BOOL)_isMinimumClientVersionValid;
- (BOOL)_isPlaybackStyleIdentifierValid;
- (BOOL)_isPlayerContentValid;
- (BOOL)_isStatusVaild;
- (BOOL)_isVideoPlayerItemValid;
- (BOOL)_needsUpdate;
- (BOOL)aggressivelyCacheVideoFrames;
- (BOOL)contentSupportsVitality;
- (BOOL)decodesAllFramesDuringOrdinaryPlayback;
- (BOOL)reversesMoreVideoFramesInMemory;
- (CGSize)targetSize;
- (ISPlayerContent)playerContent;
- (ISPlayerItem)initWithAsset:(id)a3 targetSize:(CGSize)a4 contentAspectRatio:(id)a5;
- (NSError)error;
- (NSNumber)_variationIdentifier;
- (NSString)_minimumClientVersion;
- (id)_videoPlayerItem;
- (int64_t)_videoPlayerItemRequestID;
- (int64_t)loadingTarget;
- (int64_t)status;
- (void)_cancelLoading;
- (void)_dimFlashingLightsDidChangeValue:(id)a3;
- (void)_handleVideoPlayerItemLoadResultWithSuccess:(BOOL)a3 playerItem:(id)a4 videoDuration:(id *)a5 error:(id)a6;
- (void)_invalidateContentSupportsVitality;
- (void)_invalidateMinimumClientVersion;
- (void)_invalidatePlaybackStyleIdentifier;
- (void)_invalidatePlayerContent;
- (void)_invalidateStatus;
- (void)_invalidateVideoPlayerItem;
- (void)_performIvarRead:(id)a3;
- (void)_performIvarWrite:(id)a3;
- (void)_performWork:(id)a3 sync:(BOOL)a4;
- (void)_reloadAllContent;
- (void)_setError:(id)a3;
- (void)_setMinimumClientVersion:(id)a3;
- (void)_setPlayerContent:(id)a3;
- (void)_setStatus:(int64_t)a3;
- (void)_setVariationIdentifier:(id)a3;
- (void)_setVideoPlayerItem:(id)a3 videoDuration:(id *)a4;
- (void)_setVideoPlayerItemRequestID:(int64_t)a3;
- (void)_updateContentSupportsVitalityIfNeeded;
- (void)_updateMinimumClientVersionIfNeeded;
- (void)_updatePlaybackStyleIdentifierIfNeeded;
- (void)_updatePlayerContentIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateVideoPlayerItemIfNeeded;
- (void)cancelLoading;
- (void)dealloc;
- (void)didPerformChanges;
- (void)performChanges:(id)a3;
- (void)resetAVObjects;
- (void)setAggressivelyCacheVideoFrames:(BOOL)a3;
- (void)setContentSupportsVitality:(BOOL)a3;
- (void)setDecodesAllFramesDuringOrdinaryPlayback:(BOOL)a3;
- (void)setLoadingTarget:(int64_t)a3;
- (void)setReversesMoreVideoFramesInMemory:(BOOL)a3;
- (void)setVideoComposition:(id)a3;
@end

@implementation ISPlayerItem

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_performIvarWrite:(id)a3
{
  ivarQueue = self->_ivarQueue;
  if (ivarQueue)
  {
    dispatch_barrier_sync(ivarQueue, a3);
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (void)_performIvarRead:(id)a3
{
  v4 = a3;
  block = v4;
  if (self->_ivarQueue && (v5 = [(ISPlayerItem *)self _isOnIvarQueue], v4 = block, !v5))
  {
    dispatch_sync(self->_ivarQueue, block);
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

- (void)_performWork:(id)a3 sync:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if ([(ISPlayerItem *)self _isOnWorkQueue])
    {
      v6[2](v6, self);
    }

    else
    {
      workQueue = self->_workQueue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34__ISPlayerItem__performWork_sync___block_invoke;
      v13[3] = &unk_279A29EA8;
      v13[4] = self;
      v14 = v6;
      dispatch_sync(workQueue, v13);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ISPlayerItem__performWork_sync___block_invoke_2;
    block[3] = &unk_279A2A158;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

uint64_t __34__ISPlayerItem__performWork_sync___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_updateStatusIfNeeded
{
  if (![(ISPlayerItem *)self _isStatusVaild])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __37__ISPlayerItem__updateStatusIfNeeded__block_invoke;
    v3[3] = &unk_279A29D68;
    v3[4] = self;
    [(ISPlayerItem *)self _performWork:v3];
  }
}

void __37__ISPlayerItem__updateStatusIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ISPlayerItem__updateStatusIfNeeded__block_invoke_2;
  v8[3] = &unk_279A2A180;
  v8[4] = *(a1 + 32);
  [v3 _performIvarWrite:v8];
  v4 = [v3 error];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 playerContent];
    v7 = [v6 videoPlayerItem];

    if (v7)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  [v3 _setStatus:v5];
}

- (BOOL)_isStatusVaild
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ISPlayerItem__isStatusVaild__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_invalidateStatus
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__ISPlayerItem__invalidateStatus__block_invoke;
  v2[3] = &unk_279A2A180;
  v2[4] = self;
  [(ISPlayerItem *)self _performIvarWrite:v2];
}

- (void)_updatePlayerContentIfNeeded
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__ISPlayerItem__updatePlayerContentIfNeeded__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2];
}

void __44__ISPlayerItem__updatePlayerContentIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 _isPlayerContentValid] & 1) == 0)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __44__ISPlayerItem__updatePlayerContentIfNeeded__block_invoke_2;
    v40[3] = &unk_279A2A180;
    v40[4] = *(a1 + 32);
    [v3 _performIvarWrite:v40];
    v4 = [v3 asset];
    v5 = v4;
    v38 = 0uLL;
    v39 = 0;
    if (v4)
    {
      [v4 photoCMTime];
    }

    v6 = [v5 photo];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__1992;
    v36 = __Block_byref_object_dispose__1993;
    v37 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1992;
    v26 = __Block_byref_object_dispose__1993;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __44__ISPlayerItem__updatePlayerContentIfNeeded__block_invoke_3;
    v21[3] = &unk_279A29E80;
    v21[4] = *(a1 + 32);
    v21[5] = &v32;
    v21[6] = &v28;
    v21[7] = &v22;
    [v3 _performIvarRead:v21];
    v7 = [v5 photoEXIFOrientation];
    v8 = [v5 hasColorAdjustments];
    v9 = [ISPlayerContent alloc];
    v10 = *(a1 + 32) + 172;
    v11 = v33[5];
    v12 = v23[5];
    v13 = *(v29 + 24);
    v19 = v38;
    v20 = v39;
    v14 = *v10;
    v18 = *(v10 + 16);
    v17 = v14;
    LOBYTE(v16) = v13;
    v15 = [(ISPlayerContent *)v9 initWithPhoto:v6 photoIsOriginal:1 photoEXIFOrientation:v7 photoTime:&v19 videoDuration:&v17 photoHasColorAdjustments:v8 videoPlayerItem:v11 variationIdentifier:v12 supportsVitality:v16];
    [v3 _setPlayerContent:v15];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }
}

void __44__ISPlayerItem__updatePlayerContentIfNeeded__block_invoke_3(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 216));
  *(*(a1[6] + 8) + 24) = *(a1[4] + 147);
  v2 = *(a1[4] + 224);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (BOOL)_isPlayerContentValid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ISPlayerItem__isPlayerContentValid__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_invalidatePlayerContent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__ISPlayerItem__invalidatePlayerContent__block_invoke;
  v2[3] = &unk_279A2A180;
  v2[4] = self;
  [(ISPlayerItem *)self _performIvarWrite:v2];
}

- (void)_dimFlashingLightsDidChangeValue:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__ISPlayerItem__dimFlashingLightsDidChangeValue___block_invoke;
  v3[3] = &unk_279A2A488;
  v3[4] = self;
  [(ISPlayerItem *)self performChanges:v3];
}

uint64_t __49__ISPlayerItem__dimFlashingLightsDidChangeValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__ISPlayerItem__dimFlashingLightsDidChangeValue___block_invoke_2;
  v3[3] = &unk_279A2A180;
  v3[4] = v1;
  return [v1 _performIvarWrite:v3];
}

uint64_t __49__ISPlayerItem__dimFlashingLightsDidChangeValue___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _blendsVideoFramesForVideoPlayerItem:*(*(a1 + 32) + 216)];
  v3 = *(*(a1 + 32) + 216);

  return [v3 setBlendsVideoFrames:v2];
}

- (BOOL)_blendsVideoFramesForVideoPlayerItem:(id)a3
{
  if ([a3 is_isHighFramerate])
  {
    return 0;
  }

  v3 = +[ISPlayerSettings sharedInstance];
  v4 = [v3 allowFrameBlending];

  return v4 && !MADimFlashingLightsEnabled();
}

- (id)_videoPlayerItem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1992;
  v9 = __Block_byref_object_dispose__1993;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__ISPlayerItem__videoPlayerItem__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setVideoPlayerItem:(id)a3 videoDuration:(id *)a4
{
  v6 = a3;
  v7 = [(ISPlayerItem *)self _videoPlayerItem];

  if (v7 != v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ISPlayerItem__setVideoPlayerItem_videoDuration___block_invoke;
    v8[3] = &unk_279A29E58;
    v8[4] = self;
    v9 = v6;
    v10 = *&a4->var0;
    var3 = a4->var3;
    [(ISPlayerItem *)self performChanges:v8];
  }
}

void __50__ISPlayerItem__setVideoPlayerItem_videoDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__ISPlayerItem__setVideoPlayerItem_videoDuration___block_invoke_2;
  v3[3] = &unk_279A29E30;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  [v2 _performIvarWrite:v3];
  [*(a1 + 32) _invalidatePlayerContent];
}

__n128 __50__ISPlayerItem__setVideoPlayerItem_videoDuration___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 216), *(a1 + 40));
  [*(*(a1 + 32) + 216) setAggressivelyCachesVideoFrames:*(*(a1 + 32) + 144)];
  [*(*(a1 + 32) + 216) setReversesMoreVideoFramesInMemory:*(*(a1 + 32) + 145)];
  [*(*(a1 + 32) + 216) setDecodesAllFramesDuringOrdinaryPlayback:*(*(a1 + 32) + 146)];
  [*(*(a1 + 32) + 216) setVideoComposition:*(*(a1 + 32) + 128)];
  v2 = *(*(a1 + 32) + 216);
  if (v2)
  {
    [v2 duration];
    v2 = *(*(a1 + 32) + 216);
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  v6 = v8;
  v7 = v9;
  [v2 setForwardPlaybackEndTime:&v6];
  [*(*(a1 + 32) + 216) setBlendsVideoFrames:{objc_msgSend(*(a1 + 32), "_blendsVideoFramesForVideoPlayerItem:", *(*(a1 + 32) + 216))}];
  [*(*(a1 + 32) + 216) setSeekingWaitsForVideoCompositionRendering:1];
  [*(*(a1 + 32) + 216) is_enableColorMatching];
  v3 = (*(a1 + 32) + 172);
  v4 = *(a1 + 64);
  result = *(a1 + 48);
  *v3 = result;
  v3[1].n128_u64[0] = v4;
  return result;
}

- (void)_handleVideoPlayerItemLoadResultWithSuccess:(BOOL)a3 playerItem:(id)a4 videoDuration:(id *)a5 error:(id)a6
{
  v10 = a4;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__ISPlayerItem__handleVideoPlayerItemLoadResultWithSuccess_playerItem_videoDuration_error___block_invoke;
  v14[3] = &unk_279A29E08;
  v18 = a3;
  v17 = *a5;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(ISPlayerItem *)self _performWork:v14];
}

void __91__ISPlayerItem__handleVideoPlayerItemLoadResultWithSuccess_playerItem_videoDuration_error___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) == 1)
  {
    v3 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v4 = a2;
    [v4 _setVideoPlayerItem:v3 videoDuration:&v10];
  }

  else
  {
    v5 = a2;
    [v5 _invalidateVideoPlayerItem];
    v6 = MEMORY[0x277CCA9B8];
    v7 = *(a1 + 40);
    if (v7)
    {
      v12 = *MEMORY[0x277CCA7E8];
      v13[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v4 = [v6 errorWithDomain:@"com.apple.photosplayer" code:102 userInfo:v8];
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photosplayer" code:102 userInfo:0];
    }

    [v5 _setError:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateVideoPlayerItemIfNeeded
{
  if (![(ISPlayerItem *)self _isVideoPlayerItemValid])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__ISPlayerItem__updateVideoPlayerItemIfNeeded__block_invoke;
    v4[3] = &unk_279A2A180;
    v4[4] = self;
    [(ISPlayerItem *)self _performIvarWrite:v4];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __46__ISPlayerItem__updateVideoPlayerItemIfNeeded__block_invoke_2;
    v3[3] = &unk_279A29D68;
    v3[4] = self;
    [(ISPlayerItem *)self _performWork:v3];
  }
}

void __46__ISPlayerItem__updateVideoPlayerItemIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 asset];
  v5 = [v4 videoAsset];
  v15 = 0uLL;
  v16 = 0;
  if (v4)
  {
    [v4 photoCMTime];
  }

  if (v5 && [*(a1 + 32) loadingTarget] >= 1 && objc_msgSend(v3, "status") != 1)
  {
    objc_initWeak(&location, v3);
    v6 = +[ISPlayerItemChef defaultChef];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__ISPlayerItem__updateVideoPlayerItemIfNeeded__block_invoke_3;
    v12[3] = &unk_279A29DE0;
    objc_copyWeak(&v13, &location);
    v10 = v15;
    v11 = v16;
    v7 = *(MEMORY[0x277CC08C8] + 16);
    v9[0] = *MEMORY[0x277CC08C8];
    v9[1] = v7;
    v9[2] = *(MEMORY[0x277CC08C8] + 32);
    v8 = [v6 prepareIrisVideoWithAsset:v5 photoTime:&v10 trimmedTimeRange:v9 completion:v12];

    [v3 _setVideoPlayerItemRequestID:v8];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __46__ISPlayerItem__updateVideoPlayerItemIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, void *a5)
{
  v9 = a5;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = *a4;
  v13 = *(a4 + 2);
  [WeakRetained _handleVideoPlayerItemLoadResultWithSuccess:a2 playerItem:v10 videoDuration:&v12 error:v9];
}

- (BOOL)_isVideoPlayerItemValid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ISPlayerItem__isVideoPlayerItemValid__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_invalidateVideoPlayerItem
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__ISPlayerItem__invalidateVideoPlayerItem__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2];
}

void __42__ISPlayerItem__invalidateVideoPlayerItem__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__ISPlayerItem__invalidateVideoPlayerItem__block_invoke_2;
  v4[3] = &unk_279A2A180;
  v4[4] = v2;
  [v2 _performIvarWrite:v4];
  v3 = +[ISPlayerItemChef defaultChef];
  [v3 cancelPreparationOfIrisAssetWithRequestID:{objc_msgSend(*(a1 + 32), "_videoPlayerItemRequestID")}];
}

- (BOOL)contentSupportsVitality
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ISPlayerItem_contentSupportsVitality__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setContentSupportsVitality:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ISPlayerItem_setContentSupportsVitality___block_invoke;
  v3[3] = &unk_279A29DB8;
  v3[4] = self;
  v4 = a3;
  [(ISPlayerItem *)self performChanges:v3];
}

void __43__ISPlayerItem_setContentSupportsVitality___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ISPlayerItem_setContentSupportsVitality___block_invoke_2;
  v5[3] = &unk_279A29D90;
  v6 = *(a1 + 40);
  v5[4] = v4;
  v5[5] = &v7;
  [v4 _performIvarWrite:v5];
  if (*(v8 + 24) == 1)
  {
    [*(a1 + 32) _invalidatePlayerContent];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __43__ISPlayerItem_setContentSupportsVitality___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 147))
  {
    *(v2 + 147) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateContentSupportsVitalityIfNeeded
{
  if (![(ISPlayerItem *)self _isContentSupportsVitalityValid])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__ISPlayerItem__updateContentSupportsVitalityIfNeeded__block_invoke;
    v4[3] = &unk_279A2A180;
    v4[4] = self;
    [(ISPlayerItem *)self _performIvarWrite:v4];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __54__ISPlayerItem__updateContentSupportsVitalityIfNeeded__block_invoke_2;
    v3[3] = &unk_279A29D68;
    v3[4] = self;
    [(ISPlayerItem *)self _performWork:v3 sync:0];
  }
}

void __54__ISPlayerItem__updateContentSupportsVitalityIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 asset];
  [v4 videoAsset];
  v5 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  if (v5 != 0.0)
  {
    v6 = [objc_alloc(MEMORY[0x277D3B458]) initWithAVAsset:*&v5 timeZoneLookup:0];
    v7 = v6;
    if (v6)
    {
      if (([v6 hasVitality] & 1) == 0)
      {
        v8 = ISGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *(a1 + 32);
          v23 = 138412290;
          v24 = v9;
          _os_log_impl(&dword_25E667000, v8, OS_LOG_TYPE_INFO, "Disabling vitality for Live Photo because of PFMetadataIdentifier.quickTimeMetadataLivePhotoVitalityDisabled: %@", &v23, 0xCu);
        }

        v10 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v11 = ISGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = v5;
        _os_log_error_impl(&dword_25E667000, v11, OS_LOG_TYPE_ERROR, "Unable to read vitality disabled flag from asset: %@.", &v23, 0xCu);
      }
    }

    v12 = +[ISVitalitySettings sharedInstance];
    [v12 vitalityTransitionScoreMinimumValueForPlayback];
    v14 = v13;

    if (v14 <= 0.0)
    {
      v10 = 1;
LABEL_24:

      goto LABEL_25;
    }

    v15 = [objc_alloc(MEMORY[0x277D3B458]) initWithAVAsset:*&v5 timeZoneLookup:0];
    v8 = v15;
    if (v15)
    {
      v16 = [v15 livePhotoVitalityTransitionScore];
      v17 = v16;
      if (v16)
      {
        [v16 floatValue];
        if (v18 < v14)
        {
          v19 = ISGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            [v17 floatValue];
            v20 = *(a1 + 32);
            v23 = 134218498;
            v24 = v21;
            v25 = 2048;
            v26 = v14;
            v27 = 2112;
            v28 = v20;
            _os_log_impl(&dword_25E667000, v19, OS_LOG_TYPE_INFO, "Disabling vitality for Live Photo because of PFMetadataIdentifier.quickTimeMetadataVitalityTransitionScore %f < %f: %@", &v23, 0x20u);
          }

          v10 = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v17 = ISGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = v5;
        _os_log_error_impl(&dword_25E667000, v17, OS_LOG_TYPE_ERROR, "Unable to read vitality transition score from asset: %@.", &v23, 0xCu);
      }
    }

    v10 = 1;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v10 = 1;
LABEL_25:
  [v3 setContentSupportsVitality:v10];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateContentSupportsVitality
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__ISPlayerItem__invalidateContentSupportsVitality__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2];
}

uint64_t __50__ISPlayerItem__invalidateContentSupportsVitality__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__ISPlayerItem__invalidateContentSupportsVitality__block_invoke_2;
  v3[3] = &unk_279A2A180;
  v3[4] = v1;
  return [v1 _performIvarWrite:v3];
}

- (BOOL)_isContentSupportsVitalityValid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ISPlayerItem__isContentSupportsVitalityValid__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSNumber)_variationIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1992;
  v9 = __Block_byref_object_dispose__1993;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__ISPlayerItem__variationIdentifier__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setVariationIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ISPlayerItem__setVariationIdentifier___block_invoke;
  v6[3] = &unk_279A2A398;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ISPlayerItem *)self performChanges:v6];
}

void __40__ISPlayerItem__setVariationIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ISPlayerItem__setVariationIdentifier___block_invoke_2;
  v7[3] = &unk_279A2A320;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = &v11;
  [v4 _performIvarWrite:v7];
  if (*(v12 + 24) == 1)
  {
    [*(a1 + 32) _invalidatePlayerContent];
  }

  _Block_object_dispose(&v11, 8);
}

void __40__ISPlayerItem__setVariationIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2[28])
  {
    v4 = [v2 _variationIdentifier];
    v5 = [v3 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 40) + 224), *(a1 + 32));
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (void)_updatePlaybackStyleIdentifierIfNeeded
{
  if (![(ISPlayerItem *)self _isPlaybackStyleIdentifierValid])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __54__ISPlayerItem__updatePlaybackStyleIdentifierIfNeeded__block_invoke;
    v3[3] = &unk_279A2A180;
    v3[4] = self;
    [(ISPlayerItem *)self _performIvarWrite:v3];
    [(ISPlayerItem *)self _performWork:&__block_literal_global_35 sync:0];
  }
}

void __54__ISPlayerItem__updatePlaybackStyleIdentifierIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 asset];
  v4 = [v3 videoAsset];
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x277D3B458]) initWithAVAsset:v4 timeZoneLookup:0];
  if (!v5)
  {
    v6 = ISGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_25E667000, v6, OS_LOG_TYPE_ERROR, "Unable to read playback style identifier from asset: %@.", &v9, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v7 = [v5 playbackVariation];
  [v2 _setVariationIdentifier:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPlaybackStyleIdentifierValid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ISPlayerItem__isPlaybackStyleIdentifierValid__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_invalidatePlaybackStyleIdentifier
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__ISPlayerItem__invalidatePlaybackStyleIdentifier__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2];
}

uint64_t __50__ISPlayerItem__invalidatePlaybackStyleIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__ISPlayerItem__invalidatePlaybackStyleIdentifier__block_invoke_2;
  v3[3] = &unk_279A2A180;
  v3[4] = v1;
  return [v1 _performIvarWrite:v3];
}

- (NSString)_minimumClientVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1992;
  v9 = __Block_byref_object_dispose__1993;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ISPlayerItem__minimumClientVersion__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setMinimumClientVersion:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ISPlayerItem *)self _minimumClientVersion];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __41__ISPlayerItem__setMinimumClientVersion___block_invoke;
    v16 = &unk_279A2A348;
    v17 = self;
    v7 = v4;
    v18 = v7;
    [(ISPlayerItem *)self _performIvarWrite:&v13];
    if ([v7 integerValue] >= 1)
    {
      v8 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current client version of PhotosPlayer is %d, but the media in %@ requires version >= %@", 0, self->_asset, v7, v13, v14, v15, v16, v17];
      v20[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v11 = [v8 errorWithDomain:@"com.apple.photosplayer" code:104 userInfo:v10];

      [(ISPlayerItem *)self _setError:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __41__ISPlayerItem__setMinimumClientVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_updateMinimumClientVersionIfNeeded
{
  if (![(ISPlayerItem *)self _isMinimumClientVersionValid])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __51__ISPlayerItem__updateMinimumClientVersionIfNeeded__block_invoke;
    v3[3] = &unk_279A2A180;
    v3[4] = self;
    [(ISPlayerItem *)self _performIvarWrite:v3];
    [(ISPlayerItem *)self _performWork:&__block_literal_global_26 sync:0];
  }
}

void __51__ISPlayerItem__updateMinimumClientVersionIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 asset];
  v4 = [v3 videoAsset];
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x277D3B458]) initWithAVAsset:v4 timeZoneLookup:0];
  if (!v5)
  {
    v6 = ISGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_debug_impl(&dword_25E667000, v6, OS_LOG_TYPE_DEBUG, "Unable to read minimum client version from source video: %@.", &v10, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v7 = [v5 livePhotoMinimumClientVersion];
  v8 = [v7 stringValue];
  [v2 _setMinimumClientVersion:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isMinimumClientVersionValid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ISPlayerItem__isMinimumClientVersionValid__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_invalidateMinimumClientVersion
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__ISPlayerItem__invalidateMinimumClientVersion__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2];
}

uint64_t __47__ISPlayerItem__invalidateMinimumClientVersion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ISPlayerItem__invalidateMinimumClientVersion__block_invoke_2;
  v3[3] = &unk_279A2A180;
  v3[4] = v1;
  return [v1 _performIvarWrite:v3];
}

- (BOOL)_needsUpdate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__ISPlayerItem__needsUpdate__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __28__ISPlayerItem__needsUpdate__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 250) ^ 1;
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(result + 32) + 249) ^ 1;
  }

  *(v1 + 24) = v2 & 1;
  v3 = *(*(result + 40) + 8);
  if (*(v3 + 24))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(result + 32) + 248) ^ 1;
  }

  *(v3 + 24) = v4 & 1;
  v5 = *(*(result + 40) + 8);
  if (*(v5 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*(result + 32) + 251) ^ 1;
  }

  *(v5 + 24) = v6 & 1;
  v7 = *(*(result + 40) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(*(result + 32) + 252) ^ 1;
  }

  *(v7 + 24) = v8 & 1;
  v9 = *(*(result + 40) + 8);
  if (*(v9 + 24))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(*(result + 32) + 253) ^ 1;
  }

  *(v9 + 24) = v10 & 1;
  return result;
}

void __31__ISPlayerItem__updateIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateMinimumClientVersionIfNeeded];
  [v2 _updatePlaybackStyleIdentifierIfNeeded];
  [v2 _updateContentSupportsVitalityIfNeeded];
  [v2 _updateVideoPlayerItemIfNeeded];
  [v2 _updatePlayerContentIfNeeded];
  [v2 _updateStatusIfNeeded];
}

- (int64_t)status
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__ISPlayerItem_status__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (ISPlayerContent)playerContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1992;
  v9 = __Block_byref_object_dispose__1993;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ISPlayerItem_playerContent__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setStatus:(int64_t)a3
{
  if ([(ISPlayerItem *)self status]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __27__ISPlayerItem__setStatus___block_invoke;
    v5[3] = &unk_279A2A438;
    v5[4] = self;
    v5[5] = a3;
    [(ISPlayerItem *)self performChanges:v5];
  }
}

uint64_t __27__ISPlayerItem__setStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ISPlayerItem__setStatus___block_invoke_2;
  v5[3] = &unk_279A2A410;
  v3 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v3;
  [v2 _performIvarWrite:v5];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _cancelLoading];
  }

  return [*(a1 + 32) signalChange:1];
}

- (void)_setPlayerContent:(id)a3
{
  v4 = a3;
  v5 = [(ISPlayerItem *)self playerContent];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__ISPlayerItem__setPlayerContent___block_invoke;
    v6[3] = &unk_279A2A398;
    v6[4] = self;
    v7 = v4;
    [(ISPlayerItem *)self performChanges:v6];
  }
}

void __34__ISPlayerItem__setPlayerContent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __34__ISPlayerItem__setPlayerContent___block_invoke_2;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{2, v3, v4, v5, v6, v7}];
  [*(a1 + 32) _invalidateStatus];
}

- (NSError)error
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1992;
  v9 = __Block_byref_object_dispose__1993;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__ISPlayerItem_error__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setError:(id)a3
{
  v4 = a3;
  v5 = [(ISPlayerItem *)self error];

  if (v5 != v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __26__ISPlayerItem__setError___block_invoke;
    v6[3] = &unk_279A2A398;
    v6[4] = self;
    v7 = v4;
    [(ISPlayerItem *)self performChanges:v6];
  }
}

void __26__ISPlayerItem__setError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __26__ISPlayerItem__setError___block_invoke_2;
  v10 = &unk_279A2A348;
  v11 = v2;
  v12 = *(a1 + 40);
  [v2 _performIvarWrite:&v7];
  v3 = ISGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_error_impl(&dword_25E667000, v3, OS_LOG_TYPE_ERROR, "%@ did receive error: %@", buf, 0x16u);
  }

  [*(a1 + 32) _invalidateStatus];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)decodesAllFramesDuringOrdinaryPlayback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ISPlayerItem_decodesAllFramesDuringOrdinaryPlayback__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setDecodesAllFramesDuringOrdinaryPlayback:(BOOL)a3
{
  if ([(ISPlayerItem *)self decodesAllFramesDuringOrdinaryPlayback]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__ISPlayerItem_setDecodesAllFramesDuringOrdinaryPlayback___block_invoke;
    v5[3] = &unk_279A2A4D8;
    v5[4] = self;
    v6 = a3;
    [(ISPlayerItem *)self _performIvarWrite:v5];
  }
}

- (BOOL)reversesMoreVideoFramesInMemory
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ISPlayerItem_reversesMoreVideoFramesInMemory__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setReversesMoreVideoFramesInMemory:(BOOL)a3
{
  if ([(ISPlayerItem *)self reversesMoreVideoFramesInMemory]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__ISPlayerItem_setReversesMoreVideoFramesInMemory___block_invoke;
    v5[3] = &unk_279A2A4D8;
    v5[4] = self;
    v6 = a3;
    [(ISPlayerItem *)self _performIvarWrite:v5];
  }
}

- (BOOL)aggressivelyCacheVideoFrames
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ISPlayerItem_aggressivelyCacheVideoFrames__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setAggressivelyCacheVideoFrames:(BOOL)a3
{
  if ([(ISPlayerItem *)self aggressivelyCacheVideoFrames]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__ISPlayerItem_setAggressivelyCacheVideoFrames___block_invoke;
    v5[3] = &unk_279A2A4D8;
    v5[4] = self;
    v6 = a3;
    [(ISPlayerItem *)self _performIvarWrite:v5];
  }
}

- (void)_reloadAllContent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__ISPlayerItem__reloadAllContent__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2];
}

uint64_t __33__ISPlayerItem__reloadAllContent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelLoading];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ISPlayerItem__reloadAllContent__block_invoke_2;
  v4[3] = &unk_279A2A488;
  v4[4] = v2;
  return [v2 performChanges:v4];
}

uint64_t __33__ISPlayerItem__reloadAllContent__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateVideoPlayerItem];
  v2 = *(a1 + 32);
  v4 = *MEMORY[0x277CC0898];
  v5 = *(MEMORY[0x277CC0898] + 16);
  return [v2 _setVideoPlayerItem:0 videoDuration:&v4];
}

- (void)resetAVObjects
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__1992;
  v5[4] = __Block_byref_object_dispose__1993;
  v6 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ISPlayerItem_resetAVObjects__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = v5;
  [(ISPlayerItem *)self _performIvarWrite:v4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__ISPlayerItem_resetAVObjects__block_invoke_2;
  v3[3] = &unk_279A29D68;
  v3[4] = self;
  [(ISPlayerItem *)self _performWork:v3 sync:0];
  _Block_object_dispose(v5, 8);
}

void __30__ISPlayerItem_resetAVObjects__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 216));
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  *(*(a1 + 32) + 208) = 0;
  v4 = [ISPlayerContent alloc];
  v5 = [*(*(a1 + 32) + 200) photo];
  v6 = [*(*(a1 + 32) + 200) photoIsOriginal];
  v7 = [*(*(a1 + 32) + 200) photoEXIFOrientation];
  v14 = *MEMORY[0x277CC0898];
  v15 = *(MEMORY[0x277CC0898] + 16);
  v12 = v14;
  v13 = v15;
  LOBYTE(v11) = 0;
  v8 = [(ISPlayerContent *)v4 initWithPhoto:v5 photoIsOriginal:v6 photoEXIFOrientation:v7 photoTime:&v14 videoDuration:&v12 photoHasColorAdjustments:0 videoPlayerItem:0 variationIdentifier:0 supportsVitality:v11];
  v9 = *(a1 + 32);
  v10 = *(v9 + 200);
  *(v9 + 200) = v8;
}

void __30__ISPlayerItem_resetAVObjects__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a2 + 272) resetAVObjects];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ISPlayerItem_resetAVObjects__block_invoke_3;
  block[3] = &unk_279A2A180;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelLoading
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __29__ISPlayerItem_cancelLoading__block_invoke;
  v2[3] = &unk_279A29D68;
  v2[4] = self;
  [(ISPlayerItem *)self _performWork:v2 sync:0];
}

void __29__ISPlayerItem_cancelLoading__block_invoke(uint64_t a1)
{
  v2 = +[ISPlayerItemChef defaultChef];
  [v2 cancelPreparationOfIrisAssetWithRequestID:{objc_msgSend(*(a1 + 32), "_videoPlayerItemRequestID")}];
}

void __48__ISPlayerItem_discardContentBelowLoadingTarget__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loadingTarget];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ISPlayerItem_discardContentBelowLoadingTarget__block_invoke_2;
  v5[3] = &unk_279A2A438;
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performChanges:v5];
}

uint64_t __48__ISPlayerItem_discardContentBelowLoadingTarget__block_invoke_2(uint64_t result)
{
  if (*(result + 40) <= 0)
  {
    v7 = v1;
    v8 = v2;
    v3 = result;
    v4 = *(result + 32);
    v5 = *MEMORY[0x277CC0898];
    v6 = *(MEMORY[0x277CC0898] + 16);
    [v4 _setVideoPlayerItem:0 videoDuration:&v5];
    return [*(v3 + 32) _invalidateVideoPlayerItem];
  }

  return result;
}

- (void)_setVideoPlayerItemRequestID:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ISPlayerItem__setVideoPlayerItemRequestID___block_invoke;
  v3[3] = &unk_279A2A410;
  v3[4] = self;
  v3[5] = a3;
  [(ISPlayerItem *)self _performIvarWrite:v3];
}

- (int64_t)_videoPlayerItemRequestID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ISPlayerItem__videoPlayerItemRequestID__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_cancelLoading
{
  v3 = +[ISPlayerItemChef defaultChef];
  [v3 cancelPreparationOfIrisAssetWithRequestID:{-[ISPlayerItem _videoPlayerItemRequestID](self, "_videoPlayerItemRequestID")}];
}

- (void)setVideoComposition:(id)a3
{
  v4 = a3;
  v5 = [(ISPlayerItem *)self videoComposition];

  if (v5 != v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__ISPlayerItem_setVideoComposition___block_invoke;
    v6[3] = &unk_279A2A398;
    v6[4] = self;
    v7 = v4;
    [(ISPlayerItem *)self performChanges:v6];
  }
}

void __36__ISPlayerItem_setVideoComposition___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__ISPlayerItem_setVideoComposition___block_invoke_2;
  v2[3] = &unk_279A2A348;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performIvarWrite:v2];
}

uint64_t __36__ISPlayerItem_setVideoComposition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 216);

  return [v6 setVideoComposition:v5];
}

- (AVVideoComposition)videoComposition
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1992;
  v9 = __Block_byref_object_dispose__1993;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__ISPlayerItem_videoComposition__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setLoadingTarget:(int64_t)a3
{
  v5 = [(ISPlayerItem *)self loadingTarget];
  if (v5 != a3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__ISPlayerItem_setLoadingTarget___block_invoke;
    v6[3] = &unk_279A29D20;
    v6[4] = self;
    v6[5] = a3;
    v6[6] = v5;
    [(ISPlayerItem *)self performChanges:v6];
  }
}

uint64_t __33__ISPlayerItem_setLoadingTarget___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ISPlayerItem_setLoadingTarget___block_invoke_2;
  v5[3] = &unk_279A2A410;
  v3 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v3;
  result = [v2 _performIvarWrite:v5];
  if (!*(a1 + 40))
  {
    result = [*(a1 + 32) _cancelLoading];
  }

  if (*(a1 + 48) <= 0 && *(a1 + 40) >= 1)
  {
    return [*(a1 + 32) _invalidateVideoPlayerItem];
  }

  return result;
}

- (int64_t)loadingTarget
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ISPlayerItem_loadingTarget__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISPlayerItem *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__ISPlayerItem_performChanges___block_invoke;
  v6[3] = &unk_279A29CF8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ISPlayerItem *)self _performWork:v6 sync:0];
}

id __31__ISPlayerItem_performChanges___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ISPlayerItem;
  return objc_msgSendSuper2(&v3, sel_performChanges_, v1);
}

- (ISPlayerItem)initWithAsset:(id)a3 targetSize:(CGSize)a4 contentAspectRatio:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = ISPlayerItem;
  v12 = [(ISObservable *)&v34 init];
  if (v12)
  {
    v13 = MEMORY[0x277CCABB0];
    atomic_fetch_add(&initWithAsset_targetSize_contentAspectRatio__ivarQueueCounter, 1u);
    *(v12 + 11) = [v13 numberWithInt:?];
    v14 = MEMORY[0x277CCABB0];
    atomic_fetch_add(&initWithAsset_targetSize_contentAspectRatio__workQueueCounter, 1u);
    *(v12 + 12) = [v14 numberWithInt:?];
    v15 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("com.apple.ISPlayerItem.state", v15);
    v17 = *(v12 + 13);
    *(v12 + 13) = v16;

    dispatch_queue_set_specific(*(v12 + 13), QueueIdentifierContext, *(v12 + 11), 0);
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create("com.apple.ISPlayerItem.work", v18);
    v20 = *(v12 + 14);
    *(v12 + 14) = v19;

    dispatch_queue_set_specific(*(v12 + 14), QueueIdentifierContext, *(v12 + 12), 0);
    objc_storeStrong(v12 + 34, a3);
    *(v12 + 36) = width;
    *(v12 + 37) = height;
    *(v12 + 26) = 0;
    objc_storeStrong(v12 + 35, a5);
    v21 = [ISPlayerContent alloc];
    v22 = [v10 photo];
    v23 = [v10 photoEXIFOrientation];
    if (v10)
    {
      [v10 photoCMTime];
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    v24 = [v10 hasColorAdjustments];
    v31 = *MEMORY[0x277CC0898];
    v32 = *(MEMORY[0x277CC0898] + 16);
    LOBYTE(v30) = 0;
    v25 = [(ISPlayerContent *)v21 initWithPhoto:v22 photoIsOriginal:1 photoEXIFOrientation:v23 photoTime:v33 videoDuration:&v31 photoHasColorAdjustments:v24 videoPlayerItem:0 variationIdentifier:0 supportsVitality:v30];
    v26 = *(v12 + 25);
    *(v12 + 25) = v25;
    v27 = v25;

    *(v12 + 146) = 1;
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v12 selector:sel__dimFlashingLightsDidChangeValue_ name:*MEMORY[0x277CD5610] object:0];

    [v12 _updateIfNeeded];
  }

  return v12;
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = ISPlayerItem;
  [(ISObservable *)&v3 didPerformChanges];
  [(ISPlayerItem *)self _updateIfNeeded];
}

- (void)dealloc
{
  v3 = +[ISPlayerItemChef defaultChef];
  [v3 cancelPreparationOfIrisAssetWithRequestID:{-[ISPlayerItem _videoPlayerItemRequestID](self, "_videoPlayerItemRequestID")}];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ISPlayerItem;
  [(ISPlayerItem *)&v5 dealloc];
}

+ (ISPlayerItem)playerItemWithAsset:(id)a3 targetSize:(CGSize)a4 contentAspectRatio:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = [[a1 alloc] initWithAsset:v10 targetSize:v9 contentAspectRatio:{width, height}];

  return v11;
}

+ (ISPlayerItem)playerItemWithAsset:(id)a3 targetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [[a1 alloc] initWithAsset:v7 targetSize:{width, height}];

  return v8;
}

@end