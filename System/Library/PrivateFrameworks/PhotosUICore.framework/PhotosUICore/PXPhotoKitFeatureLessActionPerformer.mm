@interface PXPhotoKitFeatureLessActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)_facesInCurrentAsset:(id)a3;
+ (id)_personFromFace:(id)a3 asset:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (id)_personFromFace:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitFeatureLessActionPerformer

+ (id)_personFromFace:(id)a3 asset:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6978830];
  v6 = a3;
  v7 = [v5 fetchOptionsWithPhotoLibrary:0 orObject:a4];
  [v7 setFetchLimit:1];
  v11[0] = *MEMORY[0x1E6978F38];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 setFetchPropertySets:v8];

  v9 = [MEMORY[0x1E6978980] fetchPersonWithFace:v6 options:v7];

  return v9;
}

+ (id)_facesInCurrentAsset:(id)a3
{
  v3 = MEMORY[0x1E6978830];
  v4 = a3;
  v5 = [v3 fetchOptionsWithPhotoLibrary:0 orObject:v4];
  [v5 setFetchLimit:2];
  [v5 setPersonContext:5];
  v6 = [MEMORY[0x1E69787C8] fetchFacesInAsset:v4 options:v5];

  return v6;
}

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = [a3 selectionManager];
  v4 = [v3 selectionSnapshot];
  v5 = [v4 firstObject];

  v6 = v5;
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
    v11 = [v8 firstObject];
    v12 = [v10 _personFromFace:v11 asset:v7];

    v13 = [v12 firstObject];
    [v13 fetchPropertySetsIfNeeded];
    v14 = [v13 userFeedbackProperties];
    v15 = [v14 userFeedback];

    if (v15)
    {
      v9 = @"plus.circle";
    }
  }

  return v9;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = [a4 selectionManager];
  v5 = [v4 selectionSnapshot];
  v6 = [v5 firstObject];

  v7 = v6;
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
    v11 = [v9 firstObject];
    v12 = [v10 _personFromFace:v11 asset:v8];

    v13 = [v12 firstObject];
    [v13 fetchPropertySetsIfNeeded];
    v14 = [v13 px_localizedName];
    v15 = [v13 userFeedbackProperties];
    v16 = [v15 userFeedback];

    if (v16)
    {
      if ([v14 length])
      {
        PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, @"PXPeopleBlockPersonRevertResetActionTitleNamed");
        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v18 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, @"PXPeopleBlockPersonRevertResetActionTitleNoName");
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

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && ([v10 px_isSyndicatedAsset] & 1) == 0)
  {
    v15 = [a1 _facesInCurrentAsset:v10];
    v14 = [v15 count] != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_personFromFace:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v6 = [v5 firstObject];

  v7 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v6];
  [v7 setFetchLimit:1];
  v11[0] = *MEMORY[0x1E6978F38];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 setFetchPropertySets:v8];

  v9 = [MEMORY[0x1E6978980] fetchPersonWithFace:v4 options:v7];

  return v9;
}

- (void)performUserInteractionTask
{
  v3 = objc_alloc_init(PXSuggestLessPeopleHelper);
  suggestLessPeopleHelper = self->_suggestLessPeopleHelper;
  self->_suggestLessPeopleHelper = v3;

  [(PXSuggestLessPeopleHelper *)self->_suggestLessPeopleHelper setDelegate:self];
  v5 = self->_suggestLessPeopleHelper;
  v6 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXPhotoKitFeatureLessActionPerformer_performUserInteractionTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [(PXSuggestLessPeopleHelper *)v5 suggestLessPeopleFromAssets:v6 completionHandler:v7];
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