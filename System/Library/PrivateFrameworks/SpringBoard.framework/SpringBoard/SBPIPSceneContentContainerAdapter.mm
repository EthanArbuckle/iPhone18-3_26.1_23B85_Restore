@interface SBPIPSceneContentContainerAdapter
- (BOOL)_hitTestTouch:(id)a3 inWindow:(id)a4;
- (BOOL)_hostedSceneIsPresentingKeyboard;
- (BOOL)_tapInEnvironmentCanDismiss:(int64_t)a3;
- (BOOL)containerViewControllerShouldRequireMedusaKeyboard:(id)a3;
- (BOOL)keyboardDismissalManager:(id)a3 shouldPreventDismissalForTouch:(id)a4 inWindow:(id)a5;
- (BOOL)stashableWrapper:(id)a3 didReceivedTapGesture:(id)a4;
- (SBPIPContainerViewController)containerViewController;
- (SBPIPSceneContentContainerAdapter)initWithSceneContentViewController:(id)a3 contentViewLayoutSettings:(id)a4 stashSettings:(id)a5 shadowSettings:(id)a6 interactionSettings:(id)a7 keyboardArbiterManager:(id)a8 keyboardFocusController:(id)a9 keyboardSuppressionManager:(id)a10 keyboardDismissalManager:(id)a11 deactivationManager:(id)a12 transitionCoordinator:(id)a13 delegate:(id)a14;
- (id)bundleIdentifierForContainerViewController:(id)a3;
- (id)scenePersistenceIdentifierForContainerViewController:(id)a3;
- (int)processIdentifierForContainerViewController:(id)a3;
- (int64_t)_effectiveEnvironmentModeForTransitionContext:(id)a3;
- (void)_dismissKeyboardIfNecessaryForTransitionContext:(id)a3;
- (void)_updateDisplayLayoutElementKeyboardFocus:(BOOL)a3;
- (void)containerViewController:(id)a3 didUpdateStashProgress:(double)a4;
- (void)containerViewController:(id)a3 didUpdateStashState:(BOOL)a4 springSettings:(id)a5;
- (void)containerViewController:(id)a3 handleDestructionRequestForSceneHandle:(id)a4;
- (void)containerViewController:(id)a3 willBeginInteractionWithGestureRecognizer:(id)a4;
- (void)containerViewController:(id)a3 willUpdateStashState:(BOOL)a4;
- (void)containerViewControllerDidEndInteraction:(id)a3 targetWindowScene:(id)a4;
- (void)containerViewControllerDidEndSizeChange:(id)a3;
- (void)containerViewControllerPanGestureDidEnd:(id)a3;
- (void)containerViewControllerWillBeginSizeChange:(id)a3 behavior:(int)a4;
- (void)dealloc;
- (void)invalidate;
- (void)keyboardFocusController:(id)a3 externalSceneDidAcquireFocus:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)loadSubviewsForContainerViewController:(id)a3;
- (void)setContainerViewController:(id)a3;
@end

@implementation SBPIPSceneContentContainerAdapter

- (SBPIPSceneContentContainerAdapter)initWithSceneContentViewController:(id)a3 contentViewLayoutSettings:(id)a4 stashSettings:(id)a5 shadowSettings:(id)a6 interactionSettings:(id)a7 keyboardArbiterManager:(id)a8 keyboardFocusController:(id)a9 keyboardSuppressionManager:(id)a10 keyboardDismissalManager:(id)a11 deactivationManager:(id)a12 transitionCoordinator:(id)a13 delegate:(id)a14
{
  v53 = a3;
  v54 = a4;
  v19 = a5;
  v20 = a6;
  v52 = a7;
  v45 = a8;
  v51 = a8;
  v50 = a9;
  v49 = a10;
  v48 = a11;
  v21 = v20;
  v22 = a12;
  v47 = a13;
  v23 = a14;
  v55.receiver = self;
  v55.super_class = SBPIPSceneContentContainerAdapter;
  v24 = [(SBPIPSceneContentContainerAdapter *)&v55 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_delegate, v23);
    objc_storeStrong(&v25->_interactionSettings, a7);
    objc_storeStrong(&v25->_sceneContentViewController, a3);
    v26 = [SBPIPStashableWrapperViewController alloc];
    sceneContentViewController = v25->_sceneContentViewController;
    [v54 defaultCornerRadius];
    v28 = [(SBPIPStashableWrapperViewController *)v26 initWithContentViewController:sceneContentViewController cornerRadius:v19 stashVisualSettings:v21 shadowSettings:?];
    stashableWrappingViewController = v25->_stashableWrappingViewController;
    v25->_stashableWrappingViewController = v28;

    [(SBPIPStashableWrapperViewController *)v25->_stashableWrappingViewController setDelegate:v25];
    [v54 minimumStashedTabSize];
    v25->_minimumStashTabSize.width = v30;
    v25->_minimumStashTabSize.height = v31;
    v32 = [v22 newAssertionWithReason:12];
    sceneDeactivationAssertion = v25->_sceneDeactivationAssertion;
    v25->_sceneDeactivationAssertion = v32;

    objc_storeStrong(&v25->_keyboardArbiterManager, v45);
    objc_storeStrong(&v25->_keyboardFocusController, a9);
    v34 = [(SBKeyboardFocusControlling *)v25->_keyboardFocusController addKeyboardFocusObserver:v25];
    keyboardFocusObserver = v25->_keyboardFocusObserver;
    v25->_keyboardFocusObserver = v34;

    objc_storeStrong(&v25->_keyboardSuppressionManager, a10);
    objc_storeStrong(&v25->_transitionCoordinator, a13);
    [(SBLayoutStateTransitionCoordinator *)v25->_transitionCoordinator addObserver:v25];
    objc_storeStrong(&v25->_keyboardDismissalManager, a11);
    v36 = [(SBPIPSceneContentContainerAdapter *)v25 _hostedAppSceneHandle];
    [v36 addObserver:v25];

    v37 = [(SBLayoutStateTransitionCoordinator *)v25->_transitionCoordinator windowScene];
    v38 = [v37 layoutStateProvider];
    v39 = [v38 layoutState];
    v40 = [v39 unlockedEnvironmentMode];

    if ([(SBPIPSceneContentContainerAdapter *)v25 _tapInEnvironmentCanDismiss:v40])
    {
      v41 = [(SBKeyboardDismissalManager *)v25->_keyboardDismissalManager registerKeyboardDismissalParticipant:v25];
      keyboardDismissalParticipantHandle = v25->_keyboardDismissalParticipantHandle;
      v25->_keyboardDismissalParticipantHandle = v41;
    }
  }

  return v25;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPSceneContentContainerAdapter.m" lineNumber:108 description:@"Attempting to dealloc without invalidating."];
}

- (id)bundleIdentifierForContainerViewController:(id)a3
{
  v3 = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  v4 = [v3 application];
  v5 = [v4 bundleIdentifier];

  return v5;
}

- (id)scenePersistenceIdentifierForContainerViewController:(id)a3
{
  v3 = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  v4 = [v3 persistenceIdentifier];

  return v4;
}

- (int)processIdentifierForContainerViewController:(id)a3
{
  v3 = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  v4 = [v3 sceneIfExists];
  v5 = [v4 clientProcess];

  if (v5)
  {
    v6 = [v5 pid];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)setContainerViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containerViewController, obj);
    v5 = obj;
  }
}

- (void)containerViewController:(id)a3 handleDestructionRequestForSceneHandle:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapter:self handleDestructionRequestForSceneHandle:v5];
}

- (BOOL)containerViewControllerShouldRequireMedusaKeyboard:(id)a3
{
  v4 = [(SBPIPInteractionSettings *)self->_interactionSettings usesKeyboards];
  v5 = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  v6 = [v5 sceneIfExists];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 settings];
    v9 = [v8 isForeground];

    v10 = [v7 uiSettings];
    v11 = [v10 deactivationReasons];

    if ((v11 & 0x100) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 1;
  }

  return v4 & v12;
}

- (SBPIPContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (void)containerViewControllerWillBeginSizeChange:(id)a3 behavior:(int)a4
{
  v4 = *&a4;
  stashableWrappingViewController = self->_stashableWrappingViewController;
  v7 = a4 != 0;
  v8 = a3;
  [(SBPIPStashableWrapperViewController *)stashableWrappingViewController setInteractivelyResizing:v7];
  [(SBPIPSceneContentProviding *)self->_sceneContentViewController containerViewControllerWillBeginSizeChange:v8 behavior:v4];
}

- (void)containerViewControllerDidEndSizeChange:(id)a3
{
  stashableWrappingViewController = self->_stashableWrappingViewController;
  v5 = a3;
  [(SBPIPStashableWrapperViewController *)stashableWrappingViewController setInteractivelyResizing:0];
  [(SBPIPSceneContentProviding *)self->_sceneContentViewController containerViewControllerDidEndSizeChange:v5];
}

- (void)containerViewController:(id)a3 willBeginInteractionWithGestureRecognizer:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapter:self willBeginInteractionWithGestureRecognizer:v5];
}

- (void)containerViewControllerDidEndInteraction:(id)a3 targetWindowScene:(id)a4
{
  v6 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapterDidEndInteraction:self targetWindowScene:v6];

  [(SBPIPSceneContentProviding *)self->_sceneContentViewController containerViewControllerDidEndInteraction:v8 targetWindowScene:v6];
}

- (void)containerViewControllerPanGestureDidEnd:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapterPanGestureDidEnd:self];
}

- (void)loadSubviewsForContainerViewController:(id)a3
{
  [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setMinimumStashTabSize:a3, self->_minimumStashTabSize.width, self->_minimumStashTabSize.height];
  stashableWrappingViewController = self->_stashableWrappingViewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  -[SBPIPStashableWrapperViewController setStashed:animated:](stashableWrappingViewController, "setStashed:animated:", [WeakRetained initialStashStateForContentContainerAdapter:self], 0);
}

- (void)containerViewController:(id)a3 willUpdateStashState:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapter:self willUpdateStashState:v4];
}

- (void)containerViewController:(id)a3 didUpdateStashState:(BOOL)a4 springSettings:(id)a5
{
  v5 = a4;
  v7 = a5;
  [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setStashed:v5];
  if (!v5)
  {
    [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setStashTabHidden:1 left:0 withSpringBehavior:v7 completion:0];
  }
}

- (void)containerViewController:(id)a3 didUpdateStashProgress:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (!WeakRetained || [WeakRetained contentContainerAdapterShouldUpdateUIForStashing:self])
  {
    [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setStashProgress:a4];
  }

  IsOne = BSFloatIsOne();
  sceneDeactivationAssertion = self->_sceneDeactivationAssertion;
  if (IsOne)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__SBPIPSceneContentContainerAdapter_containerViewController_didUpdateStashProgress___block_invoke;
    v15[3] = &unk_2783ADD00;
    v15[4] = self;
    [(UIApplicationSceneDeactivationAssertion *)sceneDeactivationAssertion acquireWithPredicate:v15 transitionContext:0];
    keyboardSuppressionManager = self->_keyboardSuppressionManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__SBPIPSceneContentContainerAdapter_containerViewController_didUpdateStashProgress___block_invoke_2;
    v14[3] = &unk_2783ADD00;
    v14[4] = self;
    v11 = [(SBKeyboardSuppressionManager *)keyboardSuppressionManager acquireKeyboardSuppressionAssertionWithReason:@"SBSystemNotesKeyboardSuppressionStashed" predicate:v14 displayIdentity:0];
    keyboardSuppressionAssertion = self->_keyboardSuppressionAssertion;
    self->_keyboardSuppressionAssertion = v11;
LABEL_10:

    goto LABEL_11;
  }

  if ([(UIApplicationSceneDeactivationAssertion *)sceneDeactivationAssertion isAcquired])
  {
    [(UIApplicationSceneDeactivationAssertion *)self->_sceneDeactivationAssertion relinquish];
  }

  v13 = self->_keyboardSuppressionAssertion;
  if (v13)
  {
    [(BSInvalidatable *)v13 invalidate];
    keyboardSuppressionAssertion = self->_keyboardSuppressionAssertion;
    self->_keyboardSuppressionAssertion = 0;
    goto LABEL_10;
  }

LABEL_11:
}

uint64_t __84__SBPIPSceneContentContainerAdapter_containerViewController_didUpdateStashProgress___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _hostedAppSceneHandle];
  v5 = [v4 sceneIfExists];
  v6 = [v5 isEqual:v3];

  return v6;
}

uint64_t __84__SBPIPSceneContentContainerAdapter_containerViewController_didUpdateStashProgress___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _hostedAppSceneHandle];
  v5 = [v4 sceneIfExists];
  v6 = [v5 isEqual:v3];

  return v6;
}

- (BOOL)stashableWrapper:(id)a3 didReceivedTapGesture:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setStashed:0];
  v5 = [WeakRetained isStashed];

  return v5 ^ 1;
}

- (void)invalidate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPSceneContentContainerAdapter.m" lineNumber:264 description:@"Attempting to -invalidate twice; this is unsupported."];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v11 = a3;
  v6 = a4;
  keyboardDismissalParticipantHandle = self->_keyboardDismissalParticipantHandle;
  if (keyboardDismissalParticipantHandle)
  {
    [(BSInvalidatable *)keyboardDismissalParticipantHandle invalidate];
    v8 = self->_keyboardDismissalParticipantHandle;
    self->_keyboardDismissalParticipantHandle = 0;
  }

  if ([(SBPIPSceneContentContainerAdapter *)self _tapInEnvironmentCanDismiss:[(SBPIPSceneContentContainerAdapter *)self _effectiveEnvironmentModeForTransitionContext:v6]])
  {
    v9 = [(SBKeyboardDismissalManager *)self->_keyboardDismissalManager registerKeyboardDismissalParticipant:self];
    v10 = self->_keyboardDismissalParticipantHandle;
    self->_keyboardDismissalParticipantHandle = v9;
  }
}

- (void)keyboardFocusController:(id)a3 externalSceneDidAcquireFocus:(id)a4
{
  v5 = [a4 identifier];
  v6 = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  v7 = [v6 sceneIdentifier];
  v8 = [v5 isEqual:v7];

  [(SBPIPSceneContentContainerAdapter *)self _updateDisplayLayoutElementKeyboardFocus:v8];
}

- (BOOL)keyboardDismissalManager:(id)a3 shouldPreventDismissalForTouch:(id)a4 inWindow:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(SBPIPSceneContentContainerAdapter *)self _hostedSceneIsPresentingKeyboard])
  {
    v9 = [(SBPIPSceneContentContainerAdapter *)self _hitTestTouch:v7 inWindow:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_hitTestTouch:(id)a3 inWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBPIPSceneContentContainerAdapter *)self containerViewController];
  v9 = [v8 contentViewController];
  v10 = [v9 viewIfLoaded];

  if (v10)
  {
    v11 = [v7 screen];
    v12 = [v11 fixedCoordinateSpace];

    v13 = [v6 view];
    [v6 locationInView:v13];
    [v7 convertPoint:v12 toCoordinateSpace:?];
    v15 = v14;
    v17 = v16;

    [v10 convertPoint:v12 fromCoordinateSpace:{v15, v17}];
    v18 = [v10 hitTest:0 withEvent:?];
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_updateDisplayLayoutElementKeyboardFocus:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SBPIPSceneContentContainerAdapter__updateDisplayLayoutElementKeyboardFocus___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__SBSDisplayLayoutElement_8l;
  v6 = a3;
  [WeakRetained updateDisplayLayoutElementWithBuilder:v5];
}

- (void)_dismissKeyboardIfNecessaryForTransitionContext:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(SBPIPSceneContentContainerAdapter *)self _effectiveEnvironmentModeForTransitionContext:a3]== 1 && [(SBPIPInteractionSettings *)self->_interactionSettings keyboardDismissesOnTransitionToHomescreen]&& [(SBPIPSceneContentContainerAdapter *)self _hostedSceneIsPresentingKeyboard])
  {
    v4 = SBLogSystemNotes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = _SBFLoggingMethodProem();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing keyboard for transition to homescreen", &v8, 0xCu);
    }

    v6 = NSClassFromString(&cfstr_Uikeyboardarbi.isa);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(objc_class *)v6 performSelector:sel_sharedArbiterManager];
    }

    else
    {
      v7 = 0;
    }

    [v7 forceKeyboardAway];
  }
}

- (int64_t)_effectiveEnvironmentModeForTransitionContext:(id)a3
{
  v3 = [a3 toLayoutState];
  v4 = [v3 unlockedEnvironmentMode];

  return v4;
}

- (BOOL)_hostedSceneIsPresentingKeyboard
{
  v3 = [(SBKeyboardFocusControlling *)self->_keyboardFocusController externalSceneWithFocus];
  v4 = [v3 identityToken];

  v5 = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  v6 = [v5 sceneIfExists];
  v7 = [v6 identityToken];

  if ([v7 isEqual:v4])
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8 != 0;
}

- (BOOL)_tapInEnvironmentCanDismiss:(int64_t)a3
{
  v5 = [(SBPIPInteractionSettings *)self->_interactionSettings keyboardDismissesOnOutsideUserInteractionOnHomescreen];
  v6 = [(SBPIPInteractionSettings *)self->_interactionSettings keyboardDismissesOnOutsideUserInteractionOutsideHomescreen];
  return a3 == 1 && v5 || a3 != 1 && v6;
}

@end