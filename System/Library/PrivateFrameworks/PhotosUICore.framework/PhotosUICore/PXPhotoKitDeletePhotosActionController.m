@interface PXPhotoKitDeletePhotosActionController
+ (id)suffixForAssets:(id)a3;
+ (id)warningStringForAssets:(id)a3 isDeleting:(BOOL)a4;
+ (void)assetTypeCountsForAssets:(id)a3 photosCount:(int64_t *)a4 videosCount:(int64_t *)a5 othersCount:(int64_t *)a6;
- (PXPhotoKitDeletePhotosActionController)initWithAction:(int64_t)a3 assets:(id)a4 undoManager:(id)a5 delegate:(id)a6;
- (PXPhotoKitDeletePhotosActionControllerDelegate)delegate;
- (void)_dismissConfirmationViewController:(id)a3;
- (void)_ensureMainAlertController;
- (void)_ensureOneTimeConfirmationAlertController;
- (void)_handleFinalConfirmation:(int64_t)a3;
- (void)_handleMainAlertConfirmation:(int64_t)a3;
- (void)_handleOneTimeAlertConfirmed;
- (void)_recordUserConfirmation:(int64_t)a3;
- (void)_recordVariant:(id)a3;
- (void)_runDestructiveActionWithCompletion:(id)a3;
- (void)_showOnetimeConfirmation;
- (void)appWasBackgrounded:(id)a3;
- (void)beginObservingAppBackgroundingEvents;
- (void)getConfirmationMessage:(id *)a3 destructiveButtonTitle:(id *)a4 cancelButtonTitle:(id *)a5 isDestructiveBehavior:(BOOL *)a6;
- (void)performWithWillDeleteHandler:(id)a3 completionHandler:(id)a4;
- (void)ppt_performDeleteWithoutUserConfirmationWithCompletionHandler:(id)a3;
- (void)stopObservingAppBackgroundEvents;
@end

@implementation PXPhotoKitDeletePhotosActionController

- (PXPhotoKitDeletePhotosActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)appWasBackgrounded:(id)a3
{
  v4 = [(PXPhotoKitDeletePhotosActionController *)self _oneTimeConfirmationAlertController];

  if (v4)
  {
    v5 = [(PXPhotoKitDeletePhotosActionController *)self _oneTimeConfirmationAlertController];
    [(PXPhotoKitDeletePhotosActionController *)self _dismissConfirmationViewController:v5];

    [(PXPhotoKitDeletePhotosActionController *)self _setOneTimeConfirmationAlertController:0];
  }

  v6 = [(PXPhotoKitDeletePhotosActionController *)self _mainAlertController];

  if (v6)
  {
    v7 = [(PXPhotoKitDeletePhotosActionController *)self _mainAlertController];
    [(PXPhotoKitDeletePhotosActionController *)self _dismissConfirmationViewController:v7];

    [(PXPhotoKitDeletePhotosActionController *)self _setMainAlertController:0];
  }

  [(PXPhotoKitDeletePhotosActionController *)self _handleFinalConfirmation:2];
}

- (void)stopObservingAppBackgroundEvents
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
}

- (void)beginObservingAppBackgroundingEvents
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_appWasBackgrounded_ name:*MEMORY[0x1E69DDAC8] object:0];
}

- (void)getConfirmationMessage:(id *)a3 destructiveButtonTitle:(id *)a4 cancelButtonTitle:(id *)a5 isDestructiveBehavior:(BOOL *)a6
{
  v89 = *MEMORY[0x1E69E9840];
  v9 = [(PXPhotoKitDeletePhotosActionController *)self _plAssets];
  v62 = [v9 count];
  v71 = v62;
  v10 = PLSuffixForItems();
  v11 = [v9 firstObject];
  v12 = objc_alloc(MEMORY[0x1E69BE898]);
  v13 = [v11 photoLibrary];
  v66 = [v12 initWithPhotoLibrary:v13];

  v14 = 0;
  v15 = 0;
  action = self->_action;
  v17 = 1;
  if (action <= 2)
  {
    if (action >= 2)
    {
      if (action == 2)
      {
        v15 = 0;
        v17 = 0;
        v14 = 0;
        v18 = @"RECOVER_BUTTON_TITLE_";
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_23;
    }

    v60 = v11;
    v20 = [(PXPhotoKitDeletePhotosActionController *)self _assets];
    v21 = PXContentSyndicationAssetCount(v20);
    if (v21 == [v20 count])
    {
      v70[1] = 0;
      v70[2] = 0;
      v22 = PXContentSyndicationRemoveConfirmationTitleAndMessageLocalizedStrings(v20);
      v19 = 0;
      v15 = 0;
      if (v22)
      {
LABEL_16:

        v11 = v60;
        if (!v19)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0;
      v19 = 0;
    }

    v69 = v19;
    v70[0] = v15;
    [v66 getDeletionWarningTitle:0 message:v70 buttonTitle:&v69 forAssets:v9 syndicationAssetCount:v21 clientName:0 style:0];
    v23 = v70[0];

    v24 = v69;
    v19 = v24;
    v15 = v23;
    goto LABEL_16;
  }

  if ((action - 3) < 2)
  {
    v15 = 0;
    v17 = 0;
    v14 = 1;
    v18 = @"UNDELETE_BUTTON_TITLE_";
    goto LABEL_23;
  }

  if (action == 5)
  {
    v27 = @"S";
    if (v62 == 1)
    {
      v27 = &stru_1F1741150;
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EXPUNGE_%@%@_WARNING", v10, v27];
    v15 = PLLocalizedFrameworkString();

    v14 = 0;
    v18 = @"EXPUNGE_BUTTON_TITLE_";
LABEL_23:
    [v66 getAvalancheDeleteWarning:0 actualDeletionCount:&v71 forAssets:v9];
    v29 = v71;
    v63 = v17;
    if (v14 && !v71)
    {
      v56 = v18;
      v57 = v10;
      v59 = a6;
      v61 = v11;
      v58 = a5;
      v30 = [(PXPhotoKitDeletePhotosActionController *)self _assets];
      v31 = [(PXPhotoKitDeletePhotosActionController *)self _plAssets];
      v32 = v30;
      v33 = v31;
      v34 = [MEMORY[0x1E695DFA8] set];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v35 = v32;
      v36 = [v35 countByEnumeratingWithState:&v76 objects:buf count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v77;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v77 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [*(*(&v76 + 1) + 8 * i) uuid];
            if (v40)
            {
              [v34 addObject:v40];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v76 objects:buf count:16];
        }

        while (v37);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v41 = v33;
      v42 = [v41 countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v73;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v73 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = [*(*(&v72 + 1) + 8 * j) pl_uuid];
            if (v46 && [v34 containsObject:v46])
            {
              [v34 removeObject:v46];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v43);
      }

      v47 = [v34 allObjects];

      v48 = PLUIGetLog();
      v10 = v57;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = [(PXPhotoKitDeletePhotosActionController *)self _assets];
        v50 = [v49 count];
        v51 = [(PXPhotoKitDeletePhotosActionController *)self _plAssets];
        v52 = [v51 count];
        *buf = 134218754;
        v82 = v62;
        v83 = 2048;
        v84 = v50;
        v85 = 2048;
        v86 = v52;
        v87 = 2112;
        v88 = v47;
        _os_log_impl(&dword_1A3C1C000, v48, OS_LOG_TYPE_ERROR, "Invalid recover assets state. previousDeletionCount: %ld, assetsCount: %lu, plAssetsCount: %lu, missingUUIDs: %@", buf, 0x2Au);
      }

      v29 = v71;
      a5 = v58;
      a6 = v59;
      v11 = v61;
      v18 = v56;
    }

    if (v29 != 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@S", v18, v10];
      objc_claimAutoreleasedReturnValue();
      PLLocalizedFrameworkString();
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v18, v10];
    v19 = PLLocalizedFrameworkString();
    v26 = a3;
    v25 = a4;

    if (a3)
    {
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  v18 = 0;
  if (action != 6)
  {
    goto LABEL_23;
  }

  v67 = 0;
  v68 = 0;
  [v66 getExpungeWarningMessage:&v68 buttonTitle:&v67 forAssets:v9];
  v15 = v68;
  v19 = v67;
  if (!v19)
  {
LABEL_6:
    v18 = 0;
    v14 = 0;
    v17 = 1;
    v62 = v71;
    goto LABEL_23;
  }

LABEL_17:
  v63 = 1;
  v26 = a3;
  v25 = a4;
  if (a3)
  {
LABEL_51:
    v54 = v15;
    *v26 = v15;
  }

LABEL_52:
  if (v25)
  {
    v55 = v19;
    *v25 = v19;
  }

  if (a5)
  {
    *a5 = PLLocalizedFrameworkString();
  }

  if (a6)
  {
    *a6 = v63;
  }
}

- (void)_dismissConfirmationViewController:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isBeingDismissed])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "Confirmation view controller %@ is already being dismissed.", &v7, 0xCu);
    }
  }

  else
  {
    v5 = [(PXPhotoKitDeletePhotosActionController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 deletePhotosActionController:self dismissConfirmationViewController:v4];
    }

    else
    {
      v6 = PLUIGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Delegate %@ does not support dismissing confirmation view controllers.", &v7, 0xCu);
      }
    }
  }
}

- (void)_handleOneTimeAlertConfirmed
{
  v3 = [(PXPhotoKitDeletePhotosActionController *)self _oneTimeConfirmationAlertController];
  [(PXPhotoKitDeletePhotosActionController *)self _dismissConfirmationViewController:v3];

  [(PXPhotoKitDeletePhotosActionController *)self _setOneTimeConfirmationAlertController:0];
  PLCPLRecordDidNotifyDeleteBehaviorForCurrentAccount();
  v4 = [(PXActionRecord *)self->_record userConfirmation];

  [(PXPhotoKitDeletePhotosActionController *)self _handleFinalConfirmation:v4];
}

- (void)_handleMainAlertConfirmation:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(PXPhotoKitDeletePhotosActionController *)self _recordUserConfirmation:?];
  v5 = (a3 < 5) & (0x1Au >> a3);
  v6 = [(PXPhotoKitDeletePhotosActionController *)self _mainAlertController];
  [(PXPhotoKitDeletePhotosActionController *)self _dismissConfirmationViewController:v6];

  [(PXPhotoKitDeletePhotosActionController *)self _setMainAlertController:0];
  if (v5 == 1 && self->_action <= 1uLL && (-[PXPhotoKitDeletePhotosActionController _plAssets](self, "_plAssets"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 indexOfObjectPassingTest:&__block_literal_global_242], v7, v8 != 0x7FFFFFFFFFFFFFFFLL) && PLCPLShouldNotifyDeleteBehaviorForCurrentAccount())
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[PXPhotoKitDeletePhotosActionController] Will show Onetime Confirmation Sheet.", &v13, 2u);
    }

    [(PXPhotoKitDeletePhotosActionController *)self _showOnetimeConfirmation];
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v5)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "[PXPhotoKitDeletePhotosActionController] Handling Final User Decision Should Delete: %@.", &v13, 0xCu);
    }

    [(PXPhotoKitDeletePhotosActionController *)self _handleFinalConfirmation:a3];
  }
}

- (void)_showOnetimeConfirmation
{
  [(PXPhotoKitDeletePhotosActionController *)self _ensureOneTimeConfirmationAlertController];
  v4 = [(PXPhotoKitDeletePhotosActionController *)self delegate];
  v3 = [(PXPhotoKitDeletePhotosActionController *)self _oneTimeConfirmationAlertController];
  [v4 deletePhotosActionController:self presentConfirmationViewController:v3];
}

- (void)_ensureOneTimeConfirmationAlertController
{
  v3 = [(PXPhotoKitDeletePhotosActionController *)self _oneTimeConfirmationAlertController];

  if (!v3)
  {
    v4 = PLLocalizedFrameworkString();
    v5 = PLLocalizedFrameworkString();
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
    [v6 setPx_shouldForceAlertStyle:1];
    v7 = MEMORY[0x1E69DC648];
    v8 = PLLocalizedFrameworkString();
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __83__PXPhotoKitDeletePhotosActionController__ensureOneTimeConfirmationAlertController__block_invoke;
    v13 = &unk_1E773D838;
    objc_copyWeak(&v14, &location);
    v9 = [v7 actionWithTitle:v8 style:1 handler:&v10];
    [v6 addAction:{v9, v10, v11, v12, v13}];

    [(PXPhotoKitDeletePhotosActionController *)self _setOneTimeConfirmationAlertController:v6];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }
}

void __83__PXPhotoKitDeletePhotosActionController__ensureOneTimeConfirmationAlertController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOneTimeAlertConfirmed];
}

- (void)_ensureMainAlertController
{
  v3 = [(PXPhotoKitDeletePhotosActionController *)self _mainAlertController];

  if (!v3)
  {
    v31[0] = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    [(PXPhotoKitDeletePhotosActionController *)self getConfirmationMessage:&v30 destructiveButtonTitle:&v29 cancelButtonTitle:&v28 isDestructiveBehavior:v31];
    v4 = v30;
    v22 = v29;
    v5 = v28;
    objc_initWeak(&location, self);
    v6 = [(PXPhotoKitDeletePhotosActionController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PXPhotoKitDeletePhotosActionController *)self delegate];
      v9 = [v8 preferredAlertControllerStyleForDeletePhotosActionController:self];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(PXPhotoKitDeletePhotosActionController *)self _assets];
    v11 = [v10 firstObject];
    v12 = [v11 isCloudSharedAsset];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AD60] stringWithString:@"PXSharedAlbumsDeleteAssetWarningTitle"];
      v14 = [PXPhotoKitDeletePhotosActionController suffixForAssets:v10];
      [v13 appendFormat:@"%@", v14];

      v15 = v4;
      v4 = PXLocalizedSharedAlbumsString(v13);

      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v15 preferredStyle:v9];
    }

    else
    {
      if (v9)
      {
        [MEMORY[0x1E69DC650] alertControllerWithTitle:&stru_1F1741150 message:v4 preferredStyle:v9];
      }

      else
      {
        [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:0 preferredStyle:0];
      }
      v16 = ;
    }

    if (v31[0])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x1E69DC648];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__PXPhotoKitDeletePhotosActionController__ensureMainAlertController__block_invoke;
    v25[3] = &unk_1E773D838;
    objc_copyWeak(&v26, &location);
    v19 = [v18 actionWithTitle:v22 style:v17 handler:v25];
    [v16 addAction:v19];

    v20 = MEMORY[0x1E69DC648];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__PXPhotoKitDeletePhotosActionController__ensureMainAlertController__block_invoke_2;
    v23[3] = &unk_1E773D838;
    objc_copyWeak(&v24, &location);
    v21 = [v20 actionWithTitle:v5 style:1 handler:v23];
    [v16 addAction:v21];

    [(PXPhotoKitDeletePhotosActionController *)self _setMainAlertController:v16];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);

    objc_destroyWeak(&location);
  }
}

void __68__PXPhotoKitDeletePhotosActionController__ensureMainAlertController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMainAlertConfirmation:1];
}

void __68__PXPhotoKitDeletePhotosActionController__ensureMainAlertController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMainAlertConfirmation:2];
}

- (void)_runDestructiveActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_record;
  v6 = [(PXActionRecord *)v5 userConfirmation];
  if (v6 <= 4 && ((0x1Au >> v6) & 1) != 0)
  {
    v7 = [(PXPhotoKitDeletePhotosActionController *)self _assets];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_2;
    aBlock[3] = &unk_1E77383F8;
    aBlock[4] = self;
    v8 = v7;
    v25 = v8;
    v9 = _Block_copy(aBlock);
    action = self->_action;
    if (action <= 2)
    {
      if (action < 2)
      {
        v11 = [(PXDestructiveAssetsAction *)[PXDeleteAssetsAction alloc] initWithAssets:v8 record:v5];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_209;
        v21[3] = &unk_1E773A9D8;
        v12 = &v22;
        v22 = &__block_literal_global_203_100582;
        v23 = v4;
        v9[2](v9, v11, v21);
        v13 = v23;
        goto LABEL_10;
      }

      if (action == 2)
      {
        v11 = [(PXAssetsAction *)[PXRecoverAssetsAction alloc] initWithAssets:v8];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_4;
        v14[3] = &unk_1E7747648;
        v12 = &v15;
        v15 = v4;
        v9[2](v9, v11, v14);
        goto LABEL_14;
      }
    }

    else
    {
      if ((action - 3) < 2)
      {
        v11 = [(PXDestructiveAssetsAction *)[PXRestoreAssetsAction alloc] initWithAssets:v8 record:v5];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_3_213;
        v16[3] = &unk_1E7747648;
        v12 = &v17;
        v17 = v4;
        v9[2](v9, v11, v16);
        goto LABEL_14;
      }

      if ((action - 5) < 2)
      {
        v11 = [(PXDestructiveAssetsAction *)[PXExpungeAssetsAction alloc] initWithAssets:v8 record:v5];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_2_211;
        v18[3] = &unk_1E773A9D8;
        v12 = &v19;
        v19 = &__block_literal_global_203_100582;
        v20 = v4;
        v9[2](v9, v11, v18);
        v13 = v20;
LABEL_10:

LABEL_14:
      }
    }

    goto LABEL_16;
  }

  (*(v4 + 2))(v4, 0);
LABEL_16:
}

void __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) undoManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_3;
    v10[3] = &unk_1E7747648;
    v11 = v6;
    [v5 executeWithUndoManager:v7 completionHandler:v10];
  }

  else if ([*(a1 + 40) count])
  {
    v8 = PLUIActionsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Destructive action missing", v9, 2u);
    }

    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    (*(v6 + 2))(v6, 1, 0);
  }
}

uint64_t __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_209(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_2_211(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = *MEMORY[0x1E69DDAA0];
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 removeDefaultImage:v2 forScreen:v3];
  }
}

void __78__PXPhotoKitDeletePhotosActionController__runDestructiveActionWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIActionsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Destructive action failed: %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_handleFinalConfirmation:(int64_t)a3
{
  [(PXPhotoKitDeletePhotosActionController *)self _recordUserConfirmation:?];
  v5 = objc_initWeak(&location, self);
  [(PXPhotoKitDeletePhotosActionController *)self stopObservingAppBackgroundEvents];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PXPhotoKitDeletePhotosActionController__handleFinalConfirmation___block_invoke;
  v9[3] = &unk_1E774B308;
  v9[4] = self;
  v6 = _Block_copy(v9);
  v7 = v6;
  if (a3 <= 4 && ((0x1Au >> a3) & 1) != 0)
  {
    willDeleteHandler = self->_willDeleteHandler;
    if (willDeleteHandler)
    {
      willDeleteHandler[2]();
    }

    [(PXPhotoKitDeletePhotosActionController *)self _runDestructiveActionWithCompletion:v7];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  objc_destroyWeak(&location);
}

void __67__PXPhotoKitDeletePhotosActionController__handleFinalConfirmation___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v7[2](v7, a2);
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
  }

  *(v6 + 16) = 0;
}

- (void)ppt_performDeleteWithoutUserConfirmationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = &__block_literal_global_100593;
  }

  v5 = v4;
  [(PXPhotoKitDeletePhotosActionController *)self _recordVariant:@"ppt"];
  [(PXPhotoKitDeletePhotosActionController *)self _recordUserConfirmation:3];
  [(PXPhotoKitDeletePhotosActionController *)self _runDestructiveActionWithCompletion:v5];
}

- (void)_recordVariant:(id)a3
{
  v4 = [(PXActionRecord *)self->_record withVariant:a3];
  record = self->_record;
  self->_record = v4;
}

- (void)_recordUserConfirmation:(int64_t)a3
{
  record = self->_record;
  v8 = [(PXPhotoKitDeletePhotosActionController *)self _assets];
  v6 = -[PXActionRecord withUserConfirmation:assetCount:](record, "withUserConfirmation:assetCount:", a3, [v8 count]);
  v7 = self->_record;
  self->_record = v6;
}

- (void)performWithWillDeleteHandler:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_completionHandler)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDeletePhotosActionController.m" lineNumber:70 description:{@"Completion handler for %@ should be nil here", self}];
  }

  if (self->_willDeleteHandler)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDeletePhotosActionController.m" lineNumber:71 description:{@"Delete completion handler for %@ should be nil here", self}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PXPhotoKitDeletePhotosActionController_performWithWillDeleteHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7740890;
  v9 = v8;
  aBlock[4] = self;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v7 copy];
  willDeleteHandler = self->_willDeleteHandler;
  self->_willDeleteHandler = v11;

  v13 = [v10 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v13;

  [(PXPhotoKitDeletePhotosActionController *)self beginObservingAppBackgroundingEvents];
  if ([(PXPhotoKitDeletePhotosActionController *)self shouldSkipDeleteConfirmation])
  {
    [(PXPhotoKitDeletePhotosActionController *)self _handleMainAlertConfirmation:3];
  }

  else
  {
    [(PXPhotoKitDeletePhotosActionController *)self _ensureMainAlertController];
    v15 = [(PXPhotoKitDeletePhotosActionController *)self delegate];
    v16 = [(PXPhotoKitDeletePhotosActionController *)self _mainAlertController];
    [v15 deletePhotosActionController:self presentConfirmationViewController:v16];
  }
}

id __89__PXPhotoKitDeletePhotosActionController_performWithWillDeleteHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return [*(a1 + 32) description];
}

- (PXPhotoKitDeletePhotosActionController)initWithAction:(int64_t)a3 assets:(id)a4 undoManager:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PXPhotoKitDeletePhotosActionController;
  v14 = [(PXPhotoKitDeletePhotosActionController *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_action = a3;
    objc_storeStrong(&v14->_undoManager, a5);
    objc_storeWeak(&v15->_delegate, v13);
    objc_storeStrong(&v15->__assets, a4);
    v16 = [MEMORY[0x1E6978630] pl_managedAssetsForAssets:v11];
    plAssets = v15->__plAssets;
    v15->__plAssets = v16;

    v18 = [PXActionRecord alloc];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [(PXActionRecord *)v18 initWithSourceIdentifier:v20 assetCount:[(NSArray *)v15->__assets count]];
    record = v15->_record;
    v15->_record = v21;
  }

  return v15;
}

+ (id)suffixForAssets:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [PXPhotoKitDeletePhotosActionController assetTypeCountsForAssets:v3 photosCount:&v11 videosCount:&v10 othersCount:&v9];

  if (v11 == v4)
  {
    v5 = @"_ONE_PHOTO";
    if (v4 > 1)
    {
      v5 = @"_N_PHOTOS";
    }
  }

  else
  {
    v5 = @"_ONE_ITEM";
    if (v4 > 1)
    {
      v5 = @"_N_ITEMS";
    }

    v6 = @"_N_VIDEOS";
    if (v4 <= 1)
    {
      v6 = @"_ONE_VIDEO";
    }

    if (v10 == v4)
    {
      v5 = v6;
    }
  }

  v7 = v5;

  return v7;
}

+ (id)warningStringForAssets:(id)a3 isDeleting:(BOOL)a4
{
  if (a4)
  {
    v4 = MEMORY[0x1E696AD60];
    v5 = a3;
    v6 = [v4 stringWithString:@"PXPhotoKitUnifiedDestructiveActionPerformer"];
    v7 = [PXPhotoKitDeletePhotosActionController suffixForAssets:v5];

    [v6 appendFormat:@"%@", v7];
    PXLocalizedStringFromTable(v6, @"PhotosUICore");
  }

  else
  {
    v6 = a3;
    PLLocalizedStringForAction();
  }
  v8 = ;

  return v8;
}

+ (void)assetTypeCountsForAssets:(id)a3 photosCount:(int64_t *)a4 videosCount:(int64_t *)a5 othersCount:(int64_t *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([v16 isPhoto])
        {
          ++v13;
        }

        else if ([v16 isVideo])
        {
          ++v11;
        }

        else
        {
          ++v12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
    if (a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (a4)
    {
LABEL_14:
      *a4 = v13;
    }
  }

  if (a5)
  {
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = v12;
  }
}

@end