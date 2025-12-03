@interface PXGDisplayAssetTextureProvider
+ (id)defaultMediaVersionHandlerWithDataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges;
- ($DD3F58349AEAC6E5AC4B328D1135640C)_defaultStillImageTextureProcessingOptionsForAsset:(id)asset orientation:(unsigned int)orientation applyCleanAperture:(BOOL)aperture;
- (BOOL)_hasDeliveredThumbnailForTextureRequestID:(int)d;
- (BOOL)_noteThumbnailAsDeliveredForRequestID:(int)d;
- (CGImage)placeholderImage;
- (PXGDisplayAssetTextureProvider)init;
- (PXGDisplayAssetTextureProvider)initWithDefaultMediaProvider:(id)provider layoutQueue:(id)queue;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (__CVBuffer)_workQueue_renderCrossfadeIfNeededWithPixelBuffer:(__CVBuffer *)buffer forVideoSession:(id)session textureRequestID:(id)d useLowMemoryMode:(BOOL)mode;
- (id)_requestOptionsForUseCase:(unint64_t)case forDrawing:(BOOL)drawing intent:(unint64_t)intent useLowMemoryDecode:(BOOL)decode;
- (void)_cancelationQueue_cancelImageRequests:(id)requests;
- (void)_handlePixelBufferChangedForTextureStreamingSession:(id)session useLowMemoryMode:(BOOL)mode;
- (void)_handleProvidePlaceholderForTextureRequestID:(int)d;
- (void)_processThumbnailRequestsOnRequestQueue:(BOOL)queue;
- (void)_providePlaceholdersForRequestIDs:(_NSRange)ds placeholderStyle:(unint64_t)style;
- (void)_requestQueue_handleThumbnailData:(id)data spec:(PXMediaProviderThumbnailDataSpec *)spec forTextureRequestID:(int)d;
- (void)_requestQueue_requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range observer:(id)observer textureRequestIDs:(_NSRange)ds displayAssetFetchResult:(id)result presentationStyles:(unint64_t)styles targetSize:(CGSize)size screenScale:(double)scale screenMaxHeadroom:(double)self0 adjustment:(id)self1 intent:(unint64_t)self2 cannotBeSatisfiedWithThumbnail:(BOOL)self3 useLowMemoryDecode:(BOOL)self4 applyCleanApertureCrop:(BOOL)self5 mediaProvider:(id)self6;
- (void)_setupRequestOptions;
- (void)_workQueue_cancelTextureRequests:(id)requests;
- (void)_workQueue_cleanupTextureStreamingSession:(id)session textureRequestIDs:(id)ds;
- (void)_workQueue_handleCGImageResult:(CGImage *)result orientation:(unsigned int)orientation forAsset:(id)asset info:(id)info targetSize:(CGSize)size adjustment:(id)adjustment shouldCache:(BOOL)cache textureRequestID:(int)self0 sharedState:(id)self1;
- (void)_workQueue_handleResult:(CGImage *)result orientation:(int64_t)orientation info:(id)info targetSize:(CGSize)size screenScale:(double)scale mediaRequest:(id)request textureRequestID:(int)d sharedState:(id)self0;
- (void)_workQueue_performDeferredImageRequest:(id)request targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler textureRequestID:(int)d mediaProvider:(id)provider;
- (void)_workQueue_performRequestForDisplayAsset:(id)asset textureRequestID:(int)d sharedState:(id)state;
- (void)_workQueue_processDeferredImageRequests;
- (void)_workQueue_processImageRequestsWithAllowedIDs:(id)ds;
- (void)_workQueue_provideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d;
- (void)_workQueue_provideVideoFrameForTextureStreamingSession:(id)session useLowMemoryMode:(BOOL)mode;
- (void)_workQueue_requestVideoTexturesForSpriteAtIndex:(unsigned int)index spriteReference:(id)reference displayAsset:(id)asset presentationController:(id)controller adjustment:(id)adjustment presentationType:(unsigned __int8)type textureRequestID:(int)d mediaProvider:(id)self0 pixelBufferSourcesProvider:(id)self1 useLowMemoryMode:(BOOL)self2 spriteSize:(CGSize)self3 displayScale:(double)self4;
- (void)_workQueue_startRequestingVideoTexturesForDisplayAsset:(id)asset presentationController:(id)controller pixelBufferSource:(id)source pixelBufferSourcesProvider:(id)provider adjustment:(id)adjustment textureRequestID:(int)d useLowMemoryMode:(BOOL)mode;
- (void)_workQueue_updateTextureStreamingVisibility:(BOOL)visibility;
- (void)cancelTextureRequests:(id)requests;
- (void)dealloc;
- (void)didFinishRequestingTextures;
- (void)interactionStateDidChange:(id *)change;
- (void)performRequestForSpriteIndex:(unsigned int)index textureRequestID:(int)d sharedState:(id)state;
- (void)registerImageDataSpecs:(id)specs;
- (void)releaseCachedResources;
- (void)requestEntityPayloadForAsset:(id)asset mediaProvider:(id)provider requestOptions:(id)options resultHandler:(id)handler;
- (void)setPreferBGRA:(BOOL)a;
- (void)setVideoRequestsAllowed:(BOOL)allowed;
- (void)viewEnvironmentDidChange:(id)change;
@end

@implementation PXGDisplayAssetTextureProvider

- (void)_setupRequestOptions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D3CD50]);
  [v3 setNetworkAccessAllowed:1];
  v4 = [v3 copy];
  [v4 setDeliveryMode:0];
  [v4 setOpportunisticDegradedImagesToReturn:2];
  if ([(PXGTextureProvider *)self preferBGRA])
  {
    [v4 setLoadingMode:{objc_msgSend(v4, "loadingMode") | 0x40000}];
  }

  v5 = [v4 copy];
  [v5 setLoadingMode:{objc_msgSend(v5, "loadingMode") | 0x40000}];
  v6 = [v3 copy];
  [v6 setDeliveryMode:1];
  if ([(PXGTextureProvider *)self preferBGRA])
  {
    [v6 setLoadingMode:{objc_msgSend(v6, "loadingMode") | 0x40000}];
  }

  v7 = [v6 copy];
  [v7 setLoadingMode:{objc_msgSend(v7, "loadingMode") | 0x40000}];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  requestOptions = self->_requestOptions;
  self->_requestOptions = v8;
}

- (void)didFinishRequestingTextures
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  [(PXGTextureProvider *)self interactionState];
  v3 = 1;
  requestIDsInTargetRect = [(PXGTextureProvider *)self requestIDsInTargetRect];
  v5 = 1;
  if ([(PXGTextureProvider *)self lowMemoryMode])
  {
    allowLargerImagesDuringScrollingInLowMemoryMode = [(PXGTextureProvider *)self allowLargerImagesDuringScrollingInLowMemoryMode];
    v7 = 1;
    if (allowLargerImagesDuringScrollingInLowMemoryMode)
    {
      v7 = 2;
    }

    v5 = v14 <= v7;
    v3 = (BYTE10(v14) ^ 1) & 1;
  }

  requestQueue = [(PXGTextureProvider *)self requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PXGDisplayAssetTextureProvider_didFinishRequestingTextures__block_invoke;
  block[3] = &unk_2782A82F0;
  v12 = v5;
  block[4] = self;
  v11 = requestIDsInTargetRect;
  v13 = v3;
  v9 = requestIDsInTargetRect;
  dispatch_async(requestQueue, block);
}

void __61__PXGDisplayAssetTextureProvider_didFinishRequestingTextures__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _processThumbnailRequestsOnRequestQueue:1];
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PXGDisplayAssetTextureProvider_didFinishRequestingTextures__block_invoke_2;
  block[3] = &unk_2782A82F0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = v3;
  v7 = *(a1 + 49);
  dispatch_async(v2, block);
}

uint64_t __61__PXGDisplayAssetTextureProvider_didFinishRequestingTextures__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _processThumbnailRequestsOnRequestQueue:0];
  if (*(a1 + 48) == 1)
  {
    result = [*(a1 + 32) _workQueue_processImageRequestsWithAllowedIDs:*(a1 + 40)];
    if ((*(a1 + 48) & 1) != 0 && *(a1 + 49) == 1)
    {
      v3 = *(a1 + 32);

      return [v3 _workQueue_processDeferredImageRequests];
    }
  }

  return result;
}

- (void)_workQueue_processDeferredImageRequests
{
  workQueue = [(PXGTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(NSMutableDictionary *)self->_workQueue_deferredImageRequestBlocksByTextureID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_108];
  workQueue_deferredImageRequestBlocksByTextureID = self->_workQueue_deferredImageRequestBlocksByTextureID;

  [(NSMutableDictionary *)workQueue_deferredImageRequestBlocksByTextureID removeAllObjects];
}

- (void)_workQueue_cancelTextureRequests:(id)requests
{
  v44 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  [(PXGImageRequestQueue *)self->_workQueue_imageRequestQueue cancelTextureRequests:requestsCopy];
  if ([(NSMutableDictionary *)self->_workQueue_deferredImageRequestBlocksByTextureID count])
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __67__PXGDisplayAssetTextureProvider__workQueue_cancelTextureRequests___block_invoke;
    v40[3] = &unk_2782ABC08;
    v40[4] = self;
    [requestsCopy enumerateIndexesUsingBlock:v40];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap allKeys];
  v31 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v31)
  {
    v6 = *v37;
    v28 = v5;
    v29 = *v37;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap objectForKeyedSubscript:v8, v28];
        [v9 removeTextureRequestIDs:requestsCopy];
        textureRequestIDs = [v9 textureRequestIDs];
        v11 = [textureRequestIDs count];

        if (!v11)
        {
          pixelBufferSource = [v9 pixelBufferSource];
          if (pixelBufferSource)
          {
            v13 = pixelBufferSource;
            displayAsset = [v9 displayAsset];

            if (displayAsset)
            {
              pixelBufferSourcesProvider = [v9 pixelBufferSourcesProvider];
              displayAsset2 = [v9 displayAsset];
              v42 = displayAsset2;
              [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
              v18 = v17 = requestsCopy;
              pixelBufferSource2 = [v9 pixelBufferSource];
              [pixelBufferSourcesProvider recyclePixelBufferSourceForDisplayAssets:v18 pixelBufferSource:pixelBufferSource2];

              requestsCopy = v17;
              v5 = v28;
            }
          }

          [v5 addObject:v8];
          presentationController = [v9 presentationController];
          [presentationController recyclePixelBufferSource];

          v6 = v29;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v31);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        v27 = [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap objectForKeyedSubscript:v26];
        [v27 setPixelBufferPool:0];
        [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap setObject:0 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v23);
  }

  [(NSMutableIndexSet *)self->_workQueue_textureRequestIDsWithDeliveredVideoFrames removeIndexes:requestsCopy];
  [(NSMutableIndexSet *)self->_workQueue_textureRequestIDsThatCannotBeSatisfiedWithThumbnails removeIndexes:requestsCopy];
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredThumbnails removeIndexes:requestsCopy];
  os_unfair_lock_unlock(&self->_lookupLock);
  [(PXGAssetImageCache *)self->_imageCache clearCachedImagesForRequestIDs:requestsCopy];
}

void __67__PXGDisplayAssetTextureProvider__workQueue_cancelTextureRequests___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 296);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 removeObjectForKey:v3];
}

- (void)_cancelationQueue_cancelImageRequests:(id)requests
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__PXGDisplayAssetTextureProvider__cancelationQueue_cancelImageRequests___block_invoke;
  v5[3] = &unk_2782ABC08;
  v5[4] = self;
  requestsCopy = requests;
  [requestsCopy enumerateIndexesUsingBlock:v5];
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredPlaceholders removeIndexes:requestsCopy];

  os_unfair_lock_unlock(&self->_lookupLock);
}

void __72__PXGDisplayAssetTextureProvider__cancelationQueue_cancelImageRequests___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = PXGTungstenGetLog();
  v5 = [*(*(a1 + 32) + 320) objectForKeyedSubscript:v3];
  v6 = [v5 mediaRequestID];
  if (v6)
  {
    v7 = v6;
    v8 = v4;
    v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v20 = 134217984;
        v21 = [v3 integerValue];
        _os_signpost_emit_with_name_impl(&dword_21AD38000, v8, OS_SIGNPOST_EVENT, v10, "PXGDisplayAssetTextureProviderCancelImageRequest", "Context=%{signpost.telemetry:string2}lu deferred=NO", &v20, 0xCu);
      }
    }

    v11 = [v5 mediaProvider];
    [v11 cancelImageRequest:v7];

    [*(*(a1 + 32) + 320) removeObjectForKey:v3];
  }

  v12 = [*(*(a1 + 32) + 328) objectForKeyedSubscript:v3];
  v13 = [v12 mediaRequestID];
  if (v13)
  {
    v14 = v13;
    v15 = v4;
    v16 = os_signpost_id_make_with_pointer(v15, *(a1 + 32));
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        v18 = [v3 integerValue];
        v20 = 134217984;
        v21 = v18;
        _os_signpost_emit_with_name_impl(&dword_21AD38000, v15, OS_SIGNPOST_EVENT, v17, "PXGDisplayAssetTextureProviderCancelImageRequest", "Context=%{signpost.telemetry:string2}lu deferred=YES", &v20, 0xCu);
      }
    }

    v19 = [v12 mediaProvider];
    [v19 cancelImageRequest:v14];

    [*(*(a1 + 32) + 328) removeObjectForKey:v3];
  }
}

- (void)cancelTextureRequests:(id)requests
{
  requestsCopy = requests;
  v15.receiver = self;
  v15.super_class = PXGDisplayAssetTextureProvider;
  [(PXGTextureProvider *)&v15 cancelTextureRequests:requestsCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__PXGDisplayAssetTextureProvider_cancelTextureRequests___block_invoke;
  v13[3] = &unk_2782AC0A8;
  v13[4] = self;
  v5 = requestsCopy;
  v14 = v5;
  v6 = MEMORY[0x21CEE40A0](v13);
  lowMemoryMode = [(PXGTextureProvider *)self lowMemoryMode];
  cancelationQueue = self->_cancelationQueue;
  if (lowMemoryMode)
  {
    dispatch_sync(cancelationQueue, v6);
  }

  else
  {
    dispatch_async(cancelationQueue, v6);
  }

  requestQueue = [(PXGTextureProvider *)self requestQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__PXGDisplayAssetTextureProvider_cancelTextureRequests___block_invoke_2;
  v11[3] = &unk_2782AC0A8;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(requestQueue, v11);
}

void __56__PXGDisplayAssetTextureProvider_cancelTextureRequests___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__PXGDisplayAssetTextureProvider_cancelTextureRequests___block_invoke_3;
  v4[3] = &unk_2782AC0A8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __56__PXGDisplayAssetTextureProvider_cancelTextureRequests___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 312);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __56__PXGDisplayAssetTextureProvider_cancelTextureRequests___block_invoke_4;
  v8 = &unk_2782AC0A8;
  v9 = v3;
  v10 = v2;
  dispatch_async(v4, &v5);
  [*(a1 + 32) _workQueue_cancelTextureRequests:{*(a1 + 40), v5, v6, v7, v8, v9}];
}

- (void)requestEntityPayloadForAsset:(id)asset mediaProvider:(id)provider requestOptions:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(PXGTextureProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__PXGDisplayAssetTextureProvider_requestEntityPayloadForAsset_mediaProvider_requestOptions_resultHandler___block_invoke;
  block[3] = &unk_2782A8F90;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __106__PXGDisplayAssetTextureProvider_requestEntityPayloadForAsset_mediaProvider_requestOptions_resultHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] px_genericErrorWithDebugDescription:@"Not implemented"];
  (*(v1 + 16))(v1, 0, v2);
}

- (__CVBuffer)_workQueue_renderCrossfadeIfNeededWithPixelBuffer:(__CVBuffer *)buffer forVideoSession:(id)session textureRequestID:(id)d useLowMemoryMode:(BOOL)mode
{
  v89[5] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(PXGTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pixelBufferOut = 0;
  displayAsset = [sessionCopy displayAsset];
  presentationController = [sessionCopy presentationController];
  v15 = presentationController;
  if (presentationController)
  {
    if (([presentationController isCrossfadingFromStillToVideoEnabled] & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (mode)
  {
LABEL_30:
    [sessionCopy setPixelBufferPool:0];
    v70 = pixelBufferOut;
    goto LABEL_31;
  }

  v16 = +[PXTungstenSettings sharedInstance];
  [v16 livePhotoInitialCrossfadeDuration];
  v18 = v17;

  if (v18 <= 0.0 || [displayAsset playbackStyle] != 3)
  {
    goto LABEL_30;
  }

  v19 = +[PXTungstenSettings sharedInstance];
  [v19 livePhotoInitialCrossfadeDuration];
  v21 = v20;

  firstPixelBufferDisplayDate = [sessionCopy firstPixelBufferDisplayDate];
  date = [MEMORY[0x277CBEAA8] date];
  if (!firstPixelBufferDisplayDate)
  {
    presentationController2 = [sessionCopy presentationController];

    if (presentationController2 && ([sessionCopy presentationController], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "desiredPlayState"), v25, v26 != 1))
    {
      firstPixelBufferDisplayDate = 0;
    }

    else
    {
      firstPixelBufferDisplayDate = date;
      [sessionCopy setFirstPixelBufferDisplayDate:firstPixelBufferDisplayDate];
    }
  }

  [date timeIntervalSinceDate:firstPixelBufferDisplayDate];
  if (v27 < v21)
  {
    v28 = v27;
    v86 = 1;
    v85 = 1;
    v84 = 0;
    imageCache = self->_imageCache;
    firstIndex = [dCopy firstIndex];
    if ([(PXGAssetImageCache *)imageCache getCachedImage:&v84 withOrientation:&v86 outIsDegraded:&v85 forAsset:displayAsset targetSize:0 contentMode:firstIndex forRequestID:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)])
    {
      if (v84)
      {
        v31 = objc_alloc(MEMORY[0x277CBF758]);
        v32 = [v31 initWithCGImage:v84];
        v81 = [v32 imageByApplyingCGOrientation:v86];

        v33 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:buffer];
        pixelBufferSource = [sessionCopy pixelBufferSource];
        v35 = pixelBufferSource;
        v75 = date;
        if (pixelBufferSource)
        {
          [pixelBufferSource preferredTransform];
        }

        else
        {
          memset(&v83, 0, sizeof(v83));
        }

        v80 = v33;
        v36 = _PXGRotatedImageWithTransform(v33);

        displayAsset2 = [sessionCopy displayAsset];
        if ([displayAsset2 playbackStyle] == 3)
        {
          v38 = 0.9;
        }

        else
        {
          v38 = 1.0;
        }

        [v36 extent];
        v40 = v39;
        [v81 extent];
        v42 = [v81 px_imageByApplyingScale:v40 / v41 / v38];
        [v42 extent];
        v44 = v43;
        v46 = v45;
        [v36 extent];
        v77 = v42;
        v49 = [v42 imageByCroppingToRect:{(v44 - v47) * 0.5, (v46 - v48) * 0.5}];
        [v49 extent];
        v51 = -v50;
        [v49 extent];
        CGAffineTransformMakeTranslation(&v83, v51, -v52);
        v53 = [v49 imageByApplyingTransform:&v83];

        v76 = v53;
        v74 = [v53 px_imageByApplyingAlpha:1.0 - v28 / v21];
        v78 = v36;
        v54 = [v74 imageByCompositingOverImage:v36];
        pixelBufferSource2 = [sessionCopy pixelBufferSource];
        v56 = pixelBufferSource2;
        if (pixelBufferSource2)
        {
          [pixelBufferSource2 preferredTransform];
        }

        else
        {
          memset(&v82, 0, sizeof(v82));
        }

        CGAffineTransformInvert(&v83, &v82);
        v79 = _PXGRotatedImageWithTransform(v54);

        date = v75;
        if (!self->_workQueue_crossfadeRenderContext)
        {
          v57 = objc_alloc_init(MEMORY[0x277CBF740]);
          workQueue_crossfadeRenderContext = self->_workQueue_crossfadeRenderContext;
          self->_workQueue_crossfadeRenderContext = v57;
        }

        a = COERCE_DOUBLE([sessionCopy pixelBufferPool]);
        v83.a = a;
        v60 = v80;
        if (a == 0.0)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
          v72 = fourcc_compressed_of_type(PixelFormatType);
          v62 = *MEMORY[0x277CC4DE8];
          v88[0] = *MEMORY[0x277CC4E08];
          v88[1] = v62;
          v89[0] = MEMORY[0x277CBEC38];
          v89[1] = MEMORY[0x277CBEC10];
          v88[2] = *MEMORY[0x277CC4EC8];
          v63 = MEMORY[0x277CCABB0];
          [v79 extent];
          v73 = [v63 numberWithDouble:v64];
          v89[2] = v73;
          v88[3] = *MEMORY[0x277CC4DD8];
          v65 = MEMORY[0x277CCABB0];
          [v79 extent];
          v67 = [v65 numberWithDouble:v66];
          v89[3] = v67;
          v88[4] = *MEMORY[0x277CC4E30];
          v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v72];
          v89[4] = v68;
          v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:5];

          v60 = v80;
          CVPixelBufferPoolCreate(0, 0, v69, &v83);
          [sessionCopy setPixelBufferPool:*&v83.a];

          a = v83.a;
        }

        CVPixelBufferPoolCreatePixelBuffer(0, *&a, &pixelBufferOut);
        [(CIContext *)self->_workQueue_crossfadeRenderContext render:v79 toCVPixelBuffer:pixelBufferOut];
      }
    }
  }

  v70 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    goto LABEL_30;
  }

LABEL_31:

  return v70;
}

- (void)_workQueue_cleanupTextureStreamingSession:(id)session textureRequestIDs:(id)ds
{
  sessionCopy = session;
  workQueue_textureRequestIDsWithDeliveredVideoFrames = self->_workQueue_textureRequestIDsWithDeliveredVideoFrames;
  dsCopy = ds;
  [(NSMutableIndexSet *)workQueue_textureRequestIDsWithDeliveredVideoFrames removeIndexes:dsCopy];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __94__PXGDisplayAssetTextureProvider__workQueue_cleanupTextureStreamingSession_textureRequestIDs___block_invoke;
  v13 = &unk_2782AAF40;
  selfCopy = self;
  v15 = sessionCopy;
  v9 = sessionCopy;
  [dsCopy enumerateIndexesUsingBlock:&v10];

  [v9 setFirstPixelBufferDisplayDate:{0, v10, v11, v12, v13, selfCopy}];
}

void __94__PXGDisplayAssetTextureProvider__workQueue_cleanupTextureStreamingSession_textureRequestIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) displayAsset];
  [v3 _workQueue_performRequestForDisplayAsset:v4 textureRequestID:a2 sharedState:0];
}

- (void)_workQueue_provideVideoFrameForTextureStreamingSession:(id)session useLowMemoryMode:(BOOL)mode
{
  modeCopy = mode;
  sessionCopy = session;
  textureRequestIDs = [sessionCopy textureRequestIDs];
  pixelBufferSource = [sessionCopy pixelBufferSource];
  v9 = CVPixelBufferRetain([pixelBufferSource currentPixelBuffer]);

  kdebug_trace();
  if (v9)
  {
    v10 = [(PXGDisplayAssetTextureProvider *)self _workQueue_renderCrossfadeIfNeededWithPixelBuffer:v9 forVideoSession:sessionCopy textureRequestID:textureRequestIDs useLowMemoryMode:modeCopy];
    if (v10)
    {
      v11 = v10;
      CVPixelBufferRelease(v9);
      v9 = v11;
    }

    displayAdjustment = [sessionCopy displayAdjustment];
    v39 = 0u;
    v38 = 0u;
    location = 0u;
    pixelBufferSource2 = [sessionCopy pixelBufferSource];
    v14 = pixelBufferSource2;
    if (pixelBufferSource2)
    {
      [pixelBufferSource2 preferredTransform];
    }

    else
    {
      v39 = 0u;
      v38 = 0u;
      location = 0u;
    }

    pixelBufferSource3 = [sessionCopy pixelBufferSource];
    [pixelBufferSource3 suppressContentsRect];
    v20 = v19;

    [(NSMutableIndexSet *)self->_workQueue_textureRequestIDsWithDeliveredVideoFrames addIndexes:textureRequestIDs];
    requestQueue = [(PXGTextureProvider *)self requestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke;
    block[3] = &unk_2782A8638;
    v22 = textureRequestIDs;
    v32 = location;
    v33 = v38;
    v34 = v39;
    v36 = v20;
    v29 = v22;
    selfCopy = self;
    v35 = v9;
    v31 = displayAdjustment;
    presentationController = displayAdjustment;
    dispatch_async(requestQueue, block);
  }

  else
  {
    presentationController = [sessionCopy presentationController];
    if (presentationController)
    {
      objc_initWeak(&location, self);
      workQueue = [(PXGTextureProvider *)self workQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke_3;
      v23[3] = &unk_2782A8688;
      v17 = workQueue;
      v24 = v17;
      objc_copyWeak(&v27, &location);
      v25 = sessionCopy;
      v26 = textureRequestIDs;
      [presentationController fetchShouldDisplayPreviousNonnullPixelBuffer:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PXGDisplayAssetTextureProvider *)self _workQueue_cleanupTextureStreamingSession:sessionCopy textureRequestIDs:textureRequestIDs];
    }
  }

  kdebug_trace();
}

void __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke_2;
  v5[3] = &unk_2782A8610;
  v3 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = v3;
  v9 = *(a1 + 88);
  v11 = *(a1 + 112);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v10 = *(a1 + 104);
  v6 = v4;
  [v2 enumerateIndexesUsingBlock:v5];
  CVPixelBufferRelease(*(a1 + 104));
}

void __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke_4;
    block[3] = &unk_2782A8660;
    objc_copyWeak(&v7, (a1 + 56));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_async(v3, block);

    objc_destroyWeak(&v7);
  }
}

void __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _workQueue_cleanupTextureStreamingSession:*(a1 + 32) textureRequestIDs:*(a1 + 40)];
}

uint64_t __106__PXGDisplayAssetTextureProvider__workQueue_provideVideoFrameForTextureStreamingSession_useLowMemoryMode___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 96);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 48)), *(a1 + 64));
  v8 = 0x3F80000000000000;
  v9 = v2;
  v10 = 0;
  return [v5 providePixelBuffer:v3 options:&v7 adjustment:v4 forRequestID:a2];
}

- (void)_handleProvidePlaceholderForTextureRequestID:(int)d
{
  v10 = 0;
  v9 = 0;
  v13 = 0;
  v14 = 0;
  workQueue = [(PXGTextureProvider *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__PXGDisplayAssetTextureProvider__handleProvidePlaceholderForTextureRequestID___block_invoke;
  v6[3] = &unk_2782A85E8;
  selfCopy = self;
  v7 = xmmword_21AE2D320;
  v8 = 0;
  v11 = 0;
  v12 = 0;
  dCopy = d;
  dispatch_async(workQueue, v6);
}

uint64_t __79__PXGDisplayAssetTextureProvider__handleProvidePlaceholderForTextureRequestID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1[48];
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v4;
  return [v1 _workQueue_provideCGImage:v2 options:v6 adjustment:0 isDegraded:0 forRequestID:v3];
}

- (void)_handlePixelBufferChangedForTextureStreamingSession:(id)session useLowMemoryMode:(BOOL)mode
{
  sessionCopy = session;
  workQueue = [(PXGTextureProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__PXGDisplayAssetTextureProvider__handlePixelBufferChangedForTextureStreamingSession_useLowMemoryMode___block_invoke;
  block[3] = &unk_2782A85C0;
  block[4] = self;
  v10 = sessionCopy;
  modeCopy = mode;
  v8 = sessionCopy;
  dispatch_async(workQueue, block);
}

- (void)_workQueue_startRequestingVideoTexturesForDisplayAsset:(id)asset presentationController:(id)controller pixelBufferSource:(id)source pixelBufferSourcesProvider:(id)provider adjustment:(id)adjustment textureRequestID:(int)d useLowMemoryMode:(BOOL)mode
{
  v9 = *&d;
  assetCopy = asset;
  controllerCopy = controller;
  sourceCopy = source;
  providerCopy = provider;
  adjustmentCopy = adjustment;
  if ([(PXGTextureProvider *)self isRequestActive:v9])
  {
    if (controllerCopy)
    {
      [controllerCopy identifier];
    }

    else
    {
      [assetCopy uuid];
    }
    v20 = ;
    v21 = [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap objectForKeyedSubscript:v20];
    if (!v21)
    {
      v21 = [[_PXGTextureStreamingSession alloc] initWithDisplayAsset:assetCopy presentationController:controllerCopy pixelBufferSource:sourceCopy pixelBufferSourcesProvider:providerCopy adjustment:adjustmentCopy];
      [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap setObject:v21 forKeyedSubscript:v20];
    }

    [(_PXGTextureStreamingSession *)v21 addTextureRequestID:v9, v20];
    objc_initWeak(location, self);
    objc_initWeak(&from, v21);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __202__PXGDisplayAssetTextureProvider__workQueue_startRequestingVideoTexturesForDisplayAsset_presentationController_pixelBufferSource_pixelBufferSourcesProvider_adjustment_textureRequestID_useLowMemoryMode___block_invoke;
    v26[3] = &unk_2782A8570;
    objc_copyWeak(&v27, location);
    objc_copyWeak(&v28, &from);
    modeCopy = mode;
    [sourceCopy setPixelBufferDidChangeHandler:v26];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __202__PXGDisplayAssetTextureProvider__workQueue_startRequestingVideoTexturesForDisplayAsset_presentationController_pixelBufferSource_pixelBufferSourcesProvider_adjustment_textureRequestID_useLowMemoryMode___block_invoke_2;
    v23[3] = &unk_2782A8598;
    objc_copyWeak(&v24, location);
    v25 = v9;
    [sourceCopy setProvidePlaceholderHandler:v23];
    [(PXGDisplayAssetTextureProvider *)self _workQueue_provideVideoFrameForTextureStreamingSession:v21 useLowMemoryMode:mode];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
}

void __202__PXGDisplayAssetTextureProvider__workQueue_startRequestingVideoTexturesForDisplayAsset_presentationController_pixelBufferSource_pixelBufferSourcesProvider_adjustment_textureRequestID_useLowMemoryMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePixelBufferChangedForTextureStreamingSession:v2 useLowMemoryMode:*(a1 + 48)];
}

void __202__PXGDisplayAssetTextureProvider__workQueue_startRequestingVideoTexturesForDisplayAsset_presentationController_pixelBufferSource_pixelBufferSourcesProvider_adjustment_textureRequestID_useLowMemoryMode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProvidePlaceholderForTextureRequestID:*(a1 + 40)];
}

- (void)_workQueue_requestVideoTexturesForSpriteAtIndex:(unsigned int)index spriteReference:(id)reference displayAsset:(id)asset presentationController:(id)controller adjustment:(id)adjustment presentationType:(unsigned __int8)type textureRequestID:(int)d mediaProvider:(id)self0 pixelBufferSourcesProvider:(id)self1 useLowMemoryMode:(BOOL)self2 spriteSize:(CGSize)self3 displayScale:(double)self4
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  referenceCopy = reference;
  assetCopy = asset;
  controllerCopy = controller;
  adjustmentCopy = adjustment;
  providerCopy = provider;
  sourcesProviderCopy = sourcesProvider;
  workQueue = [(PXGTextureProvider *)self workQueue];
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  objc_initWeak(location, self);
  v35 = controllerCopy;
  if (!controllerCopy)
  {
    videoSessionsRequestQueue = self->_videoSessionsRequestQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_8;
    block[3] = &unk_2782A8548;
    v29 = v43;
    objc_copyWeak(v43, location);
    dCopy = d;
    v31 = &v37;
    v37 = sourcesProviderCopy;
    v38 = assetCopy;
    v39 = providerCopy;
    v40 = referenceCopy;
    v43[1] = *&width;
    v43[2] = *&height;
    v43[3] = *&scale;
    v41 = workQueue;
    v42 = adjustmentCopy;
    modeCopy = mode;
    dispatch_async(videoSessionsRequestQueue, block);

LABEL_6:
    v30 = requestQueue;
    goto LABEL_7;
  }

  [(PXGTextureProvider *)self interactionState];
  v33 = v69;
  if (typeCopy != 1)
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_5;
    v54[3] = &unk_2782A8458;
    v29 = &v55;
    objc_copyWeak(&v55, location);
    dCopy2 = d;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_6;
    v46[3] = &unk_2782A8520;
    v47 = workQueue;
    objc_copyWeak(&v51, location);
    v48 = assetCopy;
    v49 = controllerCopy;
    v50 = adjustmentCopy;
    dCopy3 = d;
    modeCopy2 = mode;
    [v49 requestPixelBufferSourceForMediaProvider:providerCopy isVisible:v33 stillActive:v54 completion:v46];
    v31 = &v47;

    objc_destroyWeak(&v51);
    goto LABEL_6;
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke;
  v66[3] = &unk_2782A8458;
  v29 = &v67;
  objc_copyWeak(&v67, location);
  dCopy4 = d;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_2;
  v57[3] = &unk_2782A84D0;
  v58 = workQueue;
  objc_copyWeak(&v64, location);
  dCopy5 = d;
  v59 = controllerCopy;
  selfCopy = self;
  v61 = assetCopy;
  v62 = adjustmentCopy;
  v30 = requestQueue;
  v63 = requestQueue;
  [v59 requestPlayerViewForMediaProvider:providerCopy isVisible:v33 stillActive:v66 completion:v57];
  v31 = &v58;

  objc_destroyWeak(&v64);
LABEL_7:

  objc_destroyWeak(v29);
  objc_destroyWeak(location);
}

uint64_t __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isRequestActive:*(a1 + 40)];

  return v3;
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[PXGViewPayload alloc] initWithViewClass:a2 userData:v5];

  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_3;
  block[3] = &unk_2782A84A8;
  objc_copyWeak(&v19, (a1 + 80));
  v20 = *(a1 + 88);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 48);
  v13 = v8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v15 = v13;
  v16 = v11;
  v17 = *(a1 + 72);
  v18 = v6;
  v12 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v19);
}

uint64_t __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isRequestActive:*(a1 + 40)];

  return v3;
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_7;
    v5[3] = &unk_2782A84F8;
    objc_copyWeak(&v10, (a1 + 64));
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v3;
    v9 = *(a1 + 56);
    v11 = *(a1 + 72);
    v12 = *(a1 + 76);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v10);
  }
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained isRequestActive:*(a1 + 112)];

  if (v3)
  {
    v4 = [*(a1 + 32) pixelBufferSourceForDisplayAsset:*(a1 + 40) mediaProvider:*(a1 + 48) spriteReference:*(a1 + 56) spriteSize:*(a1 + 88) displayScale:{*(a1 + 96), *(a1 + 104)}];
    if (v4)
    {
      v5 = *(a1 + 64);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_9;
      v6[3] = &unk_2782A84F8;
      objc_copyWeak(&v11, (a1 + 80));
      v7 = *(a1 + 40);
      v8 = v4;
      v9 = *(a1 + 32);
      v10 = *(a1 + 72);
      v12 = *(a1 + 112);
      v13 = *(a1 + 116);
      dispatch_async(v5, v6);

      objc_destroyWeak(&v11);
    }
  }
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  LOBYTE(v2) = *(a1 + 76);
  [WeakRetained _workQueue_startRequestingVideoTexturesForDisplayAsset:*(a1 + 32) presentationController:0 pixelBufferSource:*(a1 + 40) pixelBufferSourcesProvider:*(a1 + 48) adjustment:*(a1 + 56) textureRequestID:*(a1 + 72) useLowMemoryMode:v2];
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  LOBYTE(v2) = *(a1 + 76);
  [WeakRetained _workQueue_startRequestingVideoTexturesForDisplayAsset:*(a1 + 32) presentationController:*(a1 + 40) pixelBufferSource:*(a1 + 48) pixelBufferSourcesProvider:0 adjustment:*(a1 + 56) textureRequestID:*(a1 + 72) useLowMemoryMode:v2];
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained isRequestActive:*(a1 + 88)];

  if (v3)
  {
    v4 = [*(a1 + 32) identifier];
    v5 = [*(*(a1 + 40) + 256) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [[_PXGTextureStreamingSession alloc] initWithDisplayAsset:*(a1 + 48) presentationController:*(a1 + 32) pixelBufferSource:0 pixelBufferSourcesProvider:0 adjustment:*(a1 + 56)];
      [*(*(a1 + 40) + 256) setObject:v5 forKeyedSubscript:v4];
    }

    [(_PXGTextureStreamingSession *)v5 addTextureRequestID:*(a1 + 88)];
    v6 = objc_loadWeakRetained((a1 + 80));
    [v6 _workQueue_didDeliverVideoContentForRequestID:*(a1 + 88)];

    v7 = *(a1 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_4;
    block[3] = &unk_2782A8480;
    objc_copyWeak(&v10, (a1 + 80));
    v9 = *(a1 + 72);
    v11 = *(a1 + 88);
    dispatch_async(v7, block);

    objc_destroyWeak(&v10);
  }
}

void __261__PXGDisplayAssetTextureProvider__workQueue_requestVideoTexturesForSpriteAtIndex_spriteReference_displayAsset_presentationController_adjustment_presentationType_textureRequestID_mediaProvider_pixelBufferSourcesProvider_useLowMemoryMode_spriteSize_displayScale___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained providePayload:*(a1 + 32) forRequestID:*(a1 + 48)];
}

- ($DD3F58349AEAC6E5AC4B328D1135640C)_defaultStillImageTextureProcessingOptionsForAsset:(id)asset orientation:(unsigned int)orientation applyCleanAperture:(BOOL)aperture
{
  apertureCopy = aperture;
  v9 = v5;
  assetCopy = asset;
  if (PXGSpriteTextureInfoOrientationFromCGOrientation_onceToken != -1)
  {
    dispatch_once(&PXGSpriteTextureInfoOrientationFromCGOrientation_onceToken, &__block_literal_global_10913);
  }

  v11 = PXGSpriteTextureInfoOrientationFromCGOrientation_transforms[orientation];
  v12 = vcvtq_f64_f32(*v11.f32);
  v13 = vcvt_hight_f64_f32(v11);
  if (apertureCopy)
  {
    v18 = v13;
    v19 = v12;
    playbackStyle = [assetCopy playbackStyle];
    v15 = 1.11111111;
    if (playbackStyle != 3)
    {
      v15 = 1.0;
    }

    *&v20.a = v19;
    *&v20.c = v18;
    v20.tx = 0.0;
    v20.ty = 0.0;
    CGAffineTransformScale(&v21, &v20, v15, v15);
    v12 = *&v21.a;
    v13 = *&v21.c;
  }

  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v13);
  *(v9 + 16) = [(PXGTextureProvider *)self preferMipmaps];
  *(v9 + 20) = 1065353216;
  *(v9 + 28) = 0;

  result.var2 = *&v17;
  result.var3 = BYTE4(v17);
  result.var0 = v16;
  result.var1 = *(&v16 + 1);
  return result;
}

- (void)_workQueue_provideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d
{
  degradedCopy = degraded;
  adjustmentCopy = adjustment;
  v9 = *&options.var0;
  v12 = *&options.var2;
  CGImageRetain(image);
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__PXGDisplayAssetTextureProvider__workQueue_provideCGImage_options_adjustment_isDegraded_forRequestID___block_invoke;
  v16[3] = &unk_2782A8430;
  v20 = v12;
  imageCopy = image;
  v14 = v9[1];
  v17 = *v9;
  v18 = v14;
  selfCopy = self;
  v23 = adjustmentCopy;
  v22 = degradedCopy;
  v15 = v12;
  dispatch_async(requestQueue, v16);
}

void __103__PXGDisplayAssetTextureProvider__workQueue_provideCGImage_options_adjustment_isDegraded_forRequestID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 92);
  v6 = *(a1 + 88);
  v7 = *(a1 + 48);
  v8[0] = *(a1 + 32);
  v8[1] = v7;
  [v3 provideCGImage:v2 options:v8 adjustment:v4 isDegraded:v5 forRequestID:v6];
  CGImageRelease(*(a1 + 80));
}

- (void)_workQueue_handleCGImageResult:(CGImage *)result orientation:(unsigned int)orientation forAsset:(id)asset info:(id)info targetSize:(CGSize)size adjustment:(id)adjustment shouldCache:(BOOL)cache textureRequestID:(int)self0 sharedState:(id)self1
{
  cacheCopy = cache;
  assetCopy = asset;
  infoCopy = info;
  adjustmentCopy = adjustment;
  stateCopy = state;
  workQueue = [(PXGTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (result && [(PXGTextureProvider *)self isRequestActive:d])
  {
    orientationCopy = orientation;
    v22 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D3CFA8]];
    bOOLValue = [v22 BOOLValue];

    if (cacheCopy)
    {
      v24 = orientationCopy;
      result = [(PXGAssetImageCache *)self->_imageCache cacheCGImage:result orientation:orientationCopy isDegraded:bOOLValue forRequestID:d];
    }

    else
    {
      v24 = orientationCopy;
    }

    v27 = 0u;
    v28 = 0u;
    -[PXGDisplayAssetTextureProvider _defaultStillImageTextureProcessingOptionsForAsset:orientation:applyCleanAperture:](self, "_defaultStillImageTextureProcessingOptionsForAsset:orientation:applyCleanAperture:", assetCopy, v24, [stateCopy applyCleanApertureCrop]);
    v26[0] = v27;
    v26[1] = v28;
    [(PXGDisplayAssetTextureProvider *)self _workQueue_provideCGImage:result options:v26 adjustment:adjustmentCopy isDegraded:bOOLValue forRequestID:d];
  }
}

- (void)_workQueue_handleResult:(CGImage *)result orientation:(int64_t)orientation info:(id)info targetSize:(CGSize)size screenScale:(double)scale mediaRequest:(id)request textureRequestID:(int)d sharedState:(id)self0
{
  v11 = *&d;
  height = size.height;
  width = size.width;
  infoCopy = info;
  requestCopy = request;
  stateCopy = state;
  if ([(PXGTextureProvider *)self isRequestActive:v11])
  {
    workQueue = [(PXGTextureProvider *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v22 = CGImagePropertyOrientationFromPXImageOrientation();
    if (result)
    {
      [requestCopy setGotAnyResult:1];
      PXCGImageGetSizeWithOrientation();
      v24 = v23;
      v26 = v25;
      isInCloud = 0;
    }

    else
    {
      v28 = MEMORY[0x277CBF3A8];
      v29 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D3CFA0]];

      if (v29)
      {
        requestQueue = [(PXGTextureProvider *)self requestQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __140__PXGDisplayAssetTextureProvider__workQueue_handleResult_orientation_info_targetSize_screenScale_mediaRequest_textureRequestID_sharedState___block_invoke;
        block[3] = &unk_2782AC3E8;
        block[4] = self;
        v49 = infoCopy;
        v50 = v11;
        dispatch_async(requestQueue, block);
      }

      v24 = *v28;
      v26 = v28[1];
      asset = [requestCopy asset];
      isInCloud = [asset isInCloud];
    }

    observer = [requestCopy observer];
    asset2 = [requestCopy asset];
    [observer observeIsInCloud:isInCloud forDisplayAsset:asset2];

    v34 = [(NSMutableIndexSet *)self->_workQueue_textureRequestIDsThatCannotBeSatisfiedWithThumbnails containsIndex:v11];
    adjustment = [requestCopy adjustment];
    if (adjustment || (v34 & 1) != 0)
    {
    }

    else if ([(PXGDisplayAssetTextureProvider *)self _imageSizeSatisfiedByThumbnail:v24, v26])
    {
      goto LABEL_18;
    }

    if ((MEMORY[0x21CEE38D0]([requestCopy bestReceivedSize]) & 1) == 0 && (-[NSMutableIndexSet containsIndex:](self->_workQueue_textureRequestIDsWithDeliveredVideoFrames, "containsIndex:", v11) & 1) == 0)
    {
      [requestCopy setBestReceivedSize:{v24, v26}];
      CGImageRetain(result);
      if ([requestCopy postProcessOptions])
      {
        CGImageRetain(result);
        objc_initWeak(&location, self);
        drawingQueue = self->_drawingQueue;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __140__PXGDisplayAssetTextureProvider__workQueue_handleResult_orientation_info_targetSize_screenScale_mediaRequest_textureRequestID_sharedState___block_invoke_2;
        v40[3] = &unk_2782A8408;
        v40[4] = self;
        v45 = v11;
        v41 = requestCopy;
        v44[1] = result;
        v44[2] = *&width;
        v44[3] = *&height;
        v44[4] = *&scale;
        objc_copyWeak(v44, &location);
        v46 = v22;
        v42 = infoCopy;
        v43 = stateCopy;
        dispatch_async(drawingQueue, v40);

        objc_destroyWeak(v44);
        objc_destroyWeak(&location);
      }

      else
      {
        asset3 = [requestCopy asset];
        adjustment2 = [requestCopy adjustment];
        LODWORD(v39) = v11;
        [(PXGDisplayAssetTextureProvider *)self _workQueue_handleCGImageResult:result orientation:v22 forAsset:asset3 info:infoCopy targetSize:adjustment2 adjustment:1 shouldCache:width textureRequestID:height sharedState:v39, stateCopy];
      }

      CGImageRelease(result);
    }
  }

LABEL_18:
}

void __140__PXGDisplayAssetTextureProvider__workQueue_handleResult_orientation_info_targetSize_screenScale_mediaRequest_textureRequestID_sharedState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D3CFA0]];
  [v2 provideFailureWithError:v3 forRequestID:*(a1 + 48)];
}

void __140__PXGDisplayAssetTextureProvider__workQueue_handleResult_orientation_info_targetSize_screenScale_mediaRequest_textureRequestID_sharedState___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isRequestActive:*(a1 + 104)] && (objc_msgSend(*(a1 + 40), "postProcessOptions") & 1) != 0)
  {
    v2 = *(a1 + 72);
    v3 = *(a1 + 96);
    v4 = [*(a1 + 32) viewEnvironment];
    v5 = [v4 backgroundColor];
    v6 = [v5 CGColor];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __PXGCreateBurstImageStackFromImage_block_invoke;
    v20 = &__block_descriptor_56_e54_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__CGContext__40l;
    v21 = v3;
    v22 = v6;
    v23 = v2;
    v7 = PXCreateCGImageWithDrawBlock();

    v8 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __140__PXGDisplayAssetTextureProvider__workQueue_handleResult_orientation_info_targetSize_screenScale_mediaRequest_textureRequestID_sharedState___block_invoke_3;
    block[3] = &unk_2782A83E0;
    objc_copyWeak(v13, (a1 + 64));
    v13[1] = v7;
    v15 = *(a1 + 108);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v14 = *(a1 + 80);
    v16 = *(a1 + 104);
    v12 = *(a1 + 56);
    dispatch_async(v8, block);

    objc_destroyWeak(v13);
  }

  CGImageRelease(*(a1 + 72));
}

void __140__PXGDisplayAssetTextureProvider__workQueue_handleResult_orientation_info_targetSize_screenScale_mediaRequest_textureRequestID_sharedState___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 64);
  v4 = *(a1 + 88);
  v5 = [*(a1 + 32) asset];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) adjustment];
  LODWORD(v9) = *(a1 + 92);
  [WeakRetained _workQueue_handleCGImageResult:v3 orientation:v4 forAsset:v5 info:v6 targetSize:v7 adjustment:0 shouldCache:*(a1 + 72) textureRequestID:*(a1 + 80) sharedState:{v9, *(a1 + 48)}];

  v8 = *(a1 + 64);

  CGImageRelease(v8);
}

- (void)_workQueue_performDeferredImageRequest:(id)request targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler textureRequestID:(int)d mediaProvider:(id)provider
{
  v10 = *&d;
  height = size.height;
  width = size.width;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  providerCopy = provider;
  if ([(PXGTextureProvider *)self isRequestActive:v10])
  {
    v21 = [providerCopy requestCGImageForAsset:requestCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];
    if (v21)
    {
      cancelationQueue = self->_cancelationQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __149__PXGDisplayAssetTextureProvider__workQueue_performDeferredImageRequest_targetSize_contentMode_options_resultHandler_textureRequestID_mediaProvider___block_invoke;
      v23[3] = &unk_2782A83B8;
      selfCopy = self;
      v26 = v21;
      v24 = providerCopy;
      v27 = v10;
      dispatch_async(cancelationQueue, v23);
    }
  }
}

void __149__PXGDisplayAssetTextureProvider__workQueue_performDeferredImageRequest_targetSize_contentMode_options_resultHandler_textureRequestID_mediaProvider___block_invoke(uint64_t a1)
{
  v4 = [[_PXGMediaRequestToken alloc] initWithMediaProvider:*(a1 + 32) mediaRequestID:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 328);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

- (void)_workQueue_performRequestForDisplayAsset:(id)asset textureRequestID:(int)d sharedState:(id)state
{
  v6 = *&d;
  assetCopy = asset;
  stateCopy = state;
  if ([(PXGTextureProvider *)self isRequestActive:v6])
  {
    workQueue = [(PXGTextureProvider *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    [stateCopy targetSize];
    v12 = v11;
    v14 = v13;
    [stateCopy screenScale];
    v16 = v15;
    [stateCopy screenMaxHeadroom];
    v66 = v17;
    useLowMemoryDecode = [stateCopy useLowMemoryDecode];
    adjustment = [stateCopy adjustment];
    presentationStyles = [stateCopy presentationStyles];
    observer = [stateCopy observer];
    mediaProvider = [stateCopy mediaProvider];
    v22 = +[PXTungstenSettings sharedInstance];
    v80 = mediaProvider;
    [mediaProvider masterThumbnailSize];
    if (v23 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    if ([(PXGTextureProvider *)self lowMemoryMode])
    {
      v26 = 1.5;
    }

    else
    {
      v26 = 1.25;
    }

    if ([v22 simulateSomeAssetsInCloud] && 0xCCCCCCCCCCCCCCCDLL * objc_msgSend(assetCopy, "thumbnailIndex") <= 0x3333333333333333)
    {
      [observer observeIsInCloud:1 forDisplayAsset:assetCopy];
LABEL_69:

      goto LABEL_70;
    }

    v70 = v26;
    v72 = v12;
    if (adjustment)
    {
      [adjustment requestSizeForProposedTargetSize:{v12, *&v14}];
      v12 = v27;
      v29 = v28;
      wantsSingleHighQualityDelivery = [adjustment wantsSingleHighQualityDelivery];
    }

    else
    {
      wantsSingleHighQualityDelivery = 0;
      v29 = *&v14;
    }

    if (v12 >= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v12;
    }

    v32 = fmax(v31, 1.0);
    if ([v22 requestMasterThumbsOnly] && v25 != 0.0 && v32 > v25)
    {
      PXSizeScale();
      v12 = round(v33);
      v29 = round(v34);
      if (v12 >= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = v12;
      }
    }

    if (adjustment)
    {
      v78 = [adjustment contentModeForProposedContentMode:1];
    }

    else
    {
      v78 = 1;
    }

    v77 = v22;
    if ((presentationStyles & 4) != 0)
    {
      representsBurst = [assetCopy representsBurst];
      v36 = representsBurst;
    }

    else
    {
      representsBurst = 0;
      v36 = 0;
    }

    preferMipmaps = [(PXGTextureProvider *)self preferMipmaps];
    v76 = observer;
    v37 = [[_PXGMediaRequest alloc] initWithAsset:assetCopy observer:observer postProcessOptions:v36];
    [(_PXGMediaRequest *)v37 setAdjustment:adjustment];
    v103[0] = 0;
    v102 = 0;
    v101 = 0;
    if ([(PXGAssetImageCache *)self->_imageCache getCachedImage:v103 withOrientation:&v101 outIsDegraded:&v102 forAsset:assetCopy targetSize:v78 contentMode:v6 forRequestID:v12, v29])
    {
      if (representsBurst)
      {
        v38 = v16;
        [(PXGDisplayAssetTextureProvider *)self _workQueue_handleResult:v103[0] orientation:PXImageOrientationFromCGImagePropertyOrientation() info:0 targetSize:v37 screenScale:v6 mediaRequest:stateCopy textureRequestID:v12 sharedState:v29, v16];
      }

      else
      {
        location = 0u;
        v100 = 0u;
        v41 = v101;
        if (stateCopy)
        {
          applyCleanApertureCrop = [stateCopy applyCleanApertureCrop];
        }

        else
        {
          applyCleanApertureCrop = 1;
        }

        v38 = v16;
        [(PXGDisplayAssetTextureProvider *)self _defaultStillImageTextureProcessingOptionsForAsset:assetCopy orientation:v41 applyCleanAperture:applyCleanApertureCrop];
        v98[0] = location;
        v98[1] = v100;
        [(PXGDisplayAssetTextureProvider *)self _workQueue_provideCGImage:v103[0] options:v98 adjustment:adjustment isDegraded:v102 forRequestID:v6];
      }

      PXCGImageGetSizeWithOrientation();
      v39 = v43;
      v40 = v44;
    }

    else
    {
      v38 = v16;
      v39 = *MEMORY[0x277CBF3A8];
      v40 = *(MEMORY[0x277CBF3A8] + 8);
    }

    [(_PXGMediaRequest *)v37 setBestReceivedSize:v39, v40];
    if (v39 >= v12 && v40 >= v29)
    {
LABEL_68:

      observer = v76;
      v22 = v77;
      goto LABEL_69;
    }

    v45 = v70 * v25;
    objc_initWeak(&location, self);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke;
    v93[3] = &unk_2782A8368;
    objc_copyWeak(v96, &location);
    v96[1] = *&v72;
    v96[2] = v14;
    v96[3] = *&v38;
    v71 = v37;
    v94 = v71;
    v97 = v6;
    v46 = stateCopy;
    v95 = v46;
    v73 = MEMORY[0x21CEE40A0](v93);
    v64 = wantsSingleHighQualityDelivery;
    if (v32 < v45)
    {
      v47 = (v32 > v25) & ~wantsSingleHighQualityDelivery;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47 == 1 && -[PXGTextureProvider lowMemoryMode](self, "lowMemoryMode") && [v77 inLowMemoryModePreferMasterThumb] && !-[PXGTextureProvider allowLargerImagesDuringScrollingInLowMemoryMode](self, "allowLargerImagesDuringScrollingInLowMemoryMode") || v32 < v25;
    if ([(PXGTextureProvider *)self lowMemoryMode]&& ([(PXGTextureProvider *)self interactionState], v92 == 1))
    {
      v49 = -[PXGDisplayAssetTextureProvider _requestOptionsForUseCase:forDrawing:intent:useLowMemoryDecode:](self, "_requestOptionsForUseCase:forDrawing:intent:useLowMemoryDecode:", 2, representsBurst | preferMipmaps, [v46 intent], useLowMemoryDecode);
      if (v48)
      {
        v12 = v25;
        v29 = v25;
      }

      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke_2;
      v89[3] = &unk_2782A8390;
      v75 = v90;
      objc_copyWeak(v90, &location);
      v89[4] = assetCopy;
      v90[1] = *&v12;
      v90[2] = *&v29;
      v90[3] = v78;
      v50 = v49;
      v89[5] = v50;
      v89[7] = v73;
      v91 = v6;
      v89[6] = v80;
      v51 = MEMORY[0x21CEE40A0](v89);
      workQueue_deferredImageRequestBlocksByTextureID = self->_workQueue_deferredImageRequestBlocksByTextureID;
      v53 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [(NSMutableDictionary *)workQueue_deferredImageRequestBlocksByTextureID setObject:v51 forKeyedSubscript:v53];
      v79 = v51;
      v69 = 0;
      v54 = v89;
    }

    else
    {
      if (!v47)
      {
        intent = [v46 intent];
        if (v64)
        {
          v62 = 2;
        }

        else
        {
          v62 = 0;
        }

        v50 = [(PXGDisplayAssetTextureProvider *)self _requestOptionsForUseCase:v62 forDrawing:representsBurst | preferMipmaps intent:intent useLowMemoryDecode:useLowMemoryDecode];
        [v50 setPreferHDR:v66 > 1.0];
        [v50 setTargetHDRHeadroom:v66];
        v56 = [v80 requestCGImageForAsset:assetCopy targetSize:v78 contentMode:v50 options:v73 resultHandler:{v12, v29}];
        goto LABEL_61;
      }

      v50 = -[PXGDisplayAssetTextureProvider _requestOptionsForUseCase:forDrawing:intent:useLowMemoryDecode:](self, "_requestOptionsForUseCase:forDrawing:intent:useLowMemoryDecode:", 2, representsBurst | preferMipmaps, [v46 intent], useLowMemoryDecode);
      v55 = [v80 requestCGImageForAsset:assetCopy targetSize:v78 contentMode:v50 options:v73 resultHandler:{v25, v25}];
      v56 = v55;
      if (v48)
      {
LABEL_61:

        if (!-[_PXGMediaRequest gotAnyResult](v71, "gotAnyResult") && [assetCopy thumbnailIndex] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(assetCopy, "isInCloud"))
        {
          [v76 observeIsInCloud:1 forDisplayAsset:assetCopy];
        }

        if (v56)
        {
          cancelationQueue = self->_cancelationQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke_4;
          block[3] = &unk_2782A83B8;
          selfCopy = self;
          v84 = v56;
          v82 = v80;
          v85 = v6;
          dispatch_async(cancelationQueue, block);
        }

        objc_destroyWeak(v96);
        objc_destroyWeak(&location);
        goto LABEL_68;
      }

      v69 = v55;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke_3;
      v86[3] = &unk_2782A8390;
      v75 = v87;
      objc_copyWeak(v87, &location);
      v86[4] = assetCopy;
      v87[1] = *&v12;
      v87[2] = *&v29;
      v87[3] = v78;
      v50 = v50;
      v86[5] = v50;
      v86[7] = v73;
      v88 = v6;
      v86[6] = v80;
      v57 = MEMORY[0x21CEE40A0](v86);
      v58 = self->_workQueue_deferredImageRequestBlocksByTextureID;
      v53 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [(NSMutableDictionary *)v58 setObject:v57 forKeyedSubscript:v53];
      v79 = v57;
      v54 = v86;
    }

    v65 = v54 + 5;
    v67 = v54 + 4;
    v59 = v54 + 7;
    v60 = v54 + 6;

    objc_destroyWeak(v75);
    v56 = v69;
    goto LABEL_61;
  }

LABEL_70:
}

void __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _workQueue_handleResult:a2 orientation:a3 info:v7 targetSize:*(a1 + 32) screenScale:*(a1 + 80) mediaRequest:*(a1 + 40) textureRequestID:*(a1 + 56) sharedState:{*(a1 + 64), *(a1 + 72)}];
}

void __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _workQueue_performDeferredImageRequest:*(a1 + 32) targetSize:*(a1 + 88) contentMode:*(a1 + 40) options:*(a1 + 56) resultHandler:*(a1 + 96) textureRequestID:*(a1 + 48) mediaProvider:{*(a1 + 72), *(a1 + 80)}];
}

void __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _workQueue_performDeferredImageRequest:*(a1 + 32) targetSize:*(a1 + 88) contentMode:*(a1 + 40) options:*(a1 + 56) resultHandler:*(a1 + 96) textureRequestID:*(a1 + 48) mediaProvider:{*(a1 + 72), *(a1 + 80)}];
}

void __104__PXGDisplayAssetTextureProvider__workQueue_performRequestForDisplayAsset_textureRequestID_sharedState___block_invoke_4(uint64_t a1)
{
  v4 = [[_PXGMediaRequestToken alloc] initWithMediaProvider:*(a1 + 32) mediaRequestID:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 320);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

- (void)performRequestForSpriteIndex:(unsigned int)index textureRequestID:(int)d sharedState:(id)state
{
  v5 = *&d;
  stateCopy = state;
  workQueue = [(PXGTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  displayAssetFetchResult = [stateCopy displayAssetFetchResult];
  v11 = [displayAssetFetchResult objectAtIndex:index];

  if (!v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetTextureProvider.m" lineNumber:888 description:{@"Invalid parameter not satisfying: %@", @"displayAsset != nil"}];
  }

  [(PXGDisplayAssetTextureProvider *)self _workQueue_performRequestForDisplayAsset:v11 textureRequestID:v5 sharedState:stateCopy];
}

- (void)_workQueue_processImageRequestsWithAllowedIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(PXGTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(PXGImageRequestQueue *)self->_workQueue_imageRequestQueue performRequestsWithAllowedIDs:dsCopy];
}

- (BOOL)_noteThumbnailAsDeliveredForRequestID:(int)d
{
  os_unfair_lock_lock(&self->_lookupLock);
  v5 = [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredThumbnails containsIndex:d];
  [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredThumbnails addIndex:d];
  os_unfair_lock_unlock(&self->_lookupLock);
  return v5 ^ 1;
}

- (BOOL)_hasDeliveredThumbnailForTextureRequestID:(int)d
{
  os_unfair_lock_lock(&self->_lookupLock);
  LOBYTE(d) = [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredThumbnails containsIndex:d];
  os_unfair_lock_unlock(&self->_lookupLock);
  return d;
}

- (void)_requestQueue_handleThumbnailData:(id)data spec:(PXMediaProviderThumbnailDataSpec *)spec forTextureRequestID:(int)d
{
  v5 = *&d;
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  var0 = spec->var0.var0;
  var1 = spec->var0.var1;
  var2 = spec->var0.var2;
  var3 = spec->var0.var3;
  *buf = spec->var0.var0;
  *&buf[8] = var1;
  *&buf[16] = var2;
  *&buf[18] = var3;
  v13 = [(PXGTextureProvider *)self requestQueue_indexForImageDataSpec:buf];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = PXGTungstenGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      var3 = [MEMORY[0x277CCACA8] stringWithFormat:@"{pixelFormat:%lu, width:%d, height:%d}", var0, var2, var3];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = var3;
      _os_log_impl(&dword_21AD38000, v20, OS_LOG_TYPE_DEFAULT, "%@ got thumbnail data back with a format that hasn't been registered, so unable to use:%@", buf, 0x16u);
    }
  }

  else
  {
    LOWORD(v14) = spec->var5;
    LOWORD(v15) = spec->var6;
    LOWORD(v16) = spec->var1;
    LOWORD(v17) = spec->var2;
    LOWORD(v18) = spec->var3;
    LOWORD(v19) = spec->var4;
    [(PXGTextureProvider *)self provideImageData:dataCopy withSpecAtIndex:v13 size:spec->var7 bytesPerRow:v5 contentsRect:v14 forRequestID:v15, v16, v17, v18, v19];
  }
}

- (void)_processThumbnailRequestsOnRequestQueue:(BOOL)queue
{
  queueCopy = queue;
  if (queue)
  {
    requestQueue = [(PXGTextureProvider *)self requestQueue];
    dispatch_assert_queue_V2(requestQueue);

    v6 = self->_requestQueue_thumbnailRequestQueue;
    v7 = self->_workQueue_thumbnailRequestQueue != 0;
  }

  else
  {
    workQueue = [(PXGTextureProvider *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v6 = self->_workQueue_thumbnailRequestQueue;
    v7 = 0;
  }

  [(PXGThumbnailRequestQueue *)v6 sortRequests];
  v9 = [(PXGThumbnailRequestQueue *)v6 count];
  v31 = v6;
  requests = [(PXGThumbnailRequestQueue *)v6 requests];
  v11 = +[PXTungstenSettings sharedInstance];
  simulateSomeAssetsInCloud = [v11 simulateSomeAssetsInCloud];

  v35 = v9;
  if (v9 >= -99)
  {
    v13 = 0;
    v34 = v9 / 100;
    v14 = v9;
    v32 = simulateSomeAssetsInCloud;
    v33 = v7;
    while (1)
    {
      v37 = v14 - 100;
      if (v14 >= 100)
      {
        v14 = 100;
      }

      v15 = v14 <= 1 ? 1 : v14;
      context = objc_autoreleasePoolPush();
      v38 = v13;
      if (v35 - 100 * v13 >= 1)
      {
        break;
      }

LABEL_32:
      objc_autoreleasePoolPop(context);
      v14 = v37;
      v13 = v38 + 1;
      if (v38 == v34)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v16 = *(requests + 24);
      if (![(PXGTextureProvider *)self isRequestActive:v16]|| [(PXGDisplayAssetTextureProvider *)self _hasDeliveredThumbnailForTextureRequestID:v16])
      {
        goto LABEL_31;
      }

      v17 = *(requests + 8);
      v18 = *requests;
      LOWORD(v19) = *(requests + 28);
      LOWORD(v20) = *(requests + 30);
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v21 = [v17 thumbnailDataForAsset:v18 targetSize:v7 onlyFromCache:&v48 outDataSpec:{v19, v20}];
      v24 = *(requests + 32);
      if (v24 > 0.0)
      {
        LOWORD(v22) = WORD6(v49);
        v25 = v22;
        LOWORD(v23) = WORD4(v49);
        *&v26 = v23;
        v27 = *&v26 + ((1.0 - v24) * v25) * 0.5;
        WORD4(v49) = v27;
        LOWORD(v27) = HIWORD(v49);
        *&v27 = LODWORD(v27);
        LOWORD(v26) = WORD5(v49);
        WORD5(v49) = (v26 + ((1.0 - v24) * *&v27) * 0.5);
        WORD6(v49) = (v24 * v25);
        HIWORD(v49) = (v24 * *&v27);
      }

      if (simulateSomeAssetsInCloud && 0xCCCCCCCCCCCCCCCDLL * [v18 thumbnailIndex] <= 0x3333333333333333)
      {
      }

      else if (v21)
      {
        if ([(PXGDisplayAssetTextureProvider *)self _noteThumbnailAsDeliveredForRequestID:v16])
        {
          if (queueCopy)
          {
            v45 = v48;
            v46 = v49;
            v47 = v50;
            [(PXGDisplayAssetTextureProvider *)self _requestQueue_handleThumbnailData:v21 spec:&v45 forTextureRequestID:v16];
          }

          else
          {
            [(PXGTextureProvider *)self requestQueue];
            v29 = v28 = queueCopy;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __74__PXGDisplayAssetTextureProvider__processThumbnailRequestsOnRequestQueue___block_invoke;
            block[3] = &unk_2782A8340;
            block[4] = self;
            v21 = v21;
            v40 = v21;
            v41 = v48;
            v42 = v49;
            v43 = v50;
            v44 = v16;
            dispatch_async(v29, block);

            queueCopy = v28;
            simulateSomeAssetsInCloud = v32;
            v7 = v33;
          }
        }

        goto LABEL_30;
      }

      if ((v7 & 1) == 0 && [(PXGDisplayAssetTextureProvider *)self _noteThumbnailAsDeliveredForRequestID:v16])
      {
        placeholderImage = [(PXGDisplayAssetTextureProvider *)self placeholderImage];
        v45 = xmmword_21AE2D320;
        v46 = 0x3F80000000000000uLL;
        if (queueCopy)
        {
          [(PXGTextureProvider *)self provideCGImage:placeholderImage options:&v45 isDegraded:1 forRequestID:v16];
        }

        else
        {
          [(PXGDisplayAssetTextureProvider *)self _workQueue_provideCGImage:placeholderImage options:&v45 adjustment:0 isDegraded:1 forRequestID:v16];
        }
      }

      v21 = 0;
LABEL_30:

LABEL_31:
      requests += 40;
      if (!--v15)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  [(PXGThumbnailRequestQueue *)v31 removeAllRequests];
}

uint64_t __74__PXGDisplayAssetTextureProvider__processThumbnailRequestsOnRequestQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v4;
  v7 = *(a1 + 80);
  return [v2 _requestQueue_handleThumbnailData:v1 spec:v6 forTextureRequestID:v3];
}

- (void)_providePlaceholdersForRequestIDs:(_NSRange)ds placeholderStyle:(unint64_t)style
{
  length = ds.length;
  location = ds.location;
  if (style == 2)
  {
    transparentPlaceholderImage = self->_transparentPlaceholderImage;
    goto LABEL_7;
  }

  if (style == 1)
  {
    transparentPlaceholderImage = [(PXGDisplayAssetTextureProvider *)self placeholderImage];
LABEL_7:
    CGImageRetain(transparentPlaceholderImage);
    requestQueue = [(PXGTextureProvider *)self requestQueue];
    v8 = requestQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__PXGDisplayAssetTextureProvider__providePlaceholdersForRequestIDs_placeholderStyle___block_invoke_3;
    block[3] = &unk_2782A8318;
    block[4] = self;
    block[5] = location;
    block[6] = length;
    block[7] = transparentPlaceholderImage;
    v9 = block;
    goto LABEL_8;
  }

  if (style)
  {
    return;
  }

  requestQueue = [(PXGTextureProvider *)self requestQueue];
  v8 = requestQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__PXGDisplayAssetTextureProvider__providePlaceholdersForRequestIDs_placeholderStyle___block_invoke;
  v12[3] = &unk_2782AA258;
  v12[5] = location;
  v12[6] = length;
  v12[4] = self;
  v9 = v12;
LABEL_8:
  dispatch_async(requestQueue, v9);
}

void *__85__PXGDisplayAssetTextureProvider__providePlaceholdersForRequestIDs_placeholderStyle___block_invoke(void *result)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __85__PXGDisplayAssetTextureProvider__providePlaceholdersForRequestIDs_placeholderStyle___block_invoke_2;
  v8 = &unk_2782ABC08;
  v1 = result[5];
  v9 = result[4];
  v2 = result[6];
  v3 = v2 + v1;
  v10 = 0;
  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v4 < v3)
  {
    v5 = v3 - 1;
    do
    {
      result = (v7)(v6, v4, &v10);
      if (v5 == v4)
      {
        break;
      }

      ++v4;
    }

    while ((v10 & 1) == 0);
  }

  return result;
}

void __85__PXGDisplayAssetTextureProvider__providePlaceholdersForRequestIDs_placeholderStyle___block_invoke_3(void *a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __85__PXGDisplayAssetTextureProvider__providePlaceholdersForRequestIDs_placeholderStyle___block_invoke_4;
  v11 = &unk_2782A9008;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = a1[6];
  v12 = v2;
  v13 = v4;
  v6 = v5 + v3;
  v14 = 0;
  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 < v6)
  {
    v8 = v6 - 1;
    do
    {
      (v10)(v9, v7, &v14);
      if (v8 == v7)
      {
        break;
      }

      ++v7;
    }

    while ((v14 & 1) == 0);
    v4 = a1[7];
  }

  CGImageRelease(v4);
}

- (CGImage)placeholderImage
{
  viewEnvironment = [(PXGTextureProvider *)self viewEnvironment];
  userInterfaceStyle = [viewEnvironment userInterfaceStyle];
  v5 = &OBJC_IVAR___PXGDisplayAssetTextureProvider__lightPlaceholderImage;
  if (userInterfaceStyle == 2)
  {
    v5 = &OBJC_IVAR___PXGDisplayAssetTextureProvider__darkPlaceholderImage;
  }

  v6 = *(&self->super.super.isa + *v5);

  return v6;
}

- (void)_requestQueue_requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range observer:(id)observer textureRequestIDs:(_NSRange)ds displayAssetFetchResult:(id)result presentationStyles:(unint64_t)styles targetSize:(CGSize)size screenScale:(double)scale screenMaxHeadroom:(double)self0 adjustment:(id)self1 intent:(unint64_t)self2 cannotBeSatisfiedWithThumbnail:(BOOL)self3 useLowMemoryDecode:(BOOL)self4 applyCleanApertureCrop:(BOOL)self5 mediaProvider:(id)self6
{
  height = size.height;
  width = size.width;
  observerCopy = observer;
  resultCopy = result;
  adjustmentCopy = adjustment;
  providerCopy = provider;
  v27 = +[PXTungstenSettings sharedInstance];
  v28 = width;
  v29 = height;
  if (adjustmentCopy && (v30 = [adjustmentCopy allowsUnadjustedOpportunisticDelivery], objc_msgSend(adjustmentCopy, "requestSizeForProposedTargetSize:", width, height), v28 = v31, v29 = v32, !v30))
  {
    v33 = 0;
  }

  else
  {
    if (-[PXGTextureProvider canDeliverThumbnailData](self, "canDeliverThumbnailData") && ([v27 disableLowResThumbnails] & 1) == 0)
    {
      [(PXGThumbnailRequestQueue *)self->_requestQueue_thumbnailRequestQueue enqueueRequestsWithItemRange:range.location textureRequestIDs:HIDWORD(*&range) displayAssetFetchResult:ds.location targetSize:ds.length applyCleanApertureCrop:resultCopy mediaProvider:crop, v28, v29, providerCopy];
    }

    v33 = 1;
  }

  workQueue = [(PXGTextureProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __297__PXGDisplayAssetTextureProvider__requestQueue_requestTexturesForSpritesInRange_observer_textureRequestIDs_displayAssetFetchResult_presentationStyles_targetSize_screenScale_screenMaxHeadroom_adjustment_intent_cannotBeSatisfiedWithThumbnail_useLowMemoryDecode_applyCleanApertureCrop_mediaProvider___block_invoke;
  block[3] = &unk_2782A82C8;
  thumbnailCopy = thumbnail;
  dsCopy = ds;
  v59 = v33;
  block[4] = self;
  v43 = v27;
  v49 = v28;
  v50 = v29;
  cropCopy = crop;
  v44 = resultCopy;
  v45 = providerCopy;
  v51 = width;
  v52 = height;
  v46 = adjustmentCopy;
  v47 = observerCopy;
  stylesCopy = styles;
  scaleCopy = scale;
  headroomCopy = headroom;
  intentCopy = intent;
  rangeCopy = range;
  decodeCopy = decode;
  v35 = observerCopy;
  v36 = adjustmentCopy;
  v37 = providerCopy;
  v38 = resultCopy;
  v39 = v27;
  dispatch_async(workQueue, block);
}

uint64_t __297__PXGDisplayAssetTextureProvider__requestQueue_requestTexturesForSpritesInRange_observer_textureRequestIDs_displayAssetFetchResult_presentationStyles_targetSize_screenScale_screenMaxHeadroom_adjustment_intent_cannotBeSatisfiedWithThumbnail_useLowMemoryDecode_applyCleanApertureCrop_mediaProvider___block_invoke(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    [*(*(a1 + 32) + 272) addIndexesInRange:{*(a1 + 80), *(a1 + 88)}];
  }

  if (*(a1 + 169) == 1 && [*(a1 + 32) canDeliverThumbnailData] && (objc_msgSend(*(a1 + 40), "disableLowResThumbnails") & 1) == 0)
  {
    [*(*(a1 + 32) + 280) enqueueRequestsWithItemRange:*(a1 + 160) textureRequestIDs:HIDWORD(*(a1 + 160)) displayAssetFetchResult:*(a1 + 80) targetSize:*(a1 + 88) applyCleanApertureCrop:*(a1 + 48) mediaProvider:{*(a1 + 170), *(a1 + 96), *(a1 + 104), *(a1 + 56)}];
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 168))
  {
    v2 = 0;
LABEL_10:
    BYTE1(v4) = *(a1 + 170);
    LOBYTE(v4) = *(a1 + 171);
    return [*(*(a1 + 32) + 288) enqueueRequestsWithSpriteIndexRange:*(a1 + 160) textureRequestIDs:*(a1 + 80) displayAssetFetchResult:*(a1 + 88) observer:*(a1 + 48) presentationStyles:*(a1 + 72) targetSize:*(a1 + 128) screenScale:*(a1 + 112) screenMaxHeadroom:*(a1 + 120) adjustment:*(a1 + 136) intent:*(a1 + 144) useLowMemoryDecode:v2 applyCleanApertureCrop:*(a1 + 152) mediaProvider:{v4, *(a1 + 56)}];
  }

  result = [*(a1 + 32) _imageSizeSatisfiedByThumbnail:{*(a1 + 112), *(a1 + 120)}];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 40) requestThumbnailsOnly];
    if ((result & 1) == 0)
    {
      v2 = *(a1 + 64);
      goto LABEL_10;
    }
  }

  return result;
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  v132 = *MEMORY[0x277D85DE8];
  v127.receiver = self;
  v127.super_class = PXGDisplayAssetTextureProvider;
  layoutCopy = layout;
  v7 = [(PXGTextureProvider *)&v127 requestTexturesForSpritesInRange:range geometries:geometries styles:styles infos:infos inLayout:?];
  v65 = v8;
  v66 = v7;
  displayAssetSource = [layoutCopy displayAssetSource];
  displayAssetSourceRespondsTo = [layoutCopy displayAssetSourceRespondsTo];
  v10 = v9;
  if (displayAssetSourceRespondsTo)
  {
    v81 = [displayAssetSource supportedDisplayAssetPresentationStylesInLayout:layoutCopy];
  }

  else
  {
    v81 = 1;
  }

  v84 = [displayAssetSource displayAssetFetchResultForSpritesInRange:range inLayout:layoutCopy];
  if ((displayAssetSourceRespondsTo & 0x10000) != 0)
  {
    v73 = [displayAssetSource displayAssetRequestObserverForSpritesInRange:range inLayout:layoutCopy];
  }

  else
  {
    v73 = 0;
  }

  if (!v84)
  {
    v11 = [displayAssetSource desiredPlaceholderStyleInLayout:layoutCopy];
    selfCopy2 = self;
    if (v11 == 1)
    {
      os_unfair_lock_lock(&self->_lookupLock);
      [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredPlaceholders addIndexesInRange:v66, v65];
      selfCopy2 = self;
      os_unfair_lock_unlock(&self->_lookupLock);
    }

    [(PXGDisplayAssetTextureProvider *)selfCopy2 _providePlaceholdersForRequestIDs:v66 placeholderStyle:v65, v11];
    goto LABEL_72;
  }

  if ((displayAssetSourceRespondsTo & 0x1000000000000) != 0)
  {
    [displayAssetSource customMediaProviderForDisplayAssetsInLayout:layoutCopy];
  }

  else
  {
    [(PXGDisplayAssetTextureProvider *)self defaultMediaProvider];
  }
  v77 = ;
  v13 = layoutCopy;
  if ((displayAssetSourceRespondsTo & 0x100000000000000) == 0)
  {
    v67 = 0;
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_19:
    v70 = 0;
    if ((v10 & 0x100) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v67 = [displayAssetSource customPixelBufferSourcesProviderForDisplayAssetsInLayout:layoutCopy];
  v13 = layoutCopy;
  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v70 = [displayAssetSource useLowMemoryDecodeInLayout:v13];
  v13 = layoutCopy;
  if ((v10 & 0x100) != 0)
  {
LABEL_17:
    LOBYTE(v14) = [displayAssetSource shouldApplyCleanApertureCropToStillImagesInLayout:v13];
    v13 = layoutCopy;
    goto LABEL_21;
  }

LABEL_20:
  v14 = (v81 >> 1) & 1;
LABEL_21:
  [v13 displayScale];
  v16 = v15;
  [layoutCopy displayMaximumHeadroom];
  v18 = v17;
  objc_initWeak(&location, self);
  queue = [(PXGTextureProvider *)self requestQueue];
  workQueue = [(PXGTextureProvider *)self workQueue];
  rangeCopy3 = range;
  v20 = HIDWORD(*&range);
  v87 = HIDWORD(*&range);
  v88 = 0;
  if ((v81 & 1) != 0 && v20)
  {
    v21 = 0;
    v82 = 0;
    v22 = 0;
    v80 = 0;
    v23 = 0;
    v88 = 0;
    v24 = 0;
    v72 = 1;
    rangeCopy2 = range;
    v26 = v66;
    v27 = HIDWORD(*&range);
    do
    {
      v28 = &infos->var0 + 40 * rangeCopy2.location;
      v29 = *(v28 + 8);
      v89 = v29;
      if (vceq_f32(v29, vdup_lane_s32(v29, 1)).u32[0] & 1) != 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*(&styles->var1 + 10 * rangeCopy2.location), xmmword_21AE2D390)))))
      {
        v29.f32[0] = v29.f32[0] + 1.0;
        v89 = v29;
      }

      v30 = *v28;
      if ((displayAssetSourceRespondsTo & 0x100000000) != 0)
      {
        v31 = [v84 objectAtIndex:rangeCopy2.location];
        v32 = [displayAssetSource adjustmentForDisplayAsset:v31 spriteIndex:rangeCopy2 inLayout:layoutCopy];
      }

      else
      {
        v32 = 0;
      }

      v33 = vceq_f32(v89, v24);
      if ((v33.i8[0] & 1) == 0 || (v33.i8[4] & 1) == 0 || v32 != v88 || v30 != v21)
      {
        if (v22)
        {
          if ((displayAssetSourceRespondsTo & 0x10000000000) != 0)
          {
            v72 = [displayAssetSource presentationIntentForSpritesInRange:v82 | (v22 << 32) inLayout:layoutCopy];
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
          block[3] = &unk_2782A8250;
          objc_copyWeak(v120, &location);
          v121 = v82;
          v122 = v22;
          v116 = v73;
          v120[1] = v80;
          v120[2] = v23;
          v117 = v84;
          v120[3] = v81;
          v120[4] = v24;
          v120[5] = v16;
          v120[6] = v18;
          v118 = v88;
          v120[7] = v72;
          v123 = v30 == 1;
          v124 = v70;
          v125 = v14;
          v119 = v77;
          dispatch_async(queue, block);

          objc_destroyWeak(v120);
        }

        v34 = v32;

        v23 = 0;
        LODWORD(v22) = 0;
        v88 = v34;
        v80 = v26;
        v82 = rangeCopy2.location;
        v21 = v30;
        v24 = v89;
      }

      v22 = (v22 + 1);
      ++v23;
      ++v26;
      rangeCopy2 = (rangeCopy2.location + 1);
      --v27;
      v20 = HIDWORD(*&range);
    }

    while (v27);
    if (v22)
    {
      if ((displayAssetSourceRespondsTo & 0x10000000000) != 0)
      {
        v72 = [displayAssetSource presentationIntentForSpritesInRange:v82 | (v22 << 32) inLayout:layoutCopy];
      }

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2;
      v104[3] = &unk_2782A8250;
      objc_copyWeak(v109, &location);
      v110 = v82;
      v111 = v22;
      v105 = v73;
      v109[1] = v80;
      v109[2] = v23;
      v106 = v84;
      v109[3] = v81;
      v109[4] = v24;
      v109[5] = v16;
      v109[6] = v18;
      v88 = v88;
      v107 = v88;
      v109[7] = v72;
      v112 = v21 == 1;
      v113 = v70;
      v114 = v14;
      v108 = v77;
      dispatch_async(queue, v104);

      objc_destroyWeak(v109);
      v20 = HIDWORD(*&range);
    }

    rangeCopy3 = range;
  }

  if ((v81 & 0x12) != 0)
  {
    if ((displayAssetSourceRespondsTo & 0x100) != 0)
    {
      [displayAssetSource minSpriteSizeForPresentationStyle:2];
      v37 = layoutCopy;
      v35 = v38;
      v36 = v39;
    }

    else
    {
      v35 = *MEMORY[0x277CBF3A8];
      v36 = *(MEMORY[0x277CBF3A8] + 8);
      v37 = layoutCopy;
    }

    rootLayout = [v37 rootLayout];
    v90 = objc_opt_respondsToSelector();
    if (v20)
    {
      v40 = v66;
      while (1)
      {
        PXRectWithCenterAndSize();
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        if (PXSizeApproximatelyEqualOrBiggerThanSizeWithTolerance())
        {
          break;
        }

        v49 = PXGTungstenGetLog();
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_61;
        }

        v51 = rangeCopy3.location;
        *&v134.width = v46;
        *&v134.height = v48;
        v52 = NSStringFromCGSize(v134);
        v135.width = v35;
        v135.height = v36;
        v53 = NSStringFromCGSize(v135);
        *buf = 138412546;
        v129 = v52;
        v130 = 2112;
        v131 = v53;
        _os_log_impl(&dword_21AD38000, v49, OS_LOG_TYPE_DEBUG, "Asset is too small to be played – size: %@, min size: %@", buf, 0x16u);

LABEL_69:
        ++v40;
        rangeCopy3 = (v51 + 1);
        if (!--v87)
        {
          goto LABEL_70;
        }
      }

      v49 = [v84 objectAtIndex:rangeCopy3.location];
      playbackStyle = [v49 playbackStyle];
      if ((v81 & 0x10) != 0)
      {
        if (playbackStyle <= 5 && ((1 << playbackStyle) & 0x3A) != 0)
        {
LABEL_59:
          if (v90)
          {
            v54 = [displayAssetSource videoPresentationControllerForDisplayAsset:v49 spriteIndex:rangeCopy3 inLayout:layoutCopy];
          }

          else
          {
            v54 = 0;
          }

          if ((displayAssetSourceRespondsTo & 0x100000000) != 0)
          {
            v55 = [displayAssetSource adjustmentForDisplayAsset:v49 spriteIndex:rangeCopy3 inLayout:layoutCopy];
            if (!v54)
            {
              goto LABEL_65;
            }

LABEL_67:
            v57 = 0;
          }

          else
          {
            v55 = 0;
            if (v54)
            {
              goto LABEL_67;
            }

LABEL_65:
            v56 = [layoutCopy objectReferenceForSpriteIndex:rangeCopy3];
            v57 = [rootLayout spriteReferenceForSpriteIndex:objc_msgSend(rootLayout objectReference:{"convertSpriteIndex:fromLayout:", rangeCopy3, layoutCopy), v56}];
          }

          v51 = rangeCopy3.location;
          v58 = *(&infos->var0 + 40 * rangeCopy3.location);
          lowMemoryMode = [(PXGTextureProvider *)self lowMemoryMode];
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3;
          v91[3] = &unk_2782A82A0;
          v92 = workQueue;
          objc_copyWeak(v99, &location);
          v100 = rangeCopy3.location;
          v93 = v57;
          v49 = v49;
          v94 = v49;
          v95 = v54;
          v96 = v55;
          v102 = v58;
          v101 = v40;
          v97 = v77;
          v98 = v67;
          v103 = lowMemoryMode;
          v99[1] = v42;
          v99[2] = v44;
          v99[3] = v46;
          v99[4] = v48;
          v99[5] = v16;
          v60 = v55;
          v61 = v54;
          v62 = v57;
          dispatch_async(queue, v91);

          objc_destroyWeak(v99);
          goto LABEL_69;
        }
      }

      else if (playbackStyle - 3 <= 2)
      {
        goto LABEL_59;
      }

LABEL_61:
      v51 = rangeCopy3.location;
      goto LABEL_69;
    }

LABEL_70:
  }

  objc_destroyWeak(&location);
LABEL_72:

  v64 = v65;
  v63 = v66;
  result.length = v64;
  result.location = v63;
  return result;
}

void __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  BYTE2(v2) = *(a1 + 138);
  LOWORD(v2) = *(a1 + 136);
  [WeakRetained _requestQueue_requestTexturesForSpritesInRange:*(a1 + 128) observer:*(a1 + 32) textureRequestIDs:*(a1 + 72) displayAssetFetchResult:*(a1 + 80) presentationStyles:*(a1 + 40) targetSize:*(a1 + 88) screenScale:vcvtq_f64_f32(*(a1 + 96)) screenMaxHeadroom:*(a1 + 104) adjustment:*(a1 + 112) intent:*(a1 + 48) cannotBeSatisfiedWithThumbnail:*(a1 + 120) useLowMemoryDecode:v2 applyCleanApertureCrop:*(a1 + 56) mediaProvider:?];
}

void __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  BYTE2(v2) = *(a1 + 138);
  LOWORD(v2) = *(a1 + 136);
  [WeakRetained _requestQueue_requestTexturesForSpritesInRange:*(a1 + 128) observer:*(a1 + 32) textureRequestIDs:*(a1 + 72) displayAssetFetchResult:*(a1 + 80) presentationStyles:*(a1 + 40) targetSize:*(a1 + 88) screenScale:vcvtq_f64_f32(*(a1 + 96)) screenMaxHeadroom:*(a1 + 104) adjustment:*(a1 + 112) intent:*(a1 + 48) cannotBeSatisfiedWithThumbnail:*(a1 + 120) useLowMemoryDecode:v2 applyCleanApertureCrop:*(a1 + 56) mediaProvider:?];
}

void __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_4;
  v10[3] = &unk_2782A8278;
  objc_copyWeak(&v15, (a1 + 88));
  v19 = *(a1 + 136);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v21 = *(a1 + 144);
  v20 = *(a1 + 140);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v22 = *(a1 + 145);
  v9 = *(a1 + 112);
  v16 = *(a1 + 96);
  v17 = v9;
  v18 = *(a1 + 128);
  dispatch_async(v2, v10);

  objc_destroyWeak(&v15);
}

void __100__PXGDisplayAssetTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  LOBYTE(v3) = *(a1 + 137);
  LODWORD(v2) = *(a1 + 132);
  [WeakRetained _workQueue_requestVideoTexturesForSpriteAtIndex:*(a1 + 128) spriteReference:*(a1 + 32) displayAsset:*(a1 + 40) presentationController:*(a1 + 48) adjustment:*(a1 + 56) presentationType:*(a1 + 136) textureRequestID:*(a1 + 104) mediaProvider:*(a1 + 112) pixelBufferSourcesProvider:*(a1 + 120) useLowMemoryMode:v2 spriteSize:*(a1 + 64) displayScale:{*(a1 + 72), v3}];
}

- (void)viewEnvironmentDidChange:(id)change
{
  changeCopy = change;
  viewEnvironment = [(PXGTextureProvider *)self viewEnvironment];
  userInterfaceStyle = [viewEnvironment userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    os_unfair_lock_lock(&self->_lookupLock);
    v8 = [(NSMutableIndexSet *)self->_lookupLock_requestIDsWithDeliveredPlaceholders copy];
    os_unfair_lock_unlock(&self->_lookupLock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__PXGDisplayAssetTextureProvider_viewEnvironmentDidChange___block_invoke;
    v9[3] = &unk_2782AA948;
    v9[4] = self;
    [v8 enumerateRangesUsingBlock:v9];
  }
}

- (void)releaseCachedResources
{
  v3.receiver = self;
  v3.super_class = PXGDisplayAssetTextureProvider;
  [(PXGTextureProvider *)&v3 releaseCachedResources];
  [(PXGAssetImageCache *)self->_imageCache clearAllCachedImages];
}

- (void)setVideoRequestsAllowed:(BOOL)allowed
{
  if (self->_videoRequestsAllowed != allowed)
  {
    self->_videoRequestsAllowed = allowed;
    videoSessionsRequestQueue = self->_videoSessionsRequestQueue;
    if (allowed)
    {
      dispatch_resume(videoSessionsRequestQueue);
    }

    else
    {
      dispatch_suspend(videoSessionsRequestQueue);
    }
  }
}

- (void)_workQueue_updateTextureStreamingVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_workQueue_textureStreamingSessionsMap objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        presentationController = [*(*(&v10 + 1) + 8 * v8) presentationController];
        [presentationController becomeVisible:visibilityCopy];

        ++v8;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)interactionStateDidChange:(id *)change
{
  v5 = +[PXTungstenSettings sharedInstance];
  v6 = v5;
  if (self->_isLowSpec)
  {
    videoAllowedAtOrBelowSpeedForLowSpec = [v5 videoAllowedAtOrBelowSpeedForLowSpec];
  }

  else
  {
    videoAllowedAtOrBelowSpeedForLowSpec = [v5 videoAllowedAtOrBelowSpeed];
  }

  v8 = videoAllowedAtOrBelowSpeedForLowSpec;
  [(PXGTextureProvider *)self interactionState];
  [(PXGDisplayAssetTextureProvider *)self setVideoRequestsAllowed:v14 <= v8];
  [(PXGTextureProvider *)self interactionState];
  v9 = v13;
  if (v13 != change->var7)
  {
    workQueue = [(PXGTextureProvider *)self workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__PXGDisplayAssetTextureProvider_interactionStateDidChange___block_invoke;
    v11[3] = &unk_2782AC140;
    v11[4] = self;
    v12 = v9;
    dispatch_async(workQueue, v11);
  }
}

- (void)registerImageDataSpecs:(id)specs
{
  specsCopy = specs;
  v5 = +[PXTungstenSettings sharedInstance];
  disableLowResThumbnails = [v5 disableLowResThumbnails];

  defaultMediaProvider = [(PXGDisplayAssetTextureProvider *)self defaultMediaProvider];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PXGDisplayAssetTextureProvider_registerImageDataSpecs___block_invoke;
  v9[3] = &unk_2782A8228;
  v12 = disableLowResThumbnails;
  v10 = specsCopy;
  selfCopy = self;
  v8 = specsCopy;
  [defaultMediaProvider enumerateAvailableThumbnailDataFormats:v9];
}

uint64_t __57__PXGDisplayAssetTextureProvider_registerImageDataSpecs___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 32);
  v12[0] = *a2;
  v12[1] = v4;
  v13 = v5;
  result = [v6 registerImageDataSpec:v12];
  if ((*(a1 + 48) & 1) == 0)
  {
    LOWORD(v8) = *(a2 + 16);
    v9 = v8;
    LOWORD(v8) = *(a2 + 18);
    v10 = v8;
    result = MEMORY[0x21CEE38D0](result, v9, v8, *(*(a1 + 40) + 408), *(*(a1 + 40) + 416));
    if (result)
    {
      v11 = (*(a1 + 40) + 408);
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

- (id)_requestOptionsForUseCase:(unint64_t)case forDrawing:(BOOL)drawing intent:(unint64_t)intent useLowMemoryDecode:(BOOL)decode
{
  decodeCopy = decode;
  if (case <= 3 && drawing)
  {
    case = qword_21AE2D908[case];
  }

  v9 = [(NSArray *)self->_requestOptions objectAtIndexedSubscript:case];
  workQueue = [(PXGTextureProvider *)self workQueue];
  [v9 setResultHandlerQueue:workQueue];

  [v9 setUseLowMemoryMode:{-[PXGTextureProvider lowMemoryMode](self, "lowMemoryMode") | decodeCopy}];
  [v9 setCleanUpDecodeBuffers:decodeCopy];
  v11 = [v9 loadingMode] & 0xFFFFFFFFFF9FFFFFLL;
  v12 = 6291456;
  if (!decodeCopy)
  {
    v12 = 0;
  }

  [v9 setLoadingMode:v11 | v12];
  if (intent >= 6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXImageRequestOptionsDownloadIntent PXGPHRequestOptionsDownloadIntentFromPresentationIntent(PXGDisplayAssetPresentationIntent)"];
    [currentHandler handleFailureInFunction:v15 file:@"PXGDisplayAssetSource_Internal.h" lineNumber:55 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [v9 setDownloadIntent:qword_21AE2D928[intent]];

  return v9;
}

- (void)setPreferBGRA:(BOOL)a
{
  aCopy = a;
  if ([(PXGTextureProvider *)self preferBGRA]!= a)
  {
    v5.receiver = self;
    v5.super_class = PXGDisplayAssetTextureProvider;
    [(PXGTextureProvider *)&v5 setPreferBGRA:aCopy];
    [(PXGDisplayAssetTextureProvider *)self _setupRequestOptions];
  }
}

- (void)dealloc
{
  CGImageRelease(self->_lightPlaceholderImage);
  CGImageRelease(self->_darkPlaceholderImage);
  CGImageRelease(self->_transparentPlaceholderImage);
  if (!self->_videoRequestsAllowed)
  {
    self->_videoRequestsAllowed = 1;
    dispatch_resume(self->_videoSessionsRequestQueue);
  }

  v3.receiver = self;
  v3.super_class = PXGDisplayAssetTextureProvider;
  [(PXGTextureProvider *)&v3 dealloc];
}

- (PXGDisplayAssetTextureProvider)initWithDefaultMediaProvider:(id)provider layoutQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v50.receiver = self;
  v50.super_class = PXGDisplayAssetTextureProvider;
  v9 = [(PXGTextureProvider *)&v50 init];
  if (v9)
  {
    v10 = +[PXTungstenSettings sharedInstance];
    objc_storeStrong(v9 + 54, provider);
    v11 = dispatch_queue_attr_make_initially_inactive(0);
    v12 = dispatch_queue_create("com.apple.photos.texture-provider.video-requests", v11);
    v13 = *(v9 + 30);
    *(v9 + 30) = v12;

    *(v9 + 424) = 1;
    [v9 setLayoutQueue:queueCopy];
    if (queueCopy == MEMORY[0x277D85CD0])
    {
      mEMORY[0x277D3CD90] = [MEMORY[0x277D3CD90] sharedScheduler];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __75__PXGDisplayAssetTextureProvider_initWithDefaultMediaProvider_layoutQueue___block_invoke;
      v48[3] = &unk_2782ABE50;
      v49 = v9;
      [mEMORY[0x277D3CD90] scheduleMainQueueTask:v48];
    }

    else
    {
      dispatch_activate(*(v9 + 30));
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = *(v9 + 40);
    *(v9 + 40) = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = *(v9 + 41);
    *(v9 + 41) = v17;

    v19 = dispatch_queue_create("com.apple.photos.texture-provider.cancel", 0);
    v20 = *(v9 + 39);
    *(v9 + 39) = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_USER_INITIATED, 0);
    v23 = dispatch_queue_create("com.apple.photos.texture-provider.drawing", v22);
    v24 = *(v9 + 29);
    *(v9 + 29) = v23;

    v25 = objc_alloc_init(PXGThumbnailRequestQueue);
    v26 = *(v9 + 31);
    *(v9 + 31) = v25;

    if ([v10 loadThumbnailsAsync])
    {
      v27 = objc_alloc_init(PXGThumbnailRequestQueue);
      v28 = *(v9 + 35);
      *(v9 + 35) = v27;
    }

    v29 = objc_alloc_init(PXGImageRequestQueue);
    v30 = *(v9 + 36);
    *(v9 + 36) = v29;

    [*(v9 + 36) setImageRequestPerformer:v9];
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = *(v9 + 37);
    *(v9 + 37) = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = *(v9 + 32);
    *(v9 + 32) = v33;

    v35 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v36 = *(v9 + 33);
    *(v9 + 33) = v35;

    v37 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v38 = *(v9 + 34);
    *(v9 + 34) = v37;

    *(v9 + 84) = 0;
    v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v40 = *(v9 + 43);
    *(v9 + 43) = v39;

    v41 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v42 = *(v9 + 44);
    *(v9 + 44) = v41;

    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __PXGPlaceholderImageWithColor_block_invoke;
    v54 = &__block_descriptor_64_e54_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__CGContext__40l;
    v55 = vdupq_n_s64(0x3FEDC28F5C28F5C3uLL);
    v56 = xmmword_21AE2D370;
    *(v9 + 48) = PXCreateCGImageWithDrawBlock();
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __PXGPlaceholderImageWithColor_block_invoke;
    v54 = &__block_descriptor_64_e54_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__CGContext__40l;
    v55 = vdupq_n_s64(0x3FC1EB851EB851ECuLL);
    v56 = xmmword_21AE2D380;
    *(v9 + 49) = PXCreateCGImageWithDrawBlock();
    *(v9 + 50) = PXCreateCGImageWithDrawBlock();
    v43 = objc_alloc_init(PXGAssetImageCache);
    v44 = *(v9 + 45);
    *(v9 + 45) = v43;

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processorCount = [processInfo processorCount];
    *(v9 + 368) = processorCount <= [v10 lowSpecProcessorCountLimit];

    [v9 _setupRequestOptions];
    *(v9 + 55) = 0;
  }

  return v9;
}

- (PXGDisplayAssetTextureProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetTextureProvider.m" lineNumber:239 description:{@"%s is not available as initializer", "-[PXGDisplayAssetTextureProvider init]"}];

  abort();
}

+ (id)defaultMediaVersionHandlerWithDataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges
{
  changesCopy = changes;
  afterChangesCopy = afterChanges;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__PXGDisplayAssetTextureProvider_defaultMediaVersionHandlerWithDataSourceBeforeChanges_dataSourceAfterChanges___block_invoke;
  v11[3] = &unk_2782A8200;
  v12 = changesCopy;
  v13 = afterChangesCopy;
  v7 = afterChangesCopy;
  v8 = changesCopy;
  v9 = MEMORY[0x21CEE40A0](v11);

  return v9;
}

BOOL __111__PXGDisplayAssetTextureProvider_defaultMediaVersionHandlerWithDataSourceBeforeChanges_dataSourceAfterChanges___block_invoke(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *(a1 + 32);
  v6 = a2[1];
  v17 = *a2;
  v18 = v6;
  v7 = [v5 assetAtItemIndexPath:&v17];
  v8 = *(a1 + 40);
  v9 = a3[1];
  v17 = *a3;
  v18 = v9;
  v10 = [v8 assetAtItemIndexPath:&v17];
  v11 = v7;
  v12 = v11;
  if (v10 == v11)
  {
    v14 = 0;
  }

  else
  {
    if (v11)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v15 = [v10 isContentEqualTo:v11];
      if (!v15)
      {
        v15 = [v12 isContentEqualTo:v10];
      }

      v14 = v15 != 2;
    }
  }

  return v14;
}

@end