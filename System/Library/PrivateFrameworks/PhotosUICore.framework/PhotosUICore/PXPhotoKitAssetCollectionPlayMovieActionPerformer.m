@interface PXPhotoKitAssetCollectionPlayMovieActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (BOOL)shouldDisplayTitleOfAssetCollection:(id)a3;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionPlayMovieActionPerformer

- (void)performUserInteractionTask
{
  v4 = [(PXActionPerformer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    PXAssertGetLog();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PXPhotoKitAssetCollectionPlayMovieActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E772C9B8;
  v43 = v4;
  v44 = self;
  v5 = _Block_copy(aBlock);
  v6 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v7 = 0x1E6978000uLL;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v27 = NSStringFromClass(v28);
    v29 = [v6 px_descriptionForAssertionMessage];
    [v25 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:127 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v27, v29}];
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v25 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:127 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v27}];
  }

LABEL_4:
  if ([v6 px_highlightKind] == 2)
  {
    v8 = v6;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        v9 = [MEMORY[0x1E6978630] fetchAllAssetsInYearRepresentedByYearHighlight:v8 options:0];
        v10 = [*(v7 + 1616) transientAssetCollectionWithAssetFetchResult:v9 title:0];
        v11 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:v10];
        v12 = *(v7 + 1616);
        v13 = [v8 localizedTitle];
        v14 = [v12 transientAssetCollectionWithAssetFetchResult:v11 title:v13];

        v5[2](v5, v14);
        goto LABEL_18;
      }

      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v32 = NSStringFromClass(v33);
      v34 = [v8 px_descriptionForAssertionMessage];
      [v30 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:129 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v32, v34}];

      v7 = 0x1E6978000;
    }

    else
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [v30 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:129 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v32}];
    }

    goto LABEL_7;
  }

  if ([v6 assetCollectionType] == 1 && objc_msgSend(v6, "assetCollectionSubtype") == 2)
  {
    v15 = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v16 = [v15 titleCategory];

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = 6;
    }

    v18 = [off_1E77217B8 defaultHelper];
    v19 = [v6 localizedTitle];
    v20 = [v18 titleForDisplayableText:v19 titleCategory:v17 options:1];

    v21 = [v6 localizedSubtitle];
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
    v37 = v21;
    v38 = v6;
    v39 = self;
    v40 = v5;
    v23 = v21;
    v24 = v20;
    dispatch_async(v22, block);
  }

  else
  {
    v5[2](v5, v6);
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

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v7 = [v5 localizedTitleForUseCase:a3 assetCollectionReference:v6 withInputs:0];

  return v7;
}

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v6 = [a4 activityType];
  v7 = [(PXPhotoKitAssetCollectionPlayMovieActionPerformer *)self activityType];

  if (v6 != v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"activity.activityType == self.activityType"}];
  }

  return 1;
}

+ (BOOL)shouldDisplayTitleOfAssetCollection:(id)a3
{
  v3 = a3;
  if ([v3 assetCollectionType] - 1) > 1 || (objc_msgSend(v3, "px_isAllPhotosSmartAlbum"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 px_isRecentsSmartAlbum] ^ 1;
  }

  return v4;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v7 = [a4 assetCollection];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  if ([v7 assetCollectionType] == 4)
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

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v7 = a4;
  v8 = [a3 assetCollection];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    v25 = [v8 px_descriptionForAssertionMessage];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:22 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v23, v25}];
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:22 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v23}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 performerDelegate];
  }

  else
  {
    v9 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 abilityToPlayMovieForAssetCollection:v8] < 2 || objc_msgSend(v8, "assetCollectionType") == 7 || objc_msgSend(v8, "assetCollectionType") == 9 || objc_msgSend(v8, "assetCollectionType") == 2 || (objc_msgSend(v8, "px_isSharedLibrarySharingSuggestion") & 1) != 0 || (objc_msgSend(v8, "px_isSharedLibrarySharingSuggestionsSmartAlbum") & 1) != 0 || objc_msgSend(v8, "assetCollectionSubtype") == 101)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v12 = +[PXMemoriesRelatedSettings sharedInstance];
  v13 = [v12 minimumNumberOfCuratedAssetsForMovieHeader];

  v14 = [v8 estimatedAssetCount];
  if ([v8 assetCollectionType] == 6)
  {
    v15 = v8;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_19:
        v14 = [v15 summaryCount];
        if ([v15 kind] == 2)
        {
          v16 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v15];
          v17 = MEMORY[0x1E696AE18];
          v18 = [v15 objectID];
          v19 = [v17 predicateWithFormat:@"highlightBeingSummaryAssets.parentPhotosHighlight.parentPhotosHighlight = %@", v18];
          [v16 setInternalPredicate:v19];

          [v16 setShouldPrefetchCount:1];
          [v16 setFetchLimit:v13];
          v20 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v16];
          v14 = [v20 count];
        }

        goto LABEL_22;
      }

      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v28 = NSStringFromClass(v29);
      v30 = [v15 px_descriptionForAssertionMessage];
      [v31 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v28, v30}];
    }

    else
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v31 = v26;
      [v26 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPlayMovieActionPerformer.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v28}];
    }

    goto LABEL_19;
  }

LABEL_22:
  v10 = [v8 assetCollectionType] == 4 || +[PXMemoriesRelatedSettings isAssetCountAcceptableForMemoryPlayback:](PXMemoriesRelatedSettings, "isAssetCountAcceptableForMemoryPlayback:", v14);
LABEL_15:

  return v10;
}

@end