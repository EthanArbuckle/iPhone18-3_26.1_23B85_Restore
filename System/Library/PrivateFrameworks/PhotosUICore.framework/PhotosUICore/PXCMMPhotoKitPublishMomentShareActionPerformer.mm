@interface PXCMMPhotoKitPublishMomentShareActionPerformer
+ (void)budgetOverridePromptAlertKeysForConfiguration:(id)configuration messageKey:(id *)key actionKey:(id *)actionKey;
- (void)_acceptSuggestion:(id)suggestion completionHandler:(id)handler;
- (void)_budgetOverridePromptForMomentShare:(id)share completedWithOutcome:(BOOL)outcome error:(id)error;
- (void)_createMomentShare;
- (void)_createMomentShareWithCompletionHandler:(id)handler;
- (void)_creatingMomentShareDidCompleteWithMomentShare:(id)share error:(id)error;
- (void)_finalizePublishWithSuccess:(BOOL)success error:(id)error;
- (void)_handleSharingProgressCancellation;
- (void)_performCleanupIfNeeded;
- (void)_presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler:(id)handler;
- (void)_presentBudgetOverridePromptForMomentShare:(id)share completionHandler:(id)handler;
- (void)_presentInternalSharingAlert;
- (void)_presentSharingProgressAlertController;
- (void)_publishMomentShare:(id)share;
- (void)_publishMomentShare:(id)share completionHandler:(id)handler;
- (void)_publishingMomentShare:(id)share didCompleteWithShareURL:(id)l error:(id)error;
- (void)_requestPreviewImageForAsset:(id)asset resultHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXCMMPhotoKitPublishMomentShareActionPerformer

+ (void)budgetOverridePromptAlertKeysForConfiguration:(id)configuration messageKey:(id *)key actionKey:(id *)actionKey
{
  configurationCopy = configuration;
  if (key)
  {
    if (actionKey)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"outMessageKey"}];

    if (actionKey)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"outActionKey"}];

LABEL_3:
  networkType = [configurationCopy networkType];
  useWLAN = [configurationCopy useWLAN];
  assetCount = [configurationCopy assetCount];
  if (useWLAN)
  {
    v12 = @"WLAN";
  }

  else
  {
    v12 = @"WIFI";
  }

  v13 = @"Single";
  if (assetCount > 1)
  {
    v13 = @"Multiple";
  }

  v14 = v13;
  v15 = v12;
  deviceModel = [configurationCopy deviceModel];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXCMMBudgetOverridePromptMessage_%@_%@_%@", v15, v14, deviceModel];

  if (networkType == 2)
  {
    v18 = [v17 stringByAppendingString:@"_Connected"];

    v19 = @"PXCMMBudgetOverridePromptButtonTitle_OverrideOnWifi";
    v17 = v18;
  }

  else
  {
    v19 = @"PXCMMBudgetOverridePromptButtonTitle_Override";
  }

  v20 = v17;
  *key = v17;
  *actionKey = v19;
}

- (void)_performCleanupIfNeeded
{
  momentShare = self->_momentShare;
  if (momentShare)
  {
    PXExpungeMomentShare(momentShare, 0);
  }
}

- (void)_handleSharingProgressCancellation
{
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager cancelImageRequest:self->_thumbnailRequestID];

  defaultManager2 = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager2 cancelImageRequest:self->_previewRequestID];

  progressAlertToken = self->_progressAlertToken;
  self->_progressAlertToken = 0;

  v6 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1001 debugDescription:@"Action Performer was cancelled"];
  [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _finalizePublishWithSuccess:0 error:v6];
}

- (void)_presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  momentShare = self->_momentShare;
  mEMORY[0x1E69BE688] = [MEMORY[0x1E69BE688] sharedBundleController];
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  libraryURL = [systemLibraryPathManager libraryURL];
  v9 = [mEMORY[0x1E69BE688] openBundleAtLibraryURL:libraryURL];

  indicatorFileCoordinator = [v9 indicatorFileCoordinator];
  if ([indicatorFileCoordinator isUserPause])
  {
    v11 = 0;
    if (!momentShare)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = +[PXCompleteMyMomentSettings sharedInstance];
    simulateCPLAlertOnPublish = [v12 simulateCPLAlertOnPublish];

    v11 = simulateCPLAlertOnPublish ^ 1;
    if (!momentShare)
    {
LABEL_11:
      handlerCopy[2](handlerCopy);
      goto LABEL_12;
    }
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v14 = PXLocalizedStringFromTable(@"PXCMMUploadingPausedAlertTitle", @"PhotosUICore");
  v15 = PXLocalizedStringFromTable(@"PXCMMUploadingPausedUserInteractionMessage", @"PhotosUICore");
  PXLocalizedStringFromTable(@"PXCMMUploadingPausedResumeButtonTitle", @"PhotosUICore");
  selfCopy = self;
  v17 = v16 = v9;
  v18 = PXLocalizedStringFromTable(@"PXCMMUploadingPausedUploadLaterButtonTitle", @"PhotosUICore");
  v30 = v15;
  v31 = v14;
  v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v15 preferredStyle:1];
  v20 = MEMORY[0x1E69DC648];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __121__PXCMMPhotoKitPublishMomentShareActionPerformer__presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler___block_invoke;
  v34[3] = &unk_1E7748000;
  v21 = handlerCopy;
  v35 = v21;
  v29 = v17;
  v22 = v17;
  v9 = v16;
  v23 = [v20 actionWithTitle:v22 style:0 handler:v34];
  [v19 addAction:v23];

  v24 = MEMORY[0x1E69DC648];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __121__PXCMMPhotoKitPublishMomentShareActionPerformer__presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler___block_invoke_2;
  v32[3] = &unk_1E7748000;
  v25 = v21;
  v33 = v25;
  v26 = [v24 actionWithTitle:v18 style:0 handler:v32];
  [v19 addAction:v26];

  if (![(PXActionPerformer *)selfCopy presentViewController:v19])
  {
    v27 = PLSharingGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = @"YES";
      _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "Failed to present CPL uploading status alert after publishing: isUserPaused:%@", buf, 0xCu);
    }

    v25[2](v25);
  }

LABEL_12:
}

void __121__PXCMMPhotoKitPublishMomentShareActionPerformer__presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v2 = [objc_alloc(MEMORY[0x1E69789A8]) initWithPhotoLibraryURL:v5];
  v3 = [v2 assetsdClient];
  v4 = [v3 cloudInternalClient];
  [v4 setCloudPhotoLibraryPauseState:0 reason:3];

  (*(*(a1 + 32) + 16))();
}

- (void)_finalizePublishWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  if (self->_didFinalize)
  {
    PXAssertGetLog();
  }

  self->_didFinalize = 1;
  if (!success)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _performCleanupIfNeeded];
  }

  if (self->_progressAlertToken)
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    progressAlertToken = self->_progressAlertToken;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__PXCMMPhotoKitPublishMomentShareActionPerformer__finalizePublishWithSuccess_error___block_invoke;
    v12[3] = &unk_1E774B368;
    v12[4] = self;
    successCopy = success;
    v13 = errorCopy;
    PXSharedLibraryDismissProgressAlertWithPresentationEnvironment(progressAlertToken, presentationEnvironment, v12);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PXCMMPhotoKitPublishMomentShareActionPerformer__finalizePublishWithSuccess_error___block_invoke_3;
    v9[3] = &unk_1E774B368;
    v9[4] = self;
    successCopy2 = success;
    v10 = errorCopy;
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler:v9];
  }
}

void __84__PXCMMPhotoKitPublishMomentShareActionPerformer__finalizePublishWithSuccess_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__PXCMMPhotoKitPublishMomentShareActionPerformer__finalizePublishWithSuccess_error___block_invoke_2;
  v5[3] = &unk_1E774B368;
  v5[4] = v4;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 _presentAlertControllerForCurrentCPLStateIfNeededWithCompletionHandler:v5];
}

- (void)_acceptSuggestion:(id)suggestion completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  handlerCopy = handler;
  v7 = PLSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = suggestionCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Publishing performer: Will mark suggestion as accepted: %@", buf, 0xCu);
  }

  photoLibrary = [suggestionCopy photoLibrary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PXCMMPhotoKitPublishMomentShareActionPerformer__acceptSuggestion_completionHandler___block_invoke;
  v14[3] = &unk_1E774C648;
  v15 = suggestionCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PXCMMPhotoKitPublishMomentShareActionPerformer__acceptSuggestion_completionHandler___block_invoke_2;
  v11[3] = &unk_1E774BD88;
  v12 = v15;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = v15;
  [photoLibrary performChanges:v14 completionHandler:v11];
}

void __86__PXCMMPhotoKitPublishMomentShareActionPerformer__acceptSuggestion_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:*(a1 + 32)];
  [v1 markAccepted];
}

void __86__PXCMMPhotoKitPublishMomentShareActionPerformer__acceptSuggestion_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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
      v9 = "Publishing performer: Did mark suggestion as accepted: %@";
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
    v9 = "Publishing performer: Failed to mark suggestion as accepted: %@, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v14);
}

- (void)_publishingMomentShare:(id)share didCompleteWithShareURL:(id)l error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  lCopy = l;
  errorCopy = error;
  progress = [(PXCMMActionPerformer *)self progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _performCleanupIfNeeded];
    goto LABEL_13;
  }

  if (!lCopy)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _finalizePublishWithSuccess:0 error:errorCopy];
    goto LABEL_13;
  }

  v14 = PLSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    pl_redactedShareURL = [lCopy pl_redactedShareURL];
    *buf = 138543618;
    v30 = pl_redactedShareURL;
    v31 = 2112;
    v32 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Publishing performer: Publish Moment Share succeeded with URL: %{public}@ error: %@", buf, 0x16u);
  }

  [(PXCMMPublishActionPerformer *)self setPublishedURL:lCopy];
  session = [(PXCMMActionPerformer *)self session];
  viewModel = [session viewModel];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __103__PXCMMPhotoKitPublishMomentShareActionPerformer__publishingMomentShare_didCompleteWithShareURL_error___block_invoke;
  v26[3] = &unk_1E77346D0;
  v27 = lCopy;
  v28 = shareCopy;
  [viewModel performChanges:v26];

  session2 = [(PXCMMActionPerformer *)self session];
  if (!session2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:699 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.session", v22}];
LABEL_16:

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    px_descriptionForAssertionMessage = [session2 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:699 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.session", v22, px_descriptionForAssertionMessage}];

    goto LABEL_16;
  }

LABEL_8:
  suggestion = [session2 suggestion];
  if (suggestion)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __103__PXCMMPhotoKitPublishMomentShareActionPerformer__publishingMomentShare_didCompleteWithShareURL_error___block_invoke_2;
    v25[3] = &unk_1E774C5C0;
    v25[4] = self;
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _acceptSuggestion:suggestion completionHandler:v25];
  }

  else
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _finalizePublishWithSuccess:1 error:0];
  }

LABEL_13:
}

void __103__PXCMMPhotoKitPublishMomentShareActionPerformer__publishingMomentShare_didCompleteWithShareURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setShareURL:v3];
  v5 = [*(a1 + 40) uuid];
  [v4 setShareUUID:v5];
}

- (void)_publishMomentShare:(id)share completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  v8 = +[PXCompleteMyMomentSettings sharedInstance];
  simulateMomentShareCreationError = [v8 simulateMomentShareCreationError];

  v10 = +[PXSharingSettings sharedInstance];
  simulateError = [v10 simulateError];

  v12 = +[PXCompleteMyMomentSettings sharedInstance];
  fakeMomentShareURL = [v12 fakeMomentShareURL];

  if (fakeMomentShareURL)
  {
    localIdentifier = [shareCopy localIdentifier];
    v15 = PXURLForCMMShare(0, localIdentifier);

    handlerCopy[2](handlerCopy, v15, 0);
    goto LABEL_21;
  }

  if ((simulateMomentShareCreationError | simulateError))
  {
    v16 = +[PXSharingSettings sharedInstance];
    simulateUserCloudNotAuthenticated = [v16 simulateUserCloudNotAuthenticated];

    if (simulateUserCloudNotAuthenticated)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = @"CloudPhotoLibraryErrorDomain";
      v20 = @"Simulated user needs to verify iCloud Terms and Conditions error, for debugging.";
      v21 = 1006;
    }

    else
    {
      if (simulateError)
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = @"PXSharingSettingsErrorDomain";
        v20 = @"Simulated error, because PXSharingSettings.simulateError is YES";
      }

      else
      {
        if (!simulateMomentShareCreationError)
        {
          v27 = 0;
          goto LABEL_18;
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = @"PXCompleteMyMomentSettingsErrorDomain";
        v20 = @"Simulated error, because PXCompleteMyMomentSettings.simulateMomentShareCreationError is YES";
      }

      v21 = 0;
    }

    v27 = [v18 px_errorWithDomain:v19 code:v21 debugDescription:v20];
LABEL_18:
    v28 = PLSharingGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_DEFAULT, "Publishing performer: Simulating an error due to internal settings: %{public}@", buf, 0xCu);
    }

    (handlerCopy)[2](handlerCopy, 0, v27);
    goto LABEL_21;
  }

  v22 = PLSharingGetLog();
  v23 = os_signpost_id_make_with_pointer(v22, self);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "ActionPerformerMomentSharePublishPublishing", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v25 = PLSharingGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier2 = [shareCopy localIdentifier];
    *buf = 138412290;
    v33 = localIdentifier2;
    _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "Publishing performer: Will publish moment share %@", buf, 0xCu);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __88__PXCMMPhotoKitPublishMomentShareActionPerformer__publishMomentShare_completionHandler___block_invoke;
  v29[3] = &unk_1E77346A8;
  v29[4] = self;
  v30 = shareCopy;
  v31 = handlerCopy;
  [v30 publishMomentShareWithCompletionHandler:v29];

LABEL_21:
}

void __88__PXCMMPhotoKitPublishMomentShareActionPerformer__publishMomentShare_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = PLSharingGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v33) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "ActionPerformerMomentSharePublishPublishing", " enableTelemetry=YES ", &v33, 2u);
    }
  }

  v10 = PLSharingGetLog();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      v14 = *(a1 + 32);
      v15 = *(v14 + 168);
      *(v14 + 168) = v13;

      [v13 timeIntervalSinceDate:*(*(a1 + 32) + 160)];
      v33 = 138412546;
      v34 = v12;
      v35 = 2048;
      v36 = v16;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Publishing performer: %@ Did publish moment share in %f seconds.", &v33, 0x16u);
    }

    v17 = PLSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 40) localIdentifier];
      v33 = 138412290;
      v34 = v18;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "=== Publishing summary of moment share: %@ ===", &v33, 0xCu);
    }

    v19 = PLSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 40) assetCount];
      v33 = 134217984;
      v34 = v20;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "> Number of assets: %lu", &v33, 0xCu);
    }

    v21 = PLSharingGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [*(*(a1 + 32) + 144) timeIntervalSinceDate:*(*(a1 + 32) + 136)];
      v33 = 134217984;
      v34 = v22;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "> 1. Preparing selection: %f", &v33, 0xCu);
    }

    v23 = PLSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [*(*(a1 + 32) + 152) timeIntervalSinceDate:*(*(a1 + 32) + 144)];
      v33 = 134217984;
      v34 = v24;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "> 2. Previews: %f", &v33, 0xCu);
    }

    v25 = PLSharingGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [*(*(a1 + 32) + 160) timeIntervalSinceDate:*(*(a1 + 32) + 152)];
      v33 = 134217984;
      v34 = v26;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "> 3. Creation: %f", &v33, 0xCu);
    }

    v27 = PLSharingGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [*(*(a1 + 32) + 168) timeIntervalSinceDate:*(*(a1 + 32) + 160)];
      v33 = 134217984;
      v34 = v28;
      _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEFAULT, "> 4. Publishing: %f", &v33, 0xCu);
    }

    v29 = PLSharingGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 40);
      v33 = 138412290;
      v34 = v30;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEFAULT, "%@", &v33, 0xCu);
    }

    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 40) localIdentifier];
      v33 = 138412290;
      v34 = v31;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "=== Publishing summary of moment share: %@ ===", &v33, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a1 + 40);
    v33 = 138412546;
    v34 = v5;
    v35 = 2112;
    v36 = v32;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Publish completed without a share URL (error: %@). Cleaning up moment share %@", &v33, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_publishMomentShare:(id)share
{
  shareCopy = share;
  progress = [(PXCMMActionPerformer *)self progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _performCleanupIfNeeded];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PXCMMPhotoKitPublishMomentShareActionPerformer__publishMomentShare___block_invoke;
    v7[3] = &unk_1E77462D0;
    v7[4] = self;
    v8 = shareCopy;
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _publishMomentShare:v8 completionHandler:v7];
  }
}

void __70__PXCMMPhotoKitPublishMomentShareActionPerformer__publishMomentShare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(a1 + 40);
  v7 = v6;
  v8 = v5;
  px_dispatch_on_main_queue();
}

- (void)_presentSharingProgressAlertController
{
  progress = [(PXCMMActionPerformer *)self progress];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__PXCMMPhotoKitPublishMomentShareActionPerformer__presentSharingProgressAlertController__block_invoke;
  v14[3] = &unk_1E774C648;
  v14[4] = self;
  [progress setCancellationHandler:v14];
  v4 = PXLocalizedStringFromTable(@"PXCMMSharingProgressTitle", @"PhotosUICore");
  [MEMORY[0x1E69BE6A8] sharingDisplayNameIncludingEmail:1 allowsEmail:1];
  if (objc_claimAutoreleasedReturnValue())
  {
    PXLocalizedStringFromTable(@"PXCMMSharingProgressMessage", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v6 = presentationEnvironment;
  if (presentationEnvironment)
  {
    v7 = presentationEnvironment;
  }

  else
  {
    delegate = [(PXActionPerformer *)self delegate];
    v7 = [delegate presentationEnvironmentForActionPerformer:self];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PXCMMPhotoKitPublishMomentShareActionPerformer__presentSharingProgressAlertController__block_invoke_3;
  v12[3] = &unk_1E774C648;
  v13 = progress;
  v9 = progress;
  v10 = PXSharedLibraryPresentProgressAlertWithMessagePresentationEnvironment(v4, 0, v7, v12);
  progressAlertToken = self->_progressAlertToken;
  self->_progressAlertToken = v10;
}

- (void)_budgetOverridePromptForMomentShare:(id)share completedWithOutcome:(BOOL)outcome error:(id)error
{
  outcomeCopy = outcome;
  v24 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v9 = shareCopy;
  if (error)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _finalizePublishWithSuccess:0 error:error];
  }

  else if ([shareCopy shouldIgnoreBudgets] == outcomeCopy)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _publishMomentShare:v9];
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (outcomeCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      localIdentifier = [v9 localIdentifier];
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = localIdentifier;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Publishing performer: Will change moment share shouldIgnoreBudget to %@: %@", buf, 0x16u);
    }

    mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __113__PXCMMPhotoKitPublishMomentShareActionPerformer__budgetOverridePromptForMomentShare_completedWithOutcome_error___block_invoke;
    v17[3] = &unk_1E7749428;
    v18 = v9;
    v19 = outcomeCopy;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __113__PXCMMPhotoKitPublishMomentShareActionPerformer__budgetOverridePromptForMomentShare_completedWithOutcome_error___block_invoke_2;
    v14[3] = &unk_1E774B730;
    v15 = v18;
    selfCopy = self;
    [mEMORY[0x1E69789A8] performChanges:v17 completionHandler:v14];
  }
}

void __113__PXCMMPhotoKitPublishMomentShareActionPerformer__budgetOverridePromptForMomentShare_completedWithOutcome_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978938] changeRequestForMomentShare:*(a1 + 32)];
  [v2 setShouldIgnoreBudgets:*(a1 + 40)];
}

void __113__PXCMMPhotoKitPublishMomentShareActionPerformer__budgetOverridePromptForMomentShare_completedWithOutcome_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

uint64_t __113__PXCMMPhotoKitPublishMomentShareActionPerformer__budgetOverridePromptForMomentShare_completedWithOutcome_error___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = PLSharingGetLog();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) localIdentifier];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Publishing performer: Did change moment share shouldIgnoreBudget: %@", &v9, 0xCu);
    }

    return [*(a1 + 40) _publishMomentShare:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) localIdentifier];
      v8 = *(a1 + 48);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Publishing performer: Failed to change moment share shouldIgnoreBudget: %@ with error %@", &v9, 0x16u);
    }

    return [*(a1 + 40) _finalizePublishWithSuccess:0 error:*(a1 + 48)];
  }
}

- (void)_presentBudgetOverridePromptForMomentShare:(id)share completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  v8 = PLSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [shareCopy localIdentifier];
    *buf = 138412290;
    v25 = localIdentifier;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Publishing performer: confirming whether or not to override budgets for moment share %@", buf, 0xCu);
  }

  progressAlertToken = self->_progressAlertToken;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7749350;
  v11 = shareCopy;
  v20 = v11;
  selfCopy = self;
  v23 = progressAlertToken != 0;
  v12 = handlerCopy;
  v22 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (progressAlertToken)
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    v16 = self->_progressAlertToken;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke_331;
    v17[3] = &unk_1E774C2F0;
    v17[4] = self;
    v18 = v14;
    PXSharedLibraryDismissProgressAlertWithPresentationEnvironment(v16, presentationEnvironment, v17);
  }

  else
  {
    (*(v13 + 2))(v13);
  }
}

void __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[PXNetworkStatusMonitor sharedInstance];
  v3 = [v2 bestAvailableNetworkType];

  v4 = MGGetBoolAnswer();
  v19 = +[PXLocalization currentDeviceCanonicalModel];
  v5 = -[PXPublishMomentShareBudgetOverridePromptConfiguration initWithUseWLAN:networkType:assetCount:deviceModel:]([PXPublishMomentShareBudgetOverridePromptConfiguration alloc], "initWithUseWLAN:networkType:assetCount:deviceModel:", v4, v3, [*(a1 + 32) assetCount], v19);
  v27[0] = 0;
  v26 = 0;
  [objc_opt_class() budgetOverridePromptAlertKeysForConfiguration:v5 messageKey:v27 actionKey:&v26];
  v6 = v27[0];
  v7 = v26;
  v8 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
  v9 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
  v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v8 preferredStyle:0];
  v11 = MEMORY[0x1E69DC648];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke_2;
  v23[3] = &unk_1E7734680;
  v25 = *(a1 + 56);
  v12 = *(a1 + 48);
  v23[4] = *(a1 + 40);
  v24 = v12;
  v13 = [v11 actionWithTitle:v9 style:0 handler:v23];
  [v10 addAction:v13];

  v14 = MEMORY[0x1E69DC648];
  v15 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke_324;
  v21[3] = &unk_1E7748000;
  v22 = *(a1 + 48);
  v16 = [v14 actionWithTitle:v15 style:1 handler:v21];
  [v10 addAction:v16];

  LODWORD(v16) = [*(a1 + 40) presentViewController:v10];
  v17 = PLSharingGetLog();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Presenting budget override prompt...", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Publishing performer: Failed to present budget override prompt", buf, 2u);
    }

    v18 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"Failed to present budget override prompt"];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke_331(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Budget override prompt outcome: SHOULD ignore budgets", buf, 2u);
  }

  if (*(a1 + 48) == 1 && ([*(a1 + 32) _presentSharingProgressAlertController], !*(*(a1 + 32) + 104)))
  {
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Publishing performer: Failed to re-present progress alert", v5, 2u);
    }

    v4 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"Failed to re-present progress alert"];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __111__PXCMMPhotoKitPublishMomentShareActionPerformer__presentBudgetOverridePromptForMomentShare_completionHandler___block_invoke_324(uint64_t a1)
{
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Budget override prompt outcome: Upload canceled", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1001 debugDescription:@"Cancelled upload at budget override prompt"];
  (*(*(a1 + 32) + 16))();
}

- (void)_creatingMomentShareDidCompleteWithMomentShare:(id)share error:(id)error
{
  shareCopy = share;
  errorCopy = error;
  objc_storeStrong(&self->_momentShare, share);
  progress = [(PXCMMActionPerformer *)self progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _performCleanupIfNeeded];
  }

  else if (shareCopy)
  {
    if (([shareCopy shouldPromptUserToIgnoreBudgets] & 1) != 0 || (+[PXCompleteMyMomentSettings sharedInstance](PXCompleteMyMomentSettings, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "simulateShouldPromptUserToIgnoreBudgets"), v11, v12))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__PXCMMPhotoKitPublishMomentShareActionPerformer__creatingMomentShareDidCompleteWithMomentShare_error___block_invoke;
      v13[3] = &unk_1E774B730;
      v13[4] = self;
      v14 = shareCopy;
      [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _presentBudgetOverridePromptForMomentShare:v14 completionHandler:v13];
    }

    else
    {
      [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _publishMomentShare:shareCopy];
    }
  }

  else
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _finalizePublishWithSuccess:0 error:errorCopy];
  }
}

- (void)_createMomentShareWithCompletionHandler:(id)handler
{
  v71 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  session = [(PXCMMActionPerformer *)self session];
  if (!session)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:330 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.session", v48}];
LABEL_28:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = objc_opt_class();
    v48 = NSStringFromClass(v49);
    px_descriptionForAssertionMessage = [session px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:330 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.session", v48, px_descriptionForAssertionMessage}];

    goto LABEL_28;
  }

LABEL_3:
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v10 = PLSharingGetLog();
  v11 = os_signpost_id_make_with_pointer(v10, self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ActionPerformerMomentSharePublishSelection", " enableTelemetry=YES ", buf, 2u);
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  initialStartDate = self->_initialStartDate;
  self->_initialStartDate = date;

  dataSource = [selectionSnapshot dataSource];
  if ([selectedIndexPaths count])
  {
    allItemIndexPaths = selectedIndexPaths;
  }

  else
  {
    allItemIndexPaths = [dataSource allItemIndexPaths];

    if ([allItemIndexPaths count] <= 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"selectedIndexPaths.count > 0"}];
    }
  }

  v54 = dataSource;
  photosDataSource = [dataSource photosDataSource];
  v53 = allItemIndexPaths;
  v17 = [photosDataSource assetsAtIndexPaths:allItemIndexPaths];
  originalTitle = [viewModel originalTitle];
  if (!originalTitle)
  {
    v19 = +[PXCompleteMyMomentSettings sharedInstance];
    preventNilTitles = [v19 preventNilTitles];

    if (preventNilTitles)
    {
      originalTitle = &stru_1F1741150;
    }

    else
    {
      originalTitle = 0;
    }
  }

  originatingMomentShare = [session originatingMomentShare];
  v22 = [MEMORY[0x1E6978630] fetchPreviewAssetsForMomentShareCreationWithAssets:v17 options:0];
  firstObject = [v22 firstObject];
  v24 = firstObject;
  v57 = viewModel;
  v55 = selectionSnapshot;
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    firstObject2 = [v17 firstObject];
  }

  v26 = firstObject2;

  progress = [(PXCMMActionPerformer *)self progress];
  v28 = PLSharingGetLog();
  v29 = os_signpost_id_make_with_pointer(v28, self);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = v29;
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v28, OS_SIGNPOST_INTERVAL_END, v30, "ActionPerformerMomentSharePublishSelection", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v31 = PLSharingGetLog();
  v32 = os_signpost_id_make_with_pointer(v31, self);
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v33 = v32;
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v33, "ActionPerformerMomentSharePublishPreview", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v34 = PLSharingGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    date2 = [MEMORY[0x1E695DF00] date];
    previewRequestStartDate = self->_previewRequestStartDate;
    self->_previewRequestStartDate = date2;

    [(NSDate *)date2 timeIntervalSinceDate:self->_initialStartDate];
    *buf = 138412546;
    selfCopy = self;
    v69 = 2048;
    v70 = v37;
    _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "Publishing performer: %@ Did get assets to publish in %f seconds.", buf, 0x16u);
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __90__PXCMMPhotoKitPublishMomentShareActionPerformer__createMomentShareWithCompletionHandler___block_invoke;
  v58[3] = &unk_1E7734658;
  v58[4] = self;
  v59 = v26;
  v60 = v22;
  v61 = progress;
  v62 = session;
  v63 = v17;
  v64 = originalTitle;
  v65 = originatingMomentShare;
  v66 = handlerCopy;
  v38 = handlerCopy;
  v39 = originatingMomentShare;
  v40 = originalTitle;
  v41 = v17;
  v42 = session;
  v43 = progress;
  v44 = v22;
  v45 = v26;
  [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _requestPreviewImageForAsset:v45 resultHandler:v58];
}

void __90__PXCMMPhotoKitPublishMomentShareActionPerformer__createMomentShareWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v45 = a3;
  v46 = v4;
  v5 = PLSharingGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v7;
      WORD2(buf[1]) = 2112;
      *(&buf[1] + 6) = v4;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Publishing performer: %@ Received preview image %@", buf, 0x16u);
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = v46;
    v11 = v8;
    v47 = objc_alloc_init(MEMORY[0x1E6978940]);
    v12 = v10;
    v50 = 0x408C200000000000;
    v13 = v12;
    v14 = [v12 CGImage];
    if (!v14)
    {

      v26 = 0;
      goto LABEL_42;
    }

    v55 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(v53, 0, sizeof(v53));
    *values = 0u;
    DCIM_scaleFromPLImage();
    v16 = 0;
    v17 = buf;
    v18 = values;
    if (v15 != 1.0 && v15 > 0.001)
    {
      valuePtr = v15 * 72.0;
      v19 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
      v20 = *MEMORY[0x1E696D888];
      values[0] = v19;
      v21 = *MEMORY[0x1E696D880];
      buf[0] = v20;
      buf[1] = v21;
      v22 = CFRetain(v19);
      v18 = v53;
      v17 = &buf[2];
      values[1] = v22;
      v16 = 2;
    }

    v51 = 0x3FE6666666666666;
    *v17 = *MEMORY[0x1E696D338];
    *v18 = CFNumberCreate(0, kCFNumberDoubleType, &v51);
    buf[v16 | 1] = *MEMORY[0x1E696D350];
    values[v16 | 1] = CFRetain(*MEMORY[0x1E695E4D0]);
    buf[v16 + 2] = *MEMORY[0x1E696D328];
    values[v16 + 2] = CFNumberCreate(0, kCFNumberDoubleType, &v50);
    LODWORD(valuePtr) = 0;
    v23 = [v12 imageOrientation];
    v24 = v16 + 3;
    if (v23 > 3)
    {
      if (v23 <= 5)
      {
        if (v23 == 4)
        {
          v25 = 2;
        }

        else
        {
          v25 = 4;
        }

        goto LABEL_29;
      }

      if (v23 == 6)
      {
        v25 = 5;
        goto LABEL_29;
      }

      if (v23 == 7)
      {
        v25 = 7;
        goto LABEL_29;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v25 = 8;
        }

        else
        {
          v25 = 6;
        }

        goto LABEL_29;
      }

      if (!v23)
      {
        v25 = 1;
        goto LABEL_29;
      }

      if (v23 == 1)
      {
        v25 = 3;
LABEL_29:
        LODWORD(valuePtr) = v25;
      }
    }

    buf[v24] = *MEMORY[0x1E696DE78];
    values[v24] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v27 = CFDictionaryCreate(0, buf, values, v16 | 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v28 = v16 + 3;
    do
    {
      CFRelease(values[v28]);
      v29 = v28-- + 1;
    }

    while (v29 > 1);
    v30 = [MEMORY[0x1E695DF88] data];
    v31 = v30;
    if (v30 && (v32 = CGImageDestinationCreateWithData(v30, @"public.jpeg", 1uLL, 0), (v33 = v32) != 0))
    {
      CGImageDestinationAddImage(v32, v14, v27);
      v34 = CGImageDestinationFinalize(v33);
      CFRelease(v33);
      if (v34)
      {
        v35 = v31;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    CFRelease(v27);
    v26 = v35;

    if (v26 && [(__CFData *)v26 length]&& [(__CFData *)v26 length]>> 12 <= 0x7C)
    {
      buf[0] = v26;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
      [v47 setPreviewImageData:v36];
      goto LABEL_44;
    }

LABEL_42:
    v36 = PLSharingGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v26;
      _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_ERROR, "Publishing performer: previewImageData missing or too big: %@", buf, 0xCu);
    }

LABEL_44:

    [v47 setKeyAsset:v9];
    [v9 originalFaceAreaRect];
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    if (CGRectIsEmpty(v57))
    {
      [v9 preferredCropRect];
      x = v41;
      y = v42;
      width = v43;
      height = v44;
    }

    [v47 setCropRect:{x, y, width, height, v45}];
    PXMap();
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v45;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Preview image data request failed with error: %@", buf, 0xCu);
  }

  (*(*(a1 + 96) + 16))();
}

void __90__PXCMMPhotoKitPublishMomentShareActionPerformer__createMomentShareWithCompletionHandler___block_invoke_278(void *a1)
{
  v2 = MEMORY[0x1E6978938];
  v3 = a1[4];
  v4 = [MEMORY[0x1E695DF00] date];
  v9 = [v2 creationRequestForMomentShareWithTitle:v3 publicPermission:2 creationDate:v4 createMomentShareAssetsFromAssets:a1[5] creationOptionsPerAsset:a1[6] preview:a1[7] originatingMomentShare:a1[8]];

  v5 = [v9 placeholderForCreatedMomentShare];
  v6 = [v5 localIdentifier];
  v7 = *(a1[9] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __90__PXCMMPhotoKitPublishMomentShareActionPerformer__createMomentShareWithCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) librarySpecificFetchOptions];
    v7 = MEMORY[0x1E6978650];
    v27[0] = *(*(*(a1 + 64) + 8) + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v6];
    v10 = [v9 firstObject];

    [*(a1 + 40) setCompletedUnitCount:{(objc_msgSend(*(a1 + 40), "completedUnitCount") + (objc_msgSend(*(a1 + 40), "totalUnitCount") * 0.24))}];
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = [v10 localIdentifier];
      v14 = [MEMORY[0x1E695DF00] date];
      v15 = *(a1 + 48);
      v16 = *(v15 + 160);
      *(v15 + 160) = v14;

      [v14 timeIntervalSinceDate:*(*(a1 + 48) + 152)];
      v21 = 138412802;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Publishing performer: %@ Did create moment share %@ in %f seconds.", &v21, 0x20u);
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = PLSharingGetLog();
  v19 = os_signpost_id_make_with_pointer(v18, *(a1 + 48));
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, OS_SIGNPOST_INTERVAL_END, v20, "ActionPerformerMomentSharePublishCreation", " enableTelemetry=YES ", &v21, 2u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_createMomentShare
{
  [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _presentSharingProgressAlertController];
  if (self->_progressAlertToken)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__PXCMMPhotoKitPublishMomentShareActionPerformer__createMomentShare__block_invoke;
    v5[3] = &unk_1E7734608;
    v5[4] = self;
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _createMomentShareWithCompletionHandler:v5];
  }

  else
  {
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Publishing performer: Failed to present progress alert", v4, 2u);
    }

    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _finalizePublishWithSuccess:0 error:0];
  }
}

void __68__PXCMMPhotoKitPublishMomentShareActionPerformer__createMomentShare__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  px_dispatch_on_main_queue();
}

- (void)_presentInternalSharingAlert
{
  session = [(PXCMMActionPerformer *)self session];
  if (session)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    px_descriptionForAssertionMessage = [session px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:243 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.session", v23, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:243 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.session", v23}];
  }

LABEL_3:
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if ([PXSharingConfidentialityController confidentialWarningRequiredForShareableSelection:selectionSnapshot])
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Presenting internal sharing alert", buf, 2u);
    }

    v9 = +[PXSharingConfidentialityController confidentialityWarningTitle];
    v10 = +[PXSharingConfidentialityController confidentialFeatureWarningMessage];
    v28 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
    v27 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke;
    aBlock[3] = &unk_1E774C318;
    objc_copyWeak(&v37, buf);
    v11 = _Block_copy(aBlock);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke_250;
    v34[3] = &unk_1E774C318;
    objc_copyWeak(&v35, buf);
    v12 = _Block_copy(v34);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke_255;
    v33[3] = &unk_1E774C648;
    v33[4] = self;
    v13 = _Block_copy(v33);
    v26 = v9;
    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
    v15 = MEMORY[0x1E69DC648];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke_2;
    v31[3] = &unk_1E7748000;
    v16 = v11;
    v32 = v16;
    v17 = [v15 actionWithTitle:v28 style:0 handler:v31];
    [v14 addAction:v17];

    v18 = MEMORY[0x1E69DC648];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke_3;
    v29[3] = &unk_1E7748000;
    v19 = v12;
    v30 = v19;
    v20 = [v18 actionWithTitle:v27 style:0 handler:v29];
    [v14 addAction:v20];

    if (![(PXActionPerformer *)self presentViewController:v14])
    {
      v13[2](v13);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _createMomentShare];
  }
}

void __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke(uint64_t a1)
{
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Accepted internal sharing alert", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _createMomentShare];
}

void __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke_250(uint64_t a1)
{
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled internal sharing alert", v5, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1001 debugDescription:@"Cancelled internal sharing alert"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizePublishWithSuccess:0 error:v3];
}

void __78__PXCMMPhotoKitPublishMomentShareActionPerformer__presentInternalSharingAlert__block_invoke_255(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"Failed to present internal sharing alert"];
  [*(a1 + 32) _finalizePublishWithSuccess:0 error:v2];
}

- (void)performUserInteractionTask
{
  if (+[PXSharingConfidentialityController confidentialityCheckRequired])
  {

    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _presentInternalSharingAlert];
  }

  else
  {

    [(PXCMMPhotoKitPublishMomentShareActionPerformer *)self _createMomentShare];
  }
}

- (void)_requestPreviewImageForAsset:(id)asset resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitPublishMomentShareActionPerformer.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v9 setVersion:0];
  [v9 setSynchronous:0];
  [v9 setDeliveryMode:1];
  [v9 setResizeMode:1];
  [v9 setNetworkAccessAllowed:1];
  pixelWidth = [assetCopy pixelWidth];
  pixelHeight = [assetCopy pixelHeight];
  v12 = pixelWidth * pixelHeight;
  v13 = fminf(sqrtf(607500.0 / v12), 1.0);
  v14 = pixelHeight * v13;
  v15 = pixelWidth * v13;
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__PXCMMPhotoKitPublishMomentShareActionPerformer__requestPreviewImageForAsset_resultHandler___block_invoke;
  v19[3] = &unk_1E774B680;
  v20 = handlerCopy;
  v17 = handlerCopy;
  self->_previewRequestID = [defaultManager requestImageForAsset:assetCopy targetSize:0 contentMode:v9 options:v19 resultHandler:{v15, v14}];
}

void __93__PXCMMPhotoKitPublishMomentShareActionPerformer__requestPreviewImageForAsset_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6978DF0];
  v6 = a2;
  v7 = [a3 objectForKeyedSubscript:v5];
  (*(v4 + 16))(v4, v6, v7);
}

@end