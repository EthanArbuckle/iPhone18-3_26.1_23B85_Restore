@interface PXStoryPersistableRecipeAssetsProducer
- (PXStoryPersistableRecipeAssetsProducer)init;
- (PXStoryPersistableRecipeAssetsProducer)initWithPersistableRecipe:(id)a3;
- (id)requestAssetsWithOptions:(unint64_t)a3 storyQueue:(id)a4 resultHandler:(id)a5;
@end

@implementation PXStoryPersistableRecipeAssetsProducer

- (id)requestAssetsWithOptions:(unint64_t)a3 storyQueue:(id)a4 resultHandler:(id)a5
{
  v5 = a3;
  v8 = a5;
  v9 = [(PXStoryPersistableRecipeAssetsProducer *)self persistableRecipe];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PXStoryPersistableRecipeAssetsProducer_requestAssetsWithOptions_storyQueue_resultHandler___block_invoke;
  aBlock[3] = &unk_1E773DAC8;
  v10 = v9;
  v25 = a2;
  v22 = v10;
  v23 = self;
  v11 = v8;
  v24 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v5)
  {
    (*(v12 + 2))(v12);
    v16 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    v15 = [(PXStoryPersistableRecipeAssetsProducer *)self workQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__PXStoryPersistableRecipeAssetsProducer_requestAssetsWithOptions_storyQueue_resultHandler___block_invoke_11;
    v18[3] = &unk_1E774C2F0;
    v16 = v14;
    v19 = v16;
    v20 = v13;
    dispatch_async(v15, v18);
  }

  return v16;
}

void __92__PXStoryPersistableRecipeAssetsProducer_requestAssetsWithOptions_storyQueue_resultHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [PFStoryRecipe_PXStoryExtension displayAssetsInRecipe:v2 withCategory:1 error:&v12];
  v4 = v12;
  if (!v3)
  {
    PXAssertGetLog();
  }

  v5 = [PXStaticDisplayAssetsDataSource alloc];
  v13 = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v7 = [(PXStaticDisplayAssetsDataSource *)v5 initWithAssetCollectionBySection:0 assetsBySection:0 curatedAssetsBySection:v6 keyAssetsBySection:0 sectionContent:1];

  v8 = [[PXPassthroughAssetsDataSourceManager alloc] initWithDataSource:v7];
  v9 = *(a1 + 48);
  v10 = [[PXStoryProducerResult alloc] initWithObject:v8];
  v11 = [(PXStoryProducerResult *)v10 error:v4];
  (*(v9 + 16))(v9, v11);
}

uint64_t __92__PXStoryPersistableRecipeAssetsProducer_requestAssetsWithOptions_storyQueue_resultHandler___block_invoke_11(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (PXStoryPersistableRecipeAssetsProducer)initWithPersistableRecipe:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PXStoryPersistableRecipeAssetsProducer;
  v6 = [(PXStoryPersistableRecipeAssetsProducer *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistableRecipe, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create(v10, v12);
    workQueue = v7->_workQueue;
    v7->_workQueue = v13;
  }

  return v7;
}

- (PXStoryPersistableRecipeAssetsProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeAssetsProducer.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXStoryPersistableRecipeAssetsProducer init]"}];

  abort();
}

@end