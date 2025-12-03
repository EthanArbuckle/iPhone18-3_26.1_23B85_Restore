@interface PXStoryVisionDetailedSaliencyProducer
+ (id)effectiveSaliencyAreasFromTiledVisionSaliencyAreas:(id)areas;
- (PXStoryVisionDetailedSaliencyProducer)init;
- (PXStoryVisionDetailedSaliencyProducer)initWithMediaProvider:(id)provider;
- (id)requestDetailedSaliencyForDisplayAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler;
- (void)_requestDetailedSaliencyForDisplayAssets:(id)assets options:(unint64_t)options progress:(id)progress resultHandler:(id)handler;
- (void)requestWorkingImageForDisplayAsset:(id)asset resultHandler:(id)handler;
@end

@implementation PXStoryVisionDetailedSaliencyProducer

- (id)requestDetailedSaliencyForDisplayAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler
{
  assetsCopy = assets;
  handlerCopy = handler;
  v10 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  objc_initWeak(&location, self);
  workQueue = [(PXStoryVisionDetailedSaliencyProducer *)self workQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__PXStoryVisionDetailedSaliencyProducer_requestDetailedSaliencyForDisplayAssets_options_resultHandler___block_invoke;
  v18[3] = &unk_1E773D548;
  v12 = v10;
  v19 = v12;
  objc_copyWeak(v22, &location);
  v22[1] = options;
  v20 = assetsCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = assetsCopy;
  dispatch_async(workQueue, v18);

  v15 = v21;
  v16 = v12;

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);

  return v16;
}

void __103__PXStoryVisionDetailedSaliencyProducer_requestDetailedSaliencyForDisplayAssets_options_resultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _requestDetailedSaliencyForDisplayAssets:*(a1 + 40) options:*(a1 + 64) progress:*(a1 + 32) resultHandler:*(a1 + 48)];
  }
}

- (void)requestWorkingImageForDisplayAsset:(id)asset resultHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  v8 = +[PXStoryMultipartPanoramaSettings sharedInstance];
  [v8 maximumTileSide];
  v10 = v9;

  v11 = v10 * ([(PXStoryVisionDetailedSaliencyProducer *)self overlappingTileCount]+ 1) * 0.5;
  v13 = objc_alloc_init(off_1E7721750);
  [v13 setSynchronous:1];
  [v13 setDeliveryMode:1];
  [v13 setNetworkAccessAllowed:1];
  mediaProvider = [(PXStoryVisionDetailedSaliencyProducer *)self mediaProvider];
  [mediaProvider requestCGImageForAsset:assetCopy targetSize:0 contentMode:v13 options:handlerCopy resultHandler:{v11, v11}];
}

- (void)_requestDetailedSaliencyForDisplayAssets:(id)assets options:(unint64_t)options progress:(id)progress resultHandler:(id)handler
{
  v74 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  progressCopy = progress;
  handlerCopy = handler;
  v12 = [(PXStoryVisionDetailedSaliencyProducer *)self log];
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PXStoryDetailedSaliency", "Context=%{signpost.telemetry:string2}lu vision-based", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__93289;
  v72 = __Block_byref_object_dispose__93290;
  v73 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7737648;
  aBlock[4] = &buf;
  v37 = _Block_copy(aBlock);
  v16 = objc_alloc_init(PXStoryConcreteMutableSaliencyDataSource);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_158;
  v58[3] = &unk_1E7737670;
  optionsCopy = options;
  v17 = v15;
  v59 = v17;
  v64 = v13;
  selfCopy = self;
  v18 = v16;
  v60 = v18;
  p_buf = &buf;
  v36 = handlerCopy;
  v61 = v36;
  v38 = _Block_copy(v58);
  if (([progressCopy isCancelled] & 1) == 0)
  {
    v19 = [assetsCopy count];
    v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if (v19 >= 1)
    {
      for (i = 0; i != v19; ++i)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = [assetsCopy objectAtIndexedSubscript:i];
        if ([v23 mediaType] == 1 && (objc_msgSend(v23, "mediaSubtypes") & 1) != 0)
        {
          [v20 addIndex:i];
        }

        objc_autoreleasePoolPop(v22);
      }
    }

    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v24 = [v20 count];
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v56[3] = v25;
    v26 = +[PXStoryMultipartPanoramaSettings sharedInstance];
    [v26 productionSimulatedDelay];
    v28 = v27;
    [v26 productionReportsTimeInterval];
    v30 = v29;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_165;
    v40[3] = &unk_1E7737710;
    v41 = progressCopy;
    v48 = v57;
    v49 = v56;
    v50 = v30;
    v31 = v38;
    v46 = v31;
    v51 = v24;
    v42 = assetsCopy;
    v32 = v17;
    v52 = v13;
    selfCopy2 = self;
    v43 = v32;
    selfCopy3 = self;
    v54 = a2;
    v47 = v37;
    v45 = v18;
    v55 = v28;
    [v20 enumerateIndexesUsingBlock:v40];
    v31[2](v31, 1.0);
    v33 = v32;
    v34 = v33;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v67 = 134217984;
      selfCopy4 = self;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v34, OS_SIGNPOST_INTERVAL_END, v13, "PXStoryDetailedSaliency", "Context=%{signpost.telemetry:string2}lu ", v67, 0xCu);
    }

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(v57, 8);
  }

  _Block_object_dispose(&buf, 8);
}

void __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Detailed saliency error: %@", &v9, 0xCu);
  }
}

void __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_158(uint64_t a1, float a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 >= 1.0 || (*(a1 + 64) & 6) == 0)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v7 = *(a1 + 80);
      *buf = 134218240;
      v21 = v7;
      v22 = 2048;
      v23 = a2;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_EVENT, v6, "PXStoryDetailedSaliencyResult", "Context=%{signpost.telemetry:string2}lu completed:%0.2f", buf, 0x16u);
    }

    v8 = [PXStoryProducerResult alloc];
    v9 = [*(a1 + 40) copy];
    v10 = [(PXStoryProducerResult *)v8 initWithObject:v9];
    *&v11 = a2;
    v12 = [(PXStoryProducerResult *)v10 fractionCompleted:v11];

    if ([*(*(*(a1 + 56) + 8) + 40) count])
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v18 = *MEMORY[0x1E696A750];
      v19 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v16 = [v13 errorWithDomain:@"PXStoryErrorDomain" code:25 userInfo:v15];
      v17 = [v12 error:v16];

      v12 = v17;
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_165(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isCancelled])
  {
    *a3 = 1;
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (*(*(*(a1 + 88) + 8) + 24) >= 1)
    {
      v7 = *(*(a1 + 96) + 8);
      if (v6 - *(v7 + 24) >= *(a1 + 104))
      {
        *(v7 + 24) = v6;
        (*(*(a1 + 72) + 16))(*(*(*(a1 + 88) + 8) + 24) / *(a1 + 112));
      }
    }

    v8 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    v9 = *(a1 + 48);
    v10 = v9;
    v11 = *(a1 + 120);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(a1 + 128);
      *buf = 134218240;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PXStoryDetailedAssetSaliency", "Context=%{signpost.telemetry:string2}lu index:%li", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v39 = 0;
    v13 = *(a1 + 48);
    v14 = v13;
    v15 = *(a1 + 120);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = *(a1 + 128);
      *v36 = 134217984;
      *&v36[4] = v16;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXStoryDetailedSaliencyAssetImage", "Context=%{signpost.telemetry:string2}lu ", v36, 0xCu);
    }

    v17 = *(a1 + 56);
    aBlock[8] = MEMORY[0x1E69E9820];
    aBlock[9] = 3221225472;
    aBlock[10] = __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_166;
    aBlock[11] = &unk_1E7737698;
    v18 = *(a1 + 136);
    v33 = buf;
    v34 = v18;
    aBlock[12] = v17;
    v30 = *(a1 + 48);
    v35 = *(a1 + 120);
    v32 = *(a1 + 80);
    v31 = v8;
    v27 = v31;
    [v17 requestWorkingImageForDisplayAsset:? resultHandler:?];
    if (*(*&buf[8] + 24))
    {
      v19 = objc_alloc(MEMORY[0x1E69845B8]);
      v20 = [v19 initWithCGImage:*(*&buf[8] + 24) options:MEMORY[0x1E695E0F8]];
      v21 = [MEMORY[0x1E6984608] defaultANEDevice];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [MEMORY[0x1E6984608] defaultDevice];
      }

      v24 = v23;

      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_179;
      aBlock[3] = &unk_1E77376E8;
      aBlock[4] = v24;
      aBlock[5] = v20;
      aBlock[7] = *(a1 + 80);
      aBlock[6] = v25;
      _Block_copy(aBlock);
      v26 = *(off_1E77221F8 + 1);
      *v36 = *off_1E77221F8;
      v37 = v26;
      [*(a1 + 56) overlappingTileCount];
      CGImageGetWidth(*(*&buf[8] + 24));
      CGImageGetHeight(*(*&buf[8] + 24));
      PXSizeValueForAxis();
    }

    if (*(a1 + 144) > 0.0)
    {
      [MEMORY[0x1E696AF00] sleepForTimeInterval:?];
    }

    ++*(*(*(a1 + 88) + 8) + 24);

    _Block_object_dispose(buf, 8);
  }

  objc_autoreleasePoolPop(context);
}

void __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_166(uint64_t a1, CGImage *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"PXStoryVisionDetailedSaliencyProducer.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"image == nil"}];
  }

  v7 = *(a1 + 40);
  v8 = v7;
  v9 = *(a1 + 80);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 88);
    *buf = 134218496;
    v21 = v10;
    v22 = 2048;
    Width = CGImageGetWidth(a2);
    v24 = 2048;
    Height = CGImageGetHeight(a2);
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryDetailedSaliencyAssetImage", "Context=%{signpost.telemetry:string2}lu image:%lix%li", buf, 0x20u);
  }

  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = CGImageRetain(a2);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v18 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(25, v12, @"failed to obtain image for %@", v13, v14, v15, v16, v17, *(a1 + 48));
    (*(v11 + 16))(v11, v18);
  }
}

void __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_179(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(MEMORY[0x1E6984568]);
  [v10 setProcessingDevice:*(a1 + 32)];
  [v10 setRegionOfInterest:{a2, a3, a4, a5}];
  v11 = objc_alloc_init(MEMORY[0x1E6984540]);
  [v11 setProcessingDevice:*(a1 + 32)];
  [v11 setRegionOfInterest:{a2, a3, a4, a5}];
  v12 = *(a1 + 40);
  v35[0] = v10;
  v35[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v34 = 0;
  v14 = [v12 performRequests:v13 error:&v34];
  v15 = v34;

  if (v14)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_2;
    aBlock[3] = &unk_1E77376C0;
    v30 = a2;
    v31 = a3;
    v32 = a4;
    v33 = a5;
    v29 = *(a1 + 48);
    v21 = _Block_copy(aBlock);
    v22 = [v10 results];
    v21[2](v21, v22, 1);

    v23 = [v11 results];
    v21[2](v21, v23, 2);

    v24 = v29;
  }

  else
  {
    v25 = *(a1 + 56);
    v26 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(25, v15, @"failed perform Vision saliency requests", v16, v17, v18, v19, v20, v27);
    (*(v25 + 16))(v25, v26);
    v24 = v15;
    v15 = v26;
  }
}

void __113__PXStoryVisionDetailedSaliencyProducer__requestDetailedSaliencyForDisplayAssets_options_progress_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  memset(v3, 0, sizeof(v3));
  if ([v2 countByEnumeratingWithState:v3 objects:v4 count:16])
  {
    [**(&v3[0] + 1) narrowedBoundingBox];
    PXRectDenormalize();
  }
}

- (PXStoryVisionDetailedSaliencyProducer)initWithMediaProvider:(id)provider
{
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = PXStoryVisionDetailedSaliencyProducer;
  v6 = [(PXStoryVisionDetailedSaliencyProducer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProvider, provider);
    v8 = *MEMORY[0x1E69BFF60];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = os_log_create(v8, [v10 UTF8String]);
    log = v7->_log;
    v7->_log = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);
    v18 = dispatch_queue_create(uTF8String, v17);
    workQueue = v7->_workQueue;
    v7->_workQueue = v18;

    v20 = +[PXStoryMultipartPanoramaSettings sharedInstance];
    v7->_overlappingTileCount = [v20 overlappingTileCount];
  }

  return v7;
}

- (PXStoryVisionDetailedSaliencyProducer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryVisionDetailedSaliencyProducer.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXStoryVisionDetailedSaliencyProducer init]"}];

  abort();
}

+ (id)effectiveSaliencyAreasFromTiledVisionSaliencyAreas:(id)areas
{
  areasCopy = areas;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PXStoryVisionDetailedSaliencyProducer_effectiveSaliencyAreasFromTiledVisionSaliencyAreas___block_invoke_2;
  aBlock[3] = &unk_1E7737758;
  v65 = &__block_literal_global_93356;
  v59 = v4;
  v64 = v59;
  v6 = _Block_copy(aBlock);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __92__PXStoryVisionDetailedSaliencyProducer_effectiveSaliencyAreasFromTiledVisionSaliencyAreas___block_invoke_3;
  v60[3] = &unk_1E7737758;
  v62 = &__block_literal_global_93356;
  v58 = v5;
  v61 = v58;
  v7 = _Block_copy(v60);
  v8 = [areasCopy count];
  v9 = +[PXStoryMultipartPanoramaSettings sharedInstance];
  [v9 tileOverlapThreshold];

  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = [areasCopy objectAtIndexedSubscript:v10];
      v12 = ++v10;
      if (v10 < v8)
      {
        do
        {
          v13 = [areasCopy objectAtIndexedSubscript:v12];
          type = [v11 type];
          if (type == [v13 type] && (objc_msgSend(v11, "sourceRegionOfInterest"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, objc_msgSend(v13, "sourceRegionOfInterest"), v71.origin.x = v23, v71.origin.y = v24, v71.size.width = v25, v71.size.height = v26, v67.origin.x = v16, v67.origin.y = v18, v67.size.width = v20, v67.size.height = v22, CGRectIntersectsRect(v67, v71)) || (v27 = objc_msgSend(v11, "type"), v27 != objc_msgSend(v13, "type")) && (objc_msgSend(v11, "sourceRegionOfInterest"), v29 = v28, v31 = v30, v33 = v32, v35 = v34, objc_msgSend(v13, "sourceRegionOfInterest"), v72.origin.x = v36, v72.origin.y = v37, v72.size.width = v38, v72.size.height = v39, v68.origin.x = v29, v68.origin.y = v31, v68.size.width = v33, v68.size.height = v35, CGRectEqualToRect(v68, v72)))
          {
            [v11 contentsRect];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
            [v13 contentsRect];
            v49 = v48;
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v69.origin.x = v41;
            v69.origin.y = v43;
            v69.size.width = v45;
            v69.size.height = v47;
            v73.origin.x = v49;
            v73.origin.y = v51;
            v73.size.width = v53;
            v73.size.height = v55;
            if (CGRectIntersectsRect(v69, v73))
            {
              v70.origin.x = v41;
              v70.origin.y = v43;
              v70.size.width = v45;
              v70.size.height = v47;
              v74.origin.x = v49;
              v74.origin.y = v51;
              v74.size.width = v53;
              v74.size.height = v55;
              CGRectIntersection(v70, v74);
              PXSizeGetArea();
            }
          }

          ++v12;
        }

        while (v8 != v12);
      }
    }

    while (v10 != v8);
  }

  v56 = [v59 arrayByAddingObjectsFromArray:v58];

  return v56;
}

void __92__PXStoryVisionDetailedSaliencyProducer_effectiveSaliencyAreasFromTiledVisionSaliencyAreas___block_invoke(double x, double y, double width, double height, float a5, uint64_t a6, void *a7)
{
  v27 = a7;
  v11 = [v27 count];
  if (v11 - 1 >= 0)
  {
    v12 = v11;
    v13 = v27;
    do
    {
      v14 = [v13 objectAtIndexedSubscript:--v12];
      [v14 contentsRect];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v29.origin.x = v16;
      v29.origin.y = v18;
      v29.size.width = v20;
      v29.size.height = v22;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      if (CGRectIntersectsRect(v29, v32))
      {
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v33.origin.x = v16;
        v33.origin.y = v18;
        v33.size.width = v20;
        v33.size.height = v22;
        v31 = CGRectUnion(v30, v33);
        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
        [v27 removeObjectAtIndex:v12];
      }

      v13 = v27;
    }

    while (v12 > 0);
  }

  v23 = [PXStoryConcreteSaliencyArea alloc];
  *&v24 = a5;
  v25 = [(PXStoryConcreteSaliencyArea *)v23 initWithContentsRect:x confidence:y, width, height, v24];
  [v27 addObject:v25];
}

@end