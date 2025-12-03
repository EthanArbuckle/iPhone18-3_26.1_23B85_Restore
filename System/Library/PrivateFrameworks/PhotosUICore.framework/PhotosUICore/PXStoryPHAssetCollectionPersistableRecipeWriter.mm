@interface PXStoryPHAssetCollectionPersistableRecipeWriter
- (PXStoryPHAssetCollectionPersistableRecipeWriter)init;
- (PXStoryPHAssetCollectionPersistableRecipeWriter)initWithAssetCollection:(id)collection referencePersons:(id)persons;
- (id)writePersistableRecipe:(id)recipe assetEdits:(id)edits undoManager:(id)manager resultHandler:(id)handler;
@end

@implementation PXStoryPHAssetCollectionPersistableRecipeWriter

- (id)writePersistableRecipe:(id)recipe assetEdits:(id)edits undoManager:(id)manager resultHandler:(id)handler
{
  recipeCopy = recipe;
  editsCopy = edits;
  managerCopy = manager;
  handlerCopy = handler;
  v15 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:2];
  workQueue = [(PXStoryPHAssetCollectionPersistableRecipeWriter *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PXStoryPHAssetCollectionPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke;
  block[3] = &unk_1E7748800;
  v17 = v15;
  v26 = v17;
  selfCopy = self;
  v31 = handlerCopy;
  v32 = a2;
  v28 = recipeCopy;
  v29 = editsCopy;
  v30 = managerCopy;
  v18 = handlerCopy;
  v19 = managerCopy;
  v20 = editsCopy;
  v21 = recipeCopy;
  dispatch_async(workQueue, block);

  v22 = v31;
  v23 = v17;

  return v17;
}

void __111__PXStoryPHAssetCollectionPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke(uint64_t a1)
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__47172;
    v45 = __Block_byref_object_dispose__47173;
    v46 = 0;
    v2 = [*(a1 + 40) assetCollection];
    v3 = [v2 photoLibrary];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __111__PXStoryPHAssetCollectionPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_365;
    v37[3] = &unk_1E7746448;
    v4 = v2;
    v5 = *(a1 + 40);
    v38 = v4;
    v39 = v5;
    v40 = &v41;
    v36 = 0;
    v6 = [v3 performChangesAndWait:v37 error:&v36];
    v7 = v36;
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    if (v6 && v42[5])
    {
      v8 = [v3 librarySpecificFetchOptions];
      [v8 setIncludePendingMemories:1];
      v9 = MEMORY[0x1E69788F0];
      v51[0] = v42[5];
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      v11 = [v9 fetchAssetCollectionsWithLocalIdentifiers:v10 options:v8];

      if ([v11 count] == 1)
      {
        v18 = [v11 firstObject];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v29 = [MEMORY[0x1E696AAA8] currentHandler];
          [v29 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"PXStoryPHAssetCollectionPersistableRecipeWriter.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"[createdMemory isKindOfClass:PHMemory.class]"}];
        }

        v30 = v8;
        v19 = [[PXStoryPHMemoryPersistableRecipeWriter alloc] initWithMemory:v18];
        v20 = *(a1 + 48);
        v21 = *(a1 + 56);
        v22 = *(a1 + 64);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __111__PXStoryPHAssetCollectionPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_2;
        v31[3] = &unk_1E7731BE8;
        v35 = &v41;
        v32 = *(a1 + 32);
        v34 = *(a1 + 72);
        v23 = v18;
        v33 = v23;
        v24 = [(PXStoryPHMemoryPersistableRecipeWriter *)v19 writePersistableRecipe:v20 assetEdits:v21 undoManager:v22 resultHandler:v31];

        v8 = v30;
        v25 = v7;
      }

      else
      {
        v25 = PXStoryErrorCreateWithCodeDebugFormat(14, @"Should be able to fetch the newly created memory with identifier:%@", v12, v13, v14, v15, v16, v17, v42[5]);

        v28 = PLMemoriesGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = v25;
          _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "Failed to fetch newly created memory:%@", buf, 0xCu);
        }

        (*(*(a1 + 72) + 16))();
      }

      v7 = v25;
    }

    else
    {
      v26 = PLMemoriesGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = v42[5];
        *buf = 138412546;
        v48 = v7;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "Failed to create memory with error:%@ localIdentifier:%@", buf, 0x16u);
      }

      (*(*(a1 + 72) + 16))();
    }

    _Block_object_dispose(&v41, 8);
  }
}

void __111__PXStoryPHAssetCollectionPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_365(uint64_t a1)
{
  v2 = [PXStoryPHAssetCollectionAssetsProducer shouldEnableCurationForAssetCollection:*(a1 + 32)];
  v3 = MEMORY[0x1E6978900];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) referencePersons];
  v11 = [v3 px_creationRequestForAssetCollection:v4 displayTitleInfo:0 people:v5 ignoreCuration:!v2];

  v6 = objc_alloc_init(PXStoryDefaultAssetCollectionAnnotator);
  [(PXStoryDefaultAssetCollectionAnnotator *)v6 setSourceObject:*(a1 + 32)];
  [(PXStoryDefaultAssetCollectionAnnotator *)v6 addTransientDraftAnnotationToMemoryCreationRequest:v11];
  v7 = [v11 placeholderForCreatedMemory];
  v8 = [v7 localIdentifier];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __111__PXStoryPHAssetCollectionPersistableRecipeWriter_writePersistableRecipe_assetEdits_undoManager_resultHandler___block_invoke_2(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    v7 = PLMemoriesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 56) + 8) + 40);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to write recipe to newly created memory with identifier:%@ error:%@", &v9, 0x16u);
    }
  }

  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  (*(*(a1 + 48) + 16))();
}

- (PXStoryPHAssetCollectionPersistableRecipeWriter)initWithAssetCollection:(id)collection referencePersons:(id)persons
{
  collectionCopy = collection;
  personsCopy = persons;
  if (self)
  {
    objc_storeStrong(&self->_assetCollection, collection);
    objc_storeStrong(&self->_referencePersons, persons);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create(uTF8String, v13);
    workQueue = self->_workQueue;
    self->_workQueue = v14;
  }

  return self;
}

- (PXStoryPHAssetCollectionPersistableRecipeWriter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPHAssetCollectionPersistableRecipeWriter.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXStoryPHAssetCollectionPersistableRecipeWriter init]"}];

  abort();
}

@end