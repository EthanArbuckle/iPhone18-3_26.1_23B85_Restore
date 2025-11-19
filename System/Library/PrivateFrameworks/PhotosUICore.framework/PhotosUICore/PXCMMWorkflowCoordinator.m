@interface PXCMMWorkflowCoordinator
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (PXCMMWorkflowCoordinatorDelegate)delegate;
- (id)_createRootWorkflowViewControllerWithSession:(id)a3 willBeEmbeddedInNavigationController:(BOOL)a4 assetActionManager:(id)a5 assetCollectionActionManager:(id)a6 photosViewConfigurationBlock:(id)a7;
- (id)_performActionWithType:(id)a3 forSession:(id)a4;
- (id)_performPublishActionForSession:(id)a3;
- (id)_presentationEnvironment;
- (id)_presentingViewControllerForViewController:(id)a3;
- (id)completeMyMomentViewController:(id)a3 performActionForSession:(id)a4;
- (id)workflowViewControllerWithContext:(id)a3;
- (id)workflowViewControllerWithContext:(id)a3 embedInNavigationControllerOfClass:(Class)a4;
- (id)workflowViewControllerWithContext:(id)a3 embedInNavigationControllerOfClass:(Class)a4 photosViewConfigurationBlock:(id)a5;
- (id)workflowViewControllerWithSession:(id)a3 embedInNavigationControllerOfClass:(Class)a4 assetActionManager:(id)a5 assetCollectionActionManager:(id)a6 photosViewConfigurationBlock:(id)a7;
- (void)_completeActionForSession:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)_completeMessageComposeActionForSession:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)_completePhotosPickerActionForSession:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)_completePublishForSession:(id)a3 withURL:(id)a4 error:(id)a5;
- (void)_didFinishSession:(id)a3 withState:(unint64_t)a4 avoidDismissal:(BOOL)a5;
- (void)_performCleanupActionForSession:(id)a3;
- (void)_performMessageComposeActionForSession:(id)a3 shareURL:(id)a4;
- (void)_performNotifyIfNeededActionForSession:(id)a3;
- (void)_performPhotosPickerActionForSession:(id)a3 gridPresentation:(id)a4;
- (void)_presentFailureForSession:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_session:(id)a3 finishedAccepting:(BOOL)a4 withError:(id)a5;
- (void)cancelWorkflow;
- (void)completeMyMomentViewController:(id)a3 showPhotoPickerForSession:(id)a4;
- (void)didCancelCompleteMyMomentViewController:(id)a3;
- (void)performQuickSaveForContext:(id)a3 completion:(id)a4;
- (void)startPreloadingTasksForCompleteMyMomentViewController:(id)a3;
@end

@implementation PXCMMWorkflowCoordinator

- (PXCMMWorkflowCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_presentingViewControllerForViewController:(id)a3
{
  v4 = a3;
  v5 = self->_rootWorkflowViewController;
  v6 = [(UIViewController *)v5 presentedViewController];
  v7 = v6;
  if (v6)
  {
    v8 = v6 == v4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    do
    {
      v9 = v5;
      v5 = v7;

      v7 = [(UIViewController *)v5 presentedViewController];
    }

    while (v7 && v7 != v4);
  }

  return v5;
}

- (id)_createRootWorkflowViewControllerWithSession:(id)a3 willBeEmbeddedInNavigationController:(BOOL)a4 assetActionManager:(id)a5 assetCollectionActionManager:(id)a6 photosViewConfigurationBlock:(id)a7
{
  v10 = a4;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 actionManager];
  [v17 setPerformerDelegate:self];

  objc_storeStrong(&self->_rootWorkflowSession, a3);
  v18 = [PXCMMGridController useGridZeroForCMMSession:v13];
  if (v16 || v18)
  {
    v20 = [[PXCMMGridController alloc] initWithCMMSession:v13 enableDismissAction:v10 assetActionManager:v14 assetCollectionActionManager:v15 performerDelegate:self photosViewConfigurationBlock:v16];
    gridController = self->_gridController;
    self->_gridController = v20;

    v19 = [(PXCMMGridController *)self->_gridController gridViewController];
  }

  else
  {
    v19 = [[PXCMMViewController alloc] initWithSession:v13];
    [(PXCMMViewController *)v19 setDelegate:self];
    [(PXCMMViewController *)v19 setActionDelegate:self];
  }

  return v19;
}

- (void)_presentFailureForSession:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 activityType];
  v12 = v10 == 1 || v10 == 4;
  v14 = [(PXCMMWorkflowCoordinator *)self _presentationEnvironment];
  v13 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  PXMomentSharePresentFailureForAction(v13, v12, v9, v14, v8);
}

- (id)_presentationEnvironment
{
  v2 = [(PXCMMWorkflowCoordinator *)self _presentingViewControllerForViewController:0];
  v3 = [off_1E7721960 defaultPresenterWithViewController:v2];

  return v3;
}

- (void)completeMyMomentViewController:(id)a3 showPhotoPickerForSession:(id)a4
{
  v6 = a4;
  v7 = [a3 px_gridPresentation];
  if (v7)
  {
    [(PXCMMWorkflowCoordinator *)self _performPhotosPickerActionForSession:v6 gridPresentation:v7];
  }

  else
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Unable to find grid presentation for CMM workflow", v10, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1003 debugDescription:@"A grid presentation object is required to display the photos picker"];
    [(PXCMMWorkflowCoordinator *)self _completePhotosPickerActionForSession:v6 withSuccess:0 error:v9];
  }
}

- (void)didCancelCompleteMyMomentViewController:(id)a3
{
  v4 = [a3 session];
  [(PXCMMWorkflowCoordinator *)self _didFinishSession:v4 withState:2];
}

- (void)startPreloadingTasksForCompleteMyMomentViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  v6 = [v5 actionManager];
  v7 = [v6 actionPerformerForActionType:@"PXCMMActionTypeAccept"];

  if ([v7 canPerformActionWithSession:v5])
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__PXCMMWorkflowCoordinator_startPreloadingTasksForCompleteMyMomentViewController___block_invoke;
    v14[3] = &unk_1E774B2A0;
    objc_copyWeak(&v16, &location);
    v15 = v5;
    v8 = [v7 performActionWithSession:v15 completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v9 = [v5 actionManager];
  v10 = [v9 actionPerformerForActionType:@"PXCMMActionTypeForceSync"];

  if ([v10 canPerformActionWithSession:v5])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PXCMMWorkflowCoordinator_startPreloadingTasksForCompleteMyMomentViewController___block_invoke_2;
    v12[3] = &unk_1E774C5C0;
    v13 = v5;
    v11 = [v10 performActionWithSession:v13 completionHandler:v12];
  }
}

void __82__PXCMMWorkflowCoordinator_startPreloadingTasksForCompleteMyMomentViewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _session:*(a1 + 32) finishedAccepting:a2 withError:v5];
}

void __82__PXCMMWorkflowCoordinator_startPreloadingTasksForCompleteMyMomentViewController___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v8 = "Successfully forced sync on moment share";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = v5;
    v8 = "Failed to force sync on moment share from session %@ with error: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
    goto LABEL_6;
  }
}

- (void)_session:(id)a3 finishedAccepting:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:426 description:{@"%s must be called on the main thread", "-[PXCMMWorkflowCoordinator _session:finishedAccepting:withError:]"}];
  }

  v11 = PLSharingGetLog();
  v12 = v11;
  if (v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "CMM workflow finished accepting moment share.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "CMM workflow failed to accept moment share: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PXCMMWorkflowCoordinator__session_finishedAccepting_withError___block_invoke;
    v14[3] = &unk_1E774B330;
    objc_copyWeak(&v16, buf);
    v15 = v9;
    [(PXCMMWorkflowCoordinator *)self _presentFailureForSession:v15 error:v10 completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __65__PXCMMWorkflowCoordinator__session_finishedAccepting_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFinishSession:*(a1 + 32) withState:3 avoidDismissal:a2];
}

- (id)completeMyMomentViewController:(id)a3 performActionForSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 activityType];
  v10 = 0;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v12 = [(PXCMMWorkflowCoordinator *)self _performReceiveActionForSession:v8];
      goto LABEL_10;
    }

    if (v9 == 3)
    {
      v11 = [v8 sourceType];
      if (v11 == 1)
      {
        [(PXCMMWorkflowCoordinator *)self _didFinishSession:v8 withState:1];
      }

      else if (!v11)
      {
        v12 = [(PXCMMWorkflowCoordinator *)self _performDeleteActionForSession:v8];
LABEL_10:
        v10 = v12;
        goto LABEL_17;
      }

      v10 = 0;
      goto LABEL_17;
    }

    if (v9 != 4)
    {
      goto LABEL_17;
    }

LABEL_14:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:417 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v9 == 1)
  {
    v12 = [(PXCMMWorkflowCoordinator *)self _performPublishActionForSession:v8];
    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_17:

  return v10;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = v7;
  v10 = [(PXCMMWorkflowCoordinator *)self _presentingViewControllerForViewController:v9];
  v11 = [v10 presentedViewController];
  if (v11 == v9)
  {
    [v10 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Unexpected view controller presented from %@: %@ (expected: %@)", &v14, 0x20u);
    }
  }

  return v11 == v9;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXCMMWorkflowCoordinator *)self _presentingViewControllerForViewController:v7];
  v9 = PLSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Performer: %@ Presenting Action Performer View Controller", buf, 0xCu);
  }

  v10 = PLSharingGetLog();
  v11 = os_signpost_id_make_with_pointer(v10, self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ActionPerformerPresentation", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PXCMMWorkflowCoordinator_actionPerformer_presentViewController___block_invoke;
  v15[3] = &unk_1E774C620;
  v15[4] = self;
  v16 = v6;
  v13 = v6;
  [v8 presentViewController:v7 animated:1 completion:v15];

  return 1;
}

void __66__PXCMMWorkflowCoordinator_actionPerformer_presentViewController___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLSharingGetLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, OS_SIGNPOST_INTERVAL_END, v4, "ActionPerformerPresentation", " enableTelemetry=YES ", &v7, 2u);
    }
  }

  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Performer: %@ Presented Action Performer View Controller", &v7, 0xCu);
  }
}

- (void)_completeActionForSession:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    [(PXCMMWorkflowCoordinator *)self _didFinishSession:v8 withState:1];
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Action failed with error: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PXCMMWorkflowCoordinator__completeActionForSession_withSuccess_error___block_invoke;
    v11[3] = &unk_1E774B330;
    objc_copyWeak(&v13, buf);
    v12 = v8;
    [(PXCMMWorkflowCoordinator *)self _presentFailureForSession:v12 error:v9 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __72__PXCMMWorkflowCoordinator__completeActionForSession_withSuccess_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFinishSession:*(a1 + 32) withState:3];
}

- (void)_completeMessageComposeActionForSession:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  if (!v5)
  {
    v10 = [v8 domain];
    if ([v10 isEqualToString:@"PXCMMErrorDomain"])
    {
      v11 = [v8 code];

      if (v11 == -1007)
      {
        v12 = PLSharingGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "User cancelled message composition", buf, 2u);
        }

LABEL_11:

        [(PXCMMWorkflowCoordinator *)self _performCleanupActionForSession:v9];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Message compose failed with error: %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__PXCMMWorkflowCoordinator__completeMessageComposeActionForSession_withSuccess_error___block_invoke;
    v14[3] = &unk_1E774B308;
    v15 = v8;
    [(PXCMMWorkflowCoordinator *)self _presentFailureForSession:v9 error:v15 completionHandler:v14];
    v12 = v15;
    goto LABEL_11;
  }

  [(PXCMMWorkflowCoordinator *)self _completeActionForSession:v9 withSuccess:1 error:v8];
LABEL_12:
}

void __86__PXCMMWorkflowCoordinator__completeMessageComposeActionForSession_withSuccess_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User confirmed Message compose error alert for error %@", &v4, 0xCu);
  }
}

- (void)_completePhotosPickerActionForSession:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a5;
  if (!a4)
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Photos Picker action failed with error: %@", &v8, 0xCu);
    }
  }
}

- (void)_completePublishForSession:(id)a3 withURL:(id)a4 error:(id)a5
{
  v10 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(PXCMMWorkflowCoordinator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 workflowCoordinator:self didPublishToURL:v8];
      [(PXCMMWorkflowCoordinator *)self _completeActionForSession:v10 withSuccess:1 error:0];
    }

    if ([v10 activityType] == 1 && !objc_msgSend(v10, "sourceType"))
    {
      [(PXCMMWorkflowCoordinator *)self _performMessageComposeActionForSession:v10 shareURL:v8];
    }
  }

  else
  {
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:v10 withSuccess:0 error:a5];
  }
}

- (void)_didFinishSession:(id)a3 withState:(unint64_t)a4 avoidDismissal:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = [v9 activityType];
  if (a4 != 2 && v5 && v10 == 2)
  {
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Staying in receiving VC after session finished.", buf, 2u);
    }
  }

  else
  {
    if (a4 == 1 || v10 != 1)
    {
      if (v10 == 2)
      {
        [(PXCMMWorkflowCoordinator *)self _performNotifyIfNeededActionForSession:v9];
      }
    }

    else
    {
      [(PXCMMWorkflowCoordinator *)self _performCleanupActionForSession:v9];
    }

    v12 = self->_navigationController;
    navigationController = self->_navigationController;
    self->_navigationController = 0;

    v14 = self->_rootWorkflowViewController;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      [(UIViewController *)v15 setDelegate:0];
      [(UIViewController *)v15 setActionDelegate:0];
    }

    rootWorkflowViewController = self->_rootWorkflowViewController;
    self->_rootWorkflowViewController = 0;

    rootWorkflowSession = self->_rootWorkflowSession;
    self->_rootWorkflowSession = 0;

    gridController = self->_gridController;
    self->_gridController = 0;

    v19 = [(PXCMMWorkflowCoordinator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      if (!(v12 | v14))
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"navigationController || workflowViewController"}];
      }

      if (v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = v14;
      }

      [v19 workflowCoordinator:self workflowViewController:v20 didFinishSession:v9 withActivityState:a4];
    }
  }
}

- (void)_performNotifyIfNeededActionForSession:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 actionManager];
  v5 = [v4 actionPerformerForActionType:@"PXCMMActionTypeNotifyWhenReadyIfNeeded"];

  if ([v5 canPerformActionWithSession:v3])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PXCMMWorkflowCoordinator__performNotifyIfNeededActionForSession___block_invoke;
    v8[3] = &unk_1E774C5C0;
    v9 = v3;
    v6 = [v5 performActionWithSession:v9 completionHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Unable to perform notify if needed action. Skipping for session: %@", buf, 0xCu);
    }
  }
}

void __67__PXCMMWorkflowCoordinator__performNotifyIfNeededActionForSession___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "Successfully completed notify if needed action for session: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "Failed to mark moment share as needing notification when ready for session %@ - error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (void)_performCleanupActionForSession:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 actionManager];
  v5 = [v4 actionPerformerForActionType:@"PXCMMActionTypeCleanup"];

  if ([v5 canPerformActionWithSession:v3])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PXCMMWorkflowCoordinator__performCleanupActionForSession___block_invoke;
    v8[3] = &unk_1E774C5C0;
    v9 = v3;
    v6 = [v5 performActionWithSession:v9 completionHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Unable to perform cleanup action. Skipping for session: %@", buf, 0xCu);
    }
  }
}

void __60__PXCMMWorkflowCoordinator__performCleanupActionForSession___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "Successfully cleaned up CMM share for session: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "Failed to clean up for session %@ - error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (void)_performPhotosPickerActionForSession:(id)a3 gridPresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 actionManager];
  v9 = [v8 photosPickerActionPerformer];

  if (v9)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PXCMMWorkflowCoordinator__performPhotosPickerActionForSession_gridPresentation___block_invoke;
    v11[3] = &unk_1E774B2A0;
    objc_copyWeak(&v13, &location);
    v12 = v6;
    [v9 performPhotosPickerActionWithSession:v12 gridPresentation:v7 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for photos picker action, session: %@", v6}];
    [(PXCMMWorkflowCoordinator *)self _completePhotosPickerActionForSession:v6 withSuccess:0 error:v10];
  }
}

void __82__PXCMMWorkflowCoordinator__performPhotosPickerActionForSession_gridPresentation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completePhotosPickerActionForSession:*(a1 + 32) withSuccess:a2 error:v5];
}

- (void)_performMessageComposeActionForSession:(id)a3 shareURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 actionManager];
  v9 = [v8 messageComposeActionPerformer];

  if (v9)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__PXCMMWorkflowCoordinator__performMessageComposeActionForSession_shareURL___block_invoke;
    v11[3] = &unk_1E774B2A0;
    objc_copyWeak(&v13, &location);
    v12 = v6;
    [v9 performMessageComposeActionWithSession:v12 shareURL:v7 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for message compose action, session: %@", v6}];
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:v6 withSuccess:0 error:v10];
  }
}

void __76__PXCMMWorkflowCoordinator__performMessageComposeActionForSession_shareURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeMessageComposeActionForSession:*(a1 + 32) withSuccess:a2 error:v5];
}

- (id)_performPublishActionForSession:(id)a3
{
  v4 = a3;
  v5 = [v4 actionManager];
  v6 = [v5 publishActionPerformer];

  if (v6)
  {
    v7 = [(PXCMMWorkflowCoordinator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 shareOriginForSession:v4 workflowCoordinator:self];
    }

    else
    {
      v8 = 0;
    }

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PXCMMWorkflowCoordinator__performPublishActionForSession___block_invoke;
    v12[3] = &unk_1E774B2C8;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v10 = [v6 performPublishActionWithSession:v13 shareOrigin:v8 completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for publish action, session: %@", v4}];
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:v4 withSuccess:0 error:v9];

    v10 = 0;
  }

  return v10;
}

void __60__PXCMMWorkflowCoordinator__performPublishActionForSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completePublishForSession:*(a1 + 32) withURL:v6 error:v5];
}

- (id)_performActionWithType:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 actionManager];
  v9 = [v8 actionPerformerForActionType:v6];

  if (v9)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__PXCMMWorkflowCoordinator__performActionWithType_forSession___block_invoke;
    v13[3] = &unk_1E774B2A0;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    v10 = [v9 performActionWithSession:v14 completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for action type: %@, session: %@", v6, v7}];
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:v7 withSuccess:0 error:v11];

    v10 = 0;
  }

  return v10;
}

void __62__PXCMMWorkflowCoordinator__performActionWithType_forSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeActionForSession:*(a1 + 32) withSuccess:a2 error:v5];
}

- (void)performQuickSaveForContext:(id)a3 completion:(id)a4
{
  v11 = a4;
  v5 = [a3 createSession];
  v6 = [v5 actionManager];
  v7 = [v6 actionPerformerForActionType:@"PXCMMActionTypeSaveToLibrary"];

  v8 = [v5 viewModel];
  v9 = [v8 selectionManager];
  [v9 performChanges:&__block_literal_global_250788];

  v10 = [v7 performActionWithSession:v5 completionHandler:v11];
}

- (void)cancelWorkflow
{
  if (!self->_rootWorkflowViewController)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"_rootWorkflowViewController"}];
  }

  rootWorkflowSession = self->_rootWorkflowSession;

  [(PXCMMWorkflowCoordinator *)self _didFinishSession:rootWorkflowSession withState:2];
}

- (id)workflowViewControllerWithSession:(id)a3 embedInNavigationControllerOfClass:(Class)a4 assetActionManager:(id)a5 assetCollectionActionManager:(id)a6 photosViewConfigurationBlock:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"session"}];

    if (!a4)
    {
      goto LABEL_5;
    }
  }

  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"!navigationControllerClass || [navigationControllerClass isSubclassOfClass:[UINavigationController class]]"}];
  }

LABEL_5:
  if (self->_rootWorkflowViewController)
  {
    navigationController = self->_navigationController;
    self->_navigationController = 0;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = self->_rootWorkflowViewController;
      [(UIViewController *)v18 setDelegate:0];
      [(UIViewController *)v18 setActionDelegate:0];
    }

    gridController = self->_gridController;
    self->_gridController = 0;

    rootWorkflowViewController = self->_rootWorkflowViewController;
    self->_rootWorkflowViewController = 0;

    rootWorkflowSession = self->_rootWorkflowSession;
    self->_rootWorkflowSession = 0;
  }

  v22 = [(PXCMMWorkflowCoordinator *)self _createRootWorkflowViewControllerWithSession:v13 willBeEmbeddedInNavigationController:a4 != 0 assetActionManager:v14 assetCollectionActionManager:v15 photosViewConfigurationBlock:v16];
  v23 = self->_rootWorkflowViewController;
  self->_rootWorkflowViewController = v22;

  if (a4)
  {
    v24 = [(UIViewController *)self->_rootWorkflowViewController navigationItem];
    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_cancelWorkflow];
    [v24 setLeftBarButtonItem:v25];
    v26 = [[a4 alloc] initWithRootViewController:self->_rootWorkflowViewController];
    v27 = self->_navigationController;
    self->_navigationController = v26;

    [(UINavigationController *)self->_navigationController setModalPresentationStyle:0];
  }

  v28 = self->_navigationController;
  if (!v28)
  {
    v28 = self->_rootWorkflowViewController;
  }

  v29 = v28;

  return v28;
}

- (id)workflowViewControllerWithContext:(id)a3 embedInNavigationControllerOfClass:(Class)a4 photosViewConfigurationBlock:(id)a5
{
  v8 = a5;
  v9 = [a3 createSession];
  v10 = [(PXCMMWorkflowCoordinator *)self workflowViewControllerWithSession:v9 embedInNavigationControllerOfClass:a4 assetActionManager:0 assetCollectionActionManager:0 photosViewConfigurationBlock:v8];

  return v10;
}

- (id)workflowViewControllerWithContext:(id)a3 embedInNavigationControllerOfClass:(Class)a4
{
  v6 = [a3 createSession];
  v7 = [(PXCMMWorkflowCoordinator *)self workflowViewControllerWithSession:v6 embedInNavigationControllerOfClass:a4 assetActionManager:0 assetCollectionActionManager:0 photosViewConfigurationBlock:0];

  return v7;
}

- (id)workflowViewControllerWithContext:(id)a3
{
  v4 = [a3 createSession];
  v5 = [(PXCMMWorkflowCoordinator *)self workflowViewControllerWithSession:v4 embedInNavigationControllerOfClass:0 assetActionManager:0 assetCollectionActionManager:0 photosViewConfigurationBlock:0];

  return v5;
}

@end