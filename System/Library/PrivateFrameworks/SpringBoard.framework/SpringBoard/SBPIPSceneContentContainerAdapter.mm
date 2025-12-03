@interface SBPIPSceneContentContainerAdapter
- (BOOL)_hitTestTouch:(id)touch inWindow:(id)window;
- (BOOL)_hostedSceneIsPresentingKeyboard;
- (BOOL)_tapInEnvironmentCanDismiss:(int64_t)dismiss;
- (BOOL)containerViewControllerShouldRequireMedusaKeyboard:(id)keyboard;
- (BOOL)keyboardDismissalManager:(id)manager shouldPreventDismissalForTouch:(id)touch inWindow:(id)window;
- (BOOL)stashableWrapper:(id)wrapper didReceivedTapGesture:(id)gesture;
- (SBPIPContainerViewController)containerViewController;
- (SBPIPSceneContentContainerAdapter)initWithSceneContentViewController:(id)controller contentViewLayoutSettings:(id)settings stashSettings:(id)stashSettings shadowSettings:(id)shadowSettings interactionSettings:(id)interactionSettings keyboardArbiterManager:(id)manager keyboardFocusController:(id)focusController keyboardSuppressionManager:(id)self0 keyboardDismissalManager:(id)self1 deactivationManager:(id)self2 transitionCoordinator:(id)self3 delegate:(id)self4;
- (id)bundleIdentifierForContainerViewController:(id)controller;
- (id)scenePersistenceIdentifierForContainerViewController:(id)controller;
- (int)processIdentifierForContainerViewController:(id)controller;
- (int64_t)_effectiveEnvironmentModeForTransitionContext:(id)context;
- (void)_dismissKeyboardIfNecessaryForTransitionContext:(id)context;
- (void)_updateDisplayLayoutElementKeyboardFocus:(BOOL)focus;
- (void)containerViewController:(id)controller didUpdateStashProgress:(double)progress;
- (void)containerViewController:(id)controller didUpdateStashState:(BOOL)state springSettings:(id)settings;
- (void)containerViewController:(id)controller handleDestructionRequestForSceneHandle:(id)handle;
- (void)containerViewController:(id)controller willBeginInteractionWithGestureRecognizer:(id)recognizer;
- (void)containerViewController:(id)controller willUpdateStashState:(BOOL)state;
- (void)containerViewControllerDidEndInteraction:(id)interaction targetWindowScene:(id)scene;
- (void)containerViewControllerDidEndSizeChange:(id)change;
- (void)containerViewControllerPanGestureDidEnd:(id)end;
- (void)containerViewControllerWillBeginSizeChange:(id)change behavior:(int)behavior;
- (void)dealloc;
- (void)invalidate;
- (void)keyboardFocusController:(id)controller externalSceneDidAcquireFocus:(id)focus;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)loadSubviewsForContainerViewController:(id)controller;
- (void)setContainerViewController:(id)controller;
@end

@implementation SBPIPSceneContentContainerAdapter

- (SBPIPSceneContentContainerAdapter)initWithSceneContentViewController:(id)controller contentViewLayoutSettings:(id)settings stashSettings:(id)stashSettings shadowSettings:(id)shadowSettings interactionSettings:(id)interactionSettings keyboardArbiterManager:(id)manager keyboardFocusController:(id)focusController keyboardSuppressionManager:(id)self0 keyboardDismissalManager:(id)self1 deactivationManager:(id)self2 transitionCoordinator:(id)self3 delegate:(id)self4
{
  controllerCopy = controller;
  settingsCopy = settings;
  stashSettingsCopy = stashSettings;
  shadowSettingsCopy = shadowSettings;
  interactionSettingsCopy = interactionSettings;
  managerCopy = manager;
  managerCopy2 = manager;
  focusControllerCopy = focusController;
  suppressionManagerCopy = suppressionManager;
  dismissalManagerCopy = dismissalManager;
  v21 = shadowSettingsCopy;
  deactivationManagerCopy = deactivationManager;
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  v55.receiver = self;
  v55.super_class = SBPIPSceneContentContainerAdapter;
  v24 = [(SBPIPSceneContentContainerAdapter *)&v55 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_delegate, delegateCopy);
    objc_storeStrong(&v25->_interactionSettings, interactionSettings);
    objc_storeStrong(&v25->_sceneContentViewController, controller);
    v26 = [SBPIPStashableWrapperViewController alloc];
    sceneContentViewController = v25->_sceneContentViewController;
    [settingsCopy defaultCornerRadius];
    v28 = [(SBPIPStashableWrapperViewController *)v26 initWithContentViewController:sceneContentViewController cornerRadius:stashSettingsCopy stashVisualSettings:v21 shadowSettings:?];
    stashableWrappingViewController = v25->_stashableWrappingViewController;
    v25->_stashableWrappingViewController = v28;

    [(SBPIPStashableWrapperViewController *)v25->_stashableWrappingViewController setDelegate:v25];
    [settingsCopy minimumStashedTabSize];
    v25->_minimumStashTabSize.width = v30;
    v25->_minimumStashTabSize.height = v31;
    v32 = [deactivationManagerCopy newAssertionWithReason:12];
    sceneDeactivationAssertion = v25->_sceneDeactivationAssertion;
    v25->_sceneDeactivationAssertion = v32;

    objc_storeStrong(&v25->_keyboardArbiterManager, managerCopy);
    objc_storeStrong(&v25->_keyboardFocusController, focusController);
    v34 = [(SBKeyboardFocusControlling *)v25->_keyboardFocusController addKeyboardFocusObserver:v25];
    keyboardFocusObserver = v25->_keyboardFocusObserver;
    v25->_keyboardFocusObserver = v34;

    objc_storeStrong(&v25->_keyboardSuppressionManager, suppressionManager);
    objc_storeStrong(&v25->_transitionCoordinator, coordinator);
    [(SBLayoutStateTransitionCoordinator *)v25->_transitionCoordinator addObserver:v25];
    objc_storeStrong(&v25->_keyboardDismissalManager, dismissalManager);
    _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)v25 _hostedAppSceneHandle];
    [_hostedAppSceneHandle addObserver:v25];

    windowScene = [(SBLayoutStateTransitionCoordinator *)v25->_transitionCoordinator windowScene];
    layoutStateProvider = [windowScene layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];
    unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

    if ([(SBPIPSceneContentContainerAdapter *)v25 _tapInEnvironmentCanDismiss:unlockedEnvironmentMode])
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBPIPSceneContentContainerAdapter.m" lineNumber:108 description:@"Attempting to dealloc without invalidating."];
}

- (id)bundleIdentifierForContainerViewController:(id)controller
{
  _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  application = [_hostedAppSceneHandle application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
}

- (id)scenePersistenceIdentifierForContainerViewController:(id)controller
{
  _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  persistenceIdentifier = [_hostedAppSceneHandle persistenceIdentifier];

  return persistenceIdentifier;
}

- (int)processIdentifierForContainerViewController:(id)controller
{
  _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  sceneIfExists = [_hostedAppSceneHandle sceneIfExists];
  clientProcess = [sceneIfExists clientProcess];

  if (clientProcess)
  {
    v6 = [clientProcess pid];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)setContainerViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containerViewController, obj);
    v5 = obj;
  }
}

- (void)containerViewController:(id)controller handleDestructionRequestForSceneHandle:(id)handle
{
  handleCopy = handle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapter:self handleDestructionRequestForSceneHandle:handleCopy];
}

- (BOOL)containerViewControllerShouldRequireMedusaKeyboard:(id)keyboard
{
  usesKeyboards = [(SBPIPInteractionSettings *)self->_interactionSettings usesKeyboards];
  _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  sceneIfExists = [_hostedAppSceneHandle sceneIfExists];
  v7 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    isForeground = [settings isForeground];

    uiSettings = [v7 uiSettings];
    deactivationReasons = [uiSettings deactivationReasons];

    if ((deactivationReasons & 0x100) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = isForeground;
    }
  }

  else
  {
    v12 = 1;
  }

  return usesKeyboards & v12;
}

- (SBPIPContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (void)containerViewControllerWillBeginSizeChange:(id)change behavior:(int)behavior
{
  v4 = *&behavior;
  stashableWrappingViewController = self->_stashableWrappingViewController;
  v7 = behavior != 0;
  changeCopy = change;
  [(SBPIPStashableWrapperViewController *)stashableWrappingViewController setInteractivelyResizing:v7];
  [(SBPIPSceneContentProviding *)self->_sceneContentViewController containerViewControllerWillBeginSizeChange:changeCopy behavior:v4];
}

- (void)containerViewControllerDidEndSizeChange:(id)change
{
  stashableWrappingViewController = self->_stashableWrappingViewController;
  changeCopy = change;
  [(SBPIPStashableWrapperViewController *)stashableWrappingViewController setInteractivelyResizing:0];
  [(SBPIPSceneContentProviding *)self->_sceneContentViewController containerViewControllerDidEndSizeChange:changeCopy];
}

- (void)containerViewController:(id)controller willBeginInteractionWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapter:self willBeginInteractionWithGestureRecognizer:recognizerCopy];
}

- (void)containerViewControllerDidEndInteraction:(id)interaction targetWindowScene:(id)scene
{
  sceneCopy = scene;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapterDidEndInteraction:self targetWindowScene:sceneCopy];

  [(SBPIPSceneContentProviding *)self->_sceneContentViewController containerViewControllerDidEndInteraction:interactionCopy targetWindowScene:sceneCopy];
}

- (void)containerViewControllerPanGestureDidEnd:(id)end
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapterPanGestureDidEnd:self];
}

- (void)loadSubviewsForContainerViewController:(id)controller
{
  [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setMinimumStashTabSize:controller, self->_minimumStashTabSize.width, self->_minimumStashTabSize.height];
  stashableWrappingViewController = self->_stashableWrappingViewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  -[SBPIPStashableWrapperViewController setStashed:animated:](stashableWrappingViewController, "setStashed:animated:", [WeakRetained initialStashStateForContentContainerAdapter:self], 0);
}

- (void)containerViewController:(id)controller willUpdateStashState:(BOOL)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAdapter:self willUpdateStashState:stateCopy];
}

- (void)containerViewController:(id)controller didUpdateStashState:(BOOL)state springSettings:(id)settings
{
  stateCopy = state;
  settingsCopy = settings;
  [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setStashed:stateCopy];
  if (!stateCopy)
  {
    [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setStashTabHidden:1 left:0 withSpringBehavior:settingsCopy completion:0];
  }
}

- (void)containerViewController:(id)controller didUpdateStashProgress:(double)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (!WeakRetained || [WeakRetained contentContainerAdapterShouldUpdateUIForStashing:self])
  {
    [(SBPIPStashableWrapperViewController *)self->_stashableWrappingViewController setStashProgress:progress];
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

- (BOOL)stashableWrapper:(id)wrapper didReceivedTapGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setStashed:0];
  isStashed = [WeakRetained isStashed];

  return isStashed ^ 1;
}

- (void)invalidate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBPIPSceneContentContainerAdapter.m" lineNumber:264 description:@"Attempting to -invalidate twice; this is unsupported."];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  keyboardDismissalParticipantHandle = self->_keyboardDismissalParticipantHandle;
  if (keyboardDismissalParticipantHandle)
  {
    [(BSInvalidatable *)keyboardDismissalParticipantHandle invalidate];
    v8 = self->_keyboardDismissalParticipantHandle;
    self->_keyboardDismissalParticipantHandle = 0;
  }

  if ([(SBPIPSceneContentContainerAdapter *)self _tapInEnvironmentCanDismiss:[(SBPIPSceneContentContainerAdapter *)self _effectiveEnvironmentModeForTransitionContext:contextCopy]])
  {
    v9 = [(SBKeyboardDismissalManager *)self->_keyboardDismissalManager registerKeyboardDismissalParticipant:self];
    v10 = self->_keyboardDismissalParticipantHandle;
    self->_keyboardDismissalParticipantHandle = v9;
  }
}

- (void)keyboardFocusController:(id)controller externalSceneDidAcquireFocus:(id)focus
{
  identifier = [focus identifier];
  _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  sceneIdentifier = [_hostedAppSceneHandle sceneIdentifier];
  v8 = [identifier isEqual:sceneIdentifier];

  [(SBPIPSceneContentContainerAdapter *)self _updateDisplayLayoutElementKeyboardFocus:v8];
}

- (BOOL)keyboardDismissalManager:(id)manager shouldPreventDismissalForTouch:(id)touch inWindow:(id)window
{
  touchCopy = touch;
  windowCopy = window;
  if ([(SBPIPSceneContentContainerAdapter *)self _hostedSceneIsPresentingKeyboard])
  {
    v9 = [(SBPIPSceneContentContainerAdapter *)self _hitTestTouch:touchCopy inWindow:windowCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_hitTestTouch:(id)touch inWindow:(id)window
{
  touchCopy = touch;
  windowCopy = window;
  containerViewController = [(SBPIPSceneContentContainerAdapter *)self containerViewController];
  contentViewController = [containerViewController contentViewController];
  viewIfLoaded = [contentViewController viewIfLoaded];

  if (viewIfLoaded)
  {
    screen = [windowCopy screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];

    view = [touchCopy view];
    [touchCopy locationInView:view];
    [windowCopy convertPoint:fixedCoordinateSpace toCoordinateSpace:?];
    v15 = v14;
    v17 = v16;

    [viewIfLoaded convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v15, v17}];
    v18 = [viewIfLoaded hitTest:0 withEvent:?];
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_updateDisplayLayoutElementKeyboardFocus:(BOOL)focus
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SBPIPSceneContentContainerAdapter__updateDisplayLayoutElementKeyboardFocus___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__SBSDisplayLayoutElement_8l;
  focusCopy = focus;
  [WeakRetained updateDisplayLayoutElementWithBuilder:v5];
}

- (void)_dismissKeyboardIfNecessaryForTransitionContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(SBPIPSceneContentContainerAdapter *)self _effectiveEnvironmentModeForTransitionContext:context]== 1 && [(SBPIPInteractionSettings *)self->_interactionSettings keyboardDismissesOnTransitionToHomescreen]&& [(SBPIPSceneContentContainerAdapter *)self _hostedSceneIsPresentingKeyboard])
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

- (int64_t)_effectiveEnvironmentModeForTransitionContext:(id)context
{
  toLayoutState = [context toLayoutState];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];

  return unlockedEnvironmentMode;
}

- (BOOL)_hostedSceneIsPresentingKeyboard
{
  externalSceneWithFocus = [(SBKeyboardFocusControlling *)self->_keyboardFocusController externalSceneWithFocus];
  identityToken = [externalSceneWithFocus identityToken];

  _hostedAppSceneHandle = [(SBPIPSceneContentContainerAdapter *)self _hostedAppSceneHandle];
  sceneIfExists = [_hostedAppSceneHandle sceneIfExists];
  identityToken2 = [sceneIfExists identityToken];

  if ([identityToken2 isEqual:identityToken])
  {
    v8 = _hostedAppSceneHandle;
  }

  else
  {
    v8 = 0;
  }

  return v8 != 0;
}

- (BOOL)_tapInEnvironmentCanDismiss:(int64_t)dismiss
{
  keyboardDismissesOnOutsideUserInteractionOnHomescreen = [(SBPIPInteractionSettings *)self->_interactionSettings keyboardDismissesOnOutsideUserInteractionOnHomescreen];
  keyboardDismissesOnOutsideUserInteractionOutsideHomescreen = [(SBPIPInteractionSettings *)self->_interactionSettings keyboardDismissesOnOutsideUserInteractionOutsideHomescreen];
  return dismiss == 1 && keyboardDismissesOnOutsideUserInteractionOnHomescreen || dismiss != 1 && keyboardDismissesOnOutsideUserInteractionOutsideHomescreen;
}

@end