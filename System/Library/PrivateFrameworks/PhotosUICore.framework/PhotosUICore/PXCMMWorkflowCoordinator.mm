@interface PXCMMWorkflowCoordinator
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (PXCMMWorkflowCoordinatorDelegate)delegate;
- (id)_createRootWorkflowViewControllerWithSession:(id)session willBeEmbeddedInNavigationController:(BOOL)controller assetActionManager:(id)manager assetCollectionActionManager:(id)actionManager photosViewConfigurationBlock:(id)block;
- (id)_performActionWithType:(id)type forSession:(id)session;
- (id)_performPublishActionForSession:(id)session;
- (id)_presentationEnvironment;
- (id)_presentingViewControllerForViewController:(id)controller;
- (id)completeMyMomentViewController:(id)controller performActionForSession:(id)session;
- (id)workflowViewControllerWithContext:(id)context;
- (id)workflowViewControllerWithContext:(id)context embedInNavigationControllerOfClass:(Class)class;
- (id)workflowViewControllerWithContext:(id)context embedInNavigationControllerOfClass:(Class)class photosViewConfigurationBlock:(id)block;
- (id)workflowViewControllerWithSession:(id)session embedInNavigationControllerOfClass:(Class)class assetActionManager:(id)manager assetCollectionActionManager:(id)actionManager photosViewConfigurationBlock:(id)block;
- (void)_completeActionForSession:(id)session withSuccess:(BOOL)success error:(id)error;
- (void)_completeMessageComposeActionForSession:(id)session withSuccess:(BOOL)success error:(id)error;
- (void)_completePhotosPickerActionForSession:(id)session withSuccess:(BOOL)success error:(id)error;
- (void)_completePublishForSession:(id)session withURL:(id)l error:(id)error;
- (void)_didFinishSession:(id)session withState:(unint64_t)state avoidDismissal:(BOOL)dismissal;
- (void)_performCleanupActionForSession:(id)session;
- (void)_performMessageComposeActionForSession:(id)session shareURL:(id)l;
- (void)_performNotifyIfNeededActionForSession:(id)session;
- (void)_performPhotosPickerActionForSession:(id)session gridPresentation:(id)presentation;
- (void)_presentFailureForSession:(id)session error:(id)error completionHandler:(id)handler;
- (void)_session:(id)_session finishedAccepting:(BOOL)accepting withError:(id)error;
- (void)cancelWorkflow;
- (void)completeMyMomentViewController:(id)controller showPhotoPickerForSession:(id)session;
- (void)didCancelCompleteMyMomentViewController:(id)controller;
- (void)performQuickSaveForContext:(id)context completion:(id)completion;
- (void)startPreloadingTasksForCompleteMyMomentViewController:(id)controller;
@end

@implementation PXCMMWorkflowCoordinator

- (PXCMMWorkflowCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_presentingViewControllerForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_rootWorkflowViewController;
  presentedViewController = [(UIViewController *)v5 presentedViewController];
  presentedViewController2 = presentedViewController;
  if (presentedViewController)
  {
    v8 = presentedViewController == controllerCopy;
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
      v5 = presentedViewController2;

      presentedViewController2 = [(UIViewController *)v5 presentedViewController];
    }

    while (presentedViewController2 && presentedViewController2 != controllerCopy);
  }

  return v5;
}

- (id)_createRootWorkflowViewControllerWithSession:(id)session willBeEmbeddedInNavigationController:(BOOL)controller assetActionManager:(id)manager assetCollectionActionManager:(id)actionManager photosViewConfigurationBlock:(id)block
{
  controllerCopy = controller;
  sessionCopy = session;
  managerCopy = manager;
  actionManagerCopy = actionManager;
  blockCopy = block;
  actionManager = [sessionCopy actionManager];
  [actionManager setPerformerDelegate:self];

  objc_storeStrong(&self->_rootWorkflowSession, session);
  v18 = [PXCMMGridController useGridZeroForCMMSession:sessionCopy];
  if (blockCopy || v18)
  {
    v20 = [[PXCMMGridController alloc] initWithCMMSession:sessionCopy enableDismissAction:controllerCopy assetActionManager:managerCopy assetCollectionActionManager:actionManagerCopy performerDelegate:self photosViewConfigurationBlock:blockCopy];
    gridController = self->_gridController;
    self->_gridController = v20;

    gridViewController = [(PXCMMGridController *)self->_gridController gridViewController];
  }

  else
  {
    gridViewController = [[PXCMMViewController alloc] initWithSession:sessionCopy];
    [(PXCMMViewController *)gridViewController setDelegate:self];
    [(PXCMMViewController *)gridViewController setActionDelegate:self];
  }

  return gridViewController;
}

- (void)_presentFailureForSession:(id)session error:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  activityType = [session activityType];
  v12 = activityType == 1 || activityType == 4;
  _presentationEnvironment = [(PXCMMWorkflowCoordinator *)self _presentationEnvironment];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  PXMomentSharePresentFailureForAction(px_deprecated_appPhotoLibrary, v12, errorCopy, _presentationEnvironment, handlerCopy);
}

- (id)_presentationEnvironment
{
  v2 = [(PXCMMWorkflowCoordinator *)self _presentingViewControllerForViewController:0];
  v3 = [off_1E7721960 defaultPresenterWithViewController:v2];

  return v3;
}

- (void)completeMyMomentViewController:(id)controller showPhotoPickerForSession:(id)session
{
  sessionCopy = session;
  px_gridPresentation = [controller px_gridPresentation];
  if (px_gridPresentation)
  {
    [(PXCMMWorkflowCoordinator *)self _performPhotosPickerActionForSession:sessionCopy gridPresentation:px_gridPresentation];
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
    [(PXCMMWorkflowCoordinator *)self _completePhotosPickerActionForSession:sessionCopy withSuccess:0 error:v9];
  }
}

- (void)didCancelCompleteMyMomentViewController:(id)controller
{
  session = [controller session];
  [(PXCMMWorkflowCoordinator *)self _didFinishSession:session withState:2];
}

- (void)startPreloadingTasksForCompleteMyMomentViewController:(id)controller
{
  controllerCopy = controller;
  session = [controllerCopy session];
  actionManager = [session actionManager];
  v7 = [actionManager actionPerformerForActionType:@"PXCMMActionTypeAccept"];

  if ([v7 canPerformActionWithSession:session])
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__PXCMMWorkflowCoordinator_startPreloadingTasksForCompleteMyMomentViewController___block_invoke;
    v14[3] = &unk_1E774B2A0;
    objc_copyWeak(&v16, &location);
    v15 = session;
    v8 = [v7 performActionWithSession:v15 completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  actionManager2 = [session actionManager];
  v10 = [actionManager2 actionPerformerForActionType:@"PXCMMActionTypeForceSync"];

  if ([v10 canPerformActionWithSession:session])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PXCMMWorkflowCoordinator_startPreloadingTasksForCompleteMyMomentViewController___block_invoke_2;
    v12[3] = &unk_1E774C5C0;
    v13 = session;
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

- (void)_session:(id)_session finishedAccepting:(BOOL)accepting withError:(id)error
{
  acceptingCopy = accepting;
  v19 = *MEMORY[0x1E69E9840];
  _sessionCopy = _session;
  errorCopy = error;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:426 description:{@"%s must be called on the main thread", "-[PXCMMWorkflowCoordinator _session:finishedAccepting:withError:]"}];
  }

  v11 = PLSharingGetLog();
  v12 = v11;
  if (acceptingCopy)
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
      v18 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "CMM workflow failed to accept moment share: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PXCMMWorkflowCoordinator__session_finishedAccepting_withError___block_invoke;
    v14[3] = &unk_1E774B330;
    objc_copyWeak(&v16, buf);
    v15 = _sessionCopy;
    [(PXCMMWorkflowCoordinator *)self _presentFailureForSession:v15 error:errorCopy completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __65__PXCMMWorkflowCoordinator__session_finishedAccepting_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFinishSession:*(a1 + 32) withState:3 avoidDismissal:a2];
}

- (id)completeMyMomentViewController:(id)controller performActionForSession:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  activityType = [sessionCopy activityType];
  v10 = 0;
  if (activityType > 1)
  {
    if (activityType == 2)
    {
      v12 = [(PXCMMWorkflowCoordinator *)self _performReceiveActionForSession:sessionCopy];
      goto LABEL_10;
    }

    if (activityType == 3)
    {
      sourceType = [sessionCopy sourceType];
      if (sourceType == 1)
      {
        [(PXCMMWorkflowCoordinator *)self _didFinishSession:sessionCopy withState:1];
      }

      else if (!sourceType)
      {
        v12 = [(PXCMMWorkflowCoordinator *)self _performDeleteActionForSession:sessionCopy];
LABEL_10:
        v10 = v12;
        goto LABEL_17;
      }

      v10 = 0;
      goto LABEL_17;
    }

    if (activityType != 4)
    {
      goto LABEL_17;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:417 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (activityType == 1)
  {
    v12 = [(PXCMMWorkflowCoordinator *)self _performPublishActionForSession:sessionCopy];
    goto LABEL_10;
  }

  if (!activityType)
  {
    goto LABEL_14;
  }

LABEL_17:

  return v10;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  handlerCopy = handler;
  v9 = controllerCopy;
  v10 = [(PXCMMWorkflowCoordinator *)self _presentingViewControllerForViewController:v9];
  presentedViewController = [v10 presentedViewController];
  if (presentedViewController == v9)
  {
    [v10 dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  else
  {
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = presentedViewController;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Unexpected view controller presented from %@: %@ (expected: %@)", &v14, 0x20u);
    }
  }

  return presentedViewController == v9;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  controllerCopy = controller;
  v8 = [(PXCMMWorkflowCoordinator *)self _presentingViewControllerForViewController:controllerCopy];
  v9 = PLSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = performerCopy;
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
  v16 = performerCopy;
  v13 = performerCopy;
  [v8 presentViewController:controllerCopy animated:1 completion:v15];

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

- (void)_completeActionForSession:(id)session withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v16 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  if (successCopy)
  {
    [(PXCMMWorkflowCoordinator *)self _didFinishSession:sessionCopy withState:1];
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Action failed with error: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PXCMMWorkflowCoordinator__completeActionForSession_withSuccess_error___block_invoke;
    v11[3] = &unk_1E774B330;
    objc_copyWeak(&v13, buf);
    v12 = sessionCopy;
    [(PXCMMWorkflowCoordinator *)self _presentFailureForSession:v12 error:errorCopy completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __72__PXCMMWorkflowCoordinator__completeActionForSession_withSuccess_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFinishSession:*(a1 + 32) withState:3];
}

- (void)_completeMessageComposeActionForSession:(id)session withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  sessionCopy = session;
  if (!successCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"PXCMMErrorDomain"])
    {
      code = [errorCopy code];

      if (code == -1007)
      {
        v12 = PLSharingGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "User cancelled message composition", buf, 2u);
        }

LABEL_11:

        [(PXCMMWorkflowCoordinator *)self _performCleanupActionForSession:sessionCopy];
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
      v17 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Message compose failed with error: %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__PXCMMWorkflowCoordinator__completeMessageComposeActionForSession_withSuccess_error___block_invoke;
    v14[3] = &unk_1E774B308;
    v15 = errorCopy;
    [(PXCMMWorkflowCoordinator *)self _presentFailureForSession:sessionCopy error:v15 completionHandler:v14];
    v12 = v15;
    goto LABEL_11;
  }

  [(PXCMMWorkflowCoordinator *)self _completeActionForSession:sessionCopy withSuccess:1 error:errorCopy];
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

- (void)_completePhotosPickerActionForSession:(id)session withSuccess:(BOOL)success error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!success)
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Photos Picker action failed with error: %@", &v8, 0xCu);
    }
  }
}

- (void)_completePublishForSession:(id)session withURL:(id)l error:(id)error
{
  sessionCopy = session;
  lCopy = l;
  if (lCopy)
  {
    delegate = [(PXCMMWorkflowCoordinator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate workflowCoordinator:self didPublishToURL:lCopy];
      [(PXCMMWorkflowCoordinator *)self _completeActionForSession:sessionCopy withSuccess:1 error:0];
    }

    if ([sessionCopy activityType] == 1 && !objc_msgSend(sessionCopy, "sourceType"))
    {
      [(PXCMMWorkflowCoordinator *)self _performMessageComposeActionForSession:sessionCopy shareURL:lCopy];
    }
  }

  else
  {
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:sessionCopy withSuccess:0 error:error];
  }
}

- (void)_didFinishSession:(id)session withState:(unint64_t)state avoidDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  sessionCopy = session;
  activityType = [sessionCopy activityType];
  if (state != 2 && dismissalCopy && activityType == 2)
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
    if (state == 1 || activityType != 1)
    {
      if (activityType == 2)
      {
        [(PXCMMWorkflowCoordinator *)self _performNotifyIfNeededActionForSession:sessionCopy];
      }
    }

    else
    {
      [(PXCMMWorkflowCoordinator *)self _performCleanupActionForSession:sessionCopy];
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

    delegate = [(PXCMMWorkflowCoordinator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      if (!(v12 | v14))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"navigationController || workflowViewController"}];
      }

      if (v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = v14;
      }

      [delegate workflowCoordinator:self workflowViewController:v20 didFinishSession:sessionCopy withActivityState:state];
    }
  }
}

- (void)_performNotifyIfNeededActionForSession:(id)session
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  actionManager = [sessionCopy actionManager];
  v5 = [actionManager actionPerformerForActionType:@"PXCMMActionTypeNotifyWhenReadyIfNeeded"];

  if ([v5 canPerformActionWithSession:sessionCopy])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PXCMMWorkflowCoordinator__performNotifyIfNeededActionForSession___block_invoke;
    v8[3] = &unk_1E774C5C0;
    v9 = sessionCopy;
    v6 = [v5 performActionWithSession:v9 completionHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = sessionCopy;
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

- (void)_performCleanupActionForSession:(id)session
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  actionManager = [sessionCopy actionManager];
  v5 = [actionManager actionPerformerForActionType:@"PXCMMActionTypeCleanup"];

  if ([v5 canPerformActionWithSession:sessionCopy])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PXCMMWorkflowCoordinator__performCleanupActionForSession___block_invoke;
    v8[3] = &unk_1E774C5C0;
    v9 = sessionCopy;
    v6 = [v5 performActionWithSession:v9 completionHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = sessionCopy;
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

- (void)_performPhotosPickerActionForSession:(id)session gridPresentation:(id)presentation
{
  sessionCopy = session;
  presentationCopy = presentation;
  actionManager = [sessionCopy actionManager];
  photosPickerActionPerformer = [actionManager photosPickerActionPerformer];

  if (photosPickerActionPerformer)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PXCMMWorkflowCoordinator__performPhotosPickerActionForSession_gridPresentation___block_invoke;
    v11[3] = &unk_1E774B2A0;
    objc_copyWeak(&v13, &location);
    v12 = sessionCopy;
    [photosPickerActionPerformer performPhotosPickerActionWithSession:v12 gridPresentation:presentationCopy completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for photos picker action, session: %@", sessionCopy}];
    [(PXCMMWorkflowCoordinator *)self _completePhotosPickerActionForSession:sessionCopy withSuccess:0 error:v10];
  }
}

void __82__PXCMMWorkflowCoordinator__performPhotosPickerActionForSession_gridPresentation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completePhotosPickerActionForSession:*(a1 + 32) withSuccess:a2 error:v5];
}

- (void)_performMessageComposeActionForSession:(id)session shareURL:(id)l
{
  sessionCopy = session;
  lCopy = l;
  actionManager = [sessionCopy actionManager];
  messageComposeActionPerformer = [actionManager messageComposeActionPerformer];

  if (messageComposeActionPerformer)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__PXCMMWorkflowCoordinator__performMessageComposeActionForSession_shareURL___block_invoke;
    v11[3] = &unk_1E774B2A0;
    objc_copyWeak(&v13, &location);
    v12 = sessionCopy;
    [messageComposeActionPerformer performMessageComposeActionWithSession:v12 shareURL:lCopy completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for message compose action, session: %@", sessionCopy}];
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:sessionCopy withSuccess:0 error:v10];
  }
}

void __76__PXCMMWorkflowCoordinator__performMessageComposeActionForSession_shareURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeMessageComposeActionForSession:*(a1 + 32) withSuccess:a2 error:v5];
}

- (id)_performPublishActionForSession:(id)session
{
  sessionCopy = session;
  actionManager = [sessionCopy actionManager];
  publishActionPerformer = [actionManager publishActionPerformer];

  if (publishActionPerformer)
  {
    delegate = [(PXCMMWorkflowCoordinator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [delegate shareOriginForSession:sessionCopy workflowCoordinator:self];
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
    v13 = sessionCopy;
    v10 = [publishActionPerformer performPublishActionWithSession:v13 shareOrigin:v8 completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for publish action, session: %@", sessionCopy}];
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:sessionCopy withSuccess:0 error:v9];

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

- (id)_performActionWithType:(id)type forSession:(id)session
{
  typeCopy = type;
  sessionCopy = session;
  actionManager = [sessionCopy actionManager];
  v9 = [actionManager actionPerformerForActionType:typeCopy];

  if (v9)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__PXCMMWorkflowCoordinator__performActionWithType_forSession___block_invoke;
    v13[3] = &unk_1E774B2A0;
    objc_copyWeak(&v15, &location);
    v14 = sessionCopy;
    v10 = [v9 performActionWithSession:v14 completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"No performer for action type: %@, session: %@", typeCopy, sessionCopy}];
    [(PXCMMWorkflowCoordinator *)self _completeActionForSession:sessionCopy withSuccess:0 error:v11];

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

- (void)performQuickSaveForContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  createSession = [context createSession];
  actionManager = [createSession actionManager];
  v7 = [actionManager actionPerformerForActionType:@"PXCMMActionTypeSaveToLibrary"];

  viewModel = [createSession viewModel];
  selectionManager = [viewModel selectionManager];
  [selectionManager performChanges:&__block_literal_global_250788];

  v10 = [v7 performActionWithSession:createSession completionHandler:completionCopy];
}

- (void)cancelWorkflow
{
  if (!self->_rootWorkflowViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"_rootWorkflowViewController"}];
  }

  rootWorkflowSession = self->_rootWorkflowSession;

  [(PXCMMWorkflowCoordinator *)self _didFinishSession:rootWorkflowSession withState:2];
}

- (id)workflowViewControllerWithSession:(id)session embedInNavigationControllerOfClass:(Class)class assetActionManager:(id)manager assetCollectionActionManager:(id)actionManager photosViewConfigurationBlock:(id)block
{
  sessionCopy = session;
  managerCopy = manager;
  actionManagerCopy = actionManager;
  blockCopy = block;
  if (sessionCopy)
  {
    if (!class)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"session"}];

    if (!class)
    {
      goto LABEL_5;
    }
  }

  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMWorkflowCoordinator.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"!navigationControllerClass || [navigationControllerClass isSubclassOfClass:[UINavigationController class]]"}];
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

  v22 = [(PXCMMWorkflowCoordinator *)self _createRootWorkflowViewControllerWithSession:sessionCopy willBeEmbeddedInNavigationController:class != 0 assetActionManager:managerCopy assetCollectionActionManager:actionManagerCopy photosViewConfigurationBlock:blockCopy];
  v23 = self->_rootWorkflowViewController;
  self->_rootWorkflowViewController = v22;

  if (class)
  {
    navigationItem = [(UIViewController *)self->_rootWorkflowViewController navigationItem];
    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_cancelWorkflow];
    [navigationItem setLeftBarButtonItem:v25];
    v26 = [[class alloc] initWithRootViewController:self->_rootWorkflowViewController];
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

- (id)workflowViewControllerWithContext:(id)context embedInNavigationControllerOfClass:(Class)class photosViewConfigurationBlock:(id)block
{
  blockCopy = block;
  createSession = [context createSession];
  v10 = [(PXCMMWorkflowCoordinator *)self workflowViewControllerWithSession:createSession embedInNavigationControllerOfClass:class assetActionManager:0 assetCollectionActionManager:0 photosViewConfigurationBlock:blockCopy];

  return v10;
}

- (id)workflowViewControllerWithContext:(id)context embedInNavigationControllerOfClass:(Class)class
{
  createSession = [context createSession];
  v7 = [(PXCMMWorkflowCoordinator *)self workflowViewControllerWithSession:createSession embedInNavigationControllerOfClass:class assetActionManager:0 assetCollectionActionManager:0 photosViewConfigurationBlock:0];

  return v7;
}

- (id)workflowViewControllerWithContext:(id)context
{
  createSession = [context createSession];
  v5 = [(PXCMMWorkflowCoordinator *)self workflowViewControllerWithSession:createSession embedInNavigationControllerOfClass:0 assetActionManager:0 assetCollectionActionManager:0 photosViewConfigurationBlock:0];

  return v5;
}

@end