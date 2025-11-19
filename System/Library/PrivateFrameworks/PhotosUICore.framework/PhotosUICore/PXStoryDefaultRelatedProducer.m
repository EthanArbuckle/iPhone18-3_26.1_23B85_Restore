@interface PXStoryDefaultRelatedProducer
+ (id)_relatedResultFromUpNextResult:(id)a3 error:(id)a4;
+ (id)_requestForConfiguration:(id)a3 targetUpNextMemoryCount:(unint64_t)a4 musicCurationParameters:(id)a5 error:(id *)a6;
- (PXStoryDefaultRelatedProducer)initWithTargetUpNextCount:(unint64_t)a3;
- (id)requestConfigurationsRelatedToConfiguration:(id)a3 withOptions:(unint64_t)a4 musicCurationParameters:(id)a5 resultHandler:(id)a6;
@end

@implementation PXStoryDefaultRelatedProducer

- (id)requestConfigurationsRelatedToConfiguration:(id)a3 withOptions:(unint64_t)a4 musicCurationParameters:(id)a5 resultHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  v14 = [(PXStoryDefaultRelatedProducer *)self activeRequests];
  v15 = [(PXStoryDefaultRelatedProducer *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXStoryDefaultRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke;
  block[3] = &unk_1E7748800;
  v16 = v13;
  v25 = v16;
  v26 = v10;
  v27 = self;
  v28 = v11;
  v30 = v12;
  v31 = a4;
  v29 = v14;
  v17 = v12;
  v18 = v14;
  v19 = v11;
  v20 = v10;
  dispatch_async(v15, block);

  v21 = v30;
  v22 = v16;

  return v16;
}

void __127__PXStoryDefaultRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 48) + 8);
    v4 = *(a1 + 56);
    v16 = 0;
    v5 = [PXStoryDefaultRelatedProducer _requestForConfiguration:v2 targetUpNextMemoryCount:v3 musicCurationParameters:v4 error:&v16];
    v6 = v16;
    if (v5)
    {
      if ((*(a1 + 80) & 8) != 0)
      {
        [v5 setWantsVerboseDebugInfo:1];
      }

      [*(a1 + 64) addObject:v5];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __127__PXStoryDefaultRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke_2;
      v11[3] = &unk_1E7736D00;
      v15 = v7;
      v14 = *(a1 + 72);
      v12 = *(a1 + 64);
      v13 = v5;
      [v13 startGenerationWithCompletionHandler:v11];

      v8 = v14;
    }

    else
    {
      v9 = *(a1 + 72);
      v8 = objc_alloc_init(PXStoryProducerResult);
      v10 = [(PXStoryProducerResult *)v8 error:v6];
      (*(v9 + 16))(v9, v10);
    }
  }
}

void __127__PXStoryDefaultRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [PXStoryDefaultRelatedProducer _relatedResultFromUpNextResult:a2 error:a3];
  v5 = PLStoryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6 - *(a1 + 56);
    v8 = 134218242;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "Produced related in %0.3f seconds: %@", &v8, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) removeObject:*(a1 + 40)];
}

- (PXStoryDefaultRelatedProducer)initWithTargetUpNextCount:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = PXStoryDefaultRelatedProducer;
  v4 = [(PXStoryDefaultRelatedProducer *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_targetUpNextCount = a3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create(v8, v10);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeRequests = v5->_activeRequests;
    v5->_activeRequests = v13;
  }

  return v5;
}

+ (id)_relatedResultFromUpNextResult:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v23 = v6;
    v8 = [v5 memories];
    v9 = [(PXStoryProducerResult *)v8 count];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = [PXStoryRelatedLayoutGenerator isExpectedKeyItemAtIndex:i];
        v13 = [PXStoryConfiguration alloc];
        v14 = [(PXStoryProducerResult *)v8 objectAtIndexedSubscript:i];
        v15 = [(PXStoryConfiguration *)v13 initWithAssetCollection:v14];

        [(PXStoryConfiguration *)v15 setLaunchType:@"UpNext"];
        if (v12)
        {
          v16 = 4;
        }

        else
        {
          v16 = 8;
        }

        v17 = [(PXStoryConfiguration *)v15 copyWithAdditionalOptions:v16];

        [v10 addObject:v17];
      }
    }

    v18 = [PXStoryRelatedResult alloc];
    v19 = [v5 debugInfo];
    v20 = [(PXStoryRelatedResult *)v18 initWithStoryConfigurations:v10 debugInfo:v19];

    v21 = [[PXStoryProducerResult alloc] initWithObject:v20];
    v7 = v23;
  }

  else
  {
    v8 = objc_alloc_init(PXStoryProducerResult);
    v21 = [(PXStoryProducerResult *)v8 error:v7];
  }

  return v21;
}

+ (id)_requestForConfiguration:(id)a3 targetUpNextMemoryCount:(unint64_t)a4 musicCurationParameters:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [v9 assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = a4;
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = [v9 parentConfiguration];
    if (v14)
    {
      v15 = v14;
      do
      {
        v16 = [v15 assetCollection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 localIdentifier];
          [v13 addObject:v17];
        }

        v18 = [v15 parentConfiguration];

        v15 = v18;
      }

      while (v18);
    }

    v19 = [[PXUpNextMemoriesGenerationRequest alloc] initWithRootMemory:v12 avoidMemoriesWithLocalIdentifiers:v13 targetUpNextMemoryCount:v22 musicCurationParameters:v10];

    if (!a6)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a6 = 0;
    goto LABEL_13;
  }

  v20 = PLStoryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_INFO, "cannot produce related because asset collection isn't a PHMemory: %@", buf, 0xCu);
  }

  v19 = 0;
  if (a6)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v19;
}

@end