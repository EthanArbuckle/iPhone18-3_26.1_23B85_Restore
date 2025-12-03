@interface SBSystemNotesManager
- (BOOL)_handleCreateNoteRequestWithMode:(int64_t)mode presentationSource:(unint64_t)source;
- (BOOL)_handleCreateNoteRequestWithPresentationContext:(id)context error:(id *)error;
- (BOOL)interactionManager:(id)manager requestsPresentationWithContext:(id)context;
- (SBSystemNotesManager)initWithControllerCoordinator:(id)coordinator workspace:(id)workspace sceneManager:(id)manager keyboardArbiterManager:(id)arbiterManager fbSceneManager:(id)sceneManager sceneDeactivationManager:(id)deactivationManager keyboardSuppressionManager:(id)suppressionManager keyboardDismissalManager:(id)self0 applicationController:(id)self1 systemGestureManager:(id)self2 systemPointerInteractionManager:(id)self3 idleTimerCoordinator:(id)self4 managedProfileConnection:(id)self5;
- (id)_createContentViewControllerForPresentationContext:(id)context error:(id *)error;
- (id)_presentedContainerViewController;
- (id)_presentedNotesContentViewController;
- (id)_sceneBundleIdentifierForNewConfiguration;
- (id)_sceneHandleForApplication:(id)application sceneSpecification:(id)specification;
- (id)interactionManager:(id)manager requestsStashAssertionForReason:(id)reason;
- (id)launchApplicationIdentityForInteractionManager:(id)manager;
- (id)presentedPIPContentViewControllerForInteractionManager:(id)manager;
- (id)server:(id)server targetForNewClientConnection:(id)connection;
- (int64_t)_currentPresentationMode;
- (void)_addContentViewControllerToPIPHierarchy:(id)hierarchy contentViewLayoutSettings:(id)settings animated:(BOOL)animated;
- (void)_currentPresentationMode;
- (void)_dismissNotesWithReason:(unint64_t)reason animated:(BOOL)animated;
- (void)_presentedNotesContentViewController;
- (void)_reloadLaunchBundleID;
- (void)_setPresentedConnection:(id)connection;
- (void)_tearDownContainerViewControllerForSceneHandle:(id)handle;
- (void)activateConfiguration:(id)configuration;
- (void)contentViewController:(id)controller didChangeToPresentationMode:(int64_t)mode;
- (void)contentViewController:(id)controller didReceiveScreenshotRequestForDisplays:(id)displays completion:(id)completion;
- (void)contentViewControllerDidReceiveTapToExpand:(id)expand;
- (void)contentViewControllerWantsDismissal:(id)dismissal forReason:(unint64_t)reason animated:(BOOL)animated;
- (void)dealloc;
- (void)interactionManager:(id)manager requestsNotesDismissalForSource:(unint64_t)source animated:(BOOL)animated;
- (void)interactionManager:(id)manager requestsStartSuppressingKeyboardForReason:(id)reason;
- (void)interactionManager:(id)manager requestsUpdatePresentationMode:(int64_t)mode;
- (void)presentWithConfiguration:(id)configuration completion:(id)completion;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)server:(id)server connectionDidInvalidate:(id)invalidate;
- (void)showOrHideForKeyCommand:(id)command;
@end

@implementation SBSystemNotesManager

- (SBSystemNotesManager)initWithControllerCoordinator:(id)coordinator workspace:(id)workspace sceneManager:(id)manager keyboardArbiterManager:(id)arbiterManager fbSceneManager:(id)sceneManager sceneDeactivationManager:(id)deactivationManager keyboardSuppressionManager:(id)suppressionManager keyboardDismissalManager:(id)self0 applicationController:(id)self1 systemGestureManager:(id)self2 systemPointerInteractionManager:(id)self3 idleTimerCoordinator:(id)self4 managedProfileConnection:(id)self5
{
  coordinatorCopy = coordinator;
  workspaceCopy = workspace;
  workspaceCopy2 = workspace;
  obj = manager;
  managerCopy = manager;
  arbiterManagerCopy = arbiterManager;
  arbiterManagerCopy2 = arbiterManager;
  sceneManagerCopy = sceneManager;
  v62 = arbiterManagerCopy2;
  sceneManagerCopy2 = sceneManager;
  deactivationManagerCopy = deactivationManager;
  suppressionManagerCopy = suppressionManager;
  dismissalManagerCopy = dismissalManager;
  controllerCopy = controller;
  gestureManagerCopy = gestureManager;
  interactionManagerCopy = interactionManager;
  timerCoordinatorCopy = timerCoordinator;
  connectionCopy = connection;
  v73.receiver = self;
  v73.super_class = SBSystemNotesManager;
  v26 = [(SBSystemNotesManager *)&v73 init];
  if (v26)
  {
    v27 = objc_alloc_init(SBSystemNotesPresentationRequestServer);
    systemNotesRequestServer = v26->_systemNotesRequestServer;
    v26->_systemNotesRequestServer = v27;

    [(SBSystemNotesPresentationRequestServer *)v26->_systemNotesRequestServer setDelegate:v26];
    if (SBIsSystemNotesSupported())
    {
      v29 = +[SBSystemNotesSettingsDomain rootSettings];
      pipSettings = v26->_pipSettings;
      v26->_pipSettings = v29;

      [(PTSettings *)v26->_pipSettings addKeyPathObserver:v26];
      [(SBSystemNotesManager *)v26 _reloadLaunchBundleID];
      specification = [MEMORY[0x277D67C48] specification];
      sceneSpecification = v26->_sceneSpecification;
      v26->_sceneSpecification = specification;

      objc_storeStrong(&v26->_sceneManager, obj);
      objc_storeStrong(&v26->_fbSceneManager, sceneManagerCopy);
      objc_storeStrong(&v26->_applicationController, controller);
      objc_storeStrong(&v26->_managedProfileConnection, connection);
      [(MCProfileConnection *)v26->_managedProfileConnection registerObserver:v26];
      objc_storeStrong(&v26->_workspace, workspaceCopy);
      objc_storeStrong(&v26->_keyboardArbiterManager, arbiterManagerCopy);
      objc_storeStrong(&v26->_sceneDeactivationManager, deactivationManager);
      objc_storeStrong(&v26->_keyboardSuppressionManager, suppressionManager);
      objc_storeStrong(&v26->_keyboardDismissalManager, dismissalManager);
      v33 = interactionManagerCopy;
      v34 = [SBPIPSceneContentAdapter alloc];
      [SBApp windowSceneManager];
      v36 = v35 = timerCoordinatorCopy;
      [managerCopy displayIdentity];
      v38 = v37 = gestureManagerCopy;
      v39 = [v36 windowSceneForDisplayIdentity:v38];
      v40 = [(SBPIPSceneContentAdapter *)v34 initWithPIPContentType:1 windowScene:v39];
      sceneContentAdapter = v26->_sceneContentAdapter;
      v26->_sceneContentAdapter = v40;

      v42 = [SBPIPController alloc];
      v43 = *MEMORY[0x277D772B0] + 5.0 + 10.0;
      interactionSettings = [(SBSystemNotesSettings *)v26->_pipSettings interactionSettings];
      v45 = [(SBPIPController *)v42 initWithIdleTimerCoordinator:v35 windowLevel:interactionSettings interactionSettings:v26->_sceneContentAdapter adapter:v43];
      pipController = v26->_pipController;
      v26->_pipController = v45;

      [coordinatorCopy registerController:v26->_pipController forType:1];
      v47 = [[SBSystemNotesInteractionManager alloc] initWithWorkspace:workspaceCopy2 systemGestureManager:v37 systemPointerInteractionManager:v33 dataSource:v26 delegate:v26];
      interactionManager = v26->_interactionManager;
      v26->_interactionManager = v47;

      [(SBSystemNotesPresentationRequestServer *)v26->_systemNotesRequestServer activate];
      objc_initWeak(&location, v26);
      v49 = MEMORY[0x277D431C8];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __313__SBSystemNotesManager_initWithControllerCoordinator_workspace_sceneManager_keyboardArbiterManager_fbSceneManager_sceneDeactivationManager_keyboardSuppressionManager_keyboardDismissalManager_applicationController_systemGestureManager_systemPointerInteractionManager_idleTimerCoordinator_managedProfileConnection___block_invoke;
      v69[3] = &unk_2783A9CE8;
      objc_copyWeak(&v71, &location);
      v50 = v26;
      v70 = v50;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __313__SBSystemNotesManager_initWithControllerCoordinator_workspace_sceneManager_keyboardArbiterManager_fbSceneManager_sceneDeactivationManager_keyboardSuppressionManager_keyboardDismissalManager_applicationController_systemGestureManager_systemPointerInteractionManager_idleTimerCoordinator_managedProfileConnection___block_invoke_2;
      v67[3] = &unk_2783A8C68;
      objc_copyWeak(&v68, &location);
      v51 = [v49 recipeWithTitle:@"Trigger System Notes UI" increaseAction:v69 decreaseAction:v67];
      systemNotesTestRecipe = v50->_systemNotesTestRecipe;
      v50->_systemNotesTestRecipe = v51;

      [(PTDomain *)SBSystemNotesSettingsDomain registerTestRecipe:v50->_systemNotesTestRecipe];
      objc_destroyWeak(&v68);

      objc_destroyWeak(&v71);
      objc_destroyWeak(&location);
      gestureManagerCopy = v37;
      interactionManagerCopy = v33;
      timerCoordinatorCopy = v35;
    }

    v26->_lock._os_unfair_lock_opaque = 0;
  }

  return v26;
}

void __313__SBSystemNotesManager_initWithControllerCoordinator_workspace_sceneManager_keyboardArbiterManager_fbSceneManager_sceneDeactivationManager_keyboardSuppressionManager_keyboardDismissalManager_applicationController_systemGestureManager_systemPointerInteractionManager_idleTimerCoordinator_managedProfileConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _handleCreateNoteRequestWithMode:0 presentationSource:1];
    [*(a1 + 32) _setPresentedConnection:0];
  }
}

void __313__SBSystemNotesManager_initWithControllerCoordinator_workspace_sceneManager_keyboardArbiterManager_fbSceneManager_sceneDeactivationManager_keyboardSuppressionManager_keyboardDismissalManager_applicationController_systemGestureManager_systemPointerInteractionManager_idleTimerCoordinator_managedProfileConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    if ([v3 _currentPresentationMode] == -1)
    {
      [v3 _handleCreateNoteRequestWithMode:1 presentationSource:0];
    }

    else
    {
      [v3 _dismissNotesWithReason:1];
    }
  }
}

- (void)dealloc
{
  [(MCProfileConnection *)self->_managedProfileConnection unregisterObserver:self];
  [(BSAbsoluteMachTimer *)self->_interactionLoggingTimer invalidate];
  [(SBSystemNotesManager *)self _setPresentedConnection:0];
  v3.receiver = self;
  v3.super_class = SBSystemNotesManager;
  [(SBSystemNotesManager *)&v3 dealloc];
}

- (void)_reloadLaunchBundleID
{
  launchSettings = [(SBSystemNotesSettings *)self->_pipSettings launchSettings];
  applicationBundleID = [launchSettings applicationBundleID];
  launchBundleID = self->_launchBundleID;
  self->_launchBundleID = applicationBundleID;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  isQuickNoteAllowed = [notification isQuickNoteAllowed];
  _presentedContainerViewController = [(SBSystemNotesManager *)self _presentedContainerViewController];
  if (_presentedContainerViewController && (isQuickNoteAllowed & 1) == 0)
  {
    v7 = _presentedContainerViewController;
    [(SBSystemNotesManager *)self _dismissNotesWithReason:9];
    _presentedContainerViewController = v7;
  }
}

- (void)showOrHideForKeyCommand:(id)command
{
  _presentedContainerViewController = [(SBSystemNotesManager *)self _presentedContainerViewController];
  if (_presentedContainerViewController)
  {
    [(SBSystemNotesManager *)self _dismissNotesWithReason:4];
  }

  else
  {
    [(SBSystemNotesManager *)self _handleCreateNoteRequestWithMode:0 presentationSource:6];
  }
}

- (id)server:(id)server targetForNewClientConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  lock_connections = self->_lock_connections;
  if (!lock_connections)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v8 = self->_lock_connections;
    self->_lock_connections = v7;

    lock_connections = self->_lock_connections;
  }

  [(NSMutableSet *)lock_connections addObject:connectionCopy];
  os_unfair_lock_unlock(&self->_lock);

  return self;
}

- (void)server:(id)server connectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_connections removeObject:invalidateCopy];
  if (![(NSMutableSet *)self->_lock_connections count])
  {
    lock_connections = self->_lock_connections;
    self->_lock_connections = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = invalidateCopy;
  BSDispatchMain();
}

uint64_t __55__SBSystemNotesManager_server_connectionDidInvalidate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 144)];
  if (result)
  {
    result = [*(a1 + 40) _currentPresentationMode];
    if (result == 1)
    {
      v3 = *(a1 + 40);

      return [v3 _dismissNotesWithReason:5];
    }
  }

  return result;
}

- (void)activateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [MEMORY[0x277CF3280] currentContext];
  v7 = v6 = configurationCopy;
  v4 = v7;
  v5 = configurationCopy;
  BSDispatchMain();
}

void __46__SBSystemNotesManager_activateConfiguration___block_invoke(id *a1)
{
  if ([a1[4] preferredPresentationMode] == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = [[SBSystemNotesContentPresentationContext alloc] initWithRequestedConfiguration:a1[4] source:v2 positionConfiguration:0];
  v4 = a1[5];
  v8 = 0;
  v5 = [v4 _handleCreateNoteRequestWithPresentationContext:v3 error:&v8];
  v6 = v8;
  if (v5)
  {
    [a1[5] _setPresentedConnection:a1[6]];
  }

  else
  {
    v7 = [a1[6] remoteTarget];
    [v7 configuration:a1[4] didInvalidateWithError:v6];
  }
}

- (void)presentWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = configurationCopy;
  BSDispatchMain();
}

void __60__SBSystemNotesManager_presentWithConfiguration_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) preferredPresentationMode] == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = [[SBSystemNotesContentPresentationContext alloc] initWithRequestedConfiguration:*(a1 + 32) source:v2 positionConfiguration:0];
  v4 = *(a1 + 40);
  v8 = 0;
  v5 = [v4 _handleCreateNoteRequestWithPresentationContext:v3 error:&v8];
  v6 = v8;
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  if (v5)
  {
    [*(a1 + 40) _setPresentedConnection:0];
  }
}

- (void)_setPresentedConnection:(id)connection
{
  connectionCopy = connection;
  p_presentedConnection = &self->_presentedConnection;
  presentedConnection = self->_presentedConnection;
  if (presentedConnection != connectionCopy)
  {
    v12 = connectionCopy;
    if (presentedConnection)
    {
      [(BSServiceConnection *)presentedConnection invalidate];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableSet *)self->_lock_connections removeObject:self->_presentedConnection];
      os_unfair_lock_unlock(&self->_lock);
    }

    objc_storeStrong(&self->_presentedConnection, connection);
    _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
    if (_presentedNotesContentViewController)
    {
      remoteTarget = [(BSServiceConnection *)*p_presentedConnection remoteTarget];
      currentConfiguration = [_presentedNotesContentViewController currentConfiguration];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(_presentedNotesContentViewController, "presentationMode")}];
      [remoteTarget configuration:currentConfiguration didChangeToPresentationMode:v11];
    }

    connectionCopy = v12;
  }
}

- (id)_sceneBundleIdentifierForNewConfiguration
{
  v3 = self->_launchBundleID;
  if ([(SBSystemNotesManager *)self _currentPresentationMode]!= -1)
  {
    _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
    bundleIdentifier = [_presentedNotesContentViewController bundleIdentifier];

    v3 = bundleIdentifier;
  }

  return v3;
}

- (BOOL)_handleCreateNoteRequestWithMode:(int64_t)mode presentationSource:(unint64_t)source
{
  v7 = objc_alloc(MEMORY[0x277D66C98]);
  _sceneBundleIdentifierForNewConfiguration = [(SBSystemNotesManager *)self _sceneBundleIdentifierForNewConfiguration];
  v9 = [v7 initWithSceneBundleIdentifier:_sceneBundleIdentifierForNewConfiguration userActivity:0 preferredPresentationMode:mode];

  v10 = [[SBSystemNotesContentPresentationContext alloc] initWithRequestedConfiguration:v9 source:source positionConfiguration:0];
  LOBYTE(self) = [(SBSystemNotesManager *)self _handleCreateNoteRequestWithPresentationContext:v10 error:0];

  return self;
}

- (BOOL)_handleCreateNoteRequestWithPresentationContext:(id)context error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  requestedConfiguration = [contextCopy requestedConfiguration];
  source = [contextCopy source];
  preferredPresentationMode = [requestedConfiguration preferredPresentationMode];
  _currentPresentationMode = [(SBSystemNotesManager *)self _currentPresentationMode];
  _presentedContainerViewController = [(SBSystemNotesManager *)self _presentedContainerViewController];
  isStashed = [_presentedContainerViewController isStashed];

  v12 = source & 0xFFFFFFFFFFFFFFFELL;
  if (preferredPresentationMode >= 2)
  {
    [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:error:];
  }

  if (v12 == 4)
  {
    userActivity = [requestedConfiguration userActivity];

    if (userActivity)
    {
      [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:error:];
    }
  }

  v42 = requestedConfiguration;
  v45 = 0;
  v14 = SBIsSystemNotesEnabled(&v45);
  v15 = v45;
  if (v14)
  {
    interactionManager = self->_interactionManager;
    v44 = v15;
    v17 = [(SBSystemNotesInteractionManager *)interactionManager canHandlePresentationRequests:&v44];
    v18 = v44;

    if (v17)
    {
      v40 = _currentPresentationMode == -1;
      if (_currentPresentationMode != -1)
      {
        if (!_currentPresentationMode && preferredPresentationMode == 1)
        {
          _presentedContainerViewController2 = SBLogSystemNotes();
          errorCopy4 = error;
          if (os_log_type_enabled(_presentedContainerViewController2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, _presentedContainerViewController2, OS_LOG_TYPE_DEFAULT, "ignoring SBSSystemNotesPresentationConfiguration for presenting a thumbnail, as we're already showing a full PIP window", buf, 2u);
          }

          goto LABEL_45;
        }

        _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
        v33 = [_presentedNotesContentViewController updateConfiguration:v42 sendCreateActionIfNecessary:isStashed ^ 1u];

        v34 = v33 == 1;
        errorCopy4 = error;
        if (!v34)
        {
          goto LABEL_38;
        }

        if (source == 5)
        {
          [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B848]];
          v35 = SBLogSystemNotes();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:error:];
          }
        }

        else
        {
          if (source != 4)
          {
            goto LABEL_38;
          }

          [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B850]];
          v35 = SBLogSystemNotes();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:error:];
          }
        }

LABEL_38:
        if (_currentPresentationMode == 1 && !preferredPresentationMode)
        {
          [(SBSystemNotesInteractionManager *)self->_interactionManager expandAnimated:1];
        }

        v36 = isStashed ^ 1;
        if (preferredPresentationMode)
        {
          v36 = 1;
        }

        if (v36)
        {
          v21 = 0;
LABEL_46:
          v15 = v18;
          if (!v18)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

        _presentedContainerViewController2 = [(SBSystemNotesManager *)self _presentedContainerViewController];
        [_presentedContainerViewController2 setStashed:0];
LABEL_45:
        v21 = v40;

        goto LABEL_46;
      }

      v22 = SBLogSystemNotes();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = "gesture-originated";
        if (v12 != 4)
        {
          v23 = "non-gesture-originated";
        }

        *buf = 136315138;
        v47 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "presenting new PIP thumbnail for %s SBSSystemNotesPresentationConfiguration", buf, 0xCu);
      }

      v43 = v18;
      _presentedContainerViewController2 = [(SBSystemNotesManager *)self _createContentViewControllerForPresentationContext:contextCopy error:&v43];
      v24 = v43;

      v25 = objc_alloc_init(MEMORY[0x277D66008]);
      [v25 setLastKnownSize:@"SystemNotes-Thumbnail" contentType:0.0];

      v26 = [SBPIPContentViewLayoutSettings alloc];
      requestedConfiguration2 = [contextCopy requestedConfiguration];
      v28 = +[SBPIPContentViewLayoutMetrics systemNotesMetricsForPresentationMode:](SBPIPContentViewLayoutMetrics, "systemNotesMetricsForPresentationMode:", [requestedConfiguration2 preferredPresentationMode]);
      v29 = [(SBPIPContentViewLayoutSettings *)v26 initWithPlatformMetrics:v28 contentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];

      positionConfiguration = [contextCopy positionConfiguration];
      v31 = positionConfiguration;
      if (positionConfiguration)
      {
        -[SBPIPContentViewLayoutSettings setContentViewPosition:](v29, "setContentViewPosition:", [positionConfiguration position]);
        [(SBSystemNotesManager *)self _addContentViewControllerToPIPHierarchy:_presentedContainerViewController2 contentViewLayoutSettings:v29 animated:v12 != 4];
        if (v12 == 4)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v12 == 4)
        {
          [(SBSystemNotesManager *)self _addContentViewControllerToPIPHierarchy:_presentedContainerViewController2 contentViewLayoutSettings:v29 animated:0];
          goto LABEL_34;
        }

        [(SBPIPContentViewLayoutSettings *)v29 setContentViewPosition:[(SBSystemNotesInteractionManager *)self->_interactionManager startingPositionForExternalPresentationRequest]];
        [(SBSystemNotesManager *)self _addContentViewControllerToPIPHierarchy:_presentedContainerViewController2 contentViewLayoutSettings:v29 animated:1];
      }

      [(SBSystemNotesInteractionManager *)self->_interactionManager peepAnimated:1];
LABEL_34:

      v18 = v24;
      errorCopy4 = error;
      goto LABEL_45;
    }

    v21 = 0;
    v15 = v18;
  }

  else
  {
    v21 = 0;
  }

  errorCopy4 = error;
  if (!v15)
  {
    goto LABEL_51;
  }

LABEL_47:
  v37 = SBLogSystemNotes();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:v15 error:v37];
  }

  if (errorCopy4)
  {
    v38 = v15;
    *errorCopy4 = v15;
  }

LABEL_51:

  return v21;
}

- (void)contentViewControllerDidReceiveTapToExpand:(id)expand
{
  _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  if (_presentedNotesContentViewController)
  {
    v5 = _presentedNotesContentViewController;
    [(SBSystemNotesInteractionManager *)self->_interactionManager expandAnimated:1];
    _presentedNotesContentViewController = v5;
  }
}

- (void)contentViewController:(id)controller didChangeToPresentationMode:(int64_t)mode
{
  presentedConnection = self->_presentedConnection;
  controllerCopy = controller;
  remoteTarget = [(BSServiceConnection *)presentedConnection remoteTarget];
  currentConfiguration = [controllerCopy currentConfiguration];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [remoteTarget configuration:currentConfiguration didChangeToPresentationMode:v8];
}

- (void)contentViewControllerWantsDismissal:(id)dismissal forReason:(unint64_t)reason animated:(BOOL)animated
{
  if (reason == 1)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8 * (reason == 2);
  }

  [(SBSystemNotesManager *)self _dismissNotesWithReason:v5 animated:animated];
}

- (void)contentViewController:(id)controller didReceiveScreenshotRequestForDisplays:(id)displays completion:(id)completion
{
  displaysCopy = displays;
  completionCopy = completion;
  v11 = MEMORY[0x277CBEB18];
  controllerCopy = controller;
  v13 = [v11 arrayWithCapacity:{objc_msgSend(displaysCopy, "count")}];
  v14 = objc_alloc_init(SBSystemNotesScreenshotter);
  view = [controllerCopy view];

  window = [view window];
  layer = [window layer];

  LODWORD(view) = [layer disableUpdateMask];
  [layer setDisableUpdateMask:view | 2];
  v18 = SBApp;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke;
  v24[3] = &unk_2783B1BE0;
  v24[4] = self;
  v25 = displaysCopy;
  v29 = completionCopy;
  v30 = a2;
  v26 = v14;
  v27 = v13;
  v31 = view;
  v28 = layer;
  v19 = completionCopy;
  v20 = layer;
  v21 = v13;
  v22 = v14;
  v23 = displaysCopy;
  [v18 sb_performBlockAfterCATransactionSynchronizedCommit:v24];
}

uint64_t __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D4BE40] playScreenshotSound];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!*(v2 + 200))
  {
    v4 = [MEMORY[0x277CCA940] set];
    v5 = *(*v3 + 200);
    *(*v3 + 200) = v4;

    v2 = *v3;
  }

  if (!*(v2 + 208))
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = *(*v3 + 208);
    *(*v3 + 208) = v6;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 40);
  v32 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v32)
  {
    v8 = *v37;
    v29 = @"SBTraitsParticipantRoleScreenFlash";
    v9 = *MEMORY[0x277D76A38];
    v30 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [*(*v3 + 208) objectForKey:v11];
        v13 = [(SBSecureWindow *)v12 rootViewController];
        v14 = [v13 view];
        if (!v12)
        {
          if ([*(*v3 + 200) countForObject:v11])
          {
            __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke_cold_1();
          }

          v15 = [SBSecureWindow alloc];
          [SBApp windowSceneManager];
          v17 = v16 = v3;
          v18 = [v17 windowSceneForDisplayIdentity:v11];
          v12 = [(SBWindow *)v15 initWithWindowScene:v18 role:v29 debugName:@"NotesScreenshotFlash"];

          [(SBSecureWindow *)v12 setWindowLevel:v9];
          [(SBSecureWindow *)v12 setUserInteractionEnabled:0];
          v19 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];

          [(SBSecureWindow *)v12 setRootViewController:v19];
          [*(*v16 + 208) setObject:v12 forKey:v11];
          v20 = [MEMORY[0x277D4BE30] flashViewForStyle:2];

          [v19 setView:v20];
          v14 = v20;
          v13 = v19;
          v8 = v30;
        }

        [*(*(a1 + 32) + 200) addObject:{v11, v29}];
        [(SBWindow *)v12 setHidden:0];
        [v14 setNeedsLayout];
        [v14 layoutIfNeeded];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke_2;
        v34[3] = &unk_2783A8ED8;
        v34[4] = *(a1 + 32);
        v34[5] = v11;
        v35 = v12;
        v21 = v12;
        [v14 flashWithCompletion:v34];
        v22 = [*(a1 + 48) takeScreenshotOfDisplay:v11];
        v23 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:IOSurfaceCreateMachPort(v22)];
        v24 = [v11 UIScreen];
        [v24 scale];
        v26 = v25;

        v27 = [objc_alloc(MEMORY[0x277D66CB0]) initWithDisplay:v11 sendRight:v23 scale:v26];
        [*(a1 + 56) addObject:v27];

        objc_autoreleasePoolPop(context);
        ++v10;
        v3 = (a1 + 32);
      }

      while (v32 != v10);
      v32 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v32);
  }

  [*(a1 + 64) setDisableUpdateMask:*(a1 + 88)];
  return (*(*(a1 + 72) + 16))();
}

uint64_t __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke_2(void *a1)
{
  [*(a1[4] + 200) removeObject:a1[5]];
  result = [*(a1[4] + 200) countForObject:a1[5]];
  if (!result)
  {
    [*(a1[4] + 208) removeObjectForKey:a1[5]];
    v3 = a1[6];

    return [v3 setHidden:1];
  }

  return result;
}

- (id)_sceneHandleForApplication:(id)application sceneSpecification:(id)specification
{
  sceneManager = self->_sceneManager;
  specificationCopy = specification;
  applicationCopy = application;
  v9 = [(SBSceneManager *)sceneManager newSceneIdentityForApplication:applicationCopy];
  displayIdentity = [(SBSceneManager *)self->_sceneManager displayIdentity];
  v11 = [SBApplicationSceneHandleRequest defaultRequestForApplication:applicationCopy sceneIdentity:v9 displayIdentity:displayIdentity];

  sceneDefinition = [v11 sceneDefinition];
  v13 = [sceneDefinition mutableCopy];

  [v13 setSpecification:specificationCopy];
  [v11 setSceneDefinition:v13];
  v14 = [(SBMainDisplaySceneManager *)self->_sceneManager fetchOrCreateApplicationSceneHandleForRequest:v11];
  [v14 setDefaultBackgroundStyle:3];
  [v14 setKeyboardContextMaskStyle:2];

  return v14;
}

- (id)_createContentViewControllerForPresentationContext:(id)context error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  requestedConfiguration = [contextCopy requestedConfiguration];
  sceneBundleIdentifier = [requestedConfiguration sceneBundleIdentifier];

  v9 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:sceneBundleIdentifier];
  if (v9)
  {
    v10 = [(SBSystemNotesManager *)self _sceneHandleForApplication:v9 sceneSpecification:self->_sceneSpecification];
    if (v10)
    {
      errorCopy = error;
      windowSceneManager = [SBApp windowSceneManager];
      [(SBSceneManager *)self->_sceneManager displayIdentity];
      v13 = v12 = contextCopy;
      v14 = [windowSceneManager windowSceneForDisplayIdentity:v13];

      switcherController = [v14 switcherController];
      [v10 setWantsEnhancedWindowingEnabled:{objc_msgSend(switcherController, "isChamoisWindowingUIEnabled")}];

      v16 = [SBSystemNotesContentViewController alloc];
      workspace = self->_workspace;
      transientUIInteractionManager = [v14 transientUIInteractionManager];
      interactionSettings = [(SBSystemNotesSettings *)self->_pipSettings interactionSettings];
      v31 = v12;
      v20 = [(SBSystemNotesContentViewController *)v16 initWithSceneHandle:v10 workspace:workspace transientUIInteractionManager:transientUIInteractionManager notesInteractionSettings:interactionSettings presentationContext:v12];

      v21 = SBLogSystemNotes();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v29 = _SBFLoggingMethodProem();
        *buf = 138543618;
        v39 = v29;
        v40 = 2114;
        v41 = v20;
        _os_log_debug_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEBUG, "[%{public}@] created contentVC: %{public}@", buf, 0x16u);
      }

      [(SBSystemNotesContentViewController *)v20 setDelegate:self];
      error = errorCopy;
      contextCopy = v31;
    }

    else
    {
      if (!error)
      {
        v20 = 0;
        goto LABEL_11;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create SBSystemNotesContentViewController scene handle creation failed. bundleID: %@", sceneBundleIdentifier];;
      v23 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37 = v14;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *error = [v23 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:2 userInfo:v24];

      v20 = 0;
    }
  }

  else
  {
    if (!error)
    {
LABEL_15:
      v20 = 0;
      goto LABEL_16;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create SBSystemNotesContentViewController couldn't find application bundleID: %@", sceneBundleIdentifier];;
    v22 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = v10;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v22 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:1 userInfo:v14];
    *error = v20 = 0;
  }

LABEL_11:
  if (error && !v20)
  {
    if (!*error)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create SBSystemNotesContentViewController bundleID: %@", sceneBundleIdentifier];;
      v26 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33 = v25;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *error = [v26 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:0 userInfo:v27];
    }

    goto LABEL_15;
  }

LABEL_16:

  return v20;
}

- (void)_addContentViewControllerToPIPHierarchy:(id)hierarchy contentViewLayoutSettings:(id)settings animated:(BOOL)animated
{
  animatedCopy = animated;
  settingsCopy = settings;
  if (hierarchy)
  {
    v40 = animatedCopy;
    v43 = settingsCopy;
    objc_storeStrong(&self->_contentViewLayoutSettings, settings);
    hierarchyCopy = hierarchy;
    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [(SBSceneManager *)self->_sceneManager displayIdentity];
    v13 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    layoutStateTransitionCoordinator = [v13 layoutStateTransitionCoordinator];
    v41 = v13;
    pictureInPictureManager = [v13 pictureInPictureManager];
    v16 = [SBPIPSceneContentContainerAdapter alloc];
    stashVisualSettings = [(SBSystemNotesSettings *)self->_pipSettings stashVisualSettings];
    shadowSettings = [(SBSystemNotesSettings *)self->_pipSettings shadowSettings];
    interactionSettings = [(SBSystemNotesSettings *)self->_pipSettings interactionSettings];
    keyboardArbiterManager = self->_keyboardArbiterManager;
    keyboardFocusController = [(SBMainWorkspace *)self->_workspace keyboardFocusController];
    v42 = layoutStateTransitionCoordinator;
    v22 = [(SBPIPSceneContentContainerAdapter *)v16 initWithSceneContentViewController:hierarchyCopy contentViewLayoutSettings:v43 stashSettings:stashVisualSettings shadowSettings:shadowSettings interactionSettings:interactionSettings keyboardArbiterManager:keyboardArbiterManager keyboardFocusController:keyboardFocusController keyboardSuppressionManager:self->_keyboardSuppressionManager keyboardDismissalManager:self->_keyboardDismissalManager deactivationManager:self->_sceneDeactivationManager transitionCoordinator:layoutStateTransitionCoordinator delegate:self->_interactionManager];

    v23 = [SBPIPContainerViewController alloc];
    pipController = self->_pipController;
    interactionSettings2 = [(SBSystemNotesSettings *)self->_pipSettings interactionSettings];
    v26 = [(SBPIPContainerViewController *)v23 initWithPIPController:pipController interactionSettings:interactionSettings2 adapter:v22];

    if (v26)
    {
      [(SBPIPController *)self->_pipController addContainerViewController:v26 dataSource:self->_interactionManager];
      v27 = [pictureInPictureManager acquireWindowLevelOverrideAssertionForControllerWithContentType:0 toWindowLevel:(*MEMORY[0x277D772B0] + 5.0 + 10.0 + -1.0) withReason:9 identifier:@"SBSystemNotesManager-ActivePresentation"];
      pegasusWindowLevelAssertion = self->_pegasusWindowLevelAssertion;
      self->_pegasusWindowLevelAssertion = v27;
    }

    if (v40)
    {
      v29 = +[SBPIPSettingsDomain rootSettings];
      fadeInOutSettings = [v29 fadeInOutSettings];
      fadeInOutAnimationSettings = [fadeInOutSettings fadeInOutAnimationSettings];

      v32 = +[SBPIPSettingsDomain rootSettings];
      fadeInOutSettings2 = [v32 fadeInOutSettings];
      [fadeInOutSettings2 fadeInInitialValues];
      v35 = v34;
      v37 = v36;
      v39 = v38;
    }

    else
    {
      fadeInOutAnimationSettings = 0;
      v35 = 0.0;
      v37 = 0.0;
      v39 = 0.0;
    }

    [(SBPIPContainerViewController *)v26 startShowingContentWithAnimationSettings:fadeInOutAnimationSettings parameters:0 completion:v35, v37, v39];
    objc_storeWeak(&self->_presentedContainerAdapter, v22);

    settingsCopy = v43;
  }
}

- (id)_presentedNotesContentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContainerAdapter);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    sceneContentViewController = [WeakRetained sceneContentViewController];
    if (!sceneContentViewController)
    {
      [SBSystemNotesManager _presentedNotesContentViewController];
    }
  }

  else
  {
    sceneContentViewController = 0;
  }

  return sceneContentViewController;
}

- (void)_dismissNotesWithReason:(unint64_t)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  v36 = *MEMORY[0x277D85DE8];
  v7 = SBLogSystemNotes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBSystemNotesManager _dismissNotesWithReason:reason animated:v7];
  }

  self->_interactionRequests = 0;
  [(BSAbsoluteMachTimer *)self->_interactionLoggingTimer invalidate];
  interactionLoggingTimer = self->_interactionLoggingTimer;
  self->_interactionLoggingTimer = 0;

  _presentedContainerViewController = [(SBSystemNotesManager *)self _presentedContainerViewController];
  hostedAppSceneHandle = [_presentedContainerViewController hostedAppSceneHandle];

  _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  currentConfiguration = [_presentedNotesContentViewController currentConfiguration];
  _presentedContainerViewController2 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  [_presentedNotesContentViewController setDelegate:0];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke;
  v31[3] = &unk_2783A97D8;
  v31[4] = self;
  v33 = animatedCopy;
  v14 = hostedAppSceneHandle;
  v32 = v14;
  v15 = MEMORY[0x223D6F7F0](v31);
  v16 = v15;
  if (reason != 7 || !animatedCopy)
  {
    v15[2](v15);
    if (!currentConfiguration)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke_3;
  v29[3] = &unk_2783A9348;
  v30 = v15;
  [_presentedContainerViewController2 animateOutLeftStashTabWithCompletion:v29];

  if (currentConfiguration)
  {
LABEL_8:
    remoteTarget = [(BSServiceConnection *)self->_presentedConnection remoteTarget];
    [remoteTarget configuration:currentConfiguration didChangeToPresentationMode:&unk_283370940];
  }

LABEL_9:
  [(SBSystemNotesManager *)self _setPresentedConnection:0];
  switch(reason)
  {
    case 2uLL:
      v18 = MEMORY[0x277D6B860];
      break;
    case 6uLL:
      v18 = MEMORY[0x277D6B868];
      break;
    case 4uLL:
      v18 = MEMORY[0x277D6B858];
      break;
    default:
      goto LABEL_16;
  }

  [MEMORY[0x277D6B7F0] logDismissEvent:*v18];
LABEL_16:
  v19 = SBLogSystemNotes();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = SBSystemNotesAnalyticsDismissalReasonDescription(reason);
    *buf = 138543362;
    v35 = v20;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Dismissed Notes PIP for reason: %{public}@", buf, 0xCu);
  }

  sceneIdentifier = [v14 sceneIdentifier];
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke_88;
    v25[3] = &unk_2783B1C08;
    v26 = sceneIdentifier;
    reasonCopy = reason;
    v28 = animatedCopy;
    [mEMORY[0x277D6A798]2 logBlock:v25];
  }
}

void __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 104);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v5[4] = v2;
  v6 = v1;
  [v3 dismissAnimated:v4 completion:v5];
}

id __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke_88(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"[SBSystemNotesManager _dismissNotesContentForReason:animated:]";
  v2 = @"Unknown";
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4)
  {
    v2 = v4;
  }

  v11[0] = v2;
  v10[0] = @"SceneID";
  v10[1] = @"Reason";
  v5 = SBSystemNotesAnalyticsDismissalReasonDescription(v3);
  v11[1] = v5;
  v10[2] = @"Animated";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

- (void)_tearDownContainerViewControllerForSceneHandle:(id)handle
{
  v28 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    _presentedContainerViewController = [(SBSystemNotesManager *)self _presentedContainerViewController];
    hostedAppSceneHandle = [_presentedContainerViewController hostedAppSceneHandle];

    v8 = [hostedAppSceneHandle isEqual:handleCopy];
    pegasusWindowLevelAssertion = SBLogSystemNotes();
    v10 = os_log_type_enabled(pegasusWindowLevelAssertion, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        [(SBSystemNotesManager *)self _tearDownContainerViewControllerForSceneHandle:a2, pegasusWindowLevelAssertion];
      }

      pipController = self->_pipController;
      _presentedContainerViewController2 = [(SBSystemNotesManager *)self _presentedContainerViewController];
      [(SBPIPController *)pipController removeContainerViewController:_presentedContainerViewController2];

      objc_storeWeak(&self->_presentedContainerAdapter, 0);
      [(BSInvalidatable *)self->_pegasusWindowLevelAssertion invalidate];
      pegasusWindowLevelAssertion = self->_pegasusWindowLevelAssertion;
      self->_pegasusWindowLevelAssertion = 0;
    }

    else if (v10)
    {
      v19 = _SBFLoggingMethodProem();
      *buf = 138543874;
      v23 = v19;
      v24 = 2114;
      v25 = handleCopy;
      v26 = 2114;
      v27 = hostedAppSceneHandle;
      _os_log_debug_impl(&dword_21ED4E000, pegasusWindowLevelAssertion, OS_LOG_TYPE_DEBUG, "[%{public}@] not tearing down contentVC as it's not tracking sceneHandle: %{public}@; tracked handle: %{public}@", buf, 0x20u);
    }

    sceneIdentifier = [handleCopy sceneIdentifier];
    v14 = [(FBSceneManager *)self->_fbSceneManager sceneWithIdentifier:sceneIdentifier];
    v15 = v14;
    if (v14)
    {
      [v14 invalidate:0];
    }

    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    isEnabled = [mEMORY[0x277D6A798] isEnabled];

    if (isEnabled)
    {
      mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __71__SBSystemNotesManager__tearDownContainerViewControllerForSceneHandle___block_invoke;
      v20[3] = &unk_2783A91C8;
      v21 = sceneIdentifier;
      [mEMORY[0x277D6A798]2 logBlock:v20];
    }
  }

  else
  {
    hostedAppSceneHandle = SBLogSystemNotes();
    if (os_log_type_enabled(hostedAppSceneHandle, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemNotesManager *)self _tearDownContainerViewControllerForSceneHandle:a2, hostedAppSceneHandle];
    }
  }
}

id __71__SBSystemNotesManager__tearDownContainerViewControllerForSceneHandle___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = @"SceneID";
  v1 = @"Unknown";
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  v6 = v1;
  v7 = @"[SBSystemNotesManager _tearDownContainerViewControllerForSceneHandle:]";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v3;
}

- (int64_t)_currentPresentationMode
{
  _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  v3 = _presentedNotesContentViewController;
  if (_presentedNotesContentViewController)
  {
    presentationMode = [_presentedNotesContentViewController presentationMode];
    if (presentationMode == -1)
    {
      [SBSystemNotesManager _currentPresentationMode];
    }
  }

  else
  {
    presentationMode = -1;
  }

  return presentationMode;
}

- (id)_presentedContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContainerAdapter);
  containerViewController = [WeakRetained containerViewController];

  return containerViewController;
}

- (id)presentedPIPContentViewControllerForInteractionManager:(id)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContainerAdapter);
  _presentedContainerViewController = [(SBSystemNotesManager *)self _presentedContainerViewController];
  v6 = [WeakRetained contentViewControllerForContainerViewController:_presentedContainerViewController];

  return v6;
}

- (id)launchApplicationIdentityForInteractionManager:(id)manager
{
  v3 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:self->_launchBundleID];
  info = [v3 info];
  applicationIdentity = [info applicationIdentity];

  return applicationIdentity;
}

- (BOOL)interactionManager:(id)manager requestsPresentationWithContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  interactionRequests = self->_interactionRequests;
  self->_interactionRequests = interactionRequests + 1;
  if (interactionRequests == 2)
  {
    v9 = SBLogSystemNotes();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SBSystemNotesManager interactionManager:v9 requestsPresentationWithContext:?];
    }
  }

  else if (!interactionRequests)
  {
    v10 = SBLogSystemNotes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesManager interactionManager:requestsPresentationWithContext:];
    }

    if (!self->_interactionLoggingTimer)
    {
      v11 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBSystemNotesManager.interactionLoggingTimer"];
      interactionLoggingTimer = self->_interactionLoggingTimer;
      self->_interactionLoggingTimer = v11;
    }

    objc_initWeak(&location, self);
    v13 = self->_interactionLoggingTimer;
    v14 = MEMORY[0x277D85CD0];
    v15 = MEMORY[0x277D85CD0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __75__SBSystemNotesManager_interactionManager_requestsPresentationWithContext___block_invoke;
    v21 = &unk_2783A9918;
    objc_copyWeak(&v22, &location);
    [(BSAbsoluteMachTimer *)v13 scheduleWithFireInterval:v14 leewayInterval:&v18 queue:3.0 handler:0.1];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  v16 = [(SBSystemNotesManager *)self _handleCreateNoteRequestWithPresentationContext:contextCopy error:0, v18, v19, v20, v21];

  return v16;
}

void __75__SBSystemNotesManager_interactionManager_requestsPresentationWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SBLogSystemNotes();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __75__SBSystemNotesManager_interactionManager_requestsPresentationWithContext___block_invoke_cold_1();
    }

    WeakRetained[23] = 0;
  }
}

- (void)interactionManager:(id)manager requestsNotesDismissalForSource:(unint64_t)source animated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x277D85DE8];
  if (source - 1 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_21F8A6630[source - 1];
  }

  v8 = SBLogSystemNotes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = _SBFLoggingMethodProem();
    v10 = SBSystemNotesAnalyticsDismissalReasonDescription(v7);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture] reason: %{public}@", &v11, 0x16u);
  }

  [(SBSystemNotesManager *)self _dismissNotesWithReason:v7 animated:animatedCopy];
}

- (void)interactionManager:(id)manager requestsUpdatePresentationMode:(int64_t)mode
{
  _presentedNotesContentViewController = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  [_presentedNotesContentViewController setPresentationMode:mode];
}

- (void)interactionManager:(id)manager requestsStartSuppressingKeyboardForReason:(id)reason
{
  keyboardSuppressionManager = self->_keyboardSuppressionManager;
  sceneManager = self->_sceneManager;
  reasonCopy = reason;
  displayIdentity = [(SBSceneManager *)sceneManager displayIdentity];
  [(SBKeyboardSuppressionManager *)keyboardSuppressionManager startSuppressingKeyboardWithReason:reasonCopy predicate:0 displayIdentity:displayIdentity];
}

- (id)interactionManager:(id)manager requestsStashAssertionForReason:(id)reason
{
  v5 = SBApp;
  reasonCopy = reason;
  windowSceneManager = [v5 windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  v9 = [(SBPIPController *)self->_pipController acquireStashAssertionForWindowScene:embeddedDisplayWindowScene withReason:9 identifier:reasonCopy];

  return v9;
}

- (void)_handleCreateNoteRequestWithPresentationContext:error:.cold.1()
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v0 = SBSSystemNotesPresentationModeDescription();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_handleCreateNoteRequestWithPresentationContext:error:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_handleCreateNoteRequestWithPresentationContext:(uint64_t)a1 error:(NSObject *)a2 .cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to create note: %{public}@", &v2, 0xCu);
}

void __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"SBSystemNotesManager.m" lineNumber:569 description:@"not tracking a window but apparently tracking work"];
}

- (void)_presentedNotesContentViewController
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_dismissNotesWithReason:(uint64_t)a1 animated:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBSystemNotesAnalyticsDismissalReasonDescription(a1);
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Dismissing Notes PIP for reason: %{public}@", &v4, 0xCu);
}

- (void)_tearDownContainerViewControllerForSceneHandle:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = _SBFLoggingMethodProem();
  v6 = [a1 _presentedNotesContentViewController];
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] tearing down contentVC: %{public}@", v7, 0x16u);
}

- (void)_tearDownContainerViewControllerForSceneHandle:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = _SBFLoggingMethodProem();
  v6 = [a1 _presentedNotesContentViewController];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] asked to tear down but no scene handle to tear: %{public}@", v7, 0x16u);
}

- (void)_currentPresentationMode
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)interactionManager:(uint64_t *)a1 requestsPresentationWithContext:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134218240;
  v4 = v2;
  v5 = 2048;
  v6 = 0x4008000000000000;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "user swiped %lu times within %g seconds. is PIP not showing?", &v3, 0x16u);
}

@end