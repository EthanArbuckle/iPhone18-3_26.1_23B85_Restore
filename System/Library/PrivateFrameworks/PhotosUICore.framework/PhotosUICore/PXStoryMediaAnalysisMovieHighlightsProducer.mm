@interface PXStoryMediaAnalysisMovieHighlightsProducer
- (PXStoryMediaAnalysisMovieHighlightsProducer)init;
- (PXStoryMediaAnalysisMovieHighlightsProducer)initWithStoryConfiguration:(id)configuration;
- (id)_requestMovieCurationForAssets:(id)assets completionHandler:(id)handler;
- (id)requestMovieHighlightsForAssets:(id)assets partialCollection:(id)collection options:(unint64_t)options resultHandler:(id)handler;
- (void)_requestMovieHighlightsForAssets:(id)assets partialCollection:(id)collection options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryMediaAnalysisMovieHighlightsProducer

- (id)_requestMovieCurationForAssets:(id)assets completionHandler:(id)handler
{
  v61 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  handlerCopy = handler;
  v8 = os_signpost_id_make_with_pointer(self->_log, self);
  v9 = self->_log;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PXStoryMovieHighlightsMediaAnalysisRequest", "", buf, 2u);
  }

  v11 = [assetsCopy copy];
  v12 = +[PXStorySettings sharedInstance];
  allowOnDemandVideoAnalysis = [v12 allowOnDemandVideoAnalysis];
  useBestHighlightTrim = [v12 useBestHighlightTrim];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!self->_didProcessConfiguration)
  {
    v46 = allowOnDemandVideoAnalysis;
    assetCollection = [(PXStoryConfiguration *)self->_storyConfiguration assetCollection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = assetCollection;

      if (!v17)
      {
LABEL_11:
        self->_didProcessConfiguration = 1;

        allowOnDemandVideoAnalysis = v46;
        goto LABEL_12;
      }

      assetCollection = [MEMORY[0x1E69C1510] getCuratedAssetPlaybackTimeRangesForMemory:v17];
      v18 = [assetCollection copy];
      customTimeRangeByAssetUUID = self->_customTimeRangeByAssetUUID;
      self->_customTimeRangeByAssetUUID = v18;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:
  v20 = self->_customTimeRangeByAssetUUID;
  if (v20 && [(NSDictionary *)v20 count])
  {
    v47 = allowOnDemandVideoAnalysis;
    v41 = useBestHighlightTrim;
    v43 = v8;
    v44 = handlerCopy;
    v45 = assetsCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v42 = v11;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v57;
      v25 = MEMORY[0x1E6960C98];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v57 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = self->_customTimeRangeByAssetUUID;
          uuid = [*(*(&v56 + 1) + 8 * i) uuid];
          v29 = [(NSDictionary *)v27 objectForKeyedSubscript:uuid];

          if (v29)
          {
            v54 = 0u;
            v55 = 0u;
            *buf = 0u;
            [v29 CMTimeRangeValue];
            v52[0] = *buf;
            v52[1] = v54;
            v52[2] = v55;
            v30 = v52;
          }

          else
          {
            v31 = v25[1];
            *buf = *v25;
            v54 = v31;
            v55 = v25[2];
            v30 = buf;
          }

          v32 = CMTimeRangeCopyAsDictionary(v30, 0);
          [v15 addObject:v32];
        }

        v23 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v23);
    }

    handlerCopy = v44;
    assetsCopy = v45;
    v11 = v42;
    v8 = v43;
    useBestHighlightTrim = v41;
    allowOnDemandVideoAnalysis = v47;
  }

  v33 = allowOnDemandVideoAnalysis == 0;
  v34 = 46;
  mediaAnalyzer = self->_mediaAnalyzer;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __96__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieCurationForAssets_completionHandler___block_invoke;
  v48[3] = &unk_1E7742FB8;
  if (!v33)
  {
    v34 = 47;
  }

  if (useBestHighlightTrim)
  {
    v36 = v34 | 0x10;
  }

  else
  {
    v36 = v34;
  }

  v48[4] = self;
  v49 = v11;
  v50 = handlerCopy;
  v51 = v8;
  v37 = handlerCopy;
  v38 = v11;
  v39 = [(PXMediaAnalyzer *)mediaAnalyzer requestAnalysisForAssets:v38 options:v36 contexts:v15 resultHandler:v48];

  return v39;
}

void __96__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieCurationForAssets_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryMovieHighlightsMediaAnalysisRequest", "", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    v8 = [PXStoryMediaAnalysisMovieHighlightCuration movieHighlightCurationsFromMediaAnalysisResults:v3];
    v9 = [v8 mutableCopy];
    if ([v8 count])
    {
      v10 = 0;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        v12 = [v11 defaultHighlight];

        if (!v12)
        {
          v13 = [*(a1 + 40) objectAtIndexedSubscript:v10];
          v14 = [PXStoryFallbackMovieHighlightCuration movieHighlightCurationForDisplayAsset:v13];
          [v9 setObject:v14 atIndexedSubscript:v10];

          v15 = [*(a1 + 40) objectAtIndexedSubscript:v10];
          v16 = [v15 uuid];
          [v7 addObject:v16];
        }

        ++v10;
      }

      while (v10 < [v8 count]);
    }

    v17 = [v9 copy];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = *(a1 + 40);
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          v24 = [PXStoryFallbackMovieHighlightCuration movieHighlightCurationForDisplayAsset:v23];
          [v9 addObject:v24];
          v25 = [v23 uuid];
          [v7 addObject:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v20);
    }

    v17 = [v9 copy];
    v3 = 0;
  }

  if ([v7 count])
  {
    v26 = PLStoryGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v7 count];
      v28 = [*(a1 + 40) count];
      v29 = [v7 componentsJoinedByString:@" "];
      *buf = 134218498;
      v41 = v27;
      v42 = 2048;
      v43 = v28;
      v44 = 2114;
      v45 = v29;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "PXStoryMediaAnalysisMovieHighlightsProducer: missing media analysis data for %lu assets out of %lu. Assets: %{public}@", buf, 0x20u);
    }
  }

  v30 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieCurationForAssets_completionHandler___block_invoke_270;
  block[3] = &unk_1E774C2F0;
  v31 = *(a1 + 48);
  v34 = v17;
  v35 = v31;
  v32 = v17;
  dispatch_async(v30, block);
}

- (void)_requestMovieHighlightsForAssets:(id)assets partialCollection:(id)collection options:(unint64_t)options resultHandler:(id)handler
{
  assetsCopy = assets;
  collectionCopy = collection;
  handlerCopy = handler;
  v12 = os_signpost_id_make_with_pointer(self->_log, self);
  v13 = self->_log;
  v14 = v13;
  v32 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PXStoryMovieHighlightsProduction", "", buf, 2u);
  }

  v15 = [assetsCopy count];
  batchSize = self->_batchSize;
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:batchSize];
  v18 = objc_alloc_init(MEMORY[0x1E696AE38]);
  v19 = objc_alloc_init(PXStoryMovieHighlightsConcreteMutableCollection);
  *buf = 0;
  v44 = buf;
  v45 = 0x2020000000;
  v46 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieHighlightsForAssets_partialCollection_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7742F90;
  selfCopy = self;
  aBlock[4] = self;
  v20 = v19;
  v38 = v20;
  v41 = buf;
  v42 = v12;
  spid = v12;
  v35 = handlerCopy;
  v40 = v35;
  v34 = v18;
  v39 = v34;
  v21 = _Block_copy(aBlock);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v23 = [assetsCopy objectAtIndex:{i, spid}];
      if (([v23 playbackStyle] - 3) <= 2)
      {
        ++*(v44 + 3);
        v24 = [collectionCopy movieHighlightsForDisplayAsset:v23];
        if (v24)
        {
          [(PXStoryMovieHighlightsConcreteMutableCollection *)v20 setMovieHighlightCuration:v24 forDisplayAsset:v23];
        }

        else
        {
          if ([v17 count] == batchSize)
          {
            v21[2](v21, v17);
            [v17 removeAllObjects];
          }

          [v17 addObject:v23];
        }
      }
    }
  }

  if ([v17 count])
  {
    v21[2](v21, v17);
  }

  else
  {
    v25 = [PXStoryProducerResult alloc];
    v26 = [(PXStoryMovieHighlightsConcreteMutableCollection *)v20 copy];
    v27 = [(PXStoryProducerResult *)v25 initWithObject:v26];

    (*(v35 + 2))(v35, v27);
    v28 = selfCopy->_log;
    v29 = v28;
    if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *v36 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v29, OS_SIGNPOST_INTERVAL_END, spida, "PXStoryMovieHighlightsProduction", "", v36, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __120__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieHighlightsForAssets_partialCollection_options_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __120__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieHighlightsForAssets_partialCollection_options_resultHandler___block_invoke_2;
  v13[3] = &unk_1E7742F68;
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v4;
  v6 = *(a1 + 72);
  v16 = *(a1 + 32);
  v18 = v6;
  v12 = *(a1 + 56);
  v7 = v12;
  v17 = v12;
  v8 = v4;
  v9 = [v5 _requestMovieCurationForAssets:v8 completionHandler:v13];
  [*(a1 + 48) setTotalUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount") + objc_msgSend(v3, "count")}];
  v10 = *(a1 + 48);
  v11 = [v3 count];

  [v10 addChild:v9 withPendingUnitCount:v11];
}

void __120__PXStoryMediaAnalysisMovieHighlightsProducer__requestMovieHighlightsForAssets_partialCollection_options_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setMovieHighlightCurations:a2 forDisplayAssets:*(a1 + 40)];
  v6 = [PXStoryProducerResult alloc];
  v7 = [*(a1 + 32) copy];
  v8 = [(PXStoryProducerResult *)v6 initWithObject:v7];

  if ([*(a1 + 32) count] != *(*(*(a1 + 64) + 8) + 24))
  {
    v9 = [(PXStoryProducerResult *)v8 flags:1];

    v8 = v9;
  }

  if (v5)
  {
    v10 = [(PXStoryProducerResult *)v8 error:v5];

    v8 = v10;
  }

  v11 = *(*(a1 + 48) + 24);
  v12 = v11;
  v13 = *(a1 + 72);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_EVENT, v13, "PXStoryMovieHighlightsBatchDelivery", "", buf, 2u);
  }

  (*(*(a1 + 56) + 16))();
  if ([*(a1 + 32) count] == *(*(*(a1 + 64) + 8) + 24))
  {
    v14 = *(*(a1 + 48) + 24);
    v15 = v14;
    v16 = *(a1 + 72);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PXStoryMovieHighlightsProduction", "", v17, 2u);
    }
  }
}

- (id)requestMovieHighlightsForAssets:(id)assets partialCollection:(id)collection options:(unint64_t)options resultHandler:(id)handler
{
  assetsCopy = assets;
  collectionCopy = collection;
  handlerCopy = handler;
  v13 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  workQueue = self->_workQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __119__PXStoryMediaAnalysisMovieHighlightsProducer_requestMovieHighlightsForAssets_partialCollection_options_resultHandler___block_invoke;
  v22[3] = &unk_1E7743080;
  v15 = v13;
  v23 = v15;
  selfCopy = self;
  v25 = assetsCopy;
  v26 = collectionCopy;
  v27 = handlerCopy;
  optionsCopy = options;
  v16 = handlerCopy;
  v17 = collectionCopy;
  v18 = assetsCopy;
  dispatch_async(workQueue, v22);
  v19 = v27;
  v20 = v15;

  return v15;
}

uint64_t __119__PXStoryMediaAnalysisMovieHighlightsProducer_requestMovieHighlightsForAssets_partialCollection_options_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  [*(a1 + 40) _requestMovieHighlightsForAssets:*(a1 + 48) partialCollection:*(a1 + 56) options:*(a1 + 72) resultHandler:*(a1 + 64)];
  v2 = *(a1 + 32);

  return [v2 resignCurrent];
}

- (PXStoryMediaAnalysisMovieHighlightsProducer)initWithStoryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(PXStoryMediaAnalysisMovieHighlightsProducer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storyConfiguration, configuration);
    v7->_didProcessConfiguration = 0;
    customTimeRangeByAssetUUID = v7->_customTimeRangeByAssetUUID;
    v7->_customTimeRangeByAssetUUID = 0;
  }

  return v7;
}

- (PXStoryMediaAnalysisMovieHighlightsProducer)init
{
  v16.receiver = self;
  v16.super_class = PXStoryMediaAnalysisMovieHighlightsProducer;
  v2 = [(PXStoryMediaAnalysisMovieHighlightsProducer *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXSystemMediaAnalyzer);
    mediaAnalyzer = v2->_mediaAnalyzer;
    v2->_mediaAnalyzer = v3;

    v2->_batchSize = 100;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("PXStoryMediaAnalysisMovieHighlightsProducer.Work", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = dispatch_queue_create("PXStoryMediaAnalysisMovieHighlightsProducer.Results", 0);
    results_queue = v2->_results_queue;
    v2->_results_queue = v8;

    v10 = *MEMORY[0x1E69BFF60];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = os_log_create(v10, [v12 UTF8String]);
    log = v2->_log;
    v2->_log = v13;
  }

  return v2;
}

@end