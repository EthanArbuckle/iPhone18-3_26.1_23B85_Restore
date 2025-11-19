@interface PXExitSharedLibraryActionPerformer
- (PXExitSharedLibraryActionPerformer)init;
- (void)_beginExitWithExitAssistantViewController:(id)a3 dismissalHandler:(id)a4;
- (void)_performExitWithExitAssistantViewController:(id)a3 dismissalHandler:(id)a4;
- (void)_presentFailureAlertForSharedLibraryOrPreview:(id)a3 error:(id)a4 dismissalHandler:(id)a5;
- (void)cancelExitAssistantViewController:(id)a3;
- (void)completeExitAssistantViewController:(id)a3 withExitRetentionPolicy:(int64_t)a4;
- (void)performActionWithSharedLibraryOrPreview:(id)a3 shouldConfirmExit:(BOOL)a4 exitRetentionPolicy:(int64_t)a5 presentationEnvironment:(id)a6 completionHandler:(id)a7;
- (void)performUserInteractionTask;
@end

@implementation PXExitSharedLibraryActionPerformer

- (void)completeExitAssistantViewController:(id)a3 withExitRetentionPolicy:(int64_t)a4
{
  v6 = a3;
  [(PXExitSharedLibraryActionPerformer *)self setExitRetentionPolicy:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__PXExitSharedLibraryActionPerformer_completeExitAssistantViewController_withExitRetentionPolicy___block_invoke;
  v8[3] = &unk_1E774B730;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PXExitSharedLibraryActionPerformer *)self _beginExitWithExitAssistantViewController:v7 dismissalHandler:v8];
}

void __98__PXExitSharedLibraryActionPerformer_completeExitAssistantViewController_withExitRetentionPolicy___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__PXExitSharedLibraryActionPerformer_completeExitAssistantViewController_withExitRetentionPolicy___block_invoke_2;
  v9[3] = &unk_1E774B368;
  v11 = a2;
  v9[4] = v7;
  v10 = v5;
  v8 = v5;
  [v7 dismissViewController:v6 completionHandler:v9];
}

- (void)cancelExitAssistantViewController:(id)a3
{
  v4 = a3;
  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Exit assistant cancelled by the user", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PXExitSharedLibraryActionPerformer_cancelExitAssistantViewController___block_invoke;
  v6[3] = &unk_1E774C648;
  v6[4] = self;
  [(PXActionPerformer *)self dismissViewController:v4 completionHandler:v6];
}

void __72__PXExitSharedLibraryActionPerformer_cancelExitAssistantViewController___block_invoke(uint64_t a1)
{
  v2 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Exit Shared Library");
  [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:v2];
}

- (void)_performExitWithExitAssistantViewController:(id)a3 dismissalHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Exit assistant confirmation alert confirmed by the user", buf, 2u);
  }

  v9 = [(PXExitSharedLibraryActionPerformer *)self sharedLibraryOrPreview];
  v10 = [v9 isInPreview];
  [v6 setDisableControlsWithBusyIndicator:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PXExitSharedLibraryActionPerformer__performExitWithExitAssistantViewController_dismissalHandler___block_invoke;
  aBlock[3] = &unk_1E773EE98;
  v11 = v6;
  v22 = v11;
  v26 = v10;
  v12 = v9;
  v23 = v12;
  v13 = v7;
  v24 = self;
  v25 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(PXActionPerformer *)self presentationEnvironment];
  if (v10)
  {
    v16 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Exit assistant will exit shared library preview: %@", buf, 0xCu);
    }

    [v12 exitPreviewWithPresentationEnvironment:v15 completion:v14];
  }

  else
  {
    v17 = [(PXExitSharedLibraryActionPerformer *)self exitRetentionPolicy];
    v18 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = PXSharedLibraryExitRetentionPolicyDescription(v17);
      *buf = 138412546;
      v28 = v12;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Exit assistant will exit shared library: %@ with policy: %{public}@", buf, 0x16u);
    }

    v20 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [v12 exitWithRetentionPolicy:v17 presentationEnvironment:v15 progress:v20 completion:v14];
  }
}

void __99__PXExitSharedLibraryActionPerformer__performExitWithExitAssistantViewController_dismissalHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) setDisableControlsWithBusyIndicator:0];
  if (*(a1 + 64))
  {
    v6 = @" preview";
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  v7 = v6;
  if (a2)
  {
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Exit assistant successfully exited shared library%@: %@", &v16, 0x16u);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      PXPreferencesResetCameraSharingPreferences();
    }

    v10 = *(*(a1 + 56) + 16);
LABEL_14:
    v10();
    goto LABEL_18;
  }

  IsUserCanceledError = PXSharedLibraryIsUserCanceledError(v5);
  v12 = PLSharedLibraryGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (IsUserCanceledError)
  {
    if (v13)
    {
      v14 = *(a1 + 40);
      v16 = 138412802;
      v17 = v7;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "User canceled exit assistant for shared library%@: %@, error: %@", &v16, 0x20u);
    }

    v10 = *(*(a1 + 56) + 16);
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = *(a1 + 40);
    v16 = 138412802;
    v17 = v7;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Exit assistant failed to exit shared library%@: %@, error: %@", &v16, 0x20u);
  }

  [*(a1 + 48) _presentFailureAlertForSharedLibraryOrPreview:*(a1 + 40) error:v5 dismissalHandler:*(a1 + 56)];
LABEL_18:
}

- (void)_beginExitWithExitAssistantViewController:(id)a3 dismissalHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PXSharedLibraryExitRetentionPolicyDescription([(PXExitSharedLibraryActionPerformer *)self exitRetentionPolicy]);
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Exit assistant completed successfully with exitRetentionPolicy: %{public}@", buf, 0xCu);
  }

  if (!self->_shouldConfirmExit)
  {
    [(PXExitSharedLibraryActionPerformer *)self _performExitWithExitAssistantViewController:v6 dismissalHandler:v7];
    goto LABEL_28;
  }

  v10 = [(PXExitSharedLibraryActionPerformer *)self sharedLibraryOrPreview];
  if (![v10 isInPreview])
  {
    v35 = 0;
    *buf = 0;
    v14 = [v10 sourceLibraryInfo];
    [v14 fetchEstimatedAssetsCountsForExit:-[PXExitSharedLibraryActionPerformer exitRetentionPolicy](self imageCount:"exitRetentionPolicy") == 1 videoCount:buf audioCount:&v35 itemCount:{0, 0}];

    v15 = [v10 owner];
    v16 = [v15 isCurrentUser];

    if (v16)
    {
      v17 = @"PXSharedLibraryExit_Confirmation_Owner_Title";
    }

    else
    {
      v17 = @"PXSharedLibraryExit_Confirmation_Participant_Title";
    }

    v13 = PXLocalizedSharedLibraryString(v17);
    if (*buf && v35)
    {
      PXLocalizedSharedLibraryString(@"PXSharedLibraryExit_Confirmation_Message_%lu_Photos_%lu_Videos");
      objc_claimAutoreleasedReturnValue();
    }

    else if (*buf)
    {
      PXLocalizedSharedLibraryString(@"PXSharedLibraryExit_Confirmation_Message_%lu_Photos");
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      if (!v35)
      {
        v11 = 0;
        if (v16)
        {
          v18 = @"PXSharedLibraryExit_Confirmation_Owner_Button_Title";
        }

        else
        {
          v18 = @"PXSharedLibraryExit_Confirmation_Participant_Button_Title";
        }

        v12 = PXLocalizedSharedLibraryString(v18);
        goto LABEL_22;
      }

      PXLocalizedSharedLibraryString(@"PXSharedLibraryExit_Confirmation_Message_%lu_Videos");
      objc_claimAutoreleasedReturnValue();
    }

    PXLocalizedStringWithValidatedFormat();
  }

  v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryExit_Confirmation_Preview_Message_iOS");
  v12 = PXLocalizedSharedLibraryString(@"PXSharedLibraryExit_Confirmation_Preview_Button_Title");
  v13 = 0;
LABEL_22:
  v19 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __97__PXExitSharedLibraryActionPerformer__beginExitWithExitAssistantViewController_dismissalHandler___block_invoke;
  v27[3] = &unk_1E773EE70;
  v28 = v13;
  v29 = v11;
  v30 = v6;
  v31 = v19;
  v32 = v12;
  v33 = self;
  v20 = v7;
  v34 = v20;
  v21 = v12;
  v22 = v19;
  v23 = v11;
  v24 = v13;
  v25 = [(PXActionPerformer *)self presentAlertWithConfigurationHandler:v27];

  if (v25)
  {
    v26 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEFAULT, "Did present the exit assistant confirmation alert", buf, 2u);
    }
  }

  else
  {
    [(PXExitSharedLibraryActionPerformer *)self _handlePresentationErrorWithDismissalHandler:v20];
  }

LABEL_28:
}

void __97__PXExitSharedLibraryActionPerformer__beginExitWithExitAssistantViewController_dismissalHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:*(a1 + 40)];
  [v4 setStyle:0];
  v5 = [*(a1 + 48) exitButtonSourceItem];
  [v4 setSourceItem:v5];

  [v4 addActionWithTitle:*(a1 + 56) style:1 action:&__block_literal_global_162533];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__PXExitSharedLibraryActionPerformer__beginExitWithExitAssistantViewController_dismissalHandler___block_invoke_252;
  v7[3] = &unk_1E774A0E0;
  v6 = *(a1 + 64);
  v7[4] = *(a1 + 72);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  [v4 addActionWithTitle:v6 style:2 action:v7];
}

void __97__PXExitSharedLibraryActionPerformer__beginExitWithExitAssistantViewController_dismissalHandler___block_invoke_2()
{
  v0 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3C1C000, v0, OS_LOG_TYPE_DEFAULT, "Exit assistant confirmation alert cancelled by the user", v1, 2u);
  }
}

- (void)_presentFailureAlertForSharedLibraryOrPreview:(id)a3 error:(id)a4 dismissalHandler:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
  v12 = "MacSyncedAssetsNotificationListManager" + 32;
  if ([v8 isInPreview])
  {
    v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryExit_Error_Preview_Title");
    v14 = 0;
  }

  else
  {
    v15 = [v8 owner];
    v16 = [v15 isCurrentUser];

    if (v16)
    {
      v17 = @"PXSharedLibraryExit_Error_Owner_Title";
    }

    else
    {
      v17 = @"PXSharedLibraryExit_Error_Participant_Title";
    }

    v13 = PXLocalizedSharedLibraryString(v17);
    v18 = [v8 sourceLibraryInfo];
    v35 = 0;
    v34 = 0;
    v19 = [v18 presentServerGeneratedMessageForError:v9 customMessage:&v35 learnMoreURL:&v34];
    v20 = v35;
    v21 = v34;
    if (v19)
    {
      v28 = v20;

      if (v21)
      {
        v27 = PXLocalizedSharedLibraryString(@"PXSharedLibraryExitFailureLearnMoreActionTitle");
        v22 = [off_1E7721440 alloc];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __107__PXExitSharedLibraryActionPerformer__presentFailureAlertForSharedLibraryOrPreview_error_dismissalHandler___block_invoke;
        v32[3] = &unk_1E774C648;
        v33 = v21;
        v23 = [v22 initWithTitle:v27 style:0 action:v32];
        v36[0] = v23;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      }

      else
      {
        v14 = 0;
      }

      v11 = v28;
    }

    else
    {
      v14 = 0;
    }

    v12 = "anager";
  }

  v24 = [(PXActionPerformer *)self presentationEnvironment];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = *(v12 + 63);
  v29[2] = __107__PXExitSharedLibraryActionPerformer__presentFailureAlertForSharedLibraryOrPreview_error_dismissalHandler___block_invoke_2;
  v29[3] = &unk_1E774C2F0;
  v30 = v9;
  v31 = v10;
  v25 = v10;
  v26 = v9;
  PXPresentFailureWithLocalizedTitle(v13, v11, v14, v26, v24, v29);
}

void __107__PXExitSharedLibraryActionPerformer__presentFailureAlertForSharedLibraryOrPreview_error_dismissalHandler___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = *(a1 + 32);
  v4 = [v3 description];
  v5 = v4;
  v6 = &stru_1F1741150;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [v2 px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:v3 debugDescription:{@"%@", v6}];

  (*(*(a1 + 40) + 16))();
}

- (void)performUserInteractionTask
{
  v3 = [(PXExitSharedLibraryActionPerformer *)self sharedLibraryOrPreview];
  v4 = [(PXExitSharedLibraryActionPerformer *)self exitRetentionPolicy];
  if (([v3 isInPreview] & 1) != 0 || v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PXExitSharedLibraryActionPerformer_performUserInteractionTask__block_invoke;
    v12[3] = &unk_1E774C5C0;
    v12[4] = self;
    [(PXExitSharedLibraryActionPerformer *)self _beginExitWithExitAssistantViewController:0 dismissalHandler:v12];
  }

  else
  {
    v5 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Present exit assistant", buf, 2u);
    }

    v6 = [v3 sourceLibraryInfo];
    v15 = 0;
    *buf = 0;
    v13 = 0;
    v14 = 0;
    [v6 fetchEstimatedAssetsCountsForExit:0 imageCount:buf videoCount:&v15 audioCount:&v14 itemCount:&v13];
    v7 = PLLocalizedCountDescription();
    [v6 fetchEstimatedAssetsCountsForExit:1 imageCount:buf videoCount:&v15 audioCount:&v14 itemCount:&v13];
    v8 = PLLocalizedCountDescription();
    v9 = [PXSharedLibraryExitAssistantViewController alloc];
    v10 = [v3 owner];
    v11 = -[PXSharedLibraryExitAssistantViewController initWithOwnerAsCurrentUser:keepAllCountsString:contributedOnlyCountsString:](v9, "initWithOwnerAsCurrentUser:keepAllCountsString:contributedOnlyCountsString:", [v10 isCurrentUser], v7, v8);

    [(PXSharedLibraryExitAssistantViewController *)v11 setDelegate:self];
    if (![(PXActionPerformer *)self presentViewController:v11])
    {
      PXAssertGetLog();
    }
  }
}

- (void)performActionWithSharedLibraryOrPreview:(id)a3 shouldConfirmExit:(BOOL)a4 exitRetentionPolicy:(int64_t)a5 presentationEnvironment:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (!v13)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXExitSharedLibraryActionPerformer.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryOrPreview"}];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXExitSharedLibraryActionPerformer.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    goto LABEL_3;
  }

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(PXExitSharedLibraryActionPerformer *)self setSharedLibraryOrPreview:v13];
  [(PXExitSharedLibraryActionPerformer *)self setShouldConfirmExit:v10];
  [(PXExitSharedLibraryActionPerformer *)self setExitRetentionPolicy:a5];
  [(PXActionPerformer *)self setPresentationEnvironment:v14];
  v18.receiver = self;
  v18.super_class = PXExitSharedLibraryActionPerformer;
  [(PXActionPerformer *)&v18 performActionWithCompletionHandler:v15];
}

- (PXExitSharedLibraryActionPerformer)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7.receiver = self;
  v7.super_class = PXExitSharedLibraryActionPerformer;
  v5 = [(PXActionPerformer *)&v7 initWithActionType:v4];

  return v5;
}

@end