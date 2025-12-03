@interface PXStoryMemoryChapterCollectionProducer
+ (id)chapterCollectionForGenerativeMemory:(id)memory assets:(id)assets keyAsset:(id)asset error:(id *)error;
+ (id)chapterCollectionForPhotosGraphChapters:(id)chapters assets:(id)assets keyAsset:(id)asset error:(id *)error;
+ (id)photosGraphChaptersForChapterCollection:(id)collection originalPhotosGraphChapters:(id)chapters error:(id *)error;
- (PXStoryMemoryChapterCollectionProducer)initWithMemory:(id)memory storyQueue:(id)queue;
- (PXStoryMemoryChapterCollectionProducer)initWithStoryQueue:(id)queue;
- (id)workQueue_uneditedChapterCollectionWithAssets:(id)assets keyAsset:(id)asset;
- (void)workQueue_saveEditTransaction:(id)transaction completionHandler:(id)handler;
@end

@implementation PXStoryMemoryChapterCollectionProducer

+ (id)chapterCollectionForGenerativeMemory:(id)memory assets:(id)assets keyAsset:(id)asset error:(id *)error
{
  memoryCopy = memory;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  Result_pSo0pM0_pSAySo7NSErrorCSgGSgtFZ_0 = _sSo38PXStoryMemoryChapterCollectionProducerC12PhotosUICoreE07chapterD0013forGenerativeB06assets8keyAsset5errorSo0acD0_pSgSo8PHMemoryC_So09PXDisplayM11FetchResult_pSo0pM0_pSAySo7NSErrorCSgGSgtFZ_0(memoryCopy, assets, asset, error);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return Result_pSo0pM0_pSAySo7NSErrorCSgGSgtFZ_0;
}

- (void)workQueue_saveEditTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  originalChapterCollection = [transactionCopy originalChapterCollection];
  if ([originalChapterCollection conformsToProtocol:&unk_1F198CF38])
  {
    v10 = originalChapterCollection;
    edits = [transactionCopy edits];
    v52[0] = 0;
    v12 = [v10 canApplyEdits:edits error:v52];
    v13 = v52[0];
    v14 = v13;
    if (v12)
    {
      v44 = v13;
      v15 = [v10 copyByApplyingEdits:edits];
      v16 = v15;
      if (!self->_workQueue_originalPhotosGraphChapters)
      {
        v40 = a2;
        v42 = v15;
        memory = [(PXStoryMemoryChapterCollectionProducer *)self memory];
        photosGraphProperties = [memory photosGraphProperties];
        v19 = [photosGraphProperties objectForKeyedSubscript:@"chapterTitles"];

        v20 = v19;
        if (v19)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v35 = objc_opt_class();
            NSStringFromClass(v35);
            v36 = v39 = v20;
            px_descriptionForAssertionMessage = [(NSArray *)v39 px_descriptionForAssertionMessage];
            [currentHandler handleFailureInMethod:v40 object:self file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:155 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.memory.photosGraphProperties[PHMemoryPhotosGraphPropertiesChapterTitlesKey]", v36, px_descriptionForAssertionMessage}];

            v20 = v39;
          }
        }

        workQueue_originalPhotosGraphChapters = self->_workQueue_originalPhotosGraphChapters;
        self->_workQueue_originalPhotosGraphChapters = v20;

        v16 = v42;
      }

      v22 = objc_opt_class();
      v23 = self->_workQueue_originalPhotosGraphChapters;
      v51 = 0;
      v24 = [v22 photosGraphChaptersForChapterCollection:v16 originalPhotosGraphChapters:v23 error:&v51];
      v25 = v51;
      v26 = v25;
      if (v24)
      {
        v43 = v25;
        memory2 = [(PXStoryMemoryChapterCollectionProducer *)self memory];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __90__PXStoryMemoryChapterCollectionProducer_workQueue_saveEditTransaction_completionHandler___block_invoke;
        v49[3] = &unk_1E772D338;
        v50 = v24;
        v48 = 0;
        v28 = [memory2 px_photosGraphDataByMutatingPropertiesUsingBlock:v49 error:&v48];
        v29 = v48;
        v14 = v44;
        v41 = v29;
        if (v28)
        {
          [memory2 photoLibrary];
          v38 = v24;
          v30 = edits;
          v31 = v10;
          v33 = v32 = v16;
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __90__PXStoryMemoryChapterCollectionProducer_workQueue_saveEditTransaction_completionHandler___block_invoke_2;
          v45[3] = &unk_1E774C620;
          v46 = memory2;
          v47 = v28;
          [v33 performChanges:v45 completionHandler:handlerCopy];

          v16 = v32;
          v10 = v31;
          edits = v30;
          v24 = v38;
        }

        else
        {
          handlerCopy[2](handlerCopy, 0, v29);
        }

        v26 = v43;
      }

      else
      {
        handlerCopy[2](handlerCopy, 0, v25);
        v14 = v44;
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, v13);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXStoryChapterErrorDomain" code:3 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v10);
  }
}

void __90__PXStoryMemoryChapterCollectionProducer_workQueue_saveEditTransaction_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  [v2 setPhotosGraphData:*(a1 + 40)];
}

- (id)workQueue_uneditedChapterCollectionWithAssets:(id)assets keyAsset:(id)asset
{
  v28 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  assetsCopy = assets;
  memory = [(PXStoryMemoryChapterCollectionProducer *)self memory];
  photosGraphProperties = [memory photosGraphProperties];

  memory2 = [(PXStoryMemoryChapterCollectionProducer *)self memory];
  isGenerative = [memory2 isGenerative];

  v12 = objc_opt_class();
  if (isGenerative)
  {
    memory3 = [(PXStoryMemoryChapterCollectionProducer *)self memory];
    v23 = 0;
    v14 = &v23;
    v15 = [v12 chapterCollectionForGenerativeMemory:memory3 assets:assetsCopy keyAsset:assetCopy error:&v23];
  }

  else
  {
    memory3 = [photosGraphProperties objectForKeyedSubscript:@"chapterTitles"];
    v22 = 0;
    v14 = &v22;
    v15 = [v12 chapterCollectionForPhotosGraphChapters:memory3 assets:assetsCopy keyAsset:assetCopy error:&v22];
  }

  v16 = v15;

  v17 = *v14;
  if (!v16)
  {
    v18 = PLStoryGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ malformed photosGraph chapters: %@", buf, 0x16u);
    }
  }

  return v16;
}

- (PXStoryMemoryChapterCollectionProducer)initWithMemory:(id)memory storyQueue:(id)queue
{
  memoryCopy = memory;
  v11.receiver = self;
  v11.super_class = PXStoryMemoryChapterCollectionProducer;
  v8 = [(PXStoryTransientChapterCollectionProducer *)&v11 initWithStoryQueue:queue];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_memory, memory);
  }

  return v9;
}

- (PXStoryMemoryChapterCollectionProducer)initWithStoryQueue:(id)queue
{
  queueCopy = queue;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXStoryMemoryChapterCollectionProducer initWithStoryQueue:]"}];

  abort();
}

+ (id)photosGraphChaptersForChapterCollection:(id)collection originalPhotosGraphChapters:(id)chapters error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  chaptersCopy = chapters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __116__PXStoryMemoryChapterCollectionProducer_photosGraphChaptersForChapterCollection_originalPhotosGraphChapters_error___block_invoke;
    v20[3] = &unk_1E772D310;
    v21 = chaptersCopy;
    v23 = a2;
    selfCopy = self;
    v12 = v11;
    v22 = v12;
    [collectionCopy enumerateChaptersUsingBlock:v20];

    v13 = 0;
    collectionCopy = v21;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    collectionCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't serialize %@ into dictionary", collectionCopy];
    v26[0] = collectionCopy;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v15 errorWithDomain:@"PXStoryChapterErrorDomain" code:4 userInfo:v16];

    v12 = 0;
  }

  if (error)
  {
    v17 = v13;
    *error = v13;
  }

  v18 = [v12 copy];

  return v18;
}

void __116__PXStoryMemoryChapterCollectionProducer_photosGraphChaptersForChapterCollection_originalPhotosGraphChapters_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v23 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = [v10 objectForKeyedSubscript:@"startDate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v23 startDate];
        v13 = [v11 isEqualToDate:v12];

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = [v10 mutableCopy];

    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_13:
  v15 = [v22 localizedTitle];
  [v14 setObject:v15 forKeyedSubscript:@"title"];

  v16 = [v22 localizedSubtitle];
  v17 = [v16 length];

  if (v17)
  {
    PXAssertGetLog();
  }

  v18 = [v23 startDate];
  [v14 setObject:v18 forKeyedSubscript:@"startDate"];

  v19 = [v23 endDate];
  [v14 setObject:v19 forKeyedSubscript:@"endDate"];

  v20 = *(a1 + 40);
  v21 = [v14 copy];
  [v20 addObject:v21];
}

+ (id)chapterCollectionForPhotosGraphChapters:(id)chapters assets:(id)assets keyAsset:(id)asset error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  chaptersCopy = chapters;
  assetsCopy = assets;
  assetCopy = asset;
  v14 = chaptersCopy;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:52 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"photosGraphChapters", v21, px_descriptionForAssertionMessage}];
    }
  }

  v15 = [PXStoryTimeBasedChapterCollection alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __104__PXStoryMemoryChapterCollectionProducer_chapterCollectionForPhotosGraphChapters_assets_keyAsset_error___block_invoke;
  v23[3] = &unk_1E772D2E8;
  v24 = v14;
  v25 = a2;
  selfCopy = self;
  v16 = [(PXStoryTimeBasedChapterCollection *)v15 initWithAssets:assetsCopy keyAsset:assetCopy configuration:v23];

  if (error)
  {
    v17 = 0;
    *error = 0;
  }

  return v16;
}

void __104__PXStoryMemoryChapterCollectionProducer_chapterCollectionForPhotosGraphChapters_assets_keyAsset_error___block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setUsesAssetLocalCreationDates:1];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v55 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v60;
    do
    {
      v7 = 0;
      do
      {
        if (*v60 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v59 + 1) + 8 * v7);
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_8;
          }

          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          v45 = *(v55 + 48);
          v53 = *(v55 + 40);
          v27 = objc_opt_class();
          v17 = NSStringFromClass(v27);
          v28 = [v8 px_descriptionForAssertionMessage];
          [v14 handleFailureInMethod:v53 object:v45 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"graphChapter", v17, v28}];
        }

        else
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          v15 = *(v55 + 40);
          v49 = *(v55 + 48);
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          [v14 handleFailureInMethod:v15 object:v49 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"graphChapter", v17}];
        }

LABEL_8:
        v9 = [v8 objectForKeyedSubscript:@"title"];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_10;
          }

          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = *(v55 + 48);
          v54 = *(v55 + 40);
          v29 = objc_opt_class();
          v20 = NSStringFromClass(v29);
          v39 = [v9 px_descriptionForAssertionMessage];
          [v18 handleFailureInMethod:v54 object:v46 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:57 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"graphChapter[PHMemoryPhotosGraphPropertiesChapterTitlesTitleKey]", v20, v39}];
        }

        else
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v42 = *(v55 + 48);
          v50 = *(v55 + 40);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          [v18 handleFailureInMethod:v50 object:v42 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:57 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"graphChapter[PHMemoryPhotosGraphPropertiesChapterTitlesTitleKey]", v20}];
        }

LABEL_10:
        v10 = [v8 objectForKeyedSubscript:@"startDate"];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_12;
          }

          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          v47 = *(v55 + 40);
          v51 = v30;
          v40 = *(v55 + 48);
          v31 = objc_opt_class();
          v23 = NSStringFromClass(v31);
          v35 = [v10 px_descriptionForAssertionMessage];
          [v51 handleFailureInMethod:v47 object:v40 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"graphChapter[PHMemoryPhotosGraphPropertiesChapterTitlesStartDateKey]", v23, v35}];
        }

        else
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          v43 = *(v55 + 40);
          v51 = v21;
          v37 = *(v55 + 48);
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          [v51 handleFailureInMethod:v43 object:v37 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"graphChapter[PHMemoryPhotosGraphPropertiesChapterTitlesStartDateKey]", v23}];
        }

LABEL_12:
        v11 = [v8 objectForKeyedSubscript:@"endDate"];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_14;
          }

          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          v48 = *(v55 + 40);
          v52 = v32;
          v41 = *(v55 + 48);
          v33 = objc_opt_class();
          v26 = NSStringFromClass(v33);
          v36 = [v11 px_descriptionForAssertionMessage];
          [v52 handleFailureInMethod:v48 object:v41 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:59 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"graphChapter[PHMemoryPhotosGraphPropertiesChapterTitlesEndDateKey]", v26, v36}];
        }

        else
        {
          v24 = [MEMORY[0x1E696AAA8] currentHandler];
          v44 = *(v55 + 40);
          v52 = v24;
          v38 = *(v55 + 48);
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          [v52 handleFailureInMethod:v44 object:v38 file:@"PXStoryMemoryChapterCollectionProducer.m" lineNumber:59 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"graphChapter[PHMemoryPhotosGraphPropertiesChapterTitlesEndDateKey]", v26}];
        }

LABEL_14:
        v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 endDate:v11];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __104__PXStoryMemoryChapterCollectionProducer_chapterCollectionForPhotosGraphChapters_assets_keyAsset_error___block_invoke_2;
        v57[3] = &unk_1E7733440;
        v58 = v9;
        v13 = v9;
        [v3 addChapterWithDateInterval:v12 configuration:v57];

        ++v7;
      }

      while (v5 != v7);
      v34 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      v5 = v34;
    }

    while (v34);
  }
}

@end