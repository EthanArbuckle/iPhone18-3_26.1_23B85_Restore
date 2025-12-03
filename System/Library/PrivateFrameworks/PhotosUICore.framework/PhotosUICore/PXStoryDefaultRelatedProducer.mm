@interface PXStoryDefaultRelatedProducer
+ (id)_relatedResultFromUpNextResult:(id)result error:(id)error;
+ (id)_requestForConfiguration:(id)configuration targetUpNextMemoryCount:(unint64_t)count musicCurationParameters:(id)parameters error:(id *)error;
- (PXStoryDefaultRelatedProducer)initWithTargetUpNextCount:(unint64_t)count;
- (id)requestConfigurationsRelatedToConfiguration:(id)configuration withOptions:(unint64_t)options musicCurationParameters:(id)parameters resultHandler:(id)handler;
@end

@implementation PXStoryDefaultRelatedProducer

- (id)requestConfigurationsRelatedToConfiguration:(id)configuration withOptions:(unint64_t)options musicCurationParameters:(id)parameters resultHandler:(id)handler
{
  configurationCopy = configuration;
  parametersCopy = parameters;
  handlerCopy = handler;
  v13 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  activeRequests = [(PXStoryDefaultRelatedProducer *)self activeRequests];
  workQueue = [(PXStoryDefaultRelatedProducer *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXStoryDefaultRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke;
  block[3] = &unk_1E7748800;
  v16 = v13;
  v25 = v16;
  v26 = configurationCopy;
  selfCopy = self;
  v28 = parametersCopy;
  v30 = handlerCopy;
  optionsCopy = options;
  v29 = activeRequests;
  v17 = handlerCopy;
  v18 = activeRequests;
  v19 = parametersCopy;
  v20 = configurationCopy;
  dispatch_async(workQueue, block);

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

- (PXStoryDefaultRelatedProducer)initWithTargetUpNextCount:(unint64_t)count
{
  v16.receiver = self;
  v16.super_class = PXStoryDefaultRelatedProducer;
  v4 = [(PXStoryDefaultRelatedProducer *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_targetUpNextCount = count;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeRequests = v5->_activeRequests;
    v5->_activeRequests = v13;
  }

  return v5;
}

+ (id)_relatedResultFromUpNextResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v7 = errorCopy;
  if (resultCopy)
  {
    v23 = errorCopy;
    memories = [resultCopy memories];
    v9 = [(PXStoryProducerResult *)memories count];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = [PXStoryRelatedLayoutGenerator isExpectedKeyItemAtIndex:i];
        v13 = [PXStoryConfiguration alloc];
        v14 = [(PXStoryProducerResult *)memories objectAtIndexedSubscript:i];
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
    debugInfo = [resultCopy debugInfo];
    v20 = [(PXStoryRelatedResult *)v18 initWithStoryConfigurations:v10 debugInfo:debugInfo];

    v21 = [[PXStoryProducerResult alloc] initWithObject:v20];
    v7 = v23;
  }

  else
  {
    memories = objc_alloc_init(PXStoryProducerResult);
    v21 = [(PXStoryProducerResult *)memories error:v7];
  }

  return v21;
}

+ (id)_requestForConfiguration:(id)configuration targetUpNextMemoryCount:(unint64_t)count musicCurationParameters:(id)parameters error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  parametersCopy = parameters;
  assetCollection = [configurationCopy assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    countCopy = count;
    v12 = assetCollection;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    parentConfiguration = [configurationCopy parentConfiguration];
    if (parentConfiguration)
    {
      v15 = parentConfiguration;
      do
      {
        assetCollection2 = [v15 assetCollection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          localIdentifier = [assetCollection2 localIdentifier];
          [v13 addObject:localIdentifier];
        }

        parentConfiguration2 = [v15 parentConfiguration];

        v15 = parentConfiguration2;
      }

      while (parentConfiguration2);
    }

    v19 = [[PXUpNextMemoriesGenerationRequest alloc] initWithRootMemory:v12 avoidMemoriesWithLocalIdentifiers:v13 targetUpNextMemoryCount:countCopy musicCurationParameters:parametersCopy];

    if (!error)
    {
      goto LABEL_13;
    }

LABEL_12:
    *error = 0;
    goto LABEL_13;
  }

  v20 = PLStoryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = assetCollection;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_INFO, "cannot produce related because asset collection isn't a PHMemory: %@", buf, 0xCu);
  }

  v19 = 0;
  if (error)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v19;
}

@end