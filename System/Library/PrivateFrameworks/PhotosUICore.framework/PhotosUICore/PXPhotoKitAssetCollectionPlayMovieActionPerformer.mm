@interface PXPhotoKitAssetCollectionPlayMovieActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (BOOL)shouldDisplayTitleOfAssetCollection:(id)collection;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionPlayMovieActionPerformer

- (void)performUserInteractionTask
{
  delegate = [(PXActionPerformer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    PXAssertGetLog();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E772C9B8;
  v43 = delegate;
  selfCopy = self;
  v5 = _Block_copy(aBlock);
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v7 = 0x1E6978000uLL;
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v27 = NSStringFromClass(v28);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:127 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v27, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:127 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v27}];
  }

LABEL_4:
  if ([assetCollection px_highlightKind] == 2)
  {
    v8 = assetCollection;
    if (assetCollection)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        v9 = [MEMORY[0x1E6978630] fetchAllAssetsInYearRepresentedByYearHighlight:v8 options:0];
        v10 = [*(v7 + 1616) transientAssetCollectionWithAssetFetchResult:v9 title:0];
        v11 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:v10];
        v12 = *(v7 + 1616);
        localizedTitle = [v8 localizedTitle];
        v14 = [v12 transientAssetCollectionWithAssetFetchResult:v11 title:localizedTitle];

        v5[2](v5, v14);
        goto LABEL_18;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v32 = NSStringFromClass(v33);
      px_descriptionForAssertionMessage2 = [v8 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:129 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v32, px_descriptionForAssertionMessage2}];

      v7 = 0x1E6978000;
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:129 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v32}];
    }

    goto LABEL_7;
  }

  if ([assetCollection assetCollectionType] == 1 && objc_msgSend(assetCollection, "assetCollectionSubtype") == 2)
  {
    assetCollection2 = [(PXAssetCollectionActionPerformer *)self assetCollection];
    titleCategory = [assetCollection2 titleCategory];

    if (titleCategory)
    {
      v17 = titleCategory;
    }

    else
    {
      v17 = 6;
    }

    defaultHelper = [off_1E77217B8 defaultHelper];
    localizedTitle2 = [assetCollection localizedTitle];
    v20 = [defaultHelper titleForDisplayableText:localizedTitle2 titleCategory:v17 options:1];

    localizedSubtitle = [assetCollection localizedSubtitle];
    if (performUserInteractionTask_onceToken != -1)
    {
      dispatch_once(&performUserInteractionTask_onceToken, &__block_literal_global_712);
    }

    v22 = performUserInteractionTask_preferredTitlesQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke_4;
    block[3] = &unk_1E7743080;
    v41 = v17;
    v36 = v20;
    v37 = localizedSubtitle;
    v38 = assetCollection;
    selfCopy2 = self;
    v40 = v5;
    v23 = localizedSubtitle;
    v24 = v20;
    dispatch_async(v22, block);
  }

  else
  {
    v5[2](v5, assetCollection);
  }

LABEL_18:
}

void __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

void __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1)
{
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v2 = *MEMORY[0x1E6978EE8];
  [v18 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E6978EE8]];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  v4 = *MEMORY[0x1E6978EE0];
  [v18 setObject:v3 forKeyedSubscript:*MEMORY[0x1E6978EE0]];

  v5 = *MEMORY[0x1E6978ED8];
  [v18 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E6978ED8]];
  v6 = [MEMORY[0x1E6978900] preferredAttributesForMemoryCreationFromAssetCollection:*(a1 + 48) proposedAttributes:v18];
  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [v6 objectForKeyedSubscript:v2];

    v11 = [v6 objectForKeyedSubscript:v4];
    v8 = [v11 integerValue];

    v12 = [v6 objectForKeyedSubscript:v5];

    v9 = v12;
    v7 = v10;
  }

  v13 = [MEMORY[0x1E6978650] titleFontNameForTitleCategory:v8];
  v14 = MEMORY[0x1E6978630];
  v15 = [*(a1 + 56) assetCollection];
  v16 = [v14 fetchAssetsInAssetCollection:v15 options:0];

  v17 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v16 type:objc_msgSend(*(a1 + 48) subtype:"assetCollectionType") title:objc_msgSend(*(a1 + 48) subtitle:"assetCollectionSubtype") titleFontName:{v7, v9, v13}];
  (*(*(a1 + 64) + 16))();
}

void __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke_3()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.photos.PXPhotoKitAssetCollectionPlayMovieActionPerformer.preferredTitlesQueue", v0);
  v2 = performUserInteractionTask_preferredTitlesQueue;
  performUserInteractionTask_preferredTitlesQueue = v1;
}

uint64_t __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) assetCollectionActionPerformer:*(a1 + 40) playMovieForAssetCollection:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v5 = objc_opt_class();
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v7 = [v5 localizedTitleForUseCase:case assetCollectionReference:assetCollectionReference withInputs:0];

  return v7;
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXPhotoKitAssetCollectionPlayMovieActionPerformer *)self activityType];

  if (activityType != activityType2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"activity.activityType == self.activityType"}];
  }

  return 1;
}

+ (BOOL)shouldDisplayTitleOfAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy assetCollectionType] - 1) > 1 || (objc_msgSend(collectionCopy, "px_isAllPhotosSmartAlbum"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [collectionCopy px_isRecentsSmartAlbum] ^ 1;
  }

  return v4;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  if ([assetCollection assetCollectionType] == 4)
  {
    v8 = @"PXPhotosDetailsActionMenuPlayMovieTitle";
  }

  else
  {
    v8 = @"PXPhotosDetailsActionMenuPlayMemoryMovieTitle";
  }

  v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");

  return v9;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:22 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v23, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:22 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v23}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    performerDelegate = [inputsCopy performerDelegate];
  }

  else
  {
    performerDelegate = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [performerDelegate abilityToPlayMovieForAssetCollection:assetCollection] < 2 || objc_msgSend(assetCollection, "assetCollectionType") == 7 || objc_msgSend(assetCollection, "assetCollectionType") == 9 || objc_msgSend(assetCollection, "assetCollectionType") == 2 || (objc_msgSend(assetCollection, "px_isSharedLibrarySharingSuggestion") & 1) != 0 || (objc_msgSend(assetCollection, "px_isSharedLibrarySharingSuggestionsSmartAlbum") & 1) != 0 || objc_msgSend(assetCollection, "assetCollectionSubtype") == 101)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v12 = +[PXMemoriesRelatedSettings sharedInstance];
  minimumNumberOfCuratedAssetsForMovieHeader = [v12 minimumNumberOfCuratedAssetsForMovieHeader];

  estimatedAssetCount = [assetCollection estimatedAssetCount];
  if ([assetCollection assetCollectionType] == 6)
  {
    v15 = assetCollection;
    if (assetCollection)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_19:
        estimatedAssetCount = [v15 summaryCount];
        if ([v15 kind] == 2)
        {
          v16 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v15];
          v17 = MEMORY[0x1E696AE18];
          objectID = [v15 objectID];
          v19 = [v17 predicateWithFormat:@"highlightBeingSummaryAssets.parentPhotosHighlight.parentPhotosHighlight = %@", objectID];
          [v16 setInternalPredicate:v19];

          [v16 setShouldPrefetchCount:1];
          [v16 setFetchLimit:minimumNumberOfCuratedAssetsForMovieHeader];
          v20 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v16];
          estimatedAssetCount = [v20 count];
        }

        goto LABEL_22;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v28 = NSStringFromClass(v29);
      px_descriptionForAssertionMessage2 = [v15 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v28, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      currentHandler2 = currentHandler3;
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v28}];
    }

    goto LABEL_19;
  }

LABEL_22:
  v10 = [assetCollection assetCollectionType] == 4 || +[PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryPlayback:](PXMemoriesRelatedSettings, "isAssetCountAcceptableForMemoryPlayback:", estimatedAssetCount);
LABEL_15:

  return v10;
}

@end