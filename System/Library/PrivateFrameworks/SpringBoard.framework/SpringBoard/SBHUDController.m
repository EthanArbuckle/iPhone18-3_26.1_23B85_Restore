@interface SBHUDController
+ (id)_defaultCrossfadeAnimatorForHUDController:(id)a3;
- (BOOL)anyHUDsVisible;
- (SBHUDController)init;
- (id)HUDSessionForViewController:(id)a3 identifier:(id)a4;
- (id)acquireHUDHiddenAssertionForIdentifier:(id)a3 withReason:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)knownHUDControllerForIdentifier:(id)a3;
- (id)knownHUDs;
- (id)presentedHUDControllerForIdentifier:(id)a3;
- (id)presentedHUDs;
- (id)presentingHUDs;
- (id)succinctDescription;
- (void)_createHUDWindowIfNeeded;
- (void)_dismissHUD:(id)a3 animated:(BOOL)a4;
- (void)_finishedTransitionForHUD:(id)a3 intendedState:(int64_t)a4 finalState:(int64_t)a5;
- (void)_hideWindowIfPossible;
- (void)_notificationFiredToDismissHUDs:(id)a3;
- (void)_presentHUD:(id)a3 animated:(BOOL)a4;
- (void)_setupStateCapture;
- (void)_tearDown;
- (void)dealloc;
- (void)dismissHUDs:(BOOL)a3;
- (void)hudViewController:(id)a3 didDismissHUD:(id)a4;
- (void)hudViewController:(id)a3 didPresentHUD:(id)a4;
- (void)hudViewController:(id)a3 willDismissHUD:(id)a4;
- (void)hudViewController:(id)a3 willPresentHUD:(id)a4;
- (void)windowSceneDidConnect:(id)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBHUDController

- (id)knownHUDs
{
  v3 = [(SBHUDController *)self presentedHUDs];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = [(SBHUDController *)self presentingHUDs];
  if (v5)
  {
    v6 = [v4 setByAddingObjectsFromSet:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    v6 = [v4 setByAddingObjectsFromSet:v7];
  }

  if (!v3)
  {
  }

  return v6;
}

- (id)presentedHUDs
{
  v2 = [(SBHUDController *)self hudViewController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 1000);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)presentingHUDs
{
  v2 = [(SBHUDController *)self hudViewController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 1008);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (SBHUDController)init
{
  v9.receiver = self;
  v9.super_class = SBHUDController;
  v2 = [(SBHUDController *)&v9 init];
  if (v2)
  {
    v3 = +[SBHUDDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = [MEMORY[0x277CCA940] set];
    hudHiddenAssertions = v2->_hudHiddenAssertions;
    v2->_hudHiddenAssertions = v5;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    [(SBHUDController *)v2 _setupStateCapture];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__notificationFiredToDismissHUDs_ name:*MEMORY[0x277D67A18] object:0];
    [v7 addObserver:v2 selector:sel__notificationFiredToDismissHUDs_ name:@"SBLockScreenUIRelockedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(SBHUDController *)self _tearDown];
  v3.receiver = self;
  v3.super_class = SBHUDController;
  [(SBHUDController *)&v3 dealloc];
}

- (id)succinctDescription
{
  v2 = [(SBHUDController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHUDController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendObject:self->_windowScene withName:@"windowScene"];
  v6 = [v4 appendObject:self->_settings withName:@"settings"];
  v7 = [v4 appendObject:self->_hudHiddenAssertions withName:@"hudHiddenAssertions"];
  v8 = [v4 appendPointer:self->_hudViewController withName:@"hudViewController"];
  v9 = [(SBHUDController *)self presentedHUDs];
  v10 = [v9 allObjects];
  v11 = v10;
  v12 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  [v4 appendArraySection:v13 withName:@"presentedHUDs" skipIfEmpty:1];

  v14 = [(SBHUDController *)self knownHUDs];
  v15 = [v14 allObjects];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  [v4 appendArraySection:v17 withName:@"knownHUDs" skipIfEmpty:1];

  return v4;
}

- (void)_setupStateCapture
{
  if (!self->_stateCaptureHandle)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v6, &location);
    v4 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = self->_stateCaptureHandle;
    self->_stateCaptureHandle = v4;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

id __37__SBHUDController__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (BOOL)anyHUDsVisible
{
  v2 = [(SBHUDController *)self presentedHUDs];
  v3 = [v2 bs_filter:&__block_literal_global_141];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)presentedHUDControllerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBHUDController *)self presentedHUDs];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SBHUDController_presentedHUDControllerForIdentifier___block_invoke;
  v10[3] = &unk_2783B4FE0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 bs_filter:v10];
  v8 = [v7 anyObject];

  return v8;
}

uint64_t __55__SBHUDController_presentedHUDControllerForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)knownHUDControllerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBHUDController *)self knownHUDs];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__SBHUDController_knownHUDControllerForIdentifier___block_invoke;
  v10[3] = &unk_2783B4FE0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 bs_filter:v10];
  v8 = [v7 anyObject];

  return v8;
}

uint64_t __51__SBHUDController_knownHUDControllerForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)HUDSessionForViewController:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHUDController *)self knownHUDControllerForIdentifier:v6];
  v9 = [_SBHUDModel HUDModelForController:self viewController:v7 identifier:v6];

  if ([v8 isEqual:v9])
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

- (id)acquireHUDHiddenAssertionForIdentifier:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CF0CE8];
  v8 = a4;
  v9 = [v7 alloc];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __69__SBHUDController_acquireHUDHiddenAssertionForIdentifier_withReason___block_invoke;
  v17 = &unk_2783B18A8;
  v18 = self;
  v19 = v6;
  v10 = v6;
  v11 = [v9 initWithIdentifier:v10 forReason:v8 invalidationBlock:&v14];

  [(NSCountedSet *)self->_hudHiddenAssertions addObject:v10, v14, v15, v16, v17, v18];
  v12 = [(SBHUDController *)self knownHUDControllerForIdentifier:v10];
  [v12 dismissAnimated:0];

  return v11;
}

- (void)dismissHUDs:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(SBHUDController *)self knownHUDs];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) dismissAnimated:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_presentHUD:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  hudHiddenAssertions = self->_hudHiddenAssertions;
  v8 = [v6 identifier];
  v9 = [(NSCountedSet *)hudHiddenAssertions countForObject:v8];

  if (v9)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 identifier];
      v12 = @"s";
      *buf = 138412802;
      v18 = v11;
      if (v9 == 1)
      {
        v12 = &stru_283094718;
      }

      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[SBHUDController] ignoring request to present HUD with identifier '%@' due to %lu outstanding assertion%@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  v13 = [(SBHUDController *)self windowScene];

  if (v13)
  {
    [(SBHUDController *)self _createHUDWindowIfNeeded];
    v10 = [(SBHUDController *)self HUDWindow];
    if ([v10 isHidden])
    {
      [v10 makeKeyAndVisible];
    }

    v14 = [(SBHUDController *)self hudViewController];
    if ([_SBHUDHostViewController isHUDBeingDismissed:v14])
    {
      [_SBHUDHostViewController reverseHUDDismissal:v14];
    }

    else if (([v6 isPresented] & 1) != 0 || objc_msgSend(v6, "isPresenting"))
    {
      [v6 rescheduleDismissalTimer];
LABEL_16:

      goto LABEL_9;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __40__SBHUDController__presentHUD_animated___block_invoke;
    v15[3] = &unk_2783B5008;
    v15[4] = self;
    v16 = v6;
    [(_SBHUDHostViewController *)v14 presentHUD:v16 animated:v4 completion:v15];

    goto LABEL_16;
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBHUDController _presentHUD:v6 animated:v10];
  }

LABEL_9:
}

- (void)_dismissHUD:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBHUDController *)self hudViewController];
  v8 = v7;
  if (v7 && ([v7 _transitionContextMatchingHUD:v6 withinContainer:v7[128]], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [_SBHUDHostViewController reverseHUDPresentation:v8];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SBHUDController__dismissHUD_animated___block_invoke;
    v10[3] = &unk_2783B5008;
    v10[4] = self;
    v11 = v6;
    [(_SBHUDHostViewController *)v8 dismissHUD:v11 animated:v4 completion:v10];
  }
}

- (void)_finishedTransitionForHUD:(id)a3 intendedState:(int64_t)a4 finalState:(int64_t)a5
{
  v8 = a3;
  if (a5 != a4)
  {
    [v8 invalidateDismissalTimer];
  }

  if (!a5)
  {
    [v8 rescheduleDismissalTimer];
  }

  [(SBFZStackParticipant *)self->_zStackParticipant setNeedsUpdatePreferencesWithReason:@"SBHUDController finishedTransitionForHUD"];
  [(SBHUDController *)self _hideWindowIfPossible];
}

- (void)windowSceneDidConnect:(id)a3
{
  objc_storeStrong(&self->_windowScene, a3);
  v5 = a3;
  v8 = [v5 zStackResolver];
  v6 = [v8 acquireParticipantWithIdentifier:18 delegate:self];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = v6;
}

- (void)_createHUDWindowIfNeeded
{
  v6 = [[_SBHUDHostViewController alloc] initWithHUDController:a1];
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  v8 = *(a1 + 48);
  if (v8)
  {
    objc_storeWeak((v8 + 1048), a1);
  }

  v9 = [(SBFTouchPassThroughWindow *)[SBHUDWindow alloc] initWithWindowScene:a2 role:@"SBTraitsParticipantRoleHUD" debugName:@"HUDWindow"];
  *a3 = v9;
  [(SBHUDWindow *)v9 setRootViewController:*(a1 + 48)];
  [(SBHUDWindow *)v9 setOpaque:0];
  [(SBHUDWindow *)v9 setWindowLevel:*MEMORY[0x277D76A38]];

  objc_storeStrong((a1 + 40), v9);
}

- (void)_hideWindowIfPossible
{
  v8 = [(SBHUDController *)self presentedHUDs];
  if (![v8 count])
  {

LABEL_6:
    HUDWindow = self->_HUDWindow;

    [(UIWindow *)HUDWindow setHidden:1];
    return;
  }

  v3 = [(SBHUDController *)self hudViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [*(v3 + 1024) count];
    v6 = [v4[129] count];

    if (!(v6 + v5))
    {
      return;
    }

    goto LABEL_6;
  }
}

- (void)_notificationFiredToDismissHUDs:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBHUDController] Dismissing all HUDs because of notification: %@", &v6, 0xCu);
  }

  [(SBHUDController *)self dismissHUDs:1];
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__52;
  v14 = __Block_byref_object_dispose__52;
  v15 = 0;
  v8 = [(SBHUDController *)self presentedHUDs];
  if ([v8 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__SBHUDController_zStackParticipant_updatePreferences___block_invoke;
    v9[3] = &unk_2783B5030;
    v9[4] = &v10;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  [v7 setPhysicalButtonSceneTargets:v11[5]];

  _Block_object_dispose(&v10, 8);
}

void __55__SBHUDController_zStackParticipant_updatePreferences___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 HUDViewController];
  v9 = [v3 physicalButtonSceneTargets];

  v4 = v9;
  if (v9)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObjectsFromArray:v9];
    v4 = v9;
  }
}

- (void)hudViewController:(id)a3 willDismissHUD:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 hudViewController:v7 willDismissHUD:v5];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBHUDControllerWillDismissHUDNotificationName" object:v5];
}

- (void)hudViewController:(id)a3 didDismissHUD:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 hudViewController:v8 didDismissHUD:v6];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"SBHUDControllerDidDismissHUDNotificationName" object:v6];

  [(SBHUDController *)self _hideWindowIfPossible];
}

- (void)hudViewController:(id)a3 didPresentHUD:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 hudViewController:v7 didPresentHUD:v5];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBHUDControllerDidPresentHUDNotificationName" object:v5];
}

- (void)hudViewController:(id)a3 willPresentHUD:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 hudViewController:v7 willPresentHUD:v5];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBHUDControllerWillPresentHUDNotificationName" object:v5];
}

+ (id)_defaultCrossfadeAnimatorForHUDController:(id)a3
{
  v3 = a3;
  v4 = [SBUIAnimationPropertyAnimator alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke;
  v8[3] = &unk_2783B50A8;
  v9 = v3;
  v5 = v3;
  v6 = [(SBUIAnimationPropertyAnimator *)v4 initWithPropertyAnimatorGenerator:v8];

  return v6;
}

id __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 viewControllerForKey:*MEMORY[0x277D77230]];
  v5 = [v3 viewControllerForKey:*MEMORY[0x277D77240]];
  v6 = [*(a1 + 32) settings];
  [v6 defaultHUDPresentationAnimationDuration];
  v8 = v7;

  v9 = [v4 view];
  v10 = [v5 view];
  v11 = [v3 containerView];
  v12 = MEMORY[0x277D75D18];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke_2;
  v34[3] = &unk_2783B5058;
  v13 = v9;
  v35 = v13;
  v14 = v3;
  v36 = v14;
  v37 = v4;
  v15 = v10;
  v38 = v15;
  v39 = v5;
  v40 = v11;
  v16 = v11;
  v17 = v5;
  v18 = v4;
  [v12 performWithoutAnimation:v34];
  v19 = objc_alloc(MEMORY[0x277D75D40]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke_3;
  v31[3] = &unk_2783A92D8;
  v20 = v13;
  v32 = v20;
  v21 = v15;
  v33 = v21;
  v22 = [v19 initWithDuration:0 curve:v31 animations:v8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke_4;
  v27[3] = &unk_2783B5080;
  v28 = v20;
  v29 = v21;
  v30 = v14;
  v23 = v14;
  v24 = v21;
  v25 = v20;
  [v22 addCompletion:v27];

  return v22;
}

uint64_t __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) initialFrameForViewController:*(a1 + 48)];
  [v2 setFrame:?];
  [*(a1 + 32) setAlpha:1.0];
  v3 = *(a1 + 56);
  [*(a1 + 40) initialFrameForViewController:*(a1 + 64)];
  [v3 setFrame:?];
  [*(a1 + 56) setAlpha:0.0];
  v4 = *(a1 + 72);
  v5 = *(a1 + 56);

  return [v4 addSubview:v5];
}

uint64_t __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __61__SBHUDController__defaultCrossfadeAnimatorForHUDController___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      [*(a1 + 32) setAlpha:1.0];
      [*(a1 + 40) setAlpha:0.0];
      [*(a1 + 40) removeFromSuperview];
    }
  }

  else
  {
    [*(a1 + 32) removeFromSuperview];
    [*(a1 + 40) setAlpha:1.0];
  }

  v3 = *(a1 + 48);
  v4 = [v3 transitionWasCancelled] ^ 1;

  return [v3 completeTransition:v4];
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = objc_opt_class();

  return [v4 _defaultCrossfadeAnimatorForHUDController:self];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = objc_opt_class();

  return [v6 _defaultCrossfadeAnimatorForHUDController:self];
}

- (void)_tearDown
{
  hudViewController = self->_hudViewController;
  if (hudViewController)
  {
    objc_storeWeak(&hudViewController->_delegate, 0);
    hudViewController = self->_hudViewController;
  }

  self->_hudViewController = 0;

  [(UIWindow *)self->_HUDWindow setHidden:1];
  HUDWindow = self->_HUDWindow;
  self->_HUDWindow = 0;

  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  stateCaptureHandle = self->_stateCaptureHandle;
  self->_stateCaptureHandle = 0;
}

- (void)_presentHUD:(void *)a1 animated:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[SBHUDController] ignoring request to present HUD with identifier '%@' due to windowScene being nil", &v4, 0xCu);
}

@end