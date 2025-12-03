@interface UIKeyboardSceneDelegate
+ (id)activeKeyboardSceneDelegate;
+ (id)applicationConnectedWindowScenes;
+ (id)automaticKeyboardArbiterClient;
+ (int64_t)interfaceOrientation;
+ (void)_pinInputViewsForKeyboardSceneDelegate:(id)delegate onBehalfOfResponder:(id)responder duringBlock:(id)block;
+ (void)initialize;
+ (void)logInterfaceOrientation:(int64_t)orientation withDescription:(id)description;
+ (void)performOnControllers:(id)controllers;
+ (void)setInterfaceOrientation:(int64_t)orientation;
- (BOOL)_hasPostPinningReloadState;
- (BOOL)_isPreservedRestorableResponder:(id)responder;
- (BOOL)_isTrackingResponder:(id)responder;
- (BOOL)_keepInputSession;
- (BOOL)_preserveMultiDocumentTokenIfNecessary:(id)necessary withId:(id)id reset:(BOOL)reset;
- (BOOL)_restoreInputViewsWithId:(id)id animated:(BOOL)animated;
- (BOOL)_restoreMultiDocumentTokenIfNecessary:(id)necessary withId:(id)id;
- (BOOL)_showKeyboardWindowForInputViewSet:(id)set placement:(id)placement windowScene:(id)scene;
- (BOOL)animationsEnabled;
- (BOOL)clearWaitingForInputUIIfNeeded;
- (BOOL)enhancedWindowingModeIsAvailable;
- (BOOL)enhancedWindowingModeIsEnabled;
- (BOOL)expectedInputModeIsSpecialized;
- (BOOL)expectedInputViewSetIsCustom;
- (BOOL)hasActiveKeyboardResponder;
- (BOOL)hasCustomInputViewController;
- (BOOL)hasDictationKeyboard;
- (BOOL)hasIntegratedAssistantBar;
- (BOOL)hasNullInputView;
- (BOOL)hasVisibleAssistantBar;
- (BOOL)isInOnenessSceneAndRTIEnabled;
- (BOOL)isKeyboardOnEmbeddedScreen;
- (BOOL)isOnScreen;
- (BOOL)isUndocked;
- (BOOL)isWaitingForInputUI:(id)i;
- (BOOL)keyboardVisible;
- (BOOL)maximizeWithAnimation:(BOOL)animation;
- (BOOL)maximizeWithAnimationStyle:(id)style force:(BOOL)force;
- (BOOL)minimize;
- (BOOL)minimizeWithAnimationStyle:(id)style force:(BOOL)force;
- (BOOL)pinningPreventsInputViews:(id)views;
- (BOOL)requiresRemoteIAVInfo;
- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)responder;
- (BOOL)showingAccessoryViewOnly;
- (BOOL)showingInAppWindow;
- (BOOL)showingKeyboard;
- (BOOL)showingKeyboardForInputViewSet:(id)set;
- (BOOL)textEntryFocusOnExternalDisplay;
- (CGRect)frameForLayoutGuideInView:(id)view;
- (CGRect)visibleFrameInView:(id)view;
- (CGRect)visibleInputViewFrameInView:(id)view;
- (UIInputViewSet)inputViews;
- (UIInputWindowController)containerRootController;
- (UIKeyboardSceneDelegate)initWithScene:(id)scene;
- (UIScene)_scene;
- (UIView)containerView;
- (UIWindow)keyWindowCandidate;
- (UIWindowScene)scene;
- (double)verticalOverlapForView:(id)view usingKeyboardInfo:(id)info;
- (id)_delegateAsResponder;
- (id)_inputViewsForResponder:(id)responder;
- (id)_inputViewsForResponder:(id)responder withAutomaticKeyboard:(BOOL)keyboard force:(BOOL)force;
- (id)_placementForDeactivatedKeyboard:(BOOL)keyboard currentPlacement:(id)placement forSuppressionAssertion:(BOOL)assertion wantsAssistant:(BOOL)assistant keepAccessories:(BOOL)accessories;
- (id)_renderConfigForResponder:(id)responder traitCollection:(id)collection;
- (id)_responderDescriptionForLogging:(id)logging;
- (id)_sessionIdentifier;
- (id)_simpleViewDescriptionForLogging:(id)logging;
- (id)_windowScene;
- (id)containerWindowForViewService:(BOOL)service;
- (id)forceCreateKeyboardWindow;
- (id)keyboardScreen;
- (id)keyboardTrackingProvider;
- (id)keyboardWindow;
- (id)nextAnimationStyle:(BOOL)style;
- (id)passthroughViews;
- (id)remoteHostInputViewSet:(id)set;
- (id)systemInputAssistantViewControllerForResponder:(id)responder;
- (id)trackingElementCoordinator;
- (int)_endIgnoringReloadInputViews;
- (int64_t)_preferredAppearanceForResponder:(id)responder;
- (int64_t)restorableKeyboardAppearance;
- (void)_beginDisablingAnimations;
- (void)_beginIgnoringReloadInputViews;
- (void)_beginPersistingInputAccessoryViewForResponder:(id)responder withId:(id)id;
- (void)_beginPinningInputViewsOnBehalfOfResponder:(id)responder;
- (void)_clearMultiDocumentTokenIfNecessary:(id)necessary withId:(id)id;
- (void)_clearPinningResponders;
- (void)_clearPreservedInputViewsWithId:(id)id clearKeyboard:(BOOL)keyboard;
- (void)_clearPreservedInputViewsWithRestorableResponder:(id)responder;
- (void)_deviceWillLock:(id)lock;
- (void)_endDisablingAnimations;
- (void)_endPersistingInputAccessoryViewWithId:(id)id;
- (void)_performPostWaitingForInputUIBlocks;
- (void)_preserveInputViewsWithId:(id)id animated:(BOOL)animated reset:(BOOL)reset;
- (void)_reloadInputViewsForKeyWindowSceneResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder;
- (void)_reloadInputViewsForResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder;
- (void)_reloadInputViewsForWindowSceneResponder:(id)responder force:(BOOL)force;
- (void)_removePreservedInputViewSetForInputView:(id)view;
- (void)_restoreInputAccessoryViewOverrideWithId:(id)id;
- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask;
- (void)_setIgnoresPinning:(BOOL)pinning allowImmediateReload:(BOOL)reload;
- (void)_stopPinningInputViewsOnBehalfOfResponder:(id)responder;
- (void)_updateContainerWindowLevel;
- (void)_updateTextInputSession;
- (void)_updateVisibilityObserversWithReset:(BOOL)reset;
- (void)_windowHostingScene:(id)scene didMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)addPostWaitingForInputUIBlock:(id)block;
- (void)addTrackingElement:(id)element;
- (void)addVisibilityObserver:(id)observer;
- (void)addWindowForTracking:(id)tracking;
- (void)cleanDeactivation;
- (void)cleanUpWaitingForInputUI;
- (void)clearAnimationStyleForUserDrivenPresentation;
- (void)completeMoveKeyboardForWindow:(id)window;
- (void)createAutomaticKeyboardIfNeeded;
- (void)dealloc;
- (void)destroyKeyboardWindowIfNecessary;
- (void)disableInterfaceAutorotation:(BOOL)autorotation;
- (void)firstResponderDidChange:(id)change;
- (void)forceOrderInAutomaticAnimated:(BOOL)animated;
- (void)forceOrderInAutomaticFromDirection:(int)direction withDuration:(double)duration;
- (void)forceOrderOutAutomaticAnimated:(BOOL)animated;
- (void)forceOrderOutAutomaticExceptAccessoryView;
- (void)forceOrderOutAutomaticToDirection:(int)direction withDuration:(double)duration;
- (void)forceReloadInputViews;
- (void)inputModeChangedForRenderConfig:(id)config;
- (void)keyboardSceneDelegateWillResume:(id)resume;
- (void)keyboardUIDidChange;
- (void)loadLocalKeyboardForHost:(id)host;
- (void)orderInWithAnimationStyle:(id)style;
- (void)orderOutWithAnimationStyle:(id)style;
- (void)performMultipleOperations:(id)operations withAnimationStyle:(id)style;
- (void)performWithAllowingNilResponderReload:(id)reload;
- (void)popAnimationStyle;
- (void)popOrRemoveAnimationStyle:(id)style;
- (void)prepareForAlongsideTransitionWithContext:(id)context;
- (void)prepareToMoveKeyboardForInputViewSet:(id)set animationStyle:(id)style;
- (void)pushAnimationStyle:(id)style;
- (void)refreshKeyboardLayoutGuideEnsuringControllerExists:(BOOL)exists;
- (void)refreshWithLocalMinimumKeyboardHeight:(double)height;
- (void)registerKeyboardTracker:(id)tracker;
- (void)reloadPlacement;
- (void)removeTrackingElement:(id)element;
- (void)removeWindowFromTracking:(id)tracking;
- (void)setDisableInputBarsForWritingTools:(BOOL)tools;
- (void)setHardwareKeyboardExclusivityIdentifier:(id)identifier;
- (void)setInputViews:(id)views;
- (void)setInputViews:(id)views animated:(BOOL)animated;
- (void)setInputViews:(id)views animationStyle:(id)style;
- (void)setKeyWindowSceneInputViews:(id)views animationStyle:(id)style;
- (void)setNextAutomaticOrderInDirection:(int)direction duration:(double)duration;
- (void)setShouldSuppressInputAssistantUpdates:(BOOL)updates;
- (void)setTextEffectsWindowLevelForInputView:(id)view responder:(id)responder;
- (void)setUseHostedInstance:(BOOL)instance;
- (void)setWindowLevel:(double)level sceneLevel:(double)sceneLevel forResponder:(id)responder;
- (void)setWindowSceneInputViews:(id)views animationStyle:(id)style;
- (void)traitCollectionDidChange;
- (void)updateArbiterClientWithKeyboardFrame:(CGRect)frame keyboarFrameWithIAV:(CGRect)v isIAVRelevant:(BOOL)relevant showing:(BOOL)showing notifyRemote:(BOOL)remote forScene:(id)scene;
- (void)updateLightEffectsBackdropAnimated:(BOOL)animated;
- (void)updateLocalKeyboardChanged:(id)changed;
- (void)updateProviderFromRemoteUpdate:(id)update;
- (void)updateRemoteKeyboardChanged:(id)changed;
- (void)updateRenderConfigForCurrentResponder;
- (void)updateRenderConfigForResponder:(id)responder traitCollection:(id)collection;
- (void)updateRenderConfigForTraitCollection:(id)collection;
- (void)updateSystemInputAssistantVisibilityAfterHardwareKeyEvent;
- (void)updateTrackingElementsForOffset:(UIOffset)offset;
- (void)updateTrackingElementsForSize:(CGSize)size;
- (void)visualModeManager:(id)manager didChangeToMode:(int)mode;
- (void)visualModeManager:(id)manager observedEnhancedWindowingModeEnabledDidChange:(BOOL)change;
- (void)window:(id)window changedFromLevel:(double)level toLevel:(double)toLevel;
- (void)windowDidBecomeKey:(id)key;
@end

@implementation UIKeyboardSceneDelegate

- (UIWindowScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (UIInputWindowController)containerRootController
{
  containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
  rootViewController = [containerWindow rootViewController];

  return rootViewController;
}

- (BOOL)isOnScreen
{
  rootViewController = [(UITextEffectsWindow *)self->_containerWindow rootViewController];
  isOnScreen = [rootViewController isOnScreen];

  return isOnScreen;
}

+ (id)automaticKeyboardArbiterClient
{
  if (+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard supportsAutoFillPanel](UIKeyboard, "supportsAutoFillPanel") && +[UIKeyboard isKeyboardProcess])
  {
    v2 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
  }

  else
  {
    v2 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  }

  return v2;
}

- (id)keyboardScreen
{
  scene = [(UIKeyboardSceneDelegate *)self scene];
  screen = [scene screen];

  return screen;
}

+ (id)activeKeyboardSceneDelegate
{
  v2 = +[UIWindowScene _keyWindowScene];
  keyboardSceneDelegate = [v2 keyboardSceneDelegate];

  return keyboardSceneDelegate;
}

- (id)keyboardWindow
{
  if (+[UIKeyboard inputUIOOP])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
    }

    else
    {
      containerWindow = 0;
    }
  }

  else
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    containerWindow = [v4 keyboardWindow];
  }

  return containerWindow;
}

- (void)_updateTextInputSession
{
  v3 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v3 textInputTraits];
  isSecureTextEntry = [textInputTraits isSecureTextEntry];

  _requiresKeyboardWhenFirstResponder = [(UIResponder *)self->_responder _requiresKeyboardWhenFirstResponder];
  if (isSecureTextEntry)
  {
    goto LABEL_13;
  }

  v7 = _requiresKeyboardWhenFirstResponder;
  responder = self->_responder;
  v9 = responder != 0 && v7;
  sessionAnalytics = self->_sessionAnalytics;
  if (v9 == 1)
  {
    if (!sessionAnalytics)
    {
      v11 = objc_alloc_init(UITextInputSessionActionAnalytics);
      v12 = self->_sessionAnalytics;
      self->_sessionAnalytics = v11;

      [(UITextInputSessionActionAnalytics *)self->_sessionAnalytics setDelegateSource:self];
      v13 = self->_sessionAnalytics;

      [(UITextInputSessionActionAnalytics *)v13 didBegin];
      return;
    }

    goto LABEL_9;
  }

  if (!sessionAnalytics)
  {
    return;
  }

  if (responder)
  {
LABEL_9:
    if (_UIResponderRequiresTextInput(responder))
    {
      return;
    }

    sessionAnalytics = self->_sessionAnalytics;
  }

  [(UITextInputSessionActionAnalytics *)sessionAnalytics writeAnalytics];
LABEL_13:
  v14 = self->_sessionAnalytics;
  self->_sessionAnalytics = 0;
}

- (void)cleanUpWaitingForInputUI
{
  if ([(UIKeyboardSceneDelegate *)self clearWaitingForInputUIIfNeeded])
  {

    [(UIKeyboardSceneDelegate *)self _performPostWaitingForInputUIBlocks];
  }
}

- (BOOL)clearWaitingForInputUIIfNeeded
{
  waitingForInputUI = self->_waitingForInputUI;
  if (waitingForInputUI)
  {
    self->_waitingForInputUI = 0;
  }

  return waitingForInputUI != 0;
}

- (BOOL)animationsEnabled
{
  if (+[UIKeyboard usesLocalKeyboard])
  {
    return 0;
  }

  scene = [(UIKeyboardSceneDelegate *)self scene];
  keyboardSceneDelegate = [scene keyboardSceneDelegate];
  useHostedInstance = [keyboardSceneDelegate useHostedInstance];

  v7 = (useHostedInstance & 1) != 0 || [UIApp applicationState] != 2 || +[UIWindow _allWindowsKeepContextInBackground](UIWindow, "_allWindowsKeepContextInBackground");
  return self->_disableAnimationsCount < 1 && v7;
}

+ (int64_t)interfaceOrientation
{
  if ([UIApp _frontMostAppInterfaceOrientationIsSignificant])
  {
    _frontMostAppOrientation = [UIApp _frontMostAppOrientation];
    v4 = @"Front most app's orientation is significant.";
  }

  else
  {
    if (!__interfaceOrientation || ![UIApp _isWindowServerHostingManaged])
    {
      if ([UIApp _isSpringBoard])
      {
        goto LABEL_16;
      }

      v5 = +[UIWindowScene _keyWindowScene];
      if (v5)
      {
        anyObject = v5;
        _frontMostAppOrientation = [v5 _interfaceOrientation];
        [self logInterfaceOrientation:_frontMostAppOrientation withDescription:@"Using key window scene"];
      }

      else
      {
        applicationConnectedWindowScenes = [self applicationConnectedWindowScenes];
        if ([applicationConnectedWindowScenes count])
        {
          anyObject = [applicationConnectedWindowScenes anyObject];
          _frontMostAppOrientation = [anyObject _interfaceOrientation];
          [self logInterfaceOrientation:_frontMostAppOrientation withDescription:@"Available non-key window scene"];
        }

        else
        {
          anyObject = 0;
          _frontMostAppOrientation = 0;
        }
      }

      if (!_frontMostAppOrientation)
      {
        goto LABEL_16;
      }

      return _frontMostAppOrientation;
    }

    _frontMostAppOrientation = __interfaceOrientation;
    v4 = @"Using cache for app with managed window server hosting.";
  }

  [self logInterfaceOrientation:_frontMostAppOrientation withDescription:v4];
  if (!_frontMostAppOrientation)
  {
LABEL_16:
    _frontMostAppOrientation = [UIApp activeInterfaceOrientation];
    [self logInterfaceOrientation:_frontMostAppOrientation withDescription:@"Fallback case. Using the app's active interface orientation."];
  }

  return _frontMostAppOrientation;
}

- (void)updateRenderConfigForCurrentResponder
{
  responder = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForResponder:responder];
}

- (id)_windowScene
{
  responder = [(UIKeyboardSceneDelegate *)self responder];
  _responderWindow = [responder _responderWindow];
  windowScene = [_responderWindow windowScene];
  v6 = windowScene;
  if (windowScene)
  {
    scene = windowScene;
  }

  else
  {
    scene = [(UIKeyboardSceneDelegate *)self scene];
  }

  v8 = scene;

  return v8;
}

- (UIInputViewSet)inputViews
{
  if (self->_containerWindow)
  {
    if (+[_UIRemoteKeyboards enabled])
    {
      visualModeManager = [(UIKeyboardSceneDelegate *)self visualModeManager];
      shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

      if ((shouldShowWithinAppWindow & 1) == 0)
      {
        keyboardWindow = [(UIKeyboardSceneDelegate *)self keyboardWindow];
        rootViewController = [keyboardWindow rootViewController];
        inputViewSet = [rootViewController inputViewSet];

        if (inputViewSet)
        {
          inputView = [inputViewSet inputView];
          v9 = objc_opt_respondsToSelector();

          if ((v9 & 1) == 0)
          {
            inputViewSet2 = inputViewSet;
            goto LABEL_9;
          }
        }
      }
    }

    keyboardWindow = [(UIKeyboardSceneDelegate *)self containerRootController];
    inputViewSet2 = [keyboardWindow inputViewSet];
    inputViewSet = inputViewSet2;
LABEL_9:
    normalizePlaceholders = [inputViewSet2 normalizePlaceholders];

    goto LABEL_11;
  }

  normalizePlaceholders = 0;
LABEL_11:

  return normalizePlaceholders;
}

- (BOOL)enhancedWindowingModeIsEnabled
{
  scene = [(UIKeyboardSceneDelegate *)self scene];
  _enhancedWindowingEnabled = [scene _enhancedWindowingEnabled];

  return _enhancedWindowingEnabled;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_220];
    [UIScene _registerSceneComponentClass:self withKey:@"_UIKeyboardSceneDelegateSceneComponentKey" predicate:v3];
  }
}

uint64_t __37__UIKeyboardSceneDelegate_initialize__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 role];
  if (v3 == @"UIWindowSceneSessionRoleExternalDisplayNonInteractive")
  {
    v5 = 0;
  }

  else
  {
    v4 = [v2 role];
    v5 = [v4 isEqualToString:@"CHWindowSceneSessionRoleAvocado"] ^ 1;
  }

  return v5;
}

- (void)_beginDisablingAnimations
{
  ++self->_disableAnimationsCount;
  if (self->_containerWindow)
  {
    containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
    v2 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [containerRootController pushAnimationStyle:v2];
  }
}

- (void)_endDisablingAnimations
{
  --self->_disableAnimationsCount;
  if (self->_containerWindow)
  {
    containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
    [containerRootController popAnimationStyle];
  }
}

- (void)popAnimationStyle
{
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    animationStyleStack = self->_animationStyleStack;

    [(NSMutableArray *)animationStyleStack removeLastObject];
  }
}

- (BOOL)isUndocked
{
  rootViewController = [(UITextEffectsWindow *)self->_containerWindow rootViewController];
  isUndocked = [rootViewController isUndocked];

  return isUndocked;
}

- (id)trackingElementCoordinator
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_trackingElementCoordinator)
  {
    if ([(UIKeyboardSceneDelegate *)self hasTrackingAvailable])
    {
      scene = [(UIKeyboardSceneDelegate *)self scene];
      if (scene)
      {
        existingContainerWindow = [(UIKeyboardSceneDelegate *)self existingContainerWindow];

        if (existingContainerWindow)
        {
          v5 = _UIKeyboardSceneDelegateLogger();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            scene2 = [(UIKeyboardSceneDelegate *)self scene];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = scene2;
            _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "KeyboardTrackingCoordinator: Creating tracking coordinator for %@", &buf, 0xCu);
          }

          v23 = 0;
          v24 = &v23;
          v25 = 0x2050000000;
          v7 = getTUIKeyboardTrackingCoordinatorClass_softClass;
          v26 = getTUIKeyboardTrackingCoordinatorClass_softClass;
          if (!getTUIKeyboardTrackingCoordinatorClass_softClass)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v29 = __getTUIKeyboardTrackingCoordinatorClass_block_invoke;
            v30 = &unk_1E70F2F20;
            v31 = &v23;
            __getTUIKeyboardTrackingCoordinatorClass_block_invoke(&buf);
            v7 = v24[3];
          }

          v8 = v7;
          _Block_object_dispose(&v23, 8);
          scene3 = [(UIKeyboardSceneDelegate *)self scene];
          v10 = [v7 trackingCoordinatorForScene:scene3];
          trackingElementCoordinator = self->_trackingElementCoordinator;
          self->_trackingElementCoordinator = v10;

          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __53__UIKeyboardSceneDelegate_trackingElementCoordinator__block_invoke;
          v22[3] = &unk_1E70F4440;
          v22[4] = self;
          [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v22];
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v12 = [(NSHashTable *)self->_pendingTrackers copy];
          v13 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
          if (v13)
          {
            v14 = *v19;
            do
            {
              v15 = 0;
              do
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                [(TUIKeyboardTrackingCoordinator *)self->_trackingElementCoordinator addTracker:*(*(&v18 + 1) + 8 * v15++)];
              }

              while (v13 != v15);
              v13 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
            }

            while (v13);
          }

          [(NSHashTable *)self->_pendingTrackers removeAllObjects];
        }
      }
    }
  }

  v16 = self->_trackingElementCoordinator;

  return v16;
}

void __53__UIKeyboardSceneDelegate_trackingElementCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTrackingKeyboard])
  {
    [*(*(a1 + 32) + 64) addTrackingWindow:v3];
  }
}

- (void)_beginIgnoringReloadInputViews
{
  ignoringReloadInputViews = self->_ignoringReloadInputViews;
  if (!ignoringReloadInputViews)
  {
    self->_ignoredReloads = 0;
  }

  self->_ignoringReloadInputViews = ignoringReloadInputViews + 1;
}

- (int)_endIgnoringReloadInputViews
{
  v2 = self->_ignoringReloadInputViews - 1;
  self->_ignoringReloadInputViews = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return self->_ignoredReloads;
  }
}

- (void)forceReloadInputViews
{
  v3 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "forceReloadInputViews", v19, 2u);
  }

  [(UIKeyboardSceneDelegate *)self clearWaitingForInputUIIfNeeded];
  self->_restoringInputViewsAndWaitingForInputUI = 0;
  if (self->_postPinningReloadState)
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];
    if ([responder _requiresKeyboardWhenFirstResponder])
    {
      v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      handlingRemoteEvent = [v5 handlingRemoteEvent];

      if (handlingRemoteEvent)
      {
        inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
        responder2 = [(UIKeyboardSceneDelegate *)self responder];
        [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:inputViews responder:responder2];

        [(UIKeyboardSceneDelegate *)self _performPostWaitingForInputUIBlocks];
        return;
      }
    }

    else
    {
    }
  }

  v9 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if (![v9 oldPathForSnapshot])
  {
    goto LABEL_15;
  }

  inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
  inputAssistantView = [inputViews2 inputAssistantView];
  if (!inputAssistantView)
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v12 = inputAssistantView;
  responder3 = [(UIKeyboardSceneDelegate *)self responder];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_14;
  }

  responder4 = [(UIKeyboardSceneDelegate *)self responder];
  inputViews3 = [(UIKeyboardSceneDelegate *)self inputViews];
  inputAssistantView2 = [inputViews3 inputAssistantView];
  v17 = [responder4 isDescendantOfView:inputAssistantView2];

  if ((v17 & 1) == 0)
  {
LABEL_16:
    self->_keepInputSession = 1;
    responder5 = [(UIKeyboardSceneDelegate *)self responder];
    [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:responder5 force:1];

    [(UIKeyboardSceneDelegate *)self _performPostWaitingForInputUIBlocks];
    self->_keepInputSession = 0;
  }
}

- (void)_performPostWaitingForInputUIBlocks
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardSceneDelegate *)self isWaitingForInputUI]&& [(NSMutableArray *)self->_postWaitingForInputUIBlocks count])
  {
    v3 = [(NSMutableArray *)self->_postWaitingForInputUIBlocks copy];
    [(NSMutableArray *)self->_postWaitingForInputUIBlocks removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
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

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (UIWindow)keyWindowCandidate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);

  return WeakRetained;
}

- (UIView)containerView
{
  containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  view = [containerRootController view];
  v5 = view;
  if (view)
  {
    containerWindow = view;
  }

  else
  {
    containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
  }

  v7 = containerWindow;

  return v7;
}

- (BOOL)isKeyboardOnEmbeddedScreen
{
  scene = [(UIKeyboardSceneDelegate *)self scene];
  screen = [scene screen];
  _isEmbeddedScreen = [screen _isEmbeddedScreen];

  return _isEmbeddedScreen;
}

- (BOOL)_keepInputSession
{
  if (self->_keepInputSession)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = +[UIKeyboard usesInputSystemUI];
    if (v2)
    {
      responder = [(UIKeyboardSceneDelegate *)self responder];
      v5 = [(UIKeyboardSceneDelegate *)self _isPinningInputViewsOnBehalfOfResponder:responder];

      LOBYTE(v2) = v5;
    }
  }

  return v2;
}

- (BOOL)_hasPostPinningReloadState
{
  responderToReload = [(UIInputViewPostPinningReloadState *)self->_postPinningReloadState responderToReload];
  v3 = responderToReload != 0;

  return v3;
}

- (id)_delegateAsResponder
{
  v2 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder = [v2 delegateAsResponder];

  return delegateAsResponder;
}

- (BOOL)hasCustomInputViewController
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];
    v4 = responder;
    if (responder)
    {
      _delegateAsResponder = responder;
    }

    else
    {
      _delegateAsResponder = [(UIKeyboardSceneDelegate *)self _delegateAsResponder];
    }

    v6 = _delegateAsResponder;

    inputViewController = [v6 inputViewController];
    self->_hasCustomInputViewController = inputViewController != 0;
  }

  return self->_hasCustomInputViewController;
}

- (BOOL)isInOnenessSceneAndRTIEnabled
{
  hardwareKeyboardExclusivityIdentifier = self->_hardwareKeyboardExclusivityIdentifier;
  if (hardwareKeyboardExclusivityIdentifier)
  {
    LOBYTE(hardwareKeyboardExclusivityIdentifier) = (_os_feature_enabled_impl() & 1) != 0 || self->_testRTIOneness;
  }

  return hardwareKeyboardExclusivityIdentifier & 1;
}

- (id)_sessionIdentifier
{
  v2 = +[UIKeyboardImpl activeInstance];
  _sessionIdentifier = [v2 _sessionIdentifier];

  return _sessionIdentifier;
}

- (BOOL)hasVisibleAssistantBar
{
  systemInputAssistantViewController = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
  v3 = [systemInputAssistantViewController shouldBeShownForInputDelegate:0 inputViews:0];

  return v3;
}

- (BOOL)requiresRemoteIAVInfo
{
  if ([UIApp _isSpringBoard])
  {
    LOBYTE(v3) = 1;
  }

  else if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    visualModeManager = [(UIKeyboardSceneDelegate *)self visualModeManager];
    v3 = [visualModeManager windowingModeEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)keyboardTrackingProvider
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_keyboardTrackingProvider)
  {
    goto LABEL_21;
  }

  keyboardWindow = [(UIKeyboardSceneDelegate *)self keyboardWindow];
  if (keyboardWindow)
  {
    keyboardScene = [(TUIKeyboardTrackingProvider *)self->_keyboardTrackingProvider keyboardScene];
    keyboardWindow2 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
    windowScene = [keyboardWindow2 windowScene];

    if (keyboardScene != windowScene)
    {
      keyboardTrackingProvider = self->_keyboardTrackingProvider;
      self->_keyboardTrackingProvider = 0;
    }
  }

  if (!self->_keyboardTrackingProvider)
  {
LABEL_21:
    if ([(UIKeyboardSceneDelegate *)self hasTrackingAvailable])
    {
      keyboardWindow3 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
      windowScene2 = [keyboardWindow3 windowScene];

      if (!windowScene2)
      {
        existingContainerWindow = [(UIKeyboardSceneDelegate *)self existingContainerWindow];
        windowScene2 = [existingContainerWindow windowScene];
      }

      v11 = _UIKeyboardSceneDelegateLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = windowScene2;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "KeyboardTrackingCoordinator: Creating tracking provider for %@", &buf, 0xCu);
      }

      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v12 = getTUIKeyboardTrackingProviderClass_softClass;
      v22 = getTUIKeyboardTrackingProviderClass_softClass;
      if (!getTUIKeyboardTrackingProviderClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v24 = __getTUIKeyboardTrackingProviderClass_block_invoke;
        v25 = &unk_1E70F2F20;
        v26 = &v19;
        __getTUIKeyboardTrackingProviderClass_block_invoke(&buf);
        v12 = v20[3];
      }

      v13 = v12;
      _Block_object_dispose(&v19, 8);
      v14 = [v12 trackingProviderForKeyboardScene:windowScene2];
      v15 = self->_keyboardTrackingProvider;
      self->_keyboardTrackingProvider = v14;

      if (self->_trackingElementCoordinator)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __51__UIKeyboardSceneDelegate_keyboardTrackingProvider__block_invoke;
        v18[3] = &unk_1E70F4440;
        v18[4] = self;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:0 allowMutation:0 withBlock:v18];
      }
    }
  }

  v16 = self->_keyboardTrackingProvider;

  return v16;
}

void __51__UIKeyboardSceneDelegate_keyboardTrackingProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTrackingKeyboard])
  {
    [*(*(a1 + 32) + 64) addTrackingWindow:v3];
  }
}

- (BOOL)showingKeyboard
{
  selfCopy = self;
  inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  LOBYTE(selfCopy) = [(UIKeyboardSceneDelegate *)selfCopy showingKeyboardForInputViewSet:inputViews];

  return selfCopy;
}

- (void)dealloc
{
  v8[8] = *MEMORY[0x1E69E9840];
  [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant stopEventDeferralPolicyObserver];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"UIWindowDidRotateNotification";
  v8[1] = 0x1EFB921F0;
  v8[2] = @"UIApplicationWillEnterForegroundNotification";
  v8[3] = @"UITextInputCurrentInputModeDidChangeNotification";
  v8[4] = @"UIWindowDidBecomeKeyNotification";
  v8[5] = @"UIWindowDidResignKeyNotification";
  v8[6] = @"UIWindowFirstResponderDidChangeNotification";
  v8[7] = @"UIApplicationProtectedDataWillBecomeUnavailable";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:8];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5 = +[UIPeripheralHost sharedInstance];
  v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [v5 flushDelayedTasksForKey:v6];

  v7.receiver = self;
  v7.super_class = UIKeyboardSceneDelegate;
  [(UIKeyboardSceneDelegate *)&v7 dealloc];
}

- (UIKeyboardSceneDelegate)initWithScene:(id)scene
{
  sceneCopy = scene;
  v27.receiver = self;
  v27.super_class = UIKeyboardSceneDelegate;
  v5 = [(UIKeyboardSceneDelegate *)&v27 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    v7 = objc_alloc_init(UIKeyboardVisualModeManager);
    visualModeManager = v6->_visualModeManager;
    v6->_visualModeManager = v7;

    [(UIKeyboardVisualModeManager *)v6->_visualModeManager setDelegate:v6];
    *&v6->_automaticAppearanceEnabled = 257;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animationStyleStack = v6->_animationStyleStack;
    v6->_animationStyleStack = v9;

    v6->_reloadInputViewsForcedIsAllowed = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pinningResponders = v6->_pinningResponders;
    v6->_pinningResponders = v11;

    v13 = +[UIInputViewSet emptyInputSet];
    inputViewSet = v6->_inputViewSet;
    v6->_inputViewSet = v13;

    v15 = [[UITextFormattingCoordinator alloc] initWithWindowScene:sceneCopy];
    textFormattingCoordinator = v6->_textFormattingCoordinator;
    v6->_textFormattingCoordinator = v15;

    array = [MEMORY[0x1E695DF70] array];
    postWaitingForInputUIBlocks = v6->_postWaitingForInputUIBlocks;
    v6->_postWaitingForInputUIBlocks = array;

    v19 = objc_alloc_init(UIKBLocalAuthenticationObserver);
    localAuthenticationObserver = v6->_localAuthenticationObserver;
    v6->_localAuthenticationObserver = v19;

    if (+[UIKeyboard doesKeyboardFollowEventDeferralTarget])
    {
      v21 = objc_alloc_init(_UIKBEventDeferralPolicyAssistant);
      eventDeferralPolicyAssistant = v6->_eventDeferralPolicyAssistant;
      v6->_eventDeferralPolicyAssistant = v21;

      [(_UIKBEventDeferralPolicyAssistant *)v6->_eventDeferralPolicyAssistant setKeyboardSceneDelegate:v6];
      [(_UIKBEventDeferralPolicyAssistant *)v6->_eventDeferralPolicyAssistant configureEventDeferralPolicyObserver];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_keyboardSceneDelegateWillResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel_inputModeChangedForRenderConfig_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel_windowDidBecomeKey_ name:@"UIWindowDidBecomeKeyNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel_windowDidResignKey_ name:@"UIWindowDidResignKeyNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__deviceWillLock_ name:@"UIApplicationProtectedDataWillBecomeUnavailable" object:0];
    if (+[UIKeyboard usesInputSystemUI])
    {
      v24 = objc_alloc_init(UIRemoteInputViewHost);
      remoteInputViewHost = v6->_remoteInputViewHost;
      v6->_remoteInputViewHost = v24;
    }
  }

  return v6;
}

- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask
{
  _sceneCopy = _scene;
  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);

    if (WeakRetained)
    {
      [(UIKeyboardSceneDelegate *)self setKeyWindowCandidate:0];
    }
  }

  else if (!state)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__UIKeyboardSceneDelegate__scene_willTransitionToActivationState_withReasonsMask___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__UIKeyboardSceneDelegate__scene_willTransitionToActivationState_withReasonsMask___block_invoke(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _supportsPencil];

  if (v3)
  {
    v4 = [*(a1 + 32) containerWindow];
  }
}

- (void)inputModeChangedForRenderConfig:(id)config
{
  configCopy = config;
  if (pthread_main_np())
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];

    if (responder)
    {
      containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
      view = [containerRootController view];
      _inheritedRenderConfig = [view _inheritedRenderConfig];

      responder2 = [(UIKeyboardSceneDelegate *)self responder];
      v10 = [(UIKeyboardSceneDelegate *)self _renderConfigForResponder:responder2 traitCollection:0];

      backdropStyle = [_inheritedRenderConfig backdropStyle];
      if (backdropStyle != [v10 backdropStyle])
      {
        [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
      }
    }
  }

  else
  {
    [(UIKeyboardSceneDelegate *)self performSelectorOnMainThread:a2 withObject:configCopy waitUntilDone:0];
  }
}

- (void)_deviceWillLock:(id)lock
{
  responder = [(UIKeyboardSceneDelegate *)self responder];
  [responder _endWritingTools];
}

- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)responder
{
  if (self->_eventDeferralPolicyAssistant)
  {
    eventDeferralPolicyAssistant = self->_eventDeferralPolicyAssistant;

    return [(_UIKBEventDeferralPolicyAssistant *)eventDeferralPolicyAssistant shouldLoadKeySceneInputViewsForResponder:responder];
  }

  else
  {
    scene = [(UIKeyboardSceneDelegate *)self scene];
    _isKeyWindowScene = [scene _isKeyWindowScene];

    return _isKeyWindowScene;
  }
}

- (void)keyboardSceneDelegateWillResume:(id)resume
{
  resumeCopy = resume;
  scene = [(UIKeyboardSceneDelegate *)self scene];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  responder = [(UIKeyboardSceneDelegate *)self responder];
  v6 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:responder];

  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = +[UIKeyboardAutomatic activeInstance];
  superview = [v7 superview];
  if (superview)
  {
    _compatibilityController = superview;
  }

  else
  {
    responder2 = [(UIKeyboardSceneDelegate *)self responder];
    _requiresKeyboardWhenFirstResponder = [responder2 _requiresKeyboardWhenFirstResponder];

    if (!_requiresKeyboardWhenFirstResponder)
    {
      goto LABEL_10;
    }

    v7 = +[UIKeyboardImpl sharedInstance];
    responder3 = [(UIKeyboardSceneDelegate *)self responder];
    _keyboardResponder = [responder3 _keyboardResponder];
    [v7 setDelegate:_keyboardResponder];

    geometryDelegate = [v7 geometryDelegate];

    if (!geometryDelegate)
    {
      v15 = +[UIKeyboard activeKeyboard];
      [v7 setGeometryDelegate:v15];
    }

    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    inputViewController = [inputViews inputViewController];
    _compatibilityController = [inputViewController _compatibilityController];

    [_compatibilityController willResume:resumeCopy];
    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v18 currentInputMode];
    [_compatibilityController setInputMode:currentInputMode];
  }

LABEL_10:
  v20 = +[UIKeyboard activeKeyboard];
  if (!v20)
  {
    goto LABEL_17;
  }

  scene = v20;
  responder4 = [(UIKeyboardSceneDelegate *)self responder];
  if (responder4)
  {
    v22 = responder4;
    responder5 = [(UIKeyboardSceneDelegate *)self responder];
    v24 = responder5;
    if (responder5 == self->_responderWithoutAutomaticAppearanceEnabled)
    {
      v25 = +[UIKeyboard activeKeyboard];
      inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
      inputView = [inputViews2 inputView];

      if (v25 == inputView)
      {
        goto LABEL_17;
      }

      responder6 = [(UIKeyboardSceneDelegate *)self responder];
      [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:responder6];

      scene = +[UIKeyboard activeKeyboard];
      [scene updateLayout];
    }

    else
    {
    }
  }

LABEL_16:

LABEL_17:
}

+ (id)applicationConnectedWindowScenes
{
  v17 = *MEMORY[0x1E69E9840];
  connectedScenes = [UIApp connectedScenes];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = connectedScenes;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

+ (void)setInterfaceOrientation:(int64_t)orientation
{
  v8 = *MEMORY[0x1E69E9840];
  if (__interfaceOrientation != orientation)
  {
    v4 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [UIApplication stringForInterfaceOrientation:orientation];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Interface Orientation: Setting cached interface orientation to: %@", &v6, 0xCu);
    }

    __interfaceOrientation = orientation;
  }
}

+ (void)logInterfaceOrientation:(int64_t)orientation withDescription:(id)description
{
  v15 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (__lastLoggedInterfaceOrientation != orientation)
  {
    v6 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [UIApplication stringForInterfaceOrientation:__lastLoggedInterfaceOrientation];
      v8 = [UIApplication stringForInterfaceOrientation:orientation];
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = descriptionCopy;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "[Interface Orientation] was:%@ now:%@ reason:%@", &v9, 0x20u);
    }

    __lastLoggedInterfaceOrientation = orientation;
  }
}

+ (void)performOnControllers:(id)controllers
{
  v27 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v4 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        keyboardSceneDelegate = [*(*(&v21 + 1) + 8 * v10) keyboardSceneDelegate];
        if (keyboardSceneDelegate)
        {
          [v5 addObject:keyboardSceneDelegate];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        controllersCopy[2](controllersCopy, *(*(&v17 + 1) + 8 * v16++));
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)cleanDeactivation
{
  for (i = self->_deactivationCount; i; --i)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    scene = [(UIKeyboardSceneDelegate *)self scene];
    [v4 setDeactivatedKeyboard:0 forScene:scene];
  }
}

- (void)setUseHostedInstance:(BOOL)instance
{
  hostedUseCount = self->_hostedUseCount;
  if (instance)
  {
    v4 = hostedUseCount + 1;
  }

  else
  {
    v4 = hostedUseCount - 1;
  }

  self->_hostedUseCount = v4;
}

- (id)containerWindowForViewService:(BOOL)service
{
  serviceCopy = service;
  scene = [(UIKeyboardSceneDelegate *)self scene];
  session = [scene session];
  role = [session role];
  v8 = [role isEqualToString:@"_UISceneSessionRoleKeyboard"];

  if (v8)
  {
    v9 = 0;
    goto LABEL_19;
  }

  if (serviceCopy)
  {
    v10 = 24;
  }

  else
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  if (v11)
  {
    if ([UIApp _isSpringBoard])
    {
      v9 = v11;
      goto LABEL_19;
    }

    if (([v11 _isHostedInAnotherProcess] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    scene2 = [(UIKeyboardSceneDelegate *)self scene];
    v16 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:scene2 forViewService:serviceCopy];
    goto LABEL_13;
  }

  v12 = +[UIWindowScene _keyWindowScene];
  _keyWindow = [(UIWindowScene *)v12 _keyWindow];
  _isHostedInAnotherProcess = [_keyWindow _isHostedInAnotherProcess];

  if (_isHostedInAnotherProcess)
  {
    goto LABEL_10;
  }

LABEL_12:
  scene2 = [(UIKeyboardSceneDelegate *)self scene];
  v16 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:scene2 forViewService:serviceCopy];
LABEL_13:
  v9 = v16;

  [v9 setHidden:0];
  if (!v11 && v9 && self->_disableAnimationsCount >= 1)
  {
    v17 = 0;
    do
    {
      rootViewController = [v9 rootViewController];
      v19 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [rootViewController pushAnimationStyle:v19];

      ++v17;
    }

    while (v17 < self->_disableAnimationsCount);
  }

  objc_storeStrong((&self->super.isa + v10), v9);
LABEL_19:

  return v9;
}

- (void)registerKeyboardTracker:(id)tracker
{
  v13 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  trackingElementCoordinator = self->_trackingElementCoordinator;
  if (trackingElementCoordinator)
  {
    [(TUIKeyboardTrackingCoordinator *)trackingElementCoordinator addTracker:trackerCopy];
  }

  else
  {
    if (!self->_pendingTrackers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      pendingTrackers = self->_pendingTrackers;
      self->_pendingTrackers = weakObjectsHashTable;
    }

    v8 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2048;
      v12 = trackerCopy;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "KeyboardTrackingCoordinator: TUIKeyboardTracker registered before coordinator is ready, will add later: <%@:%p>", &v9, 0x16u);
    }

    [(NSHashTable *)self->_pendingTrackers addObject:trackerCopy];
  }
}

- (void)updateProviderFromRemoteUpdate:(id)update
{
  updateCopy = update;
  if (![(UIKeyboardSceneDelegate *)self hasTrackingAvailable])
  {
    goto LABEL_24;
  }

  if ([updateCopy isLocal])
  {
    goto LABEL_24;
  }

  sourceBundleIdentifier = [updateCopy sourceBundleIdentifier];

  if (!sourceBundleIdentifier)
  {
    goto LABEL_24;
  }

  keyboardOnScreen = [updateCopy keyboardOnScreen];
  TUIKeyboardStateClass = getTUIKeyboardStateClass();
  if (keyboardOnScreen)
  {
    [TUIKeyboardStateClass onscreenState];
  }

  else
  {
    [TUIKeyboardStateClass offscreenState];
  }
  v8 = ;
  if ([updateCopy isFloating])
  {
    floatingState = [getTUIKeyboardStateClass() floatingState];

    v8 = floatingState;
  }

  [v8 setHasAssistantView:{objc_msgSend(updateCopy, "assistantBarVisible")}];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v10 = getTUIKeyboardAnimationInfoClass_softClass;
  v48 = getTUIKeyboardAnimationInfoClass_softClass;
  if (!getTUIKeyboardAnimationInfoClass_softClass)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __getTUIKeyboardAnimationInfoClass_block_invoke;
    v44[3] = &unk_1E70F2F20;
    v44[4] = &v45;
    __getTUIKeyboardAnimationInfoClass_block_invoke(v44);
    v10 = v46[3];
  }

  v11 = v10;
  _Block_object_dispose(&v45, 8);
  defaultInfo = [v10 defaultInfo];
  [defaultInfo setShouldAnimate:{objc_msgSend(updateCopy, "animated")}];
  nextAnimationStyle = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  [nextAnimationStyle duration];
  [defaultInfo setDuration:?];

  nextAnimationStyle2 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  [defaultInfo setOptions:{objc_msgSend(nextAnimationStyle2, "extraOptions")}];

  [defaultInfo setIsLocalKeyboard:0];
  [updateCopy keyboardPosition];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if ([(UIKeyboardSceneDelegate *)self requiresRemoteIAVInfo])
  {
    [updateCopy keyboardPositionWithRemoteIAV];
    if (v23 > v22)
    {
      [updateCopy keyboardPositionWithRemoteIAV];
      v16 = v24;
      v18 = v25;
      v20 = v26;
      v22 = v27;
    }
  }

  if ([updateCopy hasValidNotification])
  {
    notificationInfo = [updateCopy notificationInfo];
    if (!notificationInfo)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  existingContainerRootController = [(UIKeyboardSceneDelegate *)self existingContainerRootController];
  notificationInfo = [existingContainerRootController remoteNotificationInfo];

  if (notificationInfo)
  {
LABEL_18:
    [notificationInfo populateEndInfoWithFrame:{v16, v18, v20, v22}];
    userInfo = [notificationInfo userInfo];
    [defaultInfo setNotificationInfo:userInfo];
  }

LABEL_19:
  keyboardTrackingProvider = [(UIKeyboardSceneDelegate *)self keyboardTrackingProvider];
  keyboardScene = [keyboardTrackingProvider keyboardScene];

  if (keyboardScene)
  {
    keyboardScene2 = [keyboardTrackingProvider keyboardScene];
    _coordinateSpace = [keyboardScene2 _coordinateSpace];
    keyboardScreen = [(UIKeyboardSceneDelegate *)self keyboardScreen];
    coordinateSpace = [keyboardScreen coordinateSpace];
    [_coordinateSpace convertRect:coordinateSpace fromCoordinateSpace:{v16, v18, v20, v22}];
    v16 = v37;
    v18 = v38;
    v20 = v39;
    v22 = v40;
  }

  animationFence = [updateCopy animationFence];

  if (animationFence)
  {
    scene = [(UIKeyboardSceneDelegate *)self scene];
    animationFence2 = [updateCopy animationFence];
    [scene _synchronizeDrawingWithFence:animationFence2];

    [updateCopy resetAnimationFencing];
  }

  [keyboardTrackingProvider keyboardWillChangeState:v8 endFrame:defaultInfo animationInfo:{v16, v18, v20, v22}];
  [(UIKeyboardSceneDelegate *)self keyboardUIDidChange];

LABEL_24:
}

- (void)addWindowForTracking:(id)tracking
{
  v11 = *MEMORY[0x1E69E9840];
  trackingCopy = tracking;
  if (!self->_trackingElementCoordinator)
  {
    v5 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = trackingCopy;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "KeyboardTrackingCoordinator:  Attempting to add window before tracking coordinator is ready, will add later: <%@:%p>", &v7, 0x16u);
    }
  }

  trackingElementCoordinator = [(UIKeyboardSceneDelegate *)self trackingElementCoordinator];
  [trackingElementCoordinator addTrackingWindow:trackingCopy];
}

- (void)removeWindowFromTracking:(id)tracking
{
  trackingCopy = tracking;
  trackingElementCoordinator = [(UIKeyboardSceneDelegate *)self trackingElementCoordinator];
  [trackingElementCoordinator removeTrackingWindow:trackingCopy];
}

- (id)systemInputAssistantViewControllerForResponder:(id)responder
{
  responderCopy = responder;
  v5 = responderCopy;
  if (!self->_systemInputAssistantViewController)
  {
    _keyboardResponder = [responderCopy _keyboardResponder];
    if ([_keyboardResponder conformsToProtocol:&unk_1EFE8B2D0])
    {

LABEL_5:
      v9 = objc_alloc_init(UISystemInputAssistantViewController);
      systemInputAssistantViewController = self->_systemInputAssistantViewController;
      self->_systemInputAssistantViewController = v9;

      view = [(UIViewController *)self->_systemInputAssistantViewController view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      goto LABEL_6;
    }

    _keyboardResponder2 = [v5 _keyboardResponder];
    v8 = [_keyboardResponder2 conformsToProtocol:&unk_1F016C7B0];

    if (v8)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v12 = self->_systemInputAssistantViewController;
  v13 = v12;

  return v12;
}

- (void)updateLightEffectsBackdropAnimated:(BOOL)animated
{
  animatedCopy = animated;
  keyboardWindow = [(UIKeyboardSceneDelegate *)self keyboardWindow];
  rootViewController = [keyboardWindow rootViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hosting = [rootViewController hosting];
    [hosting updateCombinedBackdropViewAnimated:animatedCopy forKeyboardUp:{-[UIKeyboardSceneDelegate showingKeyboard](self, "showingKeyboard")}];
  }

  else
  {
    hosting = [(UIKeyboardSceneDelegate *)self containerRootController];
    v6Hosting = [hosting hosting];
    [v6Hosting updateCombinedBackdropViewAnimated:animatedCopy forKeyboardUp:{-[UIKeyboardSceneDelegate showingKeyboard](self, "showingKeyboard")}];
  }
}

- (BOOL)hasActiveKeyboardResponder
{
  v3 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v3 inputDelegate];

  if (inputDelegate)
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];
    v6 = inputDelegate == responder;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasNullInputView
{
  inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  transientInputViews = [(UIKeyboardSceneDelegate *)self transientInputViews];
  v5 = transientInputViews;
  if (!transientInputViews)
  {
    transientInputViews = inputViews;
  }

  isNullInputView = [transientInputViews isNullInputView];

  return isNullInputView;
}

- (CGRect)frameForLayoutGuideInView:(id)view
{
  viewCopy = view;
  containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  [containerRootController visibleFrame];
  x = v6;
  y = v8;
  width = v10;
  height = v12;

  if (viewCopy)
  {
    containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
    _window = [containerRootController2 _window];
    screen = [_window screen];
    coordinateSpace = [screen coordinateSpace];
    coordinateSpace2 = [viewCopy coordinateSpace];
    [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{x, y, width, height}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [viewCopy frame];
    v41.origin.x = v27;
    v41.origin.y = v28;
    v41.size.width = v29;
    v41.size.height = v30;
    v38.origin.x = v20;
    v38.origin.y = v22;
    v38.size.width = v24;
    v38.size.height = v26;
    v39 = CGRectIntersection(v38, v41);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    if (CGRectIsEmpty(v39))
    {
      [viewCopy bounds];
      width = v31;
      window = [viewCopy window];
      [window insetForDismissedKeyboardGuide];
      height = v33;

      y = 0.0;
      x = 0.0;
    }
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)visibleFrameInView:(id)view
{
  viewCopy = view;
  containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([containerRootController isUndocked])
  {

LABEL_4:
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_5;
  }

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  activeKeyboardSceneDelegate = [objc_opt_class() activeKeyboardSceneDelegate];
  v8 = [v6 remoteKeyboardUndocked:activeKeyboardSceneDelegate != self];

  if (v8)
  {
    goto LABEL_4;
  }

  containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [containerRootController2 visibleFrame];
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;

  window = [viewCopy window];

  if (window)
  {
    containerRootController3 = [(UIKeyboardSceneDelegate *)self containerRootController];
    _window = [containerRootController3 _window];
    screen = [_window screen];
    coordinateSpace = [screen coordinateSpace];
    window2 = [viewCopy window];
    windowScene = [window2 windowScene];
    _coordinateSpace = [windowScene _coordinateSpace];
    [coordinateSpace convertRect:_coordinateSpace toCoordinateSpace:{v9, v10, v11, v12}];
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
  }

LABEL_5:

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)visibleInputViewFrameInView:(id)view
{
  viewCopy = view;
  containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([containerRootController isUndocked])
  {

LABEL_4:
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_5;
  }

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  activeKeyboardSceneDelegate = [objc_opt_class() activeKeyboardSceneDelegate];
  v8 = [v6 remoteKeyboardUndocked:activeKeyboardSceneDelegate != self];

  if (v8)
  {
    goto LABEL_4;
  }

  containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [containerRootController2 visibleInputViewFrame];
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;

  window = [viewCopy window];

  if (window)
  {
    containerRootController3 = [(UIKeyboardSceneDelegate *)self containerRootController];
    _window = [containerRootController3 _window];
    screen = [_window screen];
    coordinateSpace = [screen coordinateSpace];
    window2 = [viewCopy window];
    windowScene = [window2 windowScene];
    _coordinateSpace = [windowScene _coordinateSpace];
    [coordinateSpace convertRect:_coordinateSpace toCoordinateSpace:{v9, v10, v11, v12}];
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
  }

LABEL_5:

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)verticalOverlapForView:(id)view usingKeyboardInfo:(id)info
{
  viewCopy = view;
  infoCopy = info;
  v8 = 0.0;
  if (UIKeyboardAutomaticIsOnScreen())
  {
    containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
    placement = [containerRootController placement];

    containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
    if ([containerRootController2 isUndocked])
    {
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    if ([inputViews _inputViewIsSplit])
    {
LABEL_13:

      goto LABEL_14;
    }

    inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
    inputView = [inputViews2 inputView];
    if (inputView && ![placement isFloating])
    {
      v17 = 0;
    }

    else
    {
      inputViews3 = [(UIKeyboardSceneDelegate *)self inputViews];
      inputAccessoryView = [inputViews3 inputAccessoryView];
      v17 = 1;
      if (!inputAccessoryView)
      {
        v23 = 0;
        goto LABEL_21;
      }

      v96 = inputAccessoryView;
      v97 = inputViews3;
    }

    _window = [viewCopy _window];
    if (_window)
    {
      v19 = _window;
      v98 = inputView;
      v99 = placement;
      inputViews4 = [(UIKeyboardSceneDelegate *)self inputViews];
      inputView2 = [inputViews4 inputView];
      if (([viewCopy isDescendantOfView:inputView2] & 1) == 0)
      {
        inputViews5 = [(UIKeyboardSceneDelegate *)self inputViews];
        [inputViews5 inputAccessoryView];
        v24 = v95 = inputViews2;
        v94 = v17;
        LOBYTE(v17) = [viewCopy isDescendantOfView:v24];

        inputViews2 = v95;
        inputView = v98;
        placement = v99;
        v23 = v96;
        inputViews3 = v97;
        if ((v94 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      inputView = v98;
      placement = v99;
      if ((v17 & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else if (!v17)
    {
      goto LABEL_12;
    }

    LOBYTE(v17) = 1;
    v23 = v96;
    inputViews3 = v97;
LABEL_21:

LABEL_22:
    if (v17)
    {
      goto LABEL_15;
    }

    if (infoCopy)
    {
      scene6 = [infoCopy objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
      [scene6 CGRectValue];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      scene = [(UIKeyboardSceneDelegate *)self scene];
      _coordinateSpace = [scene _coordinateSpace];
      scene2 = [(UIKeyboardSceneDelegate *)self scene];
      screen = [scene2 screen];
      coordinateSpace = [screen coordinateSpace];
      [_coordinateSpace convertRect:coordinateSpace fromCoordinateSpace:{v27, v29, v31, v33}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      scene3 = [(UIKeyboardSceneDelegate *)self scene];
      _coordinateSpace2 = [scene3 _coordinateSpace];
      [_coordinateSpace2 convertRect:viewCopy toCoordinateSpace:{v40, v42, v44, v46}];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

LABEL_32:
      v103.origin.x = v50;
      v103.origin.y = v52;
      v103.size.width = v54;
      v103.size.height = v56;
      if (!CGRectIsEmpty(v103))
      {
        [viewCopy bounds];
        MaxY = CGRectGetMaxY(v104);
        v105.origin.x = v50;
        v105.origin.y = v52;
        v105.size.width = v54;
        v105.size.height = v56;
        v8 = fmax(MaxY - CGRectGetMinY(v105), 0.0);
      }

      goto LABEL_15;
    }

    v57 = +[UIKeyboard usesInputSystemUI];
    if (v57 && ([viewCopy window], containerRootController2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(containerRootController2, "_isTextEffectsWindow")))
    {
      containerRootController3 = [(UIKeyboardSceneDelegate *)self containerRootController];
      [containerRootController3 visibleInputViewFrame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
    }

    else
    {
      containerRootController4 = [(UIKeyboardSceneDelegate *)self containerRootController];
      window = [viewCopy window];
      [containerRootController4 _visibleFrameInRemoteKeyboardWindow:{objc_msgSend(window, "_isRemoteKeyboardWindow")}];
      v60 = v69;
      v62 = v70;
      v64 = v71;
      v66 = v72;

      if (!v57)
      {
LABEL_30:
        v102.origin.x = v60;
        v102.origin.y = v62;
        v102.size.width = v64;
        v102.size.height = v66;
        if (CGRectGetMinY(v102) == 0.0)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v92 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
            {
              *v101 = 0;
              _os_log_fault_impl(&dword_188A29000, v92, OS_LOG_TYPE_FAULT, "Keyboard frame should not be on top of the screen", v101, 2u);
            }
          }

          else
          {
            v91 = *(__UILogGetCategoryCachedImpl("Assert", &verticalOverlapForView_usingKeyboardInfo____s_category) + 8);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v91, OS_LOG_TYPE_ERROR, "Keyboard frame should not be on top of the screen", buf, 2u);
            }
          }

          goto LABEL_15;
        }

        scene4 = [(UIKeyboardSceneDelegate *)self scene];
        _coordinateSpace3 = [scene4 _coordinateSpace];
        scene5 = [(UIKeyboardSceneDelegate *)self scene];
        screen2 = [scene5 screen];
        coordinateSpace2 = [screen2 coordinateSpace];
        [_coordinateSpace3 convertRect:coordinateSpace2 fromCoordinateSpace:{v60, v62, v64, v66}];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;

        scene6 = [(UIKeyboardSceneDelegate *)self scene];
        scene3 = [scene6 _coordinateSpace];
        [scene3 convertRect:viewCopy toCoordinateSpace:{v79, v81, v83, v85}];
        v50 = v86;
        v52 = v87;
        v54 = v88;
        v56 = v89;
        goto LABEL_32;
      }
    }

    goto LABEL_30;
  }

LABEL_16:

  return v8;
}

- (BOOL)hasDictationKeyboard
{
  v2 = +[UIKeyboardImpl activeInstance];
  _layout = [v2 _layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setWindowLevel:(double)level sceneLevel:(double)sceneLevel forResponder:(id)responder
{
  responderCopy = responder;
  if (+[UIKeyboard inputUIOOP])
  {
    if (!+[UIKeyboard usesInputSystemUI])
    {
      goto LABEL_6;
    }

    keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    [(_UIKeyboardArbiterClientInputDestination *)keyboardArbiterClient performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:?];
    [keyboardArbiterClient updateWindowState];
  }

  else
  {
    keyboardArbiterClient = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [keyboardArbiterClient setWindowLevel:responderCopy sceneLevel:level + 2.0 forResponder:sceneLevel + 2.0];
  }

LABEL_6:
}

- (void)updateRemoteKeyboardChanged:(id)changed
{
  v18 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_visibilityObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteKeyboardChanged:changedCopy];
        }

        else if (objc_opt_respondsToSelector())
        {
          keyboardOnScreen = [changedCopy keyboardOnScreen];
          sourceBundleIdentifier = [changedCopy sourceBundleIdentifier];
          [v10 remoteKeyboardVisibilityDidChange:keyboardOnScreen bundleId:sourceBundleIdentifier];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)updateLocalKeyboardChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_visibilityObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 localKeyboardChanged:{changedCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareForAlongsideTransitionWithContext:(id)context
{
  contextCopy = context;
  existingContainerWindow = [(UIKeyboardSceneDelegate *)self existingContainerWindow];
  if (existingContainerWindow)
  {
    [contextCopy animateAlongsideTransitionInView:existingContainerWindow animation:&__block_literal_global_532 completion:&__block_literal_global_532];
  }

  if (+[_UIRemoteKeyboards enabled])
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];
    v6 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:responder];

    if (v6)
    {
      v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      if ([v7 keyboardActive])
      {
        keyboardWindow = [v7 keyboardWindow];
        [contextCopy animateAlongsideTransitionInView:keyboardWindow animation:&__block_literal_global_532 completion:&__block_literal_global_532];
      }
    }
  }
}

- (void)setNextAutomaticOrderInDirection:(int)direction duration:(double)duration
{
  self->_hasCustomAnimationProperties = 1;
  self->_nextAutomaticOrderInDirection = direction;
  self->_nextAutomaticOrderInDuration = duration;
}

- (void)pushAnimationStyle:(id)style
{
  if (style)
  {
    [(NSMutableArray *)self->_animationStyleStack addObject:?];
  }
}

- (void)popOrRemoveAnimationStyle:(id)style
{
  styleCopy = style;
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    [(NSMutableArray *)self->_animationStyleStack removeObject:styleCopy];
  }
}

- (void)clearAnimationStyleForUserDrivenPresentation
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_animationStyleStack indexesOfObjectsPassingTest:&__block_literal_global_536];
  if (-[NSMutableArray count](self->_animationStyleStack, "count") && ![v3 count])
  {
    v4 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NSMutableArray *)self->_animationStyleStack description];
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Animation styles expected to be empty on user driven presentation. Actually contains: %@", &v9, 0xCu);
    }
  }

  v5 = [(NSMutableArray *)self->_animationStyleStack objectsAtIndexes:v3];
  v6 = [v5 mutableCopy];
  animationStyleStack = self->_animationStyleStack;
  self->_animationStyleStack = v6;
}

- (id)nextAnimationStyle:(BOOL)style
{
  styleCopy = style;
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    lastObject = [(NSMutableArray *)self->_animationStyleStack lastObject];
  }

  else if (self->_hasCustomAnimationProperties)
  {
    lastObject = [UIInputViewAnimationStyleDirectional animationStyleAnimated:1 duration:self->_nextAutomaticOrderInDirection outDirection:self->_nextAutomaticOrderInDuration];
  }

  else
  {
    if (styleCopy)
    {
      +[UIInputViewAnimationStyle animationStyleDefault];
    }

    else
    {
      +[UIInputViewAnimationStyle animationStyleImmediate];
    }
    lastObject = ;
  }

  return lastObject;
}

- (void)createAutomaticKeyboardIfNeeded
{
  v3 = +[UIKeyboardAutomatic activeInstance];

  if (v3)
  {
    if ([(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
    {
      v4 = +[UIKeyboardAutomatic activeInstance];
      _keyboardOrientation = [v4 _keyboardOrientation];

      v6 = +[UIKeyboardAutomatic activeInstance];
      interfaceOrientation = [v6 interfaceOrientation];

      if (interfaceOrientation != _keyboardOrientation)
      {
        v9 = +[UIKeyboardAutomatic activeInstance];
        [v9 setOrientation:_keyboardOrientation];
      }
    }
  }

  else
  {
    v8 = +[UIKeyboardAutomatic sharedInstance];
  }
}

- (void)window:(id)window changedFromLevel:(double)level toLevel:(double)toLevel
{
  windowCopy = window;
  responder = [(UIKeyboardSceneDelegate *)self responder];
  _responderWindow = [responder _responderWindow];

  if (_responderWindow == windowCopy)
  {

    [(UIKeyboardSceneDelegate *)self _updateContainerWindowLevel];
  }
}

- (void)_updateContainerWindowLevel
{
  inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  responder = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:inputViews responder:responder];
}

- (void)setTextEffectsWindowLevelForInputView:(id)view responder:(id)responder
{
  v71 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  responderCopy = responder;
  if (([viewCopy hasNonPlaceholderViews] & 1) != 0 || +[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && !objc_msgSend(viewCopy, "isEmpty") || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", responderCopy), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "hasWindowHostingCallerID:", v9), v9, v8, v10))
  {
    if (+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || ([viewCopy hasNonPlaceholderViews] & 1) != 0)
    {
      goto LABEL_13;
    }

    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    if ([v11 hasAnyHostedViews])
    {
      v12 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      if ([v12 handlingRemoteEvent])
      {
        v13 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
        handlingViewServiceEvent = [v13 handlingViewServiceEvent];

        if ((handlingViewServiceEvent & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_13:
        _responderWindow = [responderCopy _responderWindow];
        containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
        _isHostedInAnotherProcess = [containerWindow _isHostedInAnotherProcess];

        if (_isHostedInAnotherProcess)
        {
LABEL_31:

          goto LABEL_32;
        }

        if (!_responderWindow || ([(UIKeyboardSceneDelegate *)self containerWindow], v18 = objc_claimAutoreleasedReturnValue(), v18, _responderWindow == v18))
        {
          inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
          inputAccessoryView = [inputViews inputAccessoryView];
          _responderWindow2 = [inputAccessoryView _responderWindow];
          containerWindow2 = [(UIKeyboardSceneDelegate *)self containerWindow];

          if (_responderWindow2 == containerWindow2)
          {
            containerWindow3 = [(UIKeyboardSceneDelegate *)self containerWindow];
            [containerWindow3 _restoreWindowLevel];
          }

          goto LABEL_31;
        }

        [_responderWindow level];
        v20 = v19;
        _FBSScene = [_responderWindow[103] _FBSScene];
        settings = [_FBSScene settings];
        [settings level];
        v24 = v23;

        objc_opt_class();
        v25 = [(UIKeyboardSceneDelegate *)self containerWindowForViewService:objc_opt_isKindOfClass() & 1];
        [v25 _setWindowLevel:v20 + 1.0];

        [_responderWindow _addWindowLevelChangedObserver:self];
        windowScene = [_responderWindow windowScene];
        _isKeyWindowScene = [windowScene _isKeyWindowScene];

        windowScene2 = [_responderWindow windowScene];
        if ([windowScene2 _isKeyWindowScene])
        {

          goto LABEL_22;
        }

        WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);

        if (_responderWindow == WeakRetained)
        {
          _isKeyWindowScene = 1;
          if (!+[UIKeyboard inputUIOOP])
          {
            keyboardArbiterClient = +[_UIRemoteKeyboards sharedRemoteKeyboards];
            [(_UIRemoteKeyboards *)keyboardArbiterClient performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:?];
            goto LABEL_28;
          }

          if (+[UIKeyboard usesInputSystemUI])
          {
            keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
            [(_UIKeyboardArbiterClientInputDestination *)keyboardArbiterClient performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:?];
LABEL_28:

            goto LABEL_29;
          }
        }

LABEL_22:
        if ((_isKeyWindowScene & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &setTextEffectsWindowLevelForInputView_responder____s_category);
        if (*CategoryCachedImpl)
        {
          v37 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            log = v37;
            v46 = objc_opt_class();
            v52 = v46;
            v50 = +[UIWindow _applicationKeyWindow];
            v45 = objc_opt_class();
            v51 = v45;
            v38 = +[UIWindow _applicationKeyWindow];
            v47 = objc_loadWeakRetained(&self->_keyWindowCandidate);
            v39 = objc_opt_class();
            v48 = v39;
            v40 = objc_loadWeakRetained(&self->_keyWindowCandidate);
            _scene = [(UIKeyboardSceneDelegate *)self _scene];
            _scene2 = [(UIKeyboardSceneDelegate *)self _scene];
            _FBSScene2 = [_scene2 _FBSScene];
            identityToken = [_FBSScene2 identityToken];
            *buf = 136317186;
            v54 = "[UIKeyboardSceneDelegate setTextEffectsWindowLevelForInputView:responder:]";
            v55 = 2112;
            v56 = v46;
            v57 = 2048;
            v58 = _responderWindow;
            v59 = 2112;
            v60 = v45;
            v61 = 2048;
            v62 = v38;
            v63 = 2112;
            v64 = v39;
            v65 = 2048;
            v66 = v40;
            v67 = 2048;
            v68 = _scene;
            v69 = 2112;
            v70 = identityToken;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%s: Updating required scene for responderWindow: <%@: %p>; keyWindow: <%@: %p>; keyWindowCandidate: <%@: %p>; windowScene: %p; scene identity: %@", buf, 0x5Cu);
          }
        }

        [(UIKeyboardSceneDelegate *)self setWindowLevel:responderCopy sceneLevel:v20 + 2.0 forResponder:v24 + 2.0];
        goto LABEL_31;
      }
    }

    goto LABEL_13;
  }

LABEL_32:
}

- (id)_renderConfigForResponder:(id)responder traitCollection:(id)collection
{
  responderCopy = responder;
  collectionCopy = collection;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = [responderCopy keyboardAppearance]) == 0)
  {
    v8 = [(UIKeyboardSceneDelegate *)self _preferredAppearanceForResponder:responderCopy];
  }

  if ([responderCopy _isDisplayingWritingToolsSessionInUCB] && (objc_msgSend(responderCopy, "_wantsMagicBackgroundInUCB") & 1) != 0)
  {
    v8 = 13;
  }

  else if (!v8)
  {
    if (collectionCopy)
    {
      userInterfaceStyle = [collectionCopy userInterfaceStyle];
    }

    else
    {
      _responderWindow = [responderCopy _responderWindow];
      rootViewController = [_responderWindow rootViewController];
      traitCollection = [rootViewController traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (([responderCopy _isView] & 1) != 0 || objc_msgSend(responderCopy, "_isViewController"))
      {
        _window = [responderCopy _window];
        _isTextEffectsWindow = [_window _isTextEffectsWindow];

        if ((_isTextEffectsWindow & 1) == 0)
        {
          traitCollection2 = [responderCopy traitCollection];
          if ([traitCollection2 userInterfaceStyle])
          {
            userInterfaceStyle = [traitCollection2 userInterfaceStyle];
          }
        }
      }
    }

    if (userInterfaceStyle == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (userInterfaceStyle == 1);
    }
  }

  v10 = responderCopy;
  responder = [(UIKeyboardSceneDelegate *)self responder];
  if (responder == v10)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v13 inputDelegateManager];
    forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];

    forwardingInputDelegate2 = v10;
    if (!forwardingInputDelegate)
    {
      goto LABEL_18;
    }

    responder = +[UIKeyboardImpl activeInstance];
    inputDelegateManager2 = [responder inputDelegateManager];
    forwardingInputDelegate2 = [inputDelegateManager2 forwardingInputDelegate];
  }

  else
  {
    forwardingInputDelegate2 = v10;
  }

LABEL_18:
  v17 = (objc_opt_respondsToSelector() & 1) == 0 || [forwardingInputDelegate2 keyboardType] != 122;
  if (TIGetEmojiSearchAlternateBackgroundValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetEmojiSearchAlternateBackgroundValue_onceToken, &__block_literal_global_1165);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v19 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"EmojiSearchAlternateBackground"];

  LOBYTE(mEMORY[0x1E69D9680]) = [v19 BOOLValue];
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) != 0 || (mEMORY[0x1E69D9680] & 1) == 0 || v17)
  {
    v20 = [UITextInputTraits traitEnvironmentFromTraits:v10];
    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v21 currentInputMode];
    v23 = [UIKBRenderConfig configForAppearance:v8 inputMode:currentInputMode traitEnvironment:v20];
  }

  else
  {
    v23 = +[UIKBRenderConfig defaultEmojiConfig];
  }

  return v23;
}

- (int64_t)_preferredAppearanceForResponder:(id)responder
{
  responderCopy = responder;
  v4 = responderCopy;
  if (!responderCopy)
  {
    v5 = 0;
    nextResponder = 0;
    goto LABEL_18;
  }

  v5 = responderCopy;
  while ([v5 _isViewController])
  {
    overrideUserInterfaceStyle = [v5 overrideUserInterfaceStyle];
    if (overrideUserInterfaceStyle)
    {
      overrideUserInterfaceStyle2 = overrideUserInterfaceStyle;
      view = [v5 view];
      v9 = [view _containsResponder:v4];

      if (v9)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    nextResponder = [v5 nextResponder];

    v5 = nextResponder;
    if (!nextResponder)
    {
      goto LABEL_18;
    }
  }

  if (![v5 _isView])
  {
    goto LABEL_11;
  }

  overrideUserInterfaceStyle2 = [v5 overrideUserInterfaceStyle];
  _localOverrideTraitCollection = [v5 _localOverrideTraitCollection];
  if (!overrideUserInterfaceStyle2 || ([v5 _containsResponder:v4] & 1) == 0)
  {

    goto LABEL_11;
  }

LABEL_15:
  if (overrideUserInterfaceStyle2 == 2)
  {
    nextResponder = 1;
  }

  else
  {
    nextResponder = 2 * (overrideUserInterfaceStyle2 == 1);
  }

LABEL_18:

  return nextResponder;
}

- (void)traitCollectionDidChange
{
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 traitCollectionDidChange];
}

- (void)updateRenderConfigForTraitCollection:(id)collection
{
  collectionCopy = collection;
  responder = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForResponder:responder traitCollection:collectionCopy];
}

- (void)updateRenderConfigForResponder:(id)responder traitCollection:(id)collection
{
  responderCopy = responder;
  collectionCopy = collection;
  if (([responderCopy _requiresKeyboardWhenFirstResponder] & 1) != 0 || objc_msgSend(responderCopy, "_ownsInputAccessoryView"))
  {
    v8 = [(UIKeyboardSceneDelegate *)self _renderConfigForResponder:responderCopy traitCollection:collectionCopy];
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__UIKeyboardSceneDelegate_updateRenderConfigForResponder_traitCollection___block_invoke;
    aBlock[3] = &unk_1E7108298;
    v10 = array;
    v19 = v10;
    selfCopy = self;
    v11 = v8;
    v21 = v11;
    v12 = _Block_copy(aBlock);
    if ([v11 lightKeyboard])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
    [containerWindow setOverrideUserInterfaceStyle:v13];

    if (+[_UIRemoteKeyboards enabled]&& ([(UIKeyboardSceneDelegate *)self responder], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v15], v15, v16))
    {
      containerRootController = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [containerRootController performOnControllers:v12];
    }

    else
    {
      containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
      v12[2](v12, containerRootController);
    }
  }
}

void __74__UIKeyboardSceneDelegate_updateRenderConfigForResponder_traitCollection___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v15 owner];

    v4 = v3;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v15;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v4)
  {
    v16 = v4;
    if ([*(a1 + 32) containsObject:?])
    {
LABEL_12:
      v4 = v16;
      goto LABEL_13;
    }

    v6 = [*(a1 + 40) scene];
    v7 = [v6 screen];
    v8 = [v7 _userInterfaceIdiom];

    if (v8 == 3)
    {
      v9 = +[UIKeyboard activeKeyboard];
      v10 = [v9 window];
      v11 = [v10 windowScene];
      v12 = [*(a1 + 40) scene];

      if (v11 != v12)
      {
LABEL_11:
        [*(a1 + 32) addObject:v16];
        goto LABEL_12;
      }

      v13 = +[UIKeyboard activeKeyboard];
    }

    else
    {
      v13 = [v16 view];
    }

    v14 = v13;
    [v13 _setRenderConfig:*(a1 + 48)];

    goto LABEL_11;
  }

LABEL_13:
}

- (void)disableInterfaceAutorotation:(BOOL)autorotation
{
  if (autorotation)
  {
    if (self->_interfaceAutorotationDisabled)
    {
      return;
    }

    v4 = 1;
    v5 = &selRef_beginDisablingInterfaceAutorotation;
  }

  else
  {
    if (!self->_interfaceAutorotationDisabled)
    {
      return;
    }

    v4 = 0;
    v5 = &selRef_endDisablingInterfaceAutorotation;
  }

  windows = [UIApp windows];
  [windows makeObjectsPerformSelector:*v5];

  self->_interfaceAutorotationDisabled = v4;
}

- (id)passthroughViews
{
  v8[1] = *MEMORY[0x1E69E9840];
  inputViewController = [(UIInputViewSet *)self->_inputViewSet inputViewController];
  view = [inputViewController view];
  if (view)
  {
    inputView = view;

LABEL_4:
    v8[0] = inputView;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

    goto LABEL_5;
  }

  inputView = [(UIInputViewSet *)self->_inputViewSet inputView];

  if (inputView)
  {
    goto LABEL_4;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_5:

  return v6;
}

- (void)keyboardUIDidChange
{
  reloadInputViewsForcedIsAllowed = self->_reloadInputViewsForcedIsAllowed;
  self->_reloadInputViewsForcedIsAllowed = 0;
  v4 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v4 inputDelegate];

  _responderWindow = [inputDelegate _responderWindow];
  screen = [_responderWindow screen];
  _userInterfaceIdiom = [screen _userInterfaceIdiom];

  v8 = +[UIDictationController activeInstance];
  LOBYTE(screen) = [v8 resigningFirstResponder];

  if ((screen & 1) == 0 && _userInterfaceIdiom != 3)
  {
    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v9 currentInputMode];
    identifier = [currentInputMode identifier];
    if ([identifier isEqualToString:@"autofillsignup"])
    {
      shouldShowDockView = [(UIRemoteInputViewHost *)self->_remoteInputViewHost shouldShowDockView];

      if (shouldShowDockView)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [(UIKeyboardSceneDelegate *)self forceReloadInputViews];
  }

LABEL_8:
  self->_reloadInputViewsForcedIsAllowed = reloadInputViewsForcedIsAllowed;
}

- (BOOL)isWaitingForInputUI:(id)i
{
  iCopy = i;
  if (iCopy && (waitingForInputUI = self->_waitingForInputUI) != 0)
  {
    v6 = [(NSUUID *)waitingForInputUI isEqual:iCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addPostWaitingForInputUIBlock:(id)block
{
  postWaitingForInputUIBlocks = self->_postWaitingForInputUIBlocks;
  v4 = _Block_copy(block);
  [(NSMutableArray *)postWaitingForInputUIBlocks addObject:v4];
}

- (void)windowDidBecomeKey:(id)key
{
  object = [key object];
  windowScene = [object windowScene];
  WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);
  if (WeakRetained || ([(UIKeyboardSceneDelegate *)self scene], WeakRetained = objc_claimAutoreleasedReturnValue(), windowScene != WeakRetained))
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  _isConnecting = [windowScene _isConnecting];

  if ((_isConnecting & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = 1;
LABEL_5:
  self->_isEligibleToRequestKeyboardFocusWithoutUserInteraction = v6;
  [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant configureEventDeferralPolicyObserver];
}

- (void)firstResponderDidChange:(id)change
{
  changeCopy = change;
  obj = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v6 = [userInfo objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  if (self->_isEligibleToRequestKeyboardFocusWithoutUserInteraction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);
    if (WeakRetained)
    {
    }

    else
    {
      windowScene = [obj windowScene];
      scene = [(UIKeyboardSceneDelegate *)self scene];
      if (windowScene == scene && ([obj isKeyWindow] & 1) != 0)
      {
        _requiresKeyboardWhenFirstResponder = [v6 _requiresKeyboardWhenFirstResponder];

        if (_requiresKeyboardWhenFirstResponder)
        {
          objc_storeWeak(&self->_keyWindowCandidate, obj);
        }
      }

      else
      {
      }
    }
  }

  self->_isEligibleToRequestKeyboardFocusWithoutUserInteraction = 0;
}

- (void)_reloadInputViewsForResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder
{
  firstResponderCopy = firstResponder;
  forceCopy = force;
  responderCopy = responder;
  scene = [(UIKeyboardSceneDelegate *)self scene];
  _keyboardClientComponent = [scene _keyboardClientComponent];

  if (([_keyboardClientComponent suppressKeyboardFocusRequests] & 1) == 0)
  {
    [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant prepareForReloadInputViews];
    if ([(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:responderCopy])
    {
      [(UIKeyboardSceneDelegate *)self _reloadInputViewsForKeyWindowSceneResponder:responderCopy force:forceCopy fromBecomeFirstResponder:firstResponderCopy];
    }

    else
    {
      [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant didReloadInputViewsForNonKeyWindowSceneForResponder:responderCopy force:forceCopy fromBecomeFirstResponder:firstResponderCopy];
      [(UIKeyboardSceneDelegate *)self _reloadInputViewsForWindowSceneResponder:responderCopy force:forceCopy];
    }
  }
}

- (id)_responderDescriptionForLogging:(id)logging
{
  loggingCopy = logging;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [loggingCopy _kb_description];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; >", objc_opt_class(), loggingCopy];
  }
  v4 = ;

  return v4;
}

- (id)_simpleViewDescriptionForLogging:(id)logging
{
  loggingCopy = logging;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    view = [loggingCopy view];
    [view frame];
    v8 = NSStringFromCGRect(v17);
    loggingCopy = [v4 stringWithFormat:@"<%@: %p frame = %@>", v6, loggingCopy, v8];;

LABEL_5:
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v6 = v13;
  if (isKindOfClass)
  {
    [loggingCopy frame];
    view = NSStringFromCGRect(v18);
    [loggingCopy alpha];
    loggingCopy = [v11 stringWithFormat:@"<%@: %p frame = %@; alpha = %f; isHidden = %d; tAMIC = %d>", v6, loggingCopy, view, v14, objc_msgSend(loggingCopy, "isHidden"), objc_msgSend(loggingCopy, "translatesAutoresizingMaskIntoConstraints")];;
    goto LABEL_5;
  }

  loggingCopy = [v11 stringWithFormat:@"<%@: %p>", v13, loggingCopy];
LABEL_7:

  return loggingCopy;
}

- (id)remoteHostInputViewSet:(id)set
{
  setCopy = set;
  if (+[UIKeyboard usesInputSystemUI])
  {
    if ([(UIRemoteInputViewHost *)self->_remoteInputViewHost shouldShowDockView])
    {
      inputViewSet = [(UIRemoteInputViewHost *)self->_remoteInputViewHost inputViewSet];
    }

    else
    {
      if (!setCopy)
      {
        transientInputViewSet = self->_transientInputViewSet;
        if (transientInputViewSet)
        {
          inputViews = transientInputViewSet;
        }

        else
        {
          inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
        }

        setCopy = inputViews;
      }

      v8 = +[UIKeyboardAutomatic activeInstance];
      v9 = [UICompatibilityInputViewController deferredInputModeControllerWithKeyboard:v8];

      v10 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v10 currentInputMode];
      [v9 setInputMode:currentInputMode];

      view = [v9 view];
      inputAccessoryView = [(UIInputViewSet *)setCopy inputAccessoryView];
      inputAssistantView = [(UIInputViewSet *)setCopy inputAssistantView];
      inputViewSet = [UIInputViewSet inputSetWithPlaceholderAndCustomInputView:view accessoryView:inputAccessoryView assistantView:inputAssistantView];

      [inputViewSet setInputViewController:v9];
      [inputViewSet setIsCustomInputView:1];
      [(UIRemoteInputViewHost *)self->_remoteInputViewHost setInputViewSet:inputViewSet];
      [(UIRemoteInputViewHost *)self->_remoteInputViewHost setShouldShowDockView:1];
    }

    [(UIRemoteInputViewHost *)self->_remoteInputViewHost updateInputViewsIfNecessary];
  }

  else
  {
    inputViewSet = 0;
  }

  return inputViewSet;
}

- (void)_reloadInputViewsForKeyWindowSceneResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder
{
  firstResponderCopy = firstResponder;
  forceCopy = force;
  v203 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  responderCopy2 = responder;
  v7 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    responderCopy = [(UIKeyboardSceneDelegate *)self _responderDescriptionForLogging:responderCopy2, responderCopy];
    v9 = responderCopy;
    v10 = "N";
    if (forceCopy)
    {
      v10 = "Y";
    }

    *buf = 138412546;
    *v198 = responderCopy;
    *&v198[8] = 2080;
    v199 = v10;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Reloading input views for key-window scene responder: %@ force:%s", buf, 0x16u);
  }

  kdebug_trace();
  v11 = kac_get_log();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "reload", "", buf, 2u);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = 0xEEEEB0B5B2B2EEEELL;
  v183 = _Block_copy(aBlock);
  date = [MEMORY[0x1E695DF00] date];
  transitionStartTime = self->_transitionStartTime;
  self->_transitionStartTime = date;

  v14 = +[UIDictationView activeInstance];
  visible = [v14 visible];

  if (!visible)
  {
LABEL_12:
    self->_blockedReloadInputViewsForDictation = 0;
    [(UIKeyboardSceneDelegate *)self disableInterfaceAutorotation:0, responderCopy];
    if (+[UIKeyboard isKeyboardProcess])
    {
      if (responderCopy2 && !forceCopy)
      {
        +[UIKeyboard clearLastKeyboardApplicationIdentifier];
      }

      containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
      isRotating = [containerRootController isRotating];

      if (isRotating)
      {
        containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
        [containerRootController2 clearRotationState];
      }
    }

    if (!forceCopy)
    {
      if (![(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder])
      {
LABEL_24:
        existingContainerRootController = [(UIKeyboardSceneDelegate *)self existingContainerRootController];
        [existingContainerRootController clearKeyboardSnapshot];

        goto LABEL_25;
      }

      inputView = [(UIResponder *)responderCopy2 inputView];
      if (inputView)
      {

        goto LABEL_24;
      }

      inputViewController = [(UIResponder *)responderCopy2 inputViewController];
      v23 = inputViewController == 0;

      if (!v23)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    responder = [(UIKeyboardSceneDelegate *)self responder];
    if (!(responderCopy2 | responder))
    {
      responder = [(UIInputViewPostPinningReloadState *)self->_postPinningReloadState responderToReload];
      if (!responder)
      {
        if ([(UIKeyboardSceneDelegate *)self isOnScreen]|| [(UIKeyboardSceneDelegate *)self isUndocked])
        {
          responder = 0;
        }

        else
        {
          responder = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          if (([responder keyboardVisible] & 1) == 0)
          {
            inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
            if (([inputViews isInputViewPlaceholder] & 1) == 0)
            {
              inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
              if (([inputViews2 isInputAccessoryViewPlaceholder] & 1) == 0 && !self->_allowNilResponderReload)
              {
                v167 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
                [v167 heightForRemoteIAVPlaceholderIfNecessary];
                v169 = v168 == 0.0;

                if (v169)
                {
                  v183[2]();
                  goto LABEL_268;
                }

LABEL_31:
                _keyboardResponder = [(UIResponder *)responderCopy2 _keyboardResponder];
                v26 = +[UIKeyboardImpl activeInstance];
                delegate = [v26 delegate];

                isOnScreen = [(UIKeyboardSceneDelegate *)self isOnScreen];
                if (![(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder]|| isOnScreen | ![(UIResponder *)responderCopy2 isFirstResponder]|| [(UIKeyboardSceneDelegate *)self isUndocked])
                {
                  v29 = 0;
                }

                else
                {
                  v58 = +[UIKeyboardImpl activeInstance];
                  disableInputBars = [v58 disableInputBars];

                  v29 = disableInputBars ^ 1;
                }

                if ([(UIResponder *)responderCopy2 _requiresKeyboardResetOnReload]&& self->_reloadInputViewsForcedIsAllowed)
                {
                  identifier = v29 && ![(UIKeyboardSceneDelegate *)self isWaitingForInputUI]|| _keyboardResponder != delegate;
                }

                else
                {
                  identifier = 0;
                }

                if (+[UIKeyboard usesInputSystemUI]&& self->_responder == responderCopy2)
                {
                  inputView2 = [(UIResponder *)responderCopy2 inputView];
                  if (inputView2)
                  {
                    v34 = 1;
                  }

                  else
                  {
                    inputViewController2 = [(UIResponder *)responderCopy2 inputViewController];
                    v34 = inputViewController2 != 0;
                  }

                  inputViewSet = [(UIRemoteInputViewHost *)self->_remoteInputViewHost inputViewSet];
                  v31 = v34 != [inputViewSet isCustomInputView];
                }

                else
                {
                  v31 = 0;
                }

                if ((identifier | v31))
                {
                  if (_keyboardResponder == delegate)
                  {
                    v35 = +[UIKeyboardImpl activeInstance];
                    v32 = [v35 _obtainSessionIdentifierAssertionForReason:@"Intentionally reloading the same delegate"];
                  }

                  else
                  {
                    v32 = 0;
                  }

                  v36 = +[UIKeyboardImpl activeInstance];
                  textSuggestions = [v36 textSuggestions];

                  v37 = +[UIKeyboardImpl activeInstance];
                  [v37 setDelegate:0 force:0 delayEndInputSession:firstResponderCopy];
                }

                else
                {
                  textSuggestions = 0;
                  v32 = 0;
                }

                v178 = (!self->_automaticAppearanceEnabled || self->_responderWithoutAutomaticAppearanceEnabled != responderCopy2) && [(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled];
                v38 = _UIKeyboardSceneDelegateLogger();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67110146;
                  *v198 = responderCopy2 != 0;
                  *&v198[4] = 1024;
                  *&v198[6] = forceCopy;
                  LOWORD(v199) = 1024;
                  *(&v199 + 2) = firstResponderCopy;
                  HIWORD(v199) = 1024;
                  v200 = v178;
                  v201 = 2112;
                  *v202 = uUID;
                  _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "_reloadInputViewsForKeyWindowSceneResponder: %d force: %d, fromBecomeFirstResponder: %d (automaticKeyboard: %d, reloadIdentifier: %@)", buf, 0x24u);
                }

                inputViews3 = [(UIKeyboardSceneDelegate *)self inputViews];
                obj = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responderCopy2 withAutomaticKeyboard:v178 force:forceCopy];
                objc_storeStrong(&self->_transientInputViewSet, obj);
                p_responder = &self->_responder;
                responder = self->_responder;
                if (responder)
                {
                  _window = [(UIResponder *)responder _window];

                  responder = _window;
                }

                responderCopy3 = responder;
                screen = [(UIResponder *)responder screen];
                if (responderCopy2)
                {
                  _window2 = [(UIResponder *)responderCopy2 _window];

                  v43 = _window2;
                }

                else
                {
                  v43 = 0;
                }

                v174 = v43;
                screen2 = [v43 screen];
                v44 = [UIKeyboard activeKeyboardForScreen:screen2];
                v45 = v44;
                if (v44)
                {
                  keyboard = v44;
                }

                else
                {
                  keyboard = [obj keyboard];
                }

                if (screen != screen2 && screen && screen2)
                {
                  v46 = [UIKeyboard activeKeyboardForScreen:screen];
                  v47 = v46;
                  if (v46 && keyboard && v46 != keyboard)
                  {
                    [v46 deactivate];
                  }
                }

                if (keyboard && ([keyboard isActive] & 1) != 0)
                {
                  goto LABEL_285;
                }

                if ([(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder])
                {
                  if (firstResponderCopy && !+[UIKeyboard isInputSystemUI])
                  {
                    kdebug_trace();
                    v48 = kac_get_log();
                    v49 = os_signpost_id_make_with_pointer(v48, 0);
                    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      identifier = v49;
                      if (os_signpost_enabled(v48))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_188A29000, v48, OS_SIGNPOST_INTERVAL_BEGIN, identifier, "appBringup", " enableTelemetry=YES ", buf, 2u);
                      }
                    }

                    v50 = keyboardui_system_get_log_STAGING();
                    if (os_signpost_enabled(v50))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_188A29000, v50, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboardUIBringup", "", buf, 2u);
                    }

                    v51 = keyboardPerfLog_Staging();
                    if (os_signpost_enabled(v51))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_188A29000, v51, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.readyForInput", "", buf, 2u);
                    }

                    v52 = _UIKeyboardSceneDelegateLogger();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134217984;
                      *v198 = 0xEEEEB0B5B2B2EEEELL;
                      _os_log_debug_impl(&dword_188A29000, v52, OS_LOG_TYPE_DEBUG, "START app and keyboard bringup signpost (first responder); ID: %llu", buf, 0xCu);
                    }

                    qword_1ED49DC90 = mach_absolute_time();
                  }

                  _MergedGlobals_1087 = firstResponderCopy;
                }

                if (keyboard)
                {
LABEL_285:
                  if (([keyboard isActive] & 1) == 0 && -[UIResponder _requiresKeyboardWhenFirstResponder](responderCopy2, "_requiresKeyboardWhenFirstResponder"))
                  {
                    [keyboard activate];
                  }
                }

                v53 = +[UIKeyboardInputModeController sharedInputModeController];
                [v53 _trackInputModeIfNecessary:responderCopy2];

                v54 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
                LODWORD(v53) = v54 == self;

                if (!v53)
                {
                  [(UIRemoteInputViewHost *)self->_remoteInputViewHost setInputViewSet:0];
                  goto LABEL_103;
                }

                if (forceCopy)
                {
                  v55 = +[UIKeyboardInputModeController sharedInputModeController];
                  currentInputMode = [v55 currentInputMode];
                  identifier = [currentInputMode identifier];
                  if ([identifier isEqualToString:@"autofillsignup"])
                  {
                    shouldShowDockView = [(UIRemoteInputViewHost *)self->_remoteInputViewHost shouldShowDockView];

                    if (shouldShowDockView)
                    {
LABEL_103:
                      v60 = +[UIKeyboard isKeyboardProcess];
                      if (![(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder])
                      {
LABEL_108:
                        v65 = +[UIKeyboardImpl activeInstance];
                        delegate2 = [v65 delegate];
                        v67 = delegate2 != 0;

                        [v65 _shouldClearTextSuggestions:v60 | firstResponderCopy];
                        _keyboardResponder2 = +[UIKeyboardImpl activeInstance];
                        v69 = firstResponderCopy || [(UIKeyboardSceneDelegate *)self pinningPreventsInputViews:obj];
                        [_keyboardResponder2 setDelegate:0 force:0 delayEndInputSession:v69];
LABEL_149:

                        [v32 _invalidate];
                        transientInputViewSet = self->_transientInputViewSet;
                        self->_transientInputViewSet = 0;

                        if ([(UIKeyboardSceneDelegate *)self pinningPreventsInputViews:obj])
                        {
                          v83 = [UIInputViewPostPinningReloadState stateWithResponder:responderCopy2];
                          postPinningReloadState = self->_postPinningReloadState;
                          self->_postPinningReloadState = v83;

                          v181 = +[UIKeyboardImpl activeInstance];
                          v85 = +[UIDictationController activeInstance];
                          shouldStayInDictationInputMode = [v85 shouldStayInDictationInputMode];

                          if (!(shouldStayInDictationInputMode & 1 | ![(UIKeyboardSceneDelegate *)self hasDictationKeyboard]))
                          {
                            v87 = +[UIKeyboardInputModeController sharedInputModeController];
                            currentInputModeInPreference = [v87 currentInputModeInPreference];
                            [(UIResponder *)v181 setKeyboardInputMode:currentInputModeInPreference userInitiated:0];
                          }

                          [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:obj responder:responderCopy2];
                          v183[2]();
                          goto LABEL_267;
                        }

                        if ([screen2 _userInterfaceIdiom] == 3)
                        {
LABEL_166:
                          if (![(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
                          {
                            v95 = [obj containsResponder:responderCopy2];
                            selfHostingTrigger = self->_selfHostingTrigger;
                            if (!v95)
                            {
                              responder2 = 0;
                              goto LABEL_171;
                            }

                            if (!selfHostingTrigger)
                            {
                              responder2 = [(UIKeyboardSceneDelegate *)self responder];
                              selfHostingTrigger = self->_selfHostingTrigger;
LABEL_171:
                              self->_selfHostingTrigger = responder2;
                            }
                          }

                          v98 = *p_responder;
                          if (*p_responder && v98 != responderCopy2)
                          {
                            _responderWindow = [(UIResponder *)v98 _responderWindow];
                            [_responderWindow _removeWindowLevelChangedObserver:self];

                            v98 = self->_responder;
                          }

                          v181 = v98;
                          objc_storeStrong(&self->_responder, v172);
                          v100 = self->_postPinningReloadState;
                          self->_postPinningReloadState = 0;

                          objc_initWeak(&location, self);
                          v101 = +[UIKeyboardImpl activeInstance];
                          v193[0] = MEMORY[0x1E69E9820];
                          v193[1] = 3221225472;
                          v193[2] = __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_589;
                          v193[3] = &unk_1E7108310;
                          objc_copyWeak(&v194, &location);
                          [v101 handleTraitChangeObserver:v181 newResponder:responderCopy2 updateTraitCollection:v193];

                          [(UIKeyboardSceneDelegate *)self _updateTextInputSession];
                          if (!forceCopy && +[UIKeyboard usesInputSystemUI])
                          {
                            isFirstResponder = [(UIResponder *)responderCopy2 isFirstResponder];
                            _requiresKeyboardWhenFirstResponder = [(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder];
                            isCustomInputView = [obj isCustomInputView];
                            v105 = isCustomInputView;
                            if (isFirstResponder)
                            {
                              inputAccessoryView = [obj inputAccessoryView];
                              if (inputAccessoryView && ([obj isInputAccessoryViewPlaceholder] & 1) == 0)
                              {
                                [inputViews3 inputAccessoryView];
                              }

                              v107 = [(UIKeyboardSceneDelegate *)self showingKeyboardForInputViewSet:obj];
                              v108 = v107;
                              v109 = v67 || _requiresKeyboardWhenFirstResponder;
                              if ((((v67 || _requiresKeyboardWhenFirstResponder) | v105) & 1) == 0)
                              {
                                if (v107)
                                {
                                  v110 = self->_sessionID == 0;
                                  v108 = 1;
                                  goto LABEL_195;
                                }

                                goto LABEL_194;
                              }
                            }

                            else
                            {
                              v109 = v67 || _requiresKeyboardWhenFirstResponder;
                              if ((((v67 || _requiresKeyboardWhenFirstResponder) | isCustomInputView) & 1) == 0)
                              {
LABEL_194:
                                v108 = 0;
                                v110 = self->_sessionID != 0;
LABEL_195:
                                keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                v113 = [keyboardArbiterClient shouldIgnoreInputDestinationChange:v108 withIAVHeight:0.0];

                                v114 = isFirstResponder && !v178;
                                if ([(UIKeyboardSceneDelegate *)self isWaitingForInputUI])
                                {
                                  v115 = 1;
                                }

                                else if ((v67 | v110))
                                {
                                  v115 = (v114 | v113) ^ 1;
                                }

                                else
                                {
                                  v115 = 0;
                                }

                                v116 = _UIKeyboardSceneDelegateLogger();
                                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                                {
                                  isWaitingForInputUI = [(UIKeyboardSceneDelegate *)self isWaitingForInputUI];
                                  *buf = 67110400;
                                  *v198 = isWaitingForInputUI;
                                  *&v198[4] = 1024;
                                  *&v198[6] = v67;
                                  LOWORD(v199) = 1024;
                                  *(&v199 + 2) = v110 & 1;
                                  HIWORD(v199) = 1024;
                                  v200 = v114;
                                  v201 = 1024;
                                  *v202 = v113;
                                  *&v202[4] = 1024;
                                  *&v202[6] = v115 & 1;
                                  _os_log_impl(&dword_188A29000, v116, OS_LOG_TYPE_DEFAULT, "shouldUpdateKeyboardArbiter (waitingForInputUI: %d, didSetDelegate: %d, shouldUpdateRTI: %d, showingManualKeyboard: %d, shouldIgnoreInputDestinationChange: %d) -> %d", buf, 0x26u);
                                }

                                if (v110)
                                {
                                  v118 = _UIKeyboardSceneDelegateLogger();
                                  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 0;
                                    _os_log_impl(&dword_188A29000, v118, OS_LOG_TYPE_DEFAULT, "Updating RTI manually", buf, 2u);
                                  }

                                  v119 = +[UIKeyboardImpl activeInstance];
                                  if (!v119)
                                  {
                                    v119 = [UIKeyboardImpl sharedInstanceForCustomInputView:v105];
                                  }

                                  if (v108)
                                  {
                                    [(UIRemoteInputViewHost *)self->_remoteInputViewHost updateInputViewsIfNecessary];
                                    uUID2 = [MEMORY[0x1E696AFB0] UUID];
                                    sessionID = self->_sessionID;
                                    self->_sessionID = uUID2;

                                    remoteTextInputPartner = [v119 remoteTextInputPartner];
                                    [remoteTextInputPartner beginAllowingRemoteTextInput:self->_sessionID];

                                    remoteTextInputPartner2 = [v119 remoteTextInputPartner];
                                    [remoteTextInputPartner2 beginInputSessionWithIdentifier:self->_sessionID];
                                  }

                                  else
                                  {
                                    if (os_variant_has_internal_diagnostics())
                                    {
                                      v170 = _UIKeyboardExtendedLog();
                                      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 0;
                                        _os_log_impl(&dword_188A29000, v170, OS_LOG_TYPE_DEFAULT, "ending session for shouldShow==NO for non-UIKeyInput", buf, 2u);
                                      }
                                    }

                                    remoteTextInputPartnerPrivate = [v119 remoteTextInputPartnerPrivate];
                                    [remoteTextInputPartnerPrivate endInputSessionWithIdentifier:self->_sessionID];

                                    remoteTextInputPartnerPrivate2 = [v119 remoteTextInputPartnerPrivate];
                                    [remoteTextInputPartnerPrivate2 endAllowingRemoteTextInput:self->_sessionID];

                                    remoteTextInputPartner2 = self->_sessionID;
                                    self->_sessionID = 0;
                                  }
                                }

                                if (v115)
                                {
                                  inputAccessoryView2 = [obj inputAccessoryView];
                                  if (inputAccessoryView2 && ([obj isInputAccessoryViewPlaceholder] & 1) == 0)
                                  {
                                    inputAccessoryView3 = [inputViews3 inputAccessoryView];
                                    inputAccessoryView4 = [obj inputAccessoryView];
                                    if (inputAccessoryView3 == inputAccessoryView4)
                                    {
                                      v127 = 1;
                                    }

                                    else
                                    {
                                      inputAccessoryView5 = [obj inputAccessoryView];
                                      if ([inputAccessoryView5 isFirstResponder])
                                      {
                                        v127 = 1;
                                      }

                                      else
                                      {
                                        inputAccessoryView6 = [obj inputAccessoryView];
                                        window = [inputAccessoryView6 window];
                                        v127 = window != 0;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v127 = 1;
                                  }

                                  [(UIKeyboardSceneDelegate *)self setWaitingForInputUI:uUID];
                                  keyboardArbiterClient2 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                  scene = [(UIKeyboardSceneDelegate *)self scene];
                                  v128 = [keyboardArbiterClient2 inputDestinationDidChange:v108 withIAVHeight:0 isIAVRelevant:1 notifyRemote:scene forScene:0.0];

                                  keyboardArbiterClient3 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                  currentUIState = [keyboardArbiterClient3 currentUIState];
                                  if ([currentUIState isLocal])
                                  {
                                    keyboardArbiterClient4 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                    currentUIState2 = [keyboardArbiterClient4 currentUIState];
                                    keyboardOnScreen = [currentUIState2 keyboardOnScreen];
                                  }

                                  else
                                  {
                                    keyboardOnScreen = 0;
                                  }

                                  if (!(keyboardOnScreen & 1 | (([obj isInputViewPlaceholder] & 1) == 0) | v127) && ((v128 ^ 1) & 1) == 0)
                                  {
                                    inputAccessoryView7 = [obj inputAccessoryView];
                                    v146 = [UIInputViewSet inputSetWithInputView:0 accessoryView:inputAccessoryView7 assistantView:0];

                                    obj = v146;
                                  }

                                  [(UIKeyboardSceneDelegate *)self _updateContainerWindowLevel];
                                }

                                else
                                {
                                  LOBYTE(v128) = 0;
                                }

                                identifier = _UIKeyboardSceneDelegateLogger();
                                if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *v198 = obj;
                                  _os_log_impl(&dword_188A29000, identifier, OS_LOG_TYPE_DEFAULT, "Will set input views %@", buf, 0xCu);
                                }

                                if (v128)
                                {
LABEL_239:
                                  if ([(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
                                  {
                                    ++self->_ignoredReloads;
                                    v183[2]();
LABEL_266:
                                    objc_destroyWeak(&v194);
                                    objc_destroyWeak(&location);
LABEL_267:

                                    goto LABEL_268;
                                  }

                                  v191[0] = MEMORY[0x1E69E9820];
                                  v191[1] = 3221225472;
                                  v191[2] = __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_591;
                                  v191[3] = &unk_1E70F35B8;
                                  v191[4] = self;
                                  v147 = obj;
                                  v192 = v147;
                                  v148 = _Block_copy(v191);
                                  if (qword_1ED49DC98 != -1)
                                  {
                                    dispatch_once(&qword_1ED49DC98, &__block_literal_global_593);
                                  }

                                  if (dyld_program_sdk_at_least() && !_UIIsPrivateMainBundle())
                                  {
                                    v150 = 0;
                                  }

                                  else
                                  {
                                    if (qword_1ED49DCB0 != -1)
                                    {
                                      dispatch_once(&qword_1ED49DCB0, &__block_literal_global_1176);
                                    }

                                    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
                                    identifier = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"NewKeyboardNotificationOrder"];

                                    if (![identifier BOOLValue])
                                    {
                                      v151 = 0;
LABEL_252:

LABEL_253:
                                      if ((byte_1ED49DC79 & 1) != 0 || v151)
                                      {
                                        v153 = +[UIKeyboardImpl activeInstance];
                                        inputDelegateManager = [v153 inputDelegateManager];
                                        hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

                                        isEmpty = [v147 isEmpty];
                                        v179 = [(NSMutableArray *)self->_animationStyleStack count];
                                        v156 = UIApp;
                                        scene2 = [(UIKeyboardSceneDelegate *)self scene];
                                        keyWindow = [scene2 keyWindow];
                                        v159 = [v156 _touchesEventForWindow:keyWindow];
                                        allTouches = [v159 allTouches];
                                        v173 = [allTouches count];

                                        v152 = +[UIPeripheralHost sharedInstance];
                                        v161 = [MEMORY[0x1E696B098] valueWithPointer:self];
                                        if (((isEmpty | hasAsyncCapableInputDelegate) & 1) == 0 && ((v151 & 1) != 0 || !v179 && (v173 || [v152 hasDelayedTasksForKey:v161])))
                                        {
                                          if (byte_1ED49DC79 == 1)
                                          {
                                            [v152 queueDelayedTask:v148 forKey:v161];
                                          }

                                          else
                                          {
                                            [v152 queueDelayedTask:v148 forKey:v161 delay:0.01];
                                            v163 = +[UIKeyboardInputModeController sharedInputModeController];
                                            currentInputMode2 = [v163 currentInputMode];

                                            inputView3 = [v147 inputView];
                                            if (inputView3 && [currentInputMode2 isExtensionInputMode])
                                            {
                                              isDisplayed = [currentInputMode2 isDisplayed];

                                              if (isDisplayed)
                                              {
                                                self->_skipTearDownInputController = 1;
                                              }
                                            }

                                            else
                                            {
                                            }
                                          }
                                        }

                                        else
                                        {
                                          [v152 flushDelayedTasksForKey:{v161, v173}];
                                          v148[2](v148);
                                        }
                                      }

                                      else
                                      {
                                        v148[2](v148);
                                        v152 = self->_transitionStartTime;
                                        self->_transitionStartTime = 0;
                                      }

                                      if (!firstResponderCopy)
                                      {
                                        v162 = +[UIKeyboardImpl activeInstance];
                                        [v162 restoreTextSuggestions];
                                      }

                                      v183[2]();

                                      goto LABEL_266;
                                    }

                                    v150 = 1;
                                  }

                                  v151 = !+[UIKeyboard usesInputSystemUI];
                                  if (!v150)
                                  {
                                    goto LABEL_253;
                                  }

                                  goto LABEL_252;
                                }

LABEL_238:
                                [(UIKeyboardSceneDelegate *)self cleanUpWaitingForInputUI];
                                goto LABEL_239;
                              }

                              v108 = 0;
                            }

                            v110 = v109 ^ 1;
                            goto LABEL_195;
                          }

                          if (!self->_sessionID || ![obj isCustomInputView] || -[UIResponder _requiresKeyboardWhenFirstResponder](responderCopy2, "_requiresKeyboardWhenFirstResponder"))
                          {
                            goto LABEL_238;
                          }

                          v111 = +[UIKeyboardImpl activeInstance];
                          if (!v111)
                          {
                            v111 = +[UIKeyboardImpl sharedInstanceForCustomInputView:](UIKeyboardImpl, "sharedInstanceForCustomInputView:", [obj isCustomInputView]);
                          }

                          identifier = [v111 inputDelegate];
                          if (!identifier)
                          {
                            identifier = [v111 remoteTextInputPartner];
                            rtiClient = [identifier rtiClient];
                            v131 = rtiClient == 0;

                            if (!v131)
                            {
                              goto LABEL_219;
                            }

                            remoteTextInputPartner3 = [v111 remoteTextInputPartner];
                            [remoteTextInputPartner3 beginAllowingRemoteTextInput:self->_sessionID];

                            identifier = [v111 remoteTextInputPartner];
                            [identifier beginInputSessionWithIdentifier:self->_sessionID];
                          }

LABEL_219:
                          goto LABEL_238;
                        }

                        if (![(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder])
                        {
                          goto LABEL_157;
                        }

                        v89 = +[UIKeyboardInputModeController sharedInputModeController];
                        identifier = [v89 currentInputMode];
                        if ([identifier isExtensionInputMode])
                        {
                          isCustomInputView2 = [obj isCustomInputView];

                          if (isCustomInputView2)
                          {
LABEL_157:
                            if ([(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
                            {
                              goto LABEL_166;
                            }

                            inputViewController3 = [inputViews3 inputViewController];
                            identifier = [inputViewController3 _compatibilityController];
                            [identifier setTearingDownInputController];
                            goto LABEL_164;
                          }
                        }

                        else
                        {
                        }

                        v92 = +[UIKeyboardInputModeController sharedInputModeController];
                        inputViewController3 = [v92 currentInputMode];

                        identifier = [inputViewController3 identifier];
                        v93 = [identifier isEqualToString:@"autofillsignup"];

                        if (v93)
                        {
                          if (!+[UIKeyboard usesInputSystemUI])
                          {
LABEL_165:

                            goto LABEL_166;
                          }

                          [(UIKeyboardSceneDelegate *)self remoteHostInputViewSet:obj];
                          obj = identifier = obj;
                        }

                        else
                        {
                          identifier = [obj inputViewController];
                          _compatibilityController = [identifier _compatibilityController];
                          [_compatibilityController setInputMode:inputViewController3];
                        }

LABEL_164:

                        goto LABEL_165;
                      }

                      if (!+[UIKeyboard isInHardwareKeyboardMode])
                      {
                        hostedCustomInputView = [obj hostedCustomInputView];
                        v62 = hostedCustomInputView;
                        if (hostedCustomInputView && ([hostedCustomInputView frame], v63 == 0.0))
                        {
                          identifier = [v62 subviews];
                          v64 = [identifier count] == 0;

                          if (v64)
                          {
                            goto LABEL_108;
                          }
                        }

                        else
                        {
                        }
                      }

                      [(UIKeyboardSceneDelegate *)self updateRenderConfigForResponder:responderCopy2];
                      v65 = +[UIKeyboardImpl activeInstance];
                      if (!v65)
                      {
                        if ([(UIKeyboardSceneDelegate *)self automaticAppearanceEnabled])
                        {
                          inputView4 = [(UIResponder *)responderCopy2 inputView];
                          v71 = inputView4 != 0;
                        }

                        else
                        {
                          v71 = 0;
                        }

                        v65 = [UIKeyboardImpl sharedInstanceForCustomInputView:v71];
                      }

                      _keyboardResponder2 = [(UIResponder *)responderCopy2 _keyboardResponder];
                      if (+[UIKeyboard usesInputSystemUI]&& !self->_automaticAppearanceEnabledInternal)
                      {
                        delegate3 = [v65 delegate];
                        v77 = delegate3 == _keyboardResponder2;

                        if (!v77)
                        {
                          v67 = 0;
LABEL_148:
                          identifier = [v65 geometryDelegate];
                          [identifier syncMinimizedStateToHardwareKeyboardAttachedState];

                          goto LABEL_149;
                        }

                        [v65 setDelegate:_keyboardResponder2];
LABEL_147:
                        v67 = 1;
                        goto LABEL_148;
                      }

                      geometryDelegate = [v65 geometryDelegate];
                      if (!geometryDelegate)
                      {
                        if ([v65 forCustomInputView])
                        {
                          goto LABEL_123;
                        }

                        geometryDelegate = [obj keyboard];
                        if (geometryDelegate)
                        {
                          [v65 setGeometryDelegate:geometryDelegate];
                        }

                        else
                        {
                          v129 = +[UIKeyboardAutomatic sharedInstance];
                          [v65 setGeometryDelegate:v129];
                        }
                      }

LABEL_123:
                      if (+[UIKeyboard usesInputSystemUI])
                      {
                        v73 = _UIKeyboardSceneDelegateLogger();
                        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                        {
                          geometryDelegate2 = [v65 geometryDelegate];
                          *buf = 138412290;
                          *v198 = geometryDelegate2;
                          _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_DEFAULT, "_reloadInputViewsForKeyWindowSceneResponder, updateInputViewsIfNecessary for geometryDelegate: %@", buf, 0xCu);
                        }

                        [(UIRemoteInputViewHost *)self->_remoteInputViewHost updateInputViewsIfNecessary];
                      }

                      [v65 _shouldClearTextSuggestions:v60 | firstResponderCopy];
                      [v65 setDelegate:_keyboardResponder2 force:0 delayEndInputSession:firstResponderCopy];
                      if (textSuggestions)
                      {
                        v75 = _keyboardResponder == delegate;
                      }

                      else
                      {
                        v75 = 0;
                      }

                      if (v75)
                      {
                        [v65 setSuggestions:?];
                      }

                      goto LABEL_147;
                    }
                  }

                  else
                  {
                  }
                }

                [(UIRemoteInputViewHost *)self->_remoteInputViewHost setInputViewSet:obj];
                [(UIRemoteInputViewHost *)self->_remoteInputViewHost setShouldShowDockView:0];
                goto LABEL_103;
              }
            }
          }
        }
      }
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIResponder *)responderCopy2 _requiresKeyboardWhenFirstResponder])
  {
    self->_blockedReloadInputViewsForDictation = 1;
    v183[2]();
  }

  else
  {
    if (!self->_blockedReloadInputViewsForDictation)
    {
      goto LABEL_12;
    }

    responder3 = [(UIKeyboardSceneDelegate *)self responder];
    v17 = responder3 == responderCopy2;

    if (!v17)
    {
      goto LABEL_12;
    }

    self->_blockedReloadInputViewsForDictation = 0;
    v183[2]();
  }

LABEL_268:
}

void __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke(uint64_t a1)
{
  if (_MergedGlobals_1087 == 1)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__83;
    v22 = __Block_byref_object_dispose__83;
    v23 = 0;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_574;
    v17[3] = &unk_1E71082C0;
    v3 = *(a1 + 32);
    v17[4] = buf;
    v17[5] = v3;
    v4 = [v2 addObserverForName:0x1EFB7A6F0 object:0 queue:0 usingBlock:v17];
    v5 = *(v19 + 5);
    *(v19 + 5) = v4;

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__83;
    v15 = __Block_byref_object_dispose__83;
    v16 = 0;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_580;
    v10[3] = &unk_1E71082E8;
    v10[4] = &v11;
    v7 = [v6 addObserverForName:0x1EFB7A6F0 object:0 queue:0 usingBlock:v10];
    v8 = v12[5];
    v12[5] = v7;

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(buf, 8);
  }

  kdebug_trace();
  v9 = kac_get_log();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "reload", "", buf, 2u);
  }
}

void __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_574(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard isInputSystemUI])
  {
    v2 = keyboardui_system_get_log_STAGING();
    v3 = v2;
    v4 = *(a1 + 40);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_END, v4, "keyboardUIBringup", "", &v15, 2u);
    }

    v5 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = 134217984;
      v16 = v14;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "END keyboard bringup signpost (keyboard task queue empty); ID:%llu", &v15, 0xCu);
    }
  }

  else
  {
    v6 = mach_absolute_time();
    kdebug_trace();
    v7 = kac_get_log();
    v8 = os_signpost_id_make_with_pointer(v7, 0);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        LOWORD(v15) = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v7, OS_SIGNPOST_INTERVAL_END, v9, "appBringup", " enableTelemetry=YES ", &v15, 2u);
      }
    }

    v10 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "END app bringup signpost (keyboard task queue empty)", &v15, 2u);
    }

    [_UIKeyboardDiagnosticCollection _requestTailspinWithDescription:@"KeyboardBringupLatency" startMAT:qword_1ED49DC90 endMAT:v6 ifExceedsThresholdSec:0.3];
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 removeObserver:*(*(*(a1 + 32) + 8) + 40)];

  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  _MergedGlobals_1087 = 0;
}

void __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_580(uint64_t a1)
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputManagerState];

  v4 = keyboardPerfLog_Staging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Task queue emptied with an inputManagerState, dropping keyboard.ready signpost", v12, 2u);
    }

    v6 = keyboardPerfLog_Staging();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.readyForInput", "", buf, 2u);
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:*(*(*(a1 + 32) + 8) + 40)];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:0x1EFB191D0 object:0];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected task queue emptied without an inputManagerState", v10, 2u);
  }
}

void __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_589(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v6)
  {
    [WeakRetained updateRenderConfigForTraitCollection:?];
  }

  else
  {
    [WeakRetained updateRenderConfigForCurrentResponder];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 traitCollectionDidChange];
  }
}

void __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_591(uint64_t a1)
{
  [*(a1 + 32) setInputViews:*(a1 + 40)];
  *(*(a1 + 32) + 321) = 0;
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 clearKeyboardWindowSnapshot];
}

void __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke_2()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"iPhone8, 1", @"iPhone8, 2", @"iPhone8, 4", @"iPad6, 7", @"iPad6, 8", @"iPad7, 1", @"iPad7, 2", 0}];
  v0 = +[UIDevice currentDevice];
  v1 = [v0 _deviceInfoForKey:@"ProductType"];
  byte_1ED49DC79 = [v2 containsObject:v1];
}

- (void)_reloadInputViewsForWindowSceneResponder:(id)responder force:(BOOL)force
{
  forceCopy = force;
  v26 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v8 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(UIKeyboardSceneDelegate *)self _responderDescriptionForLogging:responderCopy];
    v10 = v9;
    v11 = "N";
    if (forceCopy)
    {
      v11 = "Y";
    }

    v22 = 138412546;
    v23 = v9;
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Reloading input views for non-key-window scene responder: %@ force:%s", &v22, 0x16u);
  }

  [(UIKeyboardSceneDelegate *)self disableInterfaceAutorotation:0];
  v12 = (!self->_automaticAppearanceEnabled || self->_responderWithoutAutomaticAppearanceEnabled != responderCopy) && [(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled];
  v13 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responderCopy withAutomaticKeyboard:v12 force:forceCopy];
  if ([(UIKeyboardSceneDelegate *)self pinningPreventsInputViews:v13])
  {
    v14 = [UIInputViewPostPinningReloadState stateWithResponder:responderCopy];
    postPinningReloadState = self->_postPinningReloadState;
    self->_postPinningReloadState = v14;

    [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v13 responder:responderCopy];
    goto LABEL_23;
  }

  if (![(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
  {
    v16 = [v13 containsResponder:responderCopy];
    selfHostingTrigger = self->_selfHostingTrigger;
    if (v16)
    {
      if (selfHostingTrigger)
      {
        goto LABEL_17;
      }

      responder = [(UIKeyboardSceneDelegate *)self responder];
      selfHostingTrigger = self->_selfHostingTrigger;
    }

    else
    {
      responder = 0;
    }

    self->_selfHostingTrigger = responder;
  }

LABEL_17:
  responder = self->_responder;
  if (responder && responder != responderCopy)
  {
    _responderWindow = [(UIResponder *)responder _responderWindow];
    [_responderWindow _removeWindowLevelChangedObserver:self];
  }

  objc_storeStrong(&self->_responder, responder);
  v21 = self->_postPinningReloadState;
  self->_postPinningReloadState = 0;

  [(UIKeyboardSceneDelegate *)self _updateTextInputSession];
  if ([(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
  {
    ++self->_ignoredReloads;
  }

  else
  {
    [(UIKeyboardSceneDelegate *)self setInputViews:v13];
  }

LABEL_23:
}

- (void)loadLocalKeyboardForHost:(id)host
{
  self->_loadingLocalKeyboard = 1;
  hostCopy = host;
  responder = [(UIKeyboardSceneDelegate *)self responder];
  v6 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responder];
  [hostCopy changeToInputViewSet:v6];

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 recomputeActiveInputModesWithExtensions:1];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 updateLayout];

  self->_loadingLocalKeyboard = 0;
}

- (id)_inputViewsForResponder:(id)responder
{
  responderCopy = responder;
  v5 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responderCopy withAutomaticKeyboard:[(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled] force:0];

  return v5;
}

- (id)_inputViewsForResponder:(id)responder withAutomaticKeyboard:(BOOL)keyboard force:(BOOL)force
{
  forceCopy = force;
  keyboardCopy = keyboard;
  v154 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v10 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(UIKeyboardSceneDelegate *)self _responderDescriptionForLogging:responderCopy];
    *buf = 138412802;
    *v151 = v11;
    *&v151[8] = 1024;
    *&v151[10] = keyboardCopy;
    *&v151[14] = 1024;
    *&v151[16] = forceCopy;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder: %@, automaticKeyboard: %d, force: %d", buf, 0x18u);
  }

  if ([responderCopy _disableAutomaticKeyboardUI])
  {
    v12 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, disableAutomaticKeyboardUI return empty", buf, 2u);
    }

    v13 = +[UIInputViewSet emptyInputSet];
    goto LABEL_147;
  }

  selfCopy = self;
  v14 = responderCopy;
  if (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass()) && +[_UITextServiceSession textServiceIsDisplaying])
  {
  }

  else
  {
    v15 = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  if ([(UIKeyboardSceneDelegate *)self preservingInputViews]|| ![(NSMutableArray *)self->_persistentInputAccessoryResponderOrder count])
  {
    v15 = 0;
  }

  else
  {
    persistentInputAccessoryResponders = self->_persistentInputAccessoryResponders;
    lastObject = [(NSMutableArray *)self->_persistentInputAccessoryResponderOrder lastObject];
    v15 = [(NSMutableDictionary *)persistentInputAccessoryResponders objectForKey:lastObject];
  }

LABEL_16:
  v140 = forceCopy;
  v142 = responderCopy;
  obj = responder;
  if (dyld_program_sdk_at_least())
  {
    inputViewController = [v14 inputViewController];
    v19 = inputViewController;
    if (inputViewController)
    {
      nextResponder = [inputViewController nextResponder];

      if (!nextResponder)
      {
        [v19 _overrideInputViewNextResponderWithResponder:v14];
      }
    }
  }

  else
  {
    v19 = 0;
  }

  inputView = [v14 inputView];
  nextResponder2 = [inputView nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    nextResponder2 = 0;
  }

  if (v19 || !inputView || nextResponder2)
  {
    if (!inputView)
    {
      inputView = [v19 view];
    }
  }

  else
  {
    [inputView _overrideInputViewNextResponderWithResponder:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    shouldShowDockView = [inputView shouldShowDockView];
  }

  else
  {
    shouldShowDockView = 0;
  }

  v23 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = keyboardCopy;
    v25 = [(UIKeyboardSceneDelegate *)selfCopy _simpleViewDescriptionForLogging:inputView];
    [(UIKeyboardSceneDelegate *)selfCopy _simpleViewDescriptionForLogging:v19];
    v27 = v26 = inputView;
    *buf = 138412546;
    *v151 = v25;
    *&v151[8] = 2112;
    *&v151[10] = v27;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, found custom inputView: %@, customInputViewController: %@", buf, 0x16u);

    inputView = v26;
    keyboardCopy = v24;
  }

  if (dyld_program_sdk_at_least() && ([v15 inputAccessoryViewController], (v147 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    nextResponder3 = [v147 nextResponder];

    if (!nextResponder3)
    {
      [v147 _overrideInputAccessoryViewNextResponderWithResponder:v15];
    }
  }

  else
  {
    v147 = 0;
  }

  inputAccessoryView = [v15 inputAccessoryView];
  nextResponder4 = [inputAccessoryView nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    nextResponder4 = 0;
  }

  if (v147 || !inputAccessoryView || nextResponder4)
  {
    if (!inputAccessoryView)
    {
      inputAccessoryView = [v147 view];
    }
  }

  else
  {
    [inputAccessoryView _overrideInputAccessoryViewNextResponderWithResponder:v15];
  }

  v31 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(UIKeyboardSceneDelegate *)selfCopy _simpleViewDescriptionForLogging:inputAccessoryView];
    *buf = 138412290;
    *v151 = v32;
    _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, found inputAccessoryView: %@", buf, 0xCu);
  }

  [(UIView *)inputView _clearBecomeFirstResponderWhenCapableOnSubtree];
  [(UIView *)inputAccessoryView _clearBecomeFirstResponderWhenCapableOnSubtree];
  v143 = v19;
  v144 = v15;
  if (keyboardCopy)
  {
    v35 = v14;
    _requiresKeyboardWhenFirstResponder = [v14 _requiresKeyboardWhenFirstResponder];
  }

  else
  {
    v37 = +[UIKeyboardAutomatic activeInstance];
    if (v37 || [(UIKeyboardSceneDelegate *)selfCopy isOnScreen])
    {
      _requiresKeyboardWhenFirstResponder = [v14 _requiresKeyboardWhenFirstResponder];
    }

    else
    {
      _requiresKeyboardWhenFirstResponder = 0;
    }

    v35 = v14;
  }

  v38 = inputView != 0;
  v39 = inputView == 0;
  v40 = _UIKeyboardSceneDelegateLogger();
  v149 = inputAccessoryView;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    +[UIKeyboardAutomatic activeInstance];
    v41 = keyboardCopy;
    v43 = v42 = inputView;
    v44 = [(UIKeyboardSceneDelegate *)selfCopy _simpleViewDescriptionForLogging:v43];
    isOnScreen = [(UIKeyboardSceneDelegate *)selfCopy isOnScreen];
    _requiresKeyboardWhenFirstResponder2 = [v35 _requiresKeyboardWhenFirstResponder];
    *buf = 67110146;
    *v151 = _requiresKeyboardWhenFirstResponder;
    *&v151[4] = 1024;
    *&v151[6] = v41;
    *&v151[10] = 2112;
    *&v151[12] = v44;
    *&v151[20] = 1024;
    *&v151[22] = isOnScreen;
    *v152 = 1024;
    *&v152[2] = _requiresKeyboardWhenFirstResponder2;
    _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, responderRequiresKeyboard %d (automaticKeyboardEnabled: %d, activeInstance: %@, self.isOnScreen: %d, requiresKBWhenFirstResponder: %d)", buf, 0x24u);

    inputView = v42;
  }

  v47 = v39 & _requiresKeyboardWhenFirstResponder;

  v48 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [(UIKeyboardSceneDelegate *)selfCopy _simpleViewDescriptionForLogging:inputView];
    *buf = 67109890;
    *v151 = v39 & _requiresKeyboardWhenFirstResponder;
    *&v151[4] = 1024;
    *&v151[6] = 1;
    *&v151[10] = 2112;
    *&v151[12] = v49;
    *&v151[20] = 1024;
    *&v151[22] = _requiresKeyboardWhenFirstResponder;
    _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, useKeyboard %d (allowsSystemInputView: %d, !inputView %@, responderRequiresKeyboard %d)", buf, 0x1Eu);
  }

  v50 = v144;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [inputView frame];
    v38 = v51 > 0.0;
  }

  if ((v38 | _requiresKeyboardWhenFirstResponder))
  {
    v52 = selfCopy;
    v53 = [(UIKeyboardSceneDelegate *)selfCopy systemInputAssistantViewControllerForResponder:v35];
    view = [v53 view];
    v55 = v53;
    if (![(UIKeyboardSceneDelegate *)selfCopy shouldSuppressInputAssistantUpdates]&& !selfCopy->_dontNeedAssistantBar)
    {
      [v55 automaticallySetCenterViewControllerBasedOnInputDelegate:v35];
      [v55 setInputAssistantButtonItemsForResponder:v35];
    }

    v56 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [(UIKeyboardSceneDelegate *)selfCopy _simpleViewDescriptionForLogging:v55];
      shouldSuppressInputAssistantUpdates = [(UIKeyboardSceneDelegate *)selfCopy shouldSuppressInputAssistantUpdates];
      dontNeedAssistantBar = selfCopy->_dontNeedAssistantBar;
      *buf = 138412802;
      *v151 = v57;
      *&v151[8] = 1024;
      *&v151[10] = shouldSuppressInputAssistantUpdates;
      *&v151[14] = 1024;
      *&v151[16] = dontNeedAssistantBar;
      _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, found assistantVC: %@ (should suppress: %d, _dontNeed: %d)", buf, 0x18u);
    }
  }

  else
  {
    view = 0;
    v55 = 0;
    v52 = selfCopy;
  }

  if (!v52->_automaticAppearanceEnabled)
  {
    objc_storeStrong(&v52->_responderWithoutAutomaticAppearanceEnabled, obj);
  }

  v60 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v52->_responderWithoutAutomaticAppearanceEnabled];
    automaticAppearanceEnabled = v52->_automaticAppearanceEnabled;
    *buf = 138412546;
    *v151 = v61;
    *&v151[8] = 1024;
    *&v151[10] = automaticAppearanceEnabled;
    _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, configuring _responderWithoutAutomaticAppearanceEnabled: %@ (_automaticAppearEnabled: %d)", buf, 0x12u);
  }

  inputAccessoryView2 = [(UIInputViewSet *)v52->_inputViewSet inputAccessoryView];
  v64 = [inputAccessoryView2 _containsResponder:v35];

  inputViewSet = v52->_inputViewSet;
  if (v64)
  {
    inputAccessoryView3 = [(UIInputViewSet *)inputViewSet inputAccessoryView];

    v67 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:inputAccessoryView3];
      *buf = 138412290;
      *v151 = v68;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, updating inputAccessoryView: %@", buf, 0xCu);
    }

LABEL_80:
    obja = inputView;

    v149 = inputAccessoryView3;
    goto LABEL_82;
  }

  inputView2 = [(UIInputViewSet *)inputViewSet inputView];
  v70 = [inputView2 _containsResponder:v35];

  if (v70)
  {
    v71 = view;
    inputView3 = [(UIInputViewSet *)v52->_inputViewSet inputView];

    keyboard = [(UIInputViewSet *)v52->_inputViewSet keyboard];
    v47 = keyboard != 0;

    v67 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v74 = keyboard != 0;
      v75 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:inputView3];
      *buf = 138412546;
      *v151 = v75;
      *&v151[8] = 1024;
      *&v151[10] = v74;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, updating inputView: %@, useKeyboard: %d", buf, 0x12u);
    }

    inputAccessoryView3 = v149;
    inputView = inputView3;
    view = v71;
    v50 = v144;
    goto LABEL_80;
  }

  obja = inputView;
LABEL_82:
  if (!+[UIKeyboard usesInputSystemUI])
  {
    if (v47)
    {
      v76 = [UIInputViewSet inputSetWithKeyboardAndAccessoryView:v149 assistantView:view];
      inputViewSet = _UIKeyboardSceneDelegateLogger();
      v78 = obja;
      if (os_log_type_enabled(inputViewSet, OS_LOG_TYPE_DEFAULT))
      {
        v79 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v76];
        *buf = 138412290;
        *v151 = v79;
        _os_log_impl(&dword_188A29000, inputViewSet, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, useKeyboard ivs: %@", buf, 0xCu);
      }
    }

    else
    {
      v78 = obja;
      if (!obja)
      {
        v85 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        if ([v85 keyboardActive])
        {
        }

        else
        {
          v117 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          snapshotting = [v117 snapshotting];

          if ((snapshotting & 1) == 0)
          {
            v119 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
            if ([v119 keyboardVisible])
            {
              v120 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
              scene = [(UIKeyboardSceneDelegate *)v52 scene];
              [v120 intersectionHeightForWindowScene:scene];
              v123 = v122 > 0.0;
            }

            else
            {
              v123 = 0;
            }

            if (v149)
            {
              v124 = 0;
            }

            else
            {
              v125 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
              [v125 heightForRemoteIAVPlaceholderIfNecessary];
              v124 = v126 != 0.0;
            }

            v127 = v123 || v124;
            v128 = _UIKeyboardSceneDelegateLogger();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v151 = v123;
              *&v151[4] = 1024;
              *&v151[6] = v124;
              *&v151[10] = 1024;
              *&v151[12] = v127;
              _os_log_impl(&dword_188A29000, v128, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, needsIVPlaceholder: %d, needsIAVPlaceholder: %d, needsInputSetWithPlaceholder: %d", buf, 0x14u);
            }

            v78 = 0;
            if (v127)
            {
              v76 = [UIInputViewSet inputSetWithPlaceholderAndAccessoryView:v149];
              [v76 setIsRemoteKeyboard:1];
              [v76 setShouldShowDockView:shouldShowDockView];
              goto LABEL_142;
            }
          }
        }
      }

      v76 = [UIInputViewSet inputSetWithInputView:v78 accessoryView:v149 assistantView:view];
      [v76 setInputViewController:v143];
      inputView4 = [v76 inputView];
      [v76 setIsCustomInputView:inputView4 != 0];

      [v76 setShouldShowDockView:shouldShowDockView];
      existingContainerWindow = [(UIKeyboardSceneDelegate *)v52 existingContainerWindow];
      if (!existingContainerWindow)
      {
        goto LABEL_142;
      }

      v131 = existingContainerWindow;
      isEmpty = [v76 isEmpty];

      if (!isEmpty)
      {
        goto LABEL_142;
      }

      containerRootController = [(UIKeyboardSceneDelegate *)v52 containerRootController];
      inputViewSet = [containerRootController inputViewSet];

      if (([inputViewSet isEmpty]& 1) == 0 && [inputViewSet isRemoteKeyboard])
      {
        [v76 setIsRemoteKeyboard:1];
      }
    }

    goto LABEL_142;
  }

  if (v47)
  {
    if (+[UIKeyboard usesLocalKeyboard])
    {
      [UIInputViewSet inputSetWithKeyboardAndAccessoryView:v149 assistantView:view];
    }

    else
    {
      [UIInputViewSet inputSetWithPlaceholderAndAccessoryView:v149 assistantView:view];
    }
    v76 = ;
    v86 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = +[UIKeyboard usesLocalKeyboard];
      v88 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v76];
      *buf = 67109634;
      *v151 = 1;
      *&v151[4] = 1024;
      *&v151[6] = v87;
      *&v151[10] = 2112;
      *&v151[12] = v88;
      _os_log_impl(&dword_188A29000, v86, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, useKeyboard: %d, usesLocal: %d, ivs: %@", buf, 0x18u);
    }

    v78 = obja;
    goto LABEL_124;
  }

  v139 = view;
  if (v140)
  {
    v80 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    if ([v80 keyboardVisible])
    {
      v81 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      scene2 = [(UIKeyboardSceneDelegate *)v52 scene];
      [v81 intersectionHeightForWindowScene:scene2];
      v84 = v83 > 0.0;
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v84 = 0;
  }

  keyboardArbiterClient = [(UIKeyboardSceneDelegate *)v52 keyboardArbiterClient];
  currentUIState = [keyboardArbiterClient currentUIState];
  applicationIdentifier = [currentUIState applicationIdentifier];
  v92 = +[UIKeyboard keyboardBundleIdentifier];
  v93 = [applicationIdentifier containsString:v92];

  v94 = obja;
  if (v84 && obja == 0)
  {
    v95 = (v93 ^ 1) & v84;
  }

  else
  {
    v95 = v84;
  }

  v96 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    keyboardVisible = [v97 keyboardVisible];
    v99 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    scene3 = [(UIKeyboardSceneDelegate *)selfCopy scene];
    [v99 intersectionHeightForWindowScene:scene3];
    *buf = 67109888;
    *v151 = v95;
    *&v151[4] = 1024;
    *&v151[6] = keyboardVisible;
    *&v151[10] = 2048;
    *&v151[12] = v101;
    *&v151[20] = 1024;
    *&v151[22] = v140;
    _os_log_impl(&dword_188A29000, v96, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, needsInputViewPlaceholder: %d (visible: %d, height: %f, force: %d)", buf, 0x1Eu);

    v94 = obja;
    v52 = selfCopy;
  }

  view = v139;
  if ((v149 != 0) | v93 & 1)
  {
    v102 = 0;
  }

  else
  {
    v103 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v103 heightForRemoteIAVPlaceholderIfNecessary];
    v102 = v104 != 0.0;
  }

  v105 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v149];
    v107 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v107 heightForRemoteIAVPlaceholderIfNecessary];
    *buf = 67109890;
    *v151 = v102;
    *&v151[4] = 2112;
    *&v151[6] = v106;
    *&v151[14] = 2048;
    *&v151[16] = v108;
    *&v151[24] = 1024;
    *v152 = v93;
    _os_log_impl(&dword_188A29000, v105, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, needsInputAccessoryViewPlaceholder: %d (%@, %f, %d)", buf, 0x22u);

    v94 = obja;
  }

  v109 = ((v94 | v139) != 0 || v102) | v95;
  v110 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    v111 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:obja];
    v112 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v139];
    *buf = 67110146;
    *v151 = v109 & 1;
    *&v151[4] = 2112;
    *&v151[6] = v111;
    *&v151[14] = 2112;
    *&v151[16] = v112;
    *&v151[24] = 1024;
    *v152 = v95;
    *&v152[4] = 1024;
    v153 = v102;
    _os_log_impl(&dword_188A29000, v110, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, needsPlaceholder: %d (%@, %@, %d, %d)", buf, 0x28u);
  }

  v50 = v144;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
  {
    if (v109)
    {
      v78 = obja;
      v113 = obja;
      v114 = v149;
      v115 = v139;
      goto LABEL_121;
    }

LABEL_122:
    v76 = [UIInputViewSet inputSetWithInputView:0 accessoryView:v149 assistantView:0];
    v78 = obja;
    goto LABEL_123;
  }

  if ((v109 & 1) == 0)
  {
    goto LABEL_122;
  }

  v78 = obja;
  v113 = obja;
  v114 = v149;
  v115 = 0;
LABEL_121:
  v76 = [UIInputViewSet inputSetWithPlaceholderAndCustomInputView:v113 accessoryView:v114 assistantView:v115];
LABEL_123:
  [v76 setInputViewController:v143];
  hostedCustomInputView = [v76 hostedCustomInputView];
  [v76 setIsCustomInputView:hostedCustomInputView != 0];

  [v76 setShouldShowDockView:shouldShowDockView];
LABEL_124:
  [v76 setIsRemoteKeyboard:1];
LABEL_142:
  [v76 setAssistantViewController:v55];
  [v76 setAccessoryViewController:v147];
  if (v55)
  {
    _keyboardResponder = [v35 _keyboardResponder];
    v135 = [v55 shouldBeShownForInputDelegate:_keyboardResponder inputViews:v76];
    view2 = [v55 view];
    [view2 setHidden:v135 ^ 1u];
  }

  v137 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v151 = v76;
    _os_log_impl(&dword_188A29000, v137, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder returning: %@", buf, 0xCu);
  }

  v13 = v76;
  responderCopy = v142;
LABEL_147:

  return v13;
}

- (void)setShouldSuppressInputAssistantUpdates:(BOOL)updates
{
  updatesCopy = updates;
  if (!+[UIKeyboard isMajelEnabled]&& self->_shouldSuppressInputAssistantUpdates != updatesCopy)
  {
    self->_shouldSuppressInputAssistantUpdates = updatesCopy;
    v5 = _UIKeyboardSceneDelegateLogger();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (updatesCopy)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Start suppressing input assistant updates", buf, 2u);
      }

      systemInputAssistantViewController = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
      [systemInputAssistantViewController setInputAssistantButtonItemsForResponder:0];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "End suppressing input assistant updates", v13, 2u);
      }

      v8 = +[UIKeyboardImpl activeInstance];
      inputDelegateManager = [v8 inputDelegateManager];
      systemInputAssistantViewController = [inputDelegateManager keyInputDelegate];

      systemInputAssistantViewController2 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
      [systemInputAssistantViewController2 automaticallySetCenterViewControllerBasedOnInputDelegate:systemInputAssistantViewController];

      systemInputAssistantViewController3 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
      responder = [(UIKeyboardSceneDelegate *)self responder];
      [systemInputAssistantViewController3 setInputAssistantButtonItemsForResponder:responder];
    }
  }
}

- (BOOL)hasIntegratedAssistantBar
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  LOBYTE(v2) = [currentInputMode isHandwritingInputMode];
  return v2;
}

- (void)setInputViews:(id)views animationStyle:(id)style
{
  viewsCopy = views;
  styleCopy = style;
  if (self->_containerWindow || ![viewsCopy isEmpty] || -[UIResponder _disableAutomaticKeyboardUI](self->_responder, "_disableAutomaticKeyboardUI"))
  {
    v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    handlingRemoteEvent = [v7 handlingRemoteEvent];

    if ((handlingRemoteEvent & 1) == 0)
    {
      [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
    }

    responder = [(UIKeyboardSceneDelegate *)self responder];
    v10 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:responder];

    if (v10)
    {
      [(UIKeyboardSceneDelegate *)self setKeyWindowSceneInputViews:viewsCopy animationStyle:styleCopy];
    }

    else
    {
      [(UIKeyboardSceneDelegate *)self setWindowSceneInputViews:viewsCopy animationStyle:styleCopy];
    }
  }
}

- (void)setKeyWindowSceneInputViews:(id)views animationStyle:(id)style
{
  v97 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  styleCopy = style;
  v8 = viewsCopy;
  kdebug_trace();
  v9 = kac_get_log();
  v10 = os_signpost_id_make_with_pointer(v9, v8);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "setInputViews", "", buf, 2u);
    }
  }

  if (!+[UIDictationController viewMode])
  {
    kdebug_trace();
    v14 = kac_get_log();
    v15 = os_signpost_id_make_with_pointer(v14, v8);
    if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_35;
    }

    v16 = v15;
    if (!os_signpost_enabled(v14))
    {
      goto LABEL_35;
    }

    *buf = 0;
LABEL_34:
    _os_signpost_emit_with_name_impl(&dword_188A29000, v14, OS_SIGNPOST_INTERVAL_END, v16, "setInputViews", "", buf, 2u);
LABEL_35:
    v37 = v14;
    v38 = v8;
    goto LABEL_69;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v12 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    handlingRemoteEvent = [v12 handlingRemoteEvent];
  }

  else
  {
    handlingRemoteEvent = [v8 isInputViewPlaceholder];
  }

  if (!-[UIKeyboardSceneDelegate automaticAppearanceReallyEnabled](self, "automaticAppearanceReallyEnabled") && (handlingRemoteEvent & 1) == 0 && ([styleCopy force] & 1) == 0)
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    if (inputViews && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v28 = +[UIKeyboardImpl activeInstance];
      textInputTraits = [v28 textInputTraits];
      keyboardType = [textInputTraits keyboardType];

      if (keyboardType == 127)
      {
        [(UIKeyboardSceneDelegate *)self forceOrderOutAutomaticAnimated:1];
      }
    }

    else
    {
    }

    containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
    isRotating = [containerRootController isRotating];

    if (isRotating)
    {
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke;
      v92[3] = &unk_1E70F6228;
      v92[4] = self;
      v93 = v8;
      v94 = styleCopy;
      containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
      [containerRootController2 setPostRotationPendingBlock:v92];
    }

    kdebug_trace();
    v14 = kac_get_log();
    v36 = os_signpost_id_make_with_pointer(v14, v8);
    if (v36 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_35;
    }

    v16 = v36;
    if (!os_signpost_enabled(v14))
    {
      goto LABEL_35;
    }

    *buf = 0;
    goto LABEL_34;
  }

  containerRootController3 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [containerRootController3 setPostRotationPendingBlock:0];

  [v8 refreshPresentation];
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
  responder = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v8 responder:responder];

  containerRootController4 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if (!+[_UIRemoteKeyboards enabled])
  {
    v24 = 0;
    rootViewController = 0;
    v26 = v8;
    goto LABEL_65;
  }

  v20 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if (+[UIKeyboard isInputSystemUI])
  {
    keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    if ([keyboardArbiterClient keyboardVisible])
    {
      keyboardArbiterClient2 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
      keyboardActive = [keyboardArbiterClient2 keyboardActive];

      if (keyboardActive)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    if ([(UIKeyboardSceneDelegate *)self isWaitingForInputUI])
    {
      nextAnimationStyle = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
      animated = [nextAnimationStyle animated];

      if (animated)
      {
        goto LABEL_47;
      }

LABEL_45:
      +[UIInputViewAnimationStyle animationStyleImmediate];
      styleCopy = keyboardArbiterClient = styleCopy;
      goto LABEL_46;
    }

    containerRootController5 = [(UIKeyboardSceneDelegate *)self containerRootController];
    placement = [containerRootController5 placement];
    if ([placement accessoryViewWillAppear])
    {
      containerRootController6 = [(UIKeyboardSceneDelegate *)self containerRootController];
      placement2 = [containerRootController6 placement];
      showsKeyboard = [placement2 showsKeyboard];

      if (!showsKeyboard)
      {
        goto LABEL_47;
      }
    }

    else
    {
    }

    keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    currentUIState = [keyboardArbiterClient currentUIState];
    if (!currentUIState)
    {
      goto LABEL_46;
    }

    v45 = currentUIState;
    keyboardArbiterClient3 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    currentUIState2 = [keyboardArbiterClient3 currentUIState];
    animated2 = [currentUIState2 animated];

    if (animated2)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if ([v20 keyboardVisible] && (objc_msgSend(v20, "keyboardActive") & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_47:
  v85 = containerRootController4;
  [(UIKeyboardSceneDelegate *)self prepareToMoveKeyboardForInputViewSet:v8 animationStyle:styleCopy];
  containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
  v50 = objc_opt_respondsToSelector();

  if (v50)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    containerWindow2 = [(UIKeyboardSceneDelegate *)self containerWindow];
    [defaultCenter removeObserver:containerWindow2 name:0x1EFB921F0 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    containerWindow3 = [(UIKeyboardSceneDelegate *)self containerWindow];
    [defaultCenter2 addObserver:containerWindow3 selector:sel_applicationWindowRotated_ name:0x1EFB921F0 object:0];
  }

  keyboardWindow = [v20 keyboardWindow];
  rootViewController = [keyboardWindow rootViewController];

  v56 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v57 = v56 | rootViewController;

  if (v57)
  {
    v84 = v20;
    scene = [(UIKeyboardSceneDelegate *)self scene];
    inputView = [v8 inputView];
    inputAccessoryView = [v8 inputAccessoryView];
    inputAssistantView = [v8 inputAssistantView];
    v82 = scene;
    if (inputView | inputAssistantView)
    {
      v62 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidthSizer:&__block_literal_global_631_1 heightWithScene:scene];
    }

    else
    {
      v62 = 0;
    }

    [v62 setFallbackView:inputView];
    [v62 setAssociatedView:inputAssistantView];
    v83 = [_UIRemoteKeyboardPlaceholderView placeholderForView:inputAccessoryView];
    isCustomInputView = [v8 isCustomInputView];
    hostedCustomInputView = [v8 hostedCustomInputView];
    isRemoteKeyboard = [v8 isRemoteKeyboard];
    shouldShowDockView = [v8 shouldShowDockView];
    visualModeManager = [(UIKeyboardSceneDelegate *)self visualModeManager];
    shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

    visualModeManager2 = [(UIKeyboardSceneDelegate *)self visualModeManager];
    visualModeLog = [objc_opt_class() visualModeLog];

    if (os_log_type_enabled(visualModeLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v96 = shouldShowWithinAppWindow;
      _os_log_impl(&dword_188A29000, visualModeLog, OS_LOG_TYPE_DEFAULT, "Show keyboard with visual mode windowed (%d)", buf, 8u);
    }

    if (+[UIKeyboard usesLocalKeyboard](UIKeyboard, "usesLocalKeyboard") || (+[_UIRemoteKeyboards sharedRemoteKeyboards](_UIRemoteKeyboards, "sharedRemoteKeyboards"), v72 = objc_claimAutoreleasedReturnValue(), v73 = [v72 oldPathForSnapshot] | shouldShowWithinAppWindow, v72, (v73 & 1) != 0))
    {
      v24 = [UIInputViewSet inputSetWithInputView:v62 accessoryView:v83 assistantView:0];
      v66 = inputAccessoryView;
      v26 = [UIInputViewSet inputSetWithInputView:inputView accessoryView:inputAccessoryView assistantView:inputAssistantView];
    }

    else
    {
      v24 = [UIInputViewSet inputSetWithInputView:inputView accessoryView:v83 assistantView:inputAssistantView];
      [v24 inheritNullState:v8];
      v66 = inputAccessoryView;
      v26 = [UIInputViewSet inputSetWithInputView:v62 accessoryView:inputAccessoryView assistantView:0];

      [v26 inheritNullState:v24];
    }

    [v24 setIsCustomInputView:isCustomInputView];
    [v26 setIsCustomInputView:isCustomInputView];
    [v26 setHostedCustomInputView:hostedCustomInputView];
    [v24 setIsRemoteKeyboard:isRemoteKeyboard];
    [v26 setIsRemoteKeyboard:isRemoteKeyboard];
    [v24 setShouldShowDockView:shouldShowDockView];
    [v26 setShouldShowDockView:shouldShowDockView];
    [v24 setShouldShowInputSwitcherView:1];

    inputView2 = v82;
    v67 = v83;
    goto LABEL_63;
  }

  keyboard = [v8 keyboard];

  if (keyboard)
  {
    v84 = v20;
    inputView2 = [v8 inputView];
    inputView = [_UIRemoteKeyboardPlaceholderView placeholderForView:inputView2];
    inputAccessoryView2 = [v8 inputAccessoryView];
    inputAssistantView = [v8 inputAssistantView];
    v62 = [_UIRemoteKeyboardPlaceholderView placeholderForView:inputAssistantView];
    v66 = inputAccessoryView2;
    v26 = [UIInputViewSet inputSetWithInputView:inputView accessoryView:inputAccessoryView2 assistantView:v62];
    v24 = 0;
    v67 = v8;
LABEL_63:

    v20 = v84;
    goto LABEL_64;
  }

  v24 = 0;
  v26 = v8;
LABEL_64:

  containerRootController4 = v85;
LABEL_65:
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke_633;
  v89[3] = &unk_1E70F35B8;
  v90 = rootViewController;
  v91 = v24;
  v37 = rootViewController;
  v14 = v24;
  [v37 performOperations:v89 withAnimationStyle:styleCopy];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke_2;
  v86[3] = &unk_1E70F35B8;
  v87 = containerRootController4;
  v38 = v26;
  v88 = v38;
  v74 = containerRootController4;
  [v74 performOperations:v86 withAnimationStyle:styleCopy];
  kdebug_trace();
  v75 = kac_get_log();
  v76 = os_signpost_id_make_with_pointer(v75, v8);
  if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v77 = v76;
    if (os_signpost_enabled(v75))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v75, OS_SIGNPOST_INTERVAL_END, v77, "setInputViews", "", buf, 2u);
    }
  }

LABEL_69:
}

double __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke_628()
{
  if (+[UIKeyboardImpl isFloating])
  {

    +[UIKeyboardImpl floatingWidth];
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;

    return v3;
  }

  return result;
}

- (void)setWindowSceneInputViews:(id)views animationStyle:(id)style
{
  viewsCopy = views;
  styleCopy = style;
  if (-[UIKeyboardSceneDelegate automaticAppearanceReallyEnabled](self, "automaticAppearanceReallyEnabled") || [styleCopy force])
  {
    [viewsCopy refreshPresentation];
    [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
    responder = [(UIKeyboardSceneDelegate *)self responder];
    [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:viewsCopy responder:responder];

    containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
    scene = [(UIKeyboardSceneDelegate *)self scene];
    containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      containerWindow2 = [(UIKeyboardSceneDelegate *)self containerWindow];
      [defaultCenter removeObserver:containerWindow2 name:0x1EFB921F0 object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      containerWindow3 = [(UIKeyboardSceneDelegate *)self containerWindow];
      [defaultCenter2 addObserver:containerWindow3 selector:sel_applicationWindowRotated_ name:0x1EFB921F0 object:0];
    }

    if (+[_UIRemoteKeyboards enabled])
    {
      v17 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      keyboardVisible = [v17 keyboardVisible];
    }

    else
    {
      keyboardVisible = 0;
    }

    inputView = [viewsCopy inputView];
    inputAccessoryView = [viewsCopy inputAccessoryView];
    inputAssistantView = [viewsCopy inputAssistantView];
    v22 = inputAssistantView;
    if (inputView || inputAssistantView || keyboardVisible)
    {
      v23 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidthSizer:&__block_literal_global_635 heightWithScene:scene];
    }

    else
    {
      v23 = 0;
    }

    [v23 setFallbackView:inputView];
    [v23 setAssociatedView:v22];
    v24 = [UIInputViewSet inputSetWithInputView:v23 accessoryView:inputAccessoryView assistantView:0];
    [v24 inheritNullState:viewsCopy];
    [v24 setIsCustomInputView:{objc_msgSend(viewsCopy, "isCustomInputView")}];
    [v24 setIsRemoteKeyboard:{objc_msgSend(viewsCopy, "isRemoteKeyboard")}];
    [v24 setShouldShowDockView:{objc_msgSend(viewsCopy, "shouldShowDockView")}];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__UIKeyboardSceneDelegate_setWindowSceneInputViews_animationStyle___block_invoke_2;
    v27[3] = &unk_1E70F35B8;
    v28 = containerRootController;
    v29 = v24;
    v25 = v24;
    v26 = containerRootController;
    [v26 performOperations:v27 withAnimationStyle:styleCopy];
  }
}

double __67__UIKeyboardSceneDelegate_setWindowSceneInputViews_animationStyle___block_invoke()
{
  if (+[UIKeyboardImpl isFloating])
  {

    +[UIKeyboardImpl floatingWidth];
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;

    return v3;
  }

  return result;
}

- (void)setInputViews:(id)views animated:(BOOL)animated
{
  animatedCopy = animated;
  viewsCopy = views;
  v7 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:animatedCopy];
  [(UIKeyboardSceneDelegate *)self setInputViews:viewsCopy animationStyle:v7];
}

- (void)setInputViews:(id)views
{
  viewsCopy = views;
  [(UIKeyboardSceneDelegate *)self setInputViews:viewsCopy animated:[(UIKeyboardSceneDelegate *)self animationsEnabled]];
}

- (void)reloadPlacement
{
  inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  [(UIKeyboardSceneDelegate *)self setInputViews:inputViews];

  [(UIKeyboardSceneDelegate *)self refreshKeyboardLayoutGuideEnsuringControllerExists:0];
}

- (void)refreshKeyboardLayoutGuideEnsuringControllerExists:(BOOL)exists
{
  if (!exists)
  {
    existingContainerRootController = [(UIKeyboardSceneDelegate *)self existingContainerRootController];
    if (!existingContainerRootController)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  existingContainerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  if (existingContainerRootController)
  {
LABEL_5:
    v4 = existingContainerRootController;
    [existingContainerRootController refreshKeyboardLayoutGuide];
    existingContainerRootController = v4;
  }

LABEL_6:
}

- (void)performMultipleOperations:(id)operations withAnimationStyle:(id)style
{
  operationsCopy = operations;
  styleCopy = style;
  if (+[_UIRemoteKeyboards enabled]&& ([(UIKeyboardSceneDelegate *)self responder], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v8], v8, v9))
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke;
    v23[3] = &unk_1E7108338;
    v24 = array;
    v26 = operationsCopy;
    v25 = styleCopy;
    v12 = array;
    [v11 performOnControllers:v23];
  }

  else
  {
    containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
    inputViewSet = [containerRootController inputViewSet];
    inputView = [inputViewSet inputView];
    if (inputView)
    {
      v16 = inputView;
      containerRootController2 = [(UIKeyboardSceneDelegate *)self containerRootController];
      inputViewSet2 = [containerRootController2 inputViewSet];
      isCustomInputView = [inputViewSet2 isCustomInputView];

      if ((isCustomInputView & 1) == 0)
      {
        containerRootController3 = [(UIKeyboardSceneDelegate *)self containerRootController];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke_3;
        v21[3] = &unk_1E70F4A50;
        v21[4] = self;
        v22 = operationsCopy;
        [containerRootController3 performOperations:v21 withAnimationStyle:styleCopy];
      }
    }

    else
    {
    }
  }
}

void __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [v3 owner];
  }

  v5 = v4;
  if (v4 && ([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke_2;
    v9 = &unk_1E70F4A50;
    v11 = *(a1 + 48);
    v5 = v5;
    v10 = v5;
    [v5 performOperations:&v6 withAnimationStyle:*(a1 + 40)];
    [*(a1 + 32) addObject:{v5, v6, v7, v8, v9}];
  }

LABEL_9:
}

void __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) containerRootController];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)_showKeyboardWindowForInputViewSet:(id)set placement:(id)placement windowScene:(id)scene
{
  setCopy = set;
  placementCopy = placement;
  if (!+[UIKeyboard inputUIOOP])
  {
    inputView = [setCopy inputView];
    if (!inputView || [setCopy isInputViewPlaceholder])
    {
      inputAssistantView = [setCopy inputAssistantView];
      if (!inputAssistantView || ([setCopy isInputAssistantViewPlaceholder] & 1) != 0)
      {
        isNullInputView = [setCopy isNullInputView];

        if ((isNullInputView & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

LABEL_11:
    if ([placementCopy showsInputViews] & 1) != 0 || (objc_msgSend(placementCopy, "isUndocked") & 1) != 0 || (objc_msgSend(setCopy, "keyboard"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(setCopy, "keyboard"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isMinimized"), v15, v14, (v16))
    {
      v9 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = [(UIKeyboardSceneDelegate *)self showingKeyboardForInputViewSet:setCopy];
LABEL_17:

  return v9;
}

- (void)updateArbiterClientWithKeyboardFrame:(CGRect)frame keyboarFrameWithIAV:(CGRect)v isIAVRelevant:(BOOL)relevant showing:(BOOL)showing notifyRemote:(BOOL)remote forScene:(id)scene
{
  remoteCopy = remote;
  showingCopy = showing;
  relevantCopy = relevant;
  height = v.size.height;
  v12 = frame.size.height;
  sceneCopy = scene;
  if (+[UIKeyboard isKeyboardProcess])
  {
    keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    [keyboardArbiterClient setShowing:showingCopy];
  }

  else
  {
    keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    [keyboardArbiterClient inputDestinationDidChange:showingCopy withIAVHeight:relevantCopy isIAVRelevant:remoteCopy notifyRemote:sceneCopy forScene:height - v12];
  }
}

- (BOOL)showingKeyboardForInputViewSet:(id)set
{
  setCopy = set;
  responder = [(UIKeyboardSceneDelegate *)self responder];
  if ([responder _requiresKeyboardWhenFirstResponder])
  {
    responder2 = [(UIKeyboardSceneDelegate *)self responder];
    _keyboardResponder = [responder2 _keyboardResponder];
    if (_keyboardResponder)
    {
      isCustomInputView = 1;
    }

    else
    {
      isCustomInputView = [setCopy isCustomInputView];
    }
  }

  else
  {
    isCustomInputView = [setCopy isCustomInputView];
  }

  return isCustomInputView;
}

- (void)prepareToMoveKeyboardForInputViewSet:(id)set animationStyle:(id)style
{
  setCopy = set;
  styleCopy = style;
  _windowScene = [(UIKeyboardSceneDelegate *)self _windowScene];
  responder = [(UIKeyboardSceneDelegate *)self responder];
  v9 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:responder];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = v9 & ([setCopy isInputAccessoryViewPlaceholder] ^ 1);
  }

  if (+[_UIRemoteKeyboards enabled])
  {
    v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    handlingRemoteEvent = [v10 handlingRemoteEvent];

    v9 = (handlingRemoteEvent ^ 1) & v9;
  }

  v12 = [styleCopy endPlacementForInputViewSet:setCopy windowScene:_windowScene];
  v13 = [(UIKeyboardSceneDelegate *)self _showKeyboardWindowForInputViewSet:setCopy placement:v12 windowScene:_windowScene];
  if (+[UIKeyboard inputUIOOP])
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      v13 = [(UIKeyboardSceneDelegate *)self showingKeyboardForInputViewSet:setCopy];
    }

    [v12 remoteIntrinsicContentSizeForInputViewInSet:setCopy includingIAV:0];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v12 remoteIntrinsicContentSizeForInputViewInSet:setCopy includingIAV:1];
    [(UIKeyboardSceneDelegate *)self updateArbiterClientWithKeyboardFrame:v9 keyboarFrameWithIAV:v13 isIAVRelevant:v9 showing:_windowScene notifyRemote:v15 forScene:v17, v19, v21, v22, v23, v24, v25];
  }

  else
  {
    v26 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v12 remoteIntrinsicContentSizeForInputViewInSet:setCopy includingIAV:0];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v12 remoteIntrinsicContentSizeForInputViewInSet:setCopy includingIAV:1];
    [v26 prepareToMoveKeyboard:objc_msgSend(setCopy withIAV:"isInputAccessoryViewPlaceholder") ^ 1 isIAVRelevant:v13 showing:v9 notifyRemote:_windowScene forScene:{v28, v30, v32, v34, v35, v36, v37, v38}];
  }
}

- (void)completeMoveKeyboardForWindow:(id)window
{
  windowCopy = window;
  if (+[UIKeyboard inputUIOOP])
  {
    v4 = +[UIKeyboard isKeyboardProcess];
    keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    v6 = keyboardArbiterClient;
    if (v4)
    {
      [keyboardArbiterClient completeKeyboardChange];
    }

    else
    {
      [keyboardArbiterClient completeMoveKeyboard];
    }
  }

  else
  {
    v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v6 completeMoveKeyboardForWindow:windowCopy];
  }
}

- (id)forceCreateKeyboardWindow
{
  keyboardWindow = [(UIKeyboardSceneDelegate *)self keyboardWindow];

  if (!keyboardWindow)
  {
    _windowScene = [(UIKeyboardSceneDelegate *)self _windowScene];
    if (+[UIKeyboard inputUIOOP])
    {
      [(UIKeyboardSceneDelegate *)self updateArbiterClientWithKeyboardFrame:0 keyboarFrameWithIAV:1 isIAVRelevant:1 showing:_windowScene notifyRemote:*MEMORY[0x1E695F058] forScene:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    else
    {
      v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      [v5 prepareToMoveKeyboard:0 withIAV:1 isIAVRelevant:1 showing:_windowScene notifyRemote:*MEMORY[0x1E695F058] forScene:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }
  }

  return [(UIKeyboardSceneDelegate *)self keyboardWindow];
}

- (void)destroyKeyboardWindowIfNecessary
{
  v9 = +[UIInputViewAnimationStyle animationStyleImmediate];
  _windowScene = [(UIKeyboardSceneDelegate *)self _windowScene];
  inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  v5 = [v9 endPlacementForInputViewSet:inputViews windowScene:_windowScene];

  inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
  v7 = [(UIKeyboardSceneDelegate *)self _showKeyboardWindowForInputViewSet:inputViews2 placement:v5 windowScene:_windowScene];

  if (!v7)
  {
    if (+[UIKeyboard inputUIOOP])
    {
      [(UIKeyboardSceneDelegate *)self updateArbiterClientWithKeyboardFrame:0 keyboarFrameWithIAV:0 isIAVRelevant:1 showing:_windowScene notifyRemote:*MEMORY[0x1E695F058] forScene:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    else
    {
      v8 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      [v8 prepareToMoveKeyboard:0 withIAV:0 isIAVRelevant:1 showing:_windowScene notifyRemote:*MEMORY[0x1E695F058] forScene:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v8 completeMoveKeyboardForWindow:0];
    }
  }
}

- (void)refreshWithLocalMinimumKeyboardHeight:(double)height
{
  scene = [(UIKeyboardSceneDelegate *)self scene];
  v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v6 = [v5 refreshWithLocalMinimumKeyboardHeight:scene forScene:height];

  if (v6)
  {
    [(UIKeyboardSceneDelegate *)self forceReloadInputViews];
  }
}

- (BOOL)minimize
{
  v3 = +[UIInputViewAnimationStyle animationStyleDefault];
  LOBYTE(self) = [(UIKeyboardSceneDelegate *)self minimizeWithAnimationStyle:v3];

  return self;
}

- (BOOL)minimizeWithAnimationStyle:(id)style force:(BOOL)force
{
  forceCopy = force;
  styleCopy = style;
  containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([containerRootController isTransitioning])
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];
    inputViews = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responder];
  }

  else
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  }

  [(UIKeyboardSceneDelegate *)self setKeyWindowSceneInputViews:inputViews animationStyle:styleCopy];
  if (forceCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__UIKeyboardSceneDelegate_minimizeWithAnimationStyle_force___block_invoke;
    v12[3] = &unk_1E7108360;
    v12[4] = self;
    [(UIKeyboardSceneDelegate *)self performMultipleOperations:v12 withAnimationStyle:styleCopy];
  }

  if (![(UIKeyboardSceneDelegate *)self shouldSuppressInputAssistantUpdates])
  {
    systemInputAssistantViewController = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    [systemInputAssistantViewController dismissEmojiSearch];
  }

  return 1;
}

void __60__UIKeyboardSceneDelegate_minimizeWithAnimationStyle_force___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = +[UIInputViewSetPlacementOffScreenDown placement];
  if ([*(a1 + 32) hideSystemInputAssistantView])
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) systemInputAssistantViewController];
    v6 = [v5 shouldBeShownForInputDelegate:0 inputViews:0];

    v4 = v6 ^ 1;
  }

  v7 = [v13 inputViewSet];
  v8 = [v7 isCustomInputView];

  if (v8)
  {
    v9 = off_1E70E9B50;
  }

  else if (((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1) | v4 & 1)
  {
    v10 = [v13 inputViewSet];
    v11 = [v10 inputAccessoryView];

    if (!v11)
    {
      goto LABEL_11;
    }

    v9 = off_1E70E9AF8;
  }

  else
  {
    v9 = off_1E70E9B00;
  }

  v12 = [(__objc2_class *)*v9 placement];

  v3 = v12;
LABEL_11:
  [v13 setPlacement:v3];
}

- (BOOL)maximizeWithAnimation:(BOOL)animation
{
  if (animation)
  {
    +[UIInputViewAnimationStyle animationStyleDefault];
  }

  else
  {
    +[UIInputViewAnimationStyle animationStyleImmediate];
  }
  v4 = ;
  v5 = [(UIKeyboardSceneDelegate *)self maximizeWithAnimationStyle:v4];

  return v5;
}

- (BOOL)maximizeWithAnimationStyle:(id)style force:(BOOL)force
{
  forceCopy = force;
  styleCopy = style;
  [(UIKeyboardSceneDelegate *)self setHideSystemInputAssistantView:0];
  containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([containerRootController isTransitioning])
  {
    responder = [(UIKeyboardSceneDelegate *)self responder];
    inputViews = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responder];
  }

  else
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
  }

  [(UIKeyboardSceneDelegate *)self setKeyWindowSceneInputViews:inputViews animationStyle:styleCopy];
  if (forceCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__UIKeyboardSceneDelegate_maximizeWithAnimationStyle_force___block_invoke;
    v11[3] = &unk_1E7108360;
    v11[4] = self;
    [(UIKeyboardSceneDelegate *)self performMultipleOperations:v11 withAnimationStyle:styleCopy];
  }

  return 1;
}

void __60__UIKeyboardSceneDelegate_maximizeWithAnimationStyle_force___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = [v7 inputViewSet];
    [v3 refreshPresentation];
  }

  v4 = [v7 inputViewSet];
  v5 = [*(a1 + 32) scene];
  v6 = [UIPeripheralHost endPlacementForInputViewSet:v4 windowScene:v5];

  [v7 setRotationAwarePlacement:v6];
}

- (id)_placementForDeactivatedKeyboard:(BOOL)keyboard currentPlacement:(id)placement forSuppressionAssertion:(BOOL)assertion wantsAssistant:(BOOL)assistant keepAccessories:(BOOL)accessories
{
  accessoriesCopy = accessories;
  assistantCopy = assistant;
  assertionCopy = assertion;
  keyboardCopy = keyboard;
  v42[1] = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  nextAnimationStyle = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  if (keyboardCopy)
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    inputAccessoryView = [inputViews inputAccessoryView];

    if (assertionCopy && !accessoriesCopy || (NSClassFromString(&cfstr_Uiwebformacces.isa), (objc_opt_isKindOfClass() & 1) != 0))
    {

      goto LABEL_6;
    }

    if (!inputAccessoryView)
    {
LABEL_6:
      if ([placementCopy isFloating])
      {
        subPlacements = [placementCopy subPlacements];
        v17 = [subPlacements count];

        if (v17)
        {
          subPlacements2 = [placementCopy subPlacements];
          v19 = [subPlacements2 objectAtIndexedSubscript:0];

          v20 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v19];
          v42[0] = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
          [placementCopy setSubPlacements:v21];
        }

        if (!assistantCopy)
        {
          placement = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:placementCopy];
LABEL_22:
          v29 = placement;
          goto LABEL_23;
        }
      }

      else if (!assistantCopy)
      {
        v30 = UIInputViewSetPlacementOffScreenDown;
        goto LABEL_21;
      }

      v30 = UIInputViewSetPlacementAssistantOnScreen;
LABEL_21:
      placement = [(__objc2_class *)v30 placement];
      goto LABEL_22;
    }

    if ([placementCopy isFloatingAssistantView])
    {
      placement2 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:placementCopy];
    }

    else
    {
      if (assistantCopy)
      {
        v34 = UIInputViewSetPlacementAssistantOnScreen;
      }

      else
      {
        v34 = UIInputViewSetPlacementAccessoryOnScreen;
      }

      placement2 = [(__objc2_class *)v34 placement];
    }

    v29 = placement2;
  }

  else
  {
    v23 = +[UIWindow _applicationKeyWindow];
    firstResponder = [v23 firstResponder];

    if (assertionCopy)
    {
      responder = [(UIKeyboardSceneDelegate *)self responder];

      if (responder == firstResponder)
      {
        [firstResponder reloadInputViews];
      }
    }

    self->_dontNeedAssistantBar = 1;
    responder2 = [(UIKeyboardSceneDelegate *)self responder];
    v27 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responder2];

    self->_dontNeedAssistantBar = 0;
    scene = [(UIKeyboardSceneDelegate *)self scene];
    v29 = [nextAnimationStyle endPlacementForInputViewSet:v27 windowScene:scene];
  }

LABEL_23:
  v32 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 67109890;
    v35[1] = keyboardCopy;
    v36 = 2112;
    v37 = placementCopy;
    v38 = 1024;
    v39 = assertionCopy;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEFAULT, "_placementForDeactivatedKeyboard, deactivated: %d, curPlacement: %@, forSuppressionAssertion: %d -> %@", v35, 0x22u);
  }

  return v29;
}

- (void)forceOrderInAutomaticFromDirection:(int)direction withDuration:(double)duration
{
  v5 = *&direction;
  [(UIKeyboardSceneDelegate *)self createAutomaticKeyboardIfNeeded];
  v7 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:duration > 0.0 duration:v5 outDirection:duration];
  [v7 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderInWithAnimationStyle:v7];
}

- (void)forceOrderOutAutomaticToDirection:(int)direction withDuration:(double)duration
{
  v5 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:duration > 0.0 duration:*&direction outDirection:?];
  [v5 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderOutWithAnimationStyle:v5];
}

- (void)forceOrderInAutomaticAnimated:(BOOL)animated
{
  v4 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:animated];
  [v4 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderInWithAnimationStyle:v4];
}

- (void)forceOrderOutAutomaticAnimated:(BOOL)animated
{
  v4 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:animated];
  [v4 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderOutWithAnimationStyle:v4];
}

- (void)forceOrderOutAutomaticExceptAccessoryView
{
  if ([(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
  {
    nextAnimationStyle = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:[(UIKeyboardSceneDelegate *)self animationsEnabled]];
    if (!nextAnimationStyle)
    {
      nextAnimationStyle = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
    }

    v11 = nextAnimationStyle;
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    inputAccessoryView = [inputViews inputAccessoryView];

    if (inputAccessoryView)
    {
      inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
      inputAccessoryView2 = [inputViews2 inputAccessoryView];
      v8 = [UIInputViewSet inputSetWithInputView:0 accessoryView:inputAccessoryView2];

      inputViews3 = [(UIKeyboardSceneDelegate *)self inputViews];
      accessoryViewController = [inputViews3 accessoryViewController];
      [v8 setAccessoryViewController:accessoryViewController];
    }

    else
    {
      v8 = +[UIInputViewSet emptyInputSet];
    }

    [(UIKeyboardSceneDelegate *)self setInputViews:v8 animationStyle:v11];
  }
}

- (void)orderInWithAnimationStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    styleCopy = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  }

  v22 = styleCopy;
  responder = [(UIKeyboardSceneDelegate *)self responder];

  if (responder)
  {
    responder2 = [(UIKeyboardSceneDelegate *)self responder];
    v7 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responder2];
  }

  else
  {
    systemInputAssistantViewController = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    view = [systemInputAssistantViewController view];
    v7 = [UIInputViewSet inputSetWithKeyboardAndAccessoryView:0 assistantView:view];

    responder2 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    LODWORD(view) = [responder2 shouldBeShownForInputDelegate:0 inputViews:v7];
    systemInputAssistantViewController2 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    view2 = [systemInputAssistantViewController2 view];
    [view2 setHidden:view ^ 1];
  }

  keyboard = [v7 keyboard];

  if (keyboard)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    window = [v13 window];
    if (window)
    {
      containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
      v16 = containerWindow;
      if (window == containerWindow)
      {
      }

      else
      {
        keyboardWindow = [(UIKeyboardSceneDelegate *)self keyboardWindow];

        if (window != keyboardWindow)
        {

          goto LABEL_16;
        }
      }
    }

    textInputTraits = [v13 textInputTraits];
    keyboardType = [textInputTraits keyboardType];

    if (keyboardType == 127)
    {
      textInputTraits2 = [v13 textInputTraits];
      [textInputTraits2 setKeyboardType:0];
    }

    v21 = +[UIKeyboardImpl sharedInstance];
    [v21 updateLayoutIfNeeded];
  }

  [(UIKeyboardSceneDelegate *)self setInputViews:v7 animationStyle:v22];
LABEL_16:
}

- (void)orderOutWithAnimationStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    styleCopy = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  }

  v6 = styleCopy;
  v5 = +[UIInputViewSet emptyInputSet];
  [(UIKeyboardSceneDelegate *)self setInputViews:v5 animationStyle:v6];
}

- (void)_setIgnoresPinning:(BOOL)pinning allowImmediateReload:(BOOL)reload
{
  if (self->_ignoresPinning != pinning)
  {
    self->_ignoresPinning = pinning;
    if (pinning && reload)
    {
      postPinningReloadState = self->_postPinningReloadState;
      if (postPinningReloadState)
      {
        responderToReload = [(UIInputViewPostPinningReloadState *)postPinningReloadState responderToReload];
        [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:responderToReload];
      }
    }
  }
}

- (void)_clearPinningResponders
{
  [(NSMutableSet *)self->_pinningResponders removeAllObjects];
  postPinningReloadState = self->_postPinningReloadState;
  self->_postPinningReloadState = 0;
}

- (void)_beginPinningInputViewsOnBehalfOfResponder:(id)responder
{
  pinningResponders = self->_pinningResponders;
  responderCopy = responder;
  [(NSMutableSet *)pinningResponders addObject:responderCopy];
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 keyboardSceneDelegate:self startedPinningInputViewsOnBehalfOfResponder:responderCopy];
}

- (void)_stopPinningInputViewsOnBehalfOfResponder:(id)responder
{
  responderCopy = responder;
  v4 = [(NSMutableSet *)self->_pinningResponders count];
  v5 = responderCopy;
  if (v4)
  {
    [(NSMutableSet *)self->_pinningResponders removeObject:responderCopy];
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 keyboardSceneDelegate:self stoppedPinningInputViewsOnBehalfOfResponder:responderCopy];

    v7 = [(NSMutableSet *)self->_pinningResponders count];
    v5 = responderCopy;
    if (!v7)
    {
      postPinningReloadState = self->_postPinningReloadState;
      if (postPinningReloadState)
      {
        responderToReload = [(UIInputViewPostPinningReloadState *)postPinningReloadState responderToReload];
        waitingForInputUI = [(UIKeyboardSceneDelegate *)self waitingForInputUI];
        clearWaitingForInputUIIfNeeded = [(UIKeyboardSceneDelegate *)self clearWaitingForInputUIIfNeeded];
        [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:responderToReload];
        if (clearWaitingForInputUIIfNeeded && waitingForInputUI)
        {
          [(UIKeyboardSceneDelegate *)self setWaitingForInputUI:waitingForInputUI];
        }

        v12 = self->_postPinningReloadState;
        self->_postPinningReloadState = 0;

        v5 = responderCopy;
      }
    }
  }
}

+ (void)_pinInputViewsForKeyboardSceneDelegate:(id)delegate onBehalfOfResponder:(id)responder duringBlock:(id)block
{
  delegateCopy = delegate;
  responderCopy = responder;
  if (delegateCopy && responderCopy)
  {
    blockCopy = block;
    [delegateCopy _beginPinningInputViewsOnBehalfOfResponder:responderCopy];
    blockCopy[2](blockCopy);

    [delegateCopy _stopPinningInputViewsOnBehalfOfResponder:responderCopy];
  }

  else
  {
    v9 = *(block + 2);
    blockCopy2 = block;
    v9();
  }
}

- (BOOL)pinningPreventsInputViews:(id)views
{
  viewsCopy = views;
  if ([(NSMutableSet *)self->_pinningResponders count]&& !self->_ignoresPinning)
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    v5 = [inputViews isStrictSupersetOfViewSet:viewsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isTrackingResponder:(id)responder
{
  postPinningReloadState = self->_postPinningReloadState;
  responderCopy = responder;
  if (postPinningReloadState)
  {
    [(UIInputViewPostPinningReloadState *)postPinningReloadState responderToReload];
  }

  else
  {
    [(UIKeyboardSceneDelegate *)self responder];
  }
  v6 = ;

  return v6 == responderCopy;
}

- (void)addTrackingElement:(id)element
{
  v15 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  if (!self->_trackingElements)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    trackingElements = self->_trackingElements;
    self->_trackingElements = weakObjectsHashTable;
  }

  v7 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(NSHashTable *)self->_trackingElements count];
    v9 = 134218498;
    v10 = v8;
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2048;
    v14 = elementCopy;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "Tracking elements: Adding new tracking element [%lu current elements]: <%@: %p>", &v9, 0x20u);
  }

  [(NSHashTable *)self->_trackingElements addObject:elementCopy];
}

- (void)removeTrackingElement:(id)element
{
  v13 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  v5 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSHashTable *)self->_trackingElements count];
    v7 = 134218498;
    v8 = v6;
    v9 = 2112;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = elementCopy;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Tracking elements: Removing tracking element [%lu current elements]: <%@: %p>", &v7, 0x20u);
  }

  [(NSHashTable *)self->_trackingElements removeObject:elementCopy];
}

- (void)updateTrackingElementsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSHashTable *)self->_trackingElements count])
  {
    v6 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(NSHashTable *)self->_trackingElements count];
      v25.width = width;
      v25.height = height;
      v14 = NSStringFromCGSize(v25);
      *buf = 134218242;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "Tracking elements: Updating %lu elements for size: %@>", buf, 0x16u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_trackingElements copy];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 keyboardIsChangingSize:{width, height}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)updateTrackingElementsForOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSHashTable *)self->_trackingElements count])
  {
    v6 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(NSHashTable *)self->_trackingElements count];
      v25.horizontal = horizontal;
      v25.vertical = vertical;
      v14 = NSStringFromUIOffset(v25);
      *buf = 134218242;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "Tracking elements: Updating %lu elements for offset: %@>", buf, 0x16u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_trackingElements copy];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 keyboardIsChangingOffset:{horizontal, vertical}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)addVisibilityObserver:(id)observer
{
  observerCopy = observer;
  visibilityObservers = self->_visibilityObservers;
  v8 = observerCopy;
  if (!visibilityObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_visibilityObservers;
    self->_visibilityObservers = weakObjectsHashTable;

    observerCopy = v8;
    visibilityObservers = self->_visibilityObservers;
  }

  [(NSHashTable *)visibilityObservers addObject:observerCopy];
}

- (void)_updateVisibilityObserversWithReset:(BOOL)reset
{
  resetCopy = reset;
  v21 = *MEMORY[0x1E69E9840];
  preservedViewSets = self->_preservedViewSets;
  if (preservedViewSets)
  {
    v5 = [(NSMutableDictionary *)preservedViewSets count]== 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  wantsAssistantWhileSuppressingKeyboard = [v6 wantsAssistantWhileSuppressingKeyboard];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_visibilityObservers;
  v8 = [(NSHashTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = wantsAssistantWhileSuppressingKeyboard ^ 1;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 visibilityDidChange:v10 & v5];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 keyboardSceneDelegate:self inputViewSetVisibilityDidChange:v10 & v5 includedReset:resetCopy];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v13 inputResponderController:self inputViewSetVisibilityDidChange:v10 & v5 includedReset:resetCopy];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [(NSHashTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (BOOL)_preserveMultiDocumentTokenIfNecessary:(id)necessary withId:(id)id reset:(BOOL)reset
{
  resetCopy = reset;
  necessaryCopy = necessary;
  idCopy = id;
  restorableResponder = [necessaryCopy restorableResponder];
  v10 = [restorableResponder conformsToProtocol:&unk_1F0104DB0];

  if (v10)
  {
    v11 = idCopy;
    restorableResponder2 = [necessaryCopy restorableResponder];
    LOBYTE(v10) = objc_opt_respondsToSelector();
    if (v10)
    {
      [restorableResponder2 _preserveFocusWithToken:v11 destructively:resetCopy];
    }
  }

  return v10 & 1;
}

- (BOOL)_restoreMultiDocumentTokenIfNecessary:(id)necessary withId:(id)id
{
  necessaryCopy = necessary;
  idCopy = id;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  restorableResponder = [necessaryCopy restorableResponder];
  v8 = [restorableResponder conformsToProtocol:&unk_1F0104DB0];

  if (v8)
  {
    v9 = idCopy;
    restorableResponder2 = [necessaryCopy restorableResponder];
    if (objc_opt_respondsToSelector())
    {
      v11 = [restorableResponder2 _restoreFocusWithToken:v9];
      *(v21 + 24) = v11;
    }

    else if (objc_opt_respondsToSelector())
    {
      v12 = dispatch_semaphore_create(0);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__UIKeyboardSceneDelegate__restoreMultiDocumentTokenIfNecessary_withId___block_invoke;
      v17[3] = &unk_1E70FF890;
      v19 = &v20;
      v13 = v12;
      v18 = v13;
      [restorableResponder2 _restoreFocusWithToken:v9 completion:v17];
      v14 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v13, v14);
    }
  }

  v15 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v15;
}

- (void)_clearMultiDocumentTokenIfNecessary:(id)necessary withId:(id)id
{
  necessaryCopy = necessary;
  idCopy = id;
  if ([necessaryCopy conformsToProtocol:&unk_1F0104DB0])
  {
    v6 = idCopy;
    v7 = necessaryCopy;
    if (objc_opt_respondsToSelector())
    {
      [v7 _clearToken:v6];
    }
  }
}

- (BOOL)_isPreservedRestorableResponder:(id)responder
{
  v16 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_preservedViewSets allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        restorableResponder = [*(*(&v11 + 1) + 8 * i) restorableResponder];

        if (restorableResponder == responderCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_preserveInputViewsWithId:(id)id animated:(BOOL)animated reset:(BOOL)reset
{
  resetCopy = reset;
  idCopy = id;
  if (![(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
  {
    if ([UIApp _isSpringBoard])
    {
      v8 = +[UIKeyboardImpl activeInstance];
      textInputTraits = [v8 textInputTraits];
      keyboardAppearance = [textInputTraits keyboardAppearance];

      if (keyboardAppearance == 127)
      {
        goto LABEL_28;
      }
    }
  }

  if (!self->_preservedViewSets)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    preservedViewSets = self->_preservedViewSets;
    self->_preservedViewSets = v14;

    if (animated)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!animated)
  {
LABEL_6:
    [(UIKeyboardSceneDelegate *)self _beginDisablingAnimations];
  }

LABEL_7:
  if (idCopy)
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    v12 = inputViews;
    if (inputViews)
    {
      v13 = inputViews;
    }

    else
    {
      v13 = +[UIInputViewSet emptyInputSet];
    }

    v16 = v13;

    inputView = [v16 inputView];
    _inheritedRenderConfig = [inputView _inheritedRenderConfig];
    [v16 setRestorableRenderConfig:_inheritedRenderConfig];

    responder = [(UIKeyboardSceneDelegate *)self responder];
    [v16 setRestorableResponder:responder];

    [v16 setRestoreUsingBecomeFirstResponder:resetCopy ^ 1];
    responder2 = [(UIKeyboardSceneDelegate *)self responder];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      responder3 = [(UIKeyboardSceneDelegate *)self responder];
      [responder3 _tagAsRestorableResponder];
    }

    [(NSMutableDictionary *)self->_preservedViewSets setObject:v16 forKey:idCopy];
    restorableResponder = [v16 restorableResponder];
    responderWithoutAutomaticAppearanceEnabled = self->_responderWithoutAutomaticAppearanceEnabled;

    if (restorableResponder != responderWithoutAutomaticAppearanceEnabled)
    {
      v25 = self->_responderWithoutAutomaticAppearanceEnabled;
      self->_responderWithoutAutomaticAppearanceEnabled = 0;
    }

    inputAccessoryView = [v16 inputAccessoryView];
    _nextResponderOverride = [inputAccessoryView _nextResponderOverride];
    [v16 setAccessoryViewNextResponder:_nextResponderOverride];

    accessoryViewNextResponder = [v16 accessoryViewNextResponder];
    LOBYTE(_nextResponderOverride) = objc_opt_respondsToSelector();

    if (_nextResponderOverride)
    {
      accessoryViewNextResponder2 = [v16 accessoryViewNextResponder];
      [accessoryViewNextResponder2 _tagAsRestorableResponder];
    }

    accessoryViewController = [v16 accessoryViewController];
    _nextResponderOverride2 = [accessoryViewController _nextResponderOverride];
    [v16 setAccessoryControllerNextResponder:_nextResponderOverride2];

    accessoryControllerNextResponder = [v16 accessoryControllerNextResponder];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      accessoryViewController2 = [v16 accessoryViewController];
      [accessoryViewController2 _tagAsRestorableResponder];
    }

    if ([(UIKeyboardSceneDelegate *)self _preserveMultiDocumentTokenIfNecessary:v16 withId:idCopy reset:resetCopy])
    {
      [v16 _forceRestoreUsingBecomeFirstResponder:1];
    }

    [(UIKeyboardSceneDelegate *)self _updateVisibilityObserversWithReset:resetCopy];
  }

  if (resetCopy)
  {
    [(UIKeyboardSceneDelegate *)self setPreservingInputViews:1];
    [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:0];
    [(UIKeyboardSceneDelegate *)self setPreservingInputViews:0];
  }

  if (!animated)
  {
    [(UIKeyboardSceneDelegate *)self _endDisablingAnimations];
  }

LABEL_28:
}

- (void)_restoreInputAccessoryViewOverrideWithId:(id)id
{
  idCopy = id;
  preservedViewSets = self->_preservedViewSets;
  if (preservedViewSets)
  {
    v15 = idCopy;
    v6 = [(NSMutableDictionary *)preservedViewSets count];
    idCopy = v15;
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_preservedViewSets objectForKey:v15];
      v8 = v7;
      if (v7)
      {
        accessoryViewNextResponder = [v7 accessoryViewNextResponder];

        if (accessoryViewNextResponder)
        {
          inputAccessoryView = [v8 inputAccessoryView];
          accessoryViewNextResponder2 = [v8 accessoryViewNextResponder];
          [inputAccessoryView _overrideInputAccessoryViewNextResponderWithResponder:accessoryViewNextResponder2];
        }

        accessoryControllerNextResponder = [v8 accessoryControllerNextResponder];

        if (accessoryControllerNextResponder)
        {
          accessoryViewController = [v8 accessoryViewController];
          accessoryControllerNextResponder2 = [v8 accessoryControllerNextResponder];
          [accessoryViewController _overrideInputAccessoryViewNextResponderWithResponder:accessoryControllerNextResponder2];
        }
      }

      idCopy = v15;
    }
  }
}

- (BOOL)_restoreInputViewsWithId:(id)id animated:(BOOL)animated
{
  idCopy = id;
  preservedViewSets = self->_preservedViewSets;
  if (preservedViewSets && [(NSMutableDictionary *)preservedViewSets count])
  {
    v8 = [(NSMutableDictionary *)self->_preservedViewSets objectForKey:idCopy];
    if (v8 && ([(NSMutableSet *)self->_keysBeingRestored containsObject:idCopy]& 1) == 0)
    {
      keysBeingRestored = self->_keysBeingRestored;
      if (!keysBeingRestored)
      {
        v10 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
        v11 = self->_keysBeingRestored;
        self->_keysBeingRestored = v10;

        keysBeingRestored = self->_keysBeingRestored;
      }

      [(NSMutableSet *)keysBeingRestored addObject:idCopy];
      v12 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      if (!v12 || (v13 = v12, +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 shouldAllowInputViewsRestoredForId:idCopy], v14, v13, (v15 & 1) != 0))
      {
        if (!animated)
        {
          [(UIKeyboardSceneDelegate *)self _beginDisablingAnimations];
        }

        accessoryViewNextResponder = [v8 accessoryViewNextResponder];

        if (accessoryViewNextResponder)
        {
          inputAccessoryView = [v8 inputAccessoryView];
          accessoryViewNextResponder2 = [v8 accessoryViewNextResponder];
          [inputAccessoryView _overrideInputAccessoryViewNextResponderWithResponder:accessoryViewNextResponder2];
        }

        accessoryControllerNextResponder = [v8 accessoryControllerNextResponder];

        if (accessoryControllerNextResponder)
        {
          accessoryViewController = [v8 accessoryViewController];
          accessoryControllerNextResponder2 = [v8 accessoryControllerNextResponder];
          [accessoryViewController _overrideInputAccessoryViewNextResponderWithResponder:accessoryControllerNextResponder2];
        }

        restorableRenderConfig = [v8 restorableRenderConfig];
        [(UIKeyboardSceneDelegate *)self setRestorableRenderConfig:restorableRenderConfig];

        if ([UIApp _isSpringBoard])
        {
          keyboard = [v8 keyboard];

          if (keyboard)
          {
            v24 = +[UIKeyboardImpl activeInstance];
            [v24 updateLayout];
          }
        }

        restorableResponder = [v8 restorableResponder];
        if (restorableResponder)
        {
          v26 = 0;
        }

        else
        {
          responder = [(UIKeyboardSceneDelegate *)self responder];
          inputView = [responder inputView];
          if (inputView)
          {
            v26 = [v8 isCustomInputView] ^ 1;
          }

          else
          {
            v26 = 0;
          }
        }

        if ([v8 restoreUsingBecomeFirstResponder] & 1) != 0 || ((objc_msgSend(v8, "isEmpty") | v26))
        {
          responder4 = 0;
          v35 = 0;
          goto LABEL_32;
        }

        containerRootController = [(UIKeyboardSceneDelegate *)self containerRootController];
        isTransitioning = [containerRootController isTransitioning];

        if (isTransitioning)
        {
          responder2 = [(UIKeyboardSceneDelegate *)self responder];
          if (responder2)
          {
            responder3 = [(UIKeyboardSceneDelegate *)self responder];
            v35 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:responder3];

LABEL_76:
            responder4 = [(UIKeyboardSceneDelegate *)self responder];
            restorableResponder2 = [v8 restorableResponder];
            inputAccessoryView2 = [restorableResponder2 inputAccessoryView];

            if (inputAccessoryView2)
            {
              objc_opt_self();
              ++__disablePromoteDescendantToFirstResponderCount;
            }

            [(UIKeyboardSceneDelegate *)self setTakingSnapshot:0];
            [(UIKeyboardSceneDelegate *)self setRestoringInputViews:1];
            restorableResponder3 = [v8 restorableResponder];
            restorableResponder = self->_restorableResponder;
            self->_restorableResponder = restorableResponder3;

            if (+[UIKeyboard usesInputSystemUI])
            {
              self->_restoringInputViewsAndWaitingForInputUI = 1;
              [(UIKeyboardSceneDelegate *)self setInputViews:v8 animated:0];
            }

            else
            {
              [(UIKeyboardSceneDelegate *)self setInputViews:v8];
            }

            v80 = self->_restorableResponder;
            self->_restorableResponder = 0;

            [(UIKeyboardSceneDelegate *)self setRestoringInputViews:0];
            if (inputAccessoryView2)
            {
              objc_opt_self();
              if (__disablePromoteDescendantToFirstResponderCount)
              {
                --__disablePromoteDescendantToFirstResponderCount;
              }
            }

            accessoryViewNextResponder3 = [v8 accessoryViewNextResponder];
            if (accessoryViewNextResponder3)
            {
              v82 = accessoryViewNextResponder3;
              inputAccessoryView3 = [v8 inputAccessoryView];
              _nextResponderOverride = [inputAccessoryView3 _nextResponderOverride];

              if (!_nextResponderOverride)
              {
                inputAccessoryView4 = [v8 inputAccessoryView];
                accessoryViewNextResponder4 = [v8 accessoryViewNextResponder];
                [inputAccessoryView4 _overrideInputAccessoryViewNextResponderWithResponder:accessoryViewNextResponder4];
              }
            }

            accessoryControllerNextResponder3 = [v8 accessoryControllerNextResponder];

            if (accessoryControllerNextResponder3)
            {
              accessoryViewController2 = [v8 accessoryViewController];
              accessoryControllerNextResponder4 = [v8 accessoryControllerNextResponder];
              [accessoryViewController2 _overrideInputAccessoryViewNextResponderWithResponder:accessoryControllerNextResponder4];
            }

LABEL_32:
            accessoryViewNextResponder5 = [v8 accessoryViewNextResponder];

            if (accessoryViewNextResponder5)
            {
              [v8 setAccessoryViewNextResponder:0];
            }

            restorableResponder4 = [v8 restorableResponder];

            if (!restorableResponder4)
            {
              goto LABEL_64;
            }

            restorableResponder5 = [v8 restorableResponder];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v93 = responder4;
            if (isKindOfClass)
            {
              restorableResponder6 = [v8 restorableResponder];
              if ([restorableResponder6 clearsOnBeginEditing])
              {
LABEL_39:
                [restorableResponder6 setClearsOnBeginEditing:0];
                restorableResponder7 = [v8 restorableResponder];
                _restoreFirstResponder = [restorableResponder7 _restoreFirstResponder];

                restorableResponder8 = [v8 restorableResponder];
                [restorableResponder8 _setShouldEndWritingToolsOnResign:1];

                [restorableResponder6 setClearsOnBeginEditing:1];
                v92 = [(UIKeyboardSceneDelegate *)self _restoreMultiDocumentTokenIfNecessary:v8 withId:idCopy];
                restorableResponder9 = [v8 restorableResponder];
                _responderWindow = [restorableResponder9 _responderWindow];
                v45 = +[UIWindow _applicationKeyWindow];

                if (_responderWindow == v45)
                {
                  v91 = 0;
                }

                else
                {
                  responder5 = [(UIKeyboardSceneDelegate *)self responder];
                  restorableResponder10 = [v8 restorableResponder];
                  v91 = responder5 != restorableResponder10;
                }

                restorableResponder11 = [v8 restorableResponder];
                v53 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:restorableResponder11];
                v90 = [v53 isEqual:v8];

                responder6 = [(UIKeyboardSceneDelegate *)self responder];
                inputView2 = [responder6 inputView];
                v56 = v35;
                if (inputView2)
                {
                  v57 = 1;
                }

                else
                {
                  responder7 = [(UIKeyboardSceneDelegate *)self responder];
                  inputViewController = [responder7 inputViewController];
                  v57 = inputViewController != 0;
                }

                responder8 = [(UIKeyboardSceneDelegate *)self responder];
                restorableResponder12 = [v8 restorableResponder];
                if (responder8 == restorableResponder12)
                {
                  v62 = 0;
                  if ((([v8 isEmpty] | v91) & 1) == 0 && ((v90 ^ 1) & 1) == 0)
                  {
                    v62 = v57 == [v8 isCustomInputView];
                  }
                }

                else
                {
                  v62 = 0;
                }

                responder4 = v93;
                if (v92 || (_restoreFirstResponder & 1) == 0 || v62 || ([v8 restorableResponder], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "isFirstResponder"), v63, !v64))
                {
                  v35 = v56;
                  if (v56)
                  {
                    v66 = _restoreFirstResponder;
                  }

                  else
                  {
                    v66 = 1;
                  }

                  if ((v66 & 1) == 0)
                  {
                    responder9 = [(UIKeyboardSceneDelegate *)self responder];

                    if (v93 == responder9)
                    {
                      [(UIKeyboardSceneDelegate *)self setInputViews:v56];
                    }
                  }
                }

                else
                {
                  restorableResponder13 = [v8 restorableResponder];
                  [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:restorableResponder13];

                  v35 = v56;
                }

                keyboardWindow = [(UIKeyboardSceneDelegate *)self keyboardWindow];
                rootViewController = [keyboardWindow rootViewController];
                [rootViewController updateKeyboardDockViewVisibility];

                [(UIKeyboardSceneDelegate *)self _updateVisibilityObserversWithReset:0];
LABEL_64:
                [(UIKeyboardSceneDelegate *)self setTakingSnapshot:0];

                responder10 = [(UIKeyboardSceneDelegate *)self responder];

                if (!responder10)
                {
                  restorableResponder14 = [v8 restorableResponder];
                  [restorableResponder14 _clearBecomeFirstResponderWhenCapable];

                  v72 = +[UIInputViewSet emptyInputSet];
                  [(UIKeyboardSceneDelegate *)self setInputViews:v72];
                }

                [v8 setRestorableResponder:0];
                [v8 setRestorableRenderConfig:0];
                [(UIKeyboardSceneDelegate *)self setRestorableRenderConfig:0];
                [(NSMutableDictionary *)self->_preservedViewSets removeObjectForKey:idCopy];
                if (!animated)
                {
                  [(UIKeyboardSceneDelegate *)self _endDisablingAnimations];
                }

                [(NSMutableSet *)self->_keysBeingRestored removeObject:idCopy];

                v27 = 1;
                goto LABEL_69;
              }
            }

            restorableResponder6 = 0;
            goto LABEL_39;
          }

          v75 = +[UIInputViewSet emptyInputSet];
        }

        else
        {
          inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
          if (!inputViews)
          {
            v35 = +[UIInputViewSet emptyInputSet];
            responder2 = 0;
            goto LABEL_76;
          }

          v75 = inputViews;
          responder2 = v75;
        }

        v35 = v75;
        goto LABEL_76;
      }

      restorableResponder15 = [v8 restorableResponder];
      isFirstResponder = [restorableResponder15 isFirstResponder];

      if (isFirstResponder)
      {
        restorableResponder16 = [v8 restorableResponder];
        [restorableResponder16 _setShouldEndWritingToolsOnResign:0];

        restorableResponder17 = [v8 restorableResponder];
        [restorableResponder17 resignFirstResponder];
      }

      [(NSMutableSet *)self->_keysBeingRestored removeObject:idCopy];
    }

    v27 = 0;
LABEL_69:

    goto LABEL_70;
  }

  v27 = 0;
LABEL_70:

  return v27;
}

- (int64_t)restorableKeyboardAppearance
{
  if (![(UIResponder *)self->_restorableResponder conformsToProtocol:&unk_1EFE8A8A0])
  {
    return 0;
  }

  v3 = [UITextInputTraits traitsByAdoptingTraits:self->_restorableResponder];
  keyboardAppearance = [v3 keyboardAppearance];

  return keyboardAppearance;
}

- (void)_clearPreservedInputViewsWithId:(id)id clearKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  idCopy = id;
  v7 = [(NSMutableDictionary *)self->_preservedViewSets objectForKey:idCopy];
  restorableResponder = [v7 restorableResponder];
  if (keyboardCopy)
  {
    pinningResponders = self->_pinningResponders;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__UIKeyboardSceneDelegate__clearPreservedInputViewsWithId_clearKeyboard___block_invoke;
    v11[3] = &unk_1E7108388;
    v11[4] = self;
    [(NSMutableSet *)pinningResponders enumerateObjectsUsingBlock:v11];
    if ([(UIKeyboardSceneDelegate *)self isOnScreen])
    {
      if ([(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
      {
        v10 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:0];
        [(UIKeyboardSceneDelegate *)self orderOutWithAnimationStyle:v10];
      }
    }
  }

  [(UIKeyboardSceneDelegate *)self _clearMultiDocumentTokenIfNecessary:restorableResponder withId:idCopy];
  if ([(NSMutableDictionary *)self->_preservedViewSets count])
  {
    [(NSMutableDictionary *)self->_preservedViewSets removeObjectForKey:idCopy];
  }
}

- (void)_clearPreservedInputViewsWithRestorableResponder:(id)responder
{
  responderCopy = responder;
  if ([(NSMutableDictionary *)self->_preservedViewSets count])
  {
    preservedViewSets = self->_preservedViewSets;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__UIKeyboardSceneDelegate__clearPreservedInputViewsWithRestorableResponder___block_invoke;
    v23[3] = &unk_1E71083B0;
    v24 = responderCopy;
    v6 = [(NSMutableDictionary *)preservedViewSets keysOfEntriesPassingTest:v23];
    if ([v6 count])
    {
      v7 = self->_preservedViewSets;
      allObjects = [v6 allObjects];
      [(NSMutableDictionary *)v7 removeObjectsForKeys:allObjects];
    }
  }

  if (self->_containerWindow)
  {
    inputViews = [(UIKeyboardSceneDelegate *)self inputViews];
    inputView = [inputViews inputView];
    _nextResponderOverride = [inputView _nextResponderOverride];

    if (_nextResponderOverride == responderCopy)
    {
      inputViews2 = [(UIKeyboardSceneDelegate *)self inputViews];
      inputView2 = [inputViews2 inputView];
      [inputView2 _clearOverrideNextResponder];
    }

    if (self->_containerWindow)
    {
      inputViews3 = [(UIKeyboardSceneDelegate *)self inputViews];
      inputAccessoryView = [inputViews3 inputAccessoryView];
      _nextResponderOverride2 = [inputAccessoryView _nextResponderOverride];

      if (_nextResponderOverride2 == responderCopy)
      {
        inputViews4 = [(UIKeyboardSceneDelegate *)self inputViews];
        inputAccessoryView2 = [inputViews4 inputAccessoryView];
        [inputAccessoryView2 _clearOverrideNextResponder];
      }
    }
  }

  v19 = self->_preservedViewSets;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__UIKeyboardSceneDelegate__clearPreservedInputViewsWithRestorableResponder___block_invoke_2;
  v21[3] = &unk_1E71083D8;
  v22 = responderCopy;
  v20 = responderCopy;
  [(NSMutableDictionary *)v19 enumerateKeysAndObjectsUsingBlock:v21];
}

BOOL __76__UIKeyboardSceneDelegate__clearPreservedInputViewsWithRestorableResponder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 restorableResponder];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    [v4 setRestorableResponder:0];
    [v4 setAccessoryViewNextResponder:0];
    [v4 setAccessoryControllerNextResponder:0];
  }

  return v5 == v6;
}

void __76__UIKeyboardSceneDelegate__clearPreservedInputViewsWithRestorableResponder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 accessoryViewNextResponder];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    [v8 setAccessoryViewNextResponder:0];
  }

  v6 = [v8 accessoryControllerNextResponder];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    [v8 setAccessoryControllerNextResponder:0];
  }
}

- (void)_removePreservedInputViewSetForInputView:(id)view
{
  viewCopy = view;
  if ([(NSMutableDictionary *)self->_preservedViewSets count])
  {
    preservedViewSets = self->_preservedViewSets;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIKeyboardSceneDelegate__removePreservedInputViewSetForInputView___block_invoke;
    v9[3] = &unk_1E71083B0;
    v10 = viewCopy;
    v6 = [(NSMutableDictionary *)preservedViewSets keysOfEntriesPassingTest:v9];
    if ([v6 count])
    {
      v7 = self->_preservedViewSets;
      allObjects = [v6 allObjects];
      [(NSMutableDictionary *)v7 removeObjectsForKeys:allObjects];
    }
  }
}

BOOL __68__UIKeyboardSceneDelegate__removePreservedInputViewSetForInputView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 inputView];
  v5 = v3 == v4;

  return v5;
}

- (void)_beginPersistingInputAccessoryViewForResponder:(id)responder withId:(id)id
{
  responderCopy = responder;
  idCopy = id;
  if (!self->_persistentInputAccessoryResponders)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    persistentInputAccessoryResponders = self->_persistentInputAccessoryResponders;
    self->_persistentInputAccessoryResponders = v8;
  }

  persistentInputAccessoryResponderOrder = self->_persistentInputAccessoryResponderOrder;
  if (!persistentInputAccessoryResponderOrder)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v12 = self->_persistentInputAccessoryResponderOrder;
    self->_persistentInputAccessoryResponderOrder = v11;

    persistentInputAccessoryResponderOrder = self->_persistentInputAccessoryResponderOrder;
  }

  [(NSMutableArray *)persistentInputAccessoryResponderOrder addObject:idCopy];
  [(NSMutableDictionary *)self->_persistentInputAccessoryResponders setObject:responderCopy forKey:idCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__UIKeyboardSceneDelegate__beginPersistingInputAccessoryViewForResponder_withId___block_invoke;
  v13[3] = &unk_1E70F3590;
  v13[4] = self;
  [(UIKeyboardSceneDelegate *)self performWithAllowingNilResponderReload:v13];
}

void __81__UIKeyboardSceneDelegate__beginPersistingInputAccessoryViewForResponder_withId___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 responder];
  [v1 _reloadInputViewsForResponder:v2];
}

- (void)_endPersistingInputAccessoryViewWithId:(id)id
{
  persistentInputAccessoryResponderOrder = self->_persistentInputAccessoryResponderOrder;
  idCopy = id;
  LODWORD(persistentInputAccessoryResponderOrder) = [(NSMutableArray *)persistentInputAccessoryResponderOrder containsObject:idCopy];
  [(NSMutableArray *)self->_persistentInputAccessoryResponderOrder removeObject:idCopy];
  [(NSMutableDictionary *)self->_persistentInputAccessoryResponders removeObjectForKey:idCopy];

  if (persistentInputAccessoryResponderOrder)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__UIKeyboardSceneDelegate__endPersistingInputAccessoryViewWithId___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [(UIKeyboardSceneDelegate *)self performWithAllowingNilResponderReload:v6];
  }
}

void __66__UIKeyboardSceneDelegate__endPersistingInputAccessoryViewWithId___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 responder];
  [v1 _reloadInputViewsForResponder:v2];
}

- (void)performWithAllowingNilResponderReload:(id)reload
{
  self->_allowNilResponderReload = 1;
  (*(reload + 2))(reload, a2);
  self->_allowNilResponderReload = 0;
}

- (void)setDisableInputBarsForWritingTools:(BOOL)tools
{
  toolsCopy = tools;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setDisableInputBars:toolsCopy];
}

- (void)updateSystemInputAssistantVisibilityAfterHardwareKeyEvent
{
  if ([(UIKeyboardSceneDelegate *)self hideSystemInputAssistantView])
  {
    systemInputAssistantViewController = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    v4 = [systemInputAssistantViewController shouldBeShownForInputDelegate:0 inputViews:0];

    if (v4)
    {
      [(UIKeyboardSceneDelegate *)self setHideSystemInputAssistantView:0];

      [(UIKeyboardSceneDelegate *)self minimize];
    }
  }
}

- (BOOL)enhancedWindowingModeIsAvailable
{
  scene = [(UIKeyboardSceneDelegate *)self scene];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)visualModeManager:(id)manager didChangeToMode:(int)mode
{
  v12 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = managerCopy;
    v10 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "VisualModeManager %@ didChangeToMode %u, reloading keyboard", &v8, 0x12u);
  }

  [(UIKeyboardSceneDelegate *)self forceReloadInputViews];
}

- (void)visualModeManager:(id)manager observedEnhancedWindowingModeEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  v16 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = managerCopy;
    v14 = 1024;
    v15 = changeCopy;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "VisualModeManager %@ observedEnhancedWindowingModeEnabledDidChange %d", &v12, 0x12u);
  }

  scene = [(UIKeyboardSceneDelegate *)self scene];
  activationState = [scene activationState];

  if (activationState == 1)
  {
    v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    scene2 = [(UIKeyboardSceneDelegate *)self scene];
    [v10 setKeyboardSceneIdentifierEnteringForegroundForScene:scene2];
  }
}

- (BOOL)showingAccessoryViewOnly
{
  v21 = *MEMORY[0x1E69E9840];
  containerWindow = [(UIKeyboardSceneDelegate *)self containerWindow];
  rootViewController = [containerWindow rootViewController];
  inputViewSet = [rootViewController inputViewSet];
  inputViewSet2 = [rootViewController inputViewSet];
  inputAccessoryView = [inputViewSet2 inputAccessoryView];
  if (inputAccessoryView)
  {
    inputViewSet3 = [rootViewController inputViewSet];
    v8 = [inputViewSet3 isInputAccessoryViewPlaceholder] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  keyboardWindow = [v9 keyboardWindow];

  rootViewController2 = [keyboardWindow rootViewController];
  inputViewSet4 = [rootViewController2 inputViewSet];
  if (inputViewSet4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16[0] = 67109634;
    v16[1] = v13;
    v17 = 2112;
    v18 = inputViewSet;
    v19 = 2112;
    v20 = inputViewSet4;
    _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "showingAccessoryViewOnly %d - tewIVS: %@, rkwIVS: %@", v16, 0x1Cu);
  }

  return v13;
}

- (BOOL)expectedInputViewSetIsCustom
{
  v19 = *MEMORY[0x1E69E9840];
  responder = [(UIKeyboardSceneDelegate *)self responder];
  inputViewController = [responder inputViewController];
  if (inputViewController)
  {
  }

  else
  {
    responder2 = [(UIKeyboardSceneDelegate *)self responder];
    inputView = [responder2 inputView];
    [inputView frame];
    v8 = v7;

    if (v8 <= 0.0)
    {
      return 0;
    }
  }

  v9 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    responder3 = [(UIKeyboardSceneDelegate *)self responder];
    inputViewController2 = [responder3 inputViewController];
    responder4 = [(UIKeyboardSceneDelegate *)self responder];
    inputView2 = [responder4 inputView];
    v15 = 138412546;
    v16 = inputViewController2;
    v17 = 2112;
    v18 = inputView2;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "expectedInputViewSetIsCustom: vc: %@ v: %@", &v15, 0x16u);
  }

  return 1;
}

- (BOOL)expectedInputModeIsSpecialized
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  isSpecializedInputMode = [currentInputMode isSpecializedInputMode];

  if (isSpecializedInputMode)
  {
    v5 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode2 = [v7 currentInputMode];
      v9 = 138412290;
      v10 = currentInputMode2;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "expectedInputModeIsSpecialized: %@", &v9, 0xCu);
    }
  }

  return isSpecializedInputMode;
}

- (BOOL)textEntryFocusOnExternalDisplay
{
  scene = [(UIKeyboardSceneDelegate *)self scene];
  screen = [scene screen];
  _isEmbeddedScreen = [screen _isEmbeddedScreen];

  return _isEmbeddedScreen ^ 1;
}

- (void)_windowHostingScene:(id)scene didMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v14 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  toScreenCopy = toScreen;
  v9 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = sceneCopy;
    v12 = 2112;
    v13 = toScreenCopy;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Reload for scene: (%@) did move to screen %@", &v10, 0x16u);
  }

  [(UIKeyboardSceneDelegate *)self forceReloadInputViews];
}

- (BOOL)showingInAppWindow
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  compactAssistantBarPersistentLocation = [preferencesActions compactAssistantBarPersistentLocation];

  return (compactAssistantBarPersistentLocation & 4) == 0;
}

- (BOOL)keyboardVisible
{
  keyboardArbiterClient = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
  keyboardVisible = [keyboardArbiterClient keyboardVisible];

  return keyboardVisible;
}

- (void)setHardwareKeyboardExclusivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_hardwareKeyboardExclusivityIdentifier != identifierCopy && (_UIApplicationIsFirstPartyStickers() & 1) == 0)
  {
    objc_storeStrong(&self->_hardwareKeyboardExclusivityIdentifier, identifier);
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 hardwareKeyboardAvailabilityChanged];

    v6 = +[UIKeyboardImpl activeInstance];
    inputDelegate = [v6 inputDelegate];

    if (inputDelegate)
    {
      if (identifierCopy || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v9 = objc_claimAutoreleasedReturnValue(), -[UIKeyboardSceneDelegate responder](self, "responder"), v10 = objc_claimAutoreleasedReturnValue(), [v9 _trackInputModeIfNecessary:v10], v10, v9, +[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "inputModeContextIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
      {
        v8 = +[UIKeyboardImpl activeInstance];
        [v8 recomputeActiveInputModesWithExtensions:1];
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIHardwareKeyboardExclusivityIdentifierChangedNotification" object:self];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end