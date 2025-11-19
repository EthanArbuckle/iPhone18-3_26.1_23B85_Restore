@interface PXStoryPHMemoryPersistableRecipeWriter
- (PXStoryPHMemoryPersistableRecipeWriter)init;
- (PXStoryPHMemoryPersistableRecipeWriter)initWithMemory:(id)a3;
- (id)writePersistableRecipe:(id)a3 assetEdits:(id)a4 undoManager:(id)a5 resultHandler:(id)a6;
@end

@implementation PXStoryPHMemoryPersistableRecipeWriter

- (id)writePersistableRecipe:(id)a3 assetEdits:(id)a4 undoManager:(id)a5 resultHandler:(id)a6
{
  buf[11] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(PXStoryPHMemoryPersistableRecipeWriter *)self memory];
  if (v12)
  {
    [v12 overallDurationInfo];
    if (buf[0])
    {
      if (v11)
      {
        [v11 overallDurationInfo];
      }

      else
      {
        memset(buf, 0, 80);
      }

      [v12 overallDurationInfo];
      if (buf[0] != v36 || (v46 = *&buf[7], v43 = v40, time1 = *&buf[1], *&v45[16] = *&buf[5], v44 = *&buf[1], *v45 = *&buf[3], *&v42[16] = v39, v41 = v37, *v42 = v38, *&time2.value = v37, time2.epoch = v38, CMTimeCompare(&time1, &time2)) || (time1 = *&v45[8], time2 = *&v42[8], CMTimeCompare(&time1, &time2)) || (time1 = v46, time2 = v43, CMTimeCompare(&time1, &time2)))
      {
        PXAssertGetLog();
      }
    }
  }

  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:3];
  v17 = [(PXStoryPHMemoryPersistableRecipeWriter *)self workQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke;
  v27[3] = &unk_1E774BDD8;
  v18 = v16;
  v28 = v18;
  v29 = v11;
  v30 = v15;
  v31 = v12;
  v34 = v14;
  v35 = a2;
  v32 = self;
  v33 = v13;
  v19 = v13;
  v20 = v14;
  v21 = v12;
  v22 = v15;
  v23 = v11;
  dispatch_async(v17, v27);

  v24 = v33;
  v25 = v18;

  return v18;
}

void __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v2 = objc_alloc_init(MEMORY[0x1E69C08B0]);
      v3 = [v2 archivedDataWithRecipe:*(a1 + 40)];
    }

    else
    {
      v3 = 0;
    }

    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    if ([*(a1 + 32) isCancelled])
    {
      v4 = 0;
    }

    else
    {
      v5 = [*(a1 + 40) currentStyle];
      v6 = *(a1 + 48);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_2;
      v27[3] = &unk_1E774BD60;
      v28 = v3;
      v7 = v5;
      v29 = v7;
      v30 = *(a1 + 56);
      v26 = 0;
      v8 = [v6 px_photosGraphDataByMutatingPropertiesUsingBlock:v27 error:&v26];
      v4 = v26;
      if (v8)
      {
        [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
        if (([*(a1 + 32) isCancelled] & 1) == 0)
        {
          if (v7)
          {
            v9 = [v7 customColorGradeKind];
            v10 = +[PXStoryColorGradingRepositoryFactory sharedRepository];
            if (!v9)
            {
              v11 = [v7 originalColorGradeCategory];
              v9 = [v10 colorGradeKindForColorGradeCategory:v11];
            }
          }

          else
          {
            v9 = 0;
          }

          v25 = v9;
          v12 = [*(a1 + 56) keyAsset];
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v19 = [MEMORY[0x1E696AAA8] currentHandler];
              v23 = *(a1 + 64);
              v24 = *(a1 + 88);
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              v22 = [v12 px_descriptionForAssertionMessage];
              [v19 handleFailureInMethod:v24 object:v23 file:@"PXStoryPHMemoryPersistableRecipeWriter.m" lineNumber:89 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetEdits.keyAsset", v21, v22}];
            }
          }

          v13 = [PXEditMemoryAction alloc];
          v14 = *(a1 + 48);
          v15 = [*(a1 + 56) userCuratedAssets];
          v16 = [*(a1 + 56) customUserAssetsEdit];
          v17 = [(PXEditMemoryAction *)v13 initWithMemory:v14 photosGraphData:v8 storyColorGradeKind:v25 keyAsset:v12 userCuratedAssets:v15 customUserAssetsEdit:v16];

          *(a1 + 72);
          *(a1 + 32);
          *(a1 + 80);
          v18 = v17;
          px_dispatch_on_main_queue();
        }
      }

      else
      {
        (*(*(a1 + 80) + 16))();
      }
    }
  }
}

void __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setObject:*(a1 + 32) forKeyedSubscript:@"storyRecipeData"];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "customColorGradeKind")}];
    [v9 setObject:v4 forKeyedSubscript:@"storyColorGradeKind"];

    v5 = [*(a1 + 40) originalColorGradeCategory];
    [v9 setObject:v5 forKeyedSubscript:@"storyColorGradeCategory"];
  }

  v6 = [*(a1 + 48) customUserAssetsEdit];
  v7 = [v6 assets];
  v8 = [v7 count];

  if (v8 >= 1)
  {
    [v9 setObject:0 forKeyedSubscript:@"chapterTitles"];
  }
}

void __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_4;
  v4[3] = &unk_1E774BD88;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 executeWithUndoManager:v3 completionHandler:v4];
}

void __102__PXStoryPHMemoryPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  }

  (*(*(a1 + 40) + 16))();
}

- (PXStoryPHMemoryPersistableRecipeWriter)initWithMemory:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PXStoryPHMemoryPersistableRecipeWriter;
  v6 = [(PXStoryPHMemoryPersistableRecipeWriter *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memory, a3);
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

- (PXStoryPHMemoryPersistableRecipeWriter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPHMemoryPersistableRecipeWriter.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXStoryPHMemoryPersistableRecipeWriter init]"}];

  abort();
}

@end