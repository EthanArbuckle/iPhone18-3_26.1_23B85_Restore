@interface PXStoryMemoryAutoCurationProducer
+ (id)_optionsForAssets:(id)a3;
- (PXStoryMemoryAutoCurationProducer)init;
- (PXStoryMemoryAutoCurationProducer)initWithMemory:(id)a3;
- (id)requestCuratedAssetsWithOptions:(unint64_t)a3 targetOverallDurationInfo:(id *)a4 resultHandler:(id)a5;
- (id)requestCurationLengthsWithOptions:(unint64_t)a3 allAssets:(id)a4 curatedAssets:(id)a5 resultHandler:(id)a6;
@end

@implementation PXStoryMemoryAutoCurationProducer

- (id)requestCuratedAssetsWithOptions:(unint64_t)a3 targetOverallDurationInfo:(id *)a4 resultHandler:(id)a5
{
  v7 = a5;
  v8 = [(PXStoryMemoryAutoCurationProducer *)self memory];
  v9 = [MEMORY[0x1E696B098] valueWithBytes:a4 objCType:"{?=q{?={?=qiIq}{?=qiIq}{?=qiIq}}}"];
  v10 = [(NSCache *)self->_curationCache objectForKey:v9];
  if (v10)
  {
    v11 = [[PXStoryProducerResult alloc] initWithObject:v10];
    v7[2](v7, v11);

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__PXStoryMemoryAutoCurationProducer_requestCuratedAssetsWithOptions_targetOverallDurationInfo_resultHandler___block_invoke;
    v17[3] = &unk_1E7736C30;
    v13 = *&a4->var1.var1.var3;
    v24 = *&a4->var1.var1.var0;
    v25 = v13;
    v26 = *&a4->var1.var2.var1;
    v14 = *&a4->var1.var0.var1;
    v22 = *&a4->var0;
    v23 = v14;
    v18 = v8;
    v19 = self;
    v20 = v9;
    v21 = v7;
    v15 = _Block_copy(v17);
    dispatch_async(self->_workQueue, v15);
  }

  return v12;
}

void __109__PXStoryMemoryAutoCurationProducer_requestCuratedAssetsWithOptions_targetOverallDurationInfo_resultHandler___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 2)
  {
    time1 = *(a1 + 96);
    time2 = *(MEMORY[0x1E69C0DB0] + 24);
    if (CMTimeCompare(&time1, &time2))
    {
      v29 = *MEMORY[0x1E6978F00];
      time1 = *(a1 + 96);
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&time1)];
      v30[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    }

    else
    {
      v18 = PXStoryErrorCreateWithCodeDebugFormat(16, @"Must specify a valid preferredDuration with PFStoryOverallDurationKindCustom", v2, v3, v4, v5, v6, v7, v24);
      v9 = MEMORY[0x1E695E0F8];
      if (v18)
      {
        v15 = v18;
        v12 = 0;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = PHMemoryCurationLengthFromPFStoryOverallDurationKind(*(a1 + 64));
  v11 = *(a1 + 32);
  v25 = 0;
  v12 = [v11 fetchAssetsWithCurationOfLength:v10 options:v9 error:&v25];
  v13 = v25;
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (v14)
  {
    v15 = v13;
    v16 = PLStoryGetLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      if (v17)
      {
        LODWORD(time1.value) = 134218242;
        *(&time1.value + 4) = v10;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = v15;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Received error response when attempting to fetch assets with a curation length of: %lu. %@", &time1, 0x16u);
      }

      goto LABEL_22;
    }

    if (v17)
    {
      LODWORD(time1.value) = 134217984;
      *(&time1.value + 4) = v10;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Received nil response when attempting to fetch assets with a curation of length of: %lu", &time1, 0xCu);
    }
  }

  else
  {
    [*(*(a1 + 40) + 8) setObject:v12 forKey:*(a1 + 48)];
  }

  if ([v12 count])
  {
    v19 = [[PXStoryProducerResult alloc] initWithObject:v12];
    v15 = 0;
    goto LABEL_25;
  }

  v15 = 0;
LABEL_22:
  v20 = PLStoryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
    LODWORD(time1.value) = 138412802;
    *(&time1.value + 4) = v21;
    LOWORD(time1.flags) = 2112;
    *(&time1.flags + 2) = v15;
    HIWORD(time1.epoch) = 2112;
    v28 = v22;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "%@: curationOfLength returned error: %@ memory:%@", &time1, 0x20u);
  }

  v23 = [[PXStoryProducerResult alloc] initWithObject:0];
  v19 = [(PXStoryProducerResult *)v23 error:v15];

LABEL_25:
  (*(*(a1 + 56) + 16))();
}

- (id)requestCurationLengthsWithOptions:(unint64_t)a3 allAssets:(id)a4 curatedAssets:(id)a5 resultHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(PXStoryMemoryAutoCurationProducer *)self memory];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PXStoryMemoryAutoCurationProducer_requestCurationLengthsWithOptions_allAssets_curatedAssets_resultHandler___block_invoke;
  aBlock[3] = &unk_1E774BDB0;
  v29 = v12;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v12;
  v17 = _Block_copy(aBlock);
  v18 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  v19 = [(PXStoryMemoryAutoCurationProducer *)self workQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __109__PXStoryMemoryAutoCurationProducer_requestCurationLengthsWithOptions_allAssets_curatedAssets_resultHandler___block_invoke_2;
  v25[3] = &unk_1E774C2F0;
  v20 = v18;
  v26 = v20;
  v27 = v17;
  v21 = v17;
  dispatch_async(v19, v25);

  v22 = v27;
  v23 = v20;

  return v20;
}

void __109__PXStoryMemoryAutoCurationProducer_requestCurationLengthsWithOptions_allAssets_curatedAssets_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) photosGraphVersion];
  if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() > 0x300)
  {
    v2 = [PXStoryMemoryAutoCurationProducer _optionsForAssets:*(a1 + 40)];
    v3 = [PXStoryMemoryAutoCurationProducer _optionsForAssets:*(a1 + 48)];
    v8 = -[PXStoryCurationLengthInfo initWithAvailableLengths:defaultLength:]([PXStoryCurationLengthInfo alloc], "initWithAvailableLengths:defaultLength:", [*(a1 + 32) availableCurationLengthsWithOptions:v2], objc_msgSend(*(a1 + 32), "currentCurationLengthWithOptions:", v3));
  }

  else
  {
    v8 = [[PXStoryCurationLengthInfo alloc] initWithAvailableLengths:0 defaultLength:0];
  }

  v4 = *(a1 + 56);
  v5 = [[PXStoryProducerResult alloc] initWithObject:v8];
  v6 = [(PXStoryProducerResult *)v5 flags:0];
  v7 = [v6 error:0];
  (*(v4 + 16))(v4, v7);
}

uint64_t __109__PXStoryMemoryAutoCurationProducer_requestCurationLengthsWithOptions_allAssets_curatedAssets_resultHandler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (PXStoryMemoryAutoCurationProducer)initWithMemory:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PXStoryMemoryAutoCurationProducer;
  v6 = [(PXStoryMemoryAutoCurationProducer *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memory, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create(v10, v12);
    workQueue = v7->_workQueue;
    v7->_workQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    curationCache = v7->_curationCache;
    v7->_curationCache = v15;
  }

  return v7;
}

- (PXStoryMemoryAutoCurationProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryAutoCurationProducer.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXStoryMemoryAutoCurationProducer init]"}];

  abort();
}

+ (id)_optionsForAssets:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 countOfAssetsWithMediaType:1];
  v5 = [v3 countOfAssetsWithMediaType:2];

  v10[0] = *MEMORY[0x1E6978EF0];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v11[0] = v6;
  v10[1] = *MEMORY[0x1E6978EF8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

@end