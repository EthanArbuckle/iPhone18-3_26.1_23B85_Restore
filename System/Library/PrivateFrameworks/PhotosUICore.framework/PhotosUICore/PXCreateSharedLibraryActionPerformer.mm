@interface PXCreateSharedLibraryActionPerformer
- (PXCreateSharedLibraryActionPerformer)initWithSharedLibraryStatusProvider:(id)provider;
- (void)assistantController:(id)controller completedWithError:(id)error;
- (void)performActionWithLegacyDevicesFallbackMonitor:(id)monitor presentationEnvironment:(id)environment completionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXCreateSharedLibraryActionPerformer

- (void)assistantController:(id)controller completedWithError:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  [controllerCopy setDelegate:0];
  context = [controllerCopy context];
  if (context)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    px_descriptionForAssertionMessage = [context px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedLibraryActionPerformer.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assistantController.context", v22, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedLibraryActionPerformer.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assistantController.context", v22}];
  }

LABEL_3:
  if (errorCopy)
  {
    if (PXAssistantIsUserCanceledError(errorCopy))
    {
      v10 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = context;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Setup assistant cancelled by the user for context: %@", buf, 0xCu);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke;
      v33[3] = &unk_1E774C620;
      v33[4] = self;
      v34 = errorCopy;
      [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v33];
      v11 = v34;
LABEL_21:

      goto LABEL_22;
    }

    if ([errorCopy code] != -1002)
    {
      v18 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = context;
        v37 = 2112;
        v38 = errorCopy;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Setup assistant failed for context: %@, error: %@", buf, 0x16u);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_223;
      v26[3] = &unk_1E774C620;
      v26[4] = self;
      v27 = errorCopy;
      [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v26];
      v11 = v27;
      goto LABEL_21;
    }

    statusProvider = [(PXCreateSharedLibraryActionPerformer *)self statusProvider];
    fetchSharedLibrary = [statusProvider fetchSharedLibrary];
    if (fetchSharedLibrary || ([statusProvider fetchPreview], (fetchSharedLibrary = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = fetchSharedLibrary;
      v16 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = context;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Setup assistant cancelled by the user calling for destruction of progress for context: %@", buf, 0xCu);
      }

      presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_220;
      v30[3] = &unk_1E774AEC0;
      v30[4] = self;
      v31 = controllerCopy;
      v32 = errorCopy;
      _ExitSharedLibraryOrPreview(v15, 0, 1, presentationEnvironment, @"PXCreateSharedLibraryActionPerformer", v30);
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
      v29 = errorCopy;
      [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v28];
    }
  }

  else
  {
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = context;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Setup assistant completed for context: %@", buf, 0xCu);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__PXCreateSharedLibraryActionPerformer_assistantController_completedWithError___block_invoke_224;
    v25[3] = &unk_1E774C648;
    v25[4] = self;
    [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v25];
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
  statusProvider = [(PXCreateSharedLibraryActionPerformer *)self statusProvider];
  fetchSharedLibrary = [statusProvider fetchSharedLibrary];
  fetchExiting = [statusProvider fetchExiting];
  if (fetchSharedLibrary | fetchExiting)
  {
    PXAssertGetLog();
  }

  fetchPreview = [statusProvider fetchPreview];
  v7 = fetchPreview;
  if (fetchPreview && ([fetchPreview owner], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isCurrentUser"), v8, (v9 & 1) == 0))
  {
    legacyDevicesFallbackMonitor = [(PXCreateSharedLibraryActionPerformer *)self legacyDevicesFallbackMonitor];
    v13 = [PXSharedLibraryAssistantContext replyAssistantContextWithSharedLibraryStatusProvider:statusProvider sharedLibrary:v7 legacyDevicesFallbackMonitor:legacyDevicesFallbackMonitor];
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
    legacyDevicesFallbackMonitor = [[PXSharedLibrarySourceLibraryInfoPhotoKit alloc] initWithPhotoLibrary:v10];

    legacyDevicesFallbackMonitor2 = [(PXCreateSharedLibraryActionPerformer *)self legacyDevicesFallbackMonitor];
    v13 = [PXSharedLibraryAssistantContext setupAssistantContextWithSharedLibraryStatusProvider:statusProvider sharedLibrary:v7 sourceLibraryInfo:legacyDevicesFallbackMonitor legacyDevicesFallbackMonitor:legacyDevicesFallbackMonitor2];
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

- (void)performActionWithLegacyDevicesFallbackMonitor:(id)monitor presentationEnvironment:(id)environment completionHandler:(id)handler
{
  monitorCopy = monitor;
  environmentCopy = environment;
  handlerCopy = handler;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedLibraryActionPerformer.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  [(PXCreateSharedLibraryActionPerformer *)self setLegacyDevicesFallbackMonitor:monitorCopy];
  [(PXActionPerformer *)self setPresentationEnvironment:environmentCopy];
  v13.receiver = self;
  v13.super_class = PXCreateSharedLibraryActionPerformer;
  [(PXActionPerformer *)&v13 performActionWithCompletionHandler:handlerCopy];
}

- (PXCreateSharedLibraryActionPerformer)initWithSharedLibraryStatusProvider:(id)provider
{
  providerCopy = provider;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10.receiver = self;
  v10.super_class = PXCreateSharedLibraryActionPerformer;
  v8 = [(PXActionPerformer *)&v10 initWithActionType:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_statusProvider, provider);
  }

  return v8;
}

@end