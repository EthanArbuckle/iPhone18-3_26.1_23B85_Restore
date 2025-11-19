@interface PXStoryConcreteTimelineProducer
+ (OS_dispatch_queue)workQueue;
- (PXStoryConcreteTimelineProducer)init;
- (id)requestTimelineWithConfiguration:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5;
@end

@implementation PXStoryConcreteTimelineProducer

- (id)requestTimelineWithConfiguration:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v8 = a5;
  if ((a4 & 5) == 5)
  {
    PXAssertGetLog();
  }

  v9 = [[PXStoryConcreteTimelineParser alloc] initWithConfiguration:v40];
  v10 = [(PXStoryConcreteTimelineProducer *)self log];
  v11 = os_signpost_id_make_with_pointer(v10, self);
  *v57 = 0;
  v58 = v57;
  v59 = 0x2020000000;
  v60 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PXStoryConcreteTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7742D10;
  v12 = v9;
  v50 = v12;
  v13 = v10;
  v51 = v13;
  v54 = v11;
  v38 = v8;
  v52 = v38;
  v53 = v57;
  v14 = _Block_copy(aBlock);
  v15 = v13;
  v16 = v15;
  v17 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v18 = PXStoryProducerRequestOptionsDescription(a4);
    *buf = 138543362;
    v56 = v18;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "StoryTimelineTotalProduction", "Options=%{public}@", buf, 0xCu);
  }

  if ((a4 & 5) != 4)
  {
    if ((a4 & 2) != 0)
    {
      v19 = [v40 rangeOfPrioritizedDisplayAssetResources];
      if (v20)
      {
        [(PXStoryConcreteTimelineParser *)v12 setPreferredInitialDisplayAssetResourceIndex:v19];
      }

      v21 = +[PXStoryConcreteTimelineSettings sharedInstance];
      [v21 rotationInitialProductionTimeLimit];
      [(PXStoryConcreteTimelineParser *)v12 setParseTimeLimit:?];
      -[PXStoryConcreteTimelineParser setParseCountLimit:](v12, "setParseCountLimit:", [v21 rotationInitialProductionCountLimit]);
    }

    else
    {
      [(PXStoryConcreteTimelineProducer *)self initialProductionTimeLimit];
      [(PXStoryConcreteTimelineParser *)v12 setParseTimeLimit:?];
      [(PXStoryConcreteTimelineParser *)v12 setParseCountLimit:[(PXStoryConcreteTimelineProducer *)self initialProductionCountLimit]];
    }

    v22 = v16;
    v23 = v22;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v11, "StoryTimelineInitialProduction", "", buf, 2u);
    }

    v14[2](v14);
    v24 = v23;
    v25 = v24;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v25, OS_SIGNPOST_INTERVAL_END, v11, "StoryTimelineInitialProduction", "", buf, 2u);
    }
  }

  if ([(PXStoryConcreteTimelineParser *)v12 isAtEnd]&& (v58[24] & 1) != 0)
  {
    v26 = v16;
    v27 = v26;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_END, v11, "StoryTimelineTotalProduction", "", buf, 2u);
    }

    v28 = 0;
  }

  else
  {
    v29 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    if ((a4 & 4) != 0)
    {
      [(PXStoryConcreteTimelineParser *)v12 setParseTimeLimit:0.0];
      v30 = 0;
    }

    else
    {
      [(PXStoryConcreteTimelineProducer *)self subsequentProductionTimeLimit];
      [(PXStoryConcreteTimelineParser *)v12 setParseTimeLimit:?];
      v30 = [(PXStoryConcreteTimelineProducer *)self subsequentProductionCountLimit];
    }

    [(PXStoryConcreteTimelineParser *)v12 setParseCountLimit:v30];
    [(PXStoryConcreteTimelineProducer *)self subsequentProductionSimulatedDelay];
    v32 = v31;
    v33 = [v40 loadingCoordinator];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = PXStoryFallbackLoadingCoordinator();
    }

    v27 = v35;

    v36 = [objc_opt_class() workQueue];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __90__PXStoryConcreteTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke_4;
    v41[3] = &unk_1E7742D38;
    v42 = v16;
    v47 = v11;
    v28 = v29;
    v43 = v28;
    v44 = v12;
    v46 = v57;
    v48 = v32;
    v45 = v14;
    [v27 dispatchTimelineWorkAsyncOnQueue:v36 block:v41];
  }

  _Block_object_dispose(v57, 8);

  return v28;
}

void __90__PXStoryConcreteTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parseNextBestTimeline];
  v3 = [*(a1 + 32) isAtEnd] ^ 1;
  v4 = *(a1 + 40);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StoryTimelineResultDelivery", "", buf, 2u);
  }

  v7 = *(a1 + 48);
  v8 = [[PXStoryProducerResult alloc] initWithObject:v2];
  v9 = [(PXStoryProducerResult *)v8 flags:v3];
  (*(v7 + 16))(v7, v9);

  v10 = *(a1 + 40);
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v12, "StoryTimelineResultDelivery", "", v13, 2u);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

void __90__PXStoryConcreteTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "StoryTimelineSubsequentProduction", "", &v13, 2u);
  }

  if (([*(a1 + 40) isCancelled] & 1) == 0)
  {
    do
    {
      if ([*(a1 + 48) isAtEnd] && (*(*(*(a1 + 64) + 8) + 24) & 1) != 0)
      {
        break;
      }

      v5 = objc_autoreleasePoolPush();
      [MEMORY[0x1E696AF00] sleepForTimeInterval:*(a1 + 80)];
      (*(*(a1 + 56) + 16))();
      objc_autoreleasePoolPop(v5);
    }

    while (![*(a1 + 40) isCancelled]);
  }

  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 72);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 40);
    v13 = 138412290;
    v14 = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "StoryTimelineSubsequentProduction", "progress:%@", &v13, 0xCu);
  }

  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v12, "StoryTimelineTotalProduction", "", &v13, 2u);
  }
}

- (PXStoryConcreteTimelineProducer)init
{
  v11.receiver = self;
  v11.super_class = PXStoryConcreteTimelineProducer;
  v2 = [(PXStoryConcreteTimelineProducer *)&v11 init];
  if (v2)
  {
    v3 = +[PXStoryConcreteTimelineSettings sharedInstance];
    v2->_initialProductionCountLimit = [v3 initialProductionCountLimit];
    [v3 initialProductionTimeLimit];
    v2->_initialProductionTimeLimit = v4;
    [v3 subsequentProductionTimeLimit];
    v2->_subsequentProductionTimeLimit = v5;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = os_log_create(*MEMORY[0x1E69BFF60], [v7 UTF8String]);
    log = v2->_log;
    v2->_log = v8;
  }

  return v2;
}

+ (OS_dispatch_queue)workQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PXStoryConcreteTimelineProducer_workQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (workQueue_onceToken != -1)
  {
    dispatch_once(&workQueue_onceToken, block);
  }

  v2 = workQueue_workQueue;

  return v2;
}

void __44__PXStoryConcreteTimelineProducer_workQueue__block_invoke(uint64_t a1)
{
  v7 = NSStringFromClass(*(a1 + 32));
  v1 = v7;
  v2 = [v7 UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create(v2, v4);
  v6 = workQueue_workQueue;
  workQueue_workQueue = v5;
}

@end