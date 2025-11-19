@interface PUPhotoKitSuggestLessPersonActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitSuggestLessPersonActionPerformer

- (void)performUserInteractionTask
{
  v3 = objc_alloc(MEMORY[0x1E69C3B48]);
  v4 = [(PUAssetActionPerformer *)self undoManager];
  v5 = [v3 initWithUndoManager:v4];
  suggestLessPeopleHelper = self->_suggestLessPeopleHelper;
  self->_suggestLessPeopleHelper = v5;

  [(PXSuggestLessPeopleHelper *)self->_suggestLessPeopleHelper setDelegate:self];
  v7 = self->_suggestLessPeopleHelper;
  v8 = [(PUAssetActionPerformer *)self assets];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PUPhotoKitSuggestLessPersonActionPerformer_performUserInteractionTask__block_invoke;
  v9[3] = &unk_1E7B80280;
  v9[4] = self;
  [(PXSuggestLessPeopleHelper *)v7 suggestLessPeopleFromAssets:v8 completionHandler:v9];
}

void __72__PUPhotoKitSuggestLessPersonActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, char a2, void *a3)
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
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Could not suggest this person less: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PUPhotoKitSuggestLessPersonActionPerformer_performUserInteractionTask__block_invoke_603;
  block[3] = &unk_1E7B805E8;
  v7 = *(a1 + 32);
  v11 = a2;
  block[4] = v7;
  v10 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end