@interface UIKeyboardSceneDelegate
+ (id)activeKeyboardSceneDelegate;
+ (id)applicationConnectedWindowScenes;
+ (id)automaticKeyboardArbiterClient;
+ (int64_t)interfaceOrientation;
+ (void)_pinInputViewsForKeyboardSceneDelegate:(id)a3 onBehalfOfResponder:(id)a4 duringBlock:(id)a5;
+ (void)initialize;
+ (void)logInterfaceOrientation:(int64_t)a3 withDescription:(id)a4;
+ (void)performOnControllers:(id)a3;
+ (void)setInterfaceOrientation:(int64_t)a3;
- (BOOL)_hasPostPinningReloadState;
- (BOOL)_isPreservedRestorableResponder:(id)a3;
- (BOOL)_isTrackingResponder:(id)a3;
- (BOOL)_keepInputSession;
- (BOOL)_preserveMultiDocumentTokenIfNecessary:(id)a3 withId:(id)a4 reset:(BOOL)a5;
- (BOOL)_restoreInputViewsWithId:(id)a3 animated:(BOOL)a4;
- (BOOL)_restoreMultiDocumentTokenIfNecessary:(id)a3 withId:(id)a4;
- (BOOL)_showKeyboardWindowForInputViewSet:(id)a3 placement:(id)a4 windowScene:(id)a5;
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
- (BOOL)isWaitingForInputUI:(id)a3;
- (BOOL)keyboardVisible;
- (BOOL)maximizeWithAnimation:(BOOL)a3;
- (BOOL)maximizeWithAnimationStyle:(id)a3 force:(BOOL)a4;
- (BOOL)minimize;
- (BOOL)minimizeWithAnimationStyle:(id)a3 force:(BOOL)a4;
- (BOOL)pinningPreventsInputViews:(id)a3;
- (BOOL)requiresRemoteIAVInfo;
- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)a3;
- (BOOL)showingAccessoryViewOnly;
- (BOOL)showingInAppWindow;
- (BOOL)showingKeyboard;
- (BOOL)showingKeyboardForInputViewSet:(id)a3;
- (BOOL)textEntryFocusOnExternalDisplay;
- (CGRect)frameForLayoutGuideInView:(id)a3;
- (CGRect)visibleFrameInView:(id)a3;
- (CGRect)visibleInputViewFrameInView:(id)a3;
- (UIInputViewSet)inputViews;
- (UIInputWindowController)containerRootController;
- (UIKeyboardSceneDelegate)initWithScene:(id)a3;
- (UIScene)_scene;
- (UIView)containerView;
- (UIWindow)keyWindowCandidate;
- (UIWindowScene)scene;
- (double)verticalOverlapForView:(id)a3 usingKeyboardInfo:(id)a4;
- (id)_delegateAsResponder;
- (id)_inputViewsForResponder:(id)a3;
- (id)_inputViewsForResponder:(id)a3 withAutomaticKeyboard:(BOOL)a4 force:(BOOL)a5;
- (id)_placementForDeactivatedKeyboard:(BOOL)a3 currentPlacement:(id)a4 forSuppressionAssertion:(BOOL)a5 wantsAssistant:(BOOL)a6 keepAccessories:(BOOL)a7;
- (id)_renderConfigForResponder:(id)a3 traitCollection:(id)a4;
- (id)_responderDescriptionForLogging:(id)a3;
- (id)_sessionIdentifier;
- (id)_simpleViewDescriptionForLogging:(id)a3;
- (id)_windowScene;
- (id)containerWindowForViewService:(BOOL)a3;
- (id)forceCreateKeyboardWindow;
- (id)keyboardScreen;
- (id)keyboardTrackingProvider;
- (id)keyboardWindow;
- (id)nextAnimationStyle:(BOOL)a3;
- (id)passthroughViews;
- (id)remoteHostInputViewSet:(id)a3;
- (id)systemInputAssistantViewControllerForResponder:(id)a3;
- (id)trackingElementCoordinator;
- (int)_endIgnoringReloadInputViews;
- (int64_t)_preferredAppearanceForResponder:(id)a3;
- (int64_t)restorableKeyboardAppearance;
- (void)_beginDisablingAnimations;
- (void)_beginIgnoringReloadInputViews;
- (void)_beginPersistingInputAccessoryViewForResponder:(id)a3 withId:(id)a4;
- (void)_beginPinningInputViewsOnBehalfOfResponder:(id)a3;
- (void)_clearMultiDocumentTokenIfNecessary:(id)a3 withId:(id)a4;
- (void)_clearPinningResponders;
- (void)_clearPreservedInputViewsWithId:(id)a3 clearKeyboard:(BOOL)a4;
- (void)_clearPreservedInputViewsWithRestorableResponder:(id)a3;
- (void)_deviceWillLock:(id)a3;
- (void)_endDisablingAnimations;
- (void)_endPersistingInputAccessoryViewWithId:(id)a3;
- (void)_performPostWaitingForInputUIBlocks;
- (void)_preserveInputViewsWithId:(id)a3 animated:(BOOL)a4 reset:(BOOL)a5;
- (void)_reloadInputViewsForKeyWindowSceneResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5;
- (void)_reloadInputViewsForResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5;
- (void)_reloadInputViewsForWindowSceneResponder:(id)a3 force:(BOOL)a4;
- (void)_removePreservedInputViewSetForInputView:(id)a3;
- (void)_restoreInputAccessoryViewOverrideWithId:(id)a3;
- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)_setIgnoresPinning:(BOOL)a3 allowImmediateReload:(BOOL)a4;
- (void)_stopPinningInputViewsOnBehalfOfResponder:(id)a3;
- (void)_updateContainerWindowLevel;
- (void)_updateTextInputSession;
- (void)_updateVisibilityObserversWithReset:(BOOL)a3;
- (void)_windowHostingScene:(id)a3 didMoveFromScreen:(id)a4 toScreen:(id)a5;
- (void)addPostWaitingForInputUIBlock:(id)a3;
- (void)addTrackingElement:(id)a3;
- (void)addVisibilityObserver:(id)a3;
- (void)addWindowForTracking:(id)a3;
- (void)cleanDeactivation;
- (void)cleanUpWaitingForInputUI;
- (void)clearAnimationStyleForUserDrivenPresentation;
- (void)completeMoveKeyboardForWindow:(id)a3;
- (void)createAutomaticKeyboardIfNeeded;
- (void)dealloc;
- (void)destroyKeyboardWindowIfNecessary;
- (void)disableInterfaceAutorotation:(BOOL)a3;
- (void)firstResponderDidChange:(id)a3;
- (void)forceOrderInAutomaticAnimated:(BOOL)a3;
- (void)forceOrderInAutomaticFromDirection:(int)a3 withDuration:(double)a4;
- (void)forceOrderOutAutomaticAnimated:(BOOL)a3;
- (void)forceOrderOutAutomaticExceptAccessoryView;
- (void)forceOrderOutAutomaticToDirection:(int)a3 withDuration:(double)a4;
- (void)forceReloadInputViews;
- (void)inputModeChangedForRenderConfig:(id)a3;
- (void)keyboardSceneDelegateWillResume:(id)a3;
- (void)keyboardUIDidChange;
- (void)loadLocalKeyboardForHost:(id)a3;
- (void)orderInWithAnimationStyle:(id)a3;
- (void)orderOutWithAnimationStyle:(id)a3;
- (void)performMultipleOperations:(id)a3 withAnimationStyle:(id)a4;
- (void)performWithAllowingNilResponderReload:(id)a3;
- (void)popAnimationStyle;
- (void)popOrRemoveAnimationStyle:(id)a3;
- (void)prepareForAlongsideTransitionWithContext:(id)a3;
- (void)prepareToMoveKeyboardForInputViewSet:(id)a3 animationStyle:(id)a4;
- (void)pushAnimationStyle:(id)a3;
- (void)refreshKeyboardLayoutGuideEnsuringControllerExists:(BOOL)a3;
- (void)refreshWithLocalMinimumKeyboardHeight:(double)a3;
- (void)registerKeyboardTracker:(id)a3;
- (void)reloadPlacement;
- (void)removeTrackingElement:(id)a3;
- (void)removeWindowFromTracking:(id)a3;
- (void)setDisableInputBarsForWritingTools:(BOOL)a3;
- (void)setHardwareKeyboardExclusivityIdentifier:(id)a3;
- (void)setInputViews:(id)a3;
- (void)setInputViews:(id)a3 animated:(BOOL)a4;
- (void)setInputViews:(id)a3 animationStyle:(id)a4;
- (void)setKeyWindowSceneInputViews:(id)a3 animationStyle:(id)a4;
- (void)setNextAutomaticOrderInDirection:(int)a3 duration:(double)a4;
- (void)setShouldSuppressInputAssistantUpdates:(BOOL)a3;
- (void)setTextEffectsWindowLevelForInputView:(id)a3 responder:(id)a4;
- (void)setUseHostedInstance:(BOOL)a3;
- (void)setWindowLevel:(double)a3 sceneLevel:(double)a4 forResponder:(id)a5;
- (void)setWindowSceneInputViews:(id)a3 animationStyle:(id)a4;
- (void)traitCollectionDidChange;
- (void)updateArbiterClientWithKeyboardFrame:(CGRect)a3 keyboarFrameWithIAV:(CGRect)a4 isIAVRelevant:(BOOL)a5 showing:(BOOL)a6 notifyRemote:(BOOL)a7 forScene:(id)a8;
- (void)updateLightEffectsBackdropAnimated:(BOOL)a3;
- (void)updateLocalKeyboardChanged:(id)a3;
- (void)updateProviderFromRemoteUpdate:(id)a3;
- (void)updateRemoteKeyboardChanged:(id)a3;
- (void)updateRenderConfigForCurrentResponder;
- (void)updateRenderConfigForResponder:(id)a3 traitCollection:(id)a4;
- (void)updateRenderConfigForTraitCollection:(id)a3;
- (void)updateSystemInputAssistantVisibilityAfterHardwareKeyEvent;
- (void)updateTrackingElementsForOffset:(UIOffset)a3;
- (void)updateTrackingElementsForSize:(CGSize)a3;
- (void)visualModeManager:(id)a3 didChangeToMode:(int)a4;
- (void)visualModeManager:(id)a3 observedEnhancedWindowingModeEnabledDidChange:(BOOL)a4;
- (void)window:(id)a3 changedFromLevel:(double)a4 toLevel:(double)a5;
- (void)windowDidBecomeKey:(id)a3;
@end

@implementation UIKeyboardSceneDelegate

- (UIWindowScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (UIInputWindowController)containerRootController
{
  v2 = [(UIKeyboardSceneDelegate *)self containerWindow];
  v3 = [v2 rootViewController];

  return v3;
}

- (BOOL)isOnScreen
{
  v2 = [(UITextEffectsWindow *)self->_containerWindow rootViewController];
  v3 = [v2 isOnScreen];

  return v3;
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
  v2 = [(UIKeyboardSceneDelegate *)self scene];
  v3 = [v2 screen];

  return v3;
}

+ (id)activeKeyboardSceneDelegate
{
  v2 = +[UIWindowScene _keyWindowScene];
  v3 = [v2 keyboardSceneDelegate];

  return v3;
}

- (id)keyboardWindow
{
  if (+[UIKeyboard inputUIOOP])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v3 = [(UIKeyboardSceneDelegate *)self containerWindow];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v3 = [v4 keyboardWindow];
  }

  return v3;
}

- (void)_updateTextInputSession
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 textInputTraits];
  v5 = [v4 isSecureTextEntry];

  v6 = [(UIResponder *)self->_responder _requiresKeyboardWhenFirstResponder];
  if (v5)
  {
    goto LABEL_13;
  }

  v7 = v6;
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

  v4 = [(UIKeyboardSceneDelegate *)self scene];
  v5 = [v4 keyboardSceneDelegate];
  v6 = [v5 useHostedInstance];

  v7 = (v6 & 1) != 0 || [UIApp applicationState] != 2 || +[UIWindow _allWindowsKeepContextInBackground](UIWindow, "_allWindowsKeepContextInBackground");
  return self->_disableAnimationsCount < 1 && v7;
}

+ (int64_t)interfaceOrientation
{
  if ([UIApp _frontMostAppInterfaceOrientationIsSignificant])
  {
    v3 = [UIApp _frontMostAppOrientation];
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
        v6 = v5;
        v3 = [v5 _interfaceOrientation];
        [a1 logInterfaceOrientation:v3 withDescription:@"Using key window scene"];
      }

      else
      {
        v7 = [a1 applicationConnectedWindowScenes];
        if ([v7 count])
        {
          v6 = [v7 anyObject];
          v3 = [v6 _interfaceOrientation];
          [a1 logInterfaceOrientation:v3 withDescription:@"Available non-key window scene"];
        }

        else
        {
          v6 = 0;
          v3 = 0;
        }
      }

      if (!v3)
      {
        goto LABEL_16;
      }

      return v3;
    }

    v3 = __interfaceOrientation;
    v4 = @"Using cache for app with managed window server hosting.";
  }

  [a1 logInterfaceOrientation:v3 withDescription:v4];
  if (!v3)
  {
LABEL_16:
    v3 = [UIApp activeInterfaceOrientation];
    [a1 logInterfaceOrientation:v3 withDescription:@"Fallback case. Using the app's active interface orientation."];
  }

  return v3;
}

- (void)updateRenderConfigForCurrentResponder
{
  v3 = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForResponder:v3];
}

- (id)_windowScene
{
  v3 = [(UIKeyboardSceneDelegate *)self responder];
  v4 = [v3 _responderWindow];
  v5 = [v4 windowScene];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(UIKeyboardSceneDelegate *)self scene];
  }

  v8 = v7;

  return v8;
}

- (UIInputViewSet)inputViews
{
  if (self->_containerWindow)
  {
    if (+[_UIRemoteKeyboards enabled])
    {
      v3 = [(UIKeyboardSceneDelegate *)self visualModeManager];
      v4 = [v3 shouldShowWithinAppWindow];

      if ((v4 & 1) == 0)
      {
        v5 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
        v6 = [v5 rootViewController];
        v7 = [v6 inputViewSet];

        if (v7)
        {
          v8 = [v7 inputView];
          v9 = objc_opt_respondsToSelector();

          if ((v9 & 1) == 0)
          {
            v10 = v7;
            goto LABEL_9;
          }
        }
      }
    }

    v5 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v10 = [v5 inputViewSet];
    v7 = v10;
LABEL_9:
    v11 = [v10 normalizePlaceholders];

    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)enhancedWindowingModeIsEnabled
{
  v2 = [(UIKeyboardSceneDelegate *)self scene];
  v3 = [v2 _enhancedWindowingEnabled];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_220];
    [UIScene _registerSceneComponentClass:a1 withKey:@"_UIKeyboardSceneDelegateSceneComponentKey" predicate:v3];
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
    v3 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v2 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v3 pushAnimationStyle:v2];
  }
}

- (void)_endDisablingAnimations
{
  --self->_disableAnimationsCount;
  if (self->_containerWindow)
  {
    v2 = [(UIKeyboardSceneDelegate *)self containerRootController];
    [v2 popAnimationStyle];
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
  v2 = [(UITextEffectsWindow *)self->_containerWindow rootViewController];
  v3 = [v2 isUndocked];

  return v3;
}

- (id)trackingElementCoordinator
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_trackingElementCoordinator)
  {
    if ([(UIKeyboardSceneDelegate *)self hasTrackingAvailable])
    {
      v3 = [(UIKeyboardSceneDelegate *)self scene];
      if (v3)
      {
        v4 = [(UIKeyboardSceneDelegate *)self existingContainerWindow];

        if (v4)
        {
          v5 = _UIKeyboardSceneDelegateLogger();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = [(UIKeyboardSceneDelegate *)self scene];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v6;
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
          v9 = [(UIKeyboardSceneDelegate *)self scene];
          v10 = [v7 trackingCoordinatorForScene:v9];
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
    v4 = [(UIKeyboardSceneDelegate *)self responder];
    if ([v4 _requiresKeyboardWhenFirstResponder])
    {
      v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v6 = [v5 handlingRemoteEvent];

      if (v6)
      {
        v7 = [(UIKeyboardSceneDelegate *)self inputViews];
        v8 = [(UIKeyboardSceneDelegate *)self responder];
        [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v7 responder:v8];

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

  v10 = [(UIKeyboardSceneDelegate *)self inputViews];
  v11 = [v10 inputAssistantView];
  if (!v11)
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(UIKeyboardSceneDelegate *)self responder];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_14;
  }

  v14 = [(UIKeyboardSceneDelegate *)self responder];
  v15 = [(UIKeyboardSceneDelegate *)self inputViews];
  v16 = [v15 inputAssistantView];
  v17 = [v14 isDescendantOfView:v16];

  if ((v17 & 1) == 0)
  {
LABEL_16:
    self->_keepInputSession = 1;
    v18 = [(UIKeyboardSceneDelegate *)self responder];
    [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:v18 force:1];

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
  v3 = [(UIKeyboardSceneDelegate *)self containerRootController];
  v4 = [v3 view];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIKeyboardSceneDelegate *)self containerWindow];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isKeyboardOnEmbeddedScreen
{
  v2 = [(UIKeyboardSceneDelegate *)self scene];
  v3 = [v2 screen];
  v4 = [v3 _isEmbeddedScreen];

  return v4;
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
      v4 = [(UIKeyboardSceneDelegate *)self responder];
      v5 = [(UIKeyboardSceneDelegate *)self _isPinningInputViewsOnBehalfOfResponder:v4];

      LOBYTE(v2) = v5;
    }
  }

  return v2;
}

- (BOOL)_hasPostPinningReloadState
{
  v2 = [(UIInputViewPostPinningReloadState *)self->_postPinningReloadState responderToReload];
  v3 = v2 != 0;

  return v3;
}

- (id)_delegateAsResponder
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 delegateAsResponder];

  return v3;
}

- (BOOL)hasCustomInputViewController
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(UIKeyboardSceneDelegate *)self responder];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(UIKeyboardSceneDelegate *)self _delegateAsResponder];
    }

    v6 = v5;

    v7 = [v6 inputViewController];
    self->_hasCustomInputViewController = v7 != 0;
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
  v3 = [v2 _sessionIdentifier];

  return v3;
}

- (BOOL)hasVisibleAssistantBar
{
  v2 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
  v3 = [v2 shouldBeShownForInputDelegate:0 inputViews:0];

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
    v4 = [(UIKeyboardSceneDelegate *)self visualModeManager];
    v3 = [v4 windowingModeEnabled] ^ 1;
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

  v3 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
  if (v3)
  {
    v4 = [(TUIKeyboardTrackingProvider *)self->_keyboardTrackingProvider keyboardScene];
    v5 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
    v6 = [v5 windowScene];

    if (v4 != v6)
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
      v8 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
      v9 = [v8 windowScene];

      if (!v9)
      {
        v10 = [(UIKeyboardSceneDelegate *)self existingContainerWindow];
        v9 = [v10 windowScene];
      }

      v11 = _UIKeyboardSceneDelegateLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
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
      v14 = [v12 trackingProviderForKeyboardScene:v9];
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
  v2 = self;
  v3 = [(UIKeyboardSceneDelegate *)self inputViews];
  LOBYTE(v2) = [(UIKeyboardSceneDelegate *)v2 showingKeyboardForInputViewSet:v3];

  return v2;
}

- (void)dealloc
{
  v8[8] = *MEMORY[0x1E69E9840];
  [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant stopEventDeferralPolicyObserver];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"UIWindowDidRotateNotification";
  v8[1] = 0x1EFB921F0;
  v8[2] = @"UIApplicationWillEnterForegroundNotification";
  v8[3] = @"UITextInputCurrentInputModeDidChangeNotification";
  v8[4] = @"UIWindowDidBecomeKeyNotification";
  v8[5] = @"UIWindowDidResignKeyNotification";
  v8[6] = @"UIWindowFirstResponderDidChangeNotification";
  v8[7] = @"UIApplicationProtectedDataWillBecomeUnavailable";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:8];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5 = +[UIPeripheralHost sharedInstance];
  v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [v5 flushDelayedTasksForKey:v6];

  v7.receiver = self;
  v7.super_class = UIKeyboardSceneDelegate;
  [(UIKeyboardSceneDelegate *)&v7 dealloc];
}

- (UIKeyboardSceneDelegate)initWithScene:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = UIKeyboardSceneDelegate;
  v5 = [(UIKeyboardSceneDelegate *)&v27 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
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

    v15 = [[UITextFormattingCoordinator alloc] initWithWindowScene:v4];
    textFormattingCoordinator = v6->_textFormattingCoordinator;
    v6->_textFormattingCoordinator = v15;

    v17 = [MEMORY[0x1E695DF70] array];
    postWaitingForInputUIBlocks = v6->_postWaitingForInputUIBlocks;
    v6->_postWaitingForInputUIBlocks = v17;

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

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v6 selector:sel_keyboardSceneDelegateWillResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v23 addObserver:v6 selector:sel_inputModeChangedForRenderConfig_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
    [v23 addObserver:v6 selector:sel_windowDidBecomeKey_ name:@"UIWindowDidBecomeKeyNotification" object:0];
    [v23 addObserver:v6 selector:sel_windowDidResignKey_ name:@"UIWindowDidResignKeyNotification" object:0];
    [v23 addObserver:v6 selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [v23 addObserver:v6 selector:sel__deviceWillLock_ name:@"UIApplicationProtectedDataWillBecomeUnavailable" object:0];
    if (+[UIKeyboard usesInputSystemUI])
    {
      v24 = objc_alloc_init(UIRemoteInputViewHost);
      remoteInputViewHost = v6->_remoteInputViewHost;
      v6->_remoteInputViewHost = v24;
    }
  }

  return v6;
}

- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  v7 = a3;
  if (a4 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);

    if (WeakRetained)
    {
      [(UIKeyboardSceneDelegate *)self setKeyWindowCandidate:0];
    }
  }

  else if (!a4)
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

- (void)inputModeChangedForRenderConfig:(id)a3
{
  v12 = a3;
  if (pthread_main_np())
  {
    v5 = [(UIKeyboardSceneDelegate *)self responder];

    if (v5)
    {
      v6 = [(UIKeyboardSceneDelegate *)self containerRootController];
      v7 = [v6 view];
      v8 = [v7 _inheritedRenderConfig];

      v9 = [(UIKeyboardSceneDelegate *)self responder];
      v10 = [(UIKeyboardSceneDelegate *)self _renderConfigForResponder:v9 traitCollection:0];

      v11 = [v8 backdropStyle];
      if (v11 != [v10 backdropStyle])
      {
        [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
      }
    }
  }

  else
  {
    [(UIKeyboardSceneDelegate *)self performSelectorOnMainThread:a2 withObject:v12 waitUntilDone:0];
  }
}

- (void)_deviceWillLock:(id)a3
{
  v3 = [(UIKeyboardSceneDelegate *)self responder];
  [v3 _endWritingTools];
}

- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)a3
{
  if (self->_eventDeferralPolicyAssistant)
  {
    eventDeferralPolicyAssistant = self->_eventDeferralPolicyAssistant;

    return [(_UIKBEventDeferralPolicyAssistant *)eventDeferralPolicyAssistant shouldLoadKeySceneInputViewsForResponder:a3];
  }

  else
  {
    v6 = [(UIKeyboardSceneDelegate *)self scene];
    v7 = [v6 _isKeyWindowScene];

    return v7;
  }
}

- (void)keyboardSceneDelegateWillResume:(id)a3
{
  v29 = a3;
  v4 = [(UIKeyboardSceneDelegate *)self scene];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = [(UIKeyboardSceneDelegate *)self responder];
  v6 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v5];

  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = +[UIKeyboardAutomatic activeInstance];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(UIKeyboardSceneDelegate *)self responder];
    v11 = [v10 _requiresKeyboardWhenFirstResponder];

    if (!v11)
    {
      goto LABEL_10;
    }

    v7 = +[UIKeyboardImpl sharedInstance];
    v12 = [(UIKeyboardSceneDelegate *)self responder];
    v13 = [v12 _keyboardResponder];
    [v7 setDelegate:v13];

    v14 = [v7 geometryDelegate];

    if (!v14)
    {
      v15 = +[UIKeyboard activeKeyboard];
      [v7 setGeometryDelegate:v15];
    }

    v16 = [(UIKeyboardSceneDelegate *)self inputViews];
    v17 = [v16 inputViewController];
    v9 = [v17 _compatibilityController];

    [v9 willResume:v29];
    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    v19 = [v18 currentInputMode];
    [v9 setInputMode:v19];
  }

LABEL_10:
  v20 = +[UIKeyboard activeKeyboard];
  if (!v20)
  {
    goto LABEL_17;
  }

  v4 = v20;
  v21 = [(UIKeyboardSceneDelegate *)self responder];
  if (v21)
  {
    v22 = v21;
    v23 = [(UIKeyboardSceneDelegate *)self responder];
    v24 = v23;
    if (v23 == self->_responderWithoutAutomaticAppearanceEnabled)
    {
      v25 = +[UIKeyboard activeKeyboard];
      v26 = [(UIKeyboardSceneDelegate *)self inputViews];
      v27 = [v26 inputView];

      if (v25 == v27)
      {
        goto LABEL_17;
      }

      v28 = [(UIKeyboardSceneDelegate *)self responder];
      [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:v28];

      v4 = +[UIKeyboard activeKeyboard];
      [v4 updateLayout];
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
  v2 = [UIApp connectedScenes];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
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

+ (void)setInterfaceOrientation:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (__interfaceOrientation != a3)
  {
    v4 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [UIApplication stringForInterfaceOrientation:a3];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Interface Orientation: Setting cached interface orientation to: %@", &v6, 0xCu);
    }

    __interfaceOrientation = a3;
  }
}

+ (void)logInterfaceOrientation:(int64_t)a3 withDescription:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (__lastLoggedInterfaceOrientation != a3)
  {
    v6 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [UIApplication stringForInterfaceOrientation:__lastLoggedInterfaceOrientation];
      v8 = [UIApplication stringForInterfaceOrientation:a3];
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "[Interface Orientation] was:%@ now:%@ reason:%@", &v9, 0x20u);
    }

    __lastLoggedInterfaceOrientation = a3;
  }
}

+ (void)performOnControllers:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
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

        v11 = [*(*(&v21 + 1) + 8 * v10) keyboardSceneDelegate];
        if (v11)
        {
          [v5 addObject:v11];
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

        v3[2](v3, *(*(&v17 + 1) + 8 * v16++));
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
    v5 = [(UIKeyboardSceneDelegate *)self scene];
    [v4 setDeactivatedKeyboard:0 forScene:v5];
  }
}

- (void)setUseHostedInstance:(BOOL)a3
{
  hostedUseCount = self->_hostedUseCount;
  if (a3)
  {
    v4 = hostedUseCount + 1;
  }

  else
  {
    v4 = hostedUseCount - 1;
  }

  self->_hostedUseCount = v4;
}

- (id)containerWindowForViewService:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self scene];
  v6 = [v5 session];
  v7 = [v6 role];
  v8 = [v7 isEqualToString:@"_UISceneSessionRoleKeyboard"];

  if (v8)
  {
    v9 = 0;
    goto LABEL_19;
  }

  if (v3)
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
    v15 = [(UIKeyboardSceneDelegate *)self scene];
    v16 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v15 forViewService:v3];
    goto LABEL_13;
  }

  v12 = +[UIWindowScene _keyWindowScene];
  v13 = [(UIWindowScene *)v12 _keyWindow];
  v14 = [v13 _isHostedInAnotherProcess];

  if (v14)
  {
    goto LABEL_10;
  }

LABEL_12:
  v15 = [(UIKeyboardSceneDelegate *)self scene];
  v16 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v15 forViewService:v3];
LABEL_13:
  v9 = v16;

  [v9 setHidden:0];
  if (!v11 && v9 && self->_disableAnimationsCount >= 1)
  {
    v17 = 0;
    do
    {
      v18 = [v9 rootViewController];
      v19 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [v18 pushAnimationStyle:v19];

      ++v17;
    }

    while (v17 < self->_disableAnimationsCount);
  }

  objc_storeStrong((&self->super.isa + v10), v9);
LABEL_19:

  return v9;
}

- (void)registerKeyboardTracker:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  trackingElementCoordinator = self->_trackingElementCoordinator;
  if (trackingElementCoordinator)
  {
    [(TUIKeyboardTrackingCoordinator *)trackingElementCoordinator addTracker:v4];
  }

  else
  {
    if (!self->_pendingTrackers)
    {
      v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      pendingTrackers = self->_pendingTrackers;
      self->_pendingTrackers = v6;
    }

    v8 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2048;
      v12 = v4;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "KeyboardTrackingCoordinator: TUIKeyboardTracker registered before coordinator is ready, will add later: <%@:%p>", &v9, 0x16u);
    }

    [(NSHashTable *)self->_pendingTrackers addObject:v4];
  }
}

- (void)updateProviderFromRemoteUpdate:(id)a3
{
  v4 = a3;
  if (![(UIKeyboardSceneDelegate *)self hasTrackingAvailable])
  {
    goto LABEL_24;
  }

  if ([v4 isLocal])
  {
    goto LABEL_24;
  }

  v5 = [v4 sourceBundleIdentifier];

  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [v4 keyboardOnScreen];
  TUIKeyboardStateClass = getTUIKeyboardStateClass();
  if (v6)
  {
    [TUIKeyboardStateClass onscreenState];
  }

  else
  {
    [TUIKeyboardStateClass offscreenState];
  }
  v8 = ;
  if ([v4 isFloating])
  {
    v9 = [getTUIKeyboardStateClass() floatingState];

    v8 = v9;
  }

  [v8 setHasAssistantView:{objc_msgSend(v4, "assistantBarVisible")}];
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
  v12 = [v10 defaultInfo];
  [v12 setShouldAnimate:{objc_msgSend(v4, "animated")}];
  v13 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  [v13 duration];
  [v12 setDuration:?];

  v14 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  [v12 setOptions:{objc_msgSend(v14, "extraOptions")}];

  [v12 setIsLocalKeyboard:0];
  [v4 keyboardPosition];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if ([(UIKeyboardSceneDelegate *)self requiresRemoteIAVInfo])
  {
    [v4 keyboardPositionWithRemoteIAV];
    if (v23 > v22)
    {
      [v4 keyboardPositionWithRemoteIAV];
      v16 = v24;
      v18 = v25;
      v20 = v26;
      v22 = v27;
    }
  }

  if ([v4 hasValidNotification])
  {
    v28 = [v4 notificationInfo];
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v29 = [(UIKeyboardSceneDelegate *)self existingContainerRootController];
  v28 = [v29 remoteNotificationInfo];

  if (v28)
  {
LABEL_18:
    [v28 populateEndInfoWithFrame:{v16, v18, v20, v22}];
    v30 = [v28 userInfo];
    [v12 setNotificationInfo:v30];
  }

LABEL_19:
  v31 = [(UIKeyboardSceneDelegate *)self keyboardTrackingProvider];
  v32 = [v31 keyboardScene];

  if (v32)
  {
    v33 = [v31 keyboardScene];
    v34 = [v33 _coordinateSpace];
    v35 = [(UIKeyboardSceneDelegate *)self keyboardScreen];
    v36 = [v35 coordinateSpace];
    [v34 convertRect:v36 fromCoordinateSpace:{v16, v18, v20, v22}];
    v16 = v37;
    v18 = v38;
    v20 = v39;
    v22 = v40;
  }

  v41 = [v4 animationFence];

  if (v41)
  {
    v42 = [(UIKeyboardSceneDelegate *)self scene];
    v43 = [v4 animationFence];
    [v42 _synchronizeDrawingWithFence:v43];

    [v4 resetAnimationFencing];
  }

  [v31 keyboardWillChangeState:v8 endFrame:v12 animationInfo:{v16, v18, v20, v22}];
  [(UIKeyboardSceneDelegate *)self keyboardUIDidChange];

LABEL_24:
}

- (void)addWindowForTracking:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_trackingElementCoordinator)
  {
    v5 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = v4;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "KeyboardTrackingCoordinator:  Attempting to add window before tracking coordinator is ready, will add later: <%@:%p>", &v7, 0x16u);
    }
  }

  v6 = [(UIKeyboardSceneDelegate *)self trackingElementCoordinator];
  [v6 addTrackingWindow:v4];
}

- (void)removeWindowFromTracking:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self trackingElementCoordinator];
  [v5 removeTrackingWindow:v4];
}

- (id)systemInputAssistantViewControllerForResponder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_systemInputAssistantViewController)
  {
    v6 = [v4 _keyboardResponder];
    if ([v6 conformsToProtocol:&unk_1EFE8B2D0])
    {

LABEL_5:
      v9 = objc_alloc_init(UISystemInputAssistantViewController);
      systemInputAssistantViewController = self->_systemInputAssistantViewController;
      self->_systemInputAssistantViewController = v9;

      v11 = [(UIViewController *)self->_systemInputAssistantViewController view];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

      goto LABEL_6;
    }

    v7 = [v5 _keyboardResponder];
    v8 = [v7 conformsToProtocol:&unk_1F016C7B0];

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

- (void)updateLightEffectsBackdropAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
  v8 = [v5 rootViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 hosting];
    [v6 updateCombinedBackdropViewAnimated:v3 forKeyboardUp:{-[UIKeyboardSceneDelegate showingKeyboard](self, "showingKeyboard")}];
  }

  else
  {
    v6 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v7 = [v6 hosting];
    [v7 updateCombinedBackdropViewAnimated:v3 forKeyboardUp:{-[UIKeyboardSceneDelegate showingKeyboard](self, "showingKeyboard")}];
  }
}

- (BOOL)hasActiveKeyboardResponder
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 inputDelegate];

  if (v4)
  {
    v5 = [(UIKeyboardSceneDelegate *)self responder];
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasNullInputView
{
  v3 = [(UIKeyboardSceneDelegate *)self inputViews];
  v4 = [(UIKeyboardSceneDelegate *)self transientInputViews];
  v5 = v4;
  if (!v4)
  {
    v4 = v3;
  }

  v6 = [v4 isNullInputView];

  return v6;
}

- (CGRect)frameForLayoutGuideInView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [v5 visibleFrame];
  x = v6;
  y = v8;
  width = v10;
  height = v12;

  if (v4)
  {
    v14 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v15 = [v14 _window];
    v16 = [v15 screen];
    v17 = [v16 coordinateSpace];
    v18 = [v4 coordinateSpace];
    [v17 convertRect:v18 toCoordinateSpace:{x, y, width, height}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v4 frame];
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
      [v4 bounds];
      width = v31;
      v32 = [v4 window];
      [v32 insetForDismissedKeyboardGuide];
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

- (CGRect)visibleFrameInView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([v5 isUndocked])
  {

LABEL_4:
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_5;
  }

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v7 = [objc_opt_class() activeKeyboardSceneDelegate];
  v8 = [v6 remoteKeyboardUndocked:v7 != self];

  if (v8)
  {
    goto LABEL_4;
  }

  v17 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [v17 visibleFrame];
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;

  v22 = [v4 window];

  if (v22)
  {
    v23 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v24 = [v23 _window];
    v25 = [v24 screen];
    v26 = [v25 coordinateSpace];
    v27 = [v4 window];
    v28 = [v27 windowScene];
    v29 = [v28 _coordinateSpace];
    [v26 convertRect:v29 toCoordinateSpace:{v9, v10, v11, v12}];
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

- (CGRect)visibleInputViewFrameInView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([v5 isUndocked])
  {

LABEL_4:
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_5;
  }

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v7 = [objc_opt_class() activeKeyboardSceneDelegate];
  v8 = [v6 remoteKeyboardUndocked:v7 != self];

  if (v8)
  {
    goto LABEL_4;
  }

  v17 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [v17 visibleInputViewFrame];
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;

  v22 = [v4 window];

  if (v22)
  {
    v23 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v24 = [v23 _window];
    v25 = [v24 screen];
    v26 = [v25 coordinateSpace];
    v27 = [v4 window];
    v28 = [v27 windowScene];
    v29 = [v28 _coordinateSpace];
    [v26 convertRect:v29 toCoordinateSpace:{v9, v10, v11, v12}];
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

- (double)verticalOverlapForView:(id)a3 usingKeyboardInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  if (UIKeyboardAutomaticIsOnScreen())
  {
    v9 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v10 = [v9 placement];

    v11 = [(UIKeyboardSceneDelegate *)self containerRootController];
    if ([v11 isUndocked])
    {
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    v12 = [(UIKeyboardSceneDelegate *)self inputViews];
    if ([v12 _inputViewIsSplit])
    {
LABEL_13:

      goto LABEL_14;
    }

    v13 = [(UIKeyboardSceneDelegate *)self inputViews];
    v14 = [v13 inputView];
    if (v14 && ![v10 isFloating])
    {
      v17 = 0;
    }

    else
    {
      v15 = [(UIKeyboardSceneDelegate *)self inputViews];
      v16 = [v15 inputAccessoryView];
      v17 = 1;
      if (!v16)
      {
        v23 = 0;
        goto LABEL_21;
      }

      v96 = v16;
      v97 = v15;
    }

    v18 = [v6 _window];
    if (v18)
    {
      v19 = v18;
      v98 = v14;
      v99 = v10;
      v20 = [(UIKeyboardSceneDelegate *)self inputViews];
      v21 = [v20 inputView];
      if (([v6 isDescendantOfView:v21] & 1) == 0)
      {
        v93 = [(UIKeyboardSceneDelegate *)self inputViews];
        [v93 inputAccessoryView];
        v24 = v95 = v13;
        v94 = v17;
        LOBYTE(v17) = [v6 isDescendantOfView:v24];

        v13 = v95;
        v14 = v98;
        v10 = v99;
        v23 = v96;
        v15 = v97;
        if ((v94 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v14 = v98;
      v10 = v99;
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
    v15 = v97;
LABEL_21:

LABEL_22:
    if (v17)
    {
      goto LABEL_15;
    }

    if (v7)
    {
      v25 = [v7 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
      [v25 CGRectValue];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = [(UIKeyboardSceneDelegate *)self scene];
      v35 = [v34 _coordinateSpace];
      v36 = [(UIKeyboardSceneDelegate *)self scene];
      v37 = [v36 screen];
      v38 = [v37 coordinateSpace];
      [v35 convertRect:v38 fromCoordinateSpace:{v27, v29, v31, v33}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = [(UIKeyboardSceneDelegate *)self scene];
      v48 = [v47 _coordinateSpace];
      [v48 convertRect:v6 toCoordinateSpace:{v40, v42, v44, v46}];
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
        [v6 bounds];
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
    if (v57 && ([v6 window], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "_isTextEffectsWindow")))
    {
      v58 = [(UIKeyboardSceneDelegate *)self containerRootController];
      [v58 visibleInputViewFrame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
    }

    else
    {
      v67 = [(UIKeyboardSceneDelegate *)self containerRootController];
      v68 = [v6 window];
      [v67 _visibleFrameInRemoteKeyboardWindow:{objc_msgSend(v68, "_isRemoteKeyboardWindow")}];
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

        v73 = [(UIKeyboardSceneDelegate *)self scene];
        v74 = [v73 _coordinateSpace];
        v75 = [(UIKeyboardSceneDelegate *)self scene];
        v76 = [v75 screen];
        v77 = [v76 coordinateSpace];
        [v74 convertRect:v77 fromCoordinateSpace:{v60, v62, v64, v66}];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;

        v25 = [(UIKeyboardSceneDelegate *)self scene];
        v47 = [v25 _coordinateSpace];
        [v47 convertRect:v6 toCoordinateSpace:{v79, v81, v83, v85}];
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
  v3 = [v2 _layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setWindowLevel:(double)a3 sceneLevel:(double)a4 forResponder:(id)a5
{
  v9 = a5;
  if (+[UIKeyboard inputUIOOP])
  {
    if (!+[UIKeyboard usesInputSystemUI])
    {
      goto LABEL_6;
    }

    v8 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    [(_UIKeyboardArbiterClientInputDestination *)v8 performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:?];
    [v8 updateWindowState];
  }

  else
  {
    v8 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v8 setWindowLevel:v9 sceneLevel:a3 + 2.0 forResponder:a4 + 2.0];
  }

LABEL_6:
}

- (void)updateRemoteKeyboardChanged:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          [v10 remoteKeyboardChanged:v4];
        }

        else if (objc_opt_respondsToSelector())
        {
          v11 = [v4 keyboardOnScreen];
          v12 = [v4 sourceBundleIdentifier];
          [v10 remoteKeyboardVisibilityDidChange:v11 bundleId:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)updateLocalKeyboardChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          [v10 localKeyboardChanged:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareForAlongsideTransitionWithContext:(id)a3
{
  v9 = a3;
  v4 = [(UIKeyboardSceneDelegate *)self existingContainerWindow];
  if (v4)
  {
    [v9 animateAlongsideTransitionInView:v4 animation:&__block_literal_global_532 completion:&__block_literal_global_532];
  }

  if (+[_UIRemoteKeyboards enabled])
  {
    v5 = [(UIKeyboardSceneDelegate *)self responder];
    v6 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v5];

    if (v6)
    {
      v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      if ([v7 keyboardActive])
      {
        v8 = [v7 keyboardWindow];
        [v9 animateAlongsideTransitionInView:v8 animation:&__block_literal_global_532 completion:&__block_literal_global_532];
      }
    }
  }
}

- (void)setNextAutomaticOrderInDirection:(int)a3 duration:(double)a4
{
  self->_hasCustomAnimationProperties = 1;
  self->_nextAutomaticOrderInDirection = a3;
  self->_nextAutomaticOrderInDuration = a4;
}

- (void)pushAnimationStyle:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_animationStyleStack addObject:?];
  }
}

- (void)popOrRemoveAnimationStyle:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    [(NSMutableArray *)self->_animationStyleStack removeObject:v4];
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

- (id)nextAnimationStyle:(BOOL)a3
{
  v3 = a3;
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    v5 = [(NSMutableArray *)self->_animationStyleStack lastObject];
  }

  else if (self->_hasCustomAnimationProperties)
  {
    v5 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:1 duration:self->_nextAutomaticOrderInDirection outDirection:self->_nextAutomaticOrderInDuration];
  }

  else
  {
    if (v3)
    {
      +[UIInputViewAnimationStyle animationStyleDefault];
    }

    else
    {
      +[UIInputViewAnimationStyle animationStyleImmediate];
    }
    v5 = ;
  }

  return v5;
}

- (void)createAutomaticKeyboardIfNeeded
{
  v3 = +[UIKeyboardAutomatic activeInstance];

  if (v3)
  {
    if ([(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
    {
      v4 = +[UIKeyboardAutomatic activeInstance];
      v5 = [v4 _keyboardOrientation];

      v6 = +[UIKeyboardAutomatic activeInstance];
      v7 = [v6 interfaceOrientation];

      if (v7 != v5)
      {
        v9 = +[UIKeyboardAutomatic activeInstance];
        [v9 setOrientation:v5];
      }
    }
  }

  else
  {
    v8 = +[UIKeyboardAutomatic sharedInstance];
  }
}

- (void)window:(id)a3 changedFromLevel:(double)a4 toLevel:(double)a5
{
  v6 = a3;
  v7 = [(UIKeyboardSceneDelegate *)self responder];
  v8 = [v7 _responderWindow];

  if (v8 == v6)
  {

    [(UIKeyboardSceneDelegate *)self _updateContainerWindowLevel];
  }
}

- (void)_updateContainerWindowLevel
{
  v4 = [(UIKeyboardSceneDelegate *)self inputViews];
  v3 = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v4 responder:v3];
}

- (void)setTextEffectsWindowLevelForInputView:(id)a3 responder:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 hasNonPlaceholderViews] & 1) != 0 || +[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && !objc_msgSend(v6, "isEmpty") || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "hasWindowHostingCallerID:", v9), v9, v8, v10))
  {
    if (+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || ([v6 hasNonPlaceholderViews] & 1) != 0)
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
        v14 = [v13 handlingViewServiceEvent];

        if ((v14 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_13:
        v15 = [v7 _responderWindow];
        v16 = [(UIKeyboardSceneDelegate *)self containerWindow];
        v17 = [v16 _isHostedInAnotherProcess];

        if (v17)
        {
LABEL_31:

          goto LABEL_32;
        }

        if (!v15 || ([(UIKeyboardSceneDelegate *)self containerWindow], v18 = objc_claimAutoreleasedReturnValue(), v18, v15 == v18))
        {
          v29 = [(UIKeyboardSceneDelegate *)self inputViews];
          v30 = [v29 inputAccessoryView];
          v31 = [v30 _responderWindow];
          v32 = [(UIKeyboardSceneDelegate *)self containerWindow];

          if (v31 == v32)
          {
            v33 = [(UIKeyboardSceneDelegate *)self containerWindow];
            [v33 _restoreWindowLevel];
          }

          goto LABEL_31;
        }

        [v15 level];
        v20 = v19;
        v21 = [v15[103] _FBSScene];
        v22 = [v21 settings];
        [v22 level];
        v24 = v23;

        objc_opt_class();
        v25 = [(UIKeyboardSceneDelegate *)self containerWindowForViewService:objc_opt_isKindOfClass() & 1];
        [v25 _setWindowLevel:v20 + 1.0];

        [v15 _addWindowLevelChangedObserver:self];
        v26 = [v15 windowScene];
        v27 = [v26 _isKeyWindowScene];

        v28 = [v15 windowScene];
        if ([v28 _isKeyWindowScene])
        {

          goto LABEL_22;
        }

        WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);

        if (v15 == WeakRetained)
        {
          v27 = 1;
          if (!+[UIKeyboard inputUIOOP])
          {
            v35 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
            [(_UIRemoteKeyboards *)v35 performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:?];
            goto LABEL_28;
          }

          if (+[UIKeyboard usesInputSystemUI])
          {
            v35 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
            [(_UIKeyboardArbiterClientInputDestination *)v35 performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:?];
LABEL_28:

            goto LABEL_29;
          }
        }

LABEL_22:
        if ((v27 & 1) == 0)
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
            v41 = [(UIKeyboardSceneDelegate *)self _scene];
            v44 = [(UIKeyboardSceneDelegate *)self _scene];
            v42 = [v44 _FBSScene];
            v43 = [v42 identityToken];
            *buf = 136317186;
            v54 = "[UIKeyboardSceneDelegate setTextEffectsWindowLevelForInputView:responder:]";
            v55 = 2112;
            v56 = v46;
            v57 = 2048;
            v58 = v15;
            v59 = 2112;
            v60 = v45;
            v61 = 2048;
            v62 = v38;
            v63 = 2112;
            v64 = v39;
            v65 = 2048;
            v66 = v40;
            v67 = 2048;
            v68 = v41;
            v69 = 2112;
            v70 = v43;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%s: Updating required scene for responderWindow: <%@: %p>; keyWindow: <%@: %p>; keyWindowCandidate: <%@: %p>; windowScene: %p; scene identity: %@", buf, 0x5Cu);
          }
        }

        [(UIKeyboardSceneDelegate *)self setWindowLevel:v7 sceneLevel:v20 + 2.0 forResponder:v24 + 2.0];
        goto LABEL_31;
      }
    }

    goto LABEL_13;
  }

LABEL_32:
}

- (id)_renderConfigForResponder:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = [v6 keyboardAppearance]) == 0)
  {
    v8 = [(UIKeyboardSceneDelegate *)self _preferredAppearanceForResponder:v6];
  }

  if ([v6 _isDisplayingWritingToolsSessionInUCB] && (objc_msgSend(v6, "_wantsMagicBackgroundInUCB") & 1) != 0)
  {
    v8 = 13;
  }

  else if (!v8)
  {
    if (v7)
    {
      v9 = [v7 userInterfaceStyle];
    }

    else
    {
      v25 = [v6 _responderWindow];
      v26 = [v25 rootViewController];
      v27 = [v26 traitCollection];
      v9 = [v27 userInterfaceStyle];

      if (([v6 _isView] & 1) != 0 || objc_msgSend(v6, "_isViewController"))
      {
        v28 = [v6 _window];
        v29 = [v28 _isTextEffectsWindow];

        if ((v29 & 1) == 0)
        {
          v30 = [v6 traitCollection];
          if ([v30 userInterfaceStyle])
          {
            v9 = [v30 userInterfaceStyle];
          }
        }
      }
    }

    if (v9 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v9 == 1);
    }
  }

  v10 = v6;
  v11 = [(UIKeyboardSceneDelegate *)self responder];
  if (v11 == v10)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 inputDelegateManager];
    v15 = [v14 forwardingInputDelegate];

    v12 = v10;
    if (!v15)
    {
      goto LABEL_18;
    }

    v11 = +[UIKeyboardImpl activeInstance];
    v16 = [v11 inputDelegateManager];
    v12 = [v16 forwardingInputDelegate];
  }

  else
  {
    v12 = v10;
  }

LABEL_18:
  v17 = (objc_opt_respondsToSelector() & 1) == 0 || [v12 keyboardType] != 122;
  if (TIGetEmojiSearchAlternateBackgroundValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetEmojiSearchAlternateBackgroundValue_onceToken, &__block_literal_global_1165);
  }

  v18 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v19 = [v18 valueForPreferenceKey:@"EmojiSearchAlternateBackground"];

  LOBYTE(v18) = [v19 BOOLValue];
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) != 0 || (v18 & 1) == 0 || v17)
  {
    v20 = [UITextInputTraits traitEnvironmentFromTraits:v10];
    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    v22 = [v21 currentInputMode];
    v23 = [UIKBRenderConfig configForAppearance:v8 inputMode:v22 traitEnvironment:v20];
  }

  else
  {
    v23 = +[UIKBRenderConfig defaultEmojiConfig];
  }

  return v23;
}

- (int64_t)_preferredAppearanceForResponder:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v5 = v3;
  while ([v5 _isViewController])
  {
    v6 = [v5 overrideUserInterfaceStyle];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 view];
      v9 = [v8 _containsResponder:v4];

      if (v9)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v11 = [v5 nextResponder];

    v5 = v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (![v5 _isView])
  {
    goto LABEL_11;
  }

  v7 = [v5 overrideUserInterfaceStyle];
  v10 = [v5 _localOverrideTraitCollection];
  if (!v7 || ([v5 _containsResponder:v4] & 1) == 0)
  {

    goto LABEL_11;
  }

LABEL_15:
  if (v7 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v7 == 1);
  }

LABEL_18:

  return v11;
}

- (void)traitCollectionDidChange
{
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 traitCollectionDidChange];
}

- (void)updateRenderConfigForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForResponder:v5 traitCollection:v4];
}

- (void)updateRenderConfigForResponder:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 _requiresKeyboardWhenFirstResponder] & 1) != 0 || objc_msgSend(v6, "_ownsInputAccessoryView"))
  {
    v8 = [(UIKeyboardSceneDelegate *)self _renderConfigForResponder:v6 traitCollection:v7];
    v9 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__UIKeyboardSceneDelegate_updateRenderConfigForResponder_traitCollection___block_invoke;
    aBlock[3] = &unk_1E7108298;
    v10 = v9;
    v19 = v10;
    v20 = self;
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

    v14 = [(UIKeyboardSceneDelegate *)self containerWindow];
    [v14 setOverrideUserInterfaceStyle:v13];

    if (+[_UIRemoteKeyboards enabled]&& ([(UIKeyboardSceneDelegate *)self responder], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v15], v15, v16))
    {
      v17 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v17 performOnControllers:v12];
    }

    else
    {
      v17 = [(UIKeyboardSceneDelegate *)self containerRootController];
      v12[2](v12, v17);
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

- (void)disableInterfaceAutorotation:(BOOL)a3
{
  if (a3)
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

  v6 = [UIApp windows];
  [v6 makeObjectsPerformSelector:*v5];

  self->_interfaceAutorotationDisabled = v4;
}

- (id)passthroughViews
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIInputViewSet *)self->_inputViewSet inputViewController];
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;

LABEL_4:
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

    goto LABEL_5;
  }

  v5 = [(UIInputViewSet *)self->_inputViewSet inputView];

  if (v5)
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
  v13 = [v4 inputDelegate];

  v5 = [v13 _responderWindow];
  v6 = [v5 screen];
  v7 = [v6 _userInterfaceIdiom];

  v8 = +[UIDictationController activeInstance];
  LOBYTE(v6) = [v8 resigningFirstResponder];

  if ((v6 & 1) == 0 && v7 != 3)
  {
    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    v10 = [v9 currentInputMode];
    v11 = [v10 identifier];
    if ([v11 isEqualToString:@"autofillsignup"])
    {
      v12 = [(UIRemoteInputViewHost *)self->_remoteInputViewHost shouldShowDockView];

      if (v12)
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

- (BOOL)isWaitingForInputUI:(id)a3
{
  v4 = a3;
  if (v4 && (waitingForInputUI = self->_waitingForInputUI) != 0)
  {
    v6 = [(NSUUID *)waitingForInputUI isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addPostWaitingForInputUIBlock:(id)a3
{
  postWaitingForInputUIBlocks = self->_postWaitingForInputUIBlocks;
  v4 = _Block_copy(a3);
  [(NSMutableArray *)postWaitingForInputUIBlocks addObject:v4];
}

- (void)windowDidBecomeKey:(id)a3
{
  v8 = [a3 object];
  v4 = [v8 windowScene];
  WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);
  if (WeakRetained || ([(UIKeyboardSceneDelegate *)self scene], WeakRetained = objc_claimAutoreleasedReturnValue(), v4 != WeakRetained))
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v7 = [v4 _isConnecting];

  if ((v7 & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = 1;
LABEL_5:
  self->_isEligibleToRequestKeyboardFocusWithoutUserInteraction = v6;
  [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant configureEventDeferralPolicyObserver];
}

- (void)firstResponderDidChange:(id)a3
{
  v4 = a3;
  obj = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  if (self->_isEligibleToRequestKeyboardFocusWithoutUserInteraction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyWindowCandidate);
    if (WeakRetained)
    {
    }

    else
    {
      v8 = [obj windowScene];
      v9 = [(UIKeyboardSceneDelegate *)self scene];
      if (v8 == v9 && ([obj isKeyWindow] & 1) != 0)
      {
        v10 = [v6 _requiresKeyboardWhenFirstResponder];

        if (v10)
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

- (void)_reloadInputViewsForResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = a3;
  v8 = [(UIKeyboardSceneDelegate *)self scene];
  v9 = [v8 _keyboardClientComponent];

  if (([v9 suppressKeyboardFocusRequests] & 1) == 0)
  {
    [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant prepareForReloadInputViews];
    if ([(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v10])
    {
      [(UIKeyboardSceneDelegate *)self _reloadInputViewsForKeyWindowSceneResponder:v10 force:v6 fromBecomeFirstResponder:v5];
    }

    else
    {
      [(_UIKBEventDeferralPolicyAssistant *)self->_eventDeferralPolicyAssistant didReloadInputViewsForNonKeyWindowSceneForResponder:v10 force:v6 fromBecomeFirstResponder:v5];
      [(UIKeyboardSceneDelegate *)self _reloadInputViewsForWindowSceneResponder:v10 force:v6];
    }
  }
}

- (id)_responderDescriptionForLogging:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 _kb_description];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; >", objc_opt_class(), v3];
  }
  v4 = ;

  return v4;
}

- (id)_simpleViewDescriptionForLogging:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 view];
    [v7 frame];
    v8 = NSStringFromCGRect(v17);
    v9 = [v4 stringWithFormat:@"<%@: %p frame = %@>", v6, v3, v8];;

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
    [v3 frame];
    v7 = NSStringFromCGRect(v18);
    [v3 alpha];
    v9 = [v11 stringWithFormat:@"<%@: %p frame = %@; alpha = %f; isHidden = %d; tAMIC = %d>", v6, v3, v7, v14, objc_msgSend(v3, "isHidden"), objc_msgSend(v3, "translatesAutoresizingMaskIntoConstraints")];;
    goto LABEL_5;
  }

  v9 = [v11 stringWithFormat:@"<%@: %p>", v13, v3];
LABEL_7:

  return v9;
}

- (id)remoteHostInputViewSet:(id)a3
{
  v4 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    if ([(UIRemoteInputViewHost *)self->_remoteInputViewHost shouldShowDockView])
    {
      v5 = [(UIRemoteInputViewHost *)self->_remoteInputViewHost inputViewSet];
    }

    else
    {
      if (!v4)
      {
        transientInputViewSet = self->_transientInputViewSet;
        if (transientInputViewSet)
        {
          v7 = transientInputViewSet;
        }

        else
        {
          v7 = [(UIKeyboardSceneDelegate *)self inputViews];
        }

        v4 = v7;
      }

      v8 = +[UIKeyboardAutomatic activeInstance];
      v9 = [UICompatibilityInputViewController deferredInputModeControllerWithKeyboard:v8];

      v10 = +[UIKeyboardInputModeController sharedInputModeController];
      v11 = [v10 currentInputMode];
      [v9 setInputMode:v11];

      v12 = [v9 view];
      v13 = [(UIInputViewSet *)v4 inputAccessoryView];
      v14 = [(UIInputViewSet *)v4 inputAssistantView];
      v5 = [UIInputViewSet inputSetWithPlaceholderAndCustomInputView:v12 accessoryView:v13 assistantView:v14];

      [v5 setInputViewController:v9];
      [v5 setIsCustomInputView:1];
      [(UIRemoteInputViewHost *)self->_remoteInputViewHost setInputViewSet:v5];
      [(UIRemoteInputViewHost *)self->_remoteInputViewHost setShouldShowDockView:1];
    }

    [(UIRemoteInputViewHost *)self->_remoteInputViewHost updateInputViewsIfNecessary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reloadInputViewsForKeyWindowSceneResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5
{
  v185 = a5;
  v187 = a4;
  v203 = *MEMORY[0x1E69E9840];
  v171 = a3;
  v6 = a3;
  v7 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(UIKeyboardSceneDelegate *)self _responderDescriptionForLogging:v6, v171];
    v9 = v8;
    v10 = "N";
    if (v187)
    {
      v10 = "Y";
    }

    *buf = 138412546;
    *v198 = v8;
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

  v182 = [MEMORY[0x1E696AFB0] UUID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__UIKeyboardSceneDelegate__reloadInputViewsForKeyWindowSceneResponder_force_fromBecomeFirstResponder___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = 0xEEEEB0B5B2B2EEEELL;
  v183 = _Block_copy(aBlock);
  v12 = [MEMORY[0x1E695DF00] date];
  transitionStartTime = self->_transitionStartTime;
  self->_transitionStartTime = v12;

  v14 = +[UIDictationView activeInstance];
  v15 = [v14 visible];

  if (!v15)
  {
LABEL_12:
    self->_blockedReloadInputViewsForDictation = 0;
    [(UIKeyboardSceneDelegate *)self disableInterfaceAutorotation:0, v171];
    if (+[UIKeyboard isKeyboardProcess])
    {
      if (v6 && !v187)
      {
        +[UIKeyboard clearLastKeyboardApplicationIdentifier];
      }

      v18 = [(UIKeyboardSceneDelegate *)self containerRootController];
      v19 = [v18 isRotating];

      if (v19)
      {
        v20 = [(UIKeyboardSceneDelegate *)self containerRootController];
        [v20 clearRotationState];
      }
    }

    if (!v187)
    {
      if (![(UIResponder *)v6 _requiresKeyboardWhenFirstResponder])
      {
LABEL_24:
        v24 = [(UIKeyboardSceneDelegate *)self existingContainerRootController];
        [v24 clearKeyboardSnapshot];

        goto LABEL_25;
      }

      v21 = [(UIResponder *)v6 inputView];
      if (v21)
      {

        goto LABEL_24;
      }

      v22 = [(UIResponder *)v6 inputViewController];
      v23 = v22 == 0;

      if (!v23)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v25 = [(UIKeyboardSceneDelegate *)self responder];
    if (!(v6 | v25))
    {
      v25 = [(UIInputViewPostPinningReloadState *)self->_postPinningReloadState responderToReload];
      if (!v25)
      {
        if ([(UIKeyboardSceneDelegate *)self isOnScreen]|| [(UIKeyboardSceneDelegate *)self isUndocked])
        {
          v25 = 0;
        }

        else
        {
          v25 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          if (([v25 keyboardVisible] & 1) == 0)
          {
            v80 = [(UIKeyboardSceneDelegate *)self inputViews];
            if (([v80 isInputViewPlaceholder] & 1) == 0)
            {
              v81 = [(UIKeyboardSceneDelegate *)self inputViews];
              if (([v81 isInputAccessoryViewPlaceholder] & 1) == 0 && !self->_allowNilResponderReload)
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
                v180 = [(UIResponder *)v6 _keyboardResponder];
                v26 = +[UIKeyboardImpl activeInstance];
                v27 = [v26 delegate];

                v28 = [(UIKeyboardSceneDelegate *)self isOnScreen];
                if (![(UIResponder *)v6 _requiresKeyboardWhenFirstResponder]|| v28 | ![(UIResponder *)v6 isFirstResponder]|| [(UIKeyboardSceneDelegate *)self isUndocked])
                {
                  v29 = 0;
                }

                else
                {
                  v58 = +[UIKeyboardImpl activeInstance];
                  v59 = [v58 disableInputBars];

                  v29 = v59 ^ 1;
                }

                if ([(UIResponder *)v6 _requiresKeyboardResetOnReload]&& self->_reloadInputViewsForcedIsAllowed)
                {
                  v30 = v29 && ![(UIKeyboardSceneDelegate *)self isWaitingForInputUI]|| v180 != v27;
                }

                else
                {
                  v30 = 0;
                }

                if (+[UIKeyboard usesInputSystemUI]&& self->_responder == v6)
                {
                  v33 = [(UIResponder *)v6 inputView];
                  if (v33)
                  {
                    v34 = 1;
                  }

                  else
                  {
                    v78 = [(UIResponder *)v6 inputViewController];
                    v34 = v78 != 0;
                  }

                  v79 = [(UIRemoteInputViewHost *)self->_remoteInputViewHost inputViewSet];
                  v31 = v34 != [v79 isCustomInputView];
                }

                else
                {
                  v31 = 0;
                }

                if ((v30 | v31))
                {
                  if (v180 == v27)
                  {
                    v35 = +[UIKeyboardImpl activeInstance];
                    v32 = [v35 _obtainSessionIdentifierAssertionForReason:@"Intentionally reloading the same delegate"];
                  }

                  else
                  {
                    v32 = 0;
                  }

                  v36 = +[UIKeyboardImpl activeInstance];
                  v177 = [v36 textSuggestions];

                  v37 = +[UIKeyboardImpl activeInstance];
                  [v37 setDelegate:0 force:0 delayEndInputSession:v185];
                }

                else
                {
                  v177 = 0;
                  v32 = 0;
                }

                v178 = (!self->_automaticAppearanceEnabled || self->_responderWithoutAutomaticAppearanceEnabled != v6) && [(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled];
                v38 = _UIKeyboardSceneDelegateLogger();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67110146;
                  *v198 = v6 != 0;
                  *&v198[4] = 1024;
                  *&v198[6] = v187;
                  LOWORD(v199) = 1024;
                  *(&v199 + 2) = v185;
                  HIWORD(v199) = 1024;
                  v200 = v178;
                  v201 = 2112;
                  *v202 = v182;
                  _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "_reloadInputViewsForKeyWindowSceneResponder: %d force: %d, fromBecomeFirstResponder: %d (automaticKeyboard: %d, reloadIdentifier: %@)", buf, 0x24u);
                }

                v176 = [(UIKeyboardSceneDelegate *)self inputViews];
                obj = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v6 withAutomaticKeyboard:v178 force:v187];
                objc_storeStrong(&self->_transientInputViewSet, obj);
                p_responder = &self->_responder;
                responder = self->_responder;
                if (responder)
                {
                  v41 = [(UIResponder *)responder _window];

                  responder = v41;
                }

                v175 = responder;
                v184 = [(UIResponder *)responder screen];
                if (v6)
                {
                  v42 = [(UIResponder *)v6 _window];

                  v43 = v42;
                }

                else
                {
                  v43 = 0;
                }

                v174 = v43;
                v186 = [v43 screen];
                v44 = [UIKeyboard activeKeyboardForScreen:v186];
                v45 = v44;
                if (v44)
                {
                  v189 = v44;
                }

                else
                {
                  v189 = [obj keyboard];
                }

                if (v184 != v186 && v184 && v186)
                {
                  v46 = [UIKeyboard activeKeyboardForScreen:v184];
                  v47 = v46;
                  if (v46 && v189 && v46 != v189)
                  {
                    [v46 deactivate];
                  }
                }

                if (v189 && ([v189 isActive] & 1) != 0)
                {
                  goto LABEL_285;
                }

                if ([(UIResponder *)v6 _requiresKeyboardWhenFirstResponder])
                {
                  if (v185 && !+[UIKeyboard isInputSystemUI])
                  {
                    kdebug_trace();
                    v48 = kac_get_log();
                    v49 = os_signpost_id_make_with_pointer(v48, 0);
                    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v30 = v49;
                      if (os_signpost_enabled(v48))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_188A29000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v30, "appBringup", " enableTelemetry=YES ", buf, 2u);
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

                  _MergedGlobals_1087 = v185;
                }

                if (v189)
                {
LABEL_285:
                  if (([v189 isActive] & 1) == 0 && -[UIResponder _requiresKeyboardWhenFirstResponder](v6, "_requiresKeyboardWhenFirstResponder"))
                  {
                    [v189 activate];
                  }
                }

                v53 = +[UIKeyboardInputModeController sharedInputModeController];
                [v53 _trackInputModeIfNecessary:v6];

                v54 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
                LODWORD(v53) = v54 == self;

                if (!v53)
                {
                  [(UIRemoteInputViewHost *)self->_remoteInputViewHost setInputViewSet:0];
                  goto LABEL_103;
                }

                if (v187)
                {
                  v55 = +[UIKeyboardInputModeController sharedInputModeController];
                  v56 = [v55 currentInputMode];
                  v30 = [v56 identifier];
                  if ([v30 isEqualToString:@"autofillsignup"])
                  {
                    v57 = [(UIRemoteInputViewHost *)self->_remoteInputViewHost shouldShowDockView];

                    if (v57)
                    {
LABEL_103:
                      v60 = +[UIKeyboard isKeyboardProcess];
                      if (![(UIResponder *)v6 _requiresKeyboardWhenFirstResponder])
                      {
LABEL_108:
                        v65 = +[UIKeyboardImpl activeInstance];
                        v66 = [v65 delegate];
                        v67 = v66 != 0;

                        [v65 _shouldClearTextSuggestions:v60 | v185];
                        v68 = +[UIKeyboardImpl activeInstance];
                        v69 = v185 || [(UIKeyboardSceneDelegate *)self pinningPreventsInputViews:obj];
                        [v68 setDelegate:0 force:0 delayEndInputSession:v69];
LABEL_149:

                        [v32 _invalidate];
                        transientInputViewSet = self->_transientInputViewSet;
                        self->_transientInputViewSet = 0;

                        if ([(UIKeyboardSceneDelegate *)self pinningPreventsInputViews:obj])
                        {
                          v83 = [UIInputViewPostPinningReloadState stateWithResponder:v6];
                          postPinningReloadState = self->_postPinningReloadState;
                          self->_postPinningReloadState = v83;

                          v181 = +[UIKeyboardImpl activeInstance];
                          v85 = +[UIDictationController activeInstance];
                          v86 = [v85 shouldStayInDictationInputMode];

                          if (!(v86 & 1 | ![(UIKeyboardSceneDelegate *)self hasDictationKeyboard]))
                          {
                            v87 = +[UIKeyboardInputModeController sharedInputModeController];
                            v88 = [v87 currentInputModeInPreference];
                            [(UIResponder *)v181 setKeyboardInputMode:v88 userInitiated:0];
                          }

                          [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:obj responder:v6];
                          v183[2]();
                          goto LABEL_267;
                        }

                        if ([v186 _userInterfaceIdiom] == 3)
                        {
LABEL_166:
                          if (![(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
                          {
                            v95 = [obj containsResponder:v6];
                            selfHostingTrigger = self->_selfHostingTrigger;
                            if (!v95)
                            {
                              v97 = 0;
                              goto LABEL_171;
                            }

                            if (!selfHostingTrigger)
                            {
                              v97 = [(UIKeyboardSceneDelegate *)self responder];
                              selfHostingTrigger = self->_selfHostingTrigger;
LABEL_171:
                              self->_selfHostingTrigger = v97;
                            }
                          }

                          v98 = *p_responder;
                          if (*p_responder && v98 != v6)
                          {
                            v99 = [(UIResponder *)v98 _responderWindow];
                            [v99 _removeWindowLevelChangedObserver:self];

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
                          [v101 handleTraitChangeObserver:v181 newResponder:v6 updateTraitCollection:v193];

                          [(UIKeyboardSceneDelegate *)self _updateTextInputSession];
                          if (!v187 && +[UIKeyboard usesInputSystemUI])
                          {
                            v102 = [(UIResponder *)v6 isFirstResponder];
                            v103 = [(UIResponder *)v6 _requiresKeyboardWhenFirstResponder];
                            v104 = [obj isCustomInputView];
                            v105 = v104;
                            if (v102)
                            {
                              v106 = [obj inputAccessoryView];
                              if (v106 && ([obj isInputAccessoryViewPlaceholder] & 1) == 0)
                              {
                                [v176 inputAccessoryView];
                              }

                              v107 = [(UIKeyboardSceneDelegate *)self showingKeyboardForInputViewSet:obj];
                              v108 = v107;
                              v109 = v67 || v103;
                              if ((((v67 || v103) | v105) & 1) == 0)
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
                              v109 = v67 || v103;
                              if ((((v67 || v103) | v104) & 1) == 0)
                              {
LABEL_194:
                                v108 = 0;
                                v110 = self->_sessionID != 0;
LABEL_195:
                                v112 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                v113 = [v112 shouldIgnoreInputDestinationChange:v108 withIAVHeight:0.0];

                                v114 = v102 && !v178;
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
                                  v117 = [(UIKeyboardSceneDelegate *)self isWaitingForInputUI];
                                  *buf = 67110400;
                                  *v198 = v117;
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
                                    v120 = [MEMORY[0x1E696AFB0] UUID];
                                    sessionID = self->_sessionID;
                                    self->_sessionID = v120;

                                    v122 = [v119 remoteTextInputPartner];
                                    [v122 beginAllowingRemoteTextInput:self->_sessionID];

                                    v123 = [v119 remoteTextInputPartner];
                                    [v123 beginInputSessionWithIdentifier:self->_sessionID];
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

                                    v124 = [v119 remoteTextInputPartnerPrivate];
                                    [v124 endInputSessionWithIdentifier:self->_sessionID];

                                    v125 = [v119 remoteTextInputPartnerPrivate];
                                    [v125 endAllowingRemoteTextInput:self->_sessionID];

                                    v123 = self->_sessionID;
                                    self->_sessionID = 0;
                                  }
                                }

                                if (v115)
                                {
                                  v126 = [obj inputAccessoryView];
                                  if (v126 && ([obj isInputAccessoryViewPlaceholder] & 1) == 0)
                                  {
                                    v132 = [v176 inputAccessoryView];
                                    v133 = [obj inputAccessoryView];
                                    if (v132 == v133)
                                    {
                                      v127 = 1;
                                    }

                                    else
                                    {
                                      v134 = [obj inputAccessoryView];
                                      if ([v134 isFirstResponder])
                                      {
                                        v127 = 1;
                                      }

                                      else
                                      {
                                        v136 = [obj inputAccessoryView];
                                        v137 = [v136 window];
                                        v127 = v137 != 0;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v127 = 1;
                                  }

                                  [(UIKeyboardSceneDelegate *)self setWaitingForInputUI:v182];
                                  v138 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                  v139 = [(UIKeyboardSceneDelegate *)self scene];
                                  v128 = [v138 inputDestinationDidChange:v108 withIAVHeight:0 isIAVRelevant:1 notifyRemote:v139 forScene:0.0];

                                  v140 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                  v141 = [v140 currentUIState];
                                  if ([v141 isLocal])
                                  {
                                    v142 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
                                    v143 = [v142 currentUIState];
                                    v144 = [v143 keyboardOnScreen];
                                  }

                                  else
                                  {
                                    v144 = 0;
                                  }

                                  if (!(v144 & 1 | (([obj isInputViewPlaceholder] & 1) == 0) | v127) && ((v128 ^ 1) & 1) == 0)
                                  {
                                    v145 = [obj inputAccessoryView];
                                    v146 = [UIInputViewSet inputSetWithInputView:0 accessoryView:v145 assistantView:0];

                                    obj = v146;
                                  }

                                  [(UIKeyboardSceneDelegate *)self _updateContainerWindowLevel];
                                }

                                else
                                {
                                  LOBYTE(v128) = 0;
                                }

                                v30 = _UIKeyboardSceneDelegateLogger();
                                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *v198 = obj;
                                  _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "Will set input views %@", buf, 0xCu);
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

                                    v149 = [MEMORY[0x1E69D9680] sharedPreferencesController];
                                    v30 = [v149 valueForPreferenceKey:@"NewKeyboardNotificationOrder"];

                                    if (![v30 BOOLValue])
                                    {
                                      v151 = 0;
LABEL_252:

LABEL_253:
                                      if ((byte_1ED49DC79 & 1) != 0 || v151)
                                      {
                                        v153 = +[UIKeyboardImpl activeInstance];
                                        v154 = [v153 inputDelegateManager];
                                        v188 = [v154 hasAsyncCapableInputDelegate];

                                        v155 = [v147 isEmpty];
                                        v179 = [(NSMutableArray *)self->_animationStyleStack count];
                                        v156 = UIApp;
                                        v157 = [(UIKeyboardSceneDelegate *)self scene];
                                        v158 = [v157 keyWindow];
                                        v159 = [v156 _touchesEventForWindow:v158];
                                        v160 = [v159 allTouches];
                                        v173 = [v160 count];

                                        v152 = +[UIPeripheralHost sharedInstance];
                                        v161 = [MEMORY[0x1E696B098] valueWithPointer:self];
                                        if (((v155 | v188) & 1) == 0 && ((v151 & 1) != 0 || !v179 && (v173 || [v152 hasDelayedTasksForKey:v161])))
                                        {
                                          if (byte_1ED49DC79 == 1)
                                          {
                                            [v152 queueDelayedTask:v148 forKey:v161];
                                          }

                                          else
                                          {
                                            [v152 queueDelayedTask:v148 forKey:v161 delay:0.01];
                                            v163 = +[UIKeyboardInputModeController sharedInputModeController];
                                            v164 = [v163 currentInputMode];

                                            v165 = [v147 inputView];
                                            if (v165 && [v164 isExtensionInputMode])
                                            {
                                              v166 = [v164 isDisplayed];

                                              if (v166)
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

                                      if (!v185)
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

                          if (!self->_sessionID || ![obj isCustomInputView] || -[UIResponder _requiresKeyboardWhenFirstResponder](v6, "_requiresKeyboardWhenFirstResponder"))
                          {
                            goto LABEL_238;
                          }

                          v111 = +[UIKeyboardImpl activeInstance];
                          if (!v111)
                          {
                            v111 = +[UIKeyboardImpl sharedInstanceForCustomInputView:](UIKeyboardImpl, "sharedInstanceForCustomInputView:", [obj isCustomInputView]);
                          }

                          v30 = [v111 inputDelegate];
                          if (!v30)
                          {
                            v30 = [v111 remoteTextInputPartner];
                            v130 = [v30 rtiClient];
                            v131 = v130 == 0;

                            if (!v131)
                            {
                              goto LABEL_219;
                            }

                            v135 = [v111 remoteTextInputPartner];
                            [v135 beginAllowingRemoteTextInput:self->_sessionID];

                            v30 = [v111 remoteTextInputPartner];
                            [v30 beginInputSessionWithIdentifier:self->_sessionID];
                          }

LABEL_219:
                          goto LABEL_238;
                        }

                        if (![(UIResponder *)v6 _requiresKeyboardWhenFirstResponder])
                        {
                          goto LABEL_157;
                        }

                        v89 = +[UIKeyboardInputModeController sharedInputModeController];
                        v30 = [v89 currentInputMode];
                        if ([v30 isExtensionInputMode])
                        {
                          v90 = [obj isCustomInputView];

                          if (v90)
                          {
LABEL_157:
                            if ([(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
                            {
                              goto LABEL_166;
                            }

                            v91 = [v176 inputViewController];
                            v30 = [v91 _compatibilityController];
                            [v30 setTearingDownInputController];
                            goto LABEL_164;
                          }
                        }

                        else
                        {
                        }

                        v92 = +[UIKeyboardInputModeController sharedInputModeController];
                        v91 = [v92 currentInputMode];

                        v30 = [v91 identifier];
                        v93 = [v30 isEqualToString:@"autofillsignup"];

                        if (v93)
                        {
                          if (!+[UIKeyboard usesInputSystemUI])
                          {
LABEL_165:

                            goto LABEL_166;
                          }

                          [(UIKeyboardSceneDelegate *)self remoteHostInputViewSet:obj];
                          obj = v30 = obj;
                        }

                        else
                        {
                          v30 = [obj inputViewController];
                          v94 = [v30 _compatibilityController];
                          [v94 setInputMode:v91];
                        }

LABEL_164:

                        goto LABEL_165;
                      }

                      if (!+[UIKeyboard isInHardwareKeyboardMode])
                      {
                        v61 = [obj hostedCustomInputView];
                        v62 = v61;
                        if (v61 && ([v61 frame], v63 == 0.0))
                        {
                          v30 = [v62 subviews];
                          v64 = [v30 count] == 0;

                          if (v64)
                          {
                            goto LABEL_108;
                          }
                        }

                        else
                        {
                        }
                      }

                      [(UIKeyboardSceneDelegate *)self updateRenderConfigForResponder:v6];
                      v65 = +[UIKeyboardImpl activeInstance];
                      if (!v65)
                      {
                        if ([(UIKeyboardSceneDelegate *)self automaticAppearanceEnabled])
                        {
                          v70 = [(UIResponder *)v6 inputView];
                          v71 = v70 != 0;
                        }

                        else
                        {
                          v71 = 0;
                        }

                        v65 = [UIKeyboardImpl sharedInstanceForCustomInputView:v71];
                      }

                      v68 = [(UIResponder *)v6 _keyboardResponder];
                      if (+[UIKeyboard usesInputSystemUI]&& !self->_automaticAppearanceEnabledInternal)
                      {
                        v76 = [v65 delegate];
                        v77 = v76 == v68;

                        if (!v77)
                        {
                          v67 = 0;
LABEL_148:
                          v30 = [v65 geometryDelegate];
                          [v30 syncMinimizedStateToHardwareKeyboardAttachedState];

                          goto LABEL_149;
                        }

                        [v65 setDelegate:v68];
LABEL_147:
                        v67 = 1;
                        goto LABEL_148;
                      }

                      v72 = [v65 geometryDelegate];
                      if (!v72)
                      {
                        if ([v65 forCustomInputView])
                        {
                          goto LABEL_123;
                        }

                        v72 = [obj keyboard];
                        if (v72)
                        {
                          [v65 setGeometryDelegate:v72];
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
                          v74 = [v65 geometryDelegate];
                          *buf = 138412290;
                          *v198 = v74;
                          _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_DEFAULT, "_reloadInputViewsForKeyWindowSceneResponder, updateInputViewsIfNecessary for geometryDelegate: %@", buf, 0xCu);
                        }

                        [(UIRemoteInputViewHost *)self->_remoteInputViewHost updateInputViewsIfNecessary];
                      }

                      [v65 _shouldClearTextSuggestions:v60 | v185];
                      [v65 setDelegate:v68 force:0 delayEndInputSession:v185];
                      if (v177)
                      {
                        v75 = v180 == v27;
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
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIResponder *)v6 _requiresKeyboardWhenFirstResponder])
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

    v16 = [(UIKeyboardSceneDelegate *)self responder];
    v17 = v16 == v6;

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

- (void)_reloadInputViewsForWindowSceneResponder:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(UIKeyboardSceneDelegate *)self _responderDescriptionForLogging:v7];
    v10 = v9;
    v11 = "N";
    if (v4)
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
  v12 = (!self->_automaticAppearanceEnabled || self->_responderWithoutAutomaticAppearanceEnabled != v7) && [(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled];
  v13 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v7 withAutomaticKeyboard:v12 force:v4];
  if ([(UIKeyboardSceneDelegate *)self pinningPreventsInputViews:v13])
  {
    v14 = [UIInputViewPostPinningReloadState stateWithResponder:v7];
    postPinningReloadState = self->_postPinningReloadState;
    self->_postPinningReloadState = v14;

    [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v13 responder:v7];
    goto LABEL_23;
  }

  if (![(UIKeyboardSceneDelegate *)self _isIgnoringReloadInputViews])
  {
    v16 = [v13 containsResponder:v7];
    selfHostingTrigger = self->_selfHostingTrigger;
    if (v16)
    {
      if (selfHostingTrigger)
      {
        goto LABEL_17;
      }

      v18 = [(UIKeyboardSceneDelegate *)self responder];
      selfHostingTrigger = self->_selfHostingTrigger;
    }

    else
    {
      v18 = 0;
    }

    self->_selfHostingTrigger = v18;
  }

LABEL_17:
  responder = self->_responder;
  if (responder && responder != v7)
  {
    v20 = [(UIResponder *)responder _responderWindow];
    [v20 _removeWindowLevelChangedObserver:self];
  }

  objc_storeStrong(&self->_responder, a3);
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

- (void)loadLocalKeyboardForHost:(id)a3
{
  self->_loadingLocalKeyboard = 1;
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self responder];
  v6 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v5];
  [v4 changeToInputViewSet:v6];

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 recomputeActiveInputModesWithExtensions:1];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 updateLayout];

  self->_loadingLocalKeyboard = 0;
}

- (id)_inputViewsForResponder:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v4 withAutomaticKeyboard:[(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled] force:0];

  return v5;
}

- (id)_inputViewsForResponder:(id)a3 withAutomaticKeyboard:(BOOL)a4 force:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v154 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(UIKeyboardSceneDelegate *)self _responderDescriptionForLogging:v9];
    *buf = 138412802;
    *v151 = v11;
    *&v151[8] = 1024;
    *&v151[10] = v6;
    *&v151[14] = 1024;
    *&v151[16] = v5;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder: %@, automaticKeyboard: %d, force: %d", buf, 0x18u);
  }

  if ([v9 _disableAutomaticKeyboardUI])
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

  v148 = self;
  v14 = v9;
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
    v17 = [(NSMutableArray *)self->_persistentInputAccessoryResponderOrder lastObject];
    v15 = [(NSMutableDictionary *)persistentInputAccessoryResponders objectForKey:v17];
  }

LABEL_16:
  v140 = v5;
  v142 = v9;
  obj = a3;
  if (dyld_program_sdk_at_least())
  {
    v18 = [v14 inputViewController];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 nextResponder];

      if (!v20)
      {
        [v19 _overrideInputViewNextResponderWithResponder:v14];
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = [v14 inputView];
  v22 = [v21 nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v22 = 0;
  }

  if (v19 || !v21 || v22)
  {
    if (!v21)
    {
      v21 = [v19 view];
    }
  }

  else
  {
    [v21 _overrideInputViewNextResponderWithResponder:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v141 = [v21 shouldShowDockView];
  }

  else
  {
    v141 = 0;
  }

  v23 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v6;
    v25 = [(UIKeyboardSceneDelegate *)v148 _simpleViewDescriptionForLogging:v21];
    [(UIKeyboardSceneDelegate *)v148 _simpleViewDescriptionForLogging:v19];
    v27 = v26 = v21;
    *buf = 138412546;
    *v151 = v25;
    *&v151[8] = 2112;
    *&v151[10] = v27;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, found custom inputView: %@, customInputViewController: %@", buf, 0x16u);

    v21 = v26;
    v6 = v24;
  }

  if (dyld_program_sdk_at_least() && ([v15 inputAccessoryViewController], (v147 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v28 = [v147 nextResponder];

    if (!v28)
    {
      [v147 _overrideInputAccessoryViewNextResponderWithResponder:v15];
    }
  }

  else
  {
    v147 = 0;
  }

  v29 = [v15 inputAccessoryView];
  v30 = [v29 nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v30 = 0;
  }

  if (v147 || !v29 || v30)
  {
    if (!v29)
    {
      v29 = [v147 view];
    }
  }

  else
  {
    [v29 _overrideInputAccessoryViewNextResponderWithResponder:v15];
  }

  v31 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(UIKeyboardSceneDelegate *)v148 _simpleViewDescriptionForLogging:v29];
    *buf = 138412290;
    *v151 = v32;
    _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, found inputAccessoryView: %@", buf, 0xCu);
  }

  [(UIView *)v21 _clearBecomeFirstResponderWhenCapableOnSubtree];
  [(UIView *)v29 _clearBecomeFirstResponderWhenCapableOnSubtree];
  v143 = v19;
  v144 = v15;
  if (v6)
  {
    v35 = v14;
    v36 = [v14 _requiresKeyboardWhenFirstResponder];
  }

  else
  {
    v37 = +[UIKeyboardAutomatic activeInstance];
    if (v37 || [(UIKeyboardSceneDelegate *)v148 isOnScreen])
    {
      v36 = [v14 _requiresKeyboardWhenFirstResponder];
    }

    else
    {
      v36 = 0;
    }

    v35 = v14;
  }

  v38 = v21 != 0;
  v39 = v21 == 0;
  v40 = _UIKeyboardSceneDelegateLogger();
  v149 = v29;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    +[UIKeyboardAutomatic activeInstance];
    v41 = v6;
    v43 = v42 = v21;
    v44 = [(UIKeyboardSceneDelegate *)v148 _simpleViewDescriptionForLogging:v43];
    v45 = [(UIKeyboardSceneDelegate *)v148 isOnScreen];
    v46 = [v35 _requiresKeyboardWhenFirstResponder];
    *buf = 67110146;
    *v151 = v36;
    *&v151[4] = 1024;
    *&v151[6] = v41;
    *&v151[10] = 2112;
    *&v151[12] = v44;
    *&v151[20] = 1024;
    *&v151[22] = v45;
    *v152 = 1024;
    *&v152[2] = v46;
    _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, responderRequiresKeyboard %d (automaticKeyboardEnabled: %d, activeInstance: %@, self.isOnScreen: %d, requiresKBWhenFirstResponder: %d)", buf, 0x24u);

    v21 = v42;
  }

  v47 = v39 & v36;

  v48 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [(UIKeyboardSceneDelegate *)v148 _simpleViewDescriptionForLogging:v21];
    *buf = 67109890;
    *v151 = v39 & v36;
    *&v151[4] = 1024;
    *&v151[6] = 1;
    *&v151[10] = 2112;
    *&v151[12] = v49;
    *&v151[20] = 1024;
    *&v151[22] = v36;
    _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, useKeyboard %d (allowsSystemInputView: %d, !inputView %@, responderRequiresKeyboard %d)", buf, 0x1Eu);
  }

  v50 = v144;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [v21 frame];
    v38 = v51 > 0.0;
  }

  if ((v38 | v36))
  {
    v52 = v148;
    v53 = [(UIKeyboardSceneDelegate *)v148 systemInputAssistantViewControllerForResponder:v35];
    v54 = [v53 view];
    v55 = v53;
    if (![(UIKeyboardSceneDelegate *)v148 shouldSuppressInputAssistantUpdates]&& !v148->_dontNeedAssistantBar)
    {
      [v55 automaticallySetCenterViewControllerBasedOnInputDelegate:v35];
      [v55 setInputAssistantButtonItemsForResponder:v35];
    }

    v56 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [(UIKeyboardSceneDelegate *)v148 _simpleViewDescriptionForLogging:v55];
      v58 = [(UIKeyboardSceneDelegate *)v148 shouldSuppressInputAssistantUpdates];
      dontNeedAssistantBar = v148->_dontNeedAssistantBar;
      *buf = 138412802;
      *v151 = v57;
      *&v151[8] = 1024;
      *&v151[10] = v58;
      *&v151[14] = 1024;
      *&v151[16] = dontNeedAssistantBar;
      _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, found assistantVC: %@ (should suppress: %d, _dontNeed: %d)", buf, 0x18u);
    }
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v52 = v148;
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

  v63 = [(UIInputViewSet *)v52->_inputViewSet inputAccessoryView];
  v64 = [v63 _containsResponder:v35];

  inputViewSet = v52->_inputViewSet;
  if (v64)
  {
    v66 = [(UIInputViewSet *)inputViewSet inputAccessoryView];

    v67 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v66];
      *buf = 138412290;
      *v151 = v68;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, updating inputAccessoryView: %@", buf, 0xCu);
    }

LABEL_80:
    obja = v21;

    v149 = v66;
    goto LABEL_82;
  }

  v69 = [(UIInputViewSet *)inputViewSet inputView];
  v70 = [v69 _containsResponder:v35];

  if (v70)
  {
    v71 = v54;
    v72 = [(UIInputViewSet *)v52->_inputViewSet inputView];

    v73 = [(UIInputViewSet *)v52->_inputViewSet keyboard];
    v47 = v73 != 0;

    v67 = _UIKeyboardSceneDelegateLogger();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v73 != 0;
      v75 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v72];
      *buf = 138412546;
      *v151 = v75;
      *&v151[8] = 1024;
      *&v151[10] = v74;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, updating inputView: %@, useKeyboard: %d", buf, 0x12u);
    }

    v66 = v149;
    v21 = v72;
    v54 = v71;
    v50 = v144;
    goto LABEL_80;
  }

  obja = v21;
LABEL_82:
  if (!+[UIKeyboard usesInputSystemUI])
  {
    if (v47)
    {
      v76 = [UIInputViewSet inputSetWithKeyboardAndAccessoryView:v149 assistantView:v54];
      v77 = _UIKeyboardSceneDelegateLogger();
      v78 = obja;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v79 = [(UIKeyboardSceneDelegate *)v52 _simpleViewDescriptionForLogging:v76];
        *buf = 138412290;
        *v151 = v79;
        _os_log_impl(&dword_188A29000, v77, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, useKeyboard ivs: %@", buf, 0xCu);
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
          v118 = [v117 snapshotting];

          if ((v118 & 1) == 0)
          {
            v119 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
            if ([v119 keyboardVisible])
            {
              v120 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
              v121 = [(UIKeyboardSceneDelegate *)v52 scene];
              [v120 intersectionHeightForWindowScene:v121];
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
              [v76 setShouldShowDockView:v141];
              goto LABEL_142;
            }
          }
        }
      }

      v76 = [UIInputViewSet inputSetWithInputView:v78 accessoryView:v149 assistantView:v54];
      [v76 setInputViewController:v143];
      v129 = [v76 inputView];
      [v76 setIsCustomInputView:v129 != 0];

      [v76 setShouldShowDockView:v141];
      v130 = [(UIKeyboardSceneDelegate *)v52 existingContainerWindow];
      if (!v130)
      {
        goto LABEL_142;
      }

      v131 = v130;
      v132 = [v76 isEmpty];

      if (!v132)
      {
        goto LABEL_142;
      }

      v133 = [(UIKeyboardSceneDelegate *)v52 containerRootController];
      v77 = [v133 inputViewSet];

      if (([v77 isEmpty]& 1) == 0 && [v77 isRemoteKeyboard])
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
      [UIInputViewSet inputSetWithKeyboardAndAccessoryView:v149 assistantView:v54];
    }

    else
    {
      [UIInputViewSet inputSetWithPlaceholderAndAccessoryView:v149 assistantView:v54];
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

  v139 = v54;
  if (v140)
  {
    v80 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    if ([v80 keyboardVisible])
    {
      v81 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      v82 = [(UIKeyboardSceneDelegate *)v52 scene];
      [v81 intersectionHeightForWindowScene:v82];
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

  v89 = [(UIKeyboardSceneDelegate *)v52 keyboardArbiterClient];
  v90 = [v89 currentUIState];
  v91 = [v90 applicationIdentifier];
  v92 = +[UIKeyboard keyboardBundleIdentifier];
  v93 = [v91 containsString:v92];

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
    v98 = [v97 keyboardVisible];
    v99 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v100 = [(UIKeyboardSceneDelegate *)v148 scene];
    [v99 intersectionHeightForWindowScene:v100];
    *buf = 67109888;
    *v151 = v95;
    *&v151[4] = 1024;
    *&v151[6] = v98;
    *&v151[10] = 2048;
    *&v151[12] = v101;
    *&v151[20] = 1024;
    *&v151[22] = v140;
    _os_log_impl(&dword_188A29000, v96, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder, needsInputViewPlaceholder: %d (visible: %d, height: %f, force: %d)", buf, 0x1Eu);

    v94 = obja;
    v52 = v148;
  }

  v54 = v139;
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
  v116 = [v76 hostedCustomInputView];
  [v76 setIsCustomInputView:v116 != 0];

  [v76 setShouldShowDockView:v141];
LABEL_124:
  [v76 setIsRemoteKeyboard:1];
LABEL_142:
  [v76 setAssistantViewController:v55];
  [v76 setAccessoryViewController:v147];
  if (v55)
  {
    v134 = [v35 _keyboardResponder];
    v135 = [v55 shouldBeShownForInputDelegate:v134 inputViews:v76];
    v136 = [v55 view];
    [v136 setHidden:v135 ^ 1u];
  }

  v137 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v151 = v76;
    _os_log_impl(&dword_188A29000, v137, OS_LOG_TYPE_DEFAULT, "_inputViewsForResponder returning: %@", buf, 0xCu);
  }

  v13 = v76;
  v9 = v142;
LABEL_147:

  return v13;
}

- (void)setShouldSuppressInputAssistantUpdates:(BOOL)a3
{
  v3 = a3;
  if (!+[UIKeyboard isMajelEnabled]&& self->_shouldSuppressInputAssistantUpdates != v3)
  {
    self->_shouldSuppressInputAssistantUpdates = v3;
    v5 = _UIKeyboardSceneDelegateLogger();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Start suppressing input assistant updates", buf, 2u);
      }

      v7 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
      [v7 setInputAssistantButtonItemsForResponder:0];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "End suppressing input assistant updates", v13, 2u);
      }

      v8 = +[UIKeyboardImpl activeInstance];
      v9 = [v8 inputDelegateManager];
      v7 = [v9 keyInputDelegate];

      v10 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
      [v10 automaticallySetCenterViewControllerBasedOnInputDelegate:v7];

      v11 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
      v12 = [(UIKeyboardSceneDelegate *)self responder];
      [v11 setInputAssistantButtonItemsForResponder:v12];
    }
  }
}

- (BOOL)hasIntegratedAssistantBar
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];

  LOBYTE(v2) = [v3 isHandwritingInputMode];
  return v2;
}

- (void)setInputViews:(id)a3 animationStyle:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_containerWindow || ![v11 isEmpty] || -[UIResponder _disableAutomaticKeyboardUI](self->_responder, "_disableAutomaticKeyboardUI"))
  {
    v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v8 = [v7 handlingRemoteEvent];

    if ((v8 & 1) == 0)
    {
      [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
    }

    v9 = [(UIKeyboardSceneDelegate *)self responder];
    v10 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v9];

    if (v10)
    {
      [(UIKeyboardSceneDelegate *)self setKeyWindowSceneInputViews:v11 animationStyle:v6];
    }

    else
    {
      [(UIKeyboardSceneDelegate *)self setWindowSceneInputViews:v11 animationStyle:v6];
    }
  }
}

- (void)setKeyWindowSceneInputViews:(id)a3 animationStyle:(id)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    v13 = [v12 handlingRemoteEvent];
  }

  else
  {
    v13 = [v8 isInputViewPlaceholder];
  }

  if (!-[UIKeyboardSceneDelegate automaticAppearanceReallyEnabled](self, "automaticAppearanceReallyEnabled") && (v13 & 1) == 0 && ([v7 force] & 1) == 0)
  {
    v27 = [(UIKeyboardSceneDelegate *)self inputViews];
    if (v27 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v28 = +[UIKeyboardImpl activeInstance];
      v29 = [v28 textInputTraits];
      v30 = [v29 keyboardType];

      if (v30 == 127)
      {
        [(UIKeyboardSceneDelegate *)self forceOrderOutAutomaticAnimated:1];
      }
    }

    else
    {
    }

    v33 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v34 = [v33 isRotating];

    if (v34)
    {
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke;
      v92[3] = &unk_1E70F6228;
      v92[4] = self;
      v93 = v8;
      v94 = v7;
      v35 = [(UIKeyboardSceneDelegate *)self containerRootController];
      [v35 setPostRotationPendingBlock:v92];
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

  v17 = [(UIKeyboardSceneDelegate *)self containerRootController];
  [v17 setPostRotationPendingBlock:0];

  [v8 refreshPresentation];
  [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
  v18 = [(UIKeyboardSceneDelegate *)self responder];
  [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v8 responder:v18];

  v19 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if (!+[_UIRemoteKeyboards enabled])
  {
    v24 = 0;
    v25 = 0;
    v26 = v8;
    goto LABEL_65;
  }

  v20 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if (+[UIKeyboard isInputSystemUI])
  {
    v21 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    if ([v21 keyboardVisible])
    {
      v22 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
      v23 = [v22 keyboardActive];

      if (v23)
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
      v31 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
      v32 = [v31 animated];

      if (v32)
      {
        goto LABEL_47;
      }

LABEL_45:
      +[UIInputViewAnimationStyle animationStyleImmediate];
      v7 = v21 = v7;
      goto LABEL_46;
    }

    v39 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v40 = [v39 placement];
    if ([v40 accessoryViewWillAppear])
    {
      v41 = [(UIKeyboardSceneDelegate *)self containerRootController];
      v42 = [v41 placement];
      v43 = [v42 showsKeyboard];

      if (!v43)
      {
        goto LABEL_47;
      }
    }

    else
    {
    }

    v21 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    v44 = [v21 currentUIState];
    if (!v44)
    {
      goto LABEL_46;
    }

    v45 = v44;
    v46 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    v47 = [v46 currentUIState];
    v48 = [v47 animated];

    if (v48)
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
  v85 = v19;
  [(UIKeyboardSceneDelegate *)self prepareToMoveKeyboardForInputViewSet:v8 animationStyle:v7];
  v49 = [(UIKeyboardSceneDelegate *)self containerWindow];
  v50 = objc_opt_respondsToSelector();

  if (v50)
  {
    v51 = [MEMORY[0x1E696AD88] defaultCenter];
    v52 = [(UIKeyboardSceneDelegate *)self containerWindow];
    [v51 removeObserver:v52 name:0x1EFB921F0 object:0];

    v53 = [MEMORY[0x1E696AD88] defaultCenter];
    v54 = [(UIKeyboardSceneDelegate *)self containerWindow];
    [v53 addObserver:v54 selector:sel_applicationWindowRotated_ name:0x1EFB921F0 object:0];
  }

  v55 = [v20 keyboardWindow];
  v25 = [v55 rootViewController];

  v56 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v57 = v56 | v25;

  if (v57)
  {
    v84 = v20;
    v58 = [(UIKeyboardSceneDelegate *)self scene];
    v59 = [v8 inputView];
    v60 = [v8 inputAccessoryView];
    v61 = [v8 inputAssistantView];
    v82 = v58;
    if (v59 | v61)
    {
      v62 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidthSizer:&__block_literal_global_631_1 heightWithScene:v58];
    }

    else
    {
      v62 = 0;
    }

    [v62 setFallbackView:v59];
    [v62 setAssociatedView:v61];
    v83 = [_UIRemoteKeyboardPlaceholderView placeholderForView:v60];
    v78 = [v8 isCustomInputView];
    v81 = [v8 hostedCustomInputView];
    v79 = [v8 isRemoteKeyboard];
    v80 = [v8 shouldShowDockView];
    v68 = [(UIKeyboardSceneDelegate *)self visualModeManager];
    v69 = [v68 shouldShowWithinAppWindow];

    v70 = [(UIKeyboardSceneDelegate *)self visualModeManager];
    v71 = [objc_opt_class() visualModeLog];

    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v96 = v69;
      _os_log_impl(&dword_188A29000, v71, OS_LOG_TYPE_DEFAULT, "Show keyboard with visual mode windowed (%d)", buf, 8u);
    }

    if (+[UIKeyboard usesLocalKeyboard](UIKeyboard, "usesLocalKeyboard") || (+[_UIRemoteKeyboards sharedRemoteKeyboards](_UIRemoteKeyboards, "sharedRemoteKeyboards"), v72 = objc_claimAutoreleasedReturnValue(), v73 = [v72 oldPathForSnapshot] | v69, v72, (v73 & 1) != 0))
    {
      v24 = [UIInputViewSet inputSetWithInputView:v62 accessoryView:v83 assistantView:0];
      v66 = v60;
      v26 = [UIInputViewSet inputSetWithInputView:v59 accessoryView:v60 assistantView:v61];
    }

    else
    {
      v24 = [UIInputViewSet inputSetWithInputView:v59 accessoryView:v83 assistantView:v61];
      [v24 inheritNullState:v8];
      v66 = v60;
      v26 = [UIInputViewSet inputSetWithInputView:v62 accessoryView:v60 assistantView:0];

      [v26 inheritNullState:v24];
    }

    [v24 setIsCustomInputView:v78];
    [v26 setIsCustomInputView:v78];
    [v26 setHostedCustomInputView:v81];
    [v24 setIsRemoteKeyboard:v79];
    [v26 setIsRemoteKeyboard:v79];
    [v24 setShouldShowDockView:v80];
    [v26 setShouldShowDockView:v80];
    [v24 setShouldShowInputSwitcherView:1];

    v64 = v82;
    v67 = v83;
    goto LABEL_63;
  }

  v63 = [v8 keyboard];

  if (v63)
  {
    v84 = v20;
    v64 = [v8 inputView];
    v59 = [_UIRemoteKeyboardPlaceholderView placeholderForView:v64];
    v65 = [v8 inputAccessoryView];
    v61 = [v8 inputAssistantView];
    v62 = [_UIRemoteKeyboardPlaceholderView placeholderForView:v61];
    v66 = v65;
    v26 = [UIInputViewSet inputSetWithInputView:v59 accessoryView:v65 assistantView:v62];
    v24 = 0;
    v67 = v8;
LABEL_63:

    v20 = v84;
    goto LABEL_64;
  }

  v24 = 0;
  v26 = v8;
LABEL_64:

  v19 = v85;
LABEL_65:
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke_633;
  v89[3] = &unk_1E70F35B8;
  v90 = v25;
  v91 = v24;
  v37 = v25;
  v14 = v24;
  [v37 performOperations:v89 withAnimationStyle:v7];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __70__UIKeyboardSceneDelegate_setKeyWindowSceneInputViews_animationStyle___block_invoke_2;
  v86[3] = &unk_1E70F35B8;
  v87 = v19;
  v38 = v26;
  v88 = v38;
  v74 = v19;
  [v74 performOperations:v86 withAnimationStyle:v7];
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

- (void)setWindowSceneInputViews:(id)a3 animationStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[UIKeyboardSceneDelegate automaticAppearanceReallyEnabled](self, "automaticAppearanceReallyEnabled") || [v7 force])
  {
    [v6 refreshPresentation];
    [(UIKeyboardSceneDelegate *)self updateRenderConfigForCurrentResponder];
    v8 = [(UIKeyboardSceneDelegate *)self responder];
    [(UIKeyboardSceneDelegate *)self setTextEffectsWindowLevelForInputView:v6 responder:v8];

    v9 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v10 = [(UIKeyboardSceneDelegate *)self scene];
    v11 = [(UIKeyboardSceneDelegate *)self containerWindow];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [(UIKeyboardSceneDelegate *)self containerWindow];
      [v13 removeObserver:v14 name:0x1EFB921F0 object:0];

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = [(UIKeyboardSceneDelegate *)self containerWindow];
      [v15 addObserver:v16 selector:sel_applicationWindowRotated_ name:0x1EFB921F0 object:0];
    }

    if (+[_UIRemoteKeyboards enabled])
    {
      v17 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      v18 = [v17 keyboardVisible];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v6 inputView];
    v20 = [v6 inputAccessoryView];
    v21 = [v6 inputAssistantView];
    v22 = v21;
    if (v19 || v21 || v18)
    {
      v23 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidthSizer:&__block_literal_global_635 heightWithScene:v10];
    }

    else
    {
      v23 = 0;
    }

    [v23 setFallbackView:v19];
    [v23 setAssociatedView:v22];
    v24 = [UIInputViewSet inputSetWithInputView:v23 accessoryView:v20 assistantView:0];
    [v24 inheritNullState:v6];
    [v24 setIsCustomInputView:{objc_msgSend(v6, "isCustomInputView")}];
    [v24 setIsRemoteKeyboard:{objc_msgSend(v6, "isRemoteKeyboard")}];
    [v24 setShouldShowDockView:{objc_msgSend(v6, "shouldShowDockView")}];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__UIKeyboardSceneDelegate_setWindowSceneInputViews_animationStyle___block_invoke_2;
    v27[3] = &unk_1E70F35B8;
    v28 = v9;
    v29 = v24;
    v25 = v24;
    v26 = v9;
    [v26 performOperations:v27 withAnimationStyle:v7];
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

- (void)setInputViews:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:v4];
  [(UIKeyboardSceneDelegate *)self setInputViews:v6 animationStyle:v7];
}

- (void)setInputViews:(id)a3
{
  v4 = a3;
  [(UIKeyboardSceneDelegate *)self setInputViews:v4 animated:[(UIKeyboardSceneDelegate *)self animationsEnabled]];
}

- (void)reloadPlacement
{
  v3 = [(UIKeyboardSceneDelegate *)self inputViews];
  [(UIKeyboardSceneDelegate *)self setInputViews:v3];

  [(UIKeyboardSceneDelegate *)self refreshKeyboardLayoutGuideEnsuringControllerExists:0];
}

- (void)refreshKeyboardLayoutGuideEnsuringControllerExists:(BOOL)a3
{
  if (!a3)
  {
    v3 = [(UIKeyboardSceneDelegate *)self existingContainerRootController];
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if (v3)
  {
LABEL_5:
    v4 = v3;
    [v3 refreshKeyboardLayoutGuide];
    v3 = v4;
  }

LABEL_6:
}

- (void)performMultipleOperations:(id)a3 withAnimationStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[_UIRemoteKeyboards enabled]&& ([(UIKeyboardSceneDelegate *)self responder], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v8], v8, v9))
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke;
    v23[3] = &unk_1E7108338;
    v24 = v10;
    v26 = v6;
    v25 = v7;
    v12 = v10;
    [v11 performOnControllers:v23];
  }

  else
  {
    v13 = [(UIKeyboardSceneDelegate *)self containerRootController];
    v14 = [v13 inputViewSet];
    v15 = [v14 inputView];
    if (v15)
    {
      v16 = v15;
      v17 = [(UIKeyboardSceneDelegate *)self containerRootController];
      v18 = [v17 inputViewSet];
      v19 = [v18 isCustomInputView];

      if ((v19 & 1) == 0)
      {
        v20 = [(UIKeyboardSceneDelegate *)self containerRootController];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __72__UIKeyboardSceneDelegate_performMultipleOperations_withAnimationStyle___block_invoke_3;
        v21[3] = &unk_1E70F4A50;
        v21[4] = self;
        v22 = v6;
        [v20 performOperations:v21 withAnimationStyle:v7];
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

- (BOOL)_showKeyboardWindowForInputViewSet:(id)a3 placement:(id)a4 windowScene:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (!+[UIKeyboard inputUIOOP])
  {
    v10 = [v7 inputView];
    if (!v10 || [v7 isInputViewPlaceholder])
    {
      v11 = [v7 inputAssistantView];
      if (!v11 || ([v7 isInputAssistantViewPlaceholder] & 1) != 0)
      {
        v12 = [v7 isNullInputView];

        if ((v12 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

LABEL_11:
    if ([v8 showsInputViews] & 1) != 0 || (objc_msgSend(v8, "isUndocked") & 1) != 0 || (objc_msgSend(v7, "keyboard"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v7, "keyboard"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isMinimized"), v15, v14, (v16))
    {
      v9 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = [(UIKeyboardSceneDelegate *)self showingKeyboardForInputViewSet:v7];
LABEL_17:

  return v9;
}

- (void)updateArbiterClientWithKeyboardFrame:(CGRect)a3 keyboarFrameWithIAV:(CGRect)a4 isIAVRelevant:(BOOL)a5 showing:(BOOL)a6 notifyRemote:(BOOL)a7 forScene:(id)a8
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  height = a4.size.height;
  v12 = a3.size.height;
  v15 = a8;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v14 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    [v14 setShowing:v9];
  }

  else
  {
    v14 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    [v14 inputDestinationDidChange:v9 withIAVHeight:v10 isIAVRelevant:v8 notifyRemote:v15 forScene:height - v12];
  }
}

- (BOOL)showingKeyboardForInputViewSet:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSceneDelegate *)self responder];
  if ([v5 _requiresKeyboardWhenFirstResponder])
  {
    v6 = [(UIKeyboardSceneDelegate *)self responder];
    v7 = [v6 _keyboardResponder];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 isCustomInputView];
    }
  }

  else
  {
    v8 = [v4 isCustomInputView];
  }

  return v8;
}

- (void)prepareToMoveKeyboardForInputViewSet:(id)a3 animationStyle:(id)a4
{
  v39 = a3;
  v6 = a4;
  v7 = [(UIKeyboardSceneDelegate *)self _windowScene];
  v8 = [(UIKeyboardSceneDelegate *)self responder];
  v9 = [(UIKeyboardSceneDelegate *)self shouldLoadKeySceneInputViewsForResponder:v8];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = v9 & ([v39 isInputAccessoryViewPlaceholder] ^ 1);
  }

  if (+[_UIRemoteKeyboards enabled])
  {
    v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v11 = [v10 handlingRemoteEvent];

    v9 = (v11 ^ 1) & v9;
  }

  v12 = [v6 endPlacementForInputViewSet:v39 windowScene:v7];
  v13 = [(UIKeyboardSceneDelegate *)self _showKeyboardWindowForInputViewSet:v39 placement:v12 windowScene:v7];
  if (+[UIKeyboard inputUIOOP])
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      v13 = [(UIKeyboardSceneDelegate *)self showingKeyboardForInputViewSet:v39];
    }

    [v12 remoteIntrinsicContentSizeForInputViewInSet:v39 includingIAV:0];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v12 remoteIntrinsicContentSizeForInputViewInSet:v39 includingIAV:1];
    [(UIKeyboardSceneDelegate *)self updateArbiterClientWithKeyboardFrame:v9 keyboarFrameWithIAV:v13 isIAVRelevant:v9 showing:v7 notifyRemote:v15 forScene:v17, v19, v21, v22, v23, v24, v25];
  }

  else
  {
    v26 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v12 remoteIntrinsicContentSizeForInputViewInSet:v39 includingIAV:0];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v12 remoteIntrinsicContentSizeForInputViewInSet:v39 includingIAV:1];
    [v26 prepareToMoveKeyboard:objc_msgSend(v39 withIAV:"isInputAccessoryViewPlaceholder") ^ 1 isIAVRelevant:v13 showing:v9 notifyRemote:v7 forScene:{v28, v30, v32, v34, v35, v36, v37, v38}];
  }
}

- (void)completeMoveKeyboardForWindow:(id)a3
{
  v7 = a3;
  if (+[UIKeyboard inputUIOOP])
  {
    v4 = +[UIKeyboard isKeyboardProcess];
    v5 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
    v6 = v5;
    if (v4)
    {
      [v5 completeKeyboardChange];
    }

    else
    {
      [v5 completeMoveKeyboard];
    }
  }

  else
  {
    v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v6 completeMoveKeyboardForWindow:v7];
  }
}

- (id)forceCreateKeyboardWindow
{
  v3 = [(UIKeyboardSceneDelegate *)self keyboardWindow];

  if (!v3)
  {
    v4 = [(UIKeyboardSceneDelegate *)self _windowScene];
    if (+[UIKeyboard inputUIOOP])
    {
      [(UIKeyboardSceneDelegate *)self updateArbiterClientWithKeyboardFrame:0 keyboarFrameWithIAV:1 isIAVRelevant:1 showing:v4 notifyRemote:*MEMORY[0x1E695F058] forScene:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    else
    {
      v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      [v5 prepareToMoveKeyboard:0 withIAV:1 isIAVRelevant:1 showing:v4 notifyRemote:*MEMORY[0x1E695F058] forScene:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }
  }

  return [(UIKeyboardSceneDelegate *)self keyboardWindow];
}

- (void)destroyKeyboardWindowIfNecessary
{
  v9 = +[UIInputViewAnimationStyle animationStyleImmediate];
  v3 = [(UIKeyboardSceneDelegate *)self _windowScene];
  v4 = [(UIKeyboardSceneDelegate *)self inputViews];
  v5 = [v9 endPlacementForInputViewSet:v4 windowScene:v3];

  v6 = [(UIKeyboardSceneDelegate *)self inputViews];
  v7 = [(UIKeyboardSceneDelegate *)self _showKeyboardWindowForInputViewSet:v6 placement:v5 windowScene:v3];

  if (!v7)
  {
    if (+[UIKeyboard inputUIOOP])
    {
      [(UIKeyboardSceneDelegate *)self updateArbiterClientWithKeyboardFrame:0 keyboarFrameWithIAV:0 isIAVRelevant:1 showing:v3 notifyRemote:*MEMORY[0x1E695F058] forScene:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    else
    {
      v8 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      [v8 prepareToMoveKeyboard:0 withIAV:0 isIAVRelevant:1 showing:v3 notifyRemote:*MEMORY[0x1E695F058] forScene:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v8 completeMoveKeyboardForWindow:0];
    }
  }
}

- (void)refreshWithLocalMinimumKeyboardHeight:(double)a3
{
  v7 = [(UIKeyboardSceneDelegate *)self scene];
  v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v6 = [v5 refreshWithLocalMinimumKeyboardHeight:v7 forScene:a3];

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

- (BOOL)minimizeWithAnimationStyle:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([v7 isTransitioning])
  {
    v8 = [(UIKeyboardSceneDelegate *)self responder];
    v9 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v8];
  }

  else
  {
    v9 = [(UIKeyboardSceneDelegate *)self inputViews];
  }

  [(UIKeyboardSceneDelegate *)self setKeyWindowSceneInputViews:v9 animationStyle:v6];
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__UIKeyboardSceneDelegate_minimizeWithAnimationStyle_force___block_invoke;
    v12[3] = &unk_1E7108360;
    v12[4] = self;
    [(UIKeyboardSceneDelegate *)self performMultipleOperations:v12 withAnimationStyle:v6];
  }

  if (![(UIKeyboardSceneDelegate *)self shouldSuppressInputAssistantUpdates])
  {
    v10 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    [v10 dismissEmojiSearch];
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

- (BOOL)maximizeWithAnimation:(BOOL)a3
{
  if (a3)
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

- (BOOL)maximizeWithAnimationStyle:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(UIKeyboardSceneDelegate *)self setHideSystemInputAssistantView:0];
  v7 = [(UIKeyboardSceneDelegate *)self containerRootController];
  if ([v7 isTransitioning])
  {
    v8 = [(UIKeyboardSceneDelegate *)self responder];
    v9 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v8];
  }

  else
  {
    v9 = [(UIKeyboardSceneDelegate *)self inputViews];
  }

  [(UIKeyboardSceneDelegate *)self setKeyWindowSceneInputViews:v9 animationStyle:v6];
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__UIKeyboardSceneDelegate_maximizeWithAnimationStyle_force___block_invoke;
    v11[3] = &unk_1E7108360;
    v11[4] = self;
    [(UIKeyboardSceneDelegate *)self performMultipleOperations:v11 withAnimationStyle:v6];
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

- (id)_placementForDeactivatedKeyboard:(BOOL)a3 currentPlacement:(id)a4 forSuppressionAssertion:(BOOL)a5 wantsAssistant:(BOOL)a6 keepAccessories:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v42[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  if (v10)
  {
    v14 = [(UIKeyboardSceneDelegate *)self inputViews];
    v15 = [v14 inputAccessoryView];

    if (v9 && !v7 || (NSClassFromString(&cfstr_Uiwebformacces.isa), (objc_opt_isKindOfClass() & 1) != 0))
    {

      goto LABEL_6;
    }

    if (!v15)
    {
LABEL_6:
      if ([v12 isFloating])
      {
        v16 = [v12 subPlacements];
        v17 = [v16 count];

        if (v17)
        {
          v18 = [v12 subPlacements];
          v19 = [v18 objectAtIndexedSubscript:0];

          v20 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v19];
          v42[0] = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
          [v12 setSubPlacements:v21];
        }

        if (!v8)
        {
          v22 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v12];
LABEL_22:
          v29 = v22;
          goto LABEL_23;
        }
      }

      else if (!v8)
      {
        v30 = UIInputViewSetPlacementOffScreenDown;
        goto LABEL_21;
      }

      v30 = UIInputViewSetPlacementAssistantOnScreen;
LABEL_21:
      v22 = [(__objc2_class *)v30 placement];
      goto LABEL_22;
    }

    if ([v12 isFloatingAssistantView])
    {
      v31 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v12];
    }

    else
    {
      if (v8)
      {
        v34 = UIInputViewSetPlacementAssistantOnScreen;
      }

      else
      {
        v34 = UIInputViewSetPlacementAccessoryOnScreen;
      }

      v31 = [(__objc2_class *)v34 placement];
    }

    v29 = v31;
  }

  else
  {
    v23 = +[UIWindow _applicationKeyWindow];
    v24 = [v23 firstResponder];

    if (v9)
    {
      v25 = [(UIKeyboardSceneDelegate *)self responder];

      if (v25 == v24)
      {
        [v24 reloadInputViews];
      }
    }

    self->_dontNeedAssistantBar = 1;
    v26 = [(UIKeyboardSceneDelegate *)self responder];
    v27 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v26];

    self->_dontNeedAssistantBar = 0;
    v28 = [(UIKeyboardSceneDelegate *)self scene];
    v29 = [v13 endPlacementForInputViewSet:v27 windowScene:v28];
  }

LABEL_23:
  v32 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 67109890;
    v35[1] = v10;
    v36 = 2112;
    v37 = v12;
    v38 = 1024;
    v39 = v9;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEFAULT, "_placementForDeactivatedKeyboard, deactivated: %d, curPlacement: %@, forSuppressionAssertion: %d -> %@", v35, 0x22u);
  }

  return v29;
}

- (void)forceOrderInAutomaticFromDirection:(int)a3 withDuration:(double)a4
{
  v5 = *&a3;
  [(UIKeyboardSceneDelegate *)self createAutomaticKeyboardIfNeeded];
  v7 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:a4 > 0.0 duration:v5 outDirection:a4];
  [v7 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderInWithAnimationStyle:v7];
}

- (void)forceOrderOutAutomaticToDirection:(int)a3 withDuration:(double)a4
{
  v5 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:a4 > 0.0 duration:*&a3 outDirection:?];
  [v5 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderOutWithAnimationStyle:v5];
}

- (void)forceOrderInAutomaticAnimated:(BOOL)a3
{
  v4 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:a3];
  [v4 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderInWithAnimationStyle:v4];
}

- (void)forceOrderOutAutomaticAnimated:(BOOL)a3
{
  v4 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:a3];
  [v4 setForce:1];
  [(UIKeyboardSceneDelegate *)self orderOutWithAnimationStyle:v4];
}

- (void)forceOrderOutAutomaticExceptAccessoryView
{
  if ([(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
  {
    v3 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle:[(UIKeyboardSceneDelegate *)self animationsEnabled]];
    if (!v3)
    {
      v3 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
    }

    v11 = v3;
    v4 = [(UIKeyboardSceneDelegate *)self inputViews];
    v5 = [v4 inputAccessoryView];

    if (v5)
    {
      v6 = [(UIKeyboardSceneDelegate *)self inputViews];
      v7 = [v6 inputAccessoryView];
      v8 = [UIInputViewSet inputSetWithInputView:0 accessoryView:v7];

      v9 = [(UIKeyboardSceneDelegate *)self inputViews];
      v10 = [v9 accessoryViewController];
      [v8 setAccessoryViewController:v10];
    }

    else
    {
      v8 = +[UIInputViewSet emptyInputSet];
    }

    [(UIKeyboardSceneDelegate *)self setInputViews:v8 animationStyle:v11];
  }
}

- (void)orderInWithAnimationStyle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  }

  v22 = v4;
  v5 = [(UIKeyboardSceneDelegate *)self responder];

  if (v5)
  {
    v6 = [(UIKeyboardSceneDelegate *)self responder];
    v7 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v6];
  }

  else
  {
    v8 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    v9 = [v8 view];
    v7 = [UIInputViewSet inputSetWithKeyboardAndAccessoryView:0 assistantView:v9];

    v6 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    LODWORD(v9) = [v6 shouldBeShownForInputDelegate:0 inputViews:v7];
    v10 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    v11 = [v10 view];
    [v11 setHidden:v9 ^ 1];
  }

  v12 = [v7 keyboard];

  if (v12)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 window];
    if (v14)
    {
      v15 = [(UIKeyboardSceneDelegate *)self containerWindow];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(UIKeyboardSceneDelegate *)self keyboardWindow];

        if (v14 != v17)
        {

          goto LABEL_16;
        }
      }
    }

    v18 = [v13 textInputTraits];
    v19 = [v18 keyboardType];

    if (v19 == 127)
    {
      v20 = [v13 textInputTraits];
      [v20 setKeyboardType:0];
    }

    v21 = +[UIKeyboardImpl sharedInstance];
    [v21 updateLayoutIfNeeded];
  }

  [(UIKeyboardSceneDelegate *)self setInputViews:v7 animationStyle:v22];
LABEL_16:
}

- (void)orderOutWithAnimationStyle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(UIKeyboardSceneDelegate *)self nextAnimationStyle];
  }

  v6 = v4;
  v5 = +[UIInputViewSet emptyInputSet];
  [(UIKeyboardSceneDelegate *)self setInputViews:v5 animationStyle:v6];
}

- (void)_setIgnoresPinning:(BOOL)a3 allowImmediateReload:(BOOL)a4
{
  if (self->_ignoresPinning != a3)
  {
    self->_ignoresPinning = a3;
    if (a3 && a4)
    {
      postPinningReloadState = self->_postPinningReloadState;
      if (postPinningReloadState)
      {
        v6 = [(UIInputViewPostPinningReloadState *)postPinningReloadState responderToReload];
        [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:v6];
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

- (void)_beginPinningInputViewsOnBehalfOfResponder:(id)a3
{
  pinningResponders = self->_pinningResponders;
  v5 = a3;
  [(NSMutableSet *)pinningResponders addObject:v5];
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 keyboardSceneDelegate:self startedPinningInputViewsOnBehalfOfResponder:v5];
}

- (void)_stopPinningInputViewsOnBehalfOfResponder:(id)a3
{
  v13 = a3;
  v4 = [(NSMutableSet *)self->_pinningResponders count];
  v5 = v13;
  if (v4)
  {
    [(NSMutableSet *)self->_pinningResponders removeObject:v13];
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 keyboardSceneDelegate:self stoppedPinningInputViewsOnBehalfOfResponder:v13];

    v7 = [(NSMutableSet *)self->_pinningResponders count];
    v5 = v13;
    if (!v7)
    {
      postPinningReloadState = self->_postPinningReloadState;
      if (postPinningReloadState)
      {
        v9 = [(UIInputViewPostPinningReloadState *)postPinningReloadState responderToReload];
        v10 = [(UIKeyboardSceneDelegate *)self waitingForInputUI];
        v11 = [(UIKeyboardSceneDelegate *)self clearWaitingForInputUIIfNeeded];
        [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:v9];
        if (v11 && v10)
        {
          [(UIKeyboardSceneDelegate *)self setWaitingForInputUI:v10];
        }

        v12 = self->_postPinningReloadState;
        self->_postPinningReloadState = 0;

        v5 = v13;
      }
    }
  }
}

+ (void)_pinInputViewsForKeyboardSceneDelegate:(id)a3 onBehalfOfResponder:(id)a4 duringBlock:(id)a5
{
  v11 = a3;
  v7 = a4;
  if (v11 && v7)
  {
    v8 = a5;
    [v11 _beginPinningInputViewsOnBehalfOfResponder:v7];
    v8[2](v8);

    [v11 _stopPinningInputViewsOnBehalfOfResponder:v7];
  }

  else
  {
    v9 = *(a5 + 2);
    v10 = a5;
    v9();
  }
}

- (BOOL)pinningPreventsInputViews:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_pinningResponders count]&& !self->_ignoresPinning)
  {
    v6 = [(UIKeyboardSceneDelegate *)self inputViews];
    v5 = [v6 isStrictSupersetOfViewSet:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isTrackingResponder:(id)a3
{
  postPinningReloadState = self->_postPinningReloadState;
  v5 = a3;
  if (postPinningReloadState)
  {
    [(UIInputViewPostPinningReloadState *)postPinningReloadState responderToReload];
  }

  else
  {
    [(UIKeyboardSceneDelegate *)self responder];
  }
  v6 = ;

  return v6 == v5;
}

- (void)addTrackingElement:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_trackingElements)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    trackingElements = self->_trackingElements;
    self->_trackingElements = v5;
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
    v14 = v4;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "Tracking elements: Adding new tracking element [%lu current elements]: <%@: %p>", &v9, 0x20u);
  }

  [(NSHashTable *)self->_trackingElements addObject:v4];
}

- (void)removeTrackingElement:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIKeyboardSceneDelegateLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSHashTable *)self->_trackingElements count];
    v7 = 134218498;
    v8 = v6;
    v9 = 2112;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = v4;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Tracking elements: Removing tracking element [%lu current elements]: <%@: %p>", &v7, 0x20u);
  }

  [(NSHashTable *)self->_trackingElements removeObject:v4];
}

- (void)updateTrackingElementsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)updateTrackingElementsForOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
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

- (void)addVisibilityObserver:(id)a3
{
  v4 = a3;
  visibilityObservers = self->_visibilityObservers;
  v8 = v4;
  if (!visibilityObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_visibilityObservers;
    self->_visibilityObservers = v6;

    v4 = v8;
    visibilityObservers = self->_visibilityObservers;
  }

  [(NSHashTable *)visibilityObservers addObject:v4];
}

- (void)_updateVisibilityObserversWithReset:(BOOL)a3
{
  v15 = a3;
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
  v7 = [v6 wantsAssistantWhileSuppressingKeyboard];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_visibilityObservers;
  v8 = [(NSHashTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v7 ^ 1;
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
          [v13 keyboardSceneDelegate:self inputViewSetVisibilityDidChange:v10 & v5 includedReset:v15];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v13 inputResponderController:self inputViewSetVisibilityDidChange:v10 & v5 includedReset:v15];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [(NSHashTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (BOOL)_preserveMultiDocumentTokenIfNecessary:(id)a3 withId:(id)a4 reset:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 restorableResponder];
  v10 = [v9 conformsToProtocol:&unk_1F0104DB0];

  if (v10)
  {
    v11 = v8;
    v12 = [v7 restorableResponder];
    LOBYTE(v10) = objc_opt_respondsToSelector();
    if (v10)
    {
      [v12 _preserveFocusWithToken:v11 destructively:v5];
    }
  }

  return v10 & 1;
}

- (BOOL)_restoreMultiDocumentTokenIfNecessary:(id)a3 withId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = [v5 restorableResponder];
  v8 = [v7 conformsToProtocol:&unk_1F0104DB0];

  if (v8)
  {
    v9 = v6;
    v10 = [v5 restorableResponder];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 _restoreFocusWithToken:v9];
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
      [v10 _restoreFocusWithToken:v9 completion:v17];
      v14 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v13, v14);
    }
  }

  v15 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v15;
}

- (void)_clearMultiDocumentTokenIfNecessary:(id)a3 withId:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 conformsToProtocol:&unk_1F0104DB0])
  {
    v6 = v5;
    v7 = v8;
    if (objc_opt_respondsToSelector())
    {
      [v7 _clearToken:v6];
    }
  }
}

- (BOOL)_isPreservedRestorableResponder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableDictionary *)self->_preservedViewSets allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) restorableResponder];

        if (v9 == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_preserveInputViewsWithId:(id)a3 animated:(BOOL)a4 reset:(BOOL)a5
{
  v5 = a5;
  v35 = a3;
  if (![(UIKeyboardSceneDelegate *)self automaticAppearanceReallyEnabled])
  {
    if ([UIApp _isSpringBoard])
    {
      v8 = +[UIKeyboardImpl activeInstance];
      v9 = [v8 textInputTraits];
      v10 = [v9 keyboardAppearance];

      if (v10 == 127)
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

    if (a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:
    [(UIKeyboardSceneDelegate *)self _beginDisablingAnimations];
  }

LABEL_7:
  if (v35)
  {
    v11 = [(UIKeyboardSceneDelegate *)self inputViews];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[UIInputViewSet emptyInputSet];
    }

    v16 = v13;

    v17 = [v16 inputView];
    v18 = [v17 _inheritedRenderConfig];
    [v16 setRestorableRenderConfig:v18];

    v19 = [(UIKeyboardSceneDelegate *)self responder];
    [v16 setRestorableResponder:v19];

    [v16 setRestoreUsingBecomeFirstResponder:v5 ^ 1];
    v20 = [(UIKeyboardSceneDelegate *)self responder];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(UIKeyboardSceneDelegate *)self responder];
      [v22 _tagAsRestorableResponder];
    }

    [(NSMutableDictionary *)self->_preservedViewSets setObject:v16 forKey:v35];
    v23 = [v16 restorableResponder];
    responderWithoutAutomaticAppearanceEnabled = self->_responderWithoutAutomaticAppearanceEnabled;

    if (v23 != responderWithoutAutomaticAppearanceEnabled)
    {
      v25 = self->_responderWithoutAutomaticAppearanceEnabled;
      self->_responderWithoutAutomaticAppearanceEnabled = 0;
    }

    v26 = [v16 inputAccessoryView];
    v27 = [v26 _nextResponderOverride];
    [v16 setAccessoryViewNextResponder:v27];

    v28 = [v16 accessoryViewNextResponder];
    LOBYTE(v27) = objc_opt_respondsToSelector();

    if (v27)
    {
      v29 = [v16 accessoryViewNextResponder];
      [v29 _tagAsRestorableResponder];
    }

    v30 = [v16 accessoryViewController];
    v31 = [v30 _nextResponderOverride];
    [v16 setAccessoryControllerNextResponder:v31];

    v32 = [v16 accessoryControllerNextResponder];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v34 = [v16 accessoryViewController];
      [v34 _tagAsRestorableResponder];
    }

    if ([(UIKeyboardSceneDelegate *)self _preserveMultiDocumentTokenIfNecessary:v16 withId:v35 reset:v5])
    {
      [v16 _forceRestoreUsingBecomeFirstResponder:1];
    }

    [(UIKeyboardSceneDelegate *)self _updateVisibilityObserversWithReset:v5];
  }

  if (v5)
  {
    [(UIKeyboardSceneDelegate *)self setPreservingInputViews:1];
    [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:0];
    [(UIKeyboardSceneDelegate *)self setPreservingInputViews:0];
  }

  if (!a4)
  {
    [(UIKeyboardSceneDelegate *)self _endDisablingAnimations];
  }

LABEL_28:
}

- (void)_restoreInputAccessoryViewOverrideWithId:(id)a3
{
  v4 = a3;
  preservedViewSets = self->_preservedViewSets;
  if (preservedViewSets)
  {
    v15 = v4;
    v6 = [(NSMutableDictionary *)preservedViewSets count];
    v4 = v15;
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_preservedViewSets objectForKey:v15];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 accessoryViewNextResponder];

        if (v9)
        {
          v10 = [v8 inputAccessoryView];
          v11 = [v8 accessoryViewNextResponder];
          [v10 _overrideInputAccessoryViewNextResponderWithResponder:v11];
        }

        v12 = [v8 accessoryControllerNextResponder];

        if (v12)
        {
          v13 = [v8 accessoryViewController];
          v14 = [v8 accessoryControllerNextResponder];
          [v13 _overrideInputAccessoryViewNextResponderWithResponder:v14];
        }
      }

      v4 = v15;
    }
  }
}

- (BOOL)_restoreInputViewsWithId:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  preservedViewSets = self->_preservedViewSets;
  if (preservedViewSets && [(NSMutableDictionary *)preservedViewSets count])
  {
    v8 = [(NSMutableDictionary *)self->_preservedViewSets objectForKey:v6];
    if (v8 && ([(NSMutableSet *)self->_keysBeingRestored containsObject:v6]& 1) == 0)
    {
      keysBeingRestored = self->_keysBeingRestored;
      if (!keysBeingRestored)
      {
        v10 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
        v11 = self->_keysBeingRestored;
        self->_keysBeingRestored = v10;

        keysBeingRestored = self->_keysBeingRestored;
      }

      [(NSMutableSet *)keysBeingRestored addObject:v6];
      v12 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      if (!v12 || (v13 = v12, +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 shouldAllowInputViewsRestoredForId:v6], v14, v13, (v15 & 1) != 0))
      {
        if (!a4)
        {
          [(UIKeyboardSceneDelegate *)self _beginDisablingAnimations];
        }

        v16 = [v8 accessoryViewNextResponder];

        if (v16)
        {
          v17 = [v8 inputAccessoryView];
          v18 = [v8 accessoryViewNextResponder];
          [v17 _overrideInputAccessoryViewNextResponderWithResponder:v18];
        }

        v19 = [v8 accessoryControllerNextResponder];

        if (v19)
        {
          v20 = [v8 accessoryViewController];
          v21 = [v8 accessoryControllerNextResponder];
          [v20 _overrideInputAccessoryViewNextResponderWithResponder:v21];
        }

        v22 = [v8 restorableRenderConfig];
        [(UIKeyboardSceneDelegate *)self setRestorableRenderConfig:v22];

        if ([UIApp _isSpringBoard])
        {
          v23 = [v8 keyboard];

          if (v23)
          {
            v24 = +[UIKeyboardImpl activeInstance];
            [v24 updateLayout];
          }
        }

        v25 = [v8 restorableResponder];
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v32 = [(UIKeyboardSceneDelegate *)self responder];
          v33 = [v32 inputView];
          if (v33)
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
          v34 = 0;
          v35 = 0;
          goto LABEL_32;
        }

        v48 = [(UIKeyboardSceneDelegate *)self containerRootController];
        v49 = [v48 isTransitioning];

        if (v49)
        {
          v50 = [(UIKeyboardSceneDelegate *)self responder];
          if (v50)
          {
            v51 = [(UIKeyboardSceneDelegate *)self responder];
            v35 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v51];

LABEL_76:
            v34 = [(UIKeyboardSceneDelegate *)self responder];
            v76 = [v8 restorableResponder];
            v77 = [v76 inputAccessoryView];

            if (v77)
            {
              objc_opt_self();
              ++__disablePromoteDescendantToFirstResponderCount;
            }

            [(UIKeyboardSceneDelegate *)self setTakingSnapshot:0];
            [(UIKeyboardSceneDelegate *)self setRestoringInputViews:1];
            v78 = [v8 restorableResponder];
            restorableResponder = self->_restorableResponder;
            self->_restorableResponder = v78;

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
            if (v77)
            {
              objc_opt_self();
              if (__disablePromoteDescendantToFirstResponderCount)
              {
                --__disablePromoteDescendantToFirstResponderCount;
              }
            }

            v81 = [v8 accessoryViewNextResponder];
            if (v81)
            {
              v82 = v81;
              v83 = [v8 inputAccessoryView];
              v84 = [v83 _nextResponderOverride];

              if (!v84)
              {
                v85 = [v8 inputAccessoryView];
                v86 = [v8 accessoryViewNextResponder];
                [v85 _overrideInputAccessoryViewNextResponderWithResponder:v86];
              }
            }

            v87 = [v8 accessoryControllerNextResponder];

            if (v87)
            {
              v88 = [v8 accessoryViewController];
              v89 = [v8 accessoryControllerNextResponder];
              [v88 _overrideInputAccessoryViewNextResponderWithResponder:v89];
            }

LABEL_32:
            v36 = [v8 accessoryViewNextResponder];

            if (v36)
            {
              [v8 setAccessoryViewNextResponder:0];
            }

            v37 = [v8 restorableResponder];

            if (!v37)
            {
              goto LABEL_64;
            }

            v38 = [v8 restorableResponder];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v93 = v34;
            if (isKindOfClass)
            {
              v40 = [v8 restorableResponder];
              if ([v40 clearsOnBeginEditing])
              {
LABEL_39:
                [v40 setClearsOnBeginEditing:0];
                v41 = [v8 restorableResponder];
                v94 = [v41 _restoreFirstResponder];

                v42 = [v8 restorableResponder];
                [v42 _setShouldEndWritingToolsOnResign:1];

                [v40 setClearsOnBeginEditing:1];
                v92 = [(UIKeyboardSceneDelegate *)self _restoreMultiDocumentTokenIfNecessary:v8 withId:v6];
                v43 = [v8 restorableResponder];
                v44 = [v43 _responderWindow];
                v45 = +[UIWindow _applicationKeyWindow];

                if (v44 == v45)
                {
                  v91 = 0;
                }

                else
                {
                  v46 = [(UIKeyboardSceneDelegate *)self responder];
                  v47 = [v8 restorableResponder];
                  v91 = v46 != v47;
                }

                v52 = [v8 restorableResponder];
                v53 = [(UIKeyboardSceneDelegate *)self _inputViewsForResponder:v52];
                v90 = [v53 isEqual:v8];

                v54 = [(UIKeyboardSceneDelegate *)self responder];
                v55 = [v54 inputView];
                v56 = v35;
                if (v55)
                {
                  v57 = 1;
                }

                else
                {
                  v58 = [(UIKeyboardSceneDelegate *)self responder];
                  v59 = [v58 inputViewController];
                  v57 = v59 != 0;
                }

                v60 = [(UIKeyboardSceneDelegate *)self responder];
                v61 = [v8 restorableResponder];
                if (v60 == v61)
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

                v34 = v93;
                if (v92 || (v94 & 1) == 0 || v62 || ([v8 restorableResponder], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "isFirstResponder"), v63, !v64))
                {
                  v35 = v56;
                  if (v56)
                  {
                    v66 = v94;
                  }

                  else
                  {
                    v66 = 1;
                  }

                  if ((v66 & 1) == 0)
                  {
                    v67 = [(UIKeyboardSceneDelegate *)self responder];

                    if (v93 == v67)
                    {
                      [(UIKeyboardSceneDelegate *)self setInputViews:v56];
                    }
                  }
                }

                else
                {
                  v65 = [v8 restorableResponder];
                  [(UIKeyboardSceneDelegate *)self _reloadInputViewsForResponder:v65];

                  v35 = v56;
                }

                v68 = [(UIKeyboardSceneDelegate *)self keyboardWindow];
                v69 = [v68 rootViewController];
                [v69 updateKeyboardDockViewVisibility];

                [(UIKeyboardSceneDelegate *)self _updateVisibilityObserversWithReset:0];
LABEL_64:
                [(UIKeyboardSceneDelegate *)self setTakingSnapshot:0];

                v70 = [(UIKeyboardSceneDelegate *)self responder];

                if (!v70)
                {
                  v71 = [v8 restorableResponder];
                  [v71 _clearBecomeFirstResponderWhenCapable];

                  v72 = +[UIInputViewSet emptyInputSet];
                  [(UIKeyboardSceneDelegate *)self setInputViews:v72];
                }

                [v8 setRestorableResponder:0];
                [v8 setRestorableRenderConfig:0];
                [(UIKeyboardSceneDelegate *)self setRestorableRenderConfig:0];
                [(NSMutableDictionary *)self->_preservedViewSets removeObjectForKey:v6];
                if (!a4)
                {
                  [(UIKeyboardSceneDelegate *)self _endDisablingAnimations];
                }

                [(NSMutableSet *)self->_keysBeingRestored removeObject:v6];

                v27 = 1;
                goto LABEL_69;
              }
            }

            v40 = 0;
            goto LABEL_39;
          }

          v75 = +[UIInputViewSet emptyInputSet];
        }

        else
        {
          v74 = [(UIKeyboardSceneDelegate *)self inputViews];
          if (!v74)
          {
            v35 = +[UIInputViewSet emptyInputSet];
            v50 = 0;
            goto LABEL_76;
          }

          v75 = v74;
          v50 = v75;
        }

        v35 = v75;
        goto LABEL_76;
      }

      v28 = [v8 restorableResponder];
      v29 = [v28 isFirstResponder];

      if (v29)
      {
        v30 = [v8 restorableResponder];
        [v30 _setShouldEndWritingToolsOnResign:0];

        v31 = [v8 restorableResponder];
        [v31 resignFirstResponder];
      }

      [(NSMutableSet *)self->_keysBeingRestored removeObject:v6];
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
  v4 = [v3 keyboardAppearance];

  return v4;
}

- (void)_clearPreservedInputViewsWithId:(id)a3 clearKeyboard:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_preservedViewSets objectForKey:v6];
  v8 = [v7 restorableResponder];
  if (v4)
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

  [(UIKeyboardSceneDelegate *)self _clearMultiDocumentTokenIfNecessary:v8 withId:v6];
  if ([(NSMutableDictionary *)self->_preservedViewSets count])
  {
    [(NSMutableDictionary *)self->_preservedViewSets removeObjectForKey:v6];
  }
}

- (void)_clearPreservedInputViewsWithRestorableResponder:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_preservedViewSets count])
  {
    preservedViewSets = self->_preservedViewSets;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__UIKeyboardSceneDelegate__clearPreservedInputViewsWithRestorableResponder___block_invoke;
    v23[3] = &unk_1E71083B0;
    v24 = v4;
    v6 = [(NSMutableDictionary *)preservedViewSets keysOfEntriesPassingTest:v23];
    if ([v6 count])
    {
      v7 = self->_preservedViewSets;
      v8 = [v6 allObjects];
      [(NSMutableDictionary *)v7 removeObjectsForKeys:v8];
    }
  }

  if (self->_containerWindow)
  {
    v9 = [(UIKeyboardSceneDelegate *)self inputViews];
    v10 = [v9 inputView];
    v11 = [v10 _nextResponderOverride];

    if (v11 == v4)
    {
      v12 = [(UIKeyboardSceneDelegate *)self inputViews];
      v13 = [v12 inputView];
      [v13 _clearOverrideNextResponder];
    }

    if (self->_containerWindow)
    {
      v14 = [(UIKeyboardSceneDelegate *)self inputViews];
      v15 = [v14 inputAccessoryView];
      v16 = [v15 _nextResponderOverride];

      if (v16 == v4)
      {
        v17 = [(UIKeyboardSceneDelegate *)self inputViews];
        v18 = [v17 inputAccessoryView];
        [v18 _clearOverrideNextResponder];
      }
    }
  }

  v19 = self->_preservedViewSets;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__UIKeyboardSceneDelegate__clearPreservedInputViewsWithRestorableResponder___block_invoke_2;
  v21[3] = &unk_1E71083D8;
  v22 = v4;
  v20 = v4;
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

- (void)_removePreservedInputViewSetForInputView:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_preservedViewSets count])
  {
    preservedViewSets = self->_preservedViewSets;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIKeyboardSceneDelegate__removePreservedInputViewSetForInputView___block_invoke;
    v9[3] = &unk_1E71083B0;
    v10 = v4;
    v6 = [(NSMutableDictionary *)preservedViewSets keysOfEntriesPassingTest:v9];
    if ([v6 count])
    {
      v7 = self->_preservedViewSets;
      v8 = [v6 allObjects];
      [(NSMutableDictionary *)v7 removeObjectsForKeys:v8];
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

- (void)_beginPersistingInputAccessoryViewForResponder:(id)a3 withId:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  [(NSMutableArray *)persistentInputAccessoryResponderOrder addObject:v7];
  [(NSMutableDictionary *)self->_persistentInputAccessoryResponders setObject:v6 forKey:v7];
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

- (void)_endPersistingInputAccessoryViewWithId:(id)a3
{
  persistentInputAccessoryResponderOrder = self->_persistentInputAccessoryResponderOrder;
  v5 = a3;
  LODWORD(persistentInputAccessoryResponderOrder) = [(NSMutableArray *)persistentInputAccessoryResponderOrder containsObject:v5];
  [(NSMutableArray *)self->_persistentInputAccessoryResponderOrder removeObject:v5];
  [(NSMutableDictionary *)self->_persistentInputAccessoryResponders removeObjectForKey:v5];

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

- (void)performWithAllowingNilResponderReload:(id)a3
{
  self->_allowNilResponderReload = 1;
  (*(a3 + 2))(a3, a2);
  self->_allowNilResponderReload = 0;
}

- (void)setDisableInputBarsForWritingTools:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setDisableInputBars:v3];
}

- (void)updateSystemInputAssistantVisibilityAfterHardwareKeyEvent
{
  if ([(UIKeyboardSceneDelegate *)self hideSystemInputAssistantView])
  {
    v3 = [(UIKeyboardSceneDelegate *)self systemInputAssistantViewController];
    v4 = [v3 shouldBeShownForInputDelegate:0 inputViews:0];

    if (v4)
    {
      [(UIKeyboardSceneDelegate *)self setHideSystemInputAssistantView:0];

      [(UIKeyboardSceneDelegate *)self minimize];
    }
  }
}

- (BOOL)enhancedWindowingModeIsAvailable
{
  v2 = [(UIKeyboardSceneDelegate *)self scene];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)visualModeManager:(id)a3 didChangeToMode:(int)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = a4;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "VisualModeManager %@ didChangeToMode %u, reloading keyboard", &v8, 0x12u);
  }

  [(UIKeyboardSceneDelegate *)self forceReloadInputViews];
}

- (void)visualModeManager:(id)a3 observedEnhancedWindowingModeEnabledDidChange:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "VisualModeManager %@ observedEnhancedWindowingModeEnabledDidChange %d", &v12, 0x12u);
  }

  v8 = [(UIKeyboardSceneDelegate *)self scene];
  v9 = [v8 activationState];

  if (v9 == 1)
  {
    v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v11 = [(UIKeyboardSceneDelegate *)self scene];
    [v10 setKeyboardSceneIdentifierEnteringForegroundForScene:v11];
  }
}

- (BOOL)showingAccessoryViewOnly
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(UIKeyboardSceneDelegate *)self containerWindow];
  v3 = [v2 rootViewController];
  v4 = [v3 inputViewSet];
  v5 = [v3 inputViewSet];
  v6 = [v5 inputAccessoryView];
  if (v6)
  {
    v7 = [v3 inputViewSet];
    v8 = [v7 isInputAccessoryViewPlaceholder] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v10 = [v9 keyboardWindow];

  v11 = [v10 rootViewController];
  v12 = [v11 inputViewSet];
  if (v12)
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
    v18 = v4;
    v19 = 2112;
    v20 = v12;
    _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "showingAccessoryViewOnly %d - tewIVS: %@, rkwIVS: %@", v16, 0x1Cu);
  }

  return v13;
}

- (BOOL)expectedInputViewSetIsCustom
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardSceneDelegate *)self responder];
  v4 = [v3 inputViewController];
  if (v4)
  {
  }

  else
  {
    v5 = [(UIKeyboardSceneDelegate *)self responder];
    v6 = [v5 inputView];
    [v6 frame];
    v8 = v7;

    if (v8 <= 0.0)
    {
      return 0;
    }
  }

  v9 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(UIKeyboardSceneDelegate *)self responder];
    v12 = [v11 inputViewController];
    v13 = [(UIKeyboardSceneDelegate *)self responder];
    v14 = [v13 inputView];
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v14;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "expectedInputViewSetIsCustom: vc: %@ v: %@", &v15, 0x16u);
  }

  return 1;
}

- (BOOL)expectedInputModeIsSpecialized
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isSpecializedInputMode];

  if (v4)
  {
    v5 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = +[UIKeyboardInputModeController sharedInputModeController];
      v8 = [v7 currentInputMode];
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "expectedInputModeIsSpecialized: %@", &v9, 0xCu);
    }
  }

  return v4;
}

- (BOOL)textEntryFocusOnExternalDisplay
{
  v2 = [(UIKeyboardSceneDelegate *)self scene];
  v3 = [v2 screen];
  v4 = [v3 _isEmbeddedScreen];

  return v4 ^ 1;
}

- (void)_windowHostingScene:(id)a3 didMoveFromScreen:(id)a4 toScreen:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Reload for scene: (%@) did move to screen %@", &v10, 0x16u);
  }

  [(UIKeyboardSceneDelegate *)self forceReloadInputViews];
}

- (BOOL)showingInAppWindow
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 compactAssistantBarPersistentLocation];

  return (v4 & 4) == 0;
}

- (BOOL)keyboardVisible
{
  v2 = [(UIKeyboardSceneDelegate *)self keyboardArbiterClient];
  v3 = [v2 keyboardVisible];

  return v3;
}

- (void)setHardwareKeyboardExclusivityIdentifier:(id)a3
{
  v14 = a3;
  if (self->_hardwareKeyboardExclusivityIdentifier != v14 && (_UIApplicationIsFirstPartyStickers() & 1) == 0)
  {
    objc_storeStrong(&self->_hardwareKeyboardExclusivityIdentifier, a3);
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 hardwareKeyboardAvailabilityChanged];

    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 inputDelegate];

    if (v7)
    {
      if (v14 || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v9 = objc_claimAutoreleasedReturnValue(), -[UIKeyboardSceneDelegate responder](self, "responder"), v10 = objc_claimAutoreleasedReturnValue(), [v9 _trackInputModeIfNecessary:v10], v10, v9, +[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "inputModeContextIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
      {
        v8 = +[UIKeyboardImpl activeInstance];
        [v8 recomputeActiveInputModesWithExtensions:1];
      }
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"_UIHardwareKeyboardExclusivityIdentifierChangedNotification" object:self];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end