@interface SBRemoteTransientOverlaySession
- (BOOL)hasPendingButtonEvents:(unint64_t)events;
- (BOOL)isPresentedOnWindowScene:(id)scene;
- (BOOL)remoteTransientOverlayViewController:(id)controller prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:(id)identifier;
- (SBRemoteTransientOverlaySessionHostDelegate)hostDelegate;
- (id)_actionForHandlingButtonEvents:(unint64_t)events;
- (id)_initWithSessionID:(id)d definition:(id)definition sceneWorkspaceController:(id)controller;
- (id)remoteTransientOverlayViewController:(id)controller requestsActionForHandlingButtonEvents:(unint64_t)events;
- (void)_addTransaction:(id)transaction;
- (void)_didActivate;
- (void)_didDeactivate;
- (void)_invalidateWithReason:(int64_t)reason error:(id)error;
- (void)_processPendingTransactions;
- (void)_registerObserversForTransaction:(id)transaction;
- (void)_requestInvalidationWithReason:(int64_t)reason error:(id)error;
- (void)activateWithContext:(id)context;
- (void)addSessionObserver:(id)observer;
- (void)deactivate;
- (void)dealloc;
- (void)getActionForHandlingButtonEvents:(unint64_t)events completion:(id)completion;
- (void)invalidate;
- (void)prepareWithConfigurationContext:(id)context;
- (void)remoteTransientOverlayViewController:(id)controller didDisappearAnimated:(BOOL)animated;
- (void)remoteTransientOverlayViewController:(id)controller didTerminateWithError:(id)error;
- (void)remoteTransientOverlayViewController:(id)controller willAppearAnimated:(BOOL)animated;
- (void)remoteTransientOverlayViewControllerDidInvalidate:(id)invalidate;
- (void)remoteTransientOverlayViewControllerRequestsDeactivation:(id)deactivation;
- (void)remoteTransientOverlayViewControllerRequestsInvalidation:(id)invalidation;
- (void)removeSessionObserver:(id)observer;
@end

@implementation SBRemoteTransientOverlaySession

- (id)_initWithSessionID:(id)d definition:(id)definition sceneWorkspaceController:(id)controller
{
  dCopy = d;
  definitionCopy = definition;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = SBRemoteTransientOverlaySession;
  v11 = [(SBRemoteTransientOverlaySession *)&v17 init];
  if (v11)
  {
    v12 = [definitionCopy copy];
    definition = v11->_definition;
    v11->_definition = v12;

    v14 = [dCopy copy];
    sessionID = v11->_sessionID;
    v11->_sessionID = v14;

    v11->_valid = 1;
    objc_storeStrong(&v11->_sceneWorkspaceController, controller);
  }

  return v11;
}

- (void)dealloc
{
  [(SBRemoteTransientOverlayViewController *)self->_containerViewController setDelegate:0];
  [(SBRemoteTransientOverlayViewController *)self->_secondaryViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SBRemoteTransientOverlaySession;
  [(SBRemoteTransientOverlaySession *)&v3 dealloc];
}

- (void)remoteTransientOverlayViewControllerRequestsDeactivation:(id)deactivation
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SBLogTransientOverlay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remoteTransientOverlayViewControllerRequestsDeactivation", &v5, 0xCu);
  }

  [(SBRemoteTransientOverlaySession *)self deactivate];
}

- (BOOL)remoteTransientOverlayViewController:(id)controller prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
  LOBYTE(self) = [WeakRetained remoteTransientOverlaySession:self prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:identifierCopy];

  return self;
}

- (id)remoteTransientOverlayViewController:(id)controller requestsActionForHandlingButtonEvents:(unint64_t)events
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = SBLogTransientOverlay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: remoteTransientOverlayViewController:requestsActionForHandlingButtonEvents", &v9, 0xCu);
  }

  v7 = [(SBRemoteTransientOverlaySession *)self _actionForHandlingButtonEvents:events];

  return v7;
}

- (void)remoteTransientOverlayViewControllerDidInvalidate:(id)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SBLogTransientOverlay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remoteTransientOverlayViewControllerDidInvalidate", &v5, 0xCu);
  }

  [(SBRemoteTransientOverlaySession *)self _invalidateWithReason:3 error:0];
}

- (void)remoteTransientOverlayViewControllerRequestsInvalidation:(id)invalidation
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SBLogTransientOverlay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remoteTransientOverlayViewControllerRequestsInvalidation", &v5, 0xCu);
  }

  [(SBRemoteTransientOverlaySession *)self _requestInvalidationWithReason:2 error:0];
}

- (void)remoteTransientOverlayViewController:(id)controller didTerminateWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = SBLogTransientOverlay();
  v7 = v6;
  if (errorCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBRemoteTransientOverlaySession remoteTransientOverlayViewController:didTerminateWithError:];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: remoteTransientOverlayViewController:didTerminateWithError", &v8, 0xCu);
  }

  [(SBRemoteTransientOverlaySession *)self _requestInvalidationWithReason:5 error:errorCopy];
}

- (void)remoteTransientOverlayViewController:(id)controller willAppearAnimated:(BOOL)animated
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: remoteTransientOverlayViewController:willAppearAnimated", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
  v7 = [WeakRetained activeWallpaperVariantForRemoteTransientOverlaySession:self];

  [(SBRemoteTransientOverlayViewController *)self->_containerViewController setWallpaperVariant:v7];
  [(SBRemoteTransientOverlayViewController *)self->_secondaryViewController setWallpaperVariant:v7];
}

- (void)remoteTransientOverlayViewController:(id)controller didDisappearAnimated:(BOOL)animated
{
  controllerCopy = controller;
  [(SBRemoteTransientOverlaySession *)self _didDeactivate];
  shouldInvalidateWhenDeactivated = [controllerCopy shouldInvalidateWhenDeactivated];

  if (shouldInvalidateWhenDeactivated)
  {

    [(SBRemoteTransientOverlaySession *)self _requestInvalidationWithReason:3 error:0];
  }
}

- (void)activateWithContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  BSDispatchQueueAssertMain();
  if (!self->_prepared)
  {
    [(SBRemoteTransientOverlaySession *)a2 activateWithContext:?];
  }

  v6 = SBLogTransientOverlay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = contextCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: activateWithContext: %{public}@", buf, 0x16u);
  }

  hostDelegate = [(SBRemoteTransientOverlaySession *)self hostDelegate];
  v8 = [hostDelegate remoteTransientOverlaySession:self shouldActivateWithContext:contextCopy];

  if (v8)
  {
    self->_hasInitiatedPresentation = 1;
    objc_initWeak(buf, self);
    v9 = objc_alloc(MEMORY[0x277CF0BA8]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke;
    v12[3] = &unk_2783C0030;
    objc_copyWeak(&v15, buf);
    v13 = contextCopy;
    selfCopy2 = self;
    v10 = [v9 initWithBlock:v12];
    [v10 setDebugName:@"activateWithContext"];
    [(SBRemoteTransientOverlaySession *)self _addTransaction:v10];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = SBLogTransientOverlay();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBRemoteTransientOverlaySession activateWithContext:];
    }

    [(SBRemoteTransientOverlaySession *)self _invalidateWithReason:4 error:0];
  }
}

void __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isValid])
  {
    v8 = WeakRetained[2];
    if (!v8)
    {
      v19 = SBLogTransientOverlay();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_cold_2();
      }

      v6[2](v6, 1);
      goto LABEL_41;
    }

    v9 = [SBApp windowSceneManager];
    v10 = [WeakRetained hostDelegate];
    v11 = [v10 embeddedDisplayWindowSceneForRemoteTransientOverlaySession:WeakRetained];

    v12 = v11;
    v47 = v9;
    v13 = [v9 activeDisplayWindowScene];
    v14 = [*(a1 + 32) presentationTarget];
    v15 = [v14 targetPredicate];
    v16 = [v15 scenePersistentIdentifier];

    v46 = v16;
    if ([WeakRetained[10] prefersEmbeddedDisplayPresentation])
    {
      v52 = v13;
      v17 = v12;
      if (!v12)
      {
LABEL_14:
        v17 = v13;
      }
    }

    else
    {
      v52 = v12;
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = [v47 windowSceneForPersistentIdentifier:v16];
      v52 = v12;
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    if ([WeakRetained[10] prefersEmbeddedDisplayPresentation])
    {
      v20 = v13;
    }

    else
    {
      v20 = v17;
    }

    v43 = v20;
    v44 = v12;
    if ([v43 isExternalDisplayWindowScene])
    {
      v21 = WeakRetained[3] != 0;
    }

    else
    {
      v21 = 0;
    }

    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x2020000000;
    v74 = 0;
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v51 = v13;
    v48 = v21;
    v45 = v5;
    v49 = v8;
    if (v21)
    {
      if ([v17 isExternalDisplayWindowScene])
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }
    }

    else
    {
      v23 = [v17 isExternalDisplayWindowScene];
    }

    v50 = v14 != 0;
    if (WeakRetained[3] || (v24 = v14 != 0, [WeakRetained[10] prefersEmbeddedDisplayPresentation]))
    {
      v25 = [v17 isEqual:v51];
      if (v14)
      {
        v24 = v25;
      }

      else
      {
        v24 = 0;
      }
    }

    v26 = ([v14 requiresFullscreenPresentation] ^ 1) & v24;
    v27 = *(a1 + 32);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_22;
    v69[3] = &unk_2783BFFE0;
    v28 = WeakRetained;
    v70 = v28;
    v72 = v73;
    v29 = v22;
    v71 = v29;
    v30 = v27;
    v31 = v48;
    v42 = v26;
    [v49 prepareForActivationWithContext:v30 presentationMode:v23 presentEmbedded:v26 windowScene:v17 completion:v69];
    if (v48)
    {
      dispatch_group_enter(v29);
      if ([v52 isExternalDisplayWindowScene])
      {
        v32 = 5;
      }

      else
      {
        v32 = 4;
      }

      if (![v52 isEqual:v51] || objc_msgSend(v14, "requiresFullscreenPresentation"))
      {
        v50 = 0;
      }

      v33 = WeakRetained[3];
      v34 = *(a1 + 32);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_2;
      v65[3] = &unk_2783BFFE0;
      v66 = v28;
      v68 = v73;
      v67 = v29;
      v35 = v33;
      v31 = v48;
      v36 = v34;
      v37 = v51;
      [v35 prepareForActivationWithContext:v36 presentationMode:v32 presentEmbedded:v50 windowScene:v52 completion:v65];
    }

    else
    {
      v37 = v51;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_3;
    block[3] = &unk_2783C0008;
    v61 = v73;
    v54 = v28;
    v55 = *(a1 + 32);
    v56 = v17;
    v62 = v42;
    v38 = *(a1 + 40);
    v57 = v14;
    v58 = v38;
    v63 = v31;
    v59 = v52;
    v64 = v50;
    v60 = v6;
    v39 = v52;
    v40 = v14;
    v41 = v17;
    dispatch_group_notify(v29, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v73, 8);
    v5 = v45;
    v8 = v49;
LABEL_41:

    goto LABEL_42;
  }

  v18 = SBLogTransientOverlay();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_cold_1();
  }

  v6[2](v6, 1);
LABEL_42:
}

void __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_22(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 domain];
    if ([v4 isEqualToString:@"SBRemoteTransientOverlayViewControllerErrorDomain"])
    {
      v5 = [v3 code];

      if (v5 == -1000)
      {
        v6 = 1;
LABEL_7:
        [*(a1 + 32) _invalidateWithReason:v6 error:v3];

        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = 4;
    goto LABEL_7;
  }

LABEL_8:
  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

void __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 domain];
    if ([v4 isEqualToString:@"SBRemoteTransientOverlayViewControllerErrorDomain"])
    {
      v5 = [v3 code];

      if (v5 == -1000)
      {
        v6 = 1;
LABEL_7:
        [*(a1 + 32) _invalidateWithReason:v6 error:v3];

        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = 4;
    goto LABEL_7;
  }

LABEL_8:
  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

uint64_t __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_3(uint64_t a1)
{
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 16);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
    if (v2)
    {
      v4 = [[SBRemoteTransientOverlayPresentationRequest alloc] initWithViewController:v2];
      -[SBRemoteTransientOverlayPresentationRequest setShouldDismissPresentedBanners:](v4, "setShouldDismissPresentedBanners:", [*(a1 + 40) shouldDismissPresentedBanners]);
      -[SBRemoteTransientOverlayPresentationRequest setShouldStashPictureInPictureIfNeeded:](v4, "setShouldStashPictureInPictureIfNeeded:", [*(a1 + 40) shouldStashPictureInPictureIfNeeded]);
      if ([v2 isActivatingForSiri])
      {
        [(SBRemoteTransientOverlayPresentationRequest *)v4 setShouldDismissSiri:0];
      }

      -[SBRemoteTransientOverlayPresentationRequest setIsScreenshotMarkup:](v4, "setIsScreenshotMarkup:", [v2 isScreenshotMarkup]);
      v5 = *(a1 + 32);
      if (*(v5 + 24) || [*(v5 + 80) prefersEmbeddedDisplayPresentation])
      {
        [(SBRemoteTransientOverlayPresentationRequest *)v4 setWindowScene:*(a1 + 48)];
      }

      [(SBRemoteTransientOverlayPresentationRequest *)v4 setPresentationTarget:*(a1 + 56)];
      [(SBRemoteTransientOverlayPresentationRequest *)v4 setShouldPresentEmbeddedInTargetScene:*(a1 + 96)];
      v6 = [*(*(a1 + 64) + 80) sceneProvidingProcess];
      [(SBRemoteTransientOverlayPresentationRequest *)v4 setIsSceneBacked:v6 != 0];

      if ([WeakRetained remoteTransientOverlaySession:*(a1 + 32) performPresentationRequest:v4])
      {

        if (*(a1 + 97) == 1)
        {
          v7 = *(*(a1 + 32) + 24);
          if (v7)
          {
            v8 = [[SBRemoteTransientOverlayPresentationRequest alloc] initWithViewController:v7];
            -[SBRemoteTransientOverlayPresentationRequest setShouldDismissPresentedBanners:](v8, "setShouldDismissPresentedBanners:", [*(a1 + 40) shouldDismissPresentedBanners]);
            if ([v7 isActivatingForSiri])
            {
              [(SBRemoteTransientOverlayPresentationRequest *)v8 setShouldDismissSiri:0];
            }

            -[SBRemoteTransientOverlayPresentationRequest setIsScreenshotMarkup:](v8, "setIsScreenshotMarkup:", [v7 isScreenshotMarkup]);
            [(SBRemoteTransientOverlayPresentationRequest *)v8 setPresentationTarget:*(a1 + 56)];
            [(SBRemoteTransientOverlayPresentationRequest *)v8 setWindowScene:*(a1 + 72)];
            [(SBRemoteTransientOverlayPresentationRequest *)v8 setShouldPresentEmbeddedInTargetScene:*(a1 + 98)];
            v9 = [*(*(a1 + 32) + 80) sceneProvidingProcess];
            [(SBRemoteTransientOverlayPresentationRequest *)v8 setIsSceneBacked:v9 != 0];

            v10 = [WeakRetained remoteTransientOverlaySession:*(a1 + 32) performPresentationRequest:v8];
            if ((v10 & 1) == 0)
            {
              [*(a1 + 32) _invalidateWithReason:4 error:0];
            }
          }

          else
          {
            v18 = SBLogTransientOverlay();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_3_cold_1(a1 + 64, v18, v19, v20, v21, v22, v23, v24);
            }

            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v17 = 1;
        goto LABEL_26;
      }

      [*(a1 + 32) _invalidateWithReason:4 error:0];
    }

    else
    {
      v4 = SBLogTransientOverlay();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
      {
        __55__SBRemoteTransientOverlaySession_activateWithContext___block_invoke_3_cold_2(a1, &v4->super, v11, v12, v13, v14, v15, v16);
      }
    }

    v17 = 0;
    v10 = 0;
LABEL_26:
    *(*(a1 + 32) + 34) = v17;
    *(*(a1 + 32) + 35) = v10;
  }

  return (*(*(a1 + 80) + 16))();
}

- (void)addSessionObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)deactivate
{
  v10 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = SBLogTransientOverlay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: deactivate", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = objc_alloc(MEMORY[0x277CF0BA8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SBRemoteTransientOverlaySession_deactivate__block_invoke;
  v6[3] = &unk_2783B6F88;
  objc_copyWeak(&v7, buf);
  v5 = [v4 initWithBlock:v6];
  [v5 setDebugName:@"deactivate"];
  [(SBRemoteTransientOverlaySession *)self _addTransaction:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __45__SBRemoteTransientOverlaySession_deactivate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isValid])
  {
    v6 = WeakRetained[2];
    if (v6)
    {
      v7 = objc_loadWeakRetained(WeakRetained + 13);
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      v9 = [[SBRemoteTransientOverlayDismissalRequest alloc] initWithViewController:v6];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __45__SBRemoteTransientOverlaySession_deactivate__block_invoke_2;
      v17[3] = &unk_2783A8C18;
      v10 = v8;
      v18 = v10;
      [(SBRemoteTransientOverlayDismissalRequest *)v9 setCompletionHandler:v17];
      [v7 remoteTransientOverlaySession:WeakRetained performDismissalRequest:v9];
      v11 = WeakRetained[3];
      if (v11)
      {
        dispatch_group_enter(v10);
        v12 = [[SBRemoteTransientOverlayDismissalRequest alloc] initWithViewController:v11];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __45__SBRemoteTransientOverlaySession_deactivate__block_invoke_3;
        v15[3] = &unk_2783A8C18;
        v16 = v10;
        [(SBRemoteTransientOverlayDismissalRequest *)v12 setCompletionHandler:v15];
        [v7 remoteTransientOverlaySession:WeakRetained performDismissalRequest:v12];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__SBRemoteTransientOverlaySession_deactivate__block_invoke_4;
      block[3] = &unk_2783A9348;
      v14 = v4;
      dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);
    }

    else
    {
      (*(v4 + 2))(v4, 1);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (void)getActionForHandlingButtonEvents:(unint64_t)events completion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0BA8]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __79__SBRemoteTransientOverlaySession_getActionForHandlingButtonEvents_completion___block_invoke;
  v13 = &unk_2783C0080;
  objc_copyWeak(v15, &location);
  v8 = completionCopy;
  v14 = v8;
  v15[1] = events;
  v9 = [v7 initWithBlock:&v10];
  [v9 setDebugName:{@"getActionForHandlingButtonEvents", v10, v11, v12, v13}];
  [(SBRemoteTransientOverlaySession *)self _addTransaction:v9];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __79__SBRemoteTransientOverlaySession_getActionForHandlingButtonEvents_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __79__SBRemoteTransientOverlaySession_getActionForHandlingButtonEvents_completion___block_invoke_2;
  v12 = &unk_2783C0058;
  v13 = v4;
  v14 = *(a1 + 32);
  v6 = v4;
  v7 = MEMORY[0x223D6F7F0](&v9);
  if ([WeakRetained isValid])
  {
    v8 = [WeakRetained _actionForHandlingButtonEvents:*(a1 + 48)];
    (v7)[2](v7, v8, 0);
  }

  else
  {
    v7[2](v7, 0, 0);
  }
}

void __79__SBRemoteTransientOverlaySession_getActionForHandlingButtonEvents_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a3 != 0;
  v6 = *(v4 + 16);
  v7 = a2;
  v6(v4, v5);
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasPendingButtonEvents:(unint64_t)events
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  identifierToHandlingButtonEvents = self->_identifierToHandlingButtonEvents;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SBRemoteTransientOverlaySession_hasPendingButtonEvents___block_invoke;
  v6[3] = &unk_2783C00A8;
  v6[4] = &v7;
  v6[5] = events;
  [(NSMutableDictionary *)identifierToHandlingButtonEvents enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __58__SBRemoteTransientOverlaySession_hasPendingButtonEvents___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 integerValue];
  if ((*(a1 + 40) & result) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isPresentedOnWindowScene:(id)scene
{
  _sbWindowScene = [(SBTransientOverlayViewController *)self->_containerViewController _sbWindowScene];
  if ([_sbWindowScene isMainDisplayWindowScene])
  {
    isMainDisplayWindowScene = 1;
  }

  else
  {
    _sbWindowScene2 = [(SBTransientOverlayViewController *)self->_secondaryViewController _sbWindowScene];
    isMainDisplayWindowScene = [_sbWindowScene2 isMainDisplayWindowScene];
  }

  return isMainDisplayWindowScene;
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();

  [(SBRemoteTransientOverlaySession *)self _requestInvalidationWithReason:2 error:0];
}

- (void)prepareWithConfigurationContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  BSDispatchQueueAssertMain();
  if (!self->_prepared)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = contextCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: prepareWithConfigurationContext: %{public}@", buf, 0x16u);
    }

    self->_prepared = 1;
    objc_initWeak(buf, self);
    v6 = objc_alloc(MEMORY[0x277CF0BA8]);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke;
    v11 = &unk_2783C00F8;
    objc_copyWeak(&v13, buf);
    v12 = contextCopy;
    v7 = [v6 initWithBlock:&v8];
    [v7 setDebugName:{@"prepareWithConfigurationContext", v8, v9, v10, v11}];
    [(SBRemoteTransientOverlaySession *)self _addTransaction:v7];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isValid])
  {
    v6 = [WeakRetained definition];
    v7 = WeakRetained[8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke_41;
    v10[3] = &unk_2783C00D0;
    v11 = v6;
    v12 = WeakRetained;
    v13 = *(a1 + 32);
    v14 = v4;
    v8 = v6;
    [SBRemoteTransientOverlayViewController requestViewControllersForAlertDefinition:v8 sceneWorkspaceController:v7 connectionHandler:v10];
  }

  else
  {
    v9 = SBLogTransientOverlay();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke_cold_1();
    }

    (*(v4 + 2))(v4, 1);
  }
}

void __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke_41(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8 && (!SBFIsChamoisExternalDisplayControllerAvailable() || ([*(a1 + 32) secondaryViewControllerClassName], v11 = objc_claimAutoreleasedReturnValue(), v11, v9) || !v11))
  {
    v12 = +[SBUIController sharedInstanceIfExists];
    v13 = [v12 isConnectedToWindowedAccessory];

    if (v13)
    {
      v14 = +[SBUIController sharedInstanceIfExists];
      [v14 visibleScreenCoordinatesForWindowedAccessory];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [v8 didTransitionToAttachedToWindowedAccessory:1 windowedAccessoryCutoutFrameInScreen:{v16, v18, v20, v22}];
    }

    objc_storeStrong((*(a1 + 40) + 16), a2);
    [v8 setDelegate:*(a1 + 40)];
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v24 = *(a1 + 48);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke_2;
    v31[3] = &unk_2783A8C18;
    v25 = v23;
    v32 = v25;
    [v8 configureWithContext:v24 completion:v31];
    if (v9)
    {
      dispatch_group_enter(v25);
      objc_storeStrong((*(a1 + 40) + 24), a3);
      [v9 setDelegate:*(a1 + 40)];
      [v8 setPairedRemoteTransientOverlay:v9];
      [v9 setPairedRemoteTransientOverlay:v8];
      v26 = *(a1 + 48);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke_3;
      v29[3] = &unk_2783A8C18;
      v30 = v25;
      [v9 configureWithContext:v26 completion:v29];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SBRemoteTransientOverlaySession_prepareWithConfigurationContext___block_invoke_4;
    block[3] = &unk_2783A9348;
    v28 = *(a1 + 56);
    dispatch_group_notify(v25, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 40) _invalidateWithReason:4 error:v10];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)removeSessionObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)_addTransaction:(id)transaction
{
  transactionCopy = transaction;
  BSDispatchQueueAssertMain();
  if (self->_activeTransaction)
  {
    pendingTransactions = self->_pendingTransactions;
    if (!pendingTransactions)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_pendingTransactions;
      self->_pendingTransactions = v6;

      pendingTransactions = self->_pendingTransactions;
    }

    [(NSMutableArray *)pendingTransactions addObject:transactionCopy];
  }

  else
  {
    objc_storeStrong(&self->_activeTransaction, transaction);
    [(SBRemoteTransientOverlaySession *)self _registerObserversForTransaction:self->_activeTransaction];
    [(BSTransaction *)self->_activeTransaction begin];
  }
}

- (void)_didActivate
{
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (!self->_activated)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: _didActivate", buf, 0xCu);
    }

    self->_activated = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 remoteTransientOverlaySessionDidActivate:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_didDeactivate
{
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_activated)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: _didDeactivate", buf, 0xCu);
    }

    [(SBRemoteTransientOverlayViewController *)self->_containerViewController didDeactivate];
    [(SBRemoteTransientOverlayViewController *)self->_secondaryViewController didDeactivate];
    self->_activated = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 remoteTransientOverlaySessionDidDeactivate:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (id)_actionForHandlingButtonEvents:(unint64_t)events
{
  BSDispatchQueueAssertMain();
  if (self->_containerViewController)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifierToHandlingButtonEvents = self->_identifierToHandlingButtonEvents;
    if (!identifierToHandlingButtonEvents)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v8 = self->_identifierToHandlingButtonEvents;
      self->_identifierToHandlingButtonEvents = v7;

      identifierToHandlingButtonEvents = self->_identifierToHandlingButtonEvents;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:events];
    [(NSMutableDictionary *)identifierToHandlingButtonEvents setObject:v9 forKey:uUID];

    v10 = objc_alloc(MEMORY[0x277D67D90]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__SBRemoteTransientOverlaySession__actionForHandlingButtonEvents___block_invoke;
    v14[3] = &unk_2783C0120;
    v14[4] = self;
    v15 = uUID;
    eventsCopy = events;
    v11 = uUID;
    v12 = [v10 initWithButtonEvents:events withHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __66__SBRemoteTransientOverlaySession__actionForHandlingButtonEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  BSDispatchMain();
}

void __66__SBRemoteTransientOverlaySession__actionForHandlingButtonEvents___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 40) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v4 && ([v4 error], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (![*(a1 + 48) unHandledButtonEvents])
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained remoteTransientOverlaySession:*(a1 + 32) requestsHandlingForButtonEvents:*(a1 + 56) viewController:*(*(a1 + 32) + 16)];
}

- (void)_invalidateWithReason:(int64_t)reason error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  BSDispatchQueueAssertMain();
  self->_pendingInvalidation = 0;
  v7 = SBLogTransientOverlay();
  v8 = v7;
  if (errorCopy)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason();
    v9 = SBSRemoteAlertHandleInvalidationErrorDescription();
    *buf = 138543874;
    selfCopy2 = self;
    v39 = 2114;
    v40 = v9;
    v41 = 2114;
    v42 = errorCopy;
    _os_log_error_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_ERROR, "%{public}@: _invalidateWithReason: %{public}@, error: %{public}@", buf, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason();
    v9 = SBSRemoteAlertHandleInvalidationErrorDescription();
    *buf = 138543618;
    selfCopy2 = self;
    v39 = 2114;
    v40 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _invalidateWithReason: %{public}@", buf, 0x16u);
  }

LABEL_7:
  [(SBRemoteTransientOverlayViewController *)self->_containerViewController didInvalidate];
  containerViewController = self->_containerViewController;
  self->_containerViewController = 0;

  [(SBRemoteTransientOverlayViewController *)self->_secondaryViewController didInvalidate];
  secondaryViewController = self->_secondaryViewController;
  self->_secondaryViewController = 0;

  if (self->_activated)
  {
    self->_activated = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [(NSHashTable *)self->_observers copy];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 remoteTransientOverlaySessionDidDeactivate:self];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
  [WeakRetained remoteTransientOverlaySession:self didInvalidateWithReason:reason error:errorCopy];

  if (self->_valid)
  {
    self->_valid = 0;
    v19 = [errorCopy copy];
    error = self->_error;
    self->_error = v19;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = [(NSHashTable *)self->_observers copy];
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        v25 = 0;
        do
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v27 + 1) + 8 * v25);
          if (objc_opt_respondsToSelector())
          {
            [v26 remoteTransientOverlaySession:self didInvalidateWithReason:reason error:errorCopy];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }
}

- (void)_requestInvalidationWithReason:(int64_t)reason error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  BSDispatchQueueAssertMain();
  if (self->_valid && !self->_pendingInvalidation)
  {
    self->_pendingInvalidation = 1;
  }

  v7 = SBLogTransientOverlay();
  v8 = v7;
  if (errorCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason();
      v9 = SBSRemoteAlertHandleInvalidationErrorDescription();
      *buf = 138543874;
      selfCopy2 = self;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = errorCopy;
      _os_log_error_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_ERROR, "%{public}@: _requestInvalidationWithReason: %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason();
    v10 = SBSRemoteAlertHandleInvalidationErrorDescription();
    *buf = 138543618;
    selfCopy2 = self;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _requestInvalidationWithReason: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11 = objc_alloc(MEMORY[0x277CF0BA8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke;
  v14[3] = &unk_2783C0170;
  objc_copyWeak(v16, buf);
  v16[1] = reason;
  v12 = errorCopy;
  v15 = v12;
  v13 = [v11 initWithBlock:v14];
  [v13 setDebugName:@"_requestInvalidationWithReason"];
  [(SBRemoteTransientOverlaySession *)self _addTransaction:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

void __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke_2;
  v22[3] = &unk_2783C0148;
  v6 = WeakRetained;
  v7 = *(a1 + 48);
  v23 = v6;
  v26 = v7;
  v24 = *(a1 + 32);
  v8 = v4;
  v25 = v8;
  v9 = MEMORY[0x223D6F7F0](v22);
  if ([v6 isValid])
  {
    v10 = v6[2];
    if (v10 && *(v6 + 33) == 1)
    {
      v11 = objc_loadWeakRetained(v6 + 13);
      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      v13 = [[SBRemoteTransientOverlayDismissalRequest alloc] initWithViewController:v10];
      [(SBRemoteTransientOverlayDismissalRequest *)v13 setShouldInvalidatePresentation:1];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke_3;
      v20[3] = &unk_2783A8C18;
      v14 = v12;
      v21 = v14;
      [(SBRemoteTransientOverlayDismissalRequest *)v13 setCompletionHandler:v20];
      [v11 remoteTransientOverlaySession:v6 performDismissalRequest:v13];
      if (v6[3])
      {
        dispatch_group_enter(v14);
        v15 = [[SBRemoteTransientOverlayDismissalRequest alloc] initWithViewController:v6[3]];
        [(SBRemoteTransientOverlayDismissalRequest *)v15 setShouldInvalidatePresentation:1];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke_4;
        v18[3] = &unk_2783A8C18;
        v19 = v14;
        [(SBRemoteTransientOverlayDismissalRequest *)v15 setCompletionHandler:v18];
        [v11 remoteTransientOverlaySession:v6 performDismissalRequest:v15];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke_5;
      block[3] = &unk_2783A9348;
      v17 = v9;
      dispatch_group_notify(v14, MEMORY[0x277D85CD0], block);
    }

    else
    {
      v9[2](v9, 1);
    }
  }

  else
  {
    v9[2](v9, 1);
  }
}

uint64_t __72__SBRemoteTransientOverlaySession__requestInvalidationWithReason_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateWithReason:*(a1 + 56) error:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_processPendingTransactions
{
  obj = [(NSMutableArray *)self->_pendingTransactions firstObject];
  if (obj)
  {
    [(NSMutableArray *)self->_pendingTransactions removeObjectAtIndex:0];
  }

  objc_storeStrong(&self->_activeTransaction, obj);
  if (self->_activeTransaction)
  {
    [(SBRemoteTransientOverlaySession *)self _registerObserversForTransaction:?];
    [(BSTransaction *)self->_activeTransaction begin];
  }

  if (![(NSMutableArray *)self->_pendingTransactions count])
  {
    pendingTransactions = self->_pendingTransactions;
    self->_pendingTransactions = 0;
  }
}

- (void)_registerObserversForTransaction:(id)transaction
{
  transactionCopy = transaction;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SBRemoteTransientOverlaySession__registerObserversForTransaction___block_invoke;
  v5[3] = &unk_2783C01C0;
  objc_copyWeak(&v6, &location);
  [transactionCopy registerBlockObserver:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __68__SBRemoteTransientOverlaySession__registerObserversForTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SBRemoteTransientOverlaySession__registerObserversForTransaction___block_invoke_2;
  v4[3] = &unk_2783C0198;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 addTransactionDidCompleteBlock:v4];
  objc_destroyWeak(&v5);
}

void __68__SBRemoteTransientOverlaySession__registerObserversForTransaction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processPendingTransactions];
    WeakRetained = v2;
  }
}

- (SBRemoteTransientOverlaySessionHostDelegate)hostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);

  return WeakRetained;
}

- (void)remoteTransientOverlayViewController:didTerminateWithError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "%{public}@: remoteTransientOverlayViewController:didTerminateWithError: error: %{public}@", v2, 0x16u);
}

- (void)activateWithContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRemoteTransientOverlaySession.m" lineNumber:122 description:@"Session must be prepared before it can be activated."];
}

@end