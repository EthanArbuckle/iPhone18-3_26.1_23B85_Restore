@interface UIInputWindowController
+ (BOOL)keyboardDotDotDotEnabled;
+ (BOOL)numberpadPopoverEnabled;
+ (BOOL)useMetronomeTracking;
- (BOOL)_shouldPresentViewController:(id)a3 withPresentationController:(id)a4;
- (BOOL)_useLiveRotation;
- (BOOL)currentControllerShouldUpdateKeyboardLayoutGuide;
- (BOOL)hasInputOrAssistantViewsOnScreen;
- (BOOL)isDragging;
- (BOOL)isHostingView:(id)a3;
- (BOOL)isOnScreen;
- (BOOL)isOnScreenRotating;
- (BOOL)isRotating;
- (BOOL)isSplitting;
- (BOOL)isTransitionStarted;
- (BOOL)isTransitioning;
- (BOOL)isTransitioningBetweenFloatingStates;
- (BOOL)isTransitioningBetweenKeyboardStates;
- (BOOL)isTranslating;
- (BOOL)isUndocked;
- (BOOL)isViewLandscape;
- (BOOL)keyboardControlsNotifications;
- (BOOL)mergeTransitionIfNecessaryWithTransition:(id)a3;
- (BOOL)needsConvertToSceneCoordinates;
- (BOOL)shouldBeginTransitionForController:(id)a3;
- (BOOL)shouldPostNotification:(unint64_t)a3 withInfo:(id)a4;
- (BOOL)sizesWindowToScene;
- (BOOL)trackingElementsShouldUseActualFrame;
- (BOOL)updateGuideBackdropRenderConfig:(id)a3 animated:(BOOL)a4;
- (CGPoint)_centerForOrientation:(int64_t)a3;
- (CGRect)_boundsForOrientation:(int64_t)a3;
- (CGRect)_defaultInitialViewFrame;
- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation;
- (CGRect)_visibleFrame;
- (CGRect)_visibleFrameInRemoteKeyboardWindow:(BOOL)a3;
- (CGRect)_visibleInputViewFrame;
- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)a3;
- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)a3 viewInRemoteKeyboardWindow:(BOOL)a4;
- (CGRect)transitioningFrame;
- (CGRect)visibleFrame;
- (CGRect)visibleInputViewFrame;
- (CGSize)keyboardSizeFromExternalUpdate;
- (CGSize)sizeForInputViewController:(id)a3 inputView:(id)a4;
- (CGSize)sizeForInputViewController:(id)a3 inputView:(id)a4 includeAssistantBar:(BOOL)a5;
- (UIEdgeInsets)_inputViewPadding;
- (UIEdgeInsets)_viewSafeAreaInsetsFromScene;
- (UIInputViewSetPlacement)animationAwarePlacement;
- (UIInputViewSetPlacement)expectedPlacement;
- (UIInputViewSetPlacement)placementIgnoringRotation;
- (UIInputWindowController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIKeyboardPathEffectView)_pathEffectView;
- (UIView)_inputAccessoryView;
- (UIView)_inputAssistantView;
- (UIView)_inputView;
- (UIView)bottomEdgeView;
- (id)_infoForBackdropMatchMoveForLayer:(id)a3;
- (id)_screenCoordinateSpace;
- (id)convertUserInfo:(id)a3;
- (id)currentPresentationPlacement;
- (id)infoForAnimationStyle:(id)a3;
- (id)initialNotificationInfo;
- (id)inputViewSnapshotOfView:(id)a3 afterScreenUpdates:(BOOL)a4;
- (id)nextAnimationStyle;
- (id)remoteNotificationInfo;
- (id)transitionGuideBackdrop:(BOOL)a3;
- (id)viewForTransitionScreenSnapshot;
- (int)appearStateForChild:(unint64_t)a3 placement:(id)a4 start:(BOOL)a5;
- (int64_t)animationTypeForCurrentTransition;
- (int64_t)keyboardOrientation;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)visualStateFromPlacement:(id)a3;
- (unint64_t)_clipCornersOfView:(id)a3;
- (unint64_t)changeToInputViewSet:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_collectTransitionTimeStatistics:(unint64_t)a3 withStart:(id)a4;
- (void)_forcePreLayoutHostViewFrame;
- (void)_updateContentOverlayInsetsForSelfAndChildren;
- (void)_updatePlacementWithPlacement:(id)a3;
- (void)addPendingActivity:(id)a3;
- (void)animateAccessoryViewVisibility:(BOOL)a3 withDuration:(double)a4;
- (void)animateKeyboardTrackingElementsWithNotificationInfo:(id)a3 notificationType:(unint64_t)a4 updateForStart:(BOOL)a5 updateForEnd:(BOOL)a6;
- (void)cancelCurrentTransition;
- (void)candidateBarWillChangeHeight:(double)a3 withDuration:(double)a4;
- (void)chainPlacementsIfNecessaryFrom:(id)a3 toPlacement:(id)a4 transition:(id)a5 completion:(id)a6;
- (void)changeChild:(unint64_t)a3 toAppearState:(int)a4 animated:(BOOL)a5;
- (void)changeGuideAnimationOptions:(unint64_t)a3 duration:(double)a4;
- (void)changeGuideAnimationState:(BOOL)a3;
- (void)checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:(BOOL)a3 layoutSubviews:(BOOL)a4;
- (void)clearExternalTrackingInfo;
- (void)clearKeyboardSnapshot;
- (void)clearRotationState;
- (void)dealloc;
- (void)didEndTransitionWithController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)didSnapshot;
- (void)didSuspend:(id)a3;
- (void)dismissViewController:(id)a3;
- (void)finishSplitTransition;
- (void)flushPendingActivities;
- (void)generateNotificationsForCompactAssistantFlickGestureCompletion:(id)a3;
- (void)generateNotificationsForStart:(BOOL)a3;
- (void)hideGuideBackdrop:(BOOL)a3;
- (void)hostAppSceneBoundsChanged;
- (void)hostViewDidEnterBackground;
- (void)hostViewWillDisappear;
- (void)hostViewWillenterForeground;
- (void)hostedOriginDidUpdate;
- (void)ignoreLayoutNotifications:(id)a3;
- (void)invalidateInputAccessoryView;
- (void)invalidateInputAssistantView;
- (void)invalidateInputView;
- (void)keyboardDismissWithInfo:(id)a3;
- (void)keyboardIsDocking:(BOOL)a3;
- (void)keyboardMoveOfType:(unint64_t)a3 info:(id)a4;
- (void)keyboardMoveWithInfo:(id)a3;
- (void)keyboardMovedToScreenPosition:(CGRect)a3 animated:(BOOL)a4;
- (void)loadView;
- (void)moveFromPlacement:(id)a3 toPlacement:(id)a4 starting:(id)a5 completion:(id)a6;
- (void)moveKeyboardLayoutGuideOffscreen;
- (void)performOperations:(id)a3 withAnimationStyle:(id)a4;
- (void)performOperations:(id)a3 withTemplateNotificationInfo:(id)a4;
- (void)performWithSafeTransitionFrames:(id)a3;
- (void)performWithoutAppearanceCallbacks:(id)a3;
- (void)performWithoutCallbacksOrNotifications:(id)a3;
- (void)popAnimationStyle;
- (void)postEndNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)postNotificationName:(id)a3 userInfo:(id)a4;
- (void)postStartNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)postTransitionEndNotification;
- (void)postValidatedEndNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)postValidatedStartNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)prepareForInputAssistant:(id)a3 animated:(BOOL)a4;
- (void)prepareForSplitTransition;
- (void)presentViewController:(id)a3;
- (void)presentationTransitionWillBegin:(id)a3;
- (void)pushAnimationStyle:(id)a3;
- (void)refreshKeyboardLayoutGuideForce:(BOOL)a3;
- (void)registerPowerLogEvent:(BOOL)a3;
- (void)setDisableUpdateMaskForSecureTextEntry:(BOOL)a3;
- (void)setExclusiveTouch:(BOOL)a3;
- (void)setFullScreenPresentationAssertion:(id)a3;
- (void)setHiddenCount:(int)a3;
- (void)setInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5;
- (void)setInputViewSet:(id)a3;
- (void)setInputViewSet:(id)a3 forKeyboardAssistantBar:(id)a4;
- (void)setInputViewsHidden:(BOOL)a3;
- (void)setInterfaceAutorotationDisabled:(BOOL)a3;
- (void)setKeyboardWindowSnapshotOn:(BOOL)a3;
- (void)setPlacement:(id)a3;
- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6;
- (void)setPlacementChangeDisabled:(BOOL)a3 withPlacement:(id)a4;
- (void)setRotationAwarePlacement:(id)a3;
- (void)syncToExistingAnimations;
- (void)takeKeyboardSnapshotIgnoringSpotlightCheck:(BOOL)a3;
- (void)transferActiveNotificationInfoToInfo:(id)a3;
- (void)transferPlacementStateToInputWindowController:(id)a3;
- (void)updateAmbiguousControlCenterActivationMargin:(unint64_t)a3 withInfo:(id)a4;
- (void)updateAppearStatesForPlacement:(id)a3 start:(BOOL)a4 animated:(BOOL)a5;
- (void)updateBackdropRenderConfig:(id)a3;
- (void)updateForKeyplaneChangeWithContext:(id)a3;
- (void)updateGestureRecognizers;
- (void)updateGuideForOffscreenRotationWithDuration:(double)a3;
- (void)updateHostingConstraints;
- (void)updateInputAssistantView:(id)a3;
- (void)updateInputAssistantViewForInputViewSet:(id)a3;
- (void)updateInputSwitcherView:(id)a3;
- (void)updateKeyboardDockViewVisibility;
- (void)updateKeyboardLayoutGuideForRefreshedPlaceholder;
- (void)updateKeyboardLayoutGuideForRotationOrientation:(int64_t)a3;
- (void)updateKeyboardLayoutGuideWithFrame:(CGRect)a3 layoutViews:(BOOL)a4;
- (void)updateKeyboardPlacementForGuide:(id)a3;
- (void)updateKeyboardSizeClass;
- (void)updateOffscreenKeyboardLayoutGuide;
- (void)updateSizingFromRemoteChange;
- (void)updateSupportsDockViewController;
- (void)updateToPlacement:(id)a3 withNormalAnimationsAndNotifications:(BOOL)a4;
- (void)updateTrackingElementsWithOffset:(UIOffset)a3;
- (void)updateTrackingElementsWithSize:(CGSize)a3;
- (void)updateVisibilityConstraintsForPlacement:(id)a3;
- (void)validateInputView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willBeginTransitionWithController:(id)a3;
- (void)willResume:(id)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willSnapshot;
@end

@implementation UIInputWindowController

- (void)clearKeyboardSnapshot
{
  keyboardSnapshot = self->_keyboardSnapshot;
  if (keyboardSnapshot)
  {
    v4 = [(UIView *)keyboardSnapshot superview];
    [v4 removeFromSuperview];

    [(UIView *)self->_keyboardSnapshot removeFromSuperview];
    v5 = self->_keyboardSnapshot;
    self->_keyboardSnapshot = 0;

    v6 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard Snapshot cleared", v7, 2u);
    }
  }
}

+ (BOOL)useMetronomeTracking
{
  v2 = _os_feature_enabled_impl();
  if (TIGetEnableMetronomeValue_onceToken != -1)
  {
    dispatch_once(&TIGetEnableMetronomeValue_onceToken, &__block_literal_global_1126);
  }

  v3 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v4 = [v3 valueForPreferenceKey:@"EnableMetronome"];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    LOBYTE(v2) = [v4 BOOLValue];
  }

  return v2;
}

+ (BOOL)numberpadPopoverEnabled
{
  if (qword_1ED49BF30 != -1)
  {
    dispatch_once(&qword_1ED49BF30, &__block_literal_global_378);
  }

  return _MergedGlobals_29_3;
}

+ (BOOL)keyboardDotDotDotEnabled
{
  v2 = _UISolariumEnabled();
  if (v2)
  {
    v2 = _os_feature_enabled_impl();
    if (v2)
    {
      LOBYTE(v2) = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }
  }

  return v2;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = UIInputWindowController;
  [(UIViewController *)&v8 viewDidLoad];
  if (![(UIInputWindowController *)self isTrackingElementController]&& !self->_hosting)
  {
    v3 = [(UIViewController *)self _window];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(UIViewController *)self _window];
      v5 = [v4 isForViewService];

      if (v5)
      {
        return;
      }
    }

    else
    {
    }

    v6 = [[UIInputWindowControllerHosting alloc] initWithHost:self];
    hosting = self->_hosting;
    self->_hosting = v6;
  }
}

- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation
{
  v3 = [(UIViewController *)self _existingView];
  v4 = [v3 window];

  if (v4 && [(UIInputViewSetPlacement *)self->_placement requiresWindowBasedSafeAreaInsets])
  {
    [v4 bounds];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIInputWindowController;
    [(UIViewController *)&v17 _viewFrameInWindowForContentOverlayInsetsCalculation];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

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

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = UIInputWindowController;
  [(UIViewController *)&v8 viewWillLayoutSubviews];
  if (!self->_didOverridePreLayoutHostViewFrame)
  {
    v3 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
    [v3 notificationsFrame];
    self->_preLayoutHostViewFrame.origin.x = v4;
    self->_preLayoutHostViewFrame.origin.y = v5;
    self->_preLayoutHostViewFrame.size.width = v6;
    self->_preLayoutHostViewFrame.size.height = v7;
  }

  self->_didOverridePreLayoutHostViewFrame = 0;
}

- (int64_t)keyboardOrientation
{
  v2 = [(UIViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 <= v6)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = UIInputWindowController;
  [(UIViewController *)&v20 viewDidLayoutSubviews];
  if (![(UIInputWindowController *)self isTrackingElementController])
  {
    v3 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke;
    v19[3] = &unk_1E7116458;
    v19[4] = self;
    [v3 enumerateObjectsUsingBlock:v19];

    v4 = [(UIInputWindowController *)self currentTransition];
    v5 = v4 != 0;

    if (v4)
    {
      v6 = [(UIInputWindowController *)self currentTransition];
      v7 = [v6 notifications] == 0;
    }

    else
    {
      v7 = 0;
    }

    if ([(UIInputWindowController *)self isOnScreen])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_2;
      v16[3] = &unk_1E70F8A10;
      v16[4] = self;
      v17 = v5;
      v18 = v7;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v16];
    }

    else
    {
      v8 = [(UIInputWindowController *)self currentTransition];
      v9 = [v8 notifications];
      v10 = [(UIInputWindowController *)self currentTransition];
      v11 = [v10 notificationInfo];
      [(UIInputWindowController *)self updateAmbiguousControlCenterActivationMargin:v9 withInfo:v11];
    }

    if ([(UIInputViewSetNotificationInfo *)self->_rotationInfo forceNotification])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_517;
      v15[3] = &unk_1E70F3590;
      v15[4] = self;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v15];
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = [(UIInputViewSetNotificationInfo *)self->_rotationInfo rotationUserInfo];
      [v12 postNotificationName:@"_UIKeyboardInternalWillRotateNotification" object:self userInfo:v13];

      rotationInfo = self->_rotationInfo;
      self->_rotationInfo = 0;
    }
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  if (dyld_program_sdk_at_least())
  {
    v7.receiver = self;
    v7.super_class = UIInputWindowController;
    return [(UIViewController *)&v7 overrideUserInterfaceStyle];
  }

  else
  {
    v4 = [(UIViewController *)self view];
    v5 = [v4 _inheritedRenderConfig];
    if ([v5 lightKeyboard])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  return v3;
}

- (void)_updateContentOverlayInsetsForSelfAndChildren
{
  v3.receiver = self;
  v3.super_class = UIInputWindowController;
  [(UIViewController *)&v3 _updateContentOverlayInsetsForSelfAndChildren];
  [(UIInputWindowController *)self updateSupportsDockViewController];
}

- (UIEdgeInsets)_viewSafeAreaInsetsFromScene
{
  v3 = [(UIViewController *)self _window];
  if ([v3 _isTextEffectsWindow] && (objc_msgSend(v3, "_isHostedInAnotherProcess") & 1) != 0)
  {
    [v3 hostedSafeInsets];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UIInputWindowController;
    [(UIViewController *)&v16 _viewSafeAreaInsetsFromScene];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIWindow _applicationKeyWindow];
  v4 = [v3 windowScene];
  v5 = v4;
  if (v4 && [v4 activationState] == -1 || (objc_msgSend(v3, "_orientationTransactionToken"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = 30;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIInputWindowController;
    v7 = [(UIApplicationRotationFollowingController *)&v9 supportedInterfaceOrientations];
  }

  return v7;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = UIInputWindowController;
  [(UIViewController *)&v2 didReceiveMemoryWarning];
}

uint64_t __50__UIInputWindowController_numberpadPopoverEnabled__block_invoke()
{
  result = dyld_program_sdk_at_least();
  if (result && (result = _os_feature_enabled_impl(), result))
  {
    result = UIKeyboardGetSafeDeviceIdiom();
    v1 = (result & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_29_3 = v1;
  return result;
}

- (void)updateKeyboardDockViewVisibility
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_640];
}

- (UIView)bottomEdgeView
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:4];
  v3 = [v2 hostView];

  return v3;
}

- (UIView)_inputAccessoryView
{
  v2 = [(UIInputWindowController *)self inputViewSet];
  v3 = [v2 inputAccessoryView];

  return v3;
}

- (UIView)_inputAssistantView
{
  v2 = [(UIInputWindowController *)self inputViewSet];
  v3 = [v2 inputAssistantView];

  return v3;
}

- (UIView)_inputView
{
  v2 = [(UIInputWindowController *)self inputViewSet];
  v3 = [v2 inputView];

  return v3;
}

- (BOOL)isRotating
{
  v2 = [(UIInputWindowController *)self postRotationPlacement];
  v3 = v2 != 0;

  return v3;
}

- (void)updateHostingConstraints
{
  if (!self->_suppressUpdateViewConstraints)
  {
    [(UIInputWindowControllerHosting *)self->_hosting updateViewConstraints];
  }
}

- (BOOL)isDragging
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:3];
  v3 = [v2 scrollKeyboardActive];

  return v3;
}

- (id)initialNotificationInfo
{
  v2 = [(UIInputWindowController *)self templateNotificationInfo];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[UIInputViewSetNotificationInfo info];
  }

  v5 = v4;

  return v5;
}

void __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 someViewDidLayoutSubviews];
  if (([*(a1 + 32) isTranslating] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isDragging") & 1) == 0)
  {
    [v3 refreshApplicator];
  }
}

- (void)loadView
{
  v3 = [UIInputSetContainerView alloc];
  v4 = [(UIInputSetContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIViewController *)self setView:v4];

  v5 = [(UIViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(UIViewController *)self view];
  [v6 setClipsToBounds:1];
}

- (BOOL)isOnScreen
{
  v2 = [(UIInputWindowController *)self placement];
  v3 = [v2 showsInputViews];

  return v3;
}

- (BOOL)isTranslating
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
  v3 = [v2 splitKeyboardController];
  v4 = [v3 isTranslating];

  return v4;
}

- (void)invalidateInputAssistantView
{
  v3 = [(UIInputWindowController *)self _inputAssistantViewController];
  v4 = [v3 view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIInputWindowController_invalidateInputAssistantView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 _preserveResponderOverridesWhilePerforming:v5];
}

- (void)updateGestureRecognizers
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return;
  }

  v3 = [(UIInputWindowController *)self inputViewSet];
  v4 = [v3 inputView];
  if (!v4)
  {

    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(UIInputWindowController *)self inputViewSet];
  v7 = [v6 isInputViewPlaceholder];

  if (v7)
  {
LABEL_8:
    floatingTransitionController = self->_floatingTransitionController;
    if (!floatingTransitionController)
    {
      return;
    }

    [(UIKeyboardFloatingTransitionController *)floatingTransitionController setDelegate:0];
    [(UIKeyboardFloatingTransitionController *)self->_floatingTransitionController removeGestureRecognizers];
    v12 = self->_floatingTransitionController;
    self->_floatingTransitionController = 0;
    goto LABEL_10;
  }

  v8 = self->_floatingTransitionController;
  if (!v8)
  {
    v9 = objc_alloc_init(UIKeyboardFloatingTransitionController);
    v10 = self->_floatingTransitionController;
    self->_floatingTransitionController = v9;

    v8 = self->_floatingTransitionController;
  }

  [(UIKeyboardFloatingTransitionController *)v8 setDelegate:self];
  v11 = self->_floatingTransitionController;
  v14 = [(UIViewController *)self view];
  [(UIKeyboardFloatingTransitionController *)v11 addGestureRecognizersToView:v14];
  v12 = v14;
LABEL_10:
}

- (void)updateSupportsDockViewController
{
  v21 = *MEMORY[0x1E69E9840];
  supportsDockViewController = self->_supportsDockViewController;
  self->_supportsDockViewController = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 window];
  if (v5)
  {
  }

  else
  {
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v6 currentInputMode];
    v8 = [v7 isExtensionInputMode];

    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) updateSupportsDockViewController];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (supportsDockViewController != self->_supportsDockViewController)
  {
    [(UIInputWindowController *)self updateKeyboardDockViewVisibility];
    v14 = [(UIViewController *)self view];
    v15 = [v4 isDescendantOfView:v14];

    if (v15)
    {
      [v4 updateLayout];
    }
  }

LABEL_14:
}

- (BOOL)sizesWindowToScene
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 visualModeManager];
  v4 = [v3 windowingModeEnabled];

  return v4;
}

- (BOOL)currentControllerShouldUpdateKeyboardLayoutGuide
{
  if (([objc_opt_class() useMetronomeTracking] & 1) == 0)
  {
    v4 = [(UIViewController *)self _window];
    v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v6 = [v5 showsInvisibleKeyboardBehindWTUI];

    if (v6)
    {
      v7 = [v4 _isRemoteKeyboardWindow];
    }

    else
    {
      if (+[UIKeyboard usesInputSystemUI])
      {
        v8 = 0;
      }

      else
      {
        v9 = [(UIViewController *)self _window];
        if ([v9 _isRemoteKeyboardWindow])
        {
          v8 = [v4 _isHostedInAnotherProcess] ^ 1;
        }

        else
        {
          v8 = 0;
        }
      }

      if (([v4 _isTextEffectsWindowNotificationOwner] & 1) == 0 && !v8)
      {
        v3 = 0;
LABEL_16:

        return v3;
      }

      v7 = [v4 isForViewService];
    }

    v3 = v7 ^ 1;
    goto LABEL_16;
  }

  return 0;
}

- (void)popAnimationStyle
{
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    animationStyleStack = self->_animationStyleStack;

    [(NSMutableArray *)animationStyleStack removeLastObject];
  }
}

- (void)updateKeyboardSizeClass
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (+[UIKeyboardImpl isFloating])
    {
      v3 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
    }

    else
    {
      v3 = 0;
    }

    v4 = [(UIInputWindowController *)self _inputViewController];
    [(UIViewController *)self setOverrideTraitCollection:v3 forChildViewController:v4];

    v5 = [(UIInputWindowController *)self _inputAssistantViewController];
    [(UIViewController *)self setOverrideTraitCollection:v3 forChildViewController:v5];

    sizeClassCollectionOverride = self->_sizeClassCollectionOverride;
    self->_sizeClassCollectionOverride = v3;
  }
}

- (UIInputViewSetPlacement)animationAwarePlacement
{
  v3 = [(UIInputWindowController *)self placementDuringAnimation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIInputWindowController *)self placementIgnoringRotation];
  }

  v6 = v5;

  return v6;
}

- (UIInputViewSetPlacement)placementIgnoringRotation
{
  if ([(UIInputWindowController *)self isRotating])
  {
    [(UIInputWindowController *)self postRotationPlacement];
  }

  else
  {
    [(UIInputWindowController *)self placement];
  }
  v3 = ;

  return v3;
}

- (id)nextAnimationStyle
{
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    [(NSMutableArray *)self->_animationStyleStack lastObject];
  }

  else
  {
    +[UIInputViewAnimationStyle animationStyleDefault];
  }
  v3 = ;

  return v3;
}

- (id)currentPresentationPlacement
{
  v3 = [(UIInputWindowController *)self currentTransition];
  v4 = [v3 animationState];

  if (v4 < 3)
  {
    v6 = [(UIInputWindowController *)self currentTransition];
    v5 = [v6 fromPlacement];

    v7 = [v5 subPlacements];
    v8 = [v7 firstObject];

    if (!v5 || ([v5 showsInputViews] & 1) != 0 || objc_msgSend(v8, "showsInputViews"))
    {
      v9 = [(UIInputWindowController *)self placement];

      v5 = v9;
    }
  }

  else
  {
    v5 = [(UIInputWindowController *)self placement];
  }

  return v5;
}

- (BOOL)isTransitioning
{
  v2 = [(UIInputWindowController *)self currentTransition];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isSplitting
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
  v3 = [v2 splitKeyboardController];
  v4 = [v3 isSplitting];

  return v4;
}

- (void)flushPendingActivities
{
  v3 = _Block_copy(self->_pendingTransitionActivity);
  if (v3)
  {
    pendingTransitionActivity = self->_pendingTransitionActivity;
    self->_pendingTransitionActivity = 0;
    v5 = v3;

    v5[2](v5);
    v3 = v5;
  }
}

- (void)invalidateInputView
{
  v3 = [(UIInputWindowController *)self _inputViewController];
  v4 = [v3 view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIInputWindowController_invalidateInputView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 _preserveResponderOverridesWhilePerforming:v5];
}

void __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{*(*(a1 + 32) + 1272), *(*(a1 + 32) + 1280), *(*(a1 + 32) + 1288), *(*(a1 + 32) + 1296)}];
  v63 = v2;
  v64 = v3;
  v65 = v4;
  v66 = v5;
  v6 = 1;
  v7 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v7 notificationsFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v9, v11, v13, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [*(a1 + 32) view];
  v25 = [v24 window];
  v26 = [v25 screen];
  [v26 scale];
  v28 = v27;

  v29 = *(a1 + 32);
  if (v29[161] == v21)
  {
    v6 = round(v28 * v29[162]) != round(v23 * v28);
  }

  v30 = [v29 inputViewSet];
  [v30 inputAccessoryViewBounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v70.origin.x = v32;
  v70.origin.y = v34;
  v70.size.width = v36;
  v70.size.height = v38;
  v39 = CGRectEqualToRect(v70, *(*(a1 + 32) + 1304));
  v40 = +[UIKeyboard usesInputSystemUI];
  if (v40 && v39)
  {
    v71.origin.x = v32;
    v71.origin.y = v34;
    v71.size.width = v36;
    v71.size.height = v38;
    v40 = !CGRectIsEmpty(v71);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_3;
  aBlock[3] = &unk_1E7116480;
  aBlock[4] = *(a1 + 32);
  v68 = v6;
  v69 = *(a1 + 40);
  v41 = _Block_copy(aBlock);
  if (*(a1 + 40) == 1 && *(a1 + 41) != 1)
  {
    if (v6)
    {
      v49 = *(a1 + 32);
      if (v49[1016] == 1)
      {
        v50 = [v49 currentTransition];
        v43 = [v50 notificationInfo];

        [v43 addKeyboardNotificationDebuggingInfo:{@"viewDidLayoutSubviews hasTransition, hostViewDidChangeSize, _isChangingPlacement"}];
        if (v40)
        {
          [v43 setShouldSendInClient:1];
        }

        v51 = *(a1 + 32);
        v52 = [v51 currentTransition];
        [v51 postEndNotifications:objc_msgSend(v52 withInfo:{"notifications"), v43}];

        [v43 populateStartInfoWithFrame:{v63, v64, v65, v66}];
        [v43 populateEndInfoWithFrame:{v17, v19, v21, v23}];
        v53 = [*(a1 + 32) currentTransition];
        v54 = [v53 notifications];

        if (v54)
        {
          if ([objc_opt_class() useMetronomeTracking])
          {
            v41[2](v41, v43);
          }

          [*(a1 + 32) keyboardMoveOfType:1 info:v43];
        }

        v55 = *(a1 + 32);
        v56 = [v55 currentTransition];
        [v55 postStartNotifications:objc_msgSend(v56 withInfo:{"notifications"), v43}];
        goto LABEL_41;
      }
    }
  }

  else
  {
    v42 = *(*(a1 + 32) + 1344);
    if (v42)
    {
      [v42 addKeyboardNotificationDebuggingInfo:@"viewDidLayoutSubviews update _keyboardHeightChangeNotificationInfo"];
      [*(*(a1 + 32) + 1344) populateEndInfoWithFrame:{v17, v19, v21, v23}];
      goto LABEL_42;
    }

    if (v6 || (*(a1 + 41) & 1) != 0)
    {
      v43 = +[UIInputViewSetNotificationInfo info];
      [v43 setForceNotification:1];
      [*(a1 + 32) transferActiveNotificationInfoToInfo:v43];
      v44 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [v43 populateWithAnimationStyle:v44];

      [v43 populateStartInfoWithFrame:{v63, v64, v65, v66}];
      [v43 populateEndInfoWithFrame:{v17, v19, v21, v23}];
      v45 = &stru_1EFB14550;
      if (*(a1 + 41))
      {
        v46 = @" transitionRequiresImplicitNotifications";
      }

      else
      {
        v46 = &stru_1EFB14550;
      }

      if (v6)
      {
        v45 = @" hostViewDidChangeSize";
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"viewDidLayoutSubviews%@%@", v46, v45];
      [v43 addKeyboardNotificationDebuggingInfo:v47];

      v48 = *(a1 + 32);
      if (v6 && v48[1434] == 1)
      {
        if ([objc_opt_class() useMetronomeTracking])
        {
          v41[2](v41, v43);
        }

        else
        {
          [*(a1 + 32) keyboardMoveOfType:1 info:v43];
        }

        *(*(a1 + 32) + 1434) = 0;
        v48 = *(a1 + 32);
      }

      v57 = [v48 _screen];
      v56 = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:v57];

      v58 = [*(a1 + 32) placement];
      if ([v58 isFloating])
      {
      }

      else
      {
        v59 = [v56 handlingFlickGesture];

        if ((v59 & 1) == 0)
        {
          if (v40)
          {
            [v43 setShouldSendInClient:1];
          }

          if (!+[UIKeyboard usesInputSystemUI])
          {
            v60 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            v61 = [v60 isWaitingForInputUI];

            if (v61)
            {
              [v43 setWaitingForInputUI:1];
            }
          }

          [*(a1 + 32) postStartNotifications:2 withInfo:v43];
          [*(a1 + 32) postEndNotifications:2 withInfo:v43];
        }
      }

LABEL_41:
    }
  }

LABEL_42:
  v62 = (*(a1 + 32) + 1304);
  *v62 = v32;
  v62[1] = v34;
  v62[2] = v36;
  v62[3] = v38;
}

- (int64_t)animationTypeForCurrentTransition
{
  v5 = [(UIInputWindowController *)self currentTransition];
  v6 = [v5 fromPlacement];
  v7 = [v6 isFloatingAssistantView];
  if ((v7 & 1) != 0 || (-[UIInputWindowController currentTransition](self, "currentTransition"), v2 = objc_claimAutoreleasedReturnValue(), [v2 fromPlacement], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isCompactAssistantView")))
  {
    v8 = [(UIInputWindowController *)self currentTransition];
    v9 = [v8 toPlacement];
    v10 = [v9 showsKeyboard];

    if ((v7 & 1) == 0)
    {
    }

    if (v10)
    {
      return 7;
    }
  }

  else
  {
  }

  v12 = [(UIInputWindowController *)self currentTransition];
  v13 = [v12 toPlacement];
  v14 = [v13 isCompactAssistantView];

  if (v14)
  {
    return 14;
  }

  v15 = [(UIInputWindowController *)self currentTransition];
  v16 = [v15 fromPlacement];
  if ([v16 isFloating])
  {
  }

  else
  {
    v17 = [(UIInputWindowController *)self currentTransition];
    v18 = [v17 fromPlacement];
    v19 = [v18 isHiddenForFloatingTransition];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  v20 = [(UIInputWindowController *)self currentTransition];
  v21 = [v20 toPlacement];
  if ([v21 isUndocked])
  {
    v22 = [(UIInputWindowController *)self currentTransition];
    v23 = [v22 toPlacement];
    v24 = [v23 isFloating];

    if (!v24)
    {
      return 10;
    }
  }

  else
  {
  }

  v25 = [(UIInputWindowController *)self currentTransition];
  v26 = [v25 toPlacement];
  v27 = [v26 isFloating];

  if (!v27)
  {
    return 8;
  }

LABEL_18:
  v28 = [(UIInputWindowController *)self currentTransition];
  v29 = [v28 toPlacement];
  if ([v29 isFloating])
  {
  }

  else
  {
    v30 = [(UIInputWindowController *)self currentTransition];
    v31 = [v30 toPlacement];
    v32 = [v31 isHiddenForFloatingTransition];

    if (!v32)
    {
      return 0;
    }
  }

  v33 = [(UIInputWindowController *)self currentTransition];
  v34 = [v33 fromPlacement];
  if ([v34 isUndocked])
  {
    v35 = [(UIInputWindowController *)self currentTransition];
    v36 = [v35 fromPlacement];
    v37 = [v36 isFloating];

    if (!v37)
    {
      return 12;
    }
  }

  else
  {
  }

  v38 = [(UIInputWindowController *)self currentTransition];
  v39 = [v38 fromPlacement];
  if ([v39 isFloating])
  {
  }

  else
  {
    v40 = [(UIInputWindowController *)self currentTransition];
    v41 = [v40 fromPlacement];
    v42 = [v41 showsInputViews];

    if (v42)
    {
      return 7;
    }
  }

  return 0;
}

- (BOOL)isTransitioningBetweenFloatingStates
{
  v3 = [(UIKeyboardFloatingTransitionController *)self->_floatingTransitionController isTransitioning];
  if (!self->_floatingTransitionController)
  {
    if (+[_UIRemoteKeyboards enabled])
    {
      v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v4 inputWindowRootViewController];
    }

    else
    {
      v4 = +[UIKeyboardImpl activeInstance];
      [v4 _rootInputWindowController];
    }
    v5 = ;

    if (v5)
    {
      v6 = v5 == self;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v3 = [(UIInputWindowController *)v5 isTransitioningBetweenFloatingStates];
    }
  }

  return v3;
}

- (void)syncToExistingAnimations
{
  v7 = +[UIWindow _applicationKeyWindow];
  v3 = [(UIViewController *)self view];
  v4 = [v3 window];

  if (v7)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || v7 == v4;
  if (!v6 && [v7 _requiresKeyboardPresentationFence])
  {
    +[UIWindow _synchronizeDrawing];
  }
}

- (void)invalidateInputAccessoryView
{
  v3 = [(UIInputWindowController *)self _inputAccessoryViewController];
  v4 = [v3 view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIInputWindowController_invalidateInputAccessoryView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 _preserveResponderOverridesWhilePerforming:v5];
}

- (BOOL)isTransitioningBetweenKeyboardStates
{
  v2 = [(UIInputWindowController *)self currentTransition];
  v3 = [v2 fromPlacement];
  v4 = [v3 showsKeyboard];
  v5 = [v2 toPlacement];
  v6 = [v5 showsKeyboard];

  return v4 ^ v6;
}

- (UIInputWindowController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIInputWindowController;
  v4 = [(UIApplicationRotationFollowingController *)&v11 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animationStyleStack = v4->_animationStyleStack;
    v4->_animationStyleStack = v5;

    v7 = +[UIInputViewSetPlacementInitialPosition placement];
    placement = v4->_placement;
    v4->_placement = v7;

    v4->_shouldNotifyRemoteKeyboards = 1;
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v4 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v9 addObserver:v4 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v9 addObserver:v4 selector:sel_hostViewWillDisappear name:0x1EFBB4890 object:0];
    [v9 addObserver:v4 selector:sel_hostViewDidEnterBackground name:0x1EFBB47B0 object:0];
    [v9 addObserver:v4 selector:sel_hostViewWillenterForeground name:0x1EFBB47D0 object:0];
    [v9 addObserver:v4 selector:sel_updateKeyboardDockViewVisibility name:@"UITextInputNextInputModeInputModeDidChangeNotification" object:0];
    [v9 addObserver:v4 selector:sel_updateKeyboardDockViewVisibility name:@"UIKeyboardNeedsUpdatingKeyboardDockViewVisibilityNotification" object:0];
    [v9 addObserver:v4 selector:sel_willBeginIndirectSelectionGesture name:@"UIKeyboardWillBeginIndirectSelectionGestureNotification" object:0];
    [v9 addObserver:v4 selector:sel_didEndIndirectSelectionGesture name:@"UIKeyboardDidEndIndirectSelectionGestureNotification" object:0];
    [v9 addObserver:v4 selector:sel_presentationTransitionWillBegin_ name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];
    [v9 addObserver:v4 selector:sel_presentationTransitionDidEnd_ name:@"UIPresentationControllerDismissalTransitionDidEndNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v6[11] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationWillEnterForegroundNotification";
  v6[1] = @"UIApplicationDidEnterBackgroundNotification";
  v6[2] = 0x1EFBB4890;
  v6[3] = 0x1EFBB47B0;
  v6[4] = 0x1EFBB47D0;
  v6[5] = @"UITextInputNextInputModeInputModeDidChangeNotification";
  v6[6] = @"UIKeyboardNeedsUpdatingKeyboardDockViewVisibilityNotification";
  v6[7] = @"UIKeyboardWillBeginIndirectSelectionGestureNotification";
  v6[8] = @"UIKeyboardDidEndIndirectSelectionGestureNotification";
  v6[9] = @"UIPresentationControllerPresentationTransitionWillBeginNotification";
  v6[10] = @"UIPresentationControllerDismissalTransitionDidEndNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:11];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(UIInputWindowController *)self setFullScreenPresentationAssertion:0];
  v5.receiver = self;
  v5.super_class = UIInputWindowController;
  [(UIViewController *)&v5 dealloc];
}

- (void)_updatePlacementWithPlacement:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "updatePlacementWithPlacement: %@", buf, 0xCu);
  }

  [(UIInputWindowController *)self updateKeyboardPlacementForGuide:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if ([(UIInputViewSetPlacement *)self->_placement isHiddenForFloatingTransition])
  {
    v8 = [(UIInputViewSetPlacement *)self->_placement applicatorClassForKeyboard:1]== 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIInputViewSetPlacement *)self->_placement subPlacements];
  if (v9)
  {
    v10 = [(UIInputViewSetPlacement *)self->_placement subPlacements];
    v11 = [v5 subPlacements];
    v12 = [v10 isEqualToArray:v11] ^ 1;
  }

  else
  {
    v10 = [v5 subPlacements];
    v12 = v10 != 0;
  }

  v13 = v8 | v12;
  [(UIInputWindowControllerHosting *)self->_hosting unloadForPlacement];
  objc_storeStrong(&self->_placement, a3);
  hosting = self->_hosting;
  v15 = [(UIInputWindowController *)self transientInputViewSet];
  if (v15)
  {
    [(UIInputWindowControllerHosting *)hosting reloadForPlacementForInputViewSet:v15];
  }

  else
  {
    v16 = [(UIInputWindowController *)self inputViewSet];
    [(UIInputWindowControllerHosting *)hosting reloadForPlacementForInputViewSet:v16];
  }

  if (v13)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__UIInputWindowController__updatePlacementWithPlacement___block_invoke;
    v23[3] = &unk_1E70F3590;
    v23[4] = self;
    [UIView performWithoutAnimation:v23];
  }

  if (((isKindOfClass ^ v7) & 1) != 0 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIDevice _hasHomeButton])
  {
    [(UIInputWindowControllerHosting *)self->_hosting updateViewSizingConstraints];
  }

  v17 = [(UIInputWindowController *)self inputViewSet];
  v18 = [v17 assistantViewController];
  v19 = [v18 assistantBarStyle];

  if (v19 == 1 && ([v5 isFloatingAssistantView] & 1) == 0)
  {
    v20 = [(UIInputWindowController *)self inputViewSet];
    [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:v20];
  }

  v21 = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputSwitcherView:v21];
}

void __57__UIInputWindowController__updatePlacementWithPlacement___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)setExclusiveTouch:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
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

        v9 = [*(*(&v10 + 1) + 8 * v8) hostView];
        [v9 setExclusiveTouch:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)registerPowerLogEvent:(BOOL)a3
{
  v3 = a3;
  v12[4] = *MEMORY[0x1E69E9840];
  if (a3 || self->_wasOnScreen)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 currentInputMode];

    if ([v6 isExtensionInputMode])
    {
      v7 = [v6 identifier];
    }

    else
    {
      v7 = @"System";
    }

    if (v7 != self->_lastKeyboardID || self->_wasOnScreen != v3)
    {
      v11[0] = @"Process-ID";
      v8 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      v12[0] = v8;
      v12[1] = v7;
      v11[1] = @"Keyboard-ID";
      v11[2] = @"Status";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v12[2] = v9;
      v11[3] = @"Timestamp";
      v10 = [MEMORY[0x1E695DF00] date];
      v12[3] = v10;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
      PLLogRegisteredEvent();

      self->_wasOnScreen = v3;
      objc_storeStrong(&self->_lastKeyboardID, v7);
    }
  }
}

- (void)setInputViewSet:(id)a3 forKeyboardAssistantBar:(id)a4
{
  v8 = a3;
  [v8 setKeyboardAssistantBar:a4];
  v6 = [(UIInputWindowController *)self inputViewSet];

  v7 = v8;
  if (v6 == v8)
  {
    [(UIInputWindowController *)self updateInputAssistantView:v8];
    [(UIInputWindowController *)self updateInputSwitcherView:v8];
    [(UIInputWindowController *)self updateHostingConstraints];
    v7 = v8;
  }
}

- (void)prepareForInputAssistant:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(UIInputWindowController *)self inputViewSet];
  v7 = [v6 inputAssistantView];
  v8 = [v7 window];
  v9 = [v8 _isTextEffectsWindow];

  if (([v6 isEmpty] & 1) == 0 && (objc_msgSend(v6, "isRemoteKeyboard") & v9 & 1) == 0)
  {
    v10 = [v6 inputAssistantView];

    if (v10)
    {
      v11 = [v6 assistantViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v6 assistantViewController];
        [v13 prepareTransition:v14 animated:v4];
      }
    }
  }
}

- (void)updateInputAssistantViewForInputViewSet:(id)a3
{
  v38 = a3;
  if (![(UIInputWindowController *)self isRotating])
  {
    v4 = v38;
    if (!v38)
    {
      v4 = [(UIInputWindowController *)self inputViewSet];
    }

    v38 = v4;
    if (([v4 isEmpty] & 1) == 0 && (objc_msgSend(v38, "isRemoteKeyboard") & 1) == 0)
    {
      v5 = [v38 inputAssistantView];

      if (!v5 || ([v38 assistantViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
      {
LABEL_26:
        [(UIInputWindowController *)self updateHostingConstraints];
        goto LABEL_27;
      }

      v8 = [v38 assistantViewController];
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v10 = [v9 responder];

      v11 = [v10 _window];
      v12 = [v11 windowScene];
      v13 = [v12 keyboardSceneDelegate];

      v37 = v13;
      v14 = [v13 systemInputAssistantViewController];
      v15 = v14;
      if (v14 == v8)
      {
      }

      else
      {
        v16 = [v10 _window];
        v17 = [v16 _isRemoteKeyboardWindow];

        if (!v17)
        {
          goto LABEL_13;
        }
      }

      [v8 automaticallySetCenterViewControllerBasedOnInputDelegate:v10];
LABEL_13:
      v36 = [v8 shouldBeShownForInputDelegate:0 inputViews:v38];
      v18 = [v38 inputAssistantView];
      v19 = [v18 window];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v22 = [v38 inputView];
        v21 = [v22 window];
      }

      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v24 = [v23 visualModeManager];
      if ([v24 windowingModeEnabled])
      {
        v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v26 = [v25 visualModeManager];
        v27 = [v26 shouldShowWithinAppWindow];
      }

      else
      {
        v27 = 0;
      }

      v28 = v21;
      v29 = [v21 windowScene];
      v30 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v31 = [v30 scene];

      self->_trackingElementsNeedUpdate = 1;
      if (v29 == v31)
      {
        v32 = v36;
      }

      else
      {
        v32 = 0;
      }

      if (v27)
      {
        v33 = v32;
      }

      else
      {
        v33 = v36;
      }

      v34 = [v8 view];
      [v34 setHidden:v33 ^ 1u];

      [v8 updateCenterViewVisibilityStateForInputDelegate:0];
      v35 = [(UIInputWindowController *)self placement];
      [(UIInputWindowController *)self updateVisibilityConstraintsForPlacement:v35];

      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)willResume:(id)a3
{
  v4 = [(UIInputWindowController *)self placement];
  if ([v4 showsKeyboard])
  {
    v5 = [(UIInputWindowController *)self inputViewSet];
    v6 = [v5 keyboard];
    [(UIInputWindowController *)self registerPowerLogEvent:v6 != 0];
  }

  else
  {
    [(UIInputWindowController *)self registerPowerLogEvent:0];
  }

  if (![(UIInputWindowController *)self shouldNotifyRemoteKeyboards]&& self->_keyboardShowTimestamp)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    keyboardShowTimestamp = self->_keyboardShowTimestamp;
    self->_keyboardShowTimestamp = v7;
  }

  keyboardSnapshot = self->_keyboardSnapshot;
  if (keyboardSnapshot)
  {
    [(UIView *)keyboardSnapshot frame];
    v11 = v10;
    v12 = [(UIViewController *)self view];
    [v12 frame];
    v14 = v13;

    if (v11 != v14)
    {

      [(UIInputWindowController *)self clearKeyboardSnapshot];
    }
  }
}

- (void)didSuspend:(id)a3
{
  if (![(UIInputWindowController *)self shouldNotifyRemoteKeyboards]&& self->_keyboardShowTimestamp)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSinceDate:self->_keyboardShowTimestamp];
    v6 = v5;

    [_UIKeyboardUsageTracking keyboardTotalOnScreenTime:[(UIInputWindowController *)self keyboardOrientation] orientation:v6];
  }

  [(UIInputWindowController *)self registerPowerLogEvent:0];
}

- (void)hostViewWillDisappear
{
  v3 = [(UIInputWindowController *)self postRotationInputViewSet];
  if (v3 || ([(UIInputWindowController *)self postRotationPlacement], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__UIInputWindowController_hostViewWillDisappear__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
    return;
  }

  v4 = [(UIInputWindowController *)self postRotationPendingBlock];

  if (v4)
  {
    goto LABEL_4;
  }
}

uint64_t __48__UIInputWindowController_hostViewWillDisappear__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 keyboardOrientation];

  return [v1 didRotateFromInterfaceOrientation:v2];
}

- (void)hostViewDidEnterBackground
{
  v2 = [(UIViewController *)self _window];
  v3 = [v2 _isRemoteKeyboardWindow];

  if (v3)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 setKeyboardOnScreenNotifyKey:0];
  }
}

- (void)hostViewWillenterForeground
{
  v3 = [(UIViewController *)self _window];
  v4 = [v3 _isRemoteKeyboardWindow];

  if (v4)
  {
    v5 = [(UIInputWindowController *)self inputViewSet];
    v6 = [v5 keyboard];
    if (v6)
    {
      if ([(UIInputWindowController *)self isOnScreen])
      {
        v7 = [(UIInputWindowController *)self placement];
        v8 = ([v7 showsKeyboard] & 1) != 0 || -[UIInputWindowController isUndocked](self, "isUndocked");
      }

      else
      {
        v8 = [(UIInputWindowController *)self isUndocked];
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = +[UIPeripheralHost sharedInstance];
    [v9 setKeyboardOnScreenNotifyKey:v8];
  }
}

- (UIKeyboardPathEffectView)_pathEffectView
{
  pathEffectView = self->_pathEffectView;
  if (!pathEffectView)
  {
    if ([MEMORY[0x1E6963668] isCurrentProcessAnApplicationExtension])
    {
      v4 = objc_opt_class();
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2050000000;
      v4 = getTUIKeyboardPathEffectViewClass_softClass;
      v15 = getTUIKeyboardPathEffectViewClass_softClass;
      if (!getTUIKeyboardPathEffectViewClass_softClass)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __getTUIKeyboardPathEffectViewClass_block_invoke;
        v11[3] = &unk_1E70F2F20;
        v11[4] = &v12;
        __getTUIKeyboardPathEffectViewClass_block_invoke(v11);
        v4 = v13[3];
      }

      v5 = v4;
      _Block_object_dispose(&v12, 8);
    }

    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v8 = self->_pathEffectView;
    self->_pathEffectView = v7;

    [(UIView *)self->_pathEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_pathEffectView setAlpha:0.0];
    v9 = [(UIViewController *)self view];
    [v9 addSubview:self->_pathEffectView];

    pathEffectView = self->_pathEffectView;
  }

  return pathEffectView;
}

- (void)performWithoutAppearanceCallbacks:(id)a3
{
  ++self->_suppressedCallbacks;
  (*(a3 + 2))(a3, a2);
  --self->_suppressedCallbacks;
}

- (void)performWithoutCallbacksOrNotifications:(id)a3
{
  ++self->_suppressedNotifications;
  [(UIInputWindowController *)self performWithoutAppearanceCallbacks:a3];
  --self->_suppressedNotifications;
}

- (void)performOperations:(id)a3 withTemplateNotificationInfo:(id)a4
{
  v6 = a3;
  [(UIInputWindowController *)self setTemplateNotificationInfo:a4];
  v6[2](v6);

  [(UIInputWindowController *)self setTemplateNotificationInfo:0];
}

- (void)performWithSafeTransitionFrames:(id)a3
{
  if (self->_inhibitingHiding)
  {
    v3 = *(a3 + 2);
    v9 = a3;
    v3();
  }

  else
  {
    hiddenCount = self->_hiddenCount;
    v6 = a3;
    v7 = [(UIInputWindowController *)self inputSetContainerView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__UIInputWindowController_performWithSafeTransitionFrames___block_invoke;
    v12[3] = &unk_1E7102030;
    v13 = hiddenCount;
    v12[4] = self;
    [v7 performWithoutGeometryObserverNotifications:v12];

    self->_inhibitingHiding = 1;
    v6[2](v6);

    LODWORD(v7) = self->_hiddenCount + hiddenCount;
    self->_hiddenCount = 0;
    self->_inhibitingHiding = 0;
    v8 = [(UIInputWindowController *)self inputSetContainerView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__UIInputWindowController_performWithSafeTransitionFrames___block_invoke_2;
    v10[3] = &unk_1E7102030;
    v11 = v7;
    v10[4] = self;
    [v8 performWithoutGeometryObserverNotifications:v10];
  }
}

uint64_t __59__UIInputWindowController_performWithSafeTransitionFrames___block_invoke(uint64_t result)
{
  if (*(result + 40) >= 1)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v5 = result;
    v6 = 0;
    do
    {
      result = [*(v5 + 32) setInputViewsHidden:{0, v7, v8, v9, v10}];
      ++v6;
    }

    while (v6 < *(v5 + 40));
  }

  return result;
}

uint64_t __59__UIInputWindowController_performWithSafeTransitionFrames___block_invoke_2(uint64_t result)
{
  if (*(result + 40) >= 1)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v5 = result;
    v6 = 0;
    do
    {
      result = [*(v5 + 32) setInputViewsHidden:{1, v7, v8, v9, v10}];
      ++v6;
    }

    while (v6 < *(v5 + 40));
  }

  return result;
}

- (CGRect)_defaultInitialViewFrame
{
  v2 = [(UIViewController *)self _screen];
  if (!__SplashBoardOverrideStatusBarOrientation)
  {
    [UIApp _safeInterfaceOrientationForNoWindow];
  }

  [v2 _boundsForInterfaceOrientation:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)_centerForOrientation:(int64_t)a3
{
  v5 = [(UIViewController *)self _screen];
  [v5 _boundsForInterfaceOrientation:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  MidY = CGRectGetMidY(v22);
  v16 = [(UIViewController *)self _window];
  if ([objc_opt_class() _transformLayerRotationsAreEnabled])
  {

    v17 = MidX;
  }

  else
  {
    v18 = a3 - 3;

    if (v18 >= 2)
    {
      v17 = MidX;
    }

    else
    {
      v17 = MidY;
    }

    if (v18 < 2)
    {
      MidY = MidX;
    }
  }

  v19 = MidY;
  result.y = v19;
  result.x = v17;
  return result;
}

- (CGRect)_boundsForOrientation:(int64_t)a3
{
  v4 = [(UIViewController *)self _screen];
  [v4 _boundsForInterfaceOrientation:a3];
  v6 = v5;
  v8 = v7;

  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = v6;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)ignoreLayoutNotifications:(id)a3
{
  v4 = a3;
  if (+[_UIRemoteKeyboards enabled])
  {
    v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v3 ignoreLayoutNotifications:v4];
  }

  else
  {
    v4[2]();
  }
}

- (void)presentViewController:(id)a3
{
  v19 = a3;
  v4 = [(UIInputWindowController *)self inputViewSet];

  if (!v4)
  {
    [(UIInputWindowController *)self updateHostingConstraints];
  }

  v5 = [(UIViewController *)self childViewControllers];
  v6 = [v5 containsObject:v19];

  if (v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ already contains %@", self, v19}];
  }

  [(UIViewController *)self addChildViewController:v19];
  v7 = [(UIViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v19 view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(UIViewController *)self view];
  v18 = [v19 view];
  [v17 addSubview:v18];

  [v19 didMoveToParentViewController:self];
}

- (void)dismissViewController:(id)a3
{
  v7 = a3;
  v4 = [(UIViewController *)self childViewControllers];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ does not contain %@", self, v7}];
  }

  [v7 willMoveToParentViewController:0];
  v6 = [v7 view];
  [v6 removeFromSuperview];

  [v7 removeFromParentViewController];
}

- (void)willBeginTransitionWithController:(id)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 prepareForFloatingTransition:1];

  [(UIInputWindowController *)self setInterfaceAutorotationDisabled:1];
}

- (void)didEndTransitionWithController:(id)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 prepareForFloatingTransition:0];

  [(UIInputWindowController *)self setInterfaceAutorotationDisabled:0];
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 geometryChangeDone:1];

  v16 = [(UIInputWindowController *)self initialNotificationInfo];
  v6 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
  [v6 notificationsFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v8, v10, v12, v14];
  [v16 populateEndInfoWithFrame:?];
  [v16 addKeyboardNotificationDebuggingInfo:@"didEndTransitionWithController:"];
  if (+[UIKeyboardImpl isFloating])
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  [(UIInputWindowController *)self postValidatedStartNotifications:v15 withInfo:v16];
  [(UIInputWindowController *)self postValidatedEndNotifications:v15 withInfo:v16];
  [(UIInputWindowController *)self keyboardMoveOfType:1 info:v16];
  [(UIInputWindowControllerHosting *)self->_hosting updateCombinedBackdropViewAnimated:0 forKeyboardUp:1];
  [(UIInputWindowController *)self updateKeyboardSizeClass];
}

- (BOOL)shouldBeginTransitionForController:(id)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  if (!+[UIKeyboardImpl supportsFloating](UIKeyboardImpl, "supportsFloating") || ([v4 isMinimized] & 1) != 0 || (objc_msgSend(v4, "isTrackpadMode") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v7 = [(UIInputWindowController *)self inputViewSet];
    v5 = [v7 isCustomInputView] ^ 1;
  }

  return v5;
}

- (BOOL)isViewLandscape
{
  v2 = [(UIViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  return v4 > v6;
}

- (BOOL)_shouldPresentViewController:(id)a3 withPresentationController:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_KeyboardCannot.isa, v5);
      }
    }
  }

  return 1;
}

- (UIEdgeInsets)_inputViewPadding
{
  [(UIInputWindowControllerHosting *)self->_hosting _inputViewPadding];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateVisibilityConstraintsForPlacement:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_suppressUpdateVisibilityConstraints)
  {
    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = self;
    obj = v5;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = *v23;
    while (1)
    {
      v11 = 0;
      v8 = v8;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [v4 accessoryViewWillAppear];
        if (v8)
        {
          v14 = [v4 subPlacements];
          v15 = [v14 objectAtIndexedSubscript:v8 - 1];

          if (!v15)
          {
            goto LABEL_10;
          }

LABEL_9:
          [v12 updateVisibilityConstraintsForPlacement:v15];
          goto LABEL_10;
        }

        v15 = v4;
        if (v15)
        {
          goto LABEL_9;
        }

LABEL_10:
        v9 |= v13;
        ++v8;

        ++v11;
      }

      while (v7 != v11);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v7 = v16;
      if (!v16)
      {

        v17 = [(UIViewController *)v20 view];
        [v17 setNeedsLayout];

        if (v9)
        {
          v18 = [(UIInputWindowController *)v20 _inputAccessoryView];
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }
  }

  v18 = [(UIViewController *)self view];
LABEL_18:
  v19 = v18;
  [v18 setNeedsLayout];

LABEL_19:
}

- (void)hostAppSceneBoundsChanged
{
  [(UIInputWindowControllerHosting *)self->_hosting updateConstraintInsets];
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v3 sceneUpdated];
  }

  if (self->_shouldNotifyRemoteKeyboards)
  {
    NotifyVC(self);
  }

  v4 = [(UIViewController *)self _window];
  v5 = [v4 _isHostedInAnotherProcess];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v6 visualModeManager];
  v8 = [v7 windowingModeEnabled];

  if ((v8 & 1) != 0 || v5)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__UIInputWindowController_hostAppSceneBoundsChanged__block_invoke;
    v25[3] = &unk_1E70F35E0;
    v26 = v5;
    v25[4] = self;
    [(UIInputWindowController *)self performWithoutCallbacksOrNotifications:v25];
  }

  if (+[UIKeyboardImpl isFloating])
  {
    v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v10 = [v9 visualModeManager];
    v11 = [v10 windowingModeEnabled];

    if (v11)
    {
      +[UIKeyboardImpl floatingPersistentOffset];
      v13 = v12;
      v15 = v14;
      v16 = [(UIInputWindowController *)self inputViewSet];
      [v16 inputViewBounds];
      [UIPeripheralHost adjustedFloatingOffsetForKeyboardSize:v17, v18];
      v20 = v19;
      v22 = v21;

      if (v13 != v20 || v15 != v22)
      {
        v23 = +[UIPeripheralHost sharedInstance];
        [v23 setUndockedWithOffset:1 animated:{v20, v22}];
      }
    }
  }

  v24 = +[UIKeyboardImpl activeInstance];
  [v24 dismissEmojiPopoverIfNecessaryWithCompletion:0];
}

uint64_t __52__UIInputWindowController_hostAppSceneBoundsChanged__block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:0 layoutSubviews:0];
  }

  v2 = *(a1 + 32);

  return [v2 refreshKeyboardLayoutGuide];
}

- (void)takeKeyboardSnapshotIgnoringSpotlightCheck:(BOOL)a3
{
  v3 = a3;
  if (!+[UIKeyboard usesInputSystemUI]|| self->_keyboardSnapshot)
  {
    return;
  }

  v30 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
  v5 = [v30 currentUIState];
  v6 = [v5 bundleIdentifier];
  v7 = _UIMainBundleIdentifier();
  if (![v6 isEqualToString:v7])
  {
    goto LABEL_13;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 inputDelegate];
  if (!v9)
  {
LABEL_12:

LABEL_13:

    return;
  }

  v10 = v9;
  v11 = [(UIInputWindowController *)self inputViewSet];
  if ([v11 isCustomInputView])
  {
LABEL_11:

    goto LABEL_12;
  }

  v29 = [(UIInputWindowController *)self inputViewSet];
  v28 = [v29 inputView];
  [v28 frame];
  if (v12 <= 0.0 || +[UIKeyboard isSpotlight]&& !v3)
  {

    goto LABEL_11;
  }

  v13 = [UIApp _isSpringBoard];

  if ((v13 & 1) == 0)
  {
    v14 = [UIKeyboard snapshotViewForOptions:1];
    keyboardSnapshot = self->_keyboardSnapshot;
    self->_keyboardSnapshot = v14;

    v16 = [(UIInputWindowController *)self inputViewSet];
    v17 = [v16 inputView];
    v18 = [v17 superview];

    v19 = [(UIViewController *)self view];
    [v19 convertPoint:v18 fromView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v21 = v20;
    v23 = v22;

    [(UIView *)self->_keyboardSnapshot frame];
    v34 = CGRectOffset(v33, 0.0, -v23);
    [(UIView *)self->_keyboardSnapshot setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    v24 = [UIView alloc];
    [v18 frame];
    v25 = [(UIView *)v24 initWithFrame:v21, v23];
    [(UIView *)v25 setClipsToBounds:1];
    [(UIView *)v25 addSubview:self->_keyboardSnapshot];
    v26 = [(UIViewController *)self view];
    [v26 addSubview:v25];

    v27 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "Keyboard Snapshot taken", buf, 2u);
    }
  }
}

- (void)willSnapshot
{
  self->_isSnapshotting = 1;
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v2 setSnapshotting:1];
  }
}

- (void)didSnapshot
{
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v3 setSnapshotting:0];
  }

  self->_isSnapshotting = 0;
}

- (BOOL)trackingElementsShouldUseActualFrame
{
  v3 = [(UIInputWindowController *)self placement];
  if ([v3 isUndocked])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIInputWindowController *)self placement];
    if ([v5 isFloating])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(UIInputWindowController *)self placement];
      if ([v6 isCompactAssistantView])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(UIInputWindowController *)self placement];
        v8 = [v7 isHiddenForFloatingTransition];

        v4 = v8 ^ 1;
      }
    }
  }

  return v4;
}

- (void)updateTrackingElementsWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (![(UIInputWindowController *)self trackingElementsShouldUseActualFrame]&& height > 0.0)
  {
    v6 = [(UIViewController *)self _window];
    [v6 bounds];
    width = v7;

    height = 0.0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__UIInputWindowController_updateTrackingElementsWithSize___block_invoke;
  v8[3] = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
  *&v8[4] = width;
  *&v8[5] = height;
  [UIKeyboardSceneDelegate performOnControllers:v8];
}

- (void)updateTrackingElementsWithOffset:(UIOffset)a3
{
  v3[1] = 3221225472;
  if (a3.vertical != 0.0)
  {
    a3.horizontal = 0.0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[2] = __60__UIInputWindowController_updateTrackingElementsWithOffset___block_invoke;
  v3[3] = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
  if (a3.vertical != 0.0)
  {
    a3.vertical = 0.0;
  }

  v4 = a3;
  [UIKeyboardSceneDelegate performOnControllers:v3];
}

- (void)hostedOriginDidUpdate
{
  v3 = [(UIInputWindowController *)self inputViewSet];
  v4 = [v3 isInputViewPlaceholder];

  if (v4)
  {
    v5 = [(UIInputWindowController *)self inputViewSet];
    v6 = [v5 inputView];
    [v6 refreshPlaceholder];

    v7 = [(UIInputWindowController *)self postRotationPlacement];

    if (!v7 || (-[UIInputWindowController inputViewSet](self, "inputViewSet"), v8 = objc_claimAutoreleasedReturnValue(), [v8 inputView], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "fixedSize"), v11 = v10, v9, v8, v11 != 0.0))
    {

      [(UIInputWindowController *)self refreshKeyboardLayoutGuideForce:1];
    }
  }
}

- (void)refreshKeyboardLayoutGuideForce:(BOOL)a3
{
  v3 = a3;
  if (+[UIKeyboard isInputSystemUI])
  {
    return;
  }

  if (![(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    return;
  }

  v5 = [(UIInputWindowController *)self postRotationPlacement];

  if (v5)
  {
    if (!v3)
    {
      return;
    }
  }

  v6 = [(UIInputWindowController *)self currentTransition];

  if (v6)
  {
    if (!v3)
    {
      v7 = [(UIInputWindowController *)self currentTransition];
      v8 = [v7 fromPlacement];
      objc_opt_class();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        return;
      }
    }
  }

  v10 = [(UIInputWindowController *)self placement];
  if ([v10 showsInputOrAssistantViews])
  {
    goto LABEL_12;
  }

  v11 = [(UIInputWindowController *)self placement];
  if ([v11 isFloatingAssistantView])
  {

LABEL_12:
    goto LABEL_13;
  }

  v27 = [(UIInputWindowController *)self inputViewSet];
  v28 = [v27 inputAccessoryView];

  if (v28)
  {
LABEL_13:
    v12 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
    [v12 notificationsFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v22 = [v21 hasActiveKeyboardResponder];

      if (v22)
      {
        [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v14, v16, v18, v20];
        v14 = v23;
        v16 = v24;
        v18 = v25;
        v20 = v26;
      }
    }

    [(UIInputWindowController *)self keyboardMovedToScreenPosition:0 animated:v14, v16, v18, v20];
    return;
  }

  [(UIInputWindowController *)self updateOffscreenKeyboardLayoutGuide];
}

- (void)changeGuideAnimationOptions:(unint64_t)a3 duration:(double)a4
{
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__UIInputWindowController_changeGuideAnimationOptions_duration___block_invoke;
    v6[3] = &__block_descriptor_48_e22_v24__0__UIWindow_8_B16l;
    *&v6[4] = a4;
    v6[5] = a3;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v6];
  }
}

void __64__UIInputWindowController_changeGuideAnimationOptions_duration___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isTrackingKeyboard])
  {
    v3 = [v4 _primaryKeyboardTrackingGuide];
    [v3 updateAnimationDuration:*(a1 + 40) options:*(a1 + 32)];
  }
}

- (void)changeGuideAnimationState:(BOOL)a3
{
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__UIInputWindowController_changeGuideAnimationState___block_invoke;
    v4[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
    v5 = a3;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v4];
  }
}

void __53__UIInputWindowController_changeGuideAnimationState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isTrackingKeyboard])
  {
    v3 = [v4 _primaryKeyboardTrackingGuide];
    [v3 enableAnimations:*(a1 + 32)];
  }
}

- (void)hideGuideBackdrop:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__UIInputWindowController_hideGuideBackdrop___block_invoke;
  v3[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
  v4 = a3;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v3];
}

void __45__UIInputWindowController_hideGuideBackdrop___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isTrackingKeyboard])
  {
    v3 = [v4 _primaryKeyboardTrackingGuide];
    [v3 hideLightEffectsView:*(a1 + 32)];
  }
}

- (id)transitionGuideBackdrop:(BOOL)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__131;
  v13 = __Block_byref_object_dispose__131;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UIInputWindowController_transitionGuideBackdrop___block_invoke;
  v7[3] = &unk_1E71163B8;
  v8 = a3;
  v7[4] = self;
  v7[5] = &v9;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v7];
  if ([v10[5] count])
  {
    [v10[5] setObject:MEMORY[0x1E695E118] forKey:0x1EFB7AD30];
    v5 = v10[5];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __51__UIInputWindowController_transitionGuideBackdrop___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 isTrackingKeyboard];
  v4 = v11;
  if (v3)
  {
    v5 = [v11 _primaryKeyboardTrackingGuide];
    [v5 transitionBackdropForAnimationStart:*(a1 + 48)];

    v6 = [v11 _primaryKeyboardTrackingGuide];
    v7 = [v6 guideBackdropMatchLayer];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = [v8 _infoForBackdropMatchMoveForLayer:v7];
      [v9 setObject:v10 forKey:0x1EFB7AD50];
    }

    v4 = v11;
  }
}

- (BOOL)updateGuideBackdropRenderConfig:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UIInputWindowController_updateGuideBackdropRenderConfig_animated___block_invoke;
  v9[3] = &unk_1E71163B8;
  v11 = &v13;
  v6 = v5;
  v10 = v6;
  v12 = a4;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __68__UIInputWindowController_updateGuideBackdropRenderConfig_animated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isTrackingKeyboard])
  {
    v3 = [v4 _primaryKeyboardTrackingGuide];
    *(*(*(a1 + 40) + 8) + 24) = [v3 updateLightEffectsRenderConfig:*(a1 + 32) animated:*(a1 + 48)];
  }
}

- (void)keyboardIsDocking:(BOOL)a3
{
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__UIInputWindowController_keyboardIsDocking___block_invoke;
    v4[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
    v5 = a3;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v4];
  }
}

void __45__UIInputWindowController_keyboardIsDocking___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isTrackingKeyboard])
  {
    v3 = [v4 _primaryKeyboardTrackingGuide];
    [v3 setDocked:*(a1 + 32)];
  }
}

- (void)updateKeyboardPlacementForGuide:(id)a3
{
  v4 = a3;
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__UIInputWindowController_updateKeyboardPlacementForGuide___block_invoke;
    v5[3] = &unk_1E70F4440;
    v6 = v4;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v5];
  }
}

void __59__UIInputWindowController_updateKeyboardPlacementForGuide___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTrackingKeyboard])
  {
    [v3 updateGuideForKeyboardPlacement:*(a1 + 32)];
  }
}

- (void)keyboardMoveOfType:(unint64_t)a3 info:(id)a4
{
  v12 = a4;
  if (([v12 dueToRotation] & 1) == 0)
  {
    v6 = [(UIInputWindowController *)self postRotationPlacement];

    if (a3 != 4 && !v6 && !+[UIKeyboard isInputSystemUI])
    {
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            goto LABEL_2;
          }

          v7 = [(UIInputWindowController *)self placement];
          if (![v7 isFloating])
          {
            v8 = [(UIInputWindowController *)self placement];
            v9 = [v8 isFloatingAssistantView];

            if (v9)
            {
              goto LABEL_2;
            }

            goto LABEL_19;
          }

          goto LABEL_23;
        }

        v7 = [(UIInputWindowController *)self placement];
        if (![v7 isFloating])
        {
LABEL_23:

          goto LABEL_2;
        }

        v11 = [v12 wasCausedRemotely];

        if (!v11)
        {
          goto LABEL_2;
        }

LABEL_22:
        [(UIInputWindowController *)self keyboardDismissWithInfo:v12];
        goto LABEL_2;
      }

      if (a3 == 2)
      {
LABEL_19:
        [(UIInputWindowController *)self keyboardMoveWithInfo:v12];
        goto LABEL_2;
      }

      if (a3 == 3 && ([v12 dueToRotation] & 1) == 0)
      {
        v10 = [(UIInputWindowController *)self postRotationPlacement];

        if (!v10)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_2:
}

- (void)keyboardDismissWithInfo:(id)a3
{
  v4 = a3;
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    if (([v4 dueToRotation] & 1) == 0)
    {
      v5 = [(UIInputWindowController *)self postRotationPlacement];

      if (!v5)
      {
        v6 = [(UIViewController *)self _window];
        [v6 bounds];
        [(UIInputWindowController *)self updateTrackingElementsWithSize:v7, 0.0];

        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __51__UIInputWindowController_keyboardDismissWithInfo___block_invoke;
        v8[3] = &unk_1E70F4440;
        v9 = v4;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v8];
      }
    }
  }
}

void __51__UIInputWindowController_keyboardDismissWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  if ([v15 isTrackingKeyboard])
  {
    [*(a1 + 32) beginFrame];
    v4 = v3;
    v6 = v5;
    [*(a1 + 32) endFrame];
    v9 = vabdd_f64(v4, v7);
    v10 = 4;
    v11 = 2;
    v12 = 4;
    if (v7 > v4)
    {
      v12 = 8;
    }

    if (v4 <= v7)
    {
      v11 = v12;
    }

    if (v9 > 5.0)
    {
      v10 = v11;
    }

    if (v6 == v8)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    [*(a1 + 32) duration];
    [v15 moveKeyboardLayoutGuideOverEdge:v13 layoutViews:v14 > 0.0];
  }
}

- (void)moveKeyboardLayoutGuideOffscreen
{
  if (+[UIKeyboard usesInputSystemUI])
  {

    [(UIInputWindowController *)self updateOffscreenKeyboardLayoutGuide];
  }
}

- (void)updateOffscreenKeyboardLayoutGuide
{
  v3 = [(UIViewController *)self _window];
  [v3 bounds];
  [(UIInputWindowController *)self updateTrackingElementsWithSize:v4, 0.0];

  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {

    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:&__block_literal_global_453];
  }
}

void __61__UIInputWindowController_updateOffscreenKeyboardLayoutGuide__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isTrackingKeyboard])
  {
    v2 = [v7 _primaryKeyboardTrackingGuide];
    [v7 bounds];
    v4 = v3;
    [v7 insetForDismissedKeyboardGuide];
    v6 = [v2 changeSizingConstants:{v4, v5}];

    if (v6)
    {
      [v7 layoutViewsForTrackedGuides];
    }
  }
}

- (void)updateGuideForOffscreenRotationWithDuration:(double)a3
{
  v6 = [(UIInputWindowController *)self placement];
  if ([v6 isFloating])
  {
LABEL_4:

    return;
  }

  v4 = [(UIInputWindowController *)self placement];
  if ([v4 isFloatingAssistantView])
  {

    goto LABEL_4;
  }

  v5 = +[UIKeyboardCameraSession updatesGuideDuringRotation];

  if (!v5)
  {

    [(UIInputWindowController *)self updateOffscreenKeyboardLayoutGuide];
  }
}

- (void)updateKeyboardLayoutGuideWithFrame:(CGRect)a3 layoutViews:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  if ((*&a3.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3.origin.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a3.size.width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a3.size.height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && !CGRectIsNull(a3))
  {
    [(UIInputWindowController *)self updateTrackingElementsWithSize:width, height];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxY = CGRectGetMaxY(v36);
    v11 = [(UIViewController *)self _window];
    [v11 frame];
    v12 = CGRectGetMaxY(v37);

    if (MaxY < v12)
    {
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      MinX = CGRectGetMinX(v38);
      v14 = [(UIViewController *)self _window];
      [v14 frame];
      v15 = CGRectGetMaxY(v39);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      [(UIInputWindowController *)self updateTrackingElementsWithOffset:MinX, v15 - CGRectGetMaxY(v40)];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__UIInputWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke;
    aBlock[3] = &unk_1E71163E0;
    *&aBlock[5] = x;
    *&aBlock[6] = y;
    *&aBlock[7] = width;
    *&aBlock[8] = height;
    aBlock[4] = self;
    v33 = a4;
    v16 = _Block_copy(aBlock);
    v17 = [(UIViewController *)self _window];
    v18 = [v17 _isHostedInAnotherProcess];

    if (v18)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__UIInputWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke_2;
      v30[3] = &unk_1E7116408;
      v31 = v16;
      [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v30];
      v19 = v31;
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = [(UIViewController *)self _window];
      v21 = [v20 windowScene];
      v19 = [v21 windows];

      v22 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v27;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v27 != v24)
            {
              objc_enumerationMutation(v19);
            }

            (*(v16 + 2))(v16, *(*(&v26 + 1) + 8 * i));
          }

          v23 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v23);
      }
    }
  }
}

void __74__UIInputWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke(uint64_t a1, void *a2)
{
  v54 = a2;
  if ([v54 isTrackingKeyboard])
  {
    [v54 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(a1 + 32) _window];
    v12 = [v11 screen];
    v13 = [v12 coordinateSpace];
    v14 = [*(a1 + 32) _window];
    v15 = [v14 coordinateSpace];
    [v13 convertRect:v15 toCoordinateSpace:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [*(a1 + 32) _window];
    v25 = [v24 coordinateSpace];
    v26 = [v54 coordinateSpace];
    [v25 convertRect:v26 fromCoordinateSpace:{v4, v6, v8, v10}];

    v56.origin.x = v4;
    v56.origin.y = v6;
    v56.size.width = v8;
    v56.size.height = v10;
    v62.origin.x = v17;
    v62.origin.y = v19;
    v62.size.width = v21;
    v62.size.height = v23;
    v57 = CGRectIntersection(v56, v62);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    if (CGRectIsNull(v57))
    {
      [v54 frame];
      MaxY = CGRectGetMaxY(v58);
      [v54 frame];
      v33 = v32;
      [v54 insetForDismissedKeyboardGuide];
      v35 = v34;
      v36 = 0.0;
    }

    else
    {
      v37 = [*(a1 + 32) _window];
      v38 = [v37 coordinateSpace];
      v39 = [v54 coordinateSpace];
      [v38 convertRect:v39 toCoordinateSpace:{x, y, width, height}];
      v36 = v40;
      MaxY = v41;
      v33 = v42;
      v35 = v43;
    }

    [v54 insetForDismissedKeyboardGuide];
    if (v35 < v44)
    {
      [v54 insetForDismissedKeyboardGuide];
      v35 = v45;
    }

    [v54 frame];
    v46 = CGRectGetMaxY(v59);
    v60.origin.x = v36;
    v60.origin.y = MaxY;
    v60.size.width = v33;
    v60.size.height = v35;
    v47 = v46 - CGRectGetMaxY(v60);
    if ((*(a1 + 72) & 1) == 0)
    {
      v48 = [v54 _primaryKeyboardTrackingGuide];
      [v48 enableAnimations:0];
    }

    v49 = [v54 _primaryKeyboardTrackingGuide];
    v61.origin.x = v36;
    v61.origin.y = MaxY;
    v61.size.width = v33;
    v61.size.height = v35;
    v50 = [v49 changeOffsetConstants:{CGRectGetMinX(v61), v47}];

    v51 = [v54 _primaryKeyboardTrackingGuide];
    v52 = [v51 changeSizingConstants:{v33, v35}];

    if (((v50 & 1) != 0 || v52) && *(a1 + 72) == 1)
    {
      [v54 layoutViewsForTrackedGuides];
    }

    v53 = [v54 _primaryKeyboardTrackingGuide];
    [v53 enableAnimations:1];
  }
}

- (void)keyboardMoveWithInfo:(id)a3
{
  v30 = a3;
  v4 = [(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide];
  v5 = v30;
  if (v4)
  {
    [v30 endFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIViewController *)self _window];
    v15 = [v14 _isHostedInAnotherProcess];

    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 hasActiveKeyboardResponder];

    v32.origin.x = v7;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v13;
    if (!CGRectIsEmpty(v32))
    {
      if (v15 & 1 | ((v17 & 1) == 0))
      {
        v23 = 1;
      }

      else
      {
        v23 = +[UIKeyboard usesInputSystemUI];
      }

      v24 = [(UIViewController *)self _window];
      v25 = [v24 _isRemoteKeyboardWindow];

      v26 = [(UIInputWindowController *)self inputViewSet];
      v27 = [v26 isInputViewPlaceholder];

      v28 = [v30 forWritingToolsSheet];
      v5 = v30;
      if ((v28 & 1) == 0 && v27 && ((v25 ^ 1) & v23) == 0)
      {
        goto LABEL_14;
      }

      [v30 duration];
      [(UIInputWindowController *)self keyboardMovedToScreenPosition:v29 > 0.0 animated:v7, v9, v11, v13];
      goto LABEL_13;
    }

    v18 = [(UIInputWindowController *)self currentTransition];
    if (!v18 || (v19 = v18, -[UIInputWindowController currentTransition](self, "currentTransition"), v20 = objc_claimAutoreleasedReturnValue(), [v20 toPlacement], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "showsInputOrAssistantViews"), v21, v20, v19, v5 = v30, (v22 & 1) == 0))
    {
      [(UIInputWindowController *)self keyboardDismissWithInfo:v30];
LABEL_13:
      v5 = v30;
    }
  }

LABEL_14:
}

- (void)keyboardMovedToScreenPosition:(CGRect)a3 animated:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v10 = [(UIViewController *)self _window];
    v11 = [v10 _isHostedInAnotherProcess];

    v12 = [(UIViewController *)self _window];
    v13 = [v12 screen];
    v14 = [v13 coordinateSpace];

    v15 = [(UIViewController *)self _window];
    [v15 hostedViewOrigin];

    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 hasActiveKeyboardResponder];

    v18 = [(UIInputWindowController *)self placement];
    if ([v18 isUndocked])
    {
      v19 = 1;
    }

    else
    {
      v20 = [(UIInputWindowController *)self placement];
      if ([v20 isFloating])
      {
        v19 = 1;
      }

      else
      {
        v21 = [(UIInputWindowController *)self placement];
        if ([v21 isFloatingAssistantView])
        {
          v19 = 1;
        }

        else
        {
          v22 = [(UIInputWindowController *)self placement];
          v19 = [v22 isHiddenForFloatingTransition];
        }
      }
    }

    v23 = [(UIInputWindowController *)self placement];
    if ([v23 isFloatingAssistantView])
    {
      v24 = 1;
    }

    else
    {
      v25 = [(UIInputWindowController *)self placement];
      v24 = [v25 isCompactAssistantView];
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    if (!CGRectIsEmpty(v54))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__UIInputWindowController_keyboardMovedToScreenPosition_animated___block_invoke;
      aBlock[3] = &unk_1E7116430;
      v44 = x;
      v45 = y;
      v46 = width;
      v47 = height;
      v48 = v24;
      v42 = v14;
      v43 = self;
      v49 = v19;
      v50 = v11;
      v51 = a4;
      v26 = _Block_copy(aBlock);
      v27 = v26;
      if ((v17 | v11))
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __66__UIInputWindowController_keyboardMovedToScreenPosition_animated___block_invoke_2;
        v39[3] = &unk_1E7116408;
        v40 = v26;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v39];
        v28 = v40;
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v29 = [(UIViewController *)self _window];
        v30 = [v29 windowScene];
        v28 = [v30 windows];

        v31 = [v28 countByEnumeratingWithState:&v35 objects:v52 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v36;
          do
          {
            v34 = 0;
            do
            {
              if (*v36 != v33)
              {
                objc_enumerationMutation(v28);
              }

              v27[2](v27, *(*(&v35 + 1) + 8 * v34++));
            }

            while (v32 != v34);
            v32 = [v28 countByEnumeratingWithState:&v35 objects:v52 count:16];
          }

          while (v32);
        }
      }
    }
  }
}

void __66__UIInputWindowController_keyboardMovedToScreenPosition_animated___block_invoke(uint64_t a1, void *a2)
{
  v89 = a2;
  if (([v89 _isTextEffectsWindow] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v89 windowScene];
    v5 = [v4 _coordinateSpace];
    [v3 convertRect:v5 toCoordinateSpace:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    x = v6;
    y = v8;
    width = v10;
    height = v12;

    [v89 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v89 screen];
    [v22 bounds];
    v108.origin.x = v23;
    v108.origin.y = v24;
    v108.size.width = v25;
    v108.size.height = v26;
    v91.origin.x = v15;
    v91.origin.y = v17;
    v91.size.width = v19;
    v91.size.height = v21;
    LOBYTE(v4) = CGRectEqualToRect(v91, v108);

    if ((v4 & 1) == 0)
    {
      [v89 bounds];
      v109.origin.x = x;
      v109.origin.y = y;
      v109.size.width = width;
      v109.size.height = height;
      v93 = CGRectIntersection(v92, v109);
      x = v93.origin.x;
      y = v93.origin.y;
      width = v93.size.width;
      height = v93.size.height;
    }

    if (*(a1 + 80) == 1)
    {
      [v89 safeAreaInsets];
      height = height + v27;
    }

    [*(a1 + 40) updateTrackingElementsWithSize:{width, height}];
    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    MaxY = CGRectGetMaxY(v94);
    [v89 frame];
    if (MaxY < CGRectGetMaxY(v95))
    {
      v29 = *(a1 + 40);
      v96.origin.x = x;
      v96.origin.y = y;
      v96.size.width = width;
      v96.size.height = height;
      MinX = CGRectGetMinX(v96);
      [v89 frame];
      v31 = CGRectGetMaxY(v97);
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = width;
      v98.size.height = height;
      [v29 updateTrackingElementsWithOffset:{MinX, v31 - CGRectGetMaxY(v98)}];
    }
  }

  if ([v89 isTrackingKeyboard])
  {
    v32 = [v89 _primaryKeyboardTrackingGuide];
    [v32 setDocked:(*(a1 + 81) & 1) == 0];

    if (*(a1 + 80) == 1)
    {
      v33 = [v89 _primaryKeyboardTrackingGuide];
      [v33 setAddsHeightWhenUndocked:1];
    }

    if (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || (*(a1 + 82))
    {
      v34 = *(a1 + 32);
      v35 = [v89 windowScene];
      v36 = [v35 _coordinateSpace];
      [v34 convertRect:v36 toCoordinateSpace:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      if (*(a1 + 82) != 1 || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [v89 frame];
        v110.origin.x = v45;
        v110.origin.y = v46;
        v110.size.width = v47;
        v110.size.height = v48;
        v99.origin.x = v38;
        v99.origin.y = v40;
        v99.size.width = v42;
        v99.size.height = v44;
        v100 = CGRectIntersection(v99, v110);
        v38 = v100.origin.x;
        v40 = v100.origin.y;
        v42 = v100.size.width;
        v44 = v100.size.height;
      }

      v101.origin.x = v38;
      v101.origin.y = v40;
      v101.size.width = v42;
      v101.size.height = v44;
      if (!CGRectIsEmpty(v101))
      {
        goto LABEL_20;
      }
    }

    else
    {
      [v89 frame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v57 = [*(a1 + 40) _window];
      [v57 convertRect:v89 fromWindow:{v50, v52, v54, v56}];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      v102.origin.x = v59;
      v102.origin.y = v61;
      v102.size.width = v63;
      v102.size.height = v65;
      v103 = CGRectIntersection(v102, *(a1 + 48));
      v66 = v103.origin.x;
      v67 = v103.origin.y;
      v68 = v103.size.width;
      v69 = v103.size.height;
      if (!CGRectIsNull(v103))
      {
        v84 = [*(a1 + 40) _window];
        [v84 convertRect:v89 toWindow:{v66, v67, v68, v69}];
        v38 = v85;
        v40 = v86;
        v42 = v87;
        v44 = v88;

        goto LABEL_20;
      }
    }

    [v89 frame];
    v40 = CGRectGetMaxY(v104);
    [v89 frame];
    v42 = v70;
    [v89 insetForDismissedKeyboardGuide];
    v44 = v71;
    v38 = 0.0;
LABEL_20:
    [v89 insetForDismissedKeyboardGuide];
    if (v44 < v72)
    {
      [v89 insetForDismissedKeyboardGuide];
      v44 = v73;
    }

    [v89 frame];
    v74 = CGRectGetMaxY(v105);
    v106.origin.x = v38;
    v106.origin.y = v40;
    v106.size.width = v42;
    v106.size.height = v44;
    v75 = v74 - CGRectGetMaxY(v106);
    if (v75 > 0.0 && !*(a1 + 81))
    {
      v75 = 0.0;
    }

    v76 = v89;
    if ((*(a1 + 83) & 1) == 0)
    {
      v77 = [v89 _primaryKeyboardTrackingGuide];
      [v77 enableAnimations:0];

      v76 = v89;
    }

    v78 = [v76 _primaryKeyboardTrackingGuide];
    v107.origin.x = v38;
    v107.origin.y = v40;
    v107.size.width = v42;
    v107.size.height = v44;
    v79 = [v78 changeOffsetConstants:{CGRectGetMinX(v107), v75}];

    v80 = [v89 _primaryKeyboardTrackingGuide];
    v81 = [v80 changeSizingConstants:{v42, v44}];

    if (((v79 & 1) != 0 || v81) && *(a1 + 83) == 1)
    {
      [v89 layoutViewsForTrackedGuides];
    }

    v82 = [v89 _primaryKeyboardTrackingGuide];
    [v82 setAddsHeightWhenUndocked:0];

    v83 = [v89 _primaryKeyboardTrackingGuide];
    [v83 enableAnimations:1];
  }
}

- (void)updateKeyboardLayoutGuideForRefreshedPlaceholder
{
  v59 = *MEMORY[0x1E69E9840];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v53 = [(UIInputWindowController *)self inputViewSet];
    if ([v53 isInputViewPlaceholder])
    {
      externalTrackingUpdateInProgress = self->_externalTrackingUpdateInProgress;

      if (!externalTrackingUpdateInProgress)
      {
        v4 = [(UIInputWindowController *)self inputViewSet];
        v5 = [v4 inputView];
        [v5 fixedSize];
        v7 = v6;
        v9 = v8;

        if (v9 > 0.0)
        {
          v10 = [(UIInputWindowController *)self hosting];
          [v10 _inputViewPadding];
          v9 = v9 + fabs(v11);
        }

        v12 = [(UIViewController *)self _window];
        [v12 bounds];
        v14 = v13;

        v15 = [(UIViewController *)self _window];
        v16 = [v15 screen];
        v17 = [v16 coordinateSpace];

        v18 = [(UIViewController *)self _window];
        v19 = [v18 _isHostedInAnotherProcess];
        v20 = [(UIViewController *)self _window];
        v21 = [v20 windowScene];
        v22 = v21;
        if (v19)
        {
          [v21 _allWindows];
        }

        else
        {
          [v21 windows];
        }
        v23 = ;

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = v14 - v9;
          v28 = *v55;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v55 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v54 + 1) + 8 * i);
              width = v7;
              height = v9;
              if (([v30 _isTextEffectsWindow] & 1) == 0)
              {
                [v30 bounds];
                v34 = v33;
                v35 = [(UIViewController *)self _window];
                [v35 bounds];
                v37 = v36;

                v38 = v34 == v37;
                width = v7;
                height = v9;
                if (!v38)
                {
                  v39 = [v30 windowScene];
                  v40 = [v39 _coordinateSpace];
                  [v17 convertRect:v40 toCoordinateSpace:{0.0, v27, v7, v9}];
                  v42 = v41;
                  v44 = v43;
                  v46 = v45;
                  v48 = v47;

                  [v30 frame];
                  v63.origin.x = v42;
                  v63.origin.y = v44;
                  v63.size.width = v46;
                  v63.size.height = v48;
                  v62 = CGRectIntersection(v61, v63);
                  width = v62.size.width;
                  height = v62.size.height;
                }

                [(UIInputWindowController *)self updateTrackingElementsWithSize:width, height];
              }

              if ([v30 isTrackingKeyboard])
              {
                [v30 insetForDismissedKeyboardGuide];
                if (height < v49)
                {
                  [v30 insetForDismissedKeyboardGuide];
                  height = v50;
                }

                v51 = [v30 _primaryKeyboardTrackingGuide];
                v52 = [v51 changeSizingConstants:{width, height}];

                if (v52)
                {
                  [v30 layoutViewsForTrackedGuides];
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
          }

          while (v26);
        }
      }
    }

    else
    {
    }
  }
}

- (id)_infoForBackdropMatchMoveForLayer:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF20] dictionary];
  if (v3)
  {
    v5 = [v3 context];
    v6 = [v5 contextId];

    RenderId = CALayerGetRenderId();
    v12[0] = 0x1EFB7AD70;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v12[1] = 0x1EFB7AD90;
    v13[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:RenderId];
    v13[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v4 = v10;
  }

  return v4;
}

- (id)infoForAnimationStyle:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getTUIKeyboardAnimationInfoClass_softClass_0;
  v14 = getTUIKeyboardAnimationInfoClass_softClass_0;
  if (!getTUIKeyboardAnimationInfoClass_softClass_0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getTUIKeyboardAnimationInfoClass_block_invoke_0;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getTUIKeyboardAnimationInfoClass_block_invoke_0(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = objc_alloc_init(v5);
  [v4 duration];
  [v7 setDuration:?];
  [v7 setOptions:{objc_msgSend(v4, "extraOptions")}];
  v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v7 setIsLocalKeyboard:{objc_msgSend(v8, "handlingRemoteEvent") ^ 1}];

  [v7 setIsRotating:{-[UIInputWindowController isRotating](self, "isRotating")}];
  [v7 setShouldAnimate:{objc_msgSend(v4, "animated")}];
  [v7 setAnimationType:{objc_msgSend(v4, "animationType")}];

  return v7;
}

- (id)remoteNotificationInfo
{
  v3 = [(UIInputWindowController *)self templateNotificationInfo];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(UIInputWindowController *)self currentTransition];
    v4 = [v5 notificationInfo];

    if (!v4)
    {
      v4 = +[UIInputViewSetNotificationInfo info];
      v6 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
      [v6 notificationsFrame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:0 viewInRemoteKeyboardWindow:v8, v10, v12, v14];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [(UIInputWindowController *)self nextAnimationStyle];
      [v4 populateWithAnimationStyle:v23];

      [v4 populateStartInfoWithFrame:{v16, v18, v20, v22}];
      [v4 addKeyboardNotificationDebuggingInfo:@"remoteNotificationInfo"];
    }
  }

  return v4;
}

- (BOOL)keyboardControlsNotifications
{
  if (TIGetNotificationsFromKeyboardValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetNotificationsFromKeyboardValue_onceToken, &__block_literal_global_1155);
  }

  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:@"NotificationsFromKeyboard"];

  if (v3)
  {
    [v3 integerValue];
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)needsConvertToSceneCoordinates
{
  if (qword_1ED49BF38 != -1)
  {
    dispatch_once(&qword_1ED49BF38, &__block_literal_global_460);
  }

  if (byte_1ED49BF29 != 1)
  {
    return 0;
  }

  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 visualModeManager];
  v4 = [v3 windowingModeEnabled];

  return v4;
}

void __57__UIInputWindowController_needsConvertToSceneCoordinates__block_invoke()
{
  if (qword_1ED49BF50 != -1)
  {
    dispatch_once(&qword_1ED49BF50, &__block_literal_global_1160);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"AlwaysConvertToSceneCoordinates"];

  byte_1ED49BF29 = [v1 BOOLValue];
  if ((byte_1ED49BF29 & 1) == 0)
  {
    v6 = _UIMainBundleIdentifier();
    byte_1ED49BF29 = [&unk_1EFE2CC40 containsObject:?];
    if (byte_1ED49BF29)
    {
LABEL_5:
      if (qword_1ED49BF58 != -1)
      {
        dispatch_once(&qword_1ED49BF58, &__block_literal_global_1165_0);
      }

      v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
      v3 = [v2 valueForPreferenceKey:@"AlwaysNotConvertToSceneCoordinates"];

      LODWORD(v2) = [v3 BOOLValue];
      if (v2)
      {
        byte_1ED49BF29 = 0;
      }

      goto LABEL_14;
    }

    v4 = dyld_program_sdk_at_least();
    v5 = [&unk_1EFE2CC58 containsObject:v6];
    byte_1ED49BF29 = v5;
    if (v5 && v4)
    {
      byte_1ED49BF29 = 0;
      NSLog(&cfstr_WarningKeyboar.isa);
      if (byte_1ED49BF29)
      {
        goto LABEL_5;
      }
    }

    else if (v5)
    {
      goto LABEL_5;
    }

LABEL_14:
  }
}

- (id)convertUserInfo:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 keyboardWindow];

  v57 = v6;
  if (v6)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v62[0] = @"UIKeyboardFrameBeginUserInfoKey";
    v62[1] = @"UIKeyboardFrameEndUserInfoKey";
    v62[2] = @"UIKeyboardCenterBeginUserInfoKey";
    v62[3] = @"UIKeyboardCenterEndUserInfoKey";
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
    v7 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *v59;
    v54 = v4;
    v55 = v3;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:v11];
        v13 = [v12 objCType];
        if (!strcmp("{CGRect={CGPoint=dd}{CGSize=dd}}", v13))
        {
          [v12 CGRectValue];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v36 = [v57 windowScene];
          v37 = [v36 _coordinateSpace];
          v38 = [(UIViewController *)self _window];
          v39 = [v38 windowScene];
          v40 = [v39 _coordinateSpace];
          [v37 convertRect:v40 toCoordinateSpace:{v29, v31, v33, v35}];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v27 = [MEMORY[0x1E696B098] valueWithRect:{v42, v44, v46, v48}];
        }

        else
        {
          if (strcmp("{CGPoint=dd}", v13))
          {
            goto LABEL_12;
          }

          [v12 CGPointValue];
          v15 = v14;
          v17 = v16;
          v18 = [v57 windowScene];
          v19 = [v18 _coordinateSpace];
          v20 = [(UIViewController *)self _window];
          v21 = [v20 windowScene];
          v22 = [v21 _coordinateSpace];
          [v19 convertPoint:v22 toCoordinateSpace:{v15, v17}];
          v24 = v23;
          v26 = v25;

          v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v24, v26}];
        }

        v49 = v27;
        v4 = v54;
        [v54 setObject:v27 forKeyedSubscript:v11];

        v3 = v55;
LABEL_12:
      }

      v8 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (!v8)
      {
LABEL_14:

        v50 = [v4 copy];
        goto LABEL_16;
      }
    }
  }

  v50 = v3;
LABEL_16:
  v51 = v50;

  return v51;
}

- (void)postNotificationName:(id)a3 userInfo:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [(UIViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];
  v12 = [v11 screen];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    [(UIViewController *)self view];
    v23 = v8;
    v15 = v6;
    v17 = v16 = v7;
    v18 = [v17 window];
    v14 = [v18 screen];

    v7 = v16;
    v6 = v15;
    v8 = v23;
  }

  if ([(UIInputWindowController *)self needsConvertToSceneCoordinates])
  {
    v19 = [(UIInputWindowController *)self convertUserInfo:v7];
    [v8 postNotificationName:v6 object:v14 userInfo:v19];
    v20 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(UIViewController *)self _window];
      v22 = [v21 windowScene];
      *buf = 138412802;
      v25 = v6;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Posting converted notifications: %@ %@ for scene %@", buf, 0x20u);
    }
  }

  else
  {
    [v8 postNotificationName:v6 object:v14 userInfo:v7];
  }
}

- (BOOL)shouldPostNotification:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  if (![(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    goto LABEL_14;
  }

  v7 = 1;
  if (!a3 || self->_suppressedNotifications || ![v6 containsChange])
  {
    goto LABEL_15;
  }

  v8 = [(UIViewController *)self _window];
  if (![v8 _isTextEffectsWindowNotificationOwner] || objc_msgSend(UIApp, "isSuspended") && self->_isSnapshotting || -[UIInputWindowController isTransitioningBetweenFloatingStates](self, "isTransitioningBetweenFloatingStates"))
  {
    goto LABEL_13;
  }

  v9 = [(UIInputWindowController *)self inputViewSet];
  v10 = [v9 isCustomInputView];
  if (a3 == 2 && (v10 & 1) == 0)
  {
    [v6 endFrame];
    if (v11 == 0.0)
    {

LABEL_13:
LABEL_14:
      v7 = 1;
LABEL_15:
      v12 = v7 & ([v6 nonKeyboardOverride] ^ 1);
      goto LABEL_16;
    }
  }

  v14 = +[UIKeyboard usesLocalKeyboard];

  if (v14)
  {
    goto LABEL_14;
  }

  if (!self->_externalTrackingUpdateInProgress)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v12 = [v6 nonKeyboardOverride] ^ 1;
LABEL_16:
  if ([v6 waitingForInputUI])
  {
    [(UIInputWindowController *)self setNotificationInfoWaitingForInputUI:v6];
    LOBYTE(v12) = 1;
  }

  return v12 ^ 1;
}

- (void)postStartNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  if ([(UIInputWindowController *)self shouldPostNotification:a3 withInfo:?])
  {
    [(UIInputWindowController *)self postValidatedStartNotifications:a3 withInfo:v6];
  }
}

- (void)postValidatedStartNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__UIInputWindowController_postValidatedStartNotifications_withInfo___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  v13 = a3;
  aBlock[4] = self;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 layoutIsResizing])
  {
  }

  else
  {
    v10 = [(UIInputWindowController *)self isTransitioningBetweenFloatingStates];

    if (!v10)
    {
      v8[2](v8);
      goto LABEL_6;
    }
  }

  [UIView performWithoutAnimation:v8];
LABEL_6:
}

void __68__UIInputWindowController_postValidatedStartNotifications_withInfo___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 2:
        kdebug_trace();
        v3 = kac_get_log();
        v8 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v8;
          if (os_signpost_enabled(v3))
          {
            *v36 = 0;
            v6 = "notificationWill.show";
            goto LABEL_25;
          }
        }

        goto LABEL_26;
      case 3:
        kdebug_trace();
        v3 = kac_get_log();
        v9 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v9;
          if (os_signpost_enabled(v3))
          {
            *v36 = 0;
            v6 = "notificationWill.hide";
            goto LABEL_25;
          }
        }

        goto LABEL_26;
      case 4:
        kdebug_trace();
        v3 = kac_get_log();
        v4 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v4;
          if (os_signpost_enabled(v3))
          {
            *v36 = 0;
            v6 = "notificationWill.rotate";
LABEL_25:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, v6, "", v36, 2u);
            goto LABEL_26;
          }
        }

        goto LABEL_26;
    }

LABEL_22:
    kdebug_trace();
    v3 = kac_get_log();
    v11 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v11;
      if (os_signpost_enabled(v3))
      {
        *v36 = 0;
        v6 = "notificationWill.unknown";
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  if (!v2)
  {
    kdebug_trace();
    v3 = kac_get_log();
    v10 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v10;
      if (os_signpost_enabled(v3))
      {
        *v36 = 0;
        v6 = "notificationWill.none";
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  if (v2 != 1)
  {
    goto LABEL_22;
  }

  kdebug_trace();
  v3 = kac_get_log();
  v7 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v7;
    if (os_signpost_enabled(v3))
    {
      *v36 = 0;
      v6 = "notificationWill.frameChange";
      goto LABEL_25;
    }
  }

LABEL_26:

  if (!+[UIKeyboard usesInputSystemUI])
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) inputViewSet];
    [v12 setWasCausedRemotely:{objc_msgSend(v13, "isRemoteKeyboard") | objc_msgSend(v12, "wasCausedRemotely")}];
  }

  if ([*(a1 + 32) keyboardControlsNotifications])
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      if (([*(a1 + 40) shouldSendInClient] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isRotating") & 1) == 0)
      {
        v14 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        [v14 keyboardSendNotification:*(a1 + 48) withInfo:*(a1 + 40) isStart:1];
LABEL_37:
      }
    }

    else if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && ([UIApp _isSpringBoard] & 1) == 0)
    {
      v14 = [*(a1 + 32) placementIgnoringRotation];
      if ([v14 accessoryViewWillAppear] & 1) != 0 || (objc_msgSend(*(a1 + 40), "shouldSendInClient"))
      {
        goto LABEL_37;
      }

      v35 = [*(a1 + 32) isRotating];

      if ((v35 & 1) == 0)
      {
        return;
      }
    }
  }

  v15 = [*(a1 + 40) userInfo];
  v16 = [*(a1 + 32) placement];
  objc_opt_class();
  [*(a1 + 40) setAssistantOnScreenOnly:objc_opt_isKindOfClass() & 1];

  v17 = [*(a1 + 40) privateUserInfo];
  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [*(a1 + 32) postNotificationName:@"UIKeyboardWillChangeFrameNotification" userInfo:v15];
  [*(a1 + 32) postNotificationName:@"UIKeyboardPrivateWillChangeFrameNotification" userInfo:v17];
  v19 = *(a1 + 48);
  if (v19 == 2)
  {
    v20 = UIKeyboardPrivateWillShowNotification;
    v21 = &UIKeyboardWillShowNotification;
  }

  else
  {
    if (v19 != 3)
    {
      v23 = 0;
      v22 = 0;
      goto LABEL_48;
    }

    v20 = UIKeyboardPrivateWillHideNotification;
    v21 = &UIKeyboardWillHideNotification;
  }

  v22 = *v21;
  v23 = *v20;
  if (v22)
  {
    [*(a1 + 32) postNotificationName:v22 userInfo:v15];
  }

  if (v23)
  {
    [*(a1 + 32) postNotificationName:v23 userInfo:v17];
  }

  v19 = *(a1 + 48);
LABEL_48:
  if (v19 > 1)
  {
    switch(v19)
    {
      case 2:
        kdebug_trace();
        v24 = kac_get_log();
        v29 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v29;
          if (os_signpost_enabled(v24))
          {
            *v36 = 0;
            v27 = "notificationWill.show";
            goto LABEL_72;
          }
        }

        goto LABEL_73;
      case 3:
        kdebug_trace();
        v24 = kac_get_log();
        v30 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v30;
          if (os_signpost_enabled(v24))
          {
            *v36 = 0;
            v27 = "notificationWill.hide";
            goto LABEL_72;
          }
        }

        goto LABEL_73;
      case 4:
        kdebug_trace();
        v24 = kac_get_log();
        v25 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v25;
          if (os_signpost_enabled(v24))
          {
            *v36 = 0;
            v27 = "notificationWill.rotate";
LABEL_72:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v24, OS_SIGNPOST_INTERVAL_END, v26, v27, "", v36, 2u);
            goto LABEL_73;
          }
        }

        goto LABEL_73;
    }

LABEL_69:
    kdebug_trace();
    v24 = kac_get_log();
    v32 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v32;
      if (os_signpost_enabled(v24))
      {
        *v36 = 0;
        v27 = "notificationWill.unknown";
        goto LABEL_72;
      }
    }

    goto LABEL_73;
  }

  if (!v19)
  {
    kdebug_trace();
    v24 = kac_get_log();
    v31 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v31;
      if (os_signpost_enabled(v24))
      {
        *v36 = 0;
        v27 = "notificationWill.none";
        goto LABEL_72;
      }
    }

    goto LABEL_73;
  }

  if (v19 != 1)
  {
    goto LABEL_69;
  }

  kdebug_trace();
  v24 = kac_get_log();
  v28 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = v28;
    if (os_signpost_enabled(v24))
    {
      *v36 = 0;
      v27 = "notificationWill.frameChange";
      goto LABEL_72;
    }
  }

LABEL_73:

  v33 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(a1 + 40);
    *v36 = 138412546;
    *&v36[4] = v22;
    v37 = 2112;
    v38 = v34;
    _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_DEFAULT, "Posted notifications (start): %@ %@", v36, 0x16u);
  }
}

- (void)postEndNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  if ([(UIInputWindowController *)self shouldPostNotification:a3 withInfo:?])
  {
    [(UIInputWindowController *)self postValidatedEndNotifications:a3 withInfo:v6];
  }
}

- (void)postValidatedEndNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIInputWindowController_postValidatedEndNotifications_withInfo___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  v13 = a3;
  aBlock[4] = self;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 layoutIsResizing])
  {
  }

  else
  {
    v10 = [(UIInputWindowController *)self isTransitioningBetweenFloatingStates];

    if (!v10)
    {
      v8[2](v8);
      goto LABEL_6;
    }
  }

  [UIView performWithoutAnimation:v8];
LABEL_6:
}

void __66__UIInputWindowController_postValidatedEndNotifications_withInfo___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 2:
        kdebug_trace();
        v3 = kac_get_log();
        v8 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v8;
          if (os_signpost_enabled(v3))
          {
            *v45 = 0;
            v6 = "notificationDid.show";
            goto LABEL_25;
          }
        }

        goto LABEL_26;
      case 3:
        kdebug_trace();
        v3 = kac_get_log();
        v9 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v9;
          if (os_signpost_enabled(v3))
          {
            *v45 = 0;
            v6 = "notificationDid.hide";
            goto LABEL_25;
          }
        }

        goto LABEL_26;
      case 4:
        kdebug_trace();
        v3 = kac_get_log();
        v4 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v4;
          if (os_signpost_enabled(v3))
          {
            *v45 = 0;
            v6 = "notificationDid.rotate";
LABEL_25:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, v6, "", v45, 2u);
            goto LABEL_26;
          }
        }

        goto LABEL_26;
    }

LABEL_22:
    kdebug_trace();
    v3 = kac_get_log();
    v11 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v11;
      if (os_signpost_enabled(v3))
      {
        *v45 = 0;
        v6 = "notificationDid.unknown";
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  if (!v2)
  {
    kdebug_trace();
    v3 = kac_get_log();
    v10 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v10;
      if (os_signpost_enabled(v3))
      {
        *v45 = 0;
        v6 = "notificationDid.none";
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  if (v2 != 1)
  {
    goto LABEL_22;
  }

  kdebug_trace();
  v3 = kac_get_log();
  v7 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v7;
    if (os_signpost_enabled(v3))
    {
      *v45 = 0;
      v6 = "notificationDid.frameChange";
      goto LABEL_25;
    }
  }

LABEL_26:

  if (!+[UIKeyboard usesInputSystemUI])
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) inputViewSet];
    [v12 setWasCausedRemotely:{objc_msgSend(v13, "isRemoteKeyboard") | objc_msgSend(v12, "wasCausedRemotely")}];
  }

  if ([*(a1 + 32) keyboardControlsNotifications])
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      if (([*(a1 + 40) shouldSendInClient] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isRotating") & 1) == 0)
      {
        v14 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        [v14 keyboardSendNotification:*(a1 + 48) withInfo:*(a1 + 40) isStart:0];
LABEL_37:
      }
    }

    else if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && ([UIApp _isSpringBoard] & 1) == 0)
    {
      v14 = [*(a1 + 32) placementIgnoringRotation];
      if ([v14 accessoryViewWillAppear] & 1) != 0 || (objc_msgSend(*(a1 + 40), "shouldSendInClient"))
      {
        goto LABEL_37;
      }

      v44 = [*(a1 + 32) isRotating];

      if ((v44 & 1) == 0)
      {
        return;
      }
    }
  }

  v15 = [*(a1 + 40) userInfo];
  v16 = [*(a1 + 32) placement];
  objc_opt_class();
  [*(a1 + 40) setAssistantOnScreenOnly:objc_opt_isKindOfClass() & 1];

  v17 = [*(a1 + 40) privateUserInfo];
  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [*(a1 + 32) postNotificationName:@"UIKeyboardDidChangeFrameNotification" userInfo:v15];
  [*(a1 + 32) postNotificationName:@"UIKeyboardPrivateDidChangeFrameNotification" userInfo:v17];
  [*(a1 + 32) updateAmbiguousControlCenterActivationMargin:*(a1 + 48) withInfo:*(a1 + 40)];
  if (![UIApp isSuspended] || (objc_msgSend(*(a1 + 32), "_window"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "_isHostedInAnotherProcess"), v19, v20))
  {
    v21 = [*(a1 + 32) inputViewSet];
    v22 = [v21 keyboard];
    if (v22)
    {
      v23 = [*(a1 + 32) isOnScreen];
      v24 = *(a1 + 32);
      if (v23)
      {
        v25 = [v24 placement];
        if ([v25 showsKeyboard])
        {
          v26 = 1;
        }

        else
        {
          v26 = [*(a1 + 32) isUndocked];
        }
      }

      else
      {
        v26 = [v24 isUndocked];
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = +[UIPeripheralHost sharedInstance];
    [v27 setKeyboardOnScreenNotifyKey:v26];
  }

  v28 = *(a1 + 48);
  if (v28 == 2)
  {
    v29 = UIKeyboardPrivateDidShowNotification;
    v30 = &UIKeyboardDidShowNotification;
  }

  else
  {
    if (v28 != 3)
    {
      v32 = 0;
      v31 = 0;
      goto LABEL_59;
    }

    v29 = UIKeyboardPrivateDidHideNotification;
    v30 = &UIKeyboardDidHideNotification;
  }

  v31 = *v30;
  v32 = *v29;
  if (v31)
  {
    [*(a1 + 32) postNotificationName:v31 userInfo:v15];
  }

  if (v32)
  {
    [*(a1 + 32) postNotificationName:v32 userInfo:v17];
  }

  v28 = *(a1 + 48);
LABEL_59:
  if (v28 > 1)
  {
    switch(v28)
    {
      case 2:
        kdebug_trace();
        v33 = kac_get_log();
        v38 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
        if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v35 = v38;
          if (os_signpost_enabled(v33))
          {
            *v45 = 0;
            v36 = "notificationDid.show";
            goto LABEL_83;
          }
        }

        goto LABEL_84;
      case 3:
        kdebug_trace();
        v33 = kac_get_log();
        v39 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v35 = v39;
          if (os_signpost_enabled(v33))
          {
            *v45 = 0;
            v36 = "notificationDid.hide";
            goto LABEL_83;
          }
        }

        goto LABEL_84;
      case 4:
        kdebug_trace();
        v33 = kac_get_log();
        v34 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v35 = v34;
          if (os_signpost_enabled(v33))
          {
            *v45 = 0;
            v36 = "notificationDid.rotate";
LABEL_83:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v33, OS_SIGNPOST_INTERVAL_END, v35, v36, "", v45, 2u);
            goto LABEL_84;
          }
        }

        goto LABEL_84;
    }

LABEL_80:
    kdebug_trace();
    v33 = kac_get_log();
    v41 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = v41;
      if (os_signpost_enabled(v33))
      {
        *v45 = 0;
        v36 = "notificationDid.unknown";
        goto LABEL_83;
      }
    }

    goto LABEL_84;
  }

  if (!v28)
  {
    kdebug_trace();
    v33 = kac_get_log();
    v40 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = v40;
      if (os_signpost_enabled(v33))
      {
        *v45 = 0;
        v36 = "notificationDid.none";
        goto LABEL_83;
      }
    }

    goto LABEL_84;
  }

  if (v28 != 1)
  {
    goto LABEL_80;
  }

  kdebug_trace();
  v33 = kac_get_log();
  v37 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v35 = v37;
    if (os_signpost_enabled(v33))
    {
      *v45 = 0;
      v36 = "notificationDid.frameChange";
      goto LABEL_83;
    }
  }

LABEL_84:

  v42 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(a1 + 40);
    *v45 = 138412546;
    *&v45[4] = v31;
    v46 = 2112;
    v47 = v43;
    _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_DEFAULT, "Posted notifications (end): %@ %@", v45, 0x16u);
  }
}

- (int)appearStateForChild:(unint64_t)a3 placement:(id)a4 start:(BOOL)a5
{
  v5 = a5;
  if (a3 == 4)
  {
    v6 = [a4 accessoryViewWillAppear];
  }

  else
  {
    v6 = [a4 inputViewWillAppear];
  }

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v5)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)changeChild:(unint64_t)a3 toAppearState:(int)a4 animated:(BOOL)a5
{
  if (self->_suppressedCallbacks)
  {
    return;
  }

  v6 = a5;
  if (a3 == 2)
  {
    v8 = [(UIInputWindowController *)self _inputAssistantViewController];
  }

  else
  {
    if (a3 == 4)
    {
      [(UIInputWindowController *)self _inputAccessoryViewController];
    }

    else
    {
      [(UIInputWindowController *)self _inputViewController];
    }
    v8 = ;
  }

  v11 = v8;
  v9 = a4 | (16 * [v8 _appearState]);
  if (v9 > 31)
  {
    if (v9 > 47)
    {
      v10 = v11;
      if (v9 != 48)
      {
        if (v9 != 49)
        {
          goto LABEL_29;
        }

        [(UIViewController *)v11 __viewDidDisappear:v6];
LABEL_24:
        [v11 __viewWillAppear:v6];
        goto LABEL_28;
      }
    }

    else
    {
      v10 = v11;
      if (v9 != 32)
      {
        if (v9 != 35)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      [(UIViewController *)v11 __viewWillDisappear:v6];
    }

    [(UIViewController *)v11 __viewDidDisappear:v6];
    goto LABEL_28;
  }

  if (v9 <= 17)
  {
    v10 = v11;
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        [v11 __viewWillAppear:v6];
LABEL_25:
        [v11 __viewDidAppear:v6];
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v10 = v11;
  if (v9 == 18)
  {
    goto LABEL_25;
  }

  if (v9 == 19)
  {
    [v11 __viewDidAppear:v6];
LABEL_20:
    [(UIViewController *)v11 __viewWillDisappear:v6];
LABEL_28:
    v10 = v11;
  }

LABEL_29:
}

- (void)updateAppearStatesForPlacement:(id)a3 start:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  for (i = 0; i != 3; ++i)
  {
    [(UIInputWindowController *)self changeChild:(1 << i) toAppearState:[(UIInputWindowController *)self appearStateForChild:(1 << i) placement:a3 start:v6] animated:v5];
  }
}

- (void)updateAmbiguousControlCenterActivationMargin:(unint64_t)a3 withInfo:(id)a4
{
  v14 = a4;
  v7 = +[UIDevice _hasHomeButton];
  if (v7 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), ([v4 orientation] - 3) < 2))
  {
    v8 = [(UIInputWindowController *)self placement];
    v9 = [v8 isUndocked];

    if (!v7)
    {
    }

    if (a3 == 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = 0.0;
    if ((v10 & 1) == 0)
    {
      [v14 endFrame];
      v11 = v12;
    }
  }

  else
  {

    v11 = 0.0;
  }

  v13 = +[UIPeripheralHost sharedInstance];
  [v13 setAmbiguousControlCenterActivationMargin:v11];
}

- (void)_forcePreLayoutHostViewFrame
{
  p_preLayoutHostViewFrame = &self->_preLayoutHostViewFrame;
  v4 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
  [v4 notificationsFrame];
  p_preLayoutHostViewFrame->origin.x = v5;
  p_preLayoutHostViewFrame->origin.y = v6;
  p_preLayoutHostViewFrame->size.width = v7;
  p_preLayoutHostViewFrame->size.height = v8;

  self->_didOverridePreLayoutHostViewFrame = 1;
}

- (void)transferActiveNotificationInfoToInfo:(id)a3
{
  v7 = a3;
  v4 = [(UIInputWindowController *)self templateNotificationInfo];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transferActiveNotificationInfoToInfo:"];
  [v7 addKeyboardNotificationDebuggingInfo:v5];

  if (!v4)
  {
    if (![(UIInputWindowController *)self isRotating])
    {
      goto LABEL_7;
    }

    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v7 setWasCausedRemotely:{objc_msgSend(v6, "keyboardActive") ^ 1}];

    [v7 setDueToRotation:1];
    goto LABEL_6;
  }

  [v7 setWasCausedRemotely:{objc_msgSend(v4, "wasCausedRemotely")}];
  [v7 setDueToRotation:{objc_msgSend(v4, "dueToRotation")}];
  [v7 setWaitingForInputUI:{objc_msgSend(v4, "waitingForInputUI")}];
  if ([v7 dueToRotation])
  {
LABEL_6:
    [v7 setShouldSendInClient:1];
  }

LABEL_7:
}

- (id)_screenCoordinateSpace
{
  v2 = [(UIViewController *)self _window];
  v3 = [v2 screen];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)a3
{
  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:0 viewInRemoteKeyboardWindow:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)a3 viewInRemoteKeyboardWindow:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(UIViewController *)self view];
  [v10 convertRect:0 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if ([UIApp _isSpringBoard])
  {
    goto LABEL_2;
  }

  v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v29 = [v28 visualModeManager];
  v30 = [v29 windowingModeEnabled];

  if (a4 || (v30 & 1) != 0)
  {
LABEL_9:
    v19 = [(UIViewController *)self _window];
    v34 = [v19 windowScene];
    v35 = [v34 _coordinateSpace];
    v36 = [(UIViewController *)self _window];
    v37 = [v36 screen];
    v38 = [v37 coordinateSpace];
    [v35 convertRect:v38 toCoordinateSpace:{v12, v14, v16, v18}];
    v21 = v39;
    v23 = v40;
    v25 = v41;
    v27 = v42;

    goto LABEL_10;
  }

  v31 = [(UIViewController *)self _window];
  if (([v31 _isTextEffectsWindow] & 1) == 0)
  {

    goto LABEL_9;
  }

  v32 = [(UIViewController *)self _window];
  v33 = [v32 _isHostedInAnotherProcess];

  if (!v33)
  {
    goto LABEL_9;
  }

LABEL_2:
  v19 = [(UIViewController *)self _window];
  [v19 convertRect:0 toWindow:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
LABEL_10:

  v43 = v21;
  v44 = v23;
  v45 = v25;
  v46 = v27;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

void __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_3(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([objc_opt_class() useMetronomeTracking])
  {
    if (*(a1 + 40) == 1)
    {
      v4 = [*(a1 + 32) currentTransition];
      v5 = [v4 toPlacement];
      v6 = [v5 isFloatingAssistantView];

      if ((v6 & 1) == 0)
      {
        v7 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
        [v7 trackingCoordinatorFrame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        if (*(a1 + 41))
        {
          v16 = [*(a1 + 32) currentTransition];
          v17 = [v16 animationStyle];
        }

        else
        {
          v17 = +[UIInputViewAnimationStyle animationStyleImmediate];
        }

        v18 = [*(a1 + 32) placement];
        v19 = [v18 keyboardState];

        v20 = [*(a1 + 32) infoForAnimationStyle:v17];
        if (v3)
        {
          v21 = [v3 userInfo];
          [v20 setNotificationInfo:v21];
        }

        v22 = _UIInputWindowControllerLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v29.origin.x = v9;
          v29.origin.y = v11;
          v29.size.width = v13;
          v29.size.height = v15;
          v25 = NSStringFromCGRect(v29);
          v26 = 138412290;
          v27 = v25;
          _os_log_debug_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEBUG, "Tracking provider: viewDidLayoutSubviews update to %@", &v26, 0xCu);
        }

        v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v24 = [v23 keyboardTrackingProvider];
        [v24 keyboardWillChangeState:v19 endFrame:v20 animationInfo:{v9, v11, v13, v15}];
      }
    }
  }
}

uint64_t __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_517(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  [*(*(a1 + 32) + 1264) populateEndInfoWithFrame:?];
  v11 = *(*(a1 + 32) + 1264);

  return [v11 addKeyboardNotificationDebuggingInfo:@"viewDidLayoutSubviews _rotationInfo updated"];
}

- (void)checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:(BOOL)a3 layoutSubviews:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UIInputWindowController *)self inputViewSet];
  v8 = [v7 isInputViewPlaceholder];

  if (v8)
  {
    externalTrackingUpdateInProgress = self->_externalTrackingUpdateInProgress;
    v10 = [(UIInputWindowController *)self inputViewSet];
    v11 = [v10 inputView];
    v12 = v11;
    if (externalTrackingUpdateInProgress == 1)
    {
      [v11 invalidateIntrinsicContentSize];
    }

    else
    {
      externalTrackingUpdateInProgress = [v11 refreshPlaceholder];
    }
  }

  else
  {
    externalTrackingUpdateInProgress = 0;
  }

  v13 = [(UIInputWindowController *)self inputViewSet];
  v14 = [v13 isInputAssistantViewPlaceholder];

  if (v14)
  {
    v15 = [(UIInputWindowController *)self inputViewSet];
    v16 = [v15 inputAssistantView];
    externalTrackingUpdateInProgress = externalTrackingUpdateInProgress | [v16 refreshPlaceholder];
  }

  v17 = [(UIInputWindowController *)self inputViewSet];
  v18 = [v17 isInputAccessoryViewPlaceholder];

  if (v18)
  {
    v19 = [(UIInputWindowController *)self inputViewSet];
    v20 = [v19 inputAccessoryView];
    externalTrackingUpdateInProgress = externalTrackingUpdateInProgress | [v20 refreshPlaceholder];

    if ((externalTrackingUpdateInProgress & 1) == 0)
    {
      return;
    }
  }

  else if (!externalTrackingUpdateInProgress)
  {
    return;
  }

  if (v5 || v4 || ([(UIInputWindowController *)self postRotationPlacement], (externalTrackingUpdateInProgress = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = [(UIInputWindowController *)self inputViewSet];
    if ([v21 isInputViewPlaceholder])
    {
      v22 = self->_externalTrackingUpdateInProgress;

      if (!v5 && !v4)
      {
      }

      if (!v22)
      {
        [(UIInputWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
      }
    }

    else
    {

      if (!v5 && !v4)
      {
      }
    }
  }

  if (v5)
  {
    [(UIInputWindowController *)self updateHostingConstraints];
  }

  v23 = [(UIViewController *)self view];
  v24 = v23;
  if (v4)
  {
    [v23 layoutIfNeeded];
  }

  else
  {
    [v23 setNeedsLayout];
  }
}

- (void)setDisableUpdateMaskForSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = [v6 BOOLForPreferenceKey:@"ShowPasswordKeyboardInVideo"];

  if ((v7 & 1) == 0)
  {
    v14 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:100];
    v8 = [v14 hostView];
    v9 = v8;
    if (v8)
    {
      passcodeObscuringInteraction = self->_passcodeObscuringInteraction;
      if (v3)
      {
        if (!passcodeObscuringInteraction)
        {
          v11 = objc_alloc_init(_UIKeyboardPasscodeObscuringInteraction);
          v12 = self->_passcodeObscuringInteraction;
          self->_passcodeObscuringInteraction = v11;

          passcodeObscuringInteraction = self->_passcodeObscuringInteraction;
        }

        [v9 addInteraction:passcodeObscuringInteraction];
      }

      else if (passcodeObscuringInteraction)
      {
        [v8 removeInteraction:?];
        v13 = self->_passcodeObscuringInteraction;
        self->_passcodeObscuringInteraction = 0;
      }
    }
  }
}

- (void)updateForKeyplaneChangeWithContext:(id)a3
{
  v4 = a3;
  if (!self->_isChangingInputViews)
  {
    v22 = v4;
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 transientInputViews];
    v7 = [v6 isEmpty];

    v4 = v22;
    if ((v7 & 1) == 0)
    {
      if ([v22 updateAssistantView])
      {
        v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v9 = [v8 hardwareKeyboardExclusivityIdentifier];

        if (v9)
        {
          v10 = [v8 systemInputAssistantViewController];
          v11 = [(UIInputWindowController *)self inputViewSet];
          v12 = [v10 shouldBeShownForInputDelegate:0 inputViews:v11];

          v13 = [(UIInputWindowController *)self placement];
          objc_opt_class();
          LODWORD(v11) = objc_opt_isKindOfClass() & 1;

          if (v12 != v11)
          {
            v14 = [(UIInputWindowController *)self inputViewSet];
            v15 = [(UIViewController *)self _window];
            v16 = [v15 windowScene];
            v17 = [UIPeripheralHost endPlacementForInputViewSet:v14 windowScene:v16];

            v18 = [(UIInputWindowController *)self placement];
            LOBYTE(v15) = [v18 isEqual:v17];

            if ((v15 & 1) == 0)
            {
              [(UIInputWindowController *)self setPlacement:v17];
            }
          }
        }

        [(UIInputWindowControllerHosting *)self->_hosting clearInputViewEdgeConstraints];
        [(UIInputWindowController *)self updateKeyboardSizeClass];
        self->_trackingElementsNeedUpdate = 1;
        if (([v22 selfSizingChanged] & 1) == 0 && objc_msgSend(v22, "sizeDidChange"))
        {
          self->_suppressUpdateViewConstraints = 1;
        }

        [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:0];
        self->_suppressUpdateViewConstraints = 0;
      }

      else if ([v22 sizeDidChange])
      {
        self->_trackingElementsNeedUpdate = 1;
      }

      if ([v22 selfSizingChanged])
      {
        [(UIInputWindowController *)self updateViewSizingConstraints];
      }

      else
      {
        if (([v22 sizeDidChange] & 1) == 0)
        {
          v19 = [v22 updateAssistantView];
          v4 = v22;
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        [(UIInputWindowController *)self resetBackdropHeight];
        [(UIInputWindowController *)self updateHostingConstraints];
        v20 = [v22 splitWidthsChanged];
        v4 = v22;
        if (!v20)
        {
          goto LABEL_22;
        }

        v21 = [(UIInputWindowController *)self inputViewSet];
        [v21 refreshPresentation];

        [(UIInputWindowControllerHosting *)self->_hosting _updateBackdropViews];
      }

      v4 = v22;
    }
  }

LABEL_22:
}

- (void)_collectTransitionTimeStatistics:(unint64_t)a3 withStart:(id)a4
{
  v6 = a4;
  if (v6 && !-[UIInputWindowController shouldNotifyRemoteKeyboards](self, "shouldNotifyRemoteKeyboards") && ([UIApp launchedToTest] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:v6];
    v9 = v8;
    v10 = +[UIKeyboard activeKeyboard];
    v11 = [(UIViewController *)self view];
    if ([v10 isDescendantOfView:v11])
    {

      if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        kdebug_trace();
        v12 = dispatch_get_global_queue(-2, 0);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __70__UIInputWindowController__collectTransitionTimeStatistics_withStart___block_invoke;
        v13[3] = &__block_descriptor_48_e5_v8__0l;
        v13[4] = a3;
        v13[5] = v9;
        dispatch_async(v12, v13);
      }
    }

    else
    {
    }
  }
}

void __70__UIInputWindowController__collectTransitionTimeStatistics_withStart___block_invoke(uint64_t a1)
{
  if (_UIIsPrivateMainBundle())
  {
    v2 = +[UIApplication displayIdentifier];
  }

  else
  {
    v2 = @"thirdpartyapp";
  }

  v3 = *(a1 + 32);
  if (v3 == 3)
  {
    v4 = MEMORY[0x1E69D9B30];
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = MEMORY[0x1E69D9B38];
  }

  v7 = v2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *v4, v2];
  v6 = TIStatisticGetKey();
  TIStatisticDistributionPushValue();

  v2 = v7;
LABEL_9:
}

- (void)pushAnimationStyle:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_animationStyleStack addObject:?];
  }
}

- (void)performOperations:(id)a3 withAnimationStyle:(id)a4
{
  if (a3)
  {
    v6 = a3;
    [(UIInputWindowController *)self pushAnimationStyle:a4];
    v6[2](v6);

    [(UIInputWindowController *)self popAnimationStyle];
  }
}

- (BOOL)mergeTransitionIfNecessaryWithTransition:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIInputWindowController *)self currentTransition];
  v6 = v5;
  if (!v5 || ([v5 cancelled] & 1) != 0)
  {
    goto LABEL_15;
  }

  v7 = [v6 toPlacement];
  v8 = [v4 toPlacement];
  if (([v7 isEqual:v8] & 1) == 0)
  {

LABEL_7:
    v13 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Merging transitions: %@ into %@", &v29, 0x16u);
    }

    [v6 setCancelled:1];
    v14 = [v6 animationStyle];
    [v14 cancelInterruptibleAnimations];

    v15 = [v6 notifications];
    v16 = [v6 notificationInfo];
    [(UIInputWindowController *)self postEndNotifications:v15 withInfo:v16];

    v17 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
    [v17 enumerateObjectsUsingBlock:&__block_literal_global_532_0];

    if ([v6 animationState] > 2)
    {
      goto LABEL_15;
    }

    [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
    v18 = [v6 fromPlacement];
    [v4 setFromPlacement:v18];

    v19 = [v4 fromPlacement];
    v20 = [v19 showsInputViews];
    v21 = [v4 toPlacement];
    if (v20 == [v21 showsInputViews])
    {
      v22 = [v4 fromPlacement];
      v23 = [v22 showsKeyboard];
      v24 = [v4 toPlacement];
      if (v23 == [v24 showsKeyboard])
      {
        v26 = [v4 animationStyle];
        v27 = [v26 dontMerge];

        if (v27)
        {
          goto LABEL_15;
        }

        v28 = [v4 animationStyle];
        v19 = [v28 copy];

        [v19 setAnimated:0];
        [v4 setAnimationStyle:v19];
LABEL_14:

LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v9 = [v6 animationStyle];
  v10 = [v4 animationStyle];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = 1;
LABEL_16:

  return v12;
}

- (void)addPendingActivity:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_pendingTransitionActivity);
  v6 = v5;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__UIInputWindowController_addPendingActivity___block_invoke;
    v11[3] = &unk_1E70F77D0;
    v12 = v5;
    v13 = v4;
    v7 = [v11 copy];
    pendingTransitionActivity = self->_pendingTransitionActivity;
    self->_pendingTransitionActivity = v7;

    v9 = v12;
  }

  else
  {
    v10 = [v4 copy];
    v9 = self->_pendingTransitionActivity;
    self->_pendingTransitionActivity = v10;
  }
}

uint64_t __46__UIInputWindowController_addPendingActivity___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (int64_t)visualStateFromPlacement:(id)a3
{
  v3 = a3;
  if ([v3 isCompactAssistantView])
  {
    v4 = 6;
  }

  else if ([v3 isFloating])
  {
    v4 = 3;
  }

  else if ([v3 isFloatingAssistantView])
  {
    v4 = 5;
  }

  else if ([v3 isUndocked])
  {
    v4 = 4;
  }

  else if ([v3 showsKeyboard])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)animateKeyboardTrackingElementsWithNotificationInfo:(id)a3 notificationType:(unint64_t)a4 updateForStart:(BOOL)a5 updateForEnd:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v66 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"for start";
    if (v6)
    {
      v12 = @"using keyboard animation";
    }

    if (!v7)
    {
      v12 = @"for end";
    }

    *buf = 138412546;
    v63 = v12;
    v64 = 2112;
    v65 = v10;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Updating keyboard tracking elements %@ with notificationInfo:\n%@", buf, 0x16u);
  }

  v13 = [(UIViewController *)self _window];
  v14 = [v13 _isRemoteKeyboardWindow];

  if ((v14 & 1) == 0)
  {
    v15 = [(UIInputWindowController *)self currentTransition];
    [v15 setCancelled:1];

    v16 = [(UIInputWindowController *)self currentTransition];
    v17 = [v16 animationStyle];
    [v17 cancelInterruptibleAnimations];

    [(UIInputWindowController *)self setCurrentTransition:0];
    [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
  }

  self->_externalTrackingUpdateInProgress = 1;
  [v10 duration];
  if (v18 <= 0.0)
  {
    +[UIInputViewAnimationStyle animationStyleImmediate];
  }

  else
  {
    [v10 duration];
    [UIInputViewAnimationStyle animationStyleAnimated:1 duration:?];
  }
  v19 = ;
  [v10 setNonKeyboardOverride:1];
  [v10 endFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(UIInputWindowController *)self inputViewSet];
  v29 = [v28 inputAccessoryView];
  if (v29)
  {
    v30 = v29;
    [(UIInputWindowController *)self inputViewSet];
    v32 = v31 = v6;
    v33 = [v32 isInputViewPlaceholder];

    v6 = v31;
    if (v33)
    {
      v34 = +[UIInputViewSetNotificationInfo info];
      externalTrackingInfo = self->_externalTrackingInfo;
      self->_externalTrackingInfo = v34;

      v36 = self->_externalTrackingInfo;
      [v10 endFrame];
      [(UIInputViewSetNotificationInfo *)v36 populateEndInfoWithFrame:?];
      v37 = 1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v27 == 0.0)
  {
    v38 = self->_externalTrackingInfo;
    self->_externalTrackingInfo = 0;
  }

  v37 = 0;
LABEL_19:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke;
  aBlock[3] = &unk_1E7116280;
  aBlock[4] = self;
  v56 = v21;
  v57 = v23;
  v58 = v25;
  v59 = v27;
  v61 = v37;
  v39 = v10;
  v54 = v39;
  v40 = v19;
  v55 = v40;
  v60 = a4;
  v41 = _Block_copy(aBlock);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_3;
  v45[3] = &unk_1E71164C8;
  v47 = v21;
  v48 = v23;
  v49 = v25;
  v50 = v27;
  v45[4] = self;
  v46 = v39;
  v52 = v7;
  v51 = a4;
  v42 = v39;
  v43 = _Block_copy(v45);
  if (v7 && v6)
  {
    [v40 launchAnimation:v41 afterStarted:0 completion:v43 forHost:self fromCurrentPosition:0];
  }

  else
  {
    if (v7)
    {
      v41[2](v41);
    }

    if (v6)
    {
      v43[2](v43, 1);
    }

    else
    {
      *(&self->super.super.super.super.super.isa + v44) = 0;
    }
  }
}

void __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_2;
  v6[3] = &unk_1E7116280;
  v3 = *(a1 + 72);
  v9 = *(a1 + 56);
  v10 = v3;
  v12 = *(a1 + 96);
  v6[4] = v2;
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v8 = v4;
  v11 = v5;
  [v2 performWithSafeTransitionFrames:v6];
}

uint64_t __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 96))
  {
    v2 = [*(a1 + 32) inputViewSet];
    v3 = [v2 isInputViewPlaceholder];

    if (v3)
    {
      v4 = [*(a1 + 32) inputViewSet];
      v5 = [v4 inputView];
      [v5 setFixedSize:{*(a1 + 72), *(a1 + 80)}];
    }

    v6 = [*(a1 + 32) _window];
    v7 = [*(a1 + 32) inputViewSet];
    v8 = [v7 inputAccessoryView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) inputViewSet];
    v18 = [v17 inputAccessoryView];
    v19 = [v18 superview];
    [v6 convertRect:v19 fromView:{v10, v12, v14, v16}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v21, v23, v25, v27}];
    v42.origin.x = v28;
    v42.origin.y = v29;
    v42.size.width = v30;
    v42.size.height = v31;
    v41 = CGRectUnion(*(a1 + 56), v42);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    [*(a1 + 40) populateEndInfoWithFrame:?];
  }

  else
  {
    width = *(a1 + 72);
    height = *(a1 + 80);
    x = *(a1 + 56);
    y = *(a1 + 64);
  }

  [*(a1 + 32) updateKeyboardLayoutGuideWithFrame:objc_msgSend(*(a1 + 48) layoutViews:{"animated"), x, y, width, height}];
  v36 = *(a1 + 88);
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);

  return [v37 postStartNotifications:v36 withInfo:v38];
}

void __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_4;
  v6[3] = &unk_1E7103308;
  v3 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v3;
  v6[4] = v2;
  v4 = *(a1 + 40);
  v11 = *(a1 + 88);
  v5 = *(a1 + 80);
  v7 = v4;
  v10 = v5;
  [v2 performWithSafeTransitionFrames:v6];
  *(*(a1 + 32) + 1435) = 0;
}

uint64_t __124__UIInputWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_4(uint64_t a1)
{
  x = *(a1 + 48);
  y = *(a1 + 56);
  width = *(a1 + 64);
  height = *(a1 + 72);
  v6 = [*(a1 + 32) inputViewSet];
  v7 = [v6 inputAccessoryView];

  if (v7)
  {
    v8 = [*(a1 + 32) inputViewSet];
    v9 = [v8 isInputViewPlaceholder];

    if (v9)
    {
      v10 = [*(a1 + 32) inputViewSet];
      v11 = [v10 inputView];
      [v11 setFixedSize:{*(a1 + 64), *(a1 + 72)}];
    }

    v12 = [*(a1 + 32) _window];
    v13 = [*(a1 + 32) inputViewSet];
    v14 = [v13 inputAccessoryView];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [*(a1 + 32) inputViewSet];
    v24 = [v23 inputAccessoryView];
    v25 = [v24 superview];
    [v12 convertRect:v25 fromView:{v16, v18, v20, v22}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v27, v29, v31, v33}];
    v44.origin.x = v34;
    v44.origin.y = v35;
    v44.size.width = v36;
    v44.size.height = v37;
    v43 = CGRectUnion(*(a1 + 48), v44);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    [*(a1 + 40) populateEndInfoWithFrame:?];
  }

  [*(a1 + 32) updateKeyboardLayoutGuideWithFrame:*(a1 + 88) layoutViews:{x, y, width, height}];
  v38 = *(a1 + 80);
  v39 = *(a1 + 32);
  v40 = *(a1 + 40);

  return [v39 postEndNotifications:v38 withInfo:v40];
}

- (void)clearExternalTrackingInfo
{
  externalTrackingInfo = self->_externalTrackingInfo;
  self->_externalTrackingInfo = 0;
}

- (CGSize)keyboardSizeFromExternalUpdate
{
  externalTrackingInfo = self->_externalTrackingInfo;
  if (externalTrackingInfo)
  {
    [(UIInputViewSetNotificationInfo *)externalTrackingInfo endFrame];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (void)updateSizingFromRemoteChange
{
  v51 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      placement = self->_placement;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = placement;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Updating sizing for existing placement %@", &buf, 0xCu);
    }

    v5 = [(UIInputWindowController *)self currentTransition];
    v6 = [v5 animationStyle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(UIInputWindowController *)self nextAnimationStyle];
    }

    v9 = v8;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__131;
    v49 = __Block_byref_object_dispose__131;
    v10 = [(UIInputWindowController *)self placement];
    v50 = [UIInputViewPlacementTransition transitionForExistingPlacement:v10 animationStyle:v9];

    v11 = [(UIInputWindowController *)self currentTransition];
    v12 = v11;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__131;
    v44 = __Block_byref_object_dispose__131;
    v45 = 0;
    if (v11 && ([v11 cancelled] & 1) == 0)
    {
      v13 = [(UIInputWindowController *)self currentTransition];
      v14 = [v13 notificationInfo];
      v15 = v41[5];
      v41[5] = v14;

      v16 = [v12 fromPlacement];
      [*(*(&buf + 1) + 40) setFromPlacement:v16];

      [v12 setCancelled:1];
      v17 = [v12 animationStyle];
      [v17 cancelInterruptibleAnimations];

      [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
    }

    v18 = v41[5];
    if (!v18)
    {
      v19 = [(UIInputWindowController *)self notificationInfoWaitingForInputUI];

      if (v19)
      {
        v20 = [(UIInputWindowController *)self notificationInfoWaitingForInputUI];
        v21 = v41[5];
        v41[5] = v20;

        [(UIInputWindowController *)self setNotificationInfoWaitingForInputUI:0];
      }

      else
      {
        v22 = [(UIInputWindowController *)self initialNotificationInfo];
        v23 = v41[5];
        v41[5] = v22;

        v24 = v41[5];
        v25 = [*(*(&buf + 1) + 40) animationStyle];
        [v24 populateWithAnimationStyle:v25];
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke;
      v39[3] = &unk_1E70FE3F8;
      v39[4] = self;
      v39[5] = &v40;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v39];
      v18 = v41[5];
    }

    [*(*(&buf + 1) + 40) setNotificationInfo:v18];
    v26 = [*(*(&buf + 1) + 40) animationStyle];
    [v26 setExtraOptions:{objc_msgSend(v26, "extraOptions") & 0xFFFFFFFFFFFFFFFDLL}];

    [(UIInputWindowController *)self setCurrentTransition:*(*(&buf + 1) + 40)];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 2;
    [*(*(&buf + 1) + 40) didAdvanceAnimationToState:1];
    v27 = [*(*(&buf + 1) + 40) notificationInfo];
    [v27 setWaitingForInputUI:0];

    v28 = [*(*(&buf + 1) + 40) notificationInfo];
    v29 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v30 = [v29 currentUIState];
    [v28 setWasCausedRemotely:{objc_msgSend(v28, "wasCausedRemotely") | objc_msgSend(v30, "isLocal") ^ 1}];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_2;
    aBlock[3] = &unk_1E71053E8;
    aBlock[4] = self;
    aBlock[5] = &buf;
    aBlock[6] = v38;
    v31 = _Block_copy(aBlock);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_6;
    v36[3] = &unk_1E70F2F20;
    v36[4] = &buf;
    v32 = _Block_copy(v36);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_7;
    v35[3] = &unk_1E7116518;
    v35[4] = self;
    v35[5] = &buf;
    v35[6] = v38;
    v33 = _Block_copy(v35);
    v34 = [*(*(&buf + 1) + 40) animationStyle];
    [v34 launchAnimation:v31 afterStarted:v32 completion:v33 forHost:self fromCurrentPosition:0];

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v40, 8);

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  v11 = *(*(*(a1 + 40) + 8) + 40);

  return [v11 populateStartInfoWithFrame:?];
}

void __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_2(void *a1)
{
  if ([*(*(a1[5] + 8) + 40) didAdvanceAnimationToState:2])
  {
    v2 = a1[4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_3;
    v9[3] = &unk_1E70F3590;
    v9[4] = v2;
    [v2 performWithoutCallbacksOrNotifications:v9];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_4;
    v6[3] = &unk_1E71164F0;
    v7 = *(a1 + 2);
    v8 = a1[6];
    [v7 performWithSafeTransitionFrames:v6];
    v3 = *(*(a1[6] + 8) + 24);
    v4 = a1[4];
    v5 = [*(*(a1[5] + 8) + 40) notificationInfo];
    [v4 postStartNotifications:v3 withInfo:v5];
  }
}

void __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(*(*(a1 + 40) + 8) + 40) notificationInfo];
  [v19 populateEndInfoWithFrame:{v12, v14, v16, v18}];

  v20 = [*(*(*(a1 + 40) + 8) + 40) notificationInfo];
  v21 = MEMORY[0x1E696AEC0];
  v28.origin.x = v12;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v18;
  v22 = NSStringFromCGRect(v28);
  v23 = [v21 stringWithFormat:@"updatePlaceholders to %@", v22];
  [v20 addKeyboardNotificationDebuggingInfo:v23];

  if (v18 == 0.0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 3;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_5;
  aBlock[3] = &unk_1E71164F0;
  aBlock[4] = *(a1 + 32);
  v27 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v24 = _Block_copy(aBlock);
  v25 = [*(*(*(a1 + 40) + 8) + 40) animationStyle];
  [v25 addAnimationToCurrentAnimations:v24];
}

void __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_5(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 24);
  v3 = [*(*(a1[6] + 8) + 40) notificationInfo];
  [v1 keyboardMoveOfType:v2 info:v3];
}

uint64_t __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTransition];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setCurrentTransition:0];
  }

  *(*(a1 + 32) + 1016) = 0;
  [*(*(*(a1 + 40) + 8) + 40) didAdvanceAnimationToState:4];
  if (v2 == v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(*(*(a1 + 40) + 8) + 40) toPlacement];
    [v4 updateAppearStatesForPlacement:v5 start:0 animated:1];

    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [*(a1 + 32) view];
    v8 = [v7 _window];
    [v6 completeMoveKeyboardForWindow:v8];
  }

  v9 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_8;
  v14[3] = &unk_1E71164F0;
  v14[4] = v9;
  v15 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v9 performWithSafeTransitionFrames:v14];
  v10 = [*(*(*(a1 + 40) + 8) + 40) animationController];
  v11 = *(a1 + 32);
  v12 = [*(*(*(a1 + 40) + 8) + 40) animationContext];
  [v10 completeAnimationWithHost:v11 context:v12];

  return [*(*(*(a1 + 40) + 8) + 40) setAnimationContext:0];
}

void __55__UIInputWindowController_updateSizingFromRemoteChange__block_invoke_8(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 24);
  v3 = [*(*(a1[6] + 8) + 40) notificationInfo];
  [v1 postEndNotifications:v2 withInfo:v3];
}

- (void)moveFromPlacement:(id)a3 toPlacement:(id)a4 starting:(id)a5 completion:(id)a6
{
  v186 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v136 = a5;
  v134 = a6;
  v12 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    placement = self->_placement;
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v183 = placement;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Moving from placement: %@ to placement: %@ (currentPlacement: %@)", buf, 0x20u);
  }

  kdebug_trace();
  v14 = kac_get_log();
  v15 = os_signpost_id_make_with_pointer(v14, self);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "animationPreparing", "", buf, 2u);
    }
  }

  if (self->_disablePlacementChanges)
  {
    if ([v11 showsKeyboard])
    {
      v17 = [(UIInputWindowController *)self inputViewSet];
      v18 = [v17 inputAccessoryView];
      v19 = off_1E70E9B28;
      if (v18)
      {
        v19 = off_1E70E9AF8;
      }

      v20 = [(__objc2_class *)*v19 placement];
    }

    else
    {
      v20 = v11;
    }

    v22 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(UIInputWindowController *)self inputViewSet];
      v24 = [v23 inputAccessoryView];
      *buf = 67109378;
      *&buf[4] = v24 != 0;
      *&buf[8] = 2112;
      *&buf[10] = v20;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "_disablePlacementChanges = YES, (iav: %d) new placement: %@", buf, 0x12u);
    }

    v21 = v20;
  }

  else
  {
    v21 = v11;
  }

  v137 = v21;
  if (([v21 showsInputOrAssistantViews] & 1) == 0 && (objc_msgSend(v137, "showsKeyboard") & 1) == 0)
  {
    v25 = +[UIKeyboardImpl activeInstance];
    v26 = [v25 isMinimized];

    if (!v26)
    {
      goto LABEL_26;
    }

    v27 = [(UIInputWindowController *)self transientInputViewSet];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [(UIInputWindowController *)self inputViewSet];
    }

    v30 = [v29 inputView];
    if (v30)
    {
    }

    else
    {
      v31 = [v29 inputAssistantView];
      v32 = v31 == 0;

      if (v32)
      {
        goto LABEL_26;
      }
    }
  }

  self->_externalTrackingUpdateInProgress = 0;
  externalTrackingInfo = self->_externalTrackingInfo;
  self->_externalTrackingInfo = 0;

LABEL_26:
  v135 = [(UIInputWindowController *)self nextAnimationStyle];
  v34 = [UIInputViewPlacementTransition transitionFromPlacement:v10 toPlacement:v137 withAnimationStyle:v135];
  if ([(UIInputWindowController *)self mergeTransitionIfNecessaryWithTransition:v34])
  {
    if (v136)
    {
      [(UIInputWindowController *)self addPendingActivity:v136];
    }

    if (v134)
    {
      [(UIInputWindowController *)self addPendingActivity:?];
    }

    goto LABEL_113;
  }

  [(UIInputWindowController *)self flushPendingActivities];
  v35 = v10;
  v36 = [(UIInputWindowController *)self currentTransition];
  v130 = v35;
  if (v36)
  {
    if ([(UIInputWindowController *)self isRotating])
    {
      v37 = [(UIInputWindowController *)self currentTransition];
      v38 = [v37 cancelled];

      v130 = v35;
      if (v38)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    v130 = [v34 fromPlacement];
  }

LABEL_37:
  v39 = [v34 fromPlacement];

  v40 = [v39 isEqual:v137];
  v41 = [v34 animationStyle];
  v42 = [v41 extraOptions] & 0xFFFFFFFFFFFFFFFDLL;
  v43 = 2;
  if (!v40)
  {
    v43 = 0;
  }

  [v41 setExtraOptions:v42 | v43];

  [(UIInputWindowController *)self setCurrentTransition:v34];
  if (v136)
  {
    v136[2]();
  }

  if ([v39 isEqual:v137])
  {
    v44 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v34 setAnimationStyle:v44];
  }

  v45 = [(UIInputWindowController *)self initialNotificationInfo];
  [v34 setNotificationInfo:v45];

  v46 = [v34 notificationInfo];
  v47 = [v34 animationStyle];
  [v46 populateWithAnimationStyle:v47];

  [v34 setNotifications:{objc_msgSend(v130, "notificationsForTransitionToPlacement:", v137)}];
  if ([v34 notifications])
  {
    if ([v34 notifications] != 1)
    {
      v48 = [v34 notificationInfo];
      [v48 setForceNotification:1];
    }
  }

  else
  {
    v49 = [v34 notificationInfo];
    v50 = [v49 forceNotification];

    if (v50)
    {
      if ([v137 showsInputViews])
      {
        v51 = 2;
      }

      else if ([v137 inputViewWillAppear])
      {
        v51 = 1;
      }

      else
      {
        v51 = 3;
      }

      [v34 setNotifications:v51];
    }
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    if ([v137 accessoryViewWillAppear])
    {
      v52 = [v137 inputViewWillAppear] ^ 1;
    }

    else
    {
      LOBYTE(v52) = 0;
    }

    if ([v39 accessoryViewWillAppear] && (objc_msgSend(v39, "inputViewWillAppear") & 1) == 0)
    {
      LOBYTE(v52) = [v137 accessoryViewWillAppear] ^ 1 | v52;
    }

    v53 = [v34 notificationInfo];
    [v53 setShouldSendInClient:v52 & 1];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v183 = "";
  v184 = 0u;
  v185 = 0u;
  v177[0] = MEMORY[0x1E69E9820];
  v177[1] = 3221225472;
  v177[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke;
  v177[3] = &unk_1E70FCDA0;
  v177[5] = buf;
  v177[4] = self;
  [(UIInputWindowController *)self performWithSafeTransitionFrames:v177];
  [v34 didAdvanceAnimationToState:1];
  [(UIInputWindowController *)self updateAppearStatesForPlacement:v137 start:1 animated:1];
  if (([v39 isEqual:self->_placement] & 1) == 0)
  {
    v54 = [(UIViewController *)self view];
    [v54 frame];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = [(UIViewController *)self view];
    v64 = [v63 window];
    [v64 bounds];
    v188.origin.x = v65;
    v188.origin.y = v66;
    v188.size.width = v67;
    v188.size.height = v68;
    v187.origin.x = v56;
    v187.origin.y = v58;
    v187.size.width = v60;
    v187.size.height = v62;
    if (CGRectEqualToRect(v187, v188))
    {
    }

    else
    {
      v69 = [v39 requiresWindowBasedSafeAreaInsets];
      v70 = [v137 requiresWindowBasedSafeAreaInsets];

      if (v69 != v70)
      {
        [(UIViewController *)self _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      }
    }
  }

  v71 = [v34 animationStyle];
  v72 = [v71 controllerForStartPlacement:v39 endPlacement:v137];
  [v34 setAnimationController:v72];

  v173[0] = MEMORY[0x1E69E9820];
  v173[1] = 3221225472;
  v173[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2;
  v173[3] = &unk_1E70FF0C8;
  v173[4] = self;
  v131 = v34;
  v174 = v131;
  v176 = buf;
  v73 = v137;
  v175 = v73;
  [(UIInputWindowController *)self performWithSafeTransitionFrames:v173];
  if (([v39 isInteractive] & 1) == 0)
  {
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3;
    v168[3] = &unk_1E70F6B40;
    v169 = v131;
    v170 = self;
    v171 = v39;
    v172 = v73;
    [(UIInputWindowController *)self ignoreLayoutNotifications:v168];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v74 = [v131 notificationInfo];
    v75 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v76 = [v75 currentUIState];
    [v74 setWasCausedRemotely:{objc_msgSend(v74, "wasCausedRemotely") | objc_msgSend(v76, "isLocal") ^ 1}];
  }

  else
  {
    v74 = [v131 notificationInfo];
    v75 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v74 setWasCausedRemotely:{objc_msgSend(v75, "handlingRemoteEvent") | objc_msgSend(v74, "wasCausedRemotely")}];
  }

  v77 = [v131 animationStyle];
  if (([v77 animated] & 1) == 0)
  {

    goto LABEL_75;
  }

  v78 = +[UIViewPropertyAnimator _trackedAnimationsStartPaused];

  if (!v78)
  {
LABEL_75:
    v125 = 0;
    goto LABEL_76;
  }

  [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:0];
  v125 = 1;
LABEL_76:
  v79 = [v39 assistantView];
  v80 = v79;
  if (v79)
  {
    v81 = v79;
  }

  else
  {
    v81 = v39;
  }

  v133 = v81;

  v82 = [v73 assistantView];
  v83 = v82;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = v73;
  }

  v85 = v84;

  if (![v133 isEqual:v39] || (objc_msgSend(v85, "isEqual:", v73) & 1) == 0)
  {
    v86 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *v178 = 138412546;
      v179 = v133;
      v180 = 2112;
      v181 = v85;
      _os_log_impl(&dword_188A29000, v86, OS_LOG_TYPE_DEFAULT, "moveFromPlacement, updated placements from: %@, to: %@", v178, 0x16u);
    }
  }

  if (([v133 isFloatingAssistantView] & 1) != 0 || objc_msgSend(v85, "isFloatingAssistantView"))
  {
    v87 = [v133 isCompactAssistantView];
    v124 = v87 ^ [v85 isCompactAssistantView];
  }

  else
  {
    v124 = 0;
  }

  v126 = [(UIInputWindowController *)self visualStateFromPlacement:v39];
  v129 = [(UIInputWindowController *)self visualStateFromPlacement:v73];
  v128 = [(UIInputWindowController *)self animationTypeForCurrentTransition];
  if (![objc_opt_class() supportsStateBasedAnimations] || (objc_msgSend(v39, "isInteractive") & 1) != 0 || (objc_msgSend(v73, "isInteractive") & 1) != 0 || ((v88 = -[UIInputWindowController isTransitioningBetweenFloatingStates](self, "isTransitioningBetweenFloatingStates"), v126 == v129) ? (v89 = 1) : (v89 = v88), (v89 & 1) != 0 || (objc_msgSend(v135, "duration"), v90 <= 0.0)))
  {
    v127 = 0;
    v123 = 0;
  }

  else
  {
    v91 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
    [v91 prepareForTransitionToState:v129 animationType:v128 interactiveTransition:0];

    v127 = 1;
    v123 = 1;
  }

  v92 = [(UIInputWindowController *)self postRotationPlacement];
  if (v92 || [v85 isFloatingAssistantView] && (objc_msgSend(v133, "isFloatingAssistantView") & 1) != 0)
  {
    v93 = 1;
  }

  else if ([v85 showsInputViews])
  {
    v121 = [(UIInputWindowController *)self inputViewSet];
    if ([v121 isEmpty])
    {
      v93 = 1;
    }

    else
    {
      v122 = [(UIInputWindowController *)self inputViewSet];
      v93 = [v122 isInputViewPlaceholder];
    }
  }

  else
  {
    v93 = 0;
  }

  v94 = +[UIKeyboardImpl activeInstance];
  v95 = [v94 delegateAsResponder];
  v96 = [v95 _isWritingToolsActive];

  if (v96 && self->_disablePlacementChanges)
  {
    v97 = +[UIKeyboardImpl activeInstance];
    v98 = [v97 delegateAsResponder];
    v99 = [v98 _isWritingToolsActive];

    v93 |= v99;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_551;
  aBlock[3] = &unk_1E7104CD0;
  aBlock[4] = self;
  v100 = v131;
  v160 = v100;
  v101 = v73;
  v161 = v101;
  v102 = v39;
  v166 = v127;
  v162 = v102;
  v163 = v126;
  v164 = v129;
  v165 = v128;
  v167 = v93;
  v103 = _Block_copy(aBlock);
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_558;
  v154[3] = &unk_1E70F43C8;
  v154[4] = self;
  v104 = v100;
  v155 = v104;
  v157 = v124;
  v132 = v85;
  v156 = v132;
  v158 = v125;
  v105 = _Block_copy(v154);
  v106 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v107 = [v106 _transitionStartTime];

  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_559;
  v144[3] = &unk_1E7116540;
  v144[4] = self;
  v108 = v104;
  v145 = v108;
  v109 = v101;
  v146 = v109;
  v110 = v107;
  v147 = v110;
  v10 = v102;
  v148 = v10;
  v152 = v127;
  v149 = v134;
  v150 = v129;
  v151 = v128;
  v153 = v93;
  v111 = _Block_copy(v144);
  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_580;
  v138[3] = &unk_1E7116568;
  v112 = v108;
  v139 = v112;
  v113 = v103;
  v141 = v113;
  v114 = v105;
  v142 = v114;
  v115 = v111;
  v143 = v115;
  v140 = self;
  v116 = _Block_copy(v138);
  v117 = v116;
  if (v123)
  {
    (*(v116 + 2))(v116);
  }

  else
  {
    [(UIInputWindowController *)self chainPlacementsIfNecessaryFrom:v10 toPlacement:v109 transition:v112 completion:v116];
  }

  kdebug_trace();
  v118 = kac_get_log();
  v119 = os_signpost_id_make_with_pointer(v118, self);
  if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v120 = v119;
    if (os_signpost_enabled(v118))
    {
      *v178 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v118, OS_SIGNPOST_INTERVAL_END, v120, "animationPreparing", "", v178, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_113:
}

uint64_t __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;

  result = [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  v9 = *(*(a1 + 40) + 8);
  v9[4] = v10;
  v9[5] = v11;
  v9[6] = v12;
  v9[7] = v13;
  return result;
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 40) notificationInfo];
  [v19 populateStartInfoWithFrame:{v12, v14, v16, v18}];

  v20 = [*(a1 + 40) notificationInfo];
  v23 = *(*(*(a1 + 56) + 8) + 32);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  [v20 setForceNotification:{objc_msgSend(v20, "forceNotification") | !CGRectEqualToRect(v23, v24)}];

  v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v21 isWaitingForInputUI] && objc_msgSend(*(a1 + 48), "showsKeyboard"))
  {

    if (v18 != 0.0)
    {
      return;
    }

    v21 = [*(a1 + 40) notificationInfo];
    [v21 setWaitingForInputUI:1];
  }
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) animationController];
  v2 = [v3 prepareAnimationWithHost:*(a1 + 40) startPlacement:*(a1 + 48) endPlacement:*(a1 + 56)];
  [*(a1 + 32) setAnimationContext:v2];
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_551(uint64_t a1)
{
  kdebug_trace();
  v3 = kac_get_log();
  v4 = os_signpost_id_make_with_pointer(v3, (*(a1 + 40) ^ *(a1 + 32)));
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "animationAnimating", "", buf, 2u);
    }
  }

  if ([*(a1 + 40) didAdvanceAnimationToState:2])
  {
    if ([*(a1 + 48) showsKeyboard] && (objc_msgSend(*(a1 + 32), "dontDismissReachability") & 1) == 0)
    {
      [UIApp _deactivateReachability];
    }

    v6 = 1056;
    v7 = [*(*(a1 + 32) + 1056) itemForPurpose:2];
    [v7 prepareTranslationFromPlacement:*(a1 + 56) to:*(a1 + 48)];

    [*(a1 + 32) _updatePlacementWithPlacement:*(a1 + 48)];
    [*(a1 + 32) updateVisibilityConstraintsForPlacement:*(a1 + 48)];
    v8 = [*(a1 + 40) animationController];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) animationContext];
    [v8 performAnimationWithHost:v9 context:v10];

    *buf = 0;
    v51 = buf;
    v52 = 0x4010000000;
    v53 = "";
    v11 = *(MEMORY[0x1E695F058] + 16);
    v54 = *MEMORY[0x1E695F058];
    v55 = v11;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_553;
    v46[3] = &unk_1E70F6B90;
    v49 = buf;
    v44 = *(a1 + 32);
    v12 = *(&v44 + 1);
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v47 = v44;
    v48 = v15;
    [v44 performWithSafeTransitionFrames:v46];
    *(*(a1 + 32) + 1016) = 1;
    v16 = [*(*(a1 + 32) + 1056) itemForPurpose:2];
    [v16 willBeginTranslationFromPlacement:*(a1 + 56) to:*(a1 + 48)];

    if (*(a1 + 88) == 1)
    {
      v17 = [*(*(a1 + 32) + 1056) itemForPurpose:2];
      v18 = *(a1 + 64);
      v6 = *(a1 + 72);
      v1 = *(a1 + 80);
      v19 = [*(a1 + 40) animationStyle];
      [v19 duration];
      [v17 animatingTransitionFromState:v18 toState:v6 animationType:v1 totalDuration:?];
    }

    if ([objc_opt_class() useMetronomeTracking] && (*(a1 + 89) & 1) == 0)
    {
      v20 = [*(a1 + 48) keyboardState];
      v21 = *(v51 + 4);
      v22 = *(v51 + 5);
      v23 = *(v51 + 6);
      v24 = *(v51 + 7);
      v25 = *(a1 + 32);
      v26 = [*(a1 + 40) animationStyle];
      v27 = [v25 infoForAnimationStyle:v26];

      v28 = [*(a1 + 40) notificationInfo];
      v29 = [v28 userInfo];
      [v27 setNotificationInfo:v29];

      if ([v27 animationType] == 4 && objc_msgSend(*(a1 + 56), "showsKeyboard") && (objc_msgSend(*(a1 + 48), "showsKeyboard") & 1) == 0)
      {
        v22 = v22 - *(v51 + 7);
      }

      v30 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v6 = [v30 keyboardTrackingProvider];
      [v6 keyboardWillChangeState:v20 endFrame:v27 animationInfo:{v21, v22, v23, v24}];
    }

    v31 = *(a1 + 32);
    v32 = [*(a1 + 40) notifications];
    v33 = [*(a1 + 40) notificationInfo];
    [v31 postStartNotifications:v32 withInfo:v33];

    v34 = *(a1 + 32);
    v35 = [v34 placement];
    v36 = [v35 showsKeyboard];
    if (v36)
    {
      v6 = [*(a1 + 32) inputViewSet];
      v1 = [v6 keyboard];
      v37 = v1 != 0;
    }

    else
    {
      v37 = 0;
    }

    [v34 registerPowerLogEvent:v37];
    if (v36)
    {
    }

    kdebug_trace();
    v41 = kac_get_log();
    v42 = os_signpost_id_make_with_pointer(v41, (*(a1 + 40) ^ *(a1 + 32)));
    if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v43 = v42;
      if (os_signpost_enabled(v41))
      {
        *v45 = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v41, OS_SIGNPOST_INTERVAL_END, v43, "animationAnimating", "", v45, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    kdebug_trace();
    v38 = kac_get_log();
    v39 = os_signpost_id_make_with_pointer(v38, (*(a1 + 40) ^ *(a1 + 32)));
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v40 = v39;
      if (os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v38, OS_SIGNPOST_INTERVAL_END, v40, "animationAnimating", "", buf, 2u);
      }
    }
  }
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_553(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v11 trackingCoordinatorFrame];
  v12 = *(*(a1 + 64) + 8);
  v12[4] = v13;
  v12[5] = v14;
  v12[6] = v15;
  v12[7] = v16;

  v17 = [*(a1 + 32) _window];

  if (!v17)
  {
    v18 = *(*(a1 + 64) + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    *(v18 + 32) = *MEMORY[0x1E695F058];
    *(v18 + 48) = v19;
  }

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [*(a1 + 40) notificationInfo];
  v29 = [v28 waitingForInputUI];

  if (v29 && v27 > 0.0)
  {
    v30 = [*(a1 + 40) notificationInfo];
    [v30 setWaitingForInputUI:0];
  }

  v31 = [*(a1 + 40) notificationInfo];
  [v31 populateEndInfoWithFrame:{v21, v23, v25, v27}];

  v32 = [*(a1 + 40) notificationInfo];
  v33 = MEMORY[0x1E696AEC0];
  v34 = [*(a1 + 40) fromPlacement];
  v35 = objc_opt_class();
  v36 = [*(a1 + 40) toPlacement];
  v37 = [v33 stringWithFormat:@"moveFromPlacement: %@ toPlacement: %@", v35, objc_opt_class()];
  [v32 addKeyboardNotificationDebuggingInfo:v37];

  if ((([*(a1 + 48) isCompactAssistantView] & 1) == 0 && (objc_msgSend(*(a1 + 48), "isFloating") & 1) == 0 && !objc_msgSend(*(a1 + 56), "isFloating") || objc_msgSend(*(a1 + 40), "notifications") != 1) && (objc_msgSend(*(a1 + 48), "isInteractive") & 1) == 0 && (objc_msgSend(*(a1 + 56), "isUndocked") & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2_557;
    aBlock[3] = &unk_1E70F6B40;
    v38 = *(a1 + 40);
    v39 = *(a1 + 56);
    v45 = *(a1 + 32);
    v40 = *(a1 + 48);
    *&v41 = v45;
    *(&v41 + 1) = v40;
    *&v42 = v38;
    *(&v42 + 1) = v39;
    v47 = v42;
    v48 = v41;
    v43 = _Block_copy(aBlock);
    v44 = [*(a1 + 40) animationStyle];
    [v44 addAnimationToCurrentAnimations:v43];
  }
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2_557(id *a1)
{
  v2 = [a1[4] notifications];
  if (v2 || ([a1[5] isFloatingAssistantView] & 1) != 0)
  {
    if ([a1[7] isUndocked] && !objc_msgSend(a1[5], "showsInputOrAssistantViews"))
    {
      v2 = 3;
    }

    if ([a1[5] isFloatingAssistantView])
    {
      v3 = [a1[6] inputViewSet];
      v4 = [v3 assistantViewController];

      if (v4)
      {
        v5 = [a1[6] inputViewSet];
        [v5 assistantViewController];
      }

      else
      {
        v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        [v5 systemInputAssistantViewController];
      }
      v6 = ;

      [v6 barFrame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [v6 view];
      v16 = [v15 superview];

      v17 = [a1[6] _window];
      v18 = v17;
      if (v16)
      {
        v19 = [v6 view];
        [v18 convertRect:v19 fromView:{v8, v10, v12, v14}];
        v8 = v20;
        v10 = v21;
        v12 = v22;
        v14 = v23;
      }

      else
      {
        v24 = [v17 _isRemoteKeyboardWindow];

        if ((v24 & 1) == 0)
        {
          v25 = [a1[6] _window];
          v26 = [*(a1[6] + 132) itemForPurpose:0];
          v27 = [v26 hostView];
          [v25 convertRect:v27 fromView:{v8, v10, v12, v14}];
          v8 = v28;
          v30 = v29;
          v12 = v31;
          v14 = v32;

          v10 = v30 - *&UIFloatingAssistantBottomMargin;
        }
      }

      v46.origin.x = v8;
      v46.origin.y = v10;
      v46.size.width = v12;
      v46.size.height = v14;
      if (!CGRectIsEmpty(v46))
      {
        [a1[6] convertRectFromContainerCoordinateSpaceToScreenSpace:{v8, v10, v12, v14}];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = a1[6];
        v42 = [a1[4] animationStyle];
        [v41 keyboardMovedToScreenPosition:objc_msgSend(v42 animated:{"animated"), v34, v36, v38, v40}];
      }

      v2 = 0;
    }
  }

  else
  {
    if (([a1[5] showsInputViews] & 1) == 0)
    {
      return;
    }

    v2 = 1;
  }

  v43 = a1[6];
  v44 = [a1[4] notificationInfo];
  [v43 keyboardMoveOfType:v2 info:v44];
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_558(uint64_t a1)
{
  kdebug_trace();
  v2 = kac_get_log();
  v3 = os_signpost_id_make_with_pointer(v2, (*(a1 + 40) ^ *(a1 + 32)));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v4, "animationStarted", "", buf, 2u);
    }
  }

  [*(a1 + 40) didAdvanceAnimationToState:3];
  if (([*(a1 + 32) shouldNotifyRemoteKeyboards] & 1) == 0)
  {
    v5 = [*(a1 + 40) animationStyle];
    if ([v5 animated])
    {
      v6 = [*(a1 + 40) animationStyle];
      [v6 duration];
      v8 = v7;

      if (v8 <= 0.0)
      {
        goto LABEL_9;
      }

      v5 = +[UIPeripheralHost sharedInstance];
      [v5 flushDelayedTasks];
    }
  }

LABEL_9:
  if (*(a1 + 56) == 1)
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) animationStyle];
    [v10 prepareForInputAssistant:v9 animated:{objc_msgSend(v11, "animated")}];

    [*(*(a1 + 32) + 1056) initializeTranslateGestureRecognizerIfNecessary];
  }

  kdebug_trace();
  v12 = kac_get_log();
  v13 = os_signpost_id_make_with_pointer(v12, (*(a1 + 40) ^ *(a1 + 32)));
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v12, OS_SIGNPOST_INTERVAL_END, v14, "animationStarted", "", v15, 2u);
    }
  }

  if (*(a1 + 57) == 1)
  {
    [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:1];
  }
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_559(uint64_t a1, _BOOL4 a2)
{
  v69 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v4 = kac_get_log();
  v5 = os_signpost_id_make_with_pointer(v4, (*(a1 + 40) ^ *(a1 + 32)));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 67109376;
      v66 = a2;
      v67 = 1024;
      v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "animationDone", " finished=%{signpost.description:attribute}d started=%{signpost.description}d", buf, 0xEu);
    }
  }

  [*(a1 + 32) setPlacementDuringAnimation:*(a1 + 48)];
  v7 = [*(a1 + 32) currentTransition];
  v8 = *(a1 + 40);

  if (v7 != v8)
  {
    goto LABEL_23;
  }

  [*(a1 + 32) setCurrentTransition:0];
  if ([*(a1 + 32) shouldNotifyRemoteKeyboards])
  {
    goto LABEL_23;
  }

  v9 = [*(a1 + 40) fromPlacement];
  if (([v9 showsKeyboard] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 1448), "showsKeyboard"))
  {

LABEL_12:
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = *(a1 + 32);
    v14 = *(v13 + 1368);
    *(v13 + 1368) = v12;
LABEL_22:

    goto LABEL_23;
  }

  v10 = [*(a1 + 40) fromPlacement];
  if ([v10 isUndocked])
  {
  }

  else
  {
    v11 = [*(*(a1 + 32) + 1448) isUndocked];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  v14 = [*(a1 + 40) fromPlacement];
  if ([v14 showsKeyboard] && (objc_msgSend(*(*(a1 + 32) + 1448), "showsKeyboard") & 1) == 0)
  {

    goto LABEL_20;
  }

  v15 = [*(a1 + 40) fromPlacement];
  if (([v15 isUndocked] & 1) == 0)
  {

    goto LABEL_22;
  }

  v16 = [*(*(a1 + 32) + 1448) isUndocked];

  if ((v16 & 1) == 0)
  {
LABEL_20:
    if (!*(*(a1 + 32) + 1368))
    {
      goto LABEL_23;
    }

    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:*(*(a1 + 32) + 1368)];
    v19 = v18;

    +[_UIKeyboardUsageTracking keyboardTotalOnScreenTime:orientation:](_UIKeyboardUsageTracking, "keyboardTotalOnScreenTime:orientation:", [*(a1 + 32) keyboardOrientation], v19);
    v20 = *(a1 + 32);
    v14 = *(v20 + 1368);
    *(v20 + 1368) = 0;
    goto LABEL_22;
  }

LABEL_23:
  if ([*(a1 + 40) didAdvanceAnimationToState:4])
  {
    [*(a1 + 32) _collectTransitionTimeStatistics:objc_msgSend(*(a1 + 40) withStart:{"notifications"), *(a1 + 56)}];
    v21 = 1;
  }

  else
  {
    v21 = [*(a1 + 40) didAdvanceAnimationToState:3];
  }

  if (v7 == v8)
  {
    [*(a1 + 32) updateAppearStatesForPlacement:*(a1 + 48) start:0 animated:1];
    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v23 = [*(a1 + 32) view];
    v24 = [v23 _window];
    [v22 completeMoveKeyboardForWindow:v24];

    if (+[UIKeyboard usesInputSystemUI])
    {
      v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v26 = [v25 remoteInputViewHost];

      [v26 updateInputViewsIfNecessary];
    }

    *(*(a1 + 32) + 1016) = 0;
    v27 = [*(*(a1 + 32) + 1056) itemForPurpose:2];
    [v27 didFinishTranslationFromPlacement:*(a1 + 64) to:*(a1 + 48)];

    v28 = *(a1 + 72);
    if (v28)
    {
      (*(v28 + 16))();
    }

    [*(a1 + 32) flushPendingActivities];
  }

  if (*(a1 + 96) == 1)
  {
    v29 = [*(*(a1 + 32) + 1056) itemForPurpose:2];
    [v29 finishedTransitionToState:*(a1 + 80) animationType:*(a1 + 88) interactiveTransition:0];

    v30 = [*(a1 + 32) placement];
    v31 = [v30 subPlacements];
    v32 = [v31 firstObject];

    if ([v32 isFloatingAssistantView])
    {
      v33 = [*(*(a1 + 32) + 1056) itemForPurpose:102];
      [v33 finishedTransitionToState:*(a1 + 80) animationType:*(a1 + 88) & 0xFFFFFFFFFFFFFFF9 interactiveTransition:0];
    }
  }

  if (v21)
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_560;
    v59[3] = &unk_1E70FF800;
    v34 = *(a1 + 32);
    v60 = *(a1 + 40);
    v61 = *(a1 + 64);
    v35 = *(a1 + 48);
    v36 = *(a1 + 32);
    v62 = v35;
    v63 = v36;
    v64 = *(a1 + 97);
    [v34 performWithSafeTransitionFrames:v59];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_576;
  aBlock[3] = &unk_1E70F35B8;
  v37 = *(a1 + 40);
  v38 = *(a1 + 32);
  v57 = v37;
  v58 = v38;
  v39 = _Block_copy(aBlock);
  v40 = v39;
  if (*(*(a1 + 32) + 1376) == 1)
  {
    v41 = _Block_copy(v39);
    v42 = *(a1 + 32);
    v43 = *(v42 + 1384);
    *(v42 + 1384) = v41;

    v44 = dispatch_time(0, 100000000);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2_577;
    v55[3] = &unk_1E70F3590;
    v55[4] = *(a1 + 32);
    dispatch_after(v44, MEMORY[0x1E69E96A0], v55);
  }

  else
  {
    v39[2](v39);
  }

  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && [*(a1 + 48) showsInputViews])
  {
    v45 = +[UIKeyboardImpl activeInstance];
    v46 = [v45 remoteTextInputPartner];
    [v46 forwardKeyboardOperation:sel_clearKeyboardSnapshot object:0];
  }

  if (([*(a1 + 32) shouldNotifyRemoteKeyboards] & 1) == 0)
  {
    v47 = [*(a1 + 40) animationStyle];
    if (![v47 animated])
    {
LABEL_48:

      goto LABEL_49;
    }

    v48 = [*(a1 + 40) animationStyle];
    [v48 duration];
    v50 = v49;

    if (v50 > 0.0)
    {
      v47 = +[UIPeripheralHost sharedInstance];
      [v47 flushDelayedTasks];
      goto LABEL_48;
    }
  }

LABEL_49:
  v51 = +[UIKeyboardImpl sharedInstance];
  [v51 flushDelayedTasks];

  kdebug_trace();
  v52 = kac_get_log();
  v53 = os_signpost_id_make_with_pointer(v52, (*(a1 + 40) ^ *(a1 + 32)));
  if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v54 = v53;
    if (os_signpost_enabled(v52))
    {
      *buf = 67109376;
      v66 = v7 == v8;
      v67 = 1024;
      v68 = v21;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v52, OS_SIGNPOST_INTERVAL_END, v54, "animationDone", " finished=%{signpost.description:attribute}d started=%{signpost.description}d", buf, 0xEu);
    }
  }
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_560(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) notificationInfo];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"moveFromPlacement: %@ toPlacement: %@ [didStart]", v4, objc_opt_class()];
  [v2 addKeyboardNotificationDebuggingInfo:v5];

  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) notifications];
  v8 = [*(a1 + 32) notificationInfo];
  [v6 postEndNotifications:v7 withInfo:v8];

  if ([objc_opt_class() useMetronomeTracking])
  {
    v9 = [*(a1 + 56) postRotationPlacement];
    if (v9)
    {
    }

    else if ((*(a1 + 64) & 1) == 0)
    {
      v10 = [*(a1 + 48) keyboardState];
      v11 = _UIInputWindowControllerLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v66 = v10;
        _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "Tracking provider: moveFromPlacement:toPlacement: complete update to %@", buf, 0xCu);
      }

      v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v13 = [v12 keyboardTrackingProvider];
      [v13 keyboardChangeToStateComplete:v10];
    }
  }

  if (([*(a1 + 48) isUndocked] & 1) != 0 || objc_msgSend(*(a1 + 48), "showsInputViews"))
  {
    v14 = +[UIInputViewSetNotificationInfo info];
    v15 = [*(*(a1 + 56) + 1056) itemForPurpose:1];
    [v15 notificationsFrame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [*(a1 + 56) convertRectFromContainerCoordinateSpaceToScreenSpace:{v17, v19, v21, v23}];
    [v14 populateEndInfoWithFrame:?];
    [v14 endFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [*(a1 + 32) notificationInfo];
    [v32 endFrame];
    v70.origin.x = v33;
    v70.origin.y = v34;
    v70.size.width = v35;
    v70.size.height = v36;
    v68.origin.x = v25;
    v68.origin.y = v27;
    v68.size.width = v29;
    v68.size.height = v31;
    v37 = CGRectEqualToRect(v68, v70);

    if (!v37)
    {
      v38 = MEMORY[0x1E696AEC0];
      if ([*(a1 + 48) isUndocked])
      {
        v39 = @"isUndocked ";
      }

      else
      {
        v39 = &stru_1EFB14550;
      }

      v40 = [*(a1 + 48) showsInputViews];
      v41 = @"showsInputViews";
      if (!v40)
      {
        v41 = &stru_1EFB14550;
      }

      v42 = [v38 stringWithFormat:@"%@%@", v39, v41];
      v43 = MEMORY[0x1E696AEC0];
      v44 = objc_opt_class();
      v45 = [v43 stringWithFormat:@"moveFromPlacement: %@ toPlacement: %@ [%@]", v44, objc_opt_class(), v42];
      [v14 addKeyboardNotificationDebuggingInfo:v45];

      v46 = [*(a1 + 32) notificationInfo];
      [v46 endFrame];
      [v14 populateStartInfoWithFrame:?];

      if (([*(a1 + 40) isInteractive] & 1) == 0)
      {
        [*(a1 + 56) keyboardMoveOfType:2 info:v14];
      }

      [*(a1 + 56) postStartNotifications:1 withInfo:v14];
      [*(a1 + 56) postEndNotifications:1 withInfo:v14];
      if ([objc_opt_class() useMetronomeTracking] && (*(a1 + 64) & 1) == 0)
      {
        v47 = [*(*(a1 + 56) + 1056) itemForPurpose:1];
        [v47 trackingCoordinatorFrame];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v56 = *(a1 + 56);
        v57 = [*(a1 + 32) animationStyle];
        if (v57)
        {
          v58 = [v56 infoForAnimationStyle:v57];
        }

        else
        {
          v59 = +[UIInputViewAnimationStyle animationStyleImmediate];
          v58 = [v56 infoForAnimationStyle:v59];
        }

        [v58 setIsInteractive:{objc_msgSend(*(a1 + 40), "isInteractive")}];
        v60 = [v14 userInfo];
        [v58 setNotificationInfo:v60];

        v61 = _UIInputWindowControllerLogger();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v69.origin.x = v49;
          v69.origin.y = v51;
          v69.size.width = v53;
          v69.size.height = v55;
          v64 = NSStringFromCGRect(v69);
          *buf = 138412290;
          v66 = v64;
          _os_log_debug_impl(&dword_188A29000, v61, OS_LOG_TYPE_DEBUG, "Tracking provider: moveFromPlacement:toPlacement: size change after complete to %@", buf, 0xCu);
        }

        v62 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v63 = [v62 keyboardTrackingProvider];
        [v63 keyboardWillChangeFrame:v58 animationInfo:{v49, v51, v53, v55}];
      }
    }
  }
}

uint64_t __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_576(uint64_t a1)
{
  v2 = [*(a1 + 32) animationController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) animationContext];
  [v2 completeAnimationWithHost:v3 context:v4];

  [*(a1 + 32) setAnimationContext:0];
  v5 = *(a1 + 40);

  return [v5 setPlacementDuringAnimation:0];
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2_577(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1384);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 1384);
    *(v3 + 1384) = 0;
  }
}

void __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_580(uint64_t a1)
{
  v2 = [*(a1 + 32) animationStyle];
  [v2 launchAnimation:*(a1 + 48) afterStarted:*(a1 + 56) completion:*(a1 + 64) forHost:*(a1 + 40) fromCurrentPosition:0];
}

- (void)chainPlacementsIfNecessaryFrom:(id)a3 toPlacement:(id)a4 transition:(id)a5 completion:(id)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v75 = v11;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "chainPlacementsIfNecessaryFrom, from: %@, to: %@ transition: %@", buf, 0x20u);
  }

  if ([v9 isEqual:v10])
  {
    goto LABEL_41;
  }

  v14 = [v11 animationStyle];
  if (![v14 animated])
  {
    goto LABEL_40;
  }

  v15 = [(UIInputWindowController *)self isTransitioningBetweenFloatingStates];

  if (v15)
  {
    goto LABEL_41;
  }

  if ([v10 isFloating] && objc_msgSend(v9, "isVisible"))
  {
    if ([v9 isFloatingAssistantView])
    {
      v53 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v9];
      v16 = [v11 animationStyle];
    }

    else if ([v9 showsInputOrAssistantViews])
    {
      v24 = [(UIInputWindowController *)self inputViewSet];
      v25 = [v24 inputAccessoryView];

      v26 = off_1E70E9B28;
      if (v25)
      {
        v26 = off_1E70E9AF8;
      }

      v53 = [(__objc2_class *)*v26 placement];
      v16 = [v11 animationStyle];
    }

    else
    {
      v53 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v9];
      v16 = +[UIInputViewAnimationStyle animationStyleImmediate];
    }

    v17 = v16;
    v22 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v10];
    v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
    goto LABEL_56;
  }

  if ([v10 isVisible] && objc_msgSend(v9, "isFloating"))
  {
    v53 = +[UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:forFloatingAssistantViewTransition:](UIInputViewSetPlacementInvisibleForFloatingTransition, "placementWithPlacement:forFloatingAssistantViewTransition:", v9, [v10 isFloatingAssistantView]);
    v17 = [v11 animationStyle];
    if ([v10 showsInputOrAssistantViews])
    {
      if ([v10 isFloatingAssistantView])
      {
        v18 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v10];
      }

      else
      {
        v35 = [(UIInputWindowController *)self inputViewSet];
        v36 = [v35 inputAccessoryView];

        if (v36)
        {
          +[UIInputViewSetPlacementAccessoryOnScreen placement];
        }

        else
        {
          +[UIInputViewSetPlacementOffScreenDown placement];
        }
        v18 = ;
      }

      v22 = v18;
      v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  if ([v10 isFloatingAssistantView] && objc_msgSend(v9, "isVisible") && (objc_msgSend(v9, "isFloatingAssistantView") & 1) == 0)
  {
    if ([v9 accessoryViewWillAppear] && (objc_msgSend(v9, "showsKeyboard") & 1) == 0)
    {
      v53 = [UIInputViewSetPlacementInvisibleAssistantBar placementWithPlacement:v10];
      v17 = +[UIInputViewAnimationStyle animationStyleImmediate];
      goto LABEL_53;
    }

    v53 = +[UIInputViewSetPlacementOffScreenDownForFloatingAssistant placement];
    v17 = [v11 animationStyle];
    v22 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v10];
    v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
LABEL_56:
    v31 = v23;
    goto LABEL_57;
  }

  if (![v10 isVisible] || !objc_msgSend(v9, "isFloatingAssistantView") || (objc_msgSend(v10, "isFloatingAssistantView") & 1) != 0)
  {
    if ([v9 isFloatingAssistantView])
    {
      if ([v10 isFloatingAssistantView])
      {
        if (([v10 isInteractive] & 1) == 0)
        {
          v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v20 = [v19 visualModeManager];
          v21 = [v20 windowingModeEnabled];

          if (v21)
          {
            v53 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v9];
            v17 = [v11 animationStyle];
            v22 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v10];
            v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
            goto LABEL_56;
          }
        }
      }
    }

LABEL_41:
    v22 = 0;
    v17 = 0;
    v31 = 0;
    goto LABEL_42;
  }

  if ([v10 accessoryViewWillAppear])
  {
    if (([v10 showsKeyboard] & 1) == 0)
    {
      v28 = [(UIInputWindowController *)self inputViewSet];
      v29 = [v28 inputAccessoryView];
      v30 = v29 == 0;

      if (!v30)
      {
        v14 = +[UIInputViewAnimationStyle animationStyleImmediate];
        [v11 setAnimationStyle:v14];
LABEL_40:

        goto LABEL_41;
      }
    }
  }

  v53 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:v9];
  v17 = [v11 animationStyle];
  if (![v10 showsInputOrAssistantViews])
  {
LABEL_30:
    v27 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v11 setAnimationStyle:v27];

LABEL_53:
    v31 = 0;
    v22 = 0;
    goto LABEL_57;
  }

  v32 = [v10 accessoryViewWillAppear];
  v33 = off_1E70E9AF8;
  if (!v32)
  {
    v33 = off_1E70E9B28;
  }

  v22 = [(__objc2_class *)*v33 placement];
  v34 = +[UIInputViewAnimationStyle animationStyleImmediate];

  v31 = [v11 animationStyle];
  v17 = v34;
LABEL_57:
  if (v53)
  {
    v37 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "chainPlacementsIfNecessaryFrom, intermediate 1: %@, intermediate 2: %@", buf, 0x16u);
    }

    [(UIInputWindowController *)self setPlacementDuringAnimation:v53];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v75) = 0;
    if (!+[UIKeyboard isInputSystemUI])
    {
      v44 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v45 = [v44 visualModeManager];
      v46 = [v45 shouldShowWithinAppWindow];

      if (v46)
      {
        v47 = [(UIViewController *)self _window];
        v48 = [v47 _isRemoteKeyboardWindow];

        if (v48)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v49 = [(UIViewController *)self _window];
        v50 = [v49 _isRemoteKeyboardWindow];

        if (!v50)
        {
          goto LABEL_62;
        }
      }
    }

    v38 = +[UIKeyboardImpl activeInstance];
    [v38 setLockFloating:1];

    v39 = +[UIKeyboardImpl activeInstance];
    [v39 setSuppressUpdateLayout:1];

    v40 = +[UIKeyboardImpl activeInstance];
    [v40 setSuppressUpdateShiftState:1];

    *(*&buf[8] + 24) = 1;
LABEL_62:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke;
    aBlock[3] = &unk_1E70FB728;
    v73 = buf;
    aBlock[4] = self;
    v41 = v9;
    v72 = v41;
    v52 = _Block_copy(aBlock);
    v42 = [_UIWeakReference weakReferenceWrappingObject:self];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_2;
    v65[3] = &unk_1E70F8868;
    v66 = v42;
    v51 = v53;
    v67 = v51;
    v68 = v41;
    v69 = v10;
    v70 = self;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_3;
    v56[3] = &unk_1E71165B8;
    v57 = v11;
    v54 = v52;
    v63 = v54;
    v58 = self;
    v22 = v22;
    v59 = v22;
    v43 = v66;
    v60 = v43;
    v31 = v31;
    v61 = v31;
    v62 = v69;
    v64 = v12;
    [v17 launchAnimation:v65 afterStarted:0 completion:v56 forHost:self fromCurrentPosition:0];

    _Block_object_dispose(buf, 8);
    goto LABEL_43;
  }

LABEL_42:
  v12[2](v12);
LABEL_43:
}

void __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = +[UIKeyboardImpl activeInstance];
    [v2 setLockFloating:0];

    v3 = +[UIKeyboardImpl activeInstance];
    [v3 setSuppressUpdateLayout:0];

    v4 = +[UIKeyboardImpl activeInstance];
    [v4 setSuppressUpdateShiftState:0];

    v5 = +[UIKeyboardImpl activeInstance];
    [v5 updateLayout];

    v6 = +[UIKeyboardImpl activeInstance];
    [v6 updateShiftState];

    v7 = +[UIKeyboardImpl activeInstance];
    [v7 generateCandidatesWithOptions:16];

    v8 = [*(a1 + 32) placement];
    if ([v8 isFloatingAssistantView])
    {
    }

    else
    {
      v9 = [*(a1 + 40) isFloatingAssistantView];

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    v10 = *(*(a1 + 32) + 1056);

    [v10 initializeTranslateGestureRecognizerIfNecessary];
  }
}

void __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _updatePlacementWithPlacement:*(a1 + 40)];
  [v2 updateToPlacement:*(a1 + 40) withNormalAnimationsAndNotifications:1];
  if ([*(a1 + 48) isFloatingAssistantView] && (objc_msgSend(*(a1 + 56), "showsInputOrAssistantViews") & 1) == 0)
  {
    [*(a1 + 64) updateOffscreenKeyboardLayoutGuide];
  }
}

void __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) cancelled])
  {
    (*(*(a1 + 80) + 16))();
    v2 = *(a1 + 40);

    [v2 setPlacementDuringAnimation:0];
  }

  else if (*(a1 + 48))
  {
    [*(a1 + 40) setPlacementDuringAnimation:?];
    v3 = [*(a1 + 56) object];
    if (v3)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_4;
      v10[3] = &unk_1E70F35B8;
      v4 = *(a1 + 64);
      v11 = *(a1 + 56);
      v12 = *(a1 + 48);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_5;
      v6[3] = &unk_1E7116590;
      v6[4] = *(a1 + 40);
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);
      v9 = *(a1 + 88);
      [v4 launchAnimation:v10 afterStarted:0 completion:v6 forHost:v3 fromCurrentPosition:0];
    }

    else
    {
      (*(*(a1 + 80) + 16))();
    }
  }

  else
  {
    [*(a1 + 40) setPlacementDuringAnimation:*(a1 + 72)];
    (*(*(a1 + 80) + 16))();
    v5 = *(*(a1 + 88) + 16);

    v5();
  }
}

void __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _updatePlacementWithPlacement:*(a1 + 40)];
  [v2 updateToPlacement:*(a1 + 40) withNormalAnimationsAndNotifications:0];
}

uint64_t __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setPlacementDuringAnimation:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (id)viewForTransitionScreenSnapshot
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
  v3 = [v2 hostView];

  return v3;
}

- (CGRect)transitioningFrame
{
  v2 = [(UIViewController *)self view];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateToPlacement:(id)a3 withNormalAnimationsAndNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__UIInputWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v4)
  {
    v8[2](v8);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__UIInputWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke_3;
    v10[3] = &unk_1E70F0F78;
    v11 = v8;
    [(UIInputWindowController *)self performWithoutCallbacksOrNotifications:v10];
  }
}

void __82__UIInputWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateVisibilityConstraintsForPlacement:*(a1 + 40)];
  v2 = [*(a1 + 32) inputViewSet];
  if ([v2 isInputAccessoryViewPlaceholder])
  {

LABEL_5:
    v9 = 0;
    v5 = 0.0;
    v6 = 1;
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) inputViewSet];
  v9 = [v3 inputAccessoryView];

  if (!v9)
  {
    goto LABEL_5;
  }

  [v9 frame];
  v5 = v4;
  v6 = 0;
LABEL_6:
  *(*(a1 + 32) + 1042) = 1;
  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];

  *(*(a1 + 32) + 1042) = 0;
  if ((v6 & 1) == 0)
  {
    [v9 frame];
    if (v5 != v8)
    {
      [UIView performWithoutAnimation:&__block_literal_global_587_0];
    }
  }
}

void __82__UIInputWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke_2()
{
  v0 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v1 = [v0 inputWindowRootViewController];

  [v1 checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:1 layoutSubviews:1];
}

- (void)setKeyboardWindowSnapshotOn:(BOOL)a3
{
  if (self->_keyboardWindowSnapshotOn)
  {
    pendingCompleteAnimation = self->_pendingCompleteAnimation;
    if (pendingCompleteAnimation)
    {
      pendingCompleteAnimation[2](pendingCompleteAnimation, a2);
      v6 = self->_pendingCompleteAnimation;
      self->_pendingCompleteAnimation = 0;
    }
  }

  self->_keyboardWindowSnapshotOn = a3;
}

- (void)setInputViewsHidden:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 remoteTextInputPartner];
    v13 = @"hidden";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v6 forwardApplicationOperation:sel_setInputViewsHidden_ object:v8];
  }

  if (self->_inhibitingHiding)
  {
    hiddenCount = self->_hiddenCount;
    if (v3)
    {
      v10 = hiddenCount + 1;
    }

    else
    {
      v10 = hiddenCount - 1;
    }

    self->_hiddenCount = v10;
  }

  else
  {
    [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__UIInputWindowController_setInputViewsHidden___block_invoke;
    v11[3] = &unk_1E70F35E0;
    v11[4] = self;
    v12 = v3;
    [UIView performWithoutAnimation:v11];
  }
}

_DWORD *__47__UIInputWindowController_setInputViewsHidden___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1020);
  v4 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3 - 1;
  }

  *(v2 + 1020) = v5;
  result = *(a1 + 32);
  v7 = result[255];
  if (v7 == 1 && v4 != 0)
  {
    v9 = [result view];
    [v9 setOffsetOrigin:{0.0, 4000.0}];

    result = *(a1 + 32);
    v7 = result[255];
  }

  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v10 = [result view];
    [v10 setOffsetOrigin:{0.0, 0.0}];

    result = *(a1 + 32);
    if ((result[255] & 0x80000000) != 0)
    {
LABEL_11:
      result[255] = 0;
    }
  }

  return result;
}

- (void)setHiddenCount:(int)a3
{
  if (a3)
  {
    v5 = 4000;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(UIViewController *)self view];
  [v7 setOffsetOrigin:{0.0, v6}];

  self->_hiddenCount = a3;
}

- (void)prepareForSplitTransition
{
  v3 = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:v3];
}

- (void)finishSplitTransition
{
  v3 = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:v3];

  v4 = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputSwitcherView:v4];
}

- (void)updateKeyboardLayoutGuideForRotationOrientation:(int64_t)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() useMetronomeTracking])
  {
    return;
  }

  v33 = [(UIInputWindowController *)self placementIgnoringRotation];
  if ([v33 isFloating])
  {
    goto LABEL_6;
  }

  v5 = [(UIInputWindowController *)self placement];
  if ([v5 isFloatingAssistantView])
  {

LABEL_6:
    v6 = v33;
LABEL_7:

    return;
  }

  v7 = [(UIInputWindowController *)self placement];
  v8 = [v7 showsKeyboard];

  if (!v8)
  {
    return;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v10 = [v9 currentUIState];

    if ([v10 assistantBarVisible])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v10 requiresHeightForIntegratedAssistantBar];
    }

    if ((a3 - 3) >= 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }

    [UIKeyboard sizeForInterfaceOrientation:v12 includingAssistantBar:v11 ignoreInputView:0];
    v14 = v13;
    v16 = v15;

    goto LABEL_23;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [UIKeyboard sizeForInterfaceOrientation:a3 ignoreInputView:0];
    v14 = v17;
    v16 = v18;
LABEL_23:
    [(UIInputWindowController *)self updateTrackingElementsWithSize:v14, v16];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__UIInputWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke;
    aBlock[3] = &__block_descriptor_48_e18_v16__0__UIWindow_8l;
    *&aBlock[4] = v14;
    *&aBlock[5] = v16;
    v19 = _Block_copy(aBlock);
    v20 = [(UIViewController *)self _window];
    v21 = [v20 _isHostedInAnotherProcess];

    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v23 = [v22 hasActiveKeyboardResponder];

    if ((v23 & 1) != 0 || v21)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __75__UIInputWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke_2;
      v39[3] = &unk_1E7116408;
      v40 = v19;
      [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v39];
      v26 = v40;
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v24 = [(UIViewController *)self _window];
      v25 = [v24 windowScene];
      v26 = [v25 windows];

      v27 = [v26 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v36;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v26);
            }

            (*(v19 + 2))(v19, *(*(&v35 + 1) + 8 * i));
          }

          v28 = [v26 countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v28);
      }
    }

    return;
  }

  v34 = [(UIViewController *)self _window];
  if ([v34 _isRemoteKeyboardWindow])
  {
    v6 = v34;
    goto LABEL_7;
  }

  v31 = [(UIInputWindowController *)self inputViewSet];
  v32 = [v31 isInputViewPlaceholder];

  if (v32)
  {

    [(UIInputWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
  }
}

void __75__UIInputWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 isTrackingKeyboard])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    [v9 insetForDismissedKeyboardGuide];
    if (v4 < v5)
    {
      [v9 insetForDismissedKeyboardGuide];
      v4 = v6;
    }

    v7 = [v9 _primaryKeyboardTrackingGuide];
    v8 = [v7 changeSizingConstants:{v3, v4}];

    if (v8)
    {
      [v9 layoutViewsForTrackedGuides];
    }
  }
}

- (BOOL)_useLiveRotation
{
  v2 = [(UIInputWindowController *)self inputViewSet];
  v3 = [v2 isSplit];

  return v3 ^ 1;
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (+[_UIRemoteKeyboards enabled]&& !self->_rotationState)
  {
    self->_rotationState = 1;
    v7 = [(UIInputWindowController *)self shouldNotifyRemoteKeyboards];
    if (v7)
    {
      v8 = +[UIInputViewSetNotificationInfo info];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_rotationInfo, v8);
    if (v7)
    {
    }

    if (self->_rotationInfo)
    {
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke;
      v85[3] = &unk_1E70F3590;
      v85[4] = self;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v85];
      [(UIInputViewSetNotificationInfo *)self->_rotationInfo addKeyboardNotificationDebuggingInfo:@"willRotateToInterfaceOrientation: update _rotationInfo"];
      v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      -[UIInputViewSetNotificationInfo setWasCausedRemotely:](self->_rotationInfo, "setWasCausedRemotely:", [v9 keyboardActive] ^ 1);
    }

    preRotationSnapshot = self->_preRotationSnapshot;
    if (preRotationSnapshot)
    {
      [(UIView *)preRotationSnapshot removeFromSuperview];
      v11 = self->_preRotationSnapshot;
      self->_preRotationSnapshot = 0;
    }

    v12 = [(UIInputWindowController *)self placement];
    if ([v12 showsKeyboard])
    {
    }

    else
    {
      v13 = [(UIInputWindowController *)self placement];
      v14 = +[UIInputViewSetPlacementInitialPosition placement];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        [(UIInputWindowController *)self updateGuideForOffscreenRotationWithDuration:a4];
      }
    }

    v16 = +[UIKeyboardImpl isFloating];
    hosting = self->_hosting;
    if (v16)
    {
      v18 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:2];
      v19 = [v18 splitKeyboardController];
      [v19 cancelGestureRecognizers];
    }

    else
    {
      v20 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:1];
      v21 = [v20 hostView];
      [v21 bounds];
      v23 = v22;
      v25 = v24;

      if (v23 > 0.0 && v25 > 0.0)
      {
        v26 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
        v27 = [v26 hostView];
        v28 = [v27 snapshotViewAfterScreenUpdates:0];
        v29 = self->_preRotationSnapshot;
        self->_preRotationSnapshot = v28;

        [(UIView *)self->_preRotationSnapshot setTranslatesAutoresizingMaskIntoConstraints:0];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_2;
        v84[3] = &unk_1E70F3590;
        v84[4] = self;
        [UIView performWithoutAnimation:v84];
        v30 = [(UIInputWindowController *)self inputViewSet];
        LODWORD(v27) = [v30 isSplit];

        if (v27)
        {
          [(UIView *)self->_preRotationSnapshot bounds];
          if (v31 <= 0.0)
          {
            v40 = 0.2;
            v39 = 0.4;
          }

          else
          {
            v32 = v31;
            v33 = [(UIInputWindowController *)self inputViewSet];
            [v33 _rightInputViewSetFrame];
            v35 = v34;

            v36 = [(UIInputWindowController *)self inputViewSet];
            [v36 _leftInputViewSetFrame];
            v38 = v37;

            v39 = v38 / v32;
            v40 = (v32 - v38 - v35) / v32;
          }

          v41 = [(UIView *)self->_preRotationSnapshot layer];
          [v41 setContentsCenter:{v39, 0.0, v40, 1.0}];
        }
      }

      v42 = [(UIInputWindowController *)self currentTransition];
      if (v42)
      {
        v43 = v42;
        v44 = [(UIInputWindowController *)self transientInputViewSet];

        if (v44)
        {
          v45 = [(UIInputWindowController *)self transientInputViewSet];
          [(UIInputWindowController *)self changeToInputViewSet:v45];
        }
      }

      v46 = [(UIInputWindowController *)self currentTransition];
      v47 = [v46 toPlacement];
      if (v47)
      {
        [(UIInputWindowController *)self setPostRotationPlacement:v47];
      }

      else
      {
        v48 = [(UIInputWindowController *)self placement];
        [(UIInputWindowController *)self setPostRotationPlacement:v48];
      }

      [(UIInputWindowController *)self setPostRotationPendingBlock:0];
      v49 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [(UIInputWindowController *)self pushAnimationStyle:v49];

      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_3;
      v83[3] = &unk_1E70F32F0;
      v83[4] = self;
      v83[5] = a3;
      [(UIInputWindowController *)self performWithoutAppearanceCallbacks:v83];
      if (self->_preRotationSnapshot)
      {
        v50 = [(UIViewController *)self view];
        [v50 addSubview:self->_preRotationSnapshot];
      }

      v51 = [(UIInputWindowController *)self _inputView];
      [v51 bounds];
      self->_preRotationInputViewSize.width = v52;
      self->_preRotationInputViewSize.height = v53;

      p_preRotationInputAssistantViewSize = &self->_preRotationInputAssistantViewSize;
      v55 = [(UIInputWindowController *)self _inputAssistantView];
      if (v55)
      {
        v56 = [(UIInputWindowController *)self _inputAssistantView];
        [v56 bounds];
        p_preRotationInputAssistantViewSize->width = v57;
        self->_preRotationInputAssistantViewSize.height = v58;
      }

      else
      {
        *p_preRotationInputAssistantViewSize = *MEMORY[0x1E695F060];
      }

      p_preRotationInputAccessoryViewSize = &self->_preRotationInputAccessoryViewSize;
      v60 = [(UIInputWindowController *)self _inputAccessoryView];
      if (v60)
      {
        v61 = [(UIInputWindowController *)self _inputAccessoryView];
        [v61 bounds];
        p_preRotationInputAccessoryViewSize->width = v62;
        self->_preRotationInputAccessoryViewSize.height = v63;
      }

      else
      {
        *p_preRotationInputAccessoryViewSize = *MEMORY[0x1E695F060];
      }

      v64 = [(UIInputWindowController *)self _inputView];
      v65 = v64;
      if (v64)
      {
        [v64 transform];
      }

      else
      {
        v81 = 0u;
        v82 = 0u;
        v80 = 0u;
      }

      *&self->_preRotationInputViewTransform.a = v80;
      *&self->_preRotationInputViewTransform.c = v81;
      *&self->_preRotationInputViewTransform.tx = v82;

      p_preRotationInputAssistantViewTransform = &self->_preRotationInputAssistantViewTransform;
      v67 = [(UIInputWindowController *)self _inputAssistantView];
      if (v67)
      {
        v68 = [(UIInputWindowController *)self _inputAssistantView];
        v69 = v68;
        if (v68)
        {
          [v68 transform];
        }

        else
        {
          v81 = 0u;
          v82 = 0u;
          v80 = 0u;
        }

        *&p_preRotationInputAssistantViewTransform->a = v80;
        *&self->_preRotationInputAssistantViewTransform.c = v81;
        *&self->_preRotationInputAssistantViewTransform.tx = v82;
      }

      else
      {
        *&self->_preRotationInputAssistantViewTransform.c = 0u;
        *&self->_preRotationInputAssistantViewTransform.tx = 0u;
        *&p_preRotationInputAssistantViewTransform->a = 0u;
      }

      p_preRotationInputAccessoryViewTransform = &self->_preRotationInputAccessoryViewTransform;
      v71 = [(UIInputWindowController *)self _inputAccessoryView];
      if (v71)
      {
        v72 = [(UIInputWindowController *)self _inputAccessoryView];
        v73 = v72;
        if (v72)
        {
          [v72 transform];
        }

        else
        {
          v81 = 0u;
          v82 = 0u;
          v80 = 0u;
        }

        *&p_preRotationInputAccessoryViewTransform->a = v80;
        *&self->_preRotationInputAccessoryViewTransform.c = v81;
        *&self->_preRotationInputAccessoryViewTransform.tx = v82;
      }

      else
      {
        *&self->_preRotationInputAccessoryViewTransform.c = 0u;
        *&self->_preRotationInputAccessoryViewTransform.tx = 0u;
        *&p_preRotationInputAccessoryViewTransform->a = 0u;
      }

      v74 = [(UIInputWindowController *)self _inputView];
      [v74 setAlpha:0.0];

      v75 = [(UIInputWindowController *)self _inputView];
      v76 = [v75 layer];
      [v76 setAllowsGroupOpacity:0];

      v77 = [(UIInputWindowController *)self _inputAssistantView];
      v78 = [v77 layer];
      [v78 setAllowsGroupOpacity:0];

      v79 = [(UIInputWindowController *)self _inputAccessoryView];
      [v79 setAlpha:0.0];

      v18 = [(UIInputWindowController *)self _inputAssistantView];
      [v18 setAlpha:0.0];
    }
  }
}

void __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1264);
  v13 = [*(v2 + 1056) itemForPurpose:1];
  [v13 notificationsFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) view];
  [UIScreen convertRect:v12 fromView:v5, v7, v9, v11];
  [v3 populateStartInfoWithFrame:?];
}

void __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  v3 = [v2 hostView];
  [v3 bounds];
  [*(*(a1 + 32) + 1064) setBounds:?];

  v5 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  v4 = [v5 hostView];
  [v4 center];
  [*(*(a1 + 32) + 1064) setCenter:?];
}

uint64_t __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_4;
  v3[3] = &unk_1E70F32F0;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  return [UIView performWithoutAnimation:v3];
}

void __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_4(uint64_t a1)
{
  v2 = +[UIInputViewSetNotificationInfo info];
  [v2 setDueToRotation:1];
  [v2 setShouldSendInClient:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"willRotateToInterfaceOrientation: %li", *(a1 + 40)];
  [v2 addKeyboardNotificationDebuggingInfo:v3];

  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v2 setWasCausedRemotely:{objc_msgSend(v4, "keyboardActive") ^ 1}];

  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_5;
  v6[3] = &unk_1E70F3590;
  v6[4] = v5;
  [v5 performOperations:v6 withTemplateNotificationInfo:v2];
}

void __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_5(uint64_t a1)
{
  v2 = +[UIInputViewSetPlacementOffScreenDown placement];
  [*(a1 + 32) setPlacement:v2];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (self->_rotationState == 1)
  {
    self->_rotationState = 2;
    if (+[UIKeyboardImpl isFloating])
    {
      v7 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_2;
      v37[3] = &unk_1E70F3590;
      v37[4] = self;
      [UIView conditionallyAnimate:v7 withAnimation:&__block_literal_global_603 layout:v37 completion:0];
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v40 = @"UITextEffectsWindow_toOrientation";
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v41[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      [v8 postNotificationName:@"UITextEffectsWindowViewControllerWillRotateNotification" object:self userInfo:v10];
    }

    else
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_3;
      v36[3] = &unk_1E70F3590;
      v36[4] = self;
      [(UIInputWindowController *)self performWithoutCallbacksOrNotifications:v36];
      v11 = [(UIViewController *)self view];
      [v11 setNeedsUpdateConstraints];

      v12 = [(UIInputWindowController *)self _inputView];
      v13 = [(UIInputWindowController *)self _inputAssistantView];
      v14 = [(UIInputWindowController *)self _inputAccessoryView];
      if ([(UIInputWindowController *)self _useLiveRotation])
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_5;
        v31[3] = &unk_1E70F6B40;
        v15 = v12;
        v32 = v15;
        v16 = v13;
        v33 = v16;
        v17 = v14;
        v34 = v17;
        v35 = self;
        [UIView performWithoutAnimation:v31];
        [v15 setAlpha:1.0];
        [v16 setAlpha:1.0];
        [v17 setAlpha:1.0];
        [(UIView *)self->_preRotationSnapshot setAlpha:0.0];
      }

      v18 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
      v19 = [v18 hostView];
      [v19 bounds];
      [(UIView *)self->_preRotationSnapshot setBounds:?];

      v20 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
      v21 = [v20 hostView];
      [v21 center];
      [(UIView *)self->_preRotationSnapshot setCenter:?];

      v22 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_7;
      v26[3] = &unk_1E70F4378;
      v26[4] = self;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      v30 = a3;
      v10 = v14;
      v9 = v13;
      v8 = v12;
      [UIView conditionallyAnimate:v22 withAnimation:&__block_literal_global_608_0 layout:v26 completion:0];
      +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      v38 = @"UITextEffectsWindow_toOrientation";
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v39 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v23 postNotificationName:@"UITextEffectsWindowViewControllerWillRotateNotification" object:self userInfo:v25];

      [(UIInputViewSetNotificationInfo *)self->_rotationInfo setDuration:a4];
      [(UIInputViewSetNotificationInfo *)self->_rotationInfo setForceNotification:1];
      [(UIInputViewSetNotificationInfo *)self->_rotationInfo setShouldSendInClient:1];
    }
  }
}

void __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) placement];
  [*(a1 + 32) setPlacement:v2];
}

uint64_t __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_4;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) postRotationPlacement];
  [*(a1 + 32) setPlacement:v2];
}

uint64_t __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 removeAnimationForKey:@"bounds"];

  v3 = [*(a1 + 40) layer];
  [v3 removeAnimationForKey:@"bounds"];

  v4 = [*(a1 + 48) layer];
  [v4 removeAnimationForKey:@"bounds"];

  [*(a1 + 32) bounds];
  IsEmpty = CGRectIsEmpty(v42);
  v6 = MEMORY[0x1E695F060];
  if (!IsEmpty)
  {
    v7 = (*(a1 + 56) + 1072);
    v8 = *(MEMORY[0x1E695F060] + 8);
    v9 = *v7;
    if (*MEMORY[0x1E695F060] != *v7 || v8 != *(*(a1 + 56) + 1080))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        [v11 transform];
        v9 = *(*(a1 + 56) + 1072);
        v11 = *(a1 + 32);
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      [v11 bounds];
      v12 = *(*(a1 + 56) + 1080);
      v14 = v9 / v13;
      [*(a1 + 32) bounds];
      CGAffineTransformScale(&v41, &v40, v14, v12 / v15);
      v16 = *(a1 + 32);
      v40 = v41;
      [v16 setTransform:&v40];
    }
  }

  [*(a1 + 40) bounds];
  if (!CGRectIsEmpty(v43))
  {
    v17 = (*(a1 + 56) + 1088);
    v18 = v6[1];
    v19 = *v17;
    if (*v6 != *v17 || v18 != *(*(a1 + 56) + 1096))
    {
      v21 = *(a1 + 40);
      if (v21)
      {
        [v21 transform];
        v19 = *(*(a1 + 56) + 1088);
        v21 = *(a1 + 40);
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      [v21 bounds];
      v22 = *(*(a1 + 56) + 1096);
      v24 = v19 / v23;
      [*(a1 + 40) bounds];
      CGAffineTransformScale(&v39, &v40, v24, v22 / v25);
      v26 = *(a1 + 40);
      v40 = v39;
      [v26 setTransform:&v40];
    }
  }

  [*(a1 + 48) bounds];
  result = CGRectIsEmpty(v44);
  if ((result & 1) == 0)
  {
    v28 = (*(a1 + 56) + 1104);
    v29 = v6[1];
    v30 = *v28;
    if (*v6 != *v28 || v29 != *(*(a1 + 56) + 1112))
    {
      v32 = *(a1 + 48);
      if (v32)
      {
        [v32 transform];
        v32 = *(a1 + 48);
        v30 = *(*(a1 + 56) + 1104);
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      [v32 bounds];
      v33 = *(*(a1 + 56) + 1112);
      v35 = v30 / v34;
      [*(a1 + 48) bounds];
      CGAffineTransformScale(&v38, &v40, v35, v33 / v36);
      v37 = *(a1 + 48);
      v40 = v38;
      return [v37 setTransform:&v40];
    }
  }

  return result;
}

uint64_t __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_7(void *a1)
{
  v2 = a1[4];
  memset(&t1, 0, sizeof(t1));
  v3 = v2[70];
  v4 = v2[72];
  *&t2.c = v2[71];
  *&t2.tx = v4;
  *&t2.a = v3;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v18 = v2[71];
    v5 = v2[72];
    v6 = a1[5];
    *&t1.a = v2[70];
    *&t1.c = v18;
    *&t1.tx = v5;
    [v6 setTransform:&t1];
    v2 = a1[4];
  }

  memset(&t1, 0, sizeof(t1));
  v7 = v2[73];
  v8 = v2[75];
  *&t2.c = v2[74];
  *&t2.tx = v8;
  *&t2.a = v7;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v17 = v2[74];
    v9 = v2[75];
    v10 = a1[6];
    *&t1.a = v2[73];
    *&t1.c = v17;
    *&t1.tx = v9;
    [v10 setTransform:&t1];
    v2 = a1[4];
  }

  memset(&t1, 0, sizeof(t1));
  v11 = v2[76];
  v12 = v2[78];
  *&t2.c = v2[77];
  *&t2.tx = v12;
  *&t2.a = v11;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v15 = v2[77];
    v16 = v2[78];
    v13 = a1[7];
    *&t1.a = v2[76];
    *&t1.c = v15;
    *&t1.tx = v16;
    [v13 setTransform:{&t1, *&t1.a, *&t1.b, v15, v16}];
    v2 = a1[4];
  }

  return [v2 updateKeyboardLayoutGuideForRotationOrientation:a1[8]];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (self->_rotationState == 2)
  {
    self->_rotationState = 0;
    [(UIInputWindowController *)self _updateContentOverlayInsetsForSelfAndChildren];
    v5 = [(UIInputWindowController *)self inputViewSet];
    v6 = [v5 inputView];
    [v6 setAlpha:1.0];

    v7 = [(UIInputWindowController *)self inputViewSet];
    v8 = [v7 inputView];
    v9 = [v8 layer];
    [v9 setAllowsGroupOpacity:1];

    v10 = [(UIInputWindowController *)self inputViewSet];
    v11 = [v10 inputAssistantView];
    v12 = [v11 layer];
    [v12 setAllowsGroupOpacity:1];

    v13 = [(UIInputWindowController *)self inputViewSet];
    v14 = [v13 inputAssistantView];
    [v14 setAlpha:1.0];

    v15 = [(UIInputWindowController *)self inputViewSet];
    v16 = [v15 inputAccessoryView];
    [v16 setAlpha:1.0];

    [(UIView *)self->_preRotationSnapshot removeFromSuperview];
    preRotationSnapshot = self->_preRotationSnapshot;
    self->_preRotationSnapshot = 0;

    v18 = [(UIInputWindowController *)self postRotationPlacement];

    if (v18)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_2;
      v49[3] = &unk_1E70F3590;
      v49[4] = self;
      [(UIInputWindowController *)self performWithoutCallbacksOrNotifications:v49];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_4;
      v48[3] = &unk_1E70F32F0;
      v48[4] = self;
      v48[5] = a3;
      [(UIInputWindowController *)self performWithoutAppearanceCallbacks:v48];
      [(UIInputWindowController *)self popAnimationStyle];
      v19 = [(UIInputWindowController *)self postRotationInputViewSet];
      v20 = [(UIInputWindowController *)self postRotationInputViewNotificationInfo];
      [v20 setDueToRotation:1];
      [v20 setShouldSendInClient:1];
      if (+[UIKeyboard usesInputSystemUI])
      {
        [v20 setWaitingForInputUI:1];
      }

      [(UIInputWindowController *)self setPostRotationPlacement:0];
      [(UIInputWindowController *)self setPostRotationInputViewSet:0];
      [(UIInputWindowController *)self setPostRotationInputViewNotificationInfo:0];
      v21 = [(UIInputWindowController *)self postRotationPendingBlock];

      if (v21)
      {

        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"didRotateFromInterfaceOrientation: has postRotationPendingBlock"];
        [v20 addKeyboardNotificationDebuggingInfo:v22];

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_7;
        v47[3] = &unk_1E70F3590;
        v47[4] = self;
        [(UIInputWindowController *)self performOperations:v47 withTemplateNotificationInfo:v20];
        v19 = 0;
      }

      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v24 = [(UIViewController *)self _window];
      [v23 completeMoveKeyboardForWindow:v24];

      if (v19)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"didRotateFromInterfaceOrientation: has pending inputViewSet"];
        [v20 addKeyboardNotificationDebuggingInfo:v25];

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_8;
        v45[3] = &unk_1E70F35B8;
        v45[4] = self;
        v46 = v19;
        [(UIInputWindowController *)self performOperations:v45 withTemplateNotificationInfo:v20];
      }

      v26 = [(UIInputWindowController *)self inputViewSet];
      if (![v26 isInputViewPlaceholder])
      {
        v27 = +[UIKeyboardInputModeController sharedInputModeController];
        v28 = [v27 currentInputMode];
        if ([v28 isExtensionInputMode])
        {
          v29 = [(UIInputWindowController *)self _inputViewController];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            v31 = [(UIInputWindowController *)self _inputViewController];
            [v31 takeSnapshotView];

            [(UIInputWindowController *)self updateKeyboardLayoutGuideForRotationOrientation:[(UIViewController *)self interfaceOrientation]];
          }

          goto LABEL_21;
        }
      }

LABEL_21:
      v40 = +[UIKeyboardImpl activeInstance];
      v41 = [v40 remoteTextInputPartner];
      [v41 documentStateChanged];

      +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
      v42 = [MEMORY[0x1E696AD88] defaultCenter];
      v50 = @"UITextEffectsWindow_fromOrientation";
      v43 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v51 = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      [v42 postNotificationName:@"UITextEffectsWindowViewControllerDidRotateNotification" object:self userInfo:v44];

      return;
    }

    if (+[UIKeyboardImpl isFloating])
    {
      if (self->_isChangingPlacement)
      {
        v32 = [(UIInputWindowController *)self placement];
        [(UIInputWindowController *)self updateVisibilityConstraintsForPlacement:v32];
      }

      v33 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v33 performOnDistributedControllers:&__block_literal_global_612_0];

      v34 = [MEMORY[0x1E696AD88] defaultCenter];
      v54 = @"UITextEffectsWindow_fromOrientation";
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v55[0] = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = v55;
      v38 = &v54;
    }

    else
    {
      v34 = [MEMORY[0x1E696AD88] defaultCenter];
      v52 = @"UITextEffectsWindow_fromOrientation";
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v53 = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = &v53;
      v38 = &v52;
    }

    v39 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
    [v34 postNotificationName:@"UITextEffectsWindowViewControllerDidRotateNotification" object:self userInfo:v39];
  }
}

uint64_t __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_3;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_3(uint64_t a1)
{
  v2 = +[UIInputViewSetPlacementOffScreenDown placement];
  [*(a1 + 32) setPlacement:v2];
}

uint64_t __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_5;
  v3[3] = &unk_1E70F32F0;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  return [UIView performWithoutAnimation:v3];
}

void __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_5(uint64_t a1)
{
  v2 = +[UIInputViewSetNotificationInfo info];
  [v2 setDueToRotation:1];
  v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v2 setWasCausedRemotely:{objc_msgSend(v3, "keyboardActive") ^ 1}];

  [v2 setShouldSendInClient:1];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"didRotateFromInterfaceOrientation: %li", *(a1 + 40)];
  [v2 addKeyboardNotificationDebuggingInfo:v4];

  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_6;
  v6[3] = &unk_1E70F3590;
  v6[4] = v5;
  [v5 performOperations:v6 withTemplateNotificationInfo:v2];
}

uint64_t __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) inputViewSet];
  if ([v2 isInputViewPlaceholder])
  {
    v3 = [*(a1 + 32) inputViewSet];
    v4 = [v3 inputView];
    [v4 frame];
    v6 = v5;

    if (v6 == 0.0)
    {
      [*(a1 + 32) checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:0 layoutSubviews:1];
    }
  }

  else
  {
  }

  v7 = [*(a1 + 32) postRotationPlacement];
  [*(a1 + 32) setPlacement:v7];

  v8 = *(*(a1 + 32) + 1056);

  return [v8 initializeTranslateGestureRecognizerIfNecessary];
}

uint64_t __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) postRotationPendingBlock];
  v2[2]();

  v3 = *(a1 + 32);

  return [v3 setPostRotationPendingBlock:0];
}

- (void)clearRotationState
{
  rotationState = self->_rotationState;
  if (rotationState == 1)
  {
    [(UIInputWindowController *)self willAnimateRotationToInterfaceOrientation:+[UIKeyboardSceneDelegate duration:"interfaceOrientation"], 0.0];
    rotationState = self->_rotationState;
  }

  if (rotationState == 2)
  {
    [(UIInputWindowController *)self didRotateFromInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  }

  hosting = self->_hosting;

  [(UIInputWindowControllerHosting *)hosting removeAllAnimations];
}

- (CGSize)sizeForInputViewController:(id)a3 inputView:(id)a4 includeAssistantBar:(BOOL)a5
{
  [UIKeyboard sizeForInterfaceOrientation:[(UIInputWindowController *)self keyboardOrientation:a3] includingAssistantBar:a5 ignoreInputView:1];
  v7 = v6;
  v9 = v8;
  [(UIInputWindowController *)self _inputViewPadding];
  v12 = v9 + v11 + v10;
  v13 = v7;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)sizeForInputViewController:(id)a3 inputView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ([v6 _autosizeToCurrentKeyboard] & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || SubviewAutoSizesWithPredictionBar(v7);
  [(UIInputWindowController *)self sizeForInputViewController:v6 inputView:v7 includeAssistantBar:v8];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)isHostingView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) hostView];
        v10 = [v4 isEqual:v9];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (unint64_t)_clipCornersOfView:(id)a3
{
  v4 = [(UIInputViewSet *)self->_inputViewSet _splittableInputAccessoryView];
  v5 = [(UIInputViewSet *)self->_inputViewSet inputAccessoryView];

  if (v5)
  {
    if (v4)
    {
      [v4 leftContentViewSize];
      if (v6 == 0.0)
      {
        v7 = 14;
      }

      else
      {
        v7 = 12;
      }

      [v4 rightContentViewSize];
      if (v8 == 0.0)
      {
        v7 |= 1uLL;
      }
    }

    else
    {
      v7 = 12;
    }
  }

  else
  {
    v7 = 15;
  }

  return v7;
}

- (void)postTransitionEndNotification
{
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v3 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
    [v3 notificationsFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v17 = [(UIInputWindowController *)self initialNotificationInfo];
    if ([(UIInputWindowController *)self isOnScreen])
    {
      v12 = [(UIViewController *)self view];
      [v12 frame];
      v14 = v13 - v11;

      v15 = @"postTransitionEndNotification (isOnScreen)";
      v16 = 2;
    }

    else
    {
      v14 = v7 + v11;
      v15 = @"postTransitionEndNotification (!isOnScreen)";
      v16 = 3;
    }

    [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v5, v14, v9, v11];
    [v17 populateEndInfoWithFrame:?];
    [v17 addKeyboardNotificationDebuggingInfo:v15];
    [(UIInputWindowController *)self postStartNotifications:v16 withInfo:v17];
    [(UIInputWindowController *)self postEndNotifications:v16 withInfo:v17];
  }
}

- (void)generateNotificationsForStart:(BOOL)a3
{
  v3 = a3;
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v5 = [(UIInputWindowController *)self initialNotificationInfo];
    if (v3)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__UIInputWindowController_generateNotificationsForStart___block_invoke;
      v17[3] = &unk_1E70F35B8;
      v17[4] = self;
      v18 = v5;
      v6 = v5;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v17];
    }

    else
    {
      v16 = v5;
      v7 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
      [v7 notificationsFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v9, v11, v13, v15];
      [v16 populateEndInfoWithFrame:?];
      [v16 addKeyboardNotificationDebuggingInfo:@"generateNotificationsForStart:0"];
      [(UIInputWindowController *)self postEndNotifications:1 withInfo:v16];
    }
  }
}

uint64_t __57__UIInputWindowController_generateNotificationsForStart___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  [*(a1 + 40) populateStartInfoWithFrame:?];
  [*(a1 + 40) addKeyboardNotificationDebuggingInfo:@"generateNotificationsForStart:1"];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 postStartNotifications:1 withInfo:v12];
}

- (void)generateNotificationsForCompactAssistantFlickGestureCompletion:(id)a3
{
  v4 = a3;
  v21 = objc_alloc_init(UIInputViewSetNotificationInfo);
  v5 = [v4 objectForKeyedSubscript:0x1EFB7ADF0];
  [v5 CGRectValue];
  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 objectForKeyedSubscript:0x1EFB7AE10];

  -[UIInputViewSetNotificationInfo setAssistantPosition:](v21, "setAssistantPosition:", [v14 intValue]);
  [(UIInputViewSetNotificationInfo *)v21 setAssistantFrame:v7, v9, v11, v13];
  [(UIInputViewSetNotificationInfo *)v21 setForceNotification:1];
  v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v16 = [v15 visualModeManager];
  v17 = [v16 windowingModeEnabled];

  if (v17)
  {
    v18 = [(UIInputWindowController *)self inputViewSet];
    v19 = [v18 inputAccessoryView];

    if (!v19)
    {
      [(UIInputViewSetNotificationInfo *)v21 populateStartInfoWithFrame:v7, v9, v11, v13];
      [(UIInputViewSetNotificationInfo *)v21 populateEndInfoWithFrame:v7, v9, v11, v13];
    }
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"generateNotificationsForCompactAssistantFlickGestureCompletion (stageManager active: %d)", v17];
  [(UIInputViewSetNotificationInfo *)v21 addKeyboardNotificationDebuggingInfo:v20];

  [(UIInputWindowController *)self postStartNotifications:2 withInfo:v21];
  [(UIInputWindowController *)self postEndNotifications:2 withInfo:v21];
}

- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = [(UIViewController *)self _window];

  if (v11)
  {
    if (a5)
    {
      if (v8)
      {
        [(UIInputWindowController *)self _updatePlacementWithPlacement:v10];
        [(UIInputWindowController *)self updateToPlacement:v10 withNormalAnimationsAndNotifications:0];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      [(UIInputWindowController *)self setPlacement:v10];
      if (v6)
      {
LABEL_8:
        [(UIInputWindowController *)self postTransitionEndNotification];
      }
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __83__UIInputWindowController_setPlacement_quietly_animated_generateSplitNotification___block_invoke;
      v12[3] = &unk_1E70F67F8;
      v12[4] = self;
      v13 = v10;
      v14 = v8;
      v15 = v6;
      [UIView performWithoutAnimation:v12];
    }
  }

LABEL_9:
}

uint64_t __46__UIInputWindowController_invalidateInputView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingView];
  v3 = [*(a1 + 32) _inputViewController];
  v4 = [v3 view];
  v5 = [v4 superview];
  v6 = [v2 containsView:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) _inputViewController];
    v8 = [v7 view];
    [v8 removeFromSuperview];

    [*(*(a1 + 32) + 1056) clearInputViewEdgeConstraints];
    [*(*(a1 + 32) + 1056) resetInputViewVisibility];
  }

  v9 = [*(a1 + 32) _inputViewController];
  v10 = [v9 parentViewController];
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    v12 = [*(a1 + 32) _inputViewController];
    [v12 removeFromParentViewController];
  }

  v13 = *(a1 + 32);

  return [v13 set_inputViewController:0];
}

- (void)validateInputView
{
  v3 = [(UIInputWindowController *)self _inputViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UIInputWindowController *)self _inputViewController];
    [v5 validateInputModeIsDisplayed];
  }
}

uint64_t __55__UIInputWindowController_invalidateInputAssistantView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingView];
  v3 = [*(a1 + 32) _inputAssistantViewController];
  v4 = [v3 view];
  v5 = [v4 superview];
  if ([v2 containsView:v5])
  {
  }

  else
  {
    v6 = +[UIKeyboard usesLocalKeyboard];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = [*(a1 + 32) _inputAssistantViewController];
  v8 = [v7 view];
  [v8 removeFromSuperview];

  [*(*(a1 + 32) + 1056) removeInputAssistantHostView];
  [*(*(a1 + 32) + 1056) clearInputAssistantViewEdgeConstraints];
  [*(*(a1 + 32) + 1056) clearInputAccessoryViewEdgeConstraints];
  [*(*(a1 + 32) + 1056) clearInputViewEdgeConstraints];
LABEL_5:
  v9 = [*(a1 + 32) _inputAssistantViewController];
  v10 = [v9 parentViewController];
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    v12 = [*(a1 + 32) _inputAssistantViewController];
    [v12 removeFromParentViewController];
  }

  v13 = *(a1 + 32);

  return [v13 set_inputAssistantViewController:0];
}

uint64_t __55__UIInputWindowController_invalidateInputAccessoryView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingView];
  v3 = [*(a1 + 32) _inputAccessoryViewController];
  v4 = [v3 view];
  if ([v2 containsView:v4])
  {
  }

  else
  {
    v5 = +[UIKeyboard usesLocalKeyboard];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [*(a1 + 32) _inputAccessoryViewController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  [*(*(a1 + 32) + 1056) clearInputAccessoryViewEdgeConstraints];
LABEL_5:
  v8 = [*(a1 + 32) _inputAccessoryViewController];
  v9 = [v8 parentViewController];
  v10 = *(a1 + 32);

  if (v9 == v10)
  {
    v11 = [*(a1 + 32) _inputAccessoryViewController];
    [v11 removeFromParentViewController];
  }

  v12 = *(a1 + 32);
  v13 = [v12 _inputAccessoryViewController];
  v14 = [v12 overrideTraitCollectionForChildViewController:v13];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = [v15 _inputAccessoryViewController];
    [v15 setOverrideTraitCollection:0 forChildViewController:v16];
  }

  v17 = *(a1 + 32);

  return [v17 set_inputAccessoryViewController:0];
}

- (void)updateInputAssistantView:(id)a3
{
  v36 = a3;
  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && !+[UIKeyboard usesLocalKeyboard])
  {
    goto LABEL_17;
  }

  v4 = [(UIViewController *)self _window];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [(UIInputWindowController *)self _inputAssistantViewController];
  v7 = [v6 view];
  v8 = [v36 inputAssistantView];
  v9 = v8;
  if (v7 == v8)
  {
    v10 = [(UIViewController *)self _window];
    v11 = [v36 inputAssistantView];
    v12 = [v11 window];

    if (v10 == v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v13 = [(UIInputWindowController *)self _inputAssistantViewController];
  v14 = v13;
  if (!v13)
  {
    v13 = self;
  }

  v15 = [v13 _appearState];

  hosting = self->_hosting;
  v17 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
  [(UIInputWindowControllerHosting *)hosting disableViewSizingConstraints:2 forNewView:v17];

  [(UIInputWindowController *)self invalidateInputAssistantView];
  v18 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];

  if (v18)
  {
    *&self->super.super.super._viewControllerFlags |= 0x100000uLL;
    v19 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    [(UIInputWindowController *)self set_inputAssistantViewController:v19];

    v20 = [(UIInputWindowController *)self _inputAssistantViewController];
    v21 = [v20 parentViewController];
    if (v21)
    {
      v22 = v21;
      v23 = +[UIKeyboard usesLocalKeyboard];

      if (v23)
      {
LABEL_14:
        v25 = [(UIInputWindowController *)self _inputAssistantViewController];
        [(UIViewController *)self _addChildViewController:v25 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

        sizeClassCollectionOverride = self->_sizeClassCollectionOverride;
        if (sizeClassCollectionOverride)
        {
          v27 = [(UIInputWindowController *)self _inputAssistantViewController];
          [(UIViewController *)self setOverrideTraitCollection:sizeClassCollectionOverride forChildViewController:v27];
        }

        v28 = self->_hosting;
        v29 = [(UIInputWindowController *)self _inputAssistantViewController];
        v30 = [v29 view];
        [(UIInputWindowControllerHosting *)v28 setInputSetView:v30 forType:102];

        v31 = [(UIInputWindowController *)self _inputAssistantViewController];
        [v31 didMoveToParentViewController:self];

        [(UIInputWindowController *)self changeChild:2 toAppearState:v15 animated:0];
        *&self->super.super.super._viewControllerFlags &= ~0x100000uLL;
        v32 = [(UIInputWindowController *)self _inputAssistantViewController];
        v33 = [v32 view];
        v34 = [(UIViewController *)self view];
        v35 = [v34 _inheritedRenderConfig];
        [v33 _setRenderConfig:v35];

        goto LABEL_17;
      }

      v20 = [(UIInputWindowController *)self _inputAssistantViewController];
      v24 = [v20 parentViewController];
      [v24 invalidateInputAssistantView];
    }

    goto LABEL_14;
  }

LABEL_17:
}

- (void)updateInputSwitcherView:(id)a3
{
  v7 = a3;
  if (+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isMinimized], v4, (v5 & 1) == 0))
  {
    v6 = [v7 inputSwitcherView];
  }

  else
  {
    v6 = 0;
  }

  [(UIInputWindowControllerHosting *)self->_hosting setInputSetView:v6 forType:103];
  [(UIInputWindowController *)self set_inputSwitcherView:v6];
  [(UIInputWindowController *)self updateHostingConstraints];
}

- (void)updateBackdropRenderConfig:(id)a3
{
  hosting = self->_hosting;
  v4 = a3;
  v5 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:100];
  [v5 updateRenderConfigForCombinedBackdrop:v4];
}

- (unint64_t)changeToInputViewSet:(id)a3
{
  v110 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    inputViewSet = self->_inputViewSet;
    *buf = 138412290;
    v109 = inputViewSet;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Change from input view set: %@", buf, 0xCu);
  }

  v8 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v109 = v5;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Change to input view set: %@", buf, 0xCu);
  }

  v9 = self->_inputViewSet;
  objc_storeStrong(&self->_inputViewSet, a3);
  [(UIInputWindowController *)self setTransientInputViewSet:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIInputWindowController_changeToInputViewSet___block_invoke;
  aBlock[3] = &unk_1E7116620;
  aBlock[4] = self;
  v10 = v5;
  v107 = v10;
  v102 = _Block_copy(aBlock);
  [(UIInputWindowControllerHosting *)self->_hosting initializeTranslateGestureRecognizerIfNecessary];
  self->_isChangingInputViews = 1;
  v11 = [(UIInputWindowController *)self _inputViewController];
  v12 = [v11 view];
  v13 = [(UIInputViewSet *)v10 inputView];

  hosting = self->_hosting;
  if (v12 == v13)
  {
    v37 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:100];
    [v37 updateInputBackdropViewVisibility];

    v36 = 0;
  }

  else
  {
    v15 = [(UIInputViewSet *)v10 inputView];
    [(UIInputWindowControllerHosting *)hosting disableViewSizingConstraints:1 forNewView:v15];

    v16 = [(UIInputWindowController *)self _inputViewController];
    v17 = v16;
    if (!v16)
    {
      v16 = self;
    }

    v18 = [v16 _appearState];

    [(UIInputWindowController *)self invalidateInputView];
    v19 = [(UIInputViewSet *)self->_inputViewSet inputView];

    if (v19)
    {
      if ([(UIInputViewSet *)self->_inputViewSet isInputViewPlaceholder])
      {
        v20 = [(UIInputViewSet *)self->_inputViewSet inputView];
        [v20 refreshPlaceholder];

        [(UIInputWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
      }

      *&self->super.super.super._viewControllerFlags |= 0x100000uLL;
      v21 = [(UIInputViewSet *)self->_inputViewSet inputViewController];
      [(UIInputWindowController *)self set_inputViewController:v21];

      v22 = [(UIInputWindowController *)self _inputViewController];
      v23 = [v22 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v25 = [(UIInputWindowController *)self _inputViewController];
        v26 = [v25 parentViewController];
        [v26 invalidateInputView];
      }

      v27 = [(UIInputWindowController *)self _inputViewController];
      [(UIViewController *)self _addChildViewController:v27 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

      v28 = self->_hosting;
      v29 = [(UIInputWindowController *)self _inputViewController];
      v30 = [v29 view];
      [(UIInputWindowControllerHosting *)v28 setInputSetView:v30 forType:100];

      v31 = [(UIInputWindowController *)self _inputViewController];
      [v31 didMoveToParentViewController:self];

      [(UIInputWindowController *)self changeChild:1 toAppearState:v18 animated:0];
      *&self->super.super.super._viewControllerFlags &= ~0x100000uLL;
      v32 = [(UIInputWindowController *)self _inputViewController];
      v33 = [v32 view];
      v34 = [(UIViewController *)self view];
      v35 = [v34 _inheritedRenderConfig];
      [v33 _setRenderConfig:v35];
    }

    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __48__UIInputWindowController_changeToInputViewSet___block_invoke_2;
    v105[3] = &unk_1E70F3590;
    v105[4] = self;
    [UIView performWithoutAnimation:v105];
    v36 = 1;
  }

  v38 = [(UIInputWindowController *)self _inputAssistantViewController];
  v39 = [v38 view];
  v40 = [(UIInputViewSet *)v10 inputAssistantView];
  v41 = v40;
  if (v39 == v40)
  {
    [(UIViewController *)self _window];
    v43 = v42 = v9;
    v44 = [(UIInputViewSet *)v10 inputAssistantView];
    v45 = [v44 window];

    v46 = v43 == v45;
    v9 = v42;
    if (v46)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  [(UIInputWindowController *)self updateInputAssistantView:v10];
  v36 |= 2uLL;
LABEL_20:
  v47 = [(UIInputWindowController *)self _inputAccessoryViewController];
  v48 = [v47 view];
  v49 = [(UIInputViewSet *)v10 inputAccessoryView];

  if (v48 == v49)
  {
    v79 = [(UIInputWindowController *)self _inputAccessoryViewController];
    v80 = [v79 view];
    if (v80)
    {
      v81 = v80;
      v101 = v9;
      v82 = [(UIInputWindowController *)self _inputAccessoryViewController];
      v83 = [v82 view];
      v84 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:101];
      v85 = [v84 hostView];
      v86 = [v83 isDescendantOfView:v85];

      if ((v86 & 1) == 0)
      {
        v87 = self->_hosting;
        v88 = [(UIInputWindowController *)self _inputAccessoryViewController];
        v89 = [v88 view];
        [(UIInputWindowControllerHosting *)v87 setInputSetView:v89 forType:101];

        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __48__UIInputWindowController_changeToInputViewSet___block_invoke_4;
        v103[3] = &unk_1E70F3590;
        v103[4] = self;
        [UIView performWithoutAnimation:v103];
      }

      v9 = v101;
      v55 = v102;
    }

    else
    {

      v55 = v102;
    }
  }

  else
  {
    v50 = self->_hosting;
    v51 = [(UIInputViewSet *)v10 inputAccessoryView];
    [(UIInputWindowControllerHosting *)v50 disableViewSizingConstraints:4 forNewView:v51];

    v52 = [(UIInputWindowController *)self _inputAccessoryViewController];
    v53 = v52;
    if (!v52)
    {
      v52 = self;
    }

    v54 = [v52 _appearState];

    [(UIInputWindowController *)self invalidateInputAccessoryView];
    v55 = v102;
    if (!(*(v102 + 2))(v102))
    {
      v36 = 0;
      goto LABEL_50;
    }

    v56 = [(UIInputViewSet *)self->_inputViewSet inputAccessoryView];

    if (v56)
    {
      *&self->super.super.super._viewControllerFlags |= 0x100000uLL;
      v57 = [(UIInputViewSet *)self->_inputViewSet accessoryViewController];
      [(UIInputWindowController *)self set_inputAccessoryViewController:v57];

      v58 = [(UIInputWindowController *)self _inputAccessoryViewController];
      v59 = [v58 parentViewController];

      if (v59)
      {
        v100 = v9;
        v60 = [(UIInputWindowController *)self _inputAccessoryViewController];
        v61 = [v60 view];
        v62 = [v61 _responderWindow];
        v63 = [v62 _firstResponder];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (-[UIInputWindowController _inputAccessoryViewController](self, "_inputAccessoryViewController"), v64 = objc_claimAutoreleasedReturnValue(), [v64 view], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "containsView:", v63), v65, v64, (v66 & 1) == 0))
        {

          v63 = 0;
        }

        v67 = [(UIInputWindowController *)self _inputAccessoryViewController];
        v68 = [v67 parentViewController];

        objc_opt_class();
        v9 = v100;
        if (objc_opt_isKindOfClass())
        {
          [v68 invalidateInputAccessoryView];
        }

        [v63 _becomeFirstResponderWhenPossible];
        v69 = (*(v102 + 2))();

        if (!v69)
        {
          v36 = 0;
          v55 = v102;
          goto LABEL_50;
        }
      }

      v70 = [(UIInputWindowController *)self _inputAccessoryViewController];
      [(UIViewController *)self _addChildViewController:v70 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

      v71 = self->_hosting;
      v72 = [(UIInputWindowController *)self _inputAccessoryViewController];
      v73 = [v72 view];
      [(UIInputWindowControllerHosting *)v71 setInputSetView:v73 forType:101];

      v74 = [(UIInputWindowController *)self _inputAccessoryViewController];
      [v74 didMoveToParentViewController:self];

      [(UIInputWindowController *)self changeChild:4 toAppearState:v54 animated:0];
      *&self->super.super.super._viewControllerFlags &= ~0x100000uLL;
      v75 = [(UIInputWindowController *)self _inputAccessoryViewController];
      v76 = [v75 view];
      v77 = [(UIViewController *)self view];
      v78 = [v77 _inheritedRenderConfig];
      [v76 _setRenderConfig:v78];

      v55 = v102;
    }

    v36 |= 4uLL;
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __48__UIInputWindowController_changeToInputViewSet___block_invoke_3;
    v104[3] = &unk_1E70F3590;
    v104[4] = self;
    [UIView performWithoutAnimation:v104];
  }

  [(UIInputWindowController *)self updateInputSwitcherView:self->_inputViewSet];
  self->_isChangingInputViews = 0;
  [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:self->_inputViewSet];
  [(UIInputWindowController *)self updateKeyboardDockViewVisibility];
  if (v36 || [(UIInputWindowControllerHosting *)self->_hosting requiresConstraintUpdate])
  {
    [(UIInputWindowController *)self updateHostingConstraints];
  }

  [(UIInputWindowController *)self updateGestureRecognizers];
  v90 = [(UIInputViewSet *)v9 inputView];
  v91 = [v90 superview];

  if (!v91)
  {
    v92 = [(UIInputViewSet *)v9 inputView];
    [v92 _clearOverrideNextResponder];
  }

  v93 = [(UIInputViewSet *)v9 inputAssistantView];
  v94 = [v93 superview];

  if (!v94)
  {
    v95 = [(UIInputViewSet *)v9 inputAssistantView];
    [v95 _clearOverrideNextResponder];
  }

  v96 = [(UIInputViewSet *)v9 inputAccessoryView];
  v97 = [v96 superview];

  if (!v97)
  {
    v98 = [(UIInputViewSet *)v9 inputAccessoryView];
    [v98 _clearOverrideNextResponder];
  }

LABEL_50:

  return v36;
}

uint64_t __48__UIInputWindowController_changeToInputViewSet___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1440) inputAccessoryView];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 1440) inputAccessoryView];
    v5 = [v4 superview];

    if (!v5)
    {
      return 1;
    }
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 1440);

  return [v7 isEqual:v6];
}

void __48__UIInputWindowController_changeToInputViewSet___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1056) itemForPurpose:100];
  [v1 updateInputBackdropView];
}

void __48__UIInputWindowController_changeToInputViewSet___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1056) itemForPurpose:101];
  [v1 updateInputAccessoryBackdropView];
}

void __48__UIInputWindowController_changeToInputViewSet___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1056) itemForPurpose:101];
  [v1 updateInputAccessoryBackdropView];
}

- (void)setInputViewSet:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIInputWindowController *)self updateKeyboardSizeClass];
  v5 = [(UIInputWindowController *)self postRotationPlacement];

  if (!v5)
  {
    v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    if ([v8 handlingRemoteEvent])
    {
      v9 = [(UIInputWindowController *)self currentTransition];
      v10 = [v9 fromPlacement];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_71;
      }
    }

    else
    {
    }

    if ([v4 isEmpty])
    {
      if (!self->_inputViewSet)
      {
        goto LABEL_71;
      }
    }

    else
    {
      +[UIInputView _setupAppearanceIfNecessary];
    }

    v12 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Setting input views: %@", buf, 0xCu);
    }

    [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:v4];
    [(UIInputWindowController *)self updateInputSwitcherView:v4];
    v13 = [(UIInputViewSet *)self->_inputViewSet isEqual:v4];
    if (v13)
    {
      v48 = 0;
    }

    else
    {
      LODWORD(v48) = ([v4 isInputViewPlaceholder] & 1) != 0 || -[UIInputViewSet isInputViewPlaceholder](self->_inputViewSet, "isInputViewPlaceholder");
      if ([v4 isInputViewPlaceholder])
      {
        HIDWORD(v48) = ![(UIInputWindowController *)self shouldNotifyRemoteKeyboards];
      }

      else
      {
        HIDWORD(v48) = 0;
      }

      if ([(UIInputViewSet *)self->_inputViewSet isCustomInputView])
      {
        v47 = [v4 isCustomInputView] ^ 1;
LABEL_24:
        v14 = !v13;
        if (+[UIKeyboard usesInputSystemUI]&& [(UIInputViewSet *)self->_inputViewSet isInputViewPlaceholder])
        {
          v15 = [(UIInputViewSet *)self->_inputViewSet inputView];
          [v15 fixedSize];
          v17 = v16;
          [v15 refreshPlaceholder];
          [v15 fixedSize];
          v19 = v18;
          if (v17 != v18)
          {
            v20 = _UIInputWindowControllerLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v17;
              *&buf[12] = 2048;
              *&buf[14] = v19;
              _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Remote keyboard height changed from %.1f to %.1f", buf, 0x16u);
            }

            v14 = 1;
          }
        }

        v21 = [(UIInputWindowController *)self nextAnimationStyle];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v73 = __Block_byref_object_copy__131;
        v74 = __Block_byref_object_dispose__131;
        v75 = [(UIInputWindowController *)self currentPresentationPlacement];
        v22 = [(UIViewController *)self _window];
        v49 = [v22 windowScene];

        v23 = [v21 startPlacementForInputViewSet:v4 currentPlacement:*(*&buf[8] + 40) windowScene:v49];
        v24 = [v21 endPlacementForInputViewSet:v4 windowScene:v49];
        [v23 setOtherPlacement:v24];
        [v24 setOtherPlacement:v23];
        v25 = [(UIInputWindowController *)self currentTransition];
        v26 = [v25 toPlacement];
        v27 = [v24 isEqual:v26];

        v28 = v14 | v27 ^ 1;
        if ((v28 & 1) == 0)
        {
          v29 = [(UIInputWindowController *)self currentTransition];
          v30 = [v29 animationStyle];
          v31 = [v21 isEqual:v30];

          if (v31)
          {
            v32 = _UIInputWindowControllerLogger();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v66) = 0;
              _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEFAULT, "Skipping changing input views", &v66, 2u);
            }

            goto LABEL_70;
          }
        }

        if ([*(*&buf[8] + 40) isUndocked] && (objc_msgSend(v24, "isUndocked") & 1) == 0)
        {
          v33 = [v24 showsInputViews] ^ 1;
        }

        else
        {
          v33 = 0;
        }

        if ([(UIInputViewSet *)self->_inputViewSet isEqual:v4])
        {
          v34 = 0;
        }

        else
        {
          v34 = [*(*&buf[8] + 40) isEqual:v23] ^ 1;
        }

        v35 = [*(*&buf[8] + 40) subPlacements];
        v36 = [v24 subPlacements];
        if (v35 == v36)
        {
          v37 = v34;
        }

        else
        {
          v37 = 1;
        }

        v38 = v37 == 0;

        if (!v38)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __43__UIInputWindowController_setInputViewSet___block_invoke;
            v67[3] = &unk_1E7116648;
            v67[4] = self;
            v68 = v4;
            v71 = buf;
            v69 = v23;
            v70 = v24;
            [UIView performWithoutAnimation:v67];
            [(UIInputWindowControllerHosting *)self->_hosting setRequiresConstraintUpdate:1];

            v28 = 1;
          }
        }

        objc_initWeak(&v66, self);
        [(UIInputWindowController *)self setTransientInputViewSet:v4];
        v39 = [*(*&buf[8] + 40) notificationsForTransitionToPlacement:v24];
        if ((v39 == 3) | (HIDWORD(v48) | v33) & 1)
        {
          if (HIDWORD(v48))
          {
            [v24 setDirty];
          }

          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_3;
          v63[3] = &unk_1E70F2F80;
          objc_copyWeak(&v65, &v66);
          v64 = v4;
          [(UIInputWindowController *)self setPlacement:v24 starting:0 completion:v63];

          objc_destroyWeak(&v65);
          goto LABEL_69;
        }

        if (v39 != 1)
        {
          if (v39 == 2)
          {
            if ((-[UIInputViewSet isCustomInputView](self->_inputViewSet, "isCustomInputView") || ([*(*&buf[8] + 40) isFloating] & 1) != 0 || objc_msgSend(v23, "showsInputOrAssistantViews")) && (objc_msgSend(v4, "isNullInputView") & 1) == 0 && (objc_msgSend(v24, "showsKeyboard") & 1) == 0)
            {
              v43 = [(UIInputWindowController *)self currentTransition];
              v44 = [v43 toPlacement];
              v45 = [v44 isEqual:v24];

              v40 = (v45 | v47) & 1;
            }

            else
            {
              v40 = 1;
            }

            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_4;
            v59[3] = &unk_1E7108F18;
            v62 = v40;
            objc_copyWeak(&v61, &v66);
            v46 = v4;
            v60 = v46;
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_5;
            v55[3] = &unk_1E7108F18;
            objc_copyWeak(&v57, &v66);
            v58 = v40;
            v56 = v46;
            [(UIInputWindowController *)self setPlacement:v24 starting:v59 completion:v55];

            objc_destroyWeak(&v57);
            objc_destroyWeak(&v61);
            goto LABEL_69;
          }

          if (!v28)
          {
            [(UIInputWindowController *)self setTransientInputViewSet:0];
LABEL_69:
            objc_destroyWeak(&v66);
LABEL_70:

            _Block_object_dispose(buf, 8);
            goto LABEL_71;
          }
        }

        v41 = +[UIInputViewSetNotificationInfo info];
        [(UIInputWindowController *)self transferActiveNotificationInfoToInfo:v41];
        [v41 addKeyboardNotificationDebuggingInfo:@"setInputViewSet:"];
        if (v48)
        {
          [v41 forceNotification];
          [v41 setForceNotification:1];
        }

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_7;
        v50[3] = &unk_1E7116670;
        objc_copyWeak(&v54, &v66);
        v51 = v24;
        v52 = v4;
        v42 = v41;
        v53 = v42;
        [(UIInputWindowController *)self performOperations:v50 withTemplateNotificationInfo:v42];

        objc_destroyWeak(&v54);
        goto LABEL_69;
      }
    }

    LOBYTE(v47) = 0;
    goto LABEL_24;
  }

  [(UIInputWindowController *)self setPostRotationInputViewSet:v4];
  v6 = [(UIInputWindowController *)self initialNotificationInfo];
  [(UIInputWindowController *)self setPostRotationInputViewNotificationInfo:v6];

  v7 = [(UIInputWindowController *)self postRotationInputViewNotificationInfo];
  [v7 setShouldSendInClient:1];

LABEL_71:
}

void __43__UIInputWindowController_setInputViewSet___block_invoke(uint64_t a1)
{
  [*(a1 + 32) changeToInputViewSet:*(a1 + 40)];
  v2 = *(*(*(a1 + 64) + 8) + 40);
  v3 = [*(a1 + 32) currentPresentationPlacement];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 48) subPlacements];
  v7 = [v6 firstObject];
  if ([v7 isEqual:*(a1 + 56)])
  {

LABEL_4:
    [*(a1 + 32) _updatePlacementWithPlacement:*(a1 + 48)];
    goto LABEL_5;
  }

  v8 = [*(*(*(a1 + 64) + 8) + 40) isEqual:*(a1 + 48)];

  if ((v8 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_2;
  v10[3] = &unk_1E70F3590;
  v10[4] = v9;
  [v9 ignoreLayoutNotifications:v10];
  [*(*(a1 + 32) + 1056) _updateBackdropViews];
}

void __43__UIInputWindowController_setInputViewSet___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _window];
  [v1 layoutIfNeeded];
}

void __43__UIInputWindowController_setInputViewSet___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained changeToInputViewSet:*(a1 + 32)];
  if ([*(a1 + 32) isNullInputView])
  {
    v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v3 = [WeakRetained _window];
    [v2 completeMoveKeyboardForWindow:v3];
  }
}

void __43__UIInputWindowController_setInputViewSet___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained changeToInputViewSet:*(a1 + 32)];
  }
}

void __43__UIInputWindowController_setInputViewSet___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 48))
  {
    [WeakRetained[132] initializeTranslateGestureRecognizerIfNecessary];
  }

  else
  {
    [WeakRetained changeToInputViewSet:*(a1 + 32)];
  }

  [v3[132] updateEmptyHeightConstraint];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_6;
  v4[3] = &unk_1E70F3590;
  v4[4] = v3;
  [UIView performWithoutAnimation:v4];
}

void __43__UIInputWindowController_setInputViewSet___block_invoke_7(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_8;
  v6[3] = &unk_1E7101A88;
  objc_copyWeak(&v9, a1 + 7);
  v7 = a1[5];
  v8 = a1[6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_10;
  v4[3] = &unk_1E70F3590;
  v5 = a1[4];
  [WeakRetained setPlacement:v3 starting:v6 completion:v4];

  objc_destroyWeak(&v9);
}

void __43__UIInputWindowController_setInputViewSet___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 40) setChangedAccessoryOnly:{objc_msgSend(WeakRetained, "changeToInputViewSet:", *(a1 + 32)) == 4}];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__UIInputWindowController_setInputViewSet___block_invoke_9;
  v3[3] = &unk_1E70F35B8;
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  [UIView performWithoutAnimation:v3];
}

uint64_t __43__UIInputWindowController_setInputViewSet___block_invoke_9(uint64_t a1)
{
  if ([*(a1 + 32) changedAccessoryOnly])
  {
    v2 = [*(a1 + 40) view];
    [v2 layoutIfNeeded];
  }

  v3 = *(*(a1 + 40) + 1056);

  return [v3 _updateBackdropViews];
}

uint64_t __43__UIInputWindowController_setInputViewSet___block_invoke_10(uint64_t a1)
{
  result = [*(a1 + 32) isFloating];
  if ((result & 1) == 0)
  {

    return [UIView performWithoutAnimation:&__block_literal_global_651];
  }

  return result;
}

- (void)setPlacement:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__UIInputWindowController_setPlacement___block_invoke;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, &location);
  [(UIInputWindowController *)self setPlacement:v4 starting:v5 completion:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __40__UIInputWindowController_setPlacement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained[132] allHostingItems];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__UIInputWindowController_setPlacement___block_invoke_2;
  v4[3] = &unk_1E7116698;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 enumerateObjectsUsingBlock:v4];

  objc_destroyWeak(&v5);
}

void __40__UIInputWindowController_setPlacement___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dockView];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained updateHostingConstraints];
    [WeakRetained updateKeyboardDockViewVisibility];
  }
}

- (void)setRotationAwarePlacement:(id)a3
{
  v5 = a3;
  v4 = [(UIInputWindowController *)self postRotationPlacement];

  if (v4)
  {
    [(UIInputWindowController *)self setPostRotationPlacement:v5];
  }

  else
  {
    [(UIInputWindowController *)self setPlacement:v5];
  }
}

- (void)setInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5
{
  v6 = [UIInputViewSet inputSetWithInputView:a3 accessoryView:a4 assistantView:a5];
  [(UIInputWindowController *)self setInputViewSet:v6];
}

- (id)inputViewSnapshotOfView:(id)a3 afterScreenUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIViewController *)self view];
  [v6 bounds];
  [v7 convertRect:v6 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(UIViewController *)self view];
  v17 = [v16 resizableSnapshotViewFromRect:v4 afterScreenUpdates:v9 withCapInsets:{v11, v13, v15, 0.0, 0.0, 0.0, 0.0}];

  [v17 setUserInteractionEnabled:0];
  v18 = [(UIViewController *)self view];
  v19 = [v18 window];
  v20 = [v19 screen];
  [v20 scale];
  [v17 setContentScaleFactor:?];

  return v17;
}

- (CGRect)_visibleFrame
{
  [(UIInputWindowController *)self _visibleFrameInRemoteKeyboardWindow:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_visibleFrameInRemoteKeyboardWindow:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
  [v5 notificationsFrame];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  if (CGRectGetHeight(v49) == 0.0 && +[UIKeyboard isInputUIProcess](UIKeyboard, "isInputUIProcess") && !+[UIKeyboard inputUIOOP])
  {
    v10 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    if ([v10 keyboardVisible] && (objc_msgSend(v10, "remoteKeyboardUndocked") & 1) == 0 && !objc_msgSend(v10, "isFloating"))
    {
      [v10 keyboardPosition];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = [(UIViewController *)self _window];
      [v44 frame];
      v46 = v45;
      [v10 keyboardPosition];
      v48 = v46 - v47;
      v53.origin.x = v37;
      v53.origin.y = v39;
      v53.size.width = v41;
      v53.size.height = v43;
      v54 = CGRectOffset(v53, 0.0, v48);
      v30 = v54.origin.x;
      v29 = v54.origin.y;
      v27 = v54.size.width;
      v31 = v54.size.height;

      goto LABEL_11;
    }
  }

  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v3 viewInRemoteKeyboardWindow:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIViewController *)self view];
  v20 = [v19 window];
  v21 = [v20 screen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v50.origin.x = v12;
  v50.origin.y = v14;
  v50.size.width = v16;
  v50.size.height = v18;
  v56.origin.x = v23;
  v56.origin.y = v25;
  v56.size.width = v27;
  v56.size.height = v29;
  if (CGRectIntersectsRect(v50, v56))
  {
    v51.origin.x = v12;
    v51.origin.y = v14;
    v51.size.width = v16;
    v51.size.height = v18;
    v57.origin.x = v23;
    v57.origin.y = v25;
    v57.size.width = v27;
    v57.size.height = v29;
    v52 = CGRectIntersection(v51, v57);
    v30 = v52.origin.x;
    v29 = v52.origin.y;
    v27 = v52.size.width;
    v31 = v52.size.height;
  }

  else
  {
    v30 = 0.0;
    v31 = 0.0;
  }

LABEL_11:

  v32 = v30;
  v33 = v29;
  v34 = v27;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)visibleFrame
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 containerRootController];

  if (v4 == self)
  {
    [(UIInputWindowController *)self _visibleFrame];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  else
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 containerRootController];
    [v6 _visibleFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_visibleInputViewFrame
{
  v3 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
  [v3 fullInputViewAndAssistantFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v5, v7, v9, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(UIViewController *)self view];
  v21 = [v20 window];
  v22 = [v21 screen];
  [v22 bounds];
  v24 = v23;
  v26 = v25;
  width = v27;
  y = v29;

  v33.origin.x = v13;
  v33.origin.y = v15;
  v33.size.width = v17;
  v33.size.height = v19;
  v36.origin.x = v24;
  v36.origin.y = v26;
  v36.size.width = width;
  v36.size.height = y;
  if (CGRectIntersectsRect(v33, v36))
  {
    v34.origin.x = v13;
    v34.origin.y = v15;
    v34.size.width = v17;
    v34.size.height = v19;
    v37.origin.x = v24;
    v37.origin.y = v26;
    v37.size.width = width;
    v37.size.height = y;
    result = CGRectIntersection(v34, v37);
    y = result.origin.y;
    width = result.size.width;
  }

  else
  {
    result.origin.x = 0.0;
    result.size.height = 0.0;
  }

  v31 = y;
  v32 = width;
  result.size.width = v32;
  result.origin.y = v31;
  return result;
}

- (CGRect)visibleInputViewFrame
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 containerRootController];

  if (v4 == self)
  {
    [(UIInputWindowController *)self _visibleInputViewFrame];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  else
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 containerRootController];
    [v6 _visibleInputViewFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (BOOL)hasInputOrAssistantViewsOnScreen
{
  v3 = [(UIInputWindowController *)self inputViewSet];
  v4 = [v3 inputView];
  [v4 bounds];
  if (v5 <= 0.0)
  {

    v8 = 0;
LABEL_6:

    return v8;
  }

  v6 = [(UIInputWindowController *)self inputViewSet];
  v7 = [v6 isLocalMinimumHeightInputView];

  if ((v7 & 1) == 0)
  {
    v3 = [(UIInputWindowController *)self placement];
    v8 = [v3 showsInputOrAssistantViews];
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)isUndocked
{
  v2 = [(UIInputWindowController *)self placement];
  v3 = [v2 isUndocked];

  return v3;
}

- (BOOL)isOnScreenRotating
{
  v3 = [(UIInputWindowController *)self postRotationPlacement];
  if (v3)
  {
    v4 = [(UIInputWindowController *)self postRotationPlacement];
    v5 = [v4 showsInputViews];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)animateAccessoryViewVisibility:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  v7 = [(UIInputWindowController *)self _inputAccessoryView];
  v8 = v7;
  if (v7)
  {
    if (v5)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__UIInputWindowController_animateAccessoryViewVisibility_withDuration___block_invoke;
    v10[3] = &unk_1E70F36D0;
    v13 = v9;
    v11 = v7;
    v12 = self;
    [UIView animateWithDuration:50331648 delay:v10 options:0 animations:a4 completion:0.0];
  }
}

uint64_t __71__UIInputWindowController_animateAccessoryViewVisibility_withDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 1056);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__UIInputWindowController_animateAccessoryViewVisibility_withDuration___block_invoke_2;
  v4[3] = &__block_descriptor_40_e31_v16__0__UIKBInputBackdropView_8l;
  v4[4] = *(a1 + 48);
  return [v2 performForInputAccessoryBackdropViews:v4];
}

- (void)setFullScreenPresentationAssertion:(id)a3
{
  v4 = a3;
  fullScreenPresentationAssertion = self->_fullScreenPresentationAssertion;
  if (fullScreenPresentationAssertion)
  {
    v6 = fullScreenPresentationAssertion == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [(SBSAssertion *)fullScreenPresentationAssertion invalidate];
    fullScreenPresentationAssertion = self->_fullScreenPresentationAssertion;
  }

  self->_fullScreenPresentationAssertion = v4;
}

- (void)presentationTransitionWillBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v6 visualModeManager];

    v8 = [v5 presentingViewController];
    if (v8 == self && [v7 windowingModeEnabled])
    {
      v9 = [v7 shouldShowWithinAppWindow];

      if ((v9 & 1) == 0 && SpringBoardServicesLibraryCore() && getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc())
      {
        v10 = dispatch_get_global_queue(25, 0);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __59__UIInputWindowController_presentationTransitionWillBegin___block_invoke;
        v11[3] = &unk_1E70F5A28;
        objc_copyWeak(&v12, &location);
        dispatch_async(v10, v11);

        objc_destroyWeak(&v12);
      }
    }

    else
    {
    }

    objc_destroyWeak(&location);
  }
}

void __59__UIInputWindowController_presentationTransitionWillBegin___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __59__UIInputWindowController_presentationTransitionWillBegin___block_invoke_2;
  v8 = &unk_1E71166E0;
  objc_copyWeak(&v9, (a1 + 32));
  v1 = &v5;
  SBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc = getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc();
  if (SBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc)
  {
    SBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc(@"Presenting in keyboard window outside app scene", v1);

    objc_destroyWeak(&v9);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void UIKBSBSAcquireFocusPreventingFullScreenPresentationAssertion(NSString *__strong, __strong _AssertionHandlerBlock)"}];
    [v3 handleFailureInFunction:v4 file:@"UIInputWindowController.m" lineNumber:95 description:{@"%s", dlerror(), v5, v6, v7, v8}];

    __break(1u);
  }
}

void __59__UIInputWindowController_presentationTransitionWillBegin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__UIInputWindowController_presentationTransitionWillBegin___block_invoke_3;
  v5[3] = &unk_1E70F2F80;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __59__UIInputWindowController_presentationTransitionWillBegin___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setFullScreenPresentationAssertion:v3];
  }

  else
  {
    [v3 invalidate];
  }
}

- (void)setInterfaceAutorotationDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self view];
  v6 = [v5 window];
  v7 = v6;
  if (v3)
  {
    [v6 beginDisablingInterfaceAutorotation];
  }

  else
  {
    [v6 endDisablingInterfaceAutorotation];
  }

  v8 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:3];
  [v8 setInterfaceAutorotationDisabled:v3];
}

- (void)setPlacementChangeDisabled:(BOOL)a3 withPlacement:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "setPlacementChangeDisabled: %d, placement: %@ (self: %@)", buf, 0x1Cu);
  }

  if (!v4)
  {
    self->_disablePlacementChanges = 0;
  }

  if (![(UIInputWindowController *)self isRotating])
  {
    if (self->_disableInRotating)
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __68__UIInputWindowController_setPlacementChangeDisabled_withPlacement___block_invoke;
      v11 = &unk_1E70F35B8;
      v12 = self;
      v13 = v6;
      [UIView performWithoutAnimation:&v8];

      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [(UIInputWindowController *)self setPlacement:v6];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    self->_disablePlacementChanges = 1;
    self->_disableInRotating = [(UIInputWindowController *)self isRotating:v8];
    goto LABEL_13;
  }

  [(UIInputWindowController *)self setPostRotationPlacement:v6];
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  self->_disableInRotating = 0;
LABEL_13:
}

- (void)transferPlacementStateToInputWindowController:(id)a3
{
  v20 = a3;
  v4 = self->_inputViewSet;
  v5 = self->_placement;
  if ([(UIInputWindowController *)self isTransitioning])
  {
    v6 = [(UIInputWindowController *)self transientInputViewSet];

    v7 = [(UIInputWindowController *)self currentTransition];
    v8 = [v7 fromPlacement];

    v5 = v8;
    v4 = v6;
  }

  if ([(UIInputViewSet *)v4 isInputViewPlaceholder])
  {
    v9 = [(UIInputViewSet *)v4 inputView];
    v10 = [v9 fallbackView];
    v11 = [(UIInputViewSet *)v4 inputAccessoryView];
    v12 = [_UIRemoteKeyboardPlaceholderView placeholderForView:v11];
    v13 = [v9 fallbackView];
    if (v13)
    {
      v14 = [v9 associatedView];
    }

    else
    {
      v14 = 0;
    }

    v18 = [UIInputViewSet inputSetWithInputView:v10 accessoryView:v12 assistantView:v14];

    if (v13)
    {
    }

    v15 = [(UIViewController *)self _window];
    v16 = [v15 windowScene];
    [UIPeripheralHost endPlacementForInputViewSet:v18 windowScene:v16];
    v5 = v17 = v5;
  }

  else
  {
    v9 = [(UIInputViewSet *)v4 inputView];
    v15 = [_UIRemoteKeyboardPlaceholderView placeholderForView:v9];
    v16 = [(UIInputViewSet *)v4 inputAccessoryView];
    v17 = [_UIRemoteKeyboardPlaceholderView placeholderForView:v16];
    v18 = [UIInputViewSet inputSetWithInputView:v15 accessoryView:v17];
  }

  [v20 changeToInputViewSet:v18];
  [v20 setPlacement:v5 quietly:1 animated:0 generateSplitNotification:0];
  if (self->_disablePlacementChanges)
  {
    if ([(UIInputWindowController *)self isRotating])
    {
      [(UIInputWindowController *)self postRotationPlacement];
    }

    else
    {
      [(UIInputWindowController *)self placement];
    }
    v19 = ;
    [v20 setPlacementChangeDisabled:1 withPlacement:v19];
  }
}

- (void)candidateBarWillChangeHeight:(double)a3 withDuration:(double)a4
{
  v7 = [(UIInputWindowController *)self placement];
  v8 = [v7 isUndocked];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__UIInputWindowController_candidateBarWillChangeHeight_withDuration___block_invoke;
    v9[3] = &unk_1E70F32F0;
    v9[4] = self;
    *&v9[5] = a3;
    [UIView animateWithDuration:50331648 delay:v9 options:&__block_literal_global_662 animations:a4 completion:0.0];
  }
}

void __69__UIInputWindowController_candidateBarWillChangeHeight_withDuration___block_invoke(uint64_t a1)
{
  v2 = -*(a1 + 40);
  v3 = [*(a1 + 32) placement];
  [v3 setExtendedHeight:v2];

  v4 = *(a1 + 32);
  v5 = [v4 placement];
  [v4 updateVisibilityConstraintsForPlacement:v5];

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

- (void)cancelCurrentTransition
{
  v3 = [(UIInputWindowController *)self currentTransition];

  if (v3)
  {
    [(UIInputWindowController *)self setInputViewsHidden:1];
    v4 = [(UIInputWindowController *)self currentTransition];
    [v4 setCancelled:1];

    v5 = [(UIInputWindowController *)self currentTransition];
    v6 = [v5 animationStyle];
    [v6 cancelInterruptibleAnimations];

    v7 = [(UIInputWindowController *)self currentTransition];
    v8 = [v7 fromPlacement];
    [(UIInputWindowController *)self updateToPlacement:v8 withNormalAnimationsAndNotifications:0];

    [(UIInputWindowController *)self setInputViewsHidden:0];
  }
}

- (BOOL)isTransitionStarted
{
  v3 = [(UIInputWindowController *)self currentTransition];
  if (v3)
  {
    v4 = [(UIInputWindowController *)self currentTransition];
    v5 = [v4 animationState] > 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIInputViewSetPlacement)expectedPlacement
{
  v3 = [(UIInputWindowController *)self currentTransition];
  if (v3)
  {
    v4 = [(UIInputWindowController *)self currentTransition];
    v5 = [v4 toPlacement];
  }

  else
  {
    v5 = [(UIInputWindowController *)self placement];
  }

  return v5;
}

@end