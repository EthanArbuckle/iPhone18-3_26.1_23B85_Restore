@interface PXStoryAssetCollectionStyleProducer
- (PXStoryAssetCollectionStyleProducer)initWithAssetCollection:(id)a3;
- (id)requestStylesWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryAssetCollectionStyleProducer

- (id)requestStylesWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PXStoryAssetCollectionStyleProducer_requestStylesWithOptions_resultHandler___block_invoke;
  aBlock[3] = &unk_1E774C2F0;
  aBlock[4] = self;
  v7 = v6;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v4)
  {
    (*(v8 + 2))(v8);
    v12 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    v11 = [(PXStoryAssetCollectionStyleProducer *)self workQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__PXStoryAssetCollectionStyleProducer_requestStylesWithOptions_resultHandler___block_invoke_52;
    v14[3] = &unk_1E774C2F0;
    v12 = v10;
    v15 = v12;
    v16 = v9;
    dispatch_async(v11, v14);
  }

  return v12;
}

void __78__PXStoryAssetCollectionStyleProducer_requestStylesWithOptions_resultHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assetCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 storyColorGradeKind];
    if (!v4)
    {
      v5 = PLStoryGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Memory lacking storyColorGradeKind, setting to None: %@", buf, 0xCu);
      }

      v4 = 1;
    }

    v6 = [v3 storyTitleCategory];
    if (v6 == *MEMORY[0x1E69C0E10])
    {
      v7 = PLStoryGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "Memory lacking storyTitleCategory: %@", buf, 0xCu);
      }
    }

    v8 = [[PXStoryStyleConfiguration alloc] initWithOriginalColorGradeCategory:0 customColorGradeKind:v4 songResource:0 autoEditDecisionList:0 isCustomized:0];
  }

  else
  {
    v8 = objc_alloc_init(PXStoryStyleConfiguration);
  }

  v9 = *(a1 + 40);
  v10 = [PXStoryProducerResult alloc];
  v13 = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v12 = [(PXStoryProducerResult *)v10 initWithObject:v11];
  (*(v9 + 16))(v9, v12);
}

uint64_t __78__PXStoryAssetCollectionStyleProducer_requestStylesWithOptions_resultHandler___block_invoke_52(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (PXStoryAssetCollectionStyleProducer)initWithAssetCollection:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PXStoryAssetCollectionStyleProducer;
  v6 = [(PXStoryAssetCollectionStyleProducer *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, a3);
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

@end