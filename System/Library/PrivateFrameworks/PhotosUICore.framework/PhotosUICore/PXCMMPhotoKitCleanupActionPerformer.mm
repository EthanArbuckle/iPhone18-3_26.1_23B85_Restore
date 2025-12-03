@interface PXCMMPhotoKitCleanupActionPerformer
- (void)_activateSuggestion:(id)suggestion completionHandler:(id)handler;
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitCleanupActionPerformer

- (void)_activateSuggestion:(id)suggestion completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  handlerCopy = handler;
  v7 = PLSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = suggestionCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Will mark suggestion as active: %@", buf, 0xCu);
  }

  photoLibrary = [suggestionCopy photoLibrary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PXCMMPhotoKitCleanupActionPerformer__activateSuggestion_completionHandler___block_invoke;
  v14[3] = &unk_1E774C648;
  v15 = suggestionCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PXCMMPhotoKitCleanupActionPerformer__activateSuggestion_completionHandler___block_invoke_2;
  v11[3] = &unk_1E774BD88;
  v12 = v15;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = v15;
  [photoLibrary performChanges:v14 completionHandler:v11];
}

void __77__PXCMMPhotoKitCleanupActionPerformer__activateSuggestion_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:*(a1 + 32)];
  [v1 markActive];
}

void __77__PXCMMPhotoKitCleanupActionPerformer__activateSuggestion_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v15 = 138412290;
      v16 = v8;
      v9 = "Did mark suggestion as active: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v5;
    v9 = "Failed to mark suggestion as active: %@, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v14);
}

- (void)performBackgroundTask
{
  session = [(PXCMMActionPerformer *)self session];
  viewModel = [session viewModel];
  shareURL = [viewModel shareURL];

  if (shareURL)
  {
    viewModel2 = [session viewModel];
    [viewModel2 performChanges:&__block_literal_global_14954];

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 1;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 1;
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14955;
    v28 = __Block_byref_object_dispose__14956;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__14955;
    v22[4] = __Block_byref_object_dispose__14956;
    v23 = 0;
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_188;
    block[3] = &unk_1E773AD98;
    v18 = shareURL;
    v20 = v32;
    v21 = buf;
    v9 = v7;
    v19 = v9;
    dispatch_async(v8, block);

    suggestion = [session suggestion];
    if (suggestion)
    {
      dispatch_group_enter(v9);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_3;
      v13[3] = &unk_1E774AC98;
      v15 = v30;
      v16 = v22;
      v14 = v9;
      [(PXCMMPhotoKitCleanupActionPerformer *)self _activateSuggestion:suggestion completionHandler:v13];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_4;
    v12[3] = &unk_1E7744670;
    v12[6] = v22;
    v12[7] = buf;
    v12[4] = self;
    v12[5] = v32;
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v12);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
  }

  else
  {
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Cleanup CMM phase without a share URL. Nothing to clean up", buf, 2u);
    }

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }
}

void __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_188(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_2;
  v4[3] = &unk_1E774AC98;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  _PXDeleteMomentShareForURL(v1, 1, v4);
}

void __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_3(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24) == 1 && *(*(*(a1 + 48) + 8) + 40) != 0;
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (!v2)
  {
    v2 = *(*(*(a1 + 48) + 8) + 40);
  }

  return [*(a1 + 32) completeBackgroundTaskWithSuccess:v1 error:v2];
}

void __60__PXCMMPhotoKitCleanupActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

@end