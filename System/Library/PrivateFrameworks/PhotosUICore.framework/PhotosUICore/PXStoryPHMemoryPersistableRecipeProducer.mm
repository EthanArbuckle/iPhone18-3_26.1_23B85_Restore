@interface PXStoryPHMemoryPersistableRecipeProducer
+ (id)_persistableRecipeForMemory:(id)a3 keyAsset:(id)a4 miroDataUsed:(id *)a5 error:(id *)a6;
- (PXStoryPHMemoryPersistableRecipeProducer)init;
- (PXStoryPHMemoryPersistableRecipeProducer)initWithMemory:(id)a3 keyAsset:(id)a4;
- (id)requestPersistableRecipeWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryPHMemoryPersistableRecipeProducer

- (id)requestPersistableRecipeWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__207651;
  v20[4] = __Block_byref_object_dispose__207652;
  v21 = [(PXStoryPHMemoryPersistableRecipeProducer *)self memory];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PXStoryPHMemoryPersistableRecipeProducer_requestPersistableRecipeWithOptions_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7744A38;
  v19 = v20;
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
    v11 = [(PXStoryPHMemoryPersistableRecipeProducer *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PXStoryPHMemoryPersistableRecipeProducer_requestPersistableRecipeWithOptions_resultHandler___block_invoke_2;
    block[3] = &unk_1E774C2F0;
    v12 = v10;
    v15 = v12;
    v16 = v9;
    dispatch_async(v11, block);
  }

  _Block_object_dispose(v20, 8);

  return v12;
}

void __94__PXStoryPHMemoryPersistableRecipeProducer_requestPersistableRecipeWithOptions_resultHandler___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 48) + 8) + 40) objectID];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69788E0]);
    v4 = [*(*(*(a1 + 48) + 8) + 40) objectID];
    v25[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v6 = [*(*(*(a1 + 48) + 8) + 40) photoLibrary];
    v7 = [MEMORY[0x1E69788F0] fetchType];
    v8 = [v3 initWithOids:v5 photoLibrary:v6 fetchType:v7 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    v9 = [v8 firstObject];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  v13 = [*(a1 + 32) keyAsset];
  v23 = 0;
  v24 = 0;
  v14 = [PXStoryPHMemoryPersistableRecipeProducer _persistableRecipeForMemory:v12 keyAsset:v13 miroDataUsed:&v24 error:&v23];
  v15 = v24;
  v16 = v23;

  v17 = [PXStoryPersistableRecipeResult alloc];
  if ([v15 containsAnyData])
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PXStoryPersistableRecipeResult *)v17 initWithPersistableRecipe:v14 miroInfo:v18];
  v20 = [[PXStoryProducerResult alloc] initWithObject:v19];
  v21 = [(PXStoryProducerResult *)v20 flags:0];
  v22 = [v21 error:v16];

  (*(*(a1 + 40) + 16))();
}

uint64_t __94__PXStoryPHMemoryPersistableRecipeProducer_requestPersistableRecipeWithOptions_resultHandler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (PXStoryPHMemoryPersistableRecipeProducer)initWithMemory:(id)a3 keyAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = PXStoryPHMemoryPersistableRecipeProducer;
  v9 = [(PXStoryPHMemoryPersistableRecipeProducer *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memory, a3);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create(v13, v15);
    workQueue = v10->_workQueue;
    v10->_workQueue = v16;

    objc_storeStrong(&v10->_keyAsset, a4);
  }

  return v10;
}

- (PXStoryPHMemoryPersistableRecipeProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPHMemoryPersistableRecipeProducer.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXStoryPHMemoryPersistableRecipeProducer init]"}];

  abort();
}

+ (id)_persistableRecipeForMemory:(id)a3 keyAsset:(id)a4 miroDataUsed:(id *)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 photosGraphProperties];
  v12 = [v11 objectForKeyedSubscript:@"storyRecipeData"];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69C08E0]);
    v25 = 0;
    v14 = [(PXStoryMiroMemoryConverter *)v13 unarchivedRecipeWithData:v12 error:&v25];
    v15 = v25;
    if (!v14)
    {
      v16 = PLStoryGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = v9;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "failed to unarchive recipe for %@: %@", buf, 0x16u);
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v13 = [[PXStoryMiroMemoryConverter alloc] initWithMemory:v9 keyAsset:v10];
  if (![(PXStoryMiroMemoryConverter *)v13 containsAnyData])
  {
    v15 = 0;
    goto LABEL_13;
  }

  v24 = 0;
  v14 = [(PXStoryMiroMemoryConverter *)v13 createNewRecipeFromMiroMetadataWithError:&v24];
  v15 = v24;
  if (v14)
  {
    v17 = v13;
    *a5 = v13;
LABEL_9:
    v18 = v15;

    v19 = [v9 photoLibrary];
    v23 = v15;
    v20 = [PFStoryRecipe_PXStoryExtension recipe:v14 withPHPhotoLibrary:v19 error:&v23];
    v15 = v23;

    if (v20)
    {
      goto LABEL_14;
    }

    v13 = PLStoryGetLog();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_1A3C1C000, &v13->super, OS_LOG_TYPE_ERROR, "failed to assign photo library to recipe: %@", buf, 0xCu);
    }
  }

LABEL_13:

  v20 = 0;
LABEL_14:
  if (a6)
  {
    v21 = v15;
    *a6 = v15;
  }

  return v20;
}

@end