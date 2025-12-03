@interface PXPhotoKitAssetCollectionBlockPersonActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForPerson:(id)person;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForPerson:(id)person;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionBlockPersonActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v5 = PXFirstPersonFromAssetCollectionActionPerformerInput(inputs);
  v6 = [self systemImageNameForPerson:v5];

  return v6;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  v11 = inputsCopy;
  if (case - 1 >= 2)
  {
    if (!case)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionBlockPersonActionPerformer.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  else
  {
    v12 = PXFirstPersonFromAssetCollectionActionPerformerInput(inputsCopy);
    v13 = [self localizedTitleForPerson:v12];
  }

  return v13;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  if (objc_opt_respondsToSelector())
  {
    people = [inputsCopy people];
  }

  else
  {
    people = 0;
  }

  if ([people count] == 1)
  {
    v7 = [self canPerformOn:people];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)systemImageNameForPerson:(id)person
{
  personCopy = person;
  [personCopy fetchPropertySetsIfNeeded];
  userFeedbackProperties = [personCopy userFeedbackProperties];

  userFeedback = [userFeedbackProperties userFeedback];

  if (userFeedback)
  {
    return @"plus.circle";
  }

  else
  {
    return @"xmark.circle";
  }
}

+ (id)localizedTitleForPerson:(id)person
{
  personCopy = person;
  px_localizedName = [personCopy px_localizedName];
  [personCopy fetchPropertySetsIfNeeded];
  userFeedbackProperties = [personCopy userFeedbackProperties];
  userFeedback = [userFeedbackProperties userFeedback];

  v7 = [px_localizedName length];
  if (userFeedback)
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
      PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, v8);
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v9 = @"PXPeopleBlockPersonActionTitleNoName";
  }

  v10 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, v9);

  return v10;
}

- (void)performUserInteractionTask
{
  v19 = *MEMORY[0x1E69E9840];
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = firstObject;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to block person: %@", buf, 0xCu);
  }

  photoLibrary = [firstObject photoLibrary];

  if (!photoLibrary)
  {
    [firstObject photoLibrary];
    v11 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Failed to block person because person and/or its photo library was nil. Person: %@ photoLibrary: %@", firstObject, objc_claimAutoreleasedReturnValue()}];
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
  v16 = firstObject;
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