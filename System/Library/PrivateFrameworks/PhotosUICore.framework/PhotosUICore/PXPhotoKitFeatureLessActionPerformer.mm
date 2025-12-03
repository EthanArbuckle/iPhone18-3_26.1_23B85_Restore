@interface PXPhotoKitFeatureLessActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)_facesInCurrentAsset:(id)asset;
+ (id)_personFromFace:(id)face asset:(id)asset;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (id)_personFromFace:(id)face;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitFeatureLessActionPerformer

+ (id)_personFromFace:(id)face asset:(id)asset
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6978830];
  faceCopy = face;
  v7 = [v5 fetchOptionsWithPhotoLibrary:0 orObject:asset];
  [v7 setFetchLimit:1];
  v11[0] = *MEMORY[0x1E6978F38];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 setFetchPropertySets:v8];

  v9 = [MEMORY[0x1E6978980] fetchPersonWithFace:faceCopy options:v7];

  return v9;
}

+ (id)_facesInCurrentAsset:(id)asset
{
  v3 = MEMORY[0x1E6978830];
  assetCopy = asset;
  v5 = [v3 fetchOptionsWithPhotoLibrary:0 orObject:assetCopy];
  [v5 setFetchLimit:2];
  [v5 setPersonContext:5];
  v6 = [MEMORY[0x1E69787C8] fetchFacesInAsset:assetCopy options:v5];

  return v6;
}

+ (id)systemImageNameForActionManager:(id)manager
{
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  firstObject = [selectionSnapshot firstObject];

  v6 = firstObject;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_class() _facesInCurrentAsset:v7];
  v9 = @"xmark.circle";
  if ([v8 count] == 1)
  {
    v10 = objc_opt_class();
    firstObject2 = [v8 firstObject];
    v12 = [v10 _personFromFace:firstObject2 asset:v7];

    firstObject3 = [v12 firstObject];
    [firstObject3 fetchPropertySetsIfNeeded];
    userFeedbackProperties = [firstObject3 userFeedbackProperties];
    userFeedback = [userFeedbackProperties userFeedback];

    if (userFeedback)
    {
      v9 = @"plus.circle";
    }
  }

  return v9;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  firstObject = [selectionSnapshot firstObject];

  v7 = firstObject;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_class() _facesInCurrentAsset:v8];
  if ([v9 count] == 1)
  {
    v10 = objc_opt_class();
    firstObject2 = [v9 firstObject];
    v12 = [v10 _personFromFace:firstObject2 asset:v8];

    firstObject3 = [v12 firstObject];
    [firstObject3 fetchPropertySetsIfNeeded];
    px_localizedName = [firstObject3 px_localizedName];
    userFeedbackProperties = [firstObject3 userFeedbackProperties];
    userFeedback = [userFeedbackProperties userFeedback];

    if (userFeedback)
    {
      if ([px_localizedName length])
      {
        PXLocalizedStringForPersonOrPetAndVisibility(firstObject3, 0, @"PXPeopleBlockPersonRevertResetActionTitleNamed");
        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v18 = PXLocalizedStringForPersonOrPetAndVisibility(firstObject3, 0, @"PXPeopleBlockPersonRevertResetActionTitleNoName");
    }

    else
    {
      v18 = PXLocalizedStringFromTable(@"PXRecentInterestSuggestionSuggestLessPersonActionTitle", @"PhotosUICore");
    }

    v17 = v18;
  }

  else
  {
    v17 = PXLocalizedStringFromTable(@"PXRecentInterestSuggestionSuggestLessPeopleActionTitle", @"PhotosUICore");
  }

  return v17;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  personCopy = person;
  groupCopy = group;
  if (assetCopy && ([assetCopy px_isSyndicatedAsset] & 1) == 0)
  {
    v15 = [self _facesInCurrentAsset:assetCopy];
    v14 = [v15 count] != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_personFromFace:(id)face
{
  v11[1] = *MEMORY[0x1E69E9840];
  faceCopy = face;
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];

  v7 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:firstObject];
  [v7 setFetchLimit:1];
  v11[0] = *MEMORY[0x1E6978F38];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 setFetchPropertySets:v8];

  v9 = [MEMORY[0x1E6978980] fetchPersonWithFace:faceCopy options:v7];

  return v9;
}

- (void)performUserInteractionTask
{
  v3 = objc_alloc_init(PXSuggestLessPeopleHelper);
  suggestLessPeopleHelper = self->_suggestLessPeopleHelper;
  self->_suggestLessPeopleHelper = v3;

  [(PXSuggestLessPeopleHelper *)self->_suggestLessPeopleHelper setDelegate:self];
  v5 = self->_suggestLessPeopleHelper;
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXPhotoKitFeatureLessActionPerformer_performUserInteractionTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXSuggestLessPeopleHelper *)v5 suggestLessPeopleFromAssets:assets completionHandler:v7];
}

void __66__PXPhotoKitFeatureLessActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Could not suggest this person less: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXPhotoKitFeatureLessActionPerformer_performUserInteractionTask__block_invoke_209;
  block[3] = &unk_1E774B368;
  v7 = *(a1 + 32);
  v11 = a2;
  block[4] = v7;
  v10 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end