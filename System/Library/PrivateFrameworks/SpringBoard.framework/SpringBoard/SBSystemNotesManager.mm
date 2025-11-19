@interface SBSystemNotesManager
- (BOOL)_handleCreateNoteRequestWithMode:(int64_t)a3 presentationSource:(unint64_t)a4;
- (BOOL)_handleCreateNoteRequestWithPresentationContext:(id)a3 error:(id *)a4;
- (BOOL)interactionManager:(id)a3 requestsPresentationWithContext:(id)a4;
- (SBSystemNotesManager)initWithControllerCoordinator:(id)a3 workspace:(id)a4 sceneManager:(id)a5 keyboardArbiterManager:(id)a6 fbSceneManager:(id)a7 sceneDeactivationManager:(id)a8 keyboardSuppressionManager:(id)a9 keyboardDismissalManager:(id)a10 applicationController:(id)a11 systemGestureManager:(id)a12 systemPointerInteractionManager:(id)a13 idleTimerCoordinator:(id)a14 managedProfileConnection:(id)a15;
- (id)_createContentViewControllerForPresentationContext:(id)a3 error:(id *)a4;
- (id)_presentedContainerViewController;
- (id)_presentedNotesContentViewController;
- (id)_sceneBundleIdentifierForNewConfiguration;
- (id)_sceneHandleForApplication:(id)a3 sceneSpecification:(id)a4;
- (id)interactionManager:(id)a3 requestsStashAssertionForReason:(id)a4;
- (id)launchApplicationIdentityForInteractionManager:(id)a3;
- (id)presentedPIPContentViewControllerForInteractionManager:(id)a3;
- (id)server:(id)a3 targetForNewClientConnection:(id)a4;
- (int64_t)_currentPresentationMode;
- (void)_addContentViewControllerToPIPHierarchy:(id)a3 contentViewLayoutSettings:(id)a4 animated:(BOOL)a5;
- (void)_currentPresentationMode;
- (void)_dismissNotesWithReason:(unint64_t)a3 animated:(BOOL)a4;
- (void)_presentedNotesContentViewController;
- (void)_reloadLaunchBundleID;
- (void)_setPresentedConnection:(id)a3;
- (void)_tearDownContainerViewControllerForSceneHandle:(id)a3;
- (void)activateConfiguration:(id)a3;
- (void)contentViewController:(id)a3 didChangeToPresentationMode:(int64_t)a4;
- (void)contentViewController:(id)a3 didReceiveScreenshotRequestForDisplays:(id)a4 completion:(id)a5;
- (void)contentViewControllerDidReceiveTapToExpand:(id)a3;
- (void)contentViewControllerWantsDismissal:(id)a3 forReason:(unint64_t)a4 animated:(BOOL)a5;
- (void)dealloc;
- (void)interactionManager:(id)a3 requestsNotesDismissalForSource:(unint64_t)a4 animated:(BOOL)a5;
- (void)interactionManager:(id)a3 requestsStartSuppressingKeyboardForReason:(id)a4;
- (void)interactionManager:(id)a3 requestsUpdatePresentationMode:(int64_t)a4;
- (void)presentWithConfiguration:(id)a3 completion:(id)a4;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)server:(id)a3 connectionDidInvalidate:(id)a4;
- (void)showOrHideForKeyCommand:(id)a3;
@end

@implementation SBSystemNotesManager

- (SBSystemNotesManager)initWithControllerCoordinator:(id)a3 workspace:(id)a4 sceneManager:(id)a5 keyboardArbiterManager:(id)a6 fbSceneManager:(id)a7 sceneDeactivationManager:(id)a8 keyboardSuppressionManager:(id)a9 keyboardDismissalManager:(id)a10 applicationController:(id)a11 systemGestureManager:(id)a12 systemPointerInteractionManager:(id)a13 idleTimerCoordinator:(id)a14 managedProfileConnection:(id)a15
{
  v63 = a3;
  v55 = a4;
  v20 = a4;
  obj = a5;
  v66 = a5;
  v56 = a6;
  v21 = a6;
  v22 = a7;
  v62 = v21;
  v61 = a7;
  v60 = a8;
  v59 = a9;
  v58 = a10;
  v57 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v64 = a15;
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
      v31 = [MEMORY[0x277D67C48] specification];
      sceneSpecification = v26->_sceneSpecification;
      v26->_sceneSpecification = v31;

      objc_storeStrong(&v26->_sceneManager, obj);
      objc_storeStrong(&v26->_fbSceneManager, v22);
      objc_storeStrong(&v26->_applicationController, a11);
      objc_storeStrong(&v26->_managedProfileConnection, a15);
      [(MCProfileConnection *)v26->_managedProfileConnection registerObserver:v26];
      objc_storeStrong(&v26->_workspace, v55);
      objc_storeStrong(&v26->_keyboardArbiterManager, v56);
      objc_storeStrong(&v26->_sceneDeactivationManager, a8);
      objc_storeStrong(&v26->_keyboardSuppressionManager, a9);
      objc_storeStrong(&v26->_keyboardDismissalManager, a10);
      v33 = v24;
      v34 = [SBPIPSceneContentAdapter alloc];
      [SBApp windowSceneManager];
      v36 = v35 = v25;
      [v66 displayIdentity];
      v38 = v37 = v23;
      v39 = [v36 windowSceneForDisplayIdentity:v38];
      v40 = [(SBPIPSceneContentAdapter *)v34 initWithPIPContentType:1 windowScene:v39];
      sceneContentAdapter = v26->_sceneContentAdapter;
      v26->_sceneContentAdapter = v40;

      v42 = [SBPIPController alloc];
      v43 = *MEMORY[0x277D772B0] + 5.0 + 10.0;
      v44 = [(SBSystemNotesSettings *)v26->_pipSettings interactionSettings];
      v45 = [(SBPIPController *)v42 initWithIdleTimerCoordinator:v35 windowLevel:v44 interactionSettings:v26->_sceneContentAdapter adapter:v43];
      pipController = v26->_pipController;
      v26->_pipController = v45;

      [v63 registerController:v26->_pipController forType:1];
      v47 = [[SBSystemNotesInteractionManager alloc] initWithWorkspace:v20 systemGestureManager:v37 systemPointerInteractionManager:v33 dataSource:v26 delegate:v26];
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
      v23 = v37;
      v24 = v33;
      v25 = v35;
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
  v5 = [(SBSystemNotesSettings *)self->_pipSettings launchSettings];
  v3 = [v5 applicationBundleID];
  launchBundleID = self->_launchBundleID;
  self->_launchBundleID = v3;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [a3 isQuickNoteAllowed];
  v6 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  if (v6 && (v5 & 1) == 0)
  {
    v7 = v6;
    [(SBSystemNotesManager *)self _dismissNotesWithReason:9];
    v6 = v7;
  }
}

- (void)showOrHideForKeyCommand:(id)a3
{
  v4 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  if (v4)
  {
    [(SBSystemNotesManager *)self _dismissNotesWithReason:4];
  }

  else
  {
    [(SBSystemNotesManager *)self _handleCreateNoteRequestWithMode:0 presentationSource:6];
  }
}

- (id)server:(id)a3 targetForNewClientConnection:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_connections = self->_lock_connections;
  if (!lock_connections)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v8 = self->_lock_connections;
    self->_lock_connections = v7;

    lock_connections = self->_lock_connections;
  }

  [(NSMutableSet *)lock_connections addObject:v5];
  os_unfair_lock_unlock(&self->_lock);

  return self;
}

- (void)server:(id)a3 connectionDidInvalidate:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_connections removeObject:v5];
  if (![(NSMutableSet *)self->_lock_connections count])
  {
    lock_connections = self->_lock_connections;
    self->_lock_connections = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = v5;
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

- (void)activateConfiguration:(id)a3
{
  v3 = a3;
  [MEMORY[0x277CF3280] currentContext];
  v7 = v6 = v3;
  v4 = v7;
  v5 = v3;
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

- (void)presentWithConfiguration:(id)a3 completion:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
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

- (void)_setPresentedConnection:(id)a3
{
  v5 = a3;
  p_presentedConnection = &self->_presentedConnection;
  presentedConnection = self->_presentedConnection;
  if (presentedConnection != v5)
  {
    v12 = v5;
    if (presentedConnection)
    {
      [(BSServiceConnection *)presentedConnection invalidate];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableSet *)self->_lock_connections removeObject:self->_presentedConnection];
      os_unfair_lock_unlock(&self->_lock);
    }

    objc_storeStrong(&self->_presentedConnection, a3);
    v8 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
    if (v8)
    {
      v9 = [(BSServiceConnection *)*p_presentedConnection remoteTarget];
      v10 = [v8 currentConfiguration];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "presentationMode")}];
      [v9 configuration:v10 didChangeToPresentationMode:v11];
    }

    v5 = v12;
  }
}

- (id)_sceneBundleIdentifierForNewConfiguration
{
  v3 = self->_launchBundleID;
  if ([(SBSystemNotesManager *)self _currentPresentationMode]!= -1)
  {
    v4 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
    v5 = [v4 bundleIdentifier];

    v3 = v5;
  }

  return v3;
}

- (BOOL)_handleCreateNoteRequestWithMode:(int64_t)a3 presentationSource:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277D66C98]);
  v8 = [(SBSystemNotesManager *)self _sceneBundleIdentifierForNewConfiguration];
  v9 = [v7 initWithSceneBundleIdentifier:v8 userActivity:0 preferredPresentationMode:a3];

  v10 = [[SBSystemNotesContentPresentationContext alloc] initWithRequestedConfiguration:v9 source:a4 positionConfiguration:0];
  LOBYTE(self) = [(SBSystemNotesManager *)self _handleCreateNoteRequestWithPresentationContext:v10 error:0];

  return self;
}

- (BOOL)_handleCreateNoteRequestWithPresentationContext:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 requestedConfiguration];
  v7 = [v5 source];
  v8 = [v6 preferredPresentationMode];
  v9 = [(SBSystemNotesManager *)self _currentPresentationMode];
  v10 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  v11 = [v10 isStashed];

  v12 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if (v8 >= 2)
  {
    [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:error:];
  }

  if (v12 == 4)
  {
    v13 = [v6 userActivity];

    if (v13)
    {
      [SBSystemNotesManager _handleCreateNoteRequestWithPresentationContext:error:];
    }
  }

  v42 = v6;
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
      v40 = v9 == -1;
      if (v9 != -1)
      {
        if (!v9 && v8 == 1)
        {
          v19 = SBLogSystemNotes();
          v20 = a4;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "ignoring SBSSystemNotesPresentationConfiguration for presenting a thumbnail, as we're already showing a full PIP window", buf, 2u);
          }

          goto LABEL_45;
        }

        v32 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
        v33 = [v32 updateConfiguration:v42 sendCreateActionIfNecessary:v11 ^ 1u];

        v34 = v33 == 1;
        v20 = a4;
        if (!v34)
        {
          goto LABEL_38;
        }

        if (v7 == 5)
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
          if (v7 != 4)
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
        if (v9 == 1 && !v8)
        {
          [(SBSystemNotesInteractionManager *)self->_interactionManager expandAnimated:1];
        }

        v36 = v11 ^ 1;
        if (v8)
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

        v19 = [(SBSystemNotesManager *)self _presentedContainerViewController];
        [v19 setStashed:0];
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
      v19 = [(SBSystemNotesManager *)self _createContentViewControllerForPresentationContext:v5 error:&v43];
      v24 = v43;

      v25 = objc_alloc_init(MEMORY[0x277D66008]);
      [v25 setLastKnownSize:@"SystemNotes-Thumbnail" contentType:0.0];

      v26 = [SBPIPContentViewLayoutSettings alloc];
      v27 = [v5 requestedConfiguration];
      v28 = +[SBPIPContentViewLayoutMetrics systemNotesMetricsForPresentationMode:](SBPIPContentViewLayoutMetrics, "systemNotesMetricsForPresentationMode:", [v27 preferredPresentationMode]);
      v29 = [(SBPIPContentViewLayoutSettings *)v26 initWithPlatformMetrics:v28 contentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];

      v30 = [v5 positionConfiguration];
      v31 = v30;
      if (v30)
      {
        -[SBPIPContentViewLayoutSettings setContentViewPosition:](v29, "setContentViewPosition:", [v30 position]);
        [(SBSystemNotesManager *)self _addContentViewControllerToPIPHierarchy:v19 contentViewLayoutSettings:v29 animated:v12 != 4];
        if (v12 == 4)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v12 == 4)
        {
          [(SBSystemNotesManager *)self _addContentViewControllerToPIPHierarchy:v19 contentViewLayoutSettings:v29 animated:0];
          goto LABEL_34;
        }

        [(SBPIPContentViewLayoutSettings *)v29 setContentViewPosition:[(SBSystemNotesInteractionManager *)self->_interactionManager startingPositionForExternalPresentationRequest]];
        [(SBSystemNotesManager *)self _addContentViewControllerToPIPHierarchy:v19 contentViewLayoutSettings:v29 animated:1];
      }

      [(SBSystemNotesInteractionManager *)self->_interactionManager peepAnimated:1];
LABEL_34:

      v18 = v24;
      v20 = a4;
      goto LABEL_45;
    }

    v21 = 0;
    v15 = v18;
  }

  else
  {
    v21 = 0;
  }

  v20 = a4;
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

  if (v20)
  {
    v38 = v15;
    *v20 = v15;
  }

LABEL_51:

  return v21;
}

- (void)contentViewControllerDidReceiveTapToExpand:(id)a3
{
  v4 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  if (v4)
  {
    v5 = v4;
    [(SBSystemNotesInteractionManager *)self->_interactionManager expandAnimated:1];
    v4 = v5;
  }
}

- (void)contentViewController:(id)a3 didChangeToPresentationMode:(int64_t)a4
{
  presentedConnection = self->_presentedConnection;
  v6 = a3;
  v9 = [(BSServiceConnection *)presentedConnection remoteTarget];
  v7 = [v6 currentConfiguration];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v9 configuration:v7 didChangeToPresentationMode:v8];
}

- (void)contentViewControllerWantsDismissal:(id)a3 forReason:(unint64_t)a4 animated:(BOOL)a5
{
  if (a4 == 1)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8 * (a4 == 2);
  }

  [(SBSystemNotesManager *)self _dismissNotesWithReason:v5 animated:a5];
}

- (void)contentViewController:(id)a3 didReceiveScreenshotRequestForDisplays:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB18];
  v12 = a3;
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v14 = objc_alloc_init(SBSystemNotesScreenshotter);
  v15 = [v12 view];

  v16 = [v15 window];
  v17 = [v16 layer];

  LODWORD(v15) = [v17 disableUpdateMask];
  [v17 setDisableUpdateMask:v15 | 2];
  v18 = SBApp;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__SBSystemNotesManager_contentViewController_didReceiveScreenshotRequestForDisplays_completion___block_invoke;
  v24[3] = &unk_2783B1BE0;
  v24[4] = self;
  v25 = v9;
  v29 = v10;
  v30 = a2;
  v26 = v14;
  v27 = v13;
  v31 = v15;
  v28 = v17;
  v19 = v10;
  v20 = v17;
  v21 = v13;
  v22 = v14;
  v23 = v9;
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

- (id)_sceneHandleForApplication:(id)a3 sceneSpecification:(id)a4
{
  sceneManager = self->_sceneManager;
  v7 = a4;
  v8 = a3;
  v9 = [(SBSceneManager *)sceneManager newSceneIdentityForApplication:v8];
  v10 = [(SBSceneManager *)self->_sceneManager displayIdentity];
  v11 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v8 sceneIdentity:v9 displayIdentity:v10];

  v12 = [v11 sceneDefinition];
  v13 = [v12 mutableCopy];

  [v13 setSpecification:v7];
  [v11 setSceneDefinition:v13];
  v14 = [(SBMainDisplaySceneManager *)self->_sceneManager fetchOrCreateApplicationSceneHandleForRequest:v11];
  [v14 setDefaultBackgroundStyle:3];
  [v14 setKeyboardContextMaskStyle:2];

  return v14;
}

- (id)_createContentViewControllerForPresentationContext:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 requestedConfiguration];
  v8 = [v7 sceneBundleIdentifier];

  v9 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:v8];
  if (v9)
  {
    v10 = [(SBSystemNotesManager *)self _sceneHandleForApplication:v9 sceneSpecification:self->_sceneSpecification];
    if (v10)
    {
      v30 = a4;
      v11 = [SBApp windowSceneManager];
      [(SBSceneManager *)self->_sceneManager displayIdentity];
      v13 = v12 = v6;
      v14 = [v11 windowSceneForDisplayIdentity:v13];

      v15 = [v14 switcherController];
      [v10 setWantsEnhancedWindowingEnabled:{objc_msgSend(v15, "isChamoisWindowingUIEnabled")}];

      v16 = [SBSystemNotesContentViewController alloc];
      workspace = self->_workspace;
      v18 = [v14 transientUIInteractionManager];
      v19 = [(SBSystemNotesSettings *)self->_pipSettings interactionSettings];
      v31 = v12;
      v20 = [(SBSystemNotesContentViewController *)v16 initWithSceneHandle:v10 workspace:workspace transientUIInteractionManager:v18 notesInteractionSettings:v19 presentationContext:v12];

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
      a4 = v30;
      v6 = v31;
    }

    else
    {
      if (!a4)
      {
        v20 = 0;
        goto LABEL_11;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create SBSystemNotesContentViewController scene handle creation failed. bundleID: %@", v8];;
      v23 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37 = v14;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a4 = [v23 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:2 userInfo:v24];

      v20 = 0;
    }
  }

  else
  {
    if (!a4)
    {
LABEL_15:
      v20 = 0;
      goto LABEL_16;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create SBSystemNotesContentViewController couldn't find application bundleID: %@", v8];;
    v22 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = v10;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v22 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:1 userInfo:v14];
    *a4 = v20 = 0;
  }

LABEL_11:
  if (a4 && !v20)
  {
    if (!*a4)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create SBSystemNotesContentViewController bundleID: %@", v8];;
      v26 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33 = v25;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a4 = [v26 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:0 userInfo:v27];
    }

    goto LABEL_15;
  }

LABEL_16:

  return v20;
}

- (void)_addContentViewControllerToPIPHierarchy:(id)a3 contentViewLayoutSettings:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if (a3)
  {
    v40 = v5;
    v43 = v9;
    objc_storeStrong(&self->_contentViewLayoutSettings, a4);
    v10 = a3;
    v11 = [SBApp windowSceneManager];
    v12 = [(SBSceneManager *)self->_sceneManager displayIdentity];
    v13 = [v11 windowSceneForDisplayIdentity:v12];

    v14 = [v13 layoutStateTransitionCoordinator];
    v41 = v13;
    v15 = [v13 pictureInPictureManager];
    v16 = [SBPIPSceneContentContainerAdapter alloc];
    v17 = [(SBSystemNotesSettings *)self->_pipSettings stashVisualSettings];
    v18 = [(SBSystemNotesSettings *)self->_pipSettings shadowSettings];
    v19 = [(SBSystemNotesSettings *)self->_pipSettings interactionSettings];
    keyboardArbiterManager = self->_keyboardArbiterManager;
    v21 = [(SBMainWorkspace *)self->_workspace keyboardFocusController];
    v42 = v14;
    v22 = [(SBPIPSceneContentContainerAdapter *)v16 initWithSceneContentViewController:v10 contentViewLayoutSettings:v43 stashSettings:v17 shadowSettings:v18 interactionSettings:v19 keyboardArbiterManager:keyboardArbiterManager keyboardFocusController:v21 keyboardSuppressionManager:self->_keyboardSuppressionManager keyboardDismissalManager:self->_keyboardDismissalManager deactivationManager:self->_sceneDeactivationManager transitionCoordinator:v14 delegate:self->_interactionManager];

    v23 = [SBPIPContainerViewController alloc];
    pipController = self->_pipController;
    v25 = [(SBSystemNotesSettings *)self->_pipSettings interactionSettings];
    v26 = [(SBPIPContainerViewController *)v23 initWithPIPController:pipController interactionSettings:v25 adapter:v22];

    if (v26)
    {
      [(SBPIPController *)self->_pipController addContainerViewController:v26 dataSource:self->_interactionManager];
      v27 = [v15 acquireWindowLevelOverrideAssertionForControllerWithContentType:0 toWindowLevel:(*MEMORY[0x277D772B0] + 5.0 + 10.0 + -1.0) withReason:9 identifier:@"SBSystemNotesManager-ActivePresentation"];
      pegasusWindowLevelAssertion = self->_pegasusWindowLevelAssertion;
      self->_pegasusWindowLevelAssertion = v27;
    }

    if (v40)
    {
      v29 = +[SBPIPSettingsDomain rootSettings];
      v30 = [v29 fadeInOutSettings];
      v31 = [v30 fadeInOutAnimationSettings];

      v32 = +[SBPIPSettingsDomain rootSettings];
      v33 = [v32 fadeInOutSettings];
      [v33 fadeInInitialValues];
      v35 = v34;
      v37 = v36;
      v39 = v38;
    }

    else
    {
      v31 = 0;
      v35 = 0.0;
      v37 = 0.0;
      v39 = 0.0;
    }

    [(SBPIPContainerViewController *)v26 startShowingContentWithAnimationSettings:v31 parameters:0 completion:v35, v37, v39];
    objc_storeWeak(&self->_presentedContainerAdapter, v22);

    v9 = v43;
  }
}

- (id)_presentedNotesContentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContainerAdapter);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained sceneContentViewController];
    if (!v4)
    {
      [SBSystemNotesManager _presentedNotesContentViewController];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_dismissNotesWithReason:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v7 = SBLogSystemNotes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBSystemNotesManager _dismissNotesWithReason:a3 animated:v7];
  }

  self->_interactionRequests = 0;
  [(BSAbsoluteMachTimer *)self->_interactionLoggingTimer invalidate];
  interactionLoggingTimer = self->_interactionLoggingTimer;
  self->_interactionLoggingTimer = 0;

  v9 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  v10 = [v9 hostedAppSceneHandle];

  v11 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  v12 = [v11 currentConfiguration];
  v13 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  [v11 setDelegate:0];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke;
  v31[3] = &unk_2783A97D8;
  v31[4] = self;
  v33 = v4;
  v14 = v10;
  v32 = v14;
  v15 = MEMORY[0x223D6F7F0](v31);
  v16 = v15;
  if (a3 != 7 || !v4)
  {
    v15[2](v15);
    if (!v12)
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
  [v13 animateOutLeftStashTabWithCompletion:v29];

  if (v12)
  {
LABEL_8:
    v17 = [(BSServiceConnection *)self->_presentedConnection remoteTarget];
    [v17 configuration:v12 didChangeToPresentationMode:&unk_283370940];
  }

LABEL_9:
  [(SBSystemNotesManager *)self _setPresentedConnection:0];
  switch(a3)
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
    v20 = SBSystemNotesAnalyticsDismissalReasonDescription(a3);
    *buf = 138543362;
    v35 = v20;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Dismissed Notes PIP for reason: %{public}@", buf, 0xCu);
  }

  v21 = [v14 sceneIdentifier];
  v22 = [MEMORY[0x277D6A798] sharedInstance];
  v23 = [v22 isEnabled];

  if (v23)
  {
    v24 = [MEMORY[0x277D6A798] sharedInstance];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__SBSystemNotesManager__dismissNotesWithReason_animated___block_invoke_88;
    v25[3] = &unk_2783B1C08;
    v26 = v21;
    v27 = a3;
    v28 = v4;
    [v24 logBlock:v25];
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

- (void)_tearDownContainerViewControllerForSceneHandle:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(SBSystemNotesManager *)self _presentedContainerViewController];
    v7 = [v6 hostedAppSceneHandle];

    v8 = [v7 isEqual:v5];
    pegasusWindowLevelAssertion = SBLogSystemNotes();
    v10 = os_log_type_enabled(pegasusWindowLevelAssertion, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        [(SBSystemNotesManager *)self _tearDownContainerViewControllerForSceneHandle:a2, pegasusWindowLevelAssertion];
      }

      pipController = self->_pipController;
      v12 = [(SBSystemNotesManager *)self _presentedContainerViewController];
      [(SBPIPController *)pipController removeContainerViewController:v12];

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
      v25 = v5;
      v26 = 2114;
      v27 = v7;
      _os_log_debug_impl(&dword_21ED4E000, pegasusWindowLevelAssertion, OS_LOG_TYPE_DEBUG, "[%{public}@] not tearing down contentVC as it's not tracking sceneHandle: %{public}@; tracked handle: %{public}@", buf, 0x20u);
    }

    v13 = [v5 sceneIdentifier];
    v14 = [(FBSceneManager *)self->_fbSceneManager sceneWithIdentifier:v13];
    v15 = v14;
    if (v14)
    {
      [v14 invalidate:0];
    }

    v16 = [MEMORY[0x277D6A798] sharedInstance];
    v17 = [v16 isEnabled];

    if (v17)
    {
      v18 = [MEMORY[0x277D6A798] sharedInstance];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __71__SBSystemNotesManager__tearDownContainerViewControllerForSceneHandle___block_invoke;
      v20[3] = &unk_2783A91C8;
      v21 = v13;
      [v18 logBlock:v20];
    }
  }

  else
  {
    v7 = SBLogSystemNotes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemNotesManager *)self _tearDownContainerViewControllerForSceneHandle:a2, v7];
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
  v2 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 presentationMode];
    if (v4 == -1)
    {
      [SBSystemNotesManager _currentPresentationMode];
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)_presentedContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContainerAdapter);
  v3 = [WeakRetained containerViewController];

  return v3;
}

- (id)presentedPIPContentViewControllerForInteractionManager:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContainerAdapter);
  v5 = [(SBSystemNotesManager *)self _presentedContainerViewController];
  v6 = [WeakRetained contentViewControllerForContainerViewController:v5];

  return v6;
}

- (id)launchApplicationIdentityForInteractionManager:(id)a3
{
  v3 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:self->_launchBundleID];
  v4 = [v3 info];
  v5 = [v4 applicationIdentity];

  return v5;
}

- (BOOL)interactionManager:(id)a3 requestsPresentationWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v16 = [(SBSystemNotesManager *)self _handleCreateNoteRequestWithPresentationContext:v7 error:0, v18, v19, v20, v21];

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

- (void)interactionManager:(id)a3 requestsNotesDismissalForSource:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x277D85DE8];
  if (a4 - 1 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_21F8A6630[a4 - 1];
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

  [(SBSystemNotesManager *)self _dismissNotesWithReason:v7 animated:v5];
}

- (void)interactionManager:(id)a3 requestsUpdatePresentationMode:(int64_t)a4
{
  v5 = [(SBSystemNotesManager *)self _presentedNotesContentViewController];
  [v5 setPresentationMode:a4];
}

- (void)interactionManager:(id)a3 requestsStartSuppressingKeyboardForReason:(id)a4
{
  keyboardSuppressionManager = self->_keyboardSuppressionManager;
  sceneManager = self->_sceneManager;
  v6 = a4;
  v7 = [(SBSceneManager *)sceneManager displayIdentity];
  [(SBKeyboardSuppressionManager *)keyboardSuppressionManager startSuppressingKeyboardWithReason:v6 predicate:0 displayIdentity:v7];
}

- (id)interactionManager:(id)a3 requestsStashAssertionForReason:(id)a4
{
  v5 = SBApp;
  v6 = a4;
  v7 = [v5 windowSceneManager];
  v8 = [v7 embeddedDisplayWindowScene];

  v9 = [(SBPIPController *)self->_pipController acquireStashAssertionForWindowScene:v8 withReason:9 identifier:v6];

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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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