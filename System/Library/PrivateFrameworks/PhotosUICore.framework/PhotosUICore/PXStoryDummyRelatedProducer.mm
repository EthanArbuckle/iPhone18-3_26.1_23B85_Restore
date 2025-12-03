@interface PXStoryDummyRelatedProducer
+ (id)_relatedResultForConfiguration:(id)configuration targetUpNextCount:(unint64_t)count;
- (PXStoryDummyRelatedProducer)initWithTargetUpNextCount:(unint64_t)count;
- (id)requestConfigurationsRelatedToConfiguration:(id)configuration withOptions:(unint64_t)options musicCurationParameters:(id)parameters resultHandler:(id)handler;
@end

@implementation PXStoryDummyRelatedProducer

- (id)requestConfigurationsRelatedToConfiguration:(id)configuration withOptions:(unint64_t)options musicCurationParameters:(id)parameters resultHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v10 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  workQueue = [(PXStoryDummyRelatedProducer *)self workQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __125__PXStoryDummyRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke;
  v18[3] = &unk_1E774BDB0;
  v12 = v10;
  v19 = v12;
  v20 = configurationCopy;
  selfCopy = self;
  v22 = handlerCopy;
  v13 = handlerCopy;
  v14 = configurationCopy;
  dispatch_async(workQueue, v18);

  v15 = v22;
  v16 = v12;

  return v12;
}

void __125__PXStoryDummyRelatedProducer_requestConfigurationsRelatedToConfiguration_withOptions_musicCurationParameters_resultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [PXStoryDummyRelatedProducer _relatedResultForConfiguration:*(a1 + 40) targetUpNextCount:*(*(a1 + 48) + 8)];
    (*(*(a1 + 56) + 16))();
  }
}

- (PXStoryDummyRelatedProducer)initWithTargetUpNextCount:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = PXStoryDummyRelatedProducer;
  v4 = [(PXStoryDummyRelatedProducer *)&v14 init];
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
  }

  return v5;
}

+ (id)_relatedResultForConfiguration:(id)configuration targetUpNextCount:(unint64_t)count
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = [MEMORY[0x1E69789A8] px:configuration deprecated:?appPhotoLibrary];
  librarySpecificFetchOptions = [v21 librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v7];

  [librarySpecificFetchOptions setFetchLimit:count];
  v8 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v9 = [v8 count];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [PXStoryRelatedLayoutGenerator isExpectedKeyItemAtIndex:i];
      v13 = [PXStoryConfiguration alloc];
      v14 = [v8 objectAtIndexedSubscript:i];
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

  v18 = [[PXStoryRelatedResult alloc] initWithStoryConfigurations:v10 debugInfo:@"Dummy Producer"];
  v19 = [[PXStoryProducerResult alloc] initWithObject:v18];

  return v19;
}

@end