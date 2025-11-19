@interface PXPhotoKitAssetCollectionBlockPersonActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForPerson:(id)a3;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)systemImageNameForPerson:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionBlockPersonActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = PXFirstPersonFromAssetCollectionActionPerformerInput(a4);
  v6 = [a1 systemImageNameForPerson:v5];

  return v6;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionBlockPersonActionPerformer.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  else
  {
    v12 = PXFirstPersonFromAssetCollectionActionPerformerInput(v10);
    v13 = [a1 localizedTitleForPerson:v12];
  }

  return v13;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 people];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count] == 1)
  {
    v7 = [a1 canPerformOn:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)systemImageNameForPerson:(id)a3
{
  v3 = a3;
  [v3 fetchPropertySetsIfNeeded];
  v4 = [v3 userFeedbackProperties];

  v5 = [v4 userFeedback];

  if (v5)
  {
    return @"plus.circle";
  }

  else
  {
    return @"xmark.circle";
  }
}

+ (id)localizedTitleForPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 px_localizedName];
  [v3 fetchPropertySetsIfNeeded];
  v5 = [v3 userFeedbackProperties];
  v6 = [v5 userFeedback];

  v7 = [v4 length];
  if (v6)
  {
    if (v7)
    {
      v8 = @"PXPeopleBlockPersonRevertResetActionTitleNamed";
      goto LABEL_6;
    }

    v9 = @"PXPeopleBlockPersonRevertResetActionTitleNoName";
  }

  else
  {
    if (v7)
    {
      v8 = @"PXPeopleBlockPersonActionTitleNamed";
LABEL_6:
      PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, v8);
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v9 = @"PXPeopleBlockPersonActionTitleNoName";
  }

  v10 = PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, v9);

  return v10;
}

- (void)performUserInteractionTask
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v4 = [v3 firstObject];

  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to block person: %@", buf, 0xCu);
  }

  v6 = [v4 photoLibrary];

  if (!v6)
  {
    [v4 photoLibrary];
    v11 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Failed to block person because person and/or its photo library was nil. Person: %@ photoLibrary: %@", v4, objc_claimAutoreleasedReturnValue()}];
    v12 = PLMemoriesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to block person because needed objects were nil. Error: %@", buf, 0xCu);
    }

    v13 = v11;
    px_dispatch_on_main_queue();
  }

  if (!self->_suggestLessPeopleHelper)
  {
    v7 = objc_alloc_init(PXSuggestLessPeopleHelper);
    suggestLessPeopleHelper = self->_suggestLessPeopleHelper;
    self->_suggestLessPeopleHelper = v7;

    [(PXSuggestLessPeopleHelper *)self->_suggestLessPeopleHelper setDelegate:self];
  }

  objc_initWeak(buf, self);
  v9 = self->_suggestLessPeopleHelper;
  v16 = v4;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PXPhotoKitAssetCollectionBlockPersonActionPerformer_performUserInteractionTask__block_invoke;
  v14[3] = &unk_1E7749D00;
  objc_copyWeak(&v15, buf);
  [(PXSuggestLessPeopleHelper *)v9 suggestLessPeople:v10 completionHandler:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __81__PXPhotoKitAssetCollectionBlockPersonActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v5;
  px_dispatch_on_main_queue();
}

void __81__PXPhotoKitAssetCollectionBlockPersonActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained completeUserInteractionTaskWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

@end