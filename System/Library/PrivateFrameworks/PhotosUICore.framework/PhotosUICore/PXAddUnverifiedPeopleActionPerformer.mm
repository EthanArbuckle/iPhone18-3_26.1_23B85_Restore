@interface PXAddUnverifiedPeopleActionPerformer
- (PXAddUnverifiedPeopleActionPerformer)initWithPresentationEnvironment:(id)a3 photoLibrary:(id)a4;
- (void)_createPersonWithPickerResults:(id)a3;
- (void)performUserInteractionTask;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation PXAddUnverifiedPeopleActionPerformer

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_initWeak(&location, self);
  [(PXAddUnverifiedPeopleActionPerformer *)self _createPersonWithPickerResults:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PXAddUnverifiedPeopleActionPerformer_picker_didFinishPicking___block_invoke;
  v9[3] = &unk_1E774C648;
  v9[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v9];
  objc_destroyWeak(&location);
}

- (void)_createPersonWithPickerResults:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PXAddUnverifiedPeopleActionPerformer *)self photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v6 setIncludedDetectionTypes:v7];

    PXMap();
  }
}

void __71__PXAddUnverifiedPeopleActionPerformer__createPersonWithPickerResults___block_invoke_389(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x1E6978990] changeRequestForPerson:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 setManualOrder:+[PXPeopleUtilities manualOrderForInsertingAtEndOfSectionWithType:photoLibrary:](PXPeopleUtilities verified:{"manualOrderForInsertingAtEndOfSectionWithType:photoLibrary:", 0, *(a1 + 40)), 1}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __71__PXAddUnverifiedPeopleActionPerformer__createPersonWithPickerResults___block_invoke_396(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PLPeopleGetLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) localIdentifier];
      v10 = 138412290;
      v11 = v6;
      v7 = "PXAddUnverifiedPeopleActionPerformer: Added person: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) localIdentifier];
    v10 = 138412290;
    v11 = v6;
    v7 = "PXAddUnverifiedPeopleActionPerformer: Failed to add person: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void __71__PXAddUnverifiedPeopleActionPerformer__createPersonWithPickerResults___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPeopleGetLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v7 = "PXAddUnverifiedPeopleActionPerformer: Reset Sort Order for people succeeded";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "PXAddUnverifiedPeopleActionPerformer: Reset Sort Order for people Failed with error: %@.";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

- (void)performUserInteractionTask
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = [(PXAddUnverifiedPeopleActionPerformer *)self photoLibrary];
  [PXPeopleSwiftUtilities fetchAddPeopleCandidatesIn:v2];
  objc_claimAutoreleasedReturnValue();

  PXMap();
}

void __66__PXAddUnverifiedPeopleActionPerformer_performUserInteractionTask__block_invoke_377()
{
  v0 = PLUIGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3C1C000, v0, OS_LOG_TYPE_DEFAULT, "Presented unverified people picker", v1, 2u);
  }
}

- (PXAddUnverifiedPeopleActionPerformer)initWithPresentationEnvironment:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXAddUnverifiedPeopleActionPerformer;
  v8 = [(PXActionPerformer *)&v11 initWithActionType:@"PXActionAddUnverifiedPeople"];
  v9 = v8;
  if (v8)
  {
    [(PXActionPerformer *)v8 setPresentationEnvironment:v6];
    [(PXAddUnverifiedPeopleActionPerformer *)v9 setPhotoLibrary:v7];
  }

  return v9;
}

@end