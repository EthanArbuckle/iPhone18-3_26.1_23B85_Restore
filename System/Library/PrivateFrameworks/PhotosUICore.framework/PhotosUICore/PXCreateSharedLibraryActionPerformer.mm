@interface PXCreateSharedLibraryActionPerformer
- (PXCreateSharedLibraryActionPerformer)initWithSharedLibraryStatusProvider:(id)a3;
- (void)assistantController:(id)a3 completedWithError:(id)a4;
- (void)performActionWithLegacyDevicesFallbackMonitor:(id)a3 presentationEnvironment:(id)a4 completionHandler:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXCreateSharedLibraryActionPerformer

- (void)assistantController:(id)a3 completedWithError:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [v7 setDelegate:0];
  v9 = [v7 context];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v9 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCreateSharedLibraryActionPerformer.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assistantController.context", v22, v24}];
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"PXCreateSharedLibraryActionPerformer.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assistantController.context", v22}];
  }

LABEL_3:
  if (v8)
  {
    if (PXAssistantIsUserCanceledError(v8))
    {
      v10 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Setup assistant cancelled by the user for context: %@", buf, 0xCu);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke;
      v33[3] = &unk_1E774C620;
      v33[4] = self;
      v34 = v8;
      [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v33];
      v11 = v34;
LABEL_21:

      goto LABEL_22;
    }

    if ([v8 code] != -1002)
    {
      v18 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v9;
        v37 = 2112;
        v38 = v8;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Setup assistant failed for context: %@, error: %@", buf, 0x16u);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_223;
      v26[3] = &unk_1E774C620;
      v26[4] = self;
      v27 = v8;
      [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v26];
      v11 = v27;
      goto LABEL_21;
    }

    v13 = [(PXCreateSharedLibraryActionPerformer *)self statusProvider];
    v14 = [v13 fetchSharedLibrary];
    if (v14 || ([v13 fetchPreview], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Setup assistant cancelled by the user calling for destruction of progress for context: %@", buf, 0xCu);
      }

      v17 = [(PXActionPerformer *)self presentationEnvironment];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_220;
      v30[3] = &unk_1E774AEC0;
      v30[4] = self;
      v31 = v7;
      v32 = v8;
      _ExitSharedLibraryOrPreview(v15, 0, 1, v17, @"PXCreateSharedLibraryActionPerformer", v30);
    }

    else
    {
      v19 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "Setup assistant cancelled by the user with destruction of progress, but no preview library could be found to delete.", buf, 2u);
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_222;
      v28[3] = &unk_1E774C620;
      v28[4] = self;
      v29 = v8;
      [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v28];
    }
  }

  else
  {
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Setup assistant completed for context: %@", buf, 0xCu);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_224;
    v25[3] = &unk_1E774C648;
    v25[4] = self;
    [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v25];
  }

LABEL_22:
}

void __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_220(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_2;
  v3[3] = &unk_1E774C620;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 dismissViewController:v2 completionHandler:v3];
}

- (void)performUserInteractionTask
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PXCreateSharedLibraryActionPerformer *)self statusProvider];
  v4 = [v3 fetchSharedLibrary];
  v5 = [v3 fetchExiting];
  if (v4 | v5)
  {
    PXAssertGetLog();
  }

  v6 = [v3 fetchPreview];
  v7 = v6;
  if (v6 && ([v6 owner], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isCurrentUser"), v8, (v9 & 1) == 0))
  {
    v11 = [(PXCreateSharedLibraryActionPerformer *)self legacyDevicesFallbackMonitor];
    v13 = [PXSharedLibraryAssistantContext replyAssistantContextWithSharedLibraryStatusProvider:v3 sharedLibrary:v7 legacyDevicesFallbackMonitor:v11];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    else
    {
      [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    }
    v10 = ;
    v11 = [[PXSharedLibrarySourceLibraryInfoPhotoKit alloc] initWithPhotoLibrary:v10];

    v12 = [(PXCreateSharedLibraryActionPerformer *)self legacyDevicesFallbackMonitor];
    v13 = [PXSharedLibraryAssistantContext setupAssistantContextWithSharedLibraryStatusProvider:v3 sharedLibrary:v7 sourceLibraryInfo:v11 legacyDevicesFallbackMonitor:v12];
  }

  v14 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Present setup assistant with context: %@", &v16, 0xCu);
  }

  v15 = [[PXAssistantController alloc] initWithContext:v13];
  [(PXAssistantController *)v15 setDelegate:self];
  if (![(PXActionPerformer *)self presentViewController:v15])
  {
    PXAssertGetLog();
  }
}

- (void)performActionWithLegacyDevicesFallbackMonitor:(id)a3 presentationEnvironment:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCreateSharedLibraryActionPerformer.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  [(PXCreateSharedLibraryActionPerformer *)self setLegacyDevicesFallbackMonitor:v9];
  [(PXActionPerformer *)self setPresentationEnvironment:v10];
  v13.receiver = self;
  v13.super_class = PXCreateSharedLibraryActionPerformer;
  [(PXActionPerformer *)&v13 performActionWithCompletionHandler:v11];
}

- (PXCreateSharedLibraryActionPerformer)initWithSharedLibraryStatusProvider:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10.receiver = self;
  v10.super_class = PXCreateSharedLibraryActionPerformer;
  v8 = [(PXActionPerformer *)&v10 initWithActionType:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_statusProvider, a3);
  }

  return v8;
}

@end