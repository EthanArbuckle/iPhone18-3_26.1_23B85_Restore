@interface UIInputWindowController
+ (BOOL)keyboardDotDotDotEnabled;
+ (BOOL)numberpadPopoverEnabled;
+ (BOOL)useMetronomeTracking;
- (BOOL)_shouldPresentViewController:(id)controller withPresentationController:(id)presentationController;
- (BOOL)_useLiveRotation;
- (BOOL)currentControllerShouldUpdateKeyboardLayoutGuide;
- (BOOL)hasInputOrAssistantViewsOnScreen;
- (BOOL)isDragging;
- (BOOL)isHostingView:(id)view;
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
- (BOOL)mergeTransitionIfNecessaryWithTransition:(id)transition;
- (BOOL)needsConvertToSceneCoordinates;
- (BOOL)shouldBeginTransitionForController:(id)controller;
- (BOOL)shouldPostNotification:(unint64_t)notification withInfo:(id)info;
- (BOOL)sizesWindowToScene;
- (BOOL)trackingElementsShouldUseActualFrame;
- (BOOL)updateGuideBackdropRenderConfig:(id)config animated:(BOOL)animated;
- (CGPoint)_centerForOrientation:(int64_t)orientation;
- (CGRect)_boundsForOrientation:(int64_t)orientation;
- (CGRect)_defaultInitialViewFrame;
- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation;
- (CGRect)_visibleFrame;
- (CGRect)_visibleFrameInRemoteKeyboardWindow:(BOOL)window;
- (CGRect)_visibleInputViewFrame;
- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)space;
- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)space viewInRemoteKeyboardWindow:(BOOL)window;
- (CGRect)transitioningFrame;
- (CGRect)visibleFrame;
- (CGRect)visibleInputViewFrame;
- (CGSize)keyboardSizeFromExternalUpdate;
- (CGSize)sizeForInputViewController:(id)controller inputView:(id)view;
- (CGSize)sizeForInputViewController:(id)controller inputView:(id)view includeAssistantBar:(BOOL)bar;
- (UIEdgeInsets)_inputViewPadding;
- (UIEdgeInsets)_viewSafeAreaInsetsFromScene;
- (UIInputViewSetPlacement)animationAwarePlacement;
- (UIInputViewSetPlacement)expectedPlacement;
- (UIInputViewSetPlacement)placementIgnoringRotation;
- (UIInputWindowController)initWithNibName:(id)name bundle:(id)bundle;
- (UIKeyboardPathEffectView)_pathEffectView;
- (UIView)_inputAccessoryView;
- (UIView)_inputAssistantView;
- (UIView)_inputView;
- (UIView)bottomEdgeView;
- (id)_infoForBackdropMatchMoveForLayer:(id)layer;
- (id)_screenCoordinateSpace;
- (id)convertUserInfo:(id)info;
- (id)currentPresentationPlacement;
- (id)infoForAnimationStyle:(id)style;
- (id)initialNotificationInfo;
- (id)inputViewSnapshotOfView:(id)view afterScreenUpdates:(BOOL)updates;
- (id)nextAnimationStyle;
- (id)remoteNotificationInfo;
- (id)transitionGuideBackdrop:(BOOL)backdrop;
- (id)viewForTransitionScreenSnapshot;
- (int)appearStateForChild:(unint64_t)child placement:(id)placement start:(BOOL)start;
- (int64_t)animationTypeForCurrentTransition;
- (int64_t)keyboardOrientation;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)visualStateFromPlacement:(id)placement;
- (unint64_t)_clipCornersOfView:(id)view;
- (unint64_t)changeToInputViewSet:(id)set;
- (unint64_t)supportedInterfaceOrientations;
- (void)_collectTransitionTimeStatistics:(unint64_t)statistics withStart:(id)start;
- (void)_forcePreLayoutHostViewFrame;
- (void)_updateContentOverlayInsetsForSelfAndChildren;
- (void)_updatePlacementWithPlacement:(id)placement;
- (void)addPendingActivity:(id)activity;
- (void)animateAccessoryViewVisibility:(BOOL)visibility withDuration:(double)duration;
- (void)animateKeyboardTrackingElementsWithNotificationInfo:(id)info notificationType:(unint64_t)type updateForStart:(BOOL)start updateForEnd:(BOOL)end;
- (void)cancelCurrentTransition;
- (void)candidateBarWillChangeHeight:(double)height withDuration:(double)duration;
- (void)chainPlacementsIfNecessaryFrom:(id)from toPlacement:(id)placement transition:(id)transition completion:(id)completion;
- (void)changeChild:(unint64_t)child toAppearState:(int)state animated:(BOOL)animated;
- (void)changeGuideAnimationOptions:(unint64_t)options duration:(double)duration;
- (void)changeGuideAnimationState:(BOOL)state;
- (void)checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:(BOOL)update layoutSubviews:(BOOL)subviews;
- (void)clearExternalTrackingInfo;
- (void)clearKeyboardSnapshot;
- (void)clearRotationState;
- (void)dealloc;
- (void)didEndTransitionWithController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)didSnapshot;
- (void)didSuspend:(id)suspend;
- (void)dismissViewController:(id)controller;
- (void)finishSplitTransition;
- (void)flushPendingActivities;
- (void)generateNotificationsForCompactAssistantFlickGestureCompletion:(id)completion;
- (void)generateNotificationsForStart:(BOOL)start;
- (void)hideGuideBackdrop:(BOOL)backdrop;
- (void)hostAppSceneBoundsChanged;
- (void)hostViewDidEnterBackground;
- (void)hostViewWillDisappear;
- (void)hostViewWillenterForeground;
- (void)hostedOriginDidUpdate;
- (void)ignoreLayoutNotifications:(id)notifications;
- (void)invalidateInputAccessoryView;
- (void)invalidateInputAssistantView;
- (void)invalidateInputView;
- (void)keyboardDismissWithInfo:(id)info;
- (void)keyboardIsDocking:(BOOL)docking;
- (void)keyboardMoveOfType:(unint64_t)type info:(id)info;
- (void)keyboardMoveWithInfo:(id)info;
- (void)keyboardMovedToScreenPosition:(CGRect)position animated:(BOOL)animated;
- (void)loadView;
- (void)moveFromPlacement:(id)placement toPlacement:(id)toPlacement starting:(id)starting completion:(id)completion;
- (void)moveKeyboardLayoutGuideOffscreen;
- (void)performOperations:(id)operations withAnimationStyle:(id)style;
- (void)performOperations:(id)operations withTemplateNotificationInfo:(id)info;
- (void)performWithSafeTransitionFrames:(id)frames;
- (void)performWithoutAppearanceCallbacks:(id)callbacks;
- (void)performWithoutCallbacksOrNotifications:(id)notifications;
- (void)popAnimationStyle;
- (void)postEndNotifications:(unint64_t)notifications withInfo:(id)info;
- (void)postNotificationName:(id)name userInfo:(id)info;
- (void)postStartNotifications:(unint64_t)notifications withInfo:(id)info;
- (void)postTransitionEndNotification;
- (void)postValidatedEndNotifications:(unint64_t)notifications withInfo:(id)info;
- (void)postValidatedStartNotifications:(unint64_t)notifications withInfo:(id)info;
- (void)prepareForInputAssistant:(id)assistant animated:(BOOL)animated;
- (void)prepareForSplitTransition;
- (void)presentViewController:(id)controller;
- (void)presentationTransitionWillBegin:(id)begin;
- (void)pushAnimationStyle:(id)style;
- (void)refreshKeyboardLayoutGuideForce:(BOOL)force;
- (void)registerPowerLogEvent:(BOOL)event;
- (void)setDisableUpdateMaskForSecureTextEntry:(BOOL)entry;
- (void)setExclusiveTouch:(BOOL)touch;
- (void)setFullScreenPresentationAssertion:(id)assertion;
- (void)setHiddenCount:(int)count;
- (void)setInputView:(id)view accessoryView:(id)accessoryView assistantView:(id)assistantView;
- (void)setInputViewSet:(id)set;
- (void)setInputViewSet:(id)set forKeyboardAssistantBar:(id)bar;
- (void)setInputViewsHidden:(BOOL)hidden;
- (void)setInterfaceAutorotationDisabled:(BOOL)disabled;
- (void)setKeyboardWindowSnapshotOn:(BOOL)on;
- (void)setPlacement:(id)placement;
- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification;
- (void)setPlacementChangeDisabled:(BOOL)disabled withPlacement:(id)placement;
- (void)setRotationAwarePlacement:(id)placement;
- (void)syncToExistingAnimations;
- (void)takeKeyboardSnapshotIgnoringSpotlightCheck:(BOOL)check;
- (void)transferActiveNotificationInfoToInfo:(id)info;
- (void)transferPlacementStateToInputWindowController:(id)controller;
- (void)updateAmbiguousControlCenterActivationMargin:(unint64_t)margin withInfo:(id)info;
- (void)updateAppearStatesForPlacement:(id)placement start:(BOOL)start animated:(BOOL)animated;
- (void)updateBackdropRenderConfig:(id)config;
- (void)updateForKeyplaneChangeWithContext:(id)context;
- (void)updateGestureRecognizers;
- (void)updateGuideForOffscreenRotationWithDuration:(double)duration;
- (void)updateHostingConstraints;
- (void)updateInputAssistantView:(id)view;
- (void)updateInputAssistantViewForInputViewSet:(id)set;
- (void)updateInputSwitcherView:(id)view;
- (void)updateKeyboardDockViewVisibility;
- (void)updateKeyboardLayoutGuideForRefreshedPlaceholder;
- (void)updateKeyboardLayoutGuideForRotationOrientation:(int64_t)orientation;
- (void)updateKeyboardLayoutGuideWithFrame:(CGRect)frame layoutViews:(BOOL)views;
- (void)updateKeyboardPlacementForGuide:(id)guide;
- (void)updateKeyboardSizeClass;
- (void)updateOffscreenKeyboardLayoutGuide;
- (void)updateSizingFromRemoteChange;
- (void)updateSupportsDockViewController;
- (void)updateToPlacement:(id)placement withNormalAnimationsAndNotifications:(BOOL)notifications;
- (void)updateTrackingElementsWithOffset:(UIOffset)offset;
- (void)updateTrackingElementsWithSize:(CGSize)size;
- (void)updateVisibilityConstraintsForPlacement:(id)placement;
- (void)validateInputView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willBeginTransitionWithController:(id)controller;
- (void)willResume:(id)resume;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willSnapshot;
@end

@implementation UIInputWindowController

- (void)clearKeyboardSnapshot
{
  keyboardSnapshot = self->_keyboardSnapshot;
  if (keyboardSnapshot)
  {
    superview = [(UIView *)keyboardSnapshot superview];
    [superview removeFromSuperview];

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

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v4 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"EnableMetronome"];

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
    _window = [(UIViewController *)self _window];
    if (objc_opt_respondsToSelector())
    {
      _window2 = [(UIViewController *)self _window];
      isForViewService = [_window2 isForViewService];

      if (isForViewService)
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
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  if (window && [(UIInputViewSetPlacement *)self->_placement requiresWindowBasedSafeAreaInsets])
  {
    [window bounds];
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
  view = [(UIViewController *)self view];
  [view bounds];
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
    allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke;
    v19[3] = &unk_1E7116458;
    v19[4] = self;
    [allHostingItems enumerateObjectsUsingBlock:v19];

    currentTransition = [(UIInputWindowController *)self currentTransition];
    v5 = currentTransition != 0;

    if (currentTransition)
    {
      currentTransition2 = [(UIInputWindowController *)self currentTransition];
      v7 = [currentTransition2 notifications] == 0;
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
      currentTransition3 = [(UIInputWindowController *)self currentTransition];
      notifications = [currentTransition3 notifications];
      currentTransition4 = [(UIInputWindowController *)self currentTransition];
      notificationInfo = [currentTransition4 notificationInfo];
      [(UIInputWindowController *)self updateAmbiguousControlCenterActivationMargin:notifications withInfo:notificationInfo];
    }

    if ([(UIInputViewSetNotificationInfo *)self->_rotationInfo forceNotification])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__UIInputWindowController_viewDidLayoutSubviews__block_invoke_517;
      v15[3] = &unk_1E70F3590;
      v15[4] = self;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v15];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      rotationUserInfo = [(UIInputViewSetNotificationInfo *)self->_rotationInfo rotationUserInfo];
      [defaultCenter postNotificationName:@"_UIKeyboardInternalWillRotateNotification" object:self userInfo:rotationUserInfo];

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
    view = [(UIViewController *)self view];
    _inheritedRenderConfig = [view _inheritedRenderConfig];
    if ([_inheritedRenderConfig lightKeyboard])
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
  _window = [(UIViewController *)self _window];
  if ([_window _isTextEffectsWindow] && (objc_msgSend(_window, "_isHostedInAnotherProcess") & 1) != 0)
  {
    [_window hostedSafeInsets];
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
  windowScene = [v3 windowScene];
  v5 = windowScene;
  if (windowScene && [windowScene activationState] == -1 || (objc_msgSend(v3, "_orientationTransactionToken"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    supportedInterfaceOrientations = 30;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIInputWindowController;
    supportedInterfaceOrientations = [(UIApplicationRotationFollowingController *)&v9 supportedInterfaceOrientations];
  }

  return supportedInterfaceOrientations;
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
  allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  [allHostingItems enumerateObjectsUsingBlock:&__block_literal_global_640];
}

- (UIView)bottomEdgeView
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:4];
  hostView = [v2 hostView];

  return hostView;
}

- (UIView)_inputAccessoryView
{
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputAccessoryView = [inputViewSet inputAccessoryView];

  return inputAccessoryView;
}

- (UIView)_inputAssistantView
{
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputAssistantView = [inputViewSet inputAssistantView];

  return inputAssistantView;
}

- (UIView)_inputView
{
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputView = [inputViewSet inputView];

  return inputView;
}

- (BOOL)isRotating
{
  postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];
  v3 = postRotationPlacement != 0;

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
  scrollKeyboardActive = [v2 scrollKeyboardActive];

  return scrollKeyboardActive;
}

- (id)initialNotificationInfo
{
  templateNotificationInfo = [(UIInputWindowController *)self templateNotificationInfo];
  v3 = templateNotificationInfo;
  if (templateNotificationInfo)
  {
    v4 = templateNotificationInfo;
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

  view = [(UIViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(UIViewController *)self view];
  [view2 setClipsToBounds:1];
}

- (BOOL)isOnScreen
{
  placement = [(UIInputWindowController *)self placement];
  showsInputViews = [placement showsInputViews];

  return showsInputViews;
}

- (BOOL)isTranslating
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
  splitKeyboardController = [v2 splitKeyboardController];
  isTranslating = [splitKeyboardController isTranslating];

  return isTranslating;
}

- (void)invalidateInputAssistantView
{
  _inputAssistantViewController = [(UIInputWindowController *)self _inputAssistantViewController];
  view = [_inputAssistantViewController view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIInputWindowController_invalidateInputAssistantView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [view _preserveResponderOverridesWhilePerforming:v5];
}

- (void)updateGestureRecognizers
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return;
  }

  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputView = [inputViewSet inputView];
  if (!inputView)
  {

    goto LABEL_8;
  }

  v5 = inputView;
  inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
  isInputViewPlaceholder = [inputViewSet2 isInputViewPlaceholder];

  if (isInputViewPlaceholder)
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
  view = [(UIViewController *)self view];
  [(UIKeyboardFloatingTransitionController *)v11 addGestureRecognizersToView:view];
  v12 = view;
LABEL_10:
}

- (void)updateSupportsDockViewController
{
  v21 = *MEMORY[0x1E69E9840];
  supportsDockViewController = self->_supportsDockViewController;
  self->_supportsDockViewController = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  v4 = +[UIKeyboardImpl activeInstance];
  window = [v4 window];
  if (window)
  {
  }

  else
  {
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v6 currentInputMode];
    isExtensionInputMode = [currentInputMode isExtensionInputMode];

    if (!isExtensionInputMode)
    {
      goto LABEL_14;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v10 = [allHostingItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        [*(*(&v16 + 1) + 8 * v13++) updateSupportsDockViewController];
      }

      while (v11 != v13);
      v11 = [allHostingItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (supportsDockViewController != self->_supportsDockViewController)
  {
    [(UIInputWindowController *)self updateKeyboardDockViewVisibility];
    view = [(UIViewController *)self view];
    v15 = [v4 isDescendantOfView:view];

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
  visualModeManager = [v2 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  return windowingModeEnabled;
}

- (BOOL)currentControllerShouldUpdateKeyboardLayoutGuide
{
  if (([objc_opt_class() useMetronomeTracking] & 1) == 0)
  {
    _window = [(UIViewController *)self _window];
    v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    showsInvisibleKeyboardBehindWTUI = [v5 showsInvisibleKeyboardBehindWTUI];

    if (showsInvisibleKeyboardBehindWTUI)
    {
      _isRemoteKeyboardWindow = [_window _isRemoteKeyboardWindow];
    }

    else
    {
      if (+[UIKeyboard usesInputSystemUI])
      {
        v8 = 0;
      }

      else
      {
        _window2 = [(UIViewController *)self _window];
        if ([_window2 _isRemoteKeyboardWindow])
        {
          v8 = [_window _isHostedInAnotherProcess] ^ 1;
        }

        else
        {
          v8 = 0;
        }
      }

      if (([_window _isTextEffectsWindowNotificationOwner] & 1) == 0 && !v8)
      {
        v3 = 0;
LABEL_16:

        return v3;
      }

      _isRemoteKeyboardWindow = [_window isForViewService];
    }

    v3 = _isRemoteKeyboardWindow ^ 1;
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

    _inputViewController = [(UIInputWindowController *)self _inputViewController];
    [(UIViewController *)self setOverrideTraitCollection:v3 forChildViewController:_inputViewController];

    _inputAssistantViewController = [(UIInputWindowController *)self _inputAssistantViewController];
    [(UIViewController *)self setOverrideTraitCollection:v3 forChildViewController:_inputAssistantViewController];

    sizeClassCollectionOverride = self->_sizeClassCollectionOverride;
    self->_sizeClassCollectionOverride = v3;
  }
}

- (UIInputViewSetPlacement)animationAwarePlacement
{
  placementDuringAnimation = [(UIInputWindowController *)self placementDuringAnimation];
  v4 = placementDuringAnimation;
  if (placementDuringAnimation)
  {
    placementIgnoringRotation = placementDuringAnimation;
  }

  else
  {
    placementIgnoringRotation = [(UIInputWindowController *)self placementIgnoringRotation];
  }

  v6 = placementIgnoringRotation;

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
  currentTransition = [(UIInputWindowController *)self currentTransition];
  animationState = [currentTransition animationState];

  if (animationState < 3)
  {
    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    fromPlacement = [currentTransition2 fromPlacement];

    subPlacements = [fromPlacement subPlacements];
    firstObject = [subPlacements firstObject];

    if (!fromPlacement || ([fromPlacement showsInputViews] & 1) != 0 || objc_msgSend(firstObject, "showsInputViews"))
    {
      placement = [(UIInputWindowController *)self placement];

      fromPlacement = placement;
    }
  }

  else
  {
    fromPlacement = [(UIInputWindowController *)self placement];
  }

  return fromPlacement;
}

- (BOOL)isTransitioning
{
  currentTransition = [(UIInputWindowController *)self currentTransition];
  v3 = currentTransition != 0;

  return v3;
}

- (BOOL)isSplitting
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
  splitKeyboardController = [v2 splitKeyboardController];
  isSplitting = [splitKeyboardController isSplitting];

  return isSplitting;
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
  _inputViewController = [(UIInputWindowController *)self _inputViewController];
  view = [_inputViewController view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIInputWindowController_invalidateInputView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [view _preserveResponderOverridesWhilePerforming:v5];
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
  currentTransition = [(UIInputWindowController *)self currentTransition];
  fromPlacement = [currentTransition fromPlacement];
  isFloatingAssistantView = [fromPlacement isFloatingAssistantView];
  if ((isFloatingAssistantView & 1) != 0 || (-[UIInputWindowController currentTransition](self, "currentTransition"), v2 = objc_claimAutoreleasedReturnValue(), [v2 fromPlacement], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isCompactAssistantView")))
  {
    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    toPlacement = [currentTransition2 toPlacement];
    showsKeyboard = [toPlacement showsKeyboard];

    if ((isFloatingAssistantView & 1) == 0)
    {
    }

    if (showsKeyboard)
    {
      return 7;
    }
  }

  else
  {
  }

  currentTransition3 = [(UIInputWindowController *)self currentTransition];
  toPlacement2 = [currentTransition3 toPlacement];
  isCompactAssistantView = [toPlacement2 isCompactAssistantView];

  if (isCompactAssistantView)
  {
    return 14;
  }

  currentTransition4 = [(UIInputWindowController *)self currentTransition];
  fromPlacement2 = [currentTransition4 fromPlacement];
  if ([fromPlacement2 isFloating])
  {
  }

  else
  {
    currentTransition5 = [(UIInputWindowController *)self currentTransition];
    fromPlacement3 = [currentTransition5 fromPlacement];
    isHiddenForFloatingTransition = [fromPlacement3 isHiddenForFloatingTransition];

    if (!isHiddenForFloatingTransition)
    {
      goto LABEL_18;
    }
  }

  currentTransition6 = [(UIInputWindowController *)self currentTransition];
  toPlacement3 = [currentTransition6 toPlacement];
  if ([toPlacement3 isUndocked])
  {
    currentTransition7 = [(UIInputWindowController *)self currentTransition];
    toPlacement4 = [currentTransition7 toPlacement];
    isFloating = [toPlacement4 isFloating];

    if (!isFloating)
    {
      return 10;
    }
  }

  else
  {
  }

  currentTransition8 = [(UIInputWindowController *)self currentTransition];
  toPlacement5 = [currentTransition8 toPlacement];
  isFloating2 = [toPlacement5 isFloating];

  if (!isFloating2)
  {
    return 8;
  }

LABEL_18:
  currentTransition9 = [(UIInputWindowController *)self currentTransition];
  toPlacement6 = [currentTransition9 toPlacement];
  if ([toPlacement6 isFloating])
  {
  }

  else
  {
    currentTransition10 = [(UIInputWindowController *)self currentTransition];
    toPlacement7 = [currentTransition10 toPlacement];
    isHiddenForFloatingTransition2 = [toPlacement7 isHiddenForFloatingTransition];

    if (!isHiddenForFloatingTransition2)
    {
      return 0;
    }
  }

  currentTransition11 = [(UIInputWindowController *)self currentTransition];
  fromPlacement4 = [currentTransition11 fromPlacement];
  if ([fromPlacement4 isUndocked])
  {
    currentTransition12 = [(UIInputWindowController *)self currentTransition];
    fromPlacement5 = [currentTransition12 fromPlacement];
    isFloating3 = [fromPlacement5 isFloating];

    if (!isFloating3)
    {
      return 12;
    }
  }

  else
  {
  }

  currentTransition13 = [(UIInputWindowController *)self currentTransition];
  fromPlacement6 = [currentTransition13 fromPlacement];
  if ([fromPlacement6 isFloating])
  {
  }

  else
  {
    currentTransition14 = [(UIInputWindowController *)self currentTransition];
    fromPlacement7 = [currentTransition14 fromPlacement];
    showsInputViews = [fromPlacement7 showsInputViews];

    if (showsInputViews)
    {
      return 7;
    }
  }

  return 0;
}

- (BOOL)isTransitioningBetweenFloatingStates
{
  isTransitioning = [(UIKeyboardFloatingTransitionController *)self->_floatingTransitionController isTransitioning];
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
      isTransitioning = [(UIInputWindowController *)v5 isTransitioningBetweenFloatingStates];
    }
  }

  return isTransitioning;
}

- (void)syncToExistingAnimations
{
  v7 = +[UIWindow _applicationKeyWindow];
  view = [(UIViewController *)self view];
  window = [view window];

  if (v7)
  {
    v5 = window == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || v7 == window;
  if (!v6 && [v7 _requiresKeyboardPresentationFence])
  {
    +[UIWindow _synchronizeDrawing];
  }
}

- (void)invalidateInputAccessoryView
{
  _inputAccessoryViewController = [(UIInputWindowController *)self _inputAccessoryViewController];
  view = [_inputAccessoryViewController view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIInputWindowController_invalidateInputAccessoryView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [view _preserveResponderOverridesWhilePerforming:v5];
}

- (BOOL)isTransitioningBetweenKeyboardStates
{
  currentTransition = [(UIInputWindowController *)self currentTransition];
  fromPlacement = [currentTransition fromPlacement];
  showsKeyboard = [fromPlacement showsKeyboard];
  toPlacement = [currentTransition toPlacement];
  showsKeyboard2 = [toPlacement showsKeyboard];

  return showsKeyboard ^ showsKeyboard2;
}

- (UIInputWindowController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = UIInputWindowController;
  v4 = [(UIApplicationRotationFollowingController *)&v11 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animationStyleStack = v4->_animationStyleStack;
    v4->_animationStyleStack = v5;

    v7 = +[UIInputViewSetPlacementInitialPosition placement];
    placement = v4->_placement;
    v4->_placement = v7;

    v4->_shouldNotifyRemoteKeyboards = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_hostViewWillDisappear name:0x1EFBB4890 object:0];
    [defaultCenter addObserver:v4 selector:sel_hostViewDidEnterBackground name:0x1EFBB47B0 object:0];
    [defaultCenter addObserver:v4 selector:sel_hostViewWillenterForeground name:0x1EFBB47D0 object:0];
    [defaultCenter addObserver:v4 selector:sel_updateKeyboardDockViewVisibility name:@"UITextInputNextInputModeInputModeDidChangeNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_updateKeyboardDockViewVisibility name:@"UIKeyboardNeedsUpdatingKeyboardDockViewVisibilityNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_willBeginIndirectSelectionGesture name:@"UIKeyboardWillBeginIndirectSelectionGestureNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_didEndIndirectSelectionGesture name:@"UIKeyboardDidEndIndirectSelectionGestureNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_presentationTransitionWillBegin_ name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel_presentationTransitionDidEnd_ name:@"UIPresentationControllerDismissalTransitionDidEndNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v6[11] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
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
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(UIInputWindowController *)self setFullScreenPresentationAssertion:0];
  v5.receiver = self;
  v5.super_class = UIInputWindowController;
  [(UIViewController *)&v5 dealloc];
}

- (void)_updatePlacementWithPlacement:(id)placement
{
  v26 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  v6 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = placementCopy;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "updatePlacementWithPlacement: %@", buf, 0xCu);
  }

  [(UIInputWindowController *)self updateKeyboardPlacementForGuide:placementCopy];
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

  subPlacements = [(UIInputViewSetPlacement *)self->_placement subPlacements];
  if (subPlacements)
  {
    subPlacements2 = [(UIInputViewSetPlacement *)self->_placement subPlacements];
    subPlacements3 = [placementCopy subPlacements];
    v12 = [subPlacements2 isEqualToArray:subPlacements3] ^ 1;
  }

  else
  {
    subPlacements2 = [placementCopy subPlacements];
    v12 = subPlacements2 != 0;
  }

  v13 = v8 | v12;
  [(UIInputWindowControllerHosting *)self->_hosting unloadForPlacement];
  objc_storeStrong(&self->_placement, placement);
  hosting = self->_hosting;
  transientInputViewSet = [(UIInputWindowController *)self transientInputViewSet];
  if (transientInputViewSet)
  {
    [(UIInputWindowControllerHosting *)hosting reloadForPlacementForInputViewSet:transientInputViewSet];
  }

  else
  {
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    [(UIInputWindowControllerHosting *)hosting reloadForPlacementForInputViewSet:inputViewSet];
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

  inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
  assistantViewController = [inputViewSet2 assistantViewController];
  assistantBarStyle = [assistantViewController assistantBarStyle];

  if (assistantBarStyle == 1 && ([placementCopy isFloatingAssistantView] & 1) == 0)
  {
    inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
    [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:inputViewSet3];
  }

  inputViewSet4 = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputSwitcherView:inputViewSet4];
}

void __57__UIInputWindowController__updatePlacementWithPlacement___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)setExclusiveTouch:(BOOL)touch
{
  touchCopy = touch;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v5 = [allHostingItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        hostView = [*(*(&v10 + 1) + 8 * v8) hostView];
        [hostView setExclusiveTouch:touchCopy];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allHostingItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)registerPowerLogEvent:(BOOL)event
{
  eventCopy = event;
  v12[4] = *MEMORY[0x1E69E9840];
  if (event || self->_wasOnScreen)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v5 currentInputMode];

    if ([currentInputMode isExtensionInputMode])
    {
      identifier = [currentInputMode identifier];
    }

    else
    {
      identifier = @"System";
    }

    if (identifier != self->_lastKeyboardID || self->_wasOnScreen != eventCopy)
    {
      v11[0] = @"Process-ID";
      v8 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      v12[0] = v8;
      v12[1] = identifier;
      v11[1] = @"Keyboard-ID";
      v11[2] = @"Status";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:eventCopy];
      v12[2] = v9;
      v11[3] = @"Timestamp";
      date = [MEMORY[0x1E695DF00] date];
      v12[3] = date;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
      PLLogRegisteredEvent();

      self->_wasOnScreen = eventCopy;
      objc_storeStrong(&self->_lastKeyboardID, identifier);
    }
  }
}

- (void)setInputViewSet:(id)set forKeyboardAssistantBar:(id)bar
{
  setCopy = set;
  [setCopy setKeyboardAssistantBar:bar];
  inputViewSet = [(UIInputWindowController *)self inputViewSet];

  v7 = setCopy;
  if (inputViewSet == setCopy)
  {
    [(UIInputWindowController *)self updateInputAssistantView:setCopy];
    [(UIInputWindowController *)self updateInputSwitcherView:setCopy];
    [(UIInputWindowController *)self updateHostingConstraints];
    v7 = setCopy;
  }
}

- (void)prepareForInputAssistant:(id)assistant animated:(BOOL)animated
{
  animatedCopy = animated;
  assistantCopy = assistant;
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputAssistantView = [inputViewSet inputAssistantView];
  window = [inputAssistantView window];
  _isTextEffectsWindow = [window _isTextEffectsWindow];

  if (([inputViewSet isEmpty] & 1) == 0 && (objc_msgSend(inputViewSet, "isRemoteKeyboard") & _isTextEffectsWindow & 1) == 0)
  {
    inputAssistantView2 = [inputViewSet inputAssistantView];

    if (inputAssistantView2)
    {
      assistantViewController = [inputViewSet assistantViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        assistantViewController2 = [inputViewSet assistantViewController];
        [assistantViewController2 prepareTransition:assistantCopy animated:animatedCopy];
      }
    }
  }
}

- (void)updateInputAssistantViewForInputViewSet:(id)set
{
  setCopy = set;
  if (![(UIInputWindowController *)self isRotating])
  {
    inputViewSet = setCopy;
    if (!setCopy)
    {
      inputViewSet = [(UIInputWindowController *)self inputViewSet];
    }

    setCopy = inputViewSet;
    if (([inputViewSet isEmpty] & 1) == 0 && (objc_msgSend(setCopy, "isRemoteKeyboard") & 1) == 0)
    {
      inputAssistantView = [setCopy inputAssistantView];

      if (!inputAssistantView || ([setCopy assistantViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
      {
LABEL_26:
        [(UIInputWindowController *)self updateHostingConstraints];
        goto LABEL_27;
      }

      assistantViewController = [setCopy assistantViewController];
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      responder = [v9 responder];

      _window = [responder _window];
      windowScene = [_window windowScene];
      keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

      v37 = keyboardSceneDelegate;
      systemInputAssistantViewController = [keyboardSceneDelegate systemInputAssistantViewController];
      v15 = systemInputAssistantViewController;
      if (systemInputAssistantViewController == assistantViewController)
      {
      }

      else
      {
        _window2 = [responder _window];
        _isRemoteKeyboardWindow = [_window2 _isRemoteKeyboardWindow];

        if (!_isRemoteKeyboardWindow)
        {
          goto LABEL_13;
        }
      }

      [assistantViewController automaticallySetCenterViewControllerBasedOnInputDelegate:responder];
LABEL_13:
      v36 = [assistantViewController shouldBeShownForInputDelegate:0 inputViews:setCopy];
      inputAssistantView2 = [setCopy inputAssistantView];
      window = [inputAssistantView2 window];
      v20 = window;
      if (window)
      {
        window2 = window;
      }

      else
      {
        inputView = [setCopy inputView];
        window2 = [inputView window];
      }

      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      visualModeManager = [v23 visualModeManager];
      if ([visualModeManager windowingModeEnabled])
      {
        v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        visualModeManager2 = [v25 visualModeManager];
        shouldShowWithinAppWindow = [visualModeManager2 shouldShowWithinAppWindow];
      }

      else
      {
        shouldShowWithinAppWindow = 0;
      }

      v28 = window2;
      windowScene2 = [window2 windowScene];
      v30 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      scene = [v30 scene];

      self->_trackingElementsNeedUpdate = 1;
      if (windowScene2 == scene)
      {
        v32 = v36;
      }

      else
      {
        v32 = 0;
      }

      if (shouldShowWithinAppWindow)
      {
        v33 = v32;
      }

      else
      {
        v33 = v36;
      }

      view = [assistantViewController view];
      [view setHidden:v33 ^ 1u];

      [assistantViewController updateCenterViewVisibilityStateForInputDelegate:0];
      placement = [(UIInputWindowController *)self placement];
      [(UIInputWindowController *)self updateVisibilityConstraintsForPlacement:placement];

      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)willResume:(id)resume
{
  placement = [(UIInputWindowController *)self placement];
  if ([placement showsKeyboard])
  {
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    keyboard = [inputViewSet keyboard];
    [(UIInputWindowController *)self registerPowerLogEvent:keyboard != 0];
  }

  else
  {
    [(UIInputWindowController *)self registerPowerLogEvent:0];
  }

  if (![(UIInputWindowController *)self shouldNotifyRemoteKeyboards]&& self->_keyboardShowTimestamp)
  {
    date = [MEMORY[0x1E695DF00] date];
    keyboardShowTimestamp = self->_keyboardShowTimestamp;
    self->_keyboardShowTimestamp = date;
  }

  keyboardSnapshot = self->_keyboardSnapshot;
  if (keyboardSnapshot)
  {
    [(UIView *)keyboardSnapshot frame];
    v11 = v10;
    view = [(UIViewController *)self view];
    [view frame];
    v14 = v13;

    if (v11 != v14)
    {

      [(UIInputWindowController *)self clearKeyboardSnapshot];
    }
  }
}

- (void)didSuspend:(id)suspend
{
  if (![(UIInputWindowController *)self shouldNotifyRemoteKeyboards]&& self->_keyboardShowTimestamp)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:self->_keyboardShowTimestamp];
    v6 = v5;

    [_UIKeyboardUsageTracking keyboardTotalOnScreenTime:[(UIInputWindowController *)self keyboardOrientation] orientation:v6];
  }

  [(UIInputWindowController *)self registerPowerLogEvent:0];
}

- (void)hostViewWillDisappear
{
  postRotationInputViewSet = [(UIInputWindowController *)self postRotationInputViewSet];
  if (postRotationInputViewSet || ([(UIInputWindowController *)self postRotationPlacement], (postRotationInputViewSet = objc_claimAutoreleasedReturnValue()) != 0))
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

  postRotationPendingBlock = [(UIInputWindowController *)self postRotationPendingBlock];

  if (postRotationPendingBlock)
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
  _window = [(UIViewController *)self _window];
  _isRemoteKeyboardWindow = [_window _isRemoteKeyboardWindow];

  if (_isRemoteKeyboardWindow)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 setKeyboardOnScreenNotifyKey:0];
  }
}

- (void)hostViewWillenterForeground
{
  _window = [(UIViewController *)self _window];
  _isRemoteKeyboardWindow = [_window _isRemoteKeyboardWindow];

  if (_isRemoteKeyboardWindow)
  {
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    keyboard = [inputViewSet keyboard];
    if (keyboard)
    {
      if ([(UIInputWindowController *)self isOnScreen])
      {
        placement = [(UIInputWindowController *)self placement];
        isUndocked = ([placement showsKeyboard] & 1) != 0 || -[UIInputWindowController isUndocked](self, "isUndocked");
      }

      else
      {
        isUndocked = [(UIInputWindowController *)self isUndocked];
      }
    }

    else
    {
      isUndocked = 0;
    }

    v9 = +[UIPeripheralHost sharedInstance];
    [v9 setKeyboardOnScreenNotifyKey:isUndocked];
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
    view = [(UIViewController *)self view];
    [view addSubview:self->_pathEffectView];

    pathEffectView = self->_pathEffectView;
  }

  return pathEffectView;
}

- (void)performWithoutAppearanceCallbacks:(id)callbacks
{
  ++self->_suppressedCallbacks;
  (*(callbacks + 2))(callbacks, a2);
  --self->_suppressedCallbacks;
}

- (void)performWithoutCallbacksOrNotifications:(id)notifications
{
  ++self->_suppressedNotifications;
  [(UIInputWindowController *)self performWithoutAppearanceCallbacks:notifications];
  --self->_suppressedNotifications;
}

- (void)performOperations:(id)operations withTemplateNotificationInfo:(id)info
{
  operationsCopy = operations;
  [(UIInputWindowController *)self setTemplateNotificationInfo:info];
  operationsCopy[2](operationsCopy);

  [(UIInputWindowController *)self setTemplateNotificationInfo:0];
}

- (void)performWithSafeTransitionFrames:(id)frames
{
  if (self->_inhibitingHiding)
  {
    v3 = *(frames + 2);
    framesCopy = frames;
    v3();
  }

  else
  {
    hiddenCount = self->_hiddenCount;
    framesCopy2 = frames;
    inputSetContainerView = [(UIInputWindowController *)self inputSetContainerView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__UIInputWindowController_performWithSafeTransitionFrames___block_invoke;
    v12[3] = &unk_1E7102030;
    v13 = hiddenCount;
    v12[4] = self;
    [inputSetContainerView performWithoutGeometryObserverNotifications:v12];

    self->_inhibitingHiding = 1;
    framesCopy2[2](framesCopy2);

    LODWORD(inputSetContainerView) = self->_hiddenCount + hiddenCount;
    self->_hiddenCount = 0;
    self->_inhibitingHiding = 0;
    inputSetContainerView2 = [(UIInputWindowController *)self inputSetContainerView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__UIInputWindowController_performWithSafeTransitionFrames___block_invoke_2;
    v10[3] = &unk_1E7102030;
    v11 = inputSetContainerView;
    v10[4] = self;
    [inputSetContainerView2 performWithoutGeometryObserverNotifications:v10];
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
  _screen = [(UIViewController *)self _screen];
  if (!__SplashBoardOverrideStatusBarOrientation)
  {
    [UIApp _safeInterfaceOrientationForNoWindow];
  }

  [_screen _boundsForInterfaceOrientation:?];
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

- (CGPoint)_centerForOrientation:(int64_t)orientation
{
  _screen = [(UIViewController *)self _screen];
  [_screen _boundsForInterfaceOrientation:orientation];
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
  _window = [(UIViewController *)self _window];
  if ([objc_opt_class() _transformLayerRotationsAreEnabled])
  {

    v17 = MidX;
  }

  else
  {
    v18 = orientation - 3;

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

- (CGRect)_boundsForOrientation:(int64_t)orientation
{
  _screen = [(UIViewController *)self _screen];
  [_screen _boundsForInterfaceOrientation:orientation];
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

- (void)ignoreLayoutNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if (+[_UIRemoteKeyboards enabled])
  {
    v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v3 ignoreLayoutNotifications:notificationsCopy];
  }

  else
  {
    notificationsCopy[2]();
  }
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  inputViewSet = [(UIInputWindowController *)self inputViewSet];

  if (!inputViewSet)
  {
    [(UIInputWindowController *)self updateHostingConstraints];
  }

  childViewControllers = [(UIViewController *)self childViewControllers];
  v6 = [childViewControllers containsObject:controllerCopy];

  if (v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ already contains %@", self, controllerCopy}];
  }

  [(UIViewController *)self addChildViewController:controllerCopy];
  view = [(UIViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view2 = [controllerCopy view];
  [view2 setFrame:{v9, v11, v13, v15}];

  view3 = [(UIViewController *)self view];
  view4 = [controllerCopy view];
  [view3 addSubview:view4];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)dismissViewController:(id)controller
{
  controllerCopy = controller;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v5 = [childViewControllers containsObject:controllerCopy];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ does not contain %@", self, controllerCopy}];
  }

  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
}

- (void)willBeginTransitionWithController:(id)controller
{
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 prepareForFloatingTransition:1];

  [(UIInputWindowController *)self setInterfaceAutorotationDisabled:1];
}

- (void)didEndTransitionWithController:(id)controller
{
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 prepareForFloatingTransition:0];

  [(UIInputWindowController *)self setInterfaceAutorotationDisabled:0];
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 geometryChangeDone:1];

  initialNotificationInfo = [(UIInputWindowController *)self initialNotificationInfo];
  v6 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
  [v6 notificationsFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v8, v10, v12, v14];
  [initialNotificationInfo populateEndInfoWithFrame:?];
  [initialNotificationInfo addKeyboardNotificationDebuggingInfo:@"didEndTransitionWithController:"];
  if (+[UIKeyboardImpl isFloating])
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  [(UIInputWindowController *)self postValidatedStartNotifications:v15 withInfo:initialNotificationInfo];
  [(UIInputWindowController *)self postValidatedEndNotifications:v15 withInfo:initialNotificationInfo];
  [(UIInputWindowController *)self keyboardMoveOfType:1 info:initialNotificationInfo];
  [(UIInputWindowControllerHosting *)self->_hosting updateCombinedBackdropViewAnimated:0 forKeyboardUp:1];
  [(UIInputWindowController *)self updateKeyboardSizeClass];
}

- (BOOL)shouldBeginTransitionForController:(id)controller
{
  v4 = +[UIKeyboardImpl activeInstance];
  if (!+[UIKeyboardImpl supportsFloating](UIKeyboardImpl, "supportsFloating") || ([v4 isMinimized] & 1) != 0 || (objc_msgSend(v4, "isTrackpadMode") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    v5 = [inputViewSet isCustomInputView] ^ 1;
  }

  return v5;
}

- (BOOL)isViewLandscape
{
  view = [(UIViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;

  return v4 > v6;
}

- (BOOL)_shouldPresentViewController:(id)controller withPresentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_KeyboardCannot.isa, controllerCopy);
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

- (void)updateVisibilityConstraintsForPlacement:(id)placement
{
  v27 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  if (self->_suppressUpdateVisibilityConstraints)
  {
    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v6 = [allHostingItems countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    obj = allHostingItems;
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
        accessoryViewWillAppear = [placementCopy accessoryViewWillAppear];
        if (v8)
        {
          subPlacements = [placementCopy subPlacements];
          v15 = [subPlacements objectAtIndexedSubscript:v8 - 1];

          if (!v15)
          {
            goto LABEL_10;
          }

LABEL_9:
          [v12 updateVisibilityConstraintsForPlacement:v15];
          goto LABEL_10;
        }

        v15 = placementCopy;
        if (v15)
        {
          goto LABEL_9;
        }

LABEL_10:
        v9 |= accessoryViewWillAppear;
        ++v8;

        ++v11;
      }

      while (v7 != v11);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v7 = v16;
      if (!v16)
      {

        view = [(UIViewController *)selfCopy view];
        [view setNeedsLayout];

        if (v9)
        {
          _inputAccessoryView = [(UIInputWindowController *)selfCopy _inputAccessoryView];
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }
  }

  _inputAccessoryView = [(UIViewController *)self view];
LABEL_18:
  v19 = _inputAccessoryView;
  [_inputAccessoryView setNeedsLayout];

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

  _window = [(UIViewController *)self _window];
  _isHostedInAnotherProcess = [_window _isHostedInAnotherProcess];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v6 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if ((windowingModeEnabled & 1) != 0 || _isHostedInAnotherProcess)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__UIInputWindowController_hostAppSceneBoundsChanged__block_invoke;
    v25[3] = &unk_1E70F35E0;
    v26 = _isHostedInAnotherProcess;
    v25[4] = self;
    [(UIInputWindowController *)self performWithoutCallbacksOrNotifications:v25];
  }

  if (+[UIKeyboardImpl isFloating])
  {
    v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager2 = [v9 visualModeManager];
    windowingModeEnabled2 = [visualModeManager2 windowingModeEnabled];

    if (windowingModeEnabled2)
    {
      +[UIKeyboardImpl floatingPersistentOffset];
      v13 = v12;
      v15 = v14;
      inputViewSet = [(UIInputWindowController *)self inputViewSet];
      [inputViewSet inputViewBounds];
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

- (void)takeKeyboardSnapshotIgnoringSpotlightCheck:(BOOL)check
{
  checkCopy = check;
  if (!+[UIKeyboard usesInputSystemUI]|| self->_keyboardSnapshot)
  {
    return;
  }

  v30 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
  currentUIState = [v30 currentUIState];
  bundleIdentifier = [currentUIState bundleIdentifier];
  v7 = _UIMainBundleIdentifier();
  if (![bundleIdentifier isEqualToString:v7])
  {
    goto LABEL_13;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v8 inputDelegate];
  if (!inputDelegate)
  {
LABEL_12:

LABEL_13:

    return;
  }

  v10 = inputDelegate;
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  if ([inputViewSet isCustomInputView])
  {
LABEL_11:

    goto LABEL_12;
  }

  inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
  inputView = [inputViewSet2 inputView];
  [inputView frame];
  if (v12 <= 0.0 || +[UIKeyboard isSpotlight]&& !checkCopy)
  {

    goto LABEL_11;
  }

  _isSpringBoard = [UIApp _isSpringBoard];

  if ((_isSpringBoard & 1) == 0)
  {
    v14 = [UIKeyboard snapshotViewForOptions:1];
    keyboardSnapshot = self->_keyboardSnapshot;
    self->_keyboardSnapshot = v14;

    inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
    inputView2 = [inputViewSet3 inputView];
    superview = [inputView2 superview];

    view = [(UIViewController *)self view];
    [view convertPoint:superview fromView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v21 = v20;
    v23 = v22;

    [(UIView *)self->_keyboardSnapshot frame];
    v34 = CGRectOffset(v33, 0.0, -v23);
    [(UIView *)self->_keyboardSnapshot setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    v24 = [UIView alloc];
    [superview frame];
    v25 = [(UIView *)v24 initWithFrame:v21, v23];
    [(UIView *)v25 setClipsToBounds:1];
    [(UIView *)v25 addSubview:self->_keyboardSnapshot];
    view2 = [(UIViewController *)self view];
    [view2 addSubview:v25];

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
  placement = [(UIInputWindowController *)self placement];
  if ([placement isUndocked])
  {
    v4 = 0;
  }

  else
  {
    placement2 = [(UIInputWindowController *)self placement];
    if ([placement2 isFloating])
    {
      v4 = 0;
    }

    else
    {
      placement3 = [(UIInputWindowController *)self placement];
      if ([placement3 isCompactAssistantView])
      {
        v4 = 0;
      }

      else
      {
        placement4 = [(UIInputWindowController *)self placement];
        isHiddenForFloatingTransition = [placement4 isHiddenForFloatingTransition];

        v4 = isHiddenForFloatingTransition ^ 1;
      }
    }
  }

  return v4;
}

- (void)updateTrackingElementsWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(UIInputWindowController *)self trackingElementsShouldUseActualFrame]&& height > 0.0)
  {
    _window = [(UIViewController *)self _window];
    [_window bounds];
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

- (void)updateTrackingElementsWithOffset:(UIOffset)offset
{
  v3[1] = 3221225472;
  if (offset.vertical != 0.0)
  {
    offset.horizontal = 0.0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[2] = __60__UIInputWindowController_updateTrackingElementsWithOffset___block_invoke;
  v3[3] = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
  if (offset.vertical != 0.0)
  {
    offset.vertical = 0.0;
  }

  offsetCopy = offset;
  [UIKeyboardSceneDelegate performOnControllers:v3];
}

- (void)hostedOriginDidUpdate
{
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

  if (isInputViewPlaceholder)
  {
    inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
    inputView = [inputViewSet2 inputView];
    [inputView refreshPlaceholder];

    postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

    if (!postRotationPlacement || (-[UIInputWindowController inputViewSet](self, "inputViewSet"), v8 = objc_claimAutoreleasedReturnValue(), [v8 inputView], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "fixedSize"), v11 = v10, v9, v8, v11 != 0.0))
    {

      [(UIInputWindowController *)self refreshKeyboardLayoutGuideForce:1];
    }
  }
}

- (void)refreshKeyboardLayoutGuideForce:(BOOL)force
{
  forceCopy = force;
  if (+[UIKeyboard isInputSystemUI])
  {
    return;
  }

  if (![(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    return;
  }

  postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

  if (postRotationPlacement)
  {
    if (!forceCopy)
    {
      return;
    }
  }

  currentTransition = [(UIInputWindowController *)self currentTransition];

  if (currentTransition)
  {
    if (!forceCopy)
    {
      currentTransition2 = [(UIInputWindowController *)self currentTransition];
      fromPlacement = [currentTransition2 fromPlacement];
      objc_opt_class();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        return;
      }
    }
  }

  placement = [(UIInputWindowController *)self placement];
  if ([placement showsInputOrAssistantViews])
  {
    goto LABEL_12;
  }

  placement2 = [(UIInputWindowController *)self placement];
  if ([placement2 isFloatingAssistantView])
  {

LABEL_12:
    goto LABEL_13;
  }

  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputAccessoryView = [inputViewSet inputAccessoryView];

  if (inputAccessoryView)
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
      hasActiveKeyboardResponder = [v21 hasActiveKeyboardResponder];

      if (hasActiveKeyboardResponder)
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

- (void)changeGuideAnimationOptions:(unint64_t)options duration:(double)duration
{
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__UIInputWindowController_changeGuideAnimationOptions_duration___block_invoke;
    v6[3] = &__block_descriptor_48_e22_v24__0__UIWindow_8_B16l;
    *&v6[4] = duration;
    v6[5] = options;
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

- (void)changeGuideAnimationState:(BOOL)state
{
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__UIInputWindowController_changeGuideAnimationState___block_invoke;
    v4[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
    stateCopy = state;
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

- (void)hideGuideBackdrop:(BOOL)backdrop
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__UIInputWindowController_hideGuideBackdrop___block_invoke;
  v3[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
  backdropCopy = backdrop;
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

- (id)transitionGuideBackdrop:(BOOL)backdrop
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
  backdropCopy = backdrop;
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

- (BOOL)updateGuideBackdropRenderConfig:(id)config animated:(BOOL)animated
{
  configCopy = config;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UIInputWindowController_updateGuideBackdropRenderConfig_animated___block_invoke;
  v9[3] = &unk_1E71163B8;
  v11 = &v13;
  v6 = configCopy;
  v10 = v6;
  animatedCopy = animated;
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

- (void)keyboardIsDocking:(BOOL)docking
{
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__UIInputWindowController_keyboardIsDocking___block_invoke;
    v4[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
    dockingCopy = docking;
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

- (void)updateKeyboardPlacementForGuide:(id)guide
{
  guideCopy = guide;
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__UIInputWindowController_updateKeyboardPlacementForGuide___block_invoke;
    v5[3] = &unk_1E70F4440;
    v6 = guideCopy;
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

- (void)keyboardMoveOfType:(unint64_t)type info:(id)info
{
  infoCopy = info;
  if (([infoCopy dueToRotation] & 1) == 0)
  {
    postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

    if (type != 4 && !postRotationPlacement && !+[UIKeyboard isInputSystemUI])
    {
      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_2;
          }

          placement = [(UIInputWindowController *)self placement];
          if (![placement isFloating])
          {
            placement2 = [(UIInputWindowController *)self placement];
            isFloatingAssistantView = [placement2 isFloatingAssistantView];

            if (isFloatingAssistantView)
            {
              goto LABEL_2;
            }

            goto LABEL_19;
          }

          goto LABEL_23;
        }

        placement = [(UIInputWindowController *)self placement];
        if (![placement isFloating])
        {
LABEL_23:

          goto LABEL_2;
        }

        wasCausedRemotely = [infoCopy wasCausedRemotely];

        if (!wasCausedRemotely)
        {
          goto LABEL_2;
        }

LABEL_22:
        [(UIInputWindowController *)self keyboardDismissWithInfo:infoCopy];
        goto LABEL_2;
      }

      if (type == 2)
      {
LABEL_19:
        [(UIInputWindowController *)self keyboardMoveWithInfo:infoCopy];
        goto LABEL_2;
      }

      if (type == 3 && ([infoCopy dueToRotation] & 1) == 0)
      {
        postRotationPlacement2 = [(UIInputWindowController *)self postRotationPlacement];

        if (!postRotationPlacement2)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_2:
}

- (void)keyboardDismissWithInfo:(id)info
{
  infoCopy = info;
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    if (([infoCopy dueToRotation] & 1) == 0)
    {
      postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

      if (!postRotationPlacement)
      {
        _window = [(UIViewController *)self _window];
        [_window bounds];
        [(UIInputWindowController *)self updateTrackingElementsWithSize:v7, 0.0];

        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __51__UIInputWindowController_keyboardDismissWithInfo___block_invoke;
        v8[3] = &unk_1E70F4440;
        v9 = infoCopy;
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
  _window = [(UIViewController *)self _window];
  [_window bounds];
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

- (void)updateGuideForOffscreenRotationWithDuration:(double)duration
{
  placement = [(UIInputWindowController *)self placement];
  if ([placement isFloating])
  {
LABEL_4:

    return;
  }

  placement2 = [(UIInputWindowController *)self placement];
  if ([placement2 isFloatingAssistantView])
  {

    goto LABEL_4;
  }

  v5 = +[UIKeyboardCameraSession updatesGuideDuringRotation];

  if (!v5)
  {

    [(UIInputWindowController *)self updateOffscreenKeyboardLayoutGuide];
  }
}

- (void)updateKeyboardLayoutGuideWithFrame:(CGRect)frame layoutViews:(BOOL)views
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  if ((*&frame.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&frame.origin.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&frame.size.width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&frame.size.height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && !CGRectIsNull(frame))
  {
    [(UIInputWindowController *)self updateTrackingElementsWithSize:width, height];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxY = CGRectGetMaxY(v36);
    _window = [(UIViewController *)self _window];
    [_window frame];
    v12 = CGRectGetMaxY(v37);

    if (MaxY < v12)
    {
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      MinX = CGRectGetMinX(v38);
      _window2 = [(UIViewController *)self _window];
      [_window2 frame];
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
    viewsCopy = views;
    v16 = _Block_copy(aBlock);
    _window3 = [(UIViewController *)self _window];
    _isHostedInAnotherProcess = [_window3 _isHostedInAnotherProcess];

    if (_isHostedInAnotherProcess)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__UIInputWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke_2;
      v30[3] = &unk_1E7116408;
      v31 = v16;
      [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v30];
      windows = v31;
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      _window4 = [(UIViewController *)self _window];
      windowScene = [_window4 windowScene];
      windows = [windowScene windows];

      v22 = [windows countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(windows);
            }

            (*(v16 + 2))(v16, *(*(&v26 + 1) + 8 * i));
          }

          v23 = [windows countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (void)keyboardMoveWithInfo:(id)info
{
  infoCopy = info;
  currentControllerShouldUpdateKeyboardLayoutGuide = [(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide];
  v5 = infoCopy;
  if (currentControllerShouldUpdateKeyboardLayoutGuide)
  {
    [infoCopy endFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    _window = [(UIViewController *)self _window];
    _isHostedInAnotherProcess = [_window _isHostedInAnotherProcess];

    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    hasActiveKeyboardResponder = [v16 hasActiveKeyboardResponder];

    v32.origin.x = v7;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v13;
    if (!CGRectIsEmpty(v32))
    {
      if (_isHostedInAnotherProcess & 1 | ((hasActiveKeyboardResponder & 1) == 0))
      {
        v23 = 1;
      }

      else
      {
        v23 = +[UIKeyboard usesInputSystemUI];
      }

      _window2 = [(UIViewController *)self _window];
      _isRemoteKeyboardWindow = [_window2 _isRemoteKeyboardWindow];

      inputViewSet = [(UIInputWindowController *)self inputViewSet];
      isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

      forWritingToolsSheet = [infoCopy forWritingToolsSheet];
      v5 = infoCopy;
      if ((forWritingToolsSheet & 1) == 0 && isInputViewPlaceholder && ((_isRemoteKeyboardWindow ^ 1) & v23) == 0)
      {
        goto LABEL_14;
      }

      [infoCopy duration];
      [(UIInputWindowController *)self keyboardMovedToScreenPosition:v29 > 0.0 animated:v7, v9, v11, v13];
      goto LABEL_13;
    }

    currentTransition = [(UIInputWindowController *)self currentTransition];
    if (!currentTransition || (v19 = currentTransition, -[UIInputWindowController currentTransition](self, "currentTransition"), v20 = objc_claimAutoreleasedReturnValue(), [v20 toPlacement], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "showsInputOrAssistantViews"), v21, v20, v19, v5 = infoCopy, (v22 & 1) == 0))
    {
      [(UIInputWindowController *)self keyboardDismissWithInfo:infoCopy];
LABEL_13:
      v5 = infoCopy;
    }
  }

LABEL_14:
}

- (void)keyboardMovedToScreenPosition:(CGRect)position animated:(BOOL)animated
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  if ([(UIInputWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    _window = [(UIViewController *)self _window];
    _isHostedInAnotherProcess = [_window _isHostedInAnotherProcess];

    _window2 = [(UIViewController *)self _window];
    screen = [_window2 screen];
    coordinateSpace = [screen coordinateSpace];

    _window3 = [(UIViewController *)self _window];
    [_window3 hostedViewOrigin];

    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    hasActiveKeyboardResponder = [v16 hasActiveKeyboardResponder];

    placement = [(UIInputWindowController *)self placement];
    if ([placement isUndocked])
    {
      isHiddenForFloatingTransition = 1;
    }

    else
    {
      placement2 = [(UIInputWindowController *)self placement];
      if ([placement2 isFloating])
      {
        isHiddenForFloatingTransition = 1;
      }

      else
      {
        placement3 = [(UIInputWindowController *)self placement];
        if ([placement3 isFloatingAssistantView])
        {
          isHiddenForFloatingTransition = 1;
        }

        else
        {
          placement4 = [(UIInputWindowController *)self placement];
          isHiddenForFloatingTransition = [placement4 isHiddenForFloatingTransition];
        }
      }
    }

    placement5 = [(UIInputWindowController *)self placement];
    if ([placement5 isFloatingAssistantView])
    {
      isCompactAssistantView = 1;
    }

    else
    {
      placement6 = [(UIInputWindowController *)self placement];
      isCompactAssistantView = [placement6 isCompactAssistantView];
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
      v48 = isCompactAssistantView;
      v42 = coordinateSpace;
      selfCopy = self;
      v49 = isHiddenForFloatingTransition;
      v50 = _isHostedInAnotherProcess;
      animatedCopy = animated;
      v26 = _Block_copy(aBlock);
      v27 = v26;
      if ((hasActiveKeyboardResponder | _isHostedInAnotherProcess))
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __66__UIInputWindowController_keyboardMovedToScreenPosition_animated___block_invoke_2;
        v39[3] = &unk_1E7116408;
        v40 = v26;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v39];
        windows = v40;
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        _window4 = [(UIViewController *)self _window];
        windowScene = [_window4 windowScene];
        windows = [windowScene windows];

        v31 = [windows countByEnumeratingWithState:&v35 objects:v52 count:16];
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
                objc_enumerationMutation(windows);
              }

              v27[2](v27, *(*(&v35 + 1) + 8 * v34++));
            }

            while (v32 != v34);
            v32 = [windows countByEnumeratingWithState:&v35 objects:v52 count:16];
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
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    if ([inputViewSet isInputViewPlaceholder])
    {
      externalTrackingUpdateInProgress = self->_externalTrackingUpdateInProgress;

      if (!externalTrackingUpdateInProgress)
      {
        inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
        inputView = [inputViewSet2 inputView];
        [inputView fixedSize];
        v7 = v6;
        v9 = v8;

        if (v9 > 0.0)
        {
          hosting = [(UIInputWindowController *)self hosting];
          [hosting _inputViewPadding];
          v9 = v9 + fabs(v11);
        }

        _window = [(UIViewController *)self _window];
        [_window bounds];
        v14 = v13;

        _window2 = [(UIViewController *)self _window];
        screen = [_window2 screen];
        coordinateSpace = [screen coordinateSpace];

        _window3 = [(UIViewController *)self _window];
        _isHostedInAnotherProcess = [_window3 _isHostedInAnotherProcess];
        _window4 = [(UIViewController *)self _window];
        windowScene = [_window4 windowScene];
        v22 = windowScene;
        if (_isHostedInAnotherProcess)
        {
          [windowScene _allWindows];
        }

        else
        {
          [windowScene windows];
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
                _window5 = [(UIViewController *)self _window];
                [_window5 bounds];
                v37 = v36;

                v38 = v34 == v37;
                width = v7;
                height = v9;
                if (!v38)
                {
                  windowScene2 = [v30 windowScene];
                  _coordinateSpace = [windowScene2 _coordinateSpace];
                  [coordinateSpace convertRect:_coordinateSpace toCoordinateSpace:{0.0, v27, v7, v9}];
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

                _primaryKeyboardTrackingGuide = [v30 _primaryKeyboardTrackingGuide];
                v52 = [_primaryKeyboardTrackingGuide changeSizingConstants:{width, height}];

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

- (id)_infoForBackdropMatchMoveForLayer:(id)layer
{
  v13[2] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  if (layerCopy)
  {
    context = [layerCopy context];
    contextId = [context contextId];

    RenderId = CALayerGetRenderId();
    v12[0] = 0x1EFB7AD70;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:contextId];
    v12[1] = 0x1EFB7AD90;
    v13[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:RenderId];
    v13[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    dictionary = v10;
  }

  return dictionary;
}

- (id)infoForAnimationStyle:(id)style
{
  styleCopy = style;
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
  [styleCopy duration];
  [v7 setDuration:?];
  [v7 setOptions:{objc_msgSend(styleCopy, "extraOptions")}];
  v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v7 setIsLocalKeyboard:{objc_msgSend(v8, "handlingRemoteEvent") ^ 1}];

  [v7 setIsRotating:{-[UIInputWindowController isRotating](self, "isRotating")}];
  [v7 setShouldAnimate:{objc_msgSend(styleCopy, "animated")}];
  [v7 setAnimationType:{objc_msgSend(styleCopy, "animationType")}];

  return v7;
}

- (id)remoteNotificationInfo
{
  templateNotificationInfo = [(UIInputWindowController *)self templateNotificationInfo];
  if (templateNotificationInfo)
  {
    notificationInfo = templateNotificationInfo;
  }

  else
  {
    currentTransition = [(UIInputWindowController *)self currentTransition];
    notificationInfo = [currentTransition notificationInfo];

    if (!notificationInfo)
    {
      notificationInfo = +[UIInputViewSetNotificationInfo info];
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
      nextAnimationStyle = [(UIInputWindowController *)self nextAnimationStyle];
      [notificationInfo populateWithAnimationStyle:nextAnimationStyle];

      [notificationInfo populateStartInfoWithFrame:{v16, v18, v20, v22}];
      [notificationInfo addKeyboardNotificationDebuggingInfo:@"remoteNotificationInfo"];
    }
  }

  return notificationInfo;
}

- (BOOL)keyboardControlsNotifications
{
  if (TIGetNotificationsFromKeyboardValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetNotificationsFromKeyboardValue_onceToken, &__block_literal_global_1155);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"NotificationsFromKeyboard"];

  if (v3)
  {
    [v3 integerValue];
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
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
  visualModeManager = [v2 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  return windowingModeEnabled;
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

- (id)convertUserInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = [infoCopy mutableCopy];
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  keyboardWindow = [v5 keyboardWindow];

  v57 = keyboardWindow;
  if (keyboardWindow)
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
    v55 = infoCopy;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [infoCopy objectForKeyedSubscript:v11];
        objCType = [v12 objCType];
        if (!strcmp("{CGRect={CGPoint=dd}{CGSize=dd}}", objCType))
        {
          [v12 CGRectValue];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          windowScene = [v57 windowScene];
          _coordinateSpace = [windowScene _coordinateSpace];
          _window = [(UIViewController *)self _window];
          windowScene2 = [_window windowScene];
          _coordinateSpace2 = [windowScene2 _coordinateSpace];
          [_coordinateSpace convertRect:_coordinateSpace2 toCoordinateSpace:{v29, v31, v33, v35}];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v27 = [MEMORY[0x1E696B098] valueWithRect:{v42, v44, v46, v48}];
        }

        else
        {
          if (strcmp("{CGPoint=dd}", objCType))
          {
            goto LABEL_12;
          }

          [v12 CGPointValue];
          v15 = v14;
          v17 = v16;
          windowScene3 = [v57 windowScene];
          _coordinateSpace3 = [windowScene3 _coordinateSpace];
          _window2 = [(UIViewController *)self _window];
          windowScene4 = [_window2 windowScene];
          _coordinateSpace4 = [windowScene4 _coordinateSpace];
          [_coordinateSpace3 convertPoint:_coordinateSpace4 toCoordinateSpace:{v15, v17}];
          v24 = v23;
          v26 = v25;

          v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v24, v26}];
        }

        v49 = v27;
        v4 = v54;
        [v54 setObject:v27 forKeyedSubscript:v11];

        infoCopy = v55;
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

  v50 = infoCopy;
LABEL_16:
  v51 = v50;

  return v51;
}

- (void)postNotificationName:(id)name userInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  infoCopy = info;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  view = [(UIViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  v13 = screen;
  if (screen)
  {
    screen2 = screen;
  }

  else
  {
    [(UIViewController *)self view];
    v23 = defaultCenter;
    v15 = nameCopy;
    v17 = v16 = infoCopy;
    window2 = [v17 window];
    screen2 = [window2 screen];

    infoCopy = v16;
    nameCopy = v15;
    defaultCenter = v23;
  }

  if ([(UIInputWindowController *)self needsConvertToSceneCoordinates])
  {
    v19 = [(UIInputWindowController *)self convertUserInfo:infoCopy];
    [defaultCenter postNotificationName:nameCopy object:screen2 userInfo:v19];
    v20 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      _window = [(UIViewController *)self _window];
      windowScene2 = [_window windowScene];
      *buf = 138412802;
      v25 = nameCopy;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = windowScene2;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Posting converted notifications: %@ %@ for scene %@", buf, 0x20u);
    }
  }

  else
  {
    [defaultCenter postNotificationName:nameCopy object:screen2 userInfo:infoCopy];
  }
}

- (BOOL)shouldPostNotification:(unint64_t)notification withInfo:(id)info
{
  infoCopy = info;
  if (![(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    goto LABEL_14;
  }

  v7 = 1;
  if (!notification || self->_suppressedNotifications || ![infoCopy containsChange])
  {
    goto LABEL_15;
  }

  _window = [(UIViewController *)self _window];
  if (![_window _isTextEffectsWindowNotificationOwner] || objc_msgSend(UIApp, "isSuspended") && self->_isSnapshotting || -[UIInputWindowController isTransitioningBetweenFloatingStates](self, "isTransitioningBetweenFloatingStates"))
  {
    goto LABEL_13;
  }

  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  isCustomInputView = [inputViewSet isCustomInputView];
  if (notification == 2 && (isCustomInputView & 1) == 0)
  {
    [infoCopy endFrame];
    if (v11 == 0.0)
    {

LABEL_13:
LABEL_14:
      v7 = 1;
LABEL_15:
      v12 = v7 & ([infoCopy nonKeyboardOverride] ^ 1);
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

  v12 = [infoCopy nonKeyboardOverride] ^ 1;
LABEL_16:
  if ([infoCopy waitingForInputUI])
  {
    [(UIInputWindowController *)self setNotificationInfoWaitingForInputUI:infoCopy];
    LOBYTE(v12) = 1;
  }

  return v12 ^ 1;
}

- (void)postStartNotifications:(unint64_t)notifications withInfo:(id)info
{
  infoCopy = info;
  if ([(UIInputWindowController *)self shouldPostNotification:notifications withInfo:?])
  {
    [(UIInputWindowController *)self postValidatedStartNotifications:notifications withInfo:infoCopy];
  }
}

- (void)postValidatedStartNotifications:(unint64_t)notifications withInfo:(id)info
{
  infoCopy = info;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__UIInputWindowController_postValidatedStartNotifications_withInfo___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  notificationsCopy = notifications;
  aBlock[4] = self;
  v7 = infoCopy;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 layoutIsResizing])
  {
  }

  else
  {
    isTransitioningBetweenFloatingStates = [(UIInputWindowController *)self isTransitioningBetweenFloatingStates];

    if (!isTransitioningBetweenFloatingStates)
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

- (void)postEndNotifications:(unint64_t)notifications withInfo:(id)info
{
  infoCopy = info;
  if ([(UIInputWindowController *)self shouldPostNotification:notifications withInfo:?])
  {
    [(UIInputWindowController *)self postValidatedEndNotifications:notifications withInfo:infoCopy];
  }
}

- (void)postValidatedEndNotifications:(unint64_t)notifications withInfo:(id)info
{
  infoCopy = info;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIInputWindowController_postValidatedEndNotifications_withInfo___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  notificationsCopy = notifications;
  aBlock[4] = self;
  v7 = infoCopy;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 layoutIsResizing])
  {
  }

  else
  {
    isTransitioningBetweenFloatingStates = [(UIInputWindowController *)self isTransitioningBetweenFloatingStates];

    if (!isTransitioningBetweenFloatingStates)
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

- (int)appearStateForChild:(unint64_t)child placement:(id)placement start:(BOOL)start
{
  startCopy = start;
  if (child == 4)
  {
    accessoryViewWillAppear = [placement accessoryViewWillAppear];
  }

  else
  {
    accessoryViewWillAppear = [placement inputViewWillAppear];
  }

  if (startCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (startCopy)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (accessoryViewWillAppear)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)changeChild:(unint64_t)child toAppearState:(int)state animated:(BOOL)animated
{
  if (self->_suppressedCallbacks)
  {
    return;
  }

  animatedCopy = animated;
  if (child == 2)
  {
    _inputAssistantViewController = [(UIInputWindowController *)self _inputAssistantViewController];
  }

  else
  {
    if (child == 4)
    {
      [(UIInputWindowController *)self _inputAccessoryViewController];
    }

    else
    {
      [(UIInputWindowController *)self _inputViewController];
    }
    _inputAssistantViewController = ;
  }

  v11 = _inputAssistantViewController;
  v9 = state | (16 * [_inputAssistantViewController _appearState]);
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

        [(UIViewController *)v11 __viewDidDisappear:animatedCopy];
LABEL_24:
        [v11 __viewWillAppear:animatedCopy];
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

      [(UIViewController *)v11 __viewWillDisappear:animatedCopy];
    }

    [(UIViewController *)v11 __viewDidDisappear:animatedCopy];
    goto LABEL_28;
  }

  if (v9 <= 17)
  {
    v10 = v11;
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        [v11 __viewWillAppear:animatedCopy];
LABEL_25:
        [v11 __viewDidAppear:animatedCopy];
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
    [v11 __viewDidAppear:animatedCopy];
LABEL_20:
    [(UIViewController *)v11 __viewWillDisappear:animatedCopy];
LABEL_28:
    v10 = v11;
  }

LABEL_29:
}

- (void)updateAppearStatesForPlacement:(id)placement start:(BOOL)start animated:(BOOL)animated
{
  animatedCopy = animated;
  startCopy = start;
  for (i = 0; i != 3; ++i)
  {
    [(UIInputWindowController *)self changeChild:(1 << i) toAppearState:[(UIInputWindowController *)self appearStateForChild:(1 << i) placement:placement start:startCopy] animated:animatedCopy];
  }
}

- (void)updateAmbiguousControlCenterActivationMargin:(unint64_t)margin withInfo:(id)info
{
  infoCopy = info;
  v7 = +[UIDevice _hasHomeButton];
  if (v7 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), ([v4 orientation] - 3) < 2))
  {
    placement = [(UIInputWindowController *)self placement];
    isUndocked = [placement isUndocked];

    if (!v7)
    {
    }

    if (margin == 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = isUndocked;
    }

    v11 = 0.0;
    if ((v10 & 1) == 0)
    {
      [infoCopy endFrame];
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

- (void)transferActiveNotificationInfoToInfo:(id)info
{
  infoCopy = info;
  templateNotificationInfo = [(UIInputWindowController *)self templateNotificationInfo];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transferActiveNotificationInfoToInfo:"];
  [infoCopy addKeyboardNotificationDebuggingInfo:v5];

  if (!templateNotificationInfo)
  {
    if (![(UIInputWindowController *)self isRotating])
    {
      goto LABEL_7;
    }

    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [infoCopy setWasCausedRemotely:{objc_msgSend(v6, "keyboardActive") ^ 1}];

    [infoCopy setDueToRotation:1];
    goto LABEL_6;
  }

  [infoCopy setWasCausedRemotely:{objc_msgSend(templateNotificationInfo, "wasCausedRemotely")}];
  [infoCopy setDueToRotation:{objc_msgSend(templateNotificationInfo, "dueToRotation")}];
  [infoCopy setWaitingForInputUI:{objc_msgSend(templateNotificationInfo, "waitingForInputUI")}];
  if ([infoCopy dueToRotation])
  {
LABEL_6:
    [infoCopy setShouldSendInClient:1];
  }

LABEL_7:
}

- (id)_screenCoordinateSpace
{
  _window = [(UIViewController *)self _window];
  screen = [_window screen];
  coordinateSpace = [screen coordinateSpace];

  return coordinateSpace;
}

- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)space
{
  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:0 viewInRemoteKeyboardWindow:space.origin.x, space.origin.y, space.size.width, space.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertRectFromContainerCoordinateSpaceToScreenSpace:(CGRect)space viewInRemoteKeyboardWindow:(BOOL)window
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  view = [(UIViewController *)self view];
  [view convertRect:0 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if ([UIApp _isSpringBoard])
  {
    goto LABEL_2;
  }

  v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v28 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (window || (windowingModeEnabled & 1) != 0)
  {
LABEL_9:
    _window = [(UIViewController *)self _window];
    windowScene = [_window windowScene];
    _coordinateSpace = [windowScene _coordinateSpace];
    _window2 = [(UIViewController *)self _window];
    screen = [_window2 screen];
    coordinateSpace = [screen coordinateSpace];
    [_coordinateSpace convertRect:coordinateSpace toCoordinateSpace:{v12, v14, v16, v18}];
    v21 = v39;
    v23 = v40;
    v25 = v41;
    v27 = v42;

    goto LABEL_10;
  }

  _window3 = [(UIViewController *)self _window];
  if (([_window3 _isTextEffectsWindow] & 1) == 0)
  {

    goto LABEL_9;
  }

  _window4 = [(UIViewController *)self _window];
  _isHostedInAnotherProcess = [_window4 _isHostedInAnotherProcess];

  if (!_isHostedInAnotherProcess)
  {
    goto LABEL_9;
  }

LABEL_2:
  _window = [(UIViewController *)self _window];
  [_window convertRect:0 toWindow:{v12, v14, v16, v18}];
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

- (void)checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:(BOOL)update layoutSubviews:(BOOL)subviews
{
  subviewsCopy = subviews;
  updateCopy = update;
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

  if (isInputViewPlaceholder)
  {
    externalTrackingUpdateInProgress = self->_externalTrackingUpdateInProgress;
    inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
    inputView = [inputViewSet2 inputView];
    v12 = inputView;
    if (externalTrackingUpdateInProgress == 1)
    {
      [inputView invalidateIntrinsicContentSize];
    }

    else
    {
      externalTrackingUpdateInProgress = [inputView refreshPlaceholder];
    }
  }

  else
  {
    externalTrackingUpdateInProgress = 0;
  }

  inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
  isInputAssistantViewPlaceholder = [inputViewSet3 isInputAssistantViewPlaceholder];

  if (isInputAssistantViewPlaceholder)
  {
    inputViewSet4 = [(UIInputWindowController *)self inputViewSet];
    inputAssistantView = [inputViewSet4 inputAssistantView];
    externalTrackingUpdateInProgress = externalTrackingUpdateInProgress | [inputAssistantView refreshPlaceholder];
  }

  inputViewSet5 = [(UIInputWindowController *)self inputViewSet];
  isInputAccessoryViewPlaceholder = [inputViewSet5 isInputAccessoryViewPlaceholder];

  if (isInputAccessoryViewPlaceholder)
  {
    inputViewSet6 = [(UIInputWindowController *)self inputViewSet];
    inputAccessoryView = [inputViewSet6 inputAccessoryView];
    externalTrackingUpdateInProgress = externalTrackingUpdateInProgress | [inputAccessoryView refreshPlaceholder];

    if ((externalTrackingUpdateInProgress & 1) == 0)
    {
      return;
    }
  }

  else if (!externalTrackingUpdateInProgress)
  {
    return;
  }

  if (updateCopy || subviewsCopy || ([(UIInputWindowController *)self postRotationPlacement], (externalTrackingUpdateInProgress = objc_claimAutoreleasedReturnValue()) != 0))
  {
    inputViewSet7 = [(UIInputWindowController *)self inputViewSet];
    if ([inputViewSet7 isInputViewPlaceholder])
    {
      v22 = self->_externalTrackingUpdateInProgress;

      if (!updateCopy && !subviewsCopy)
      {
      }

      if (!v22)
      {
        [(UIInputWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
      }
    }

    else
    {

      if (!updateCopy && !subviewsCopy)
      {
      }
    }
  }

  if (updateCopy)
  {
    [(UIInputWindowController *)self updateHostingConstraints];
  }

  view = [(UIViewController *)self view];
  v24 = view;
  if (subviewsCopy)
  {
    [view layoutIfNeeded];
  }

  else
  {
    [view setNeedsLayout];
  }
}

- (void)setDisableUpdateMaskForSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions BOOLForPreferenceKey:@"ShowPasswordKeyboardInVideo"];

  if ((v7 & 1) == 0)
  {
    v14 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:100];
    hostView = [v14 hostView];
    v9 = hostView;
    if (hostView)
    {
      passcodeObscuringInteraction = self->_passcodeObscuringInteraction;
      if (entryCopy)
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
        [hostView removeInteraction:?];
        v13 = self->_passcodeObscuringInteraction;
        self->_passcodeObscuringInteraction = 0;
      }
    }
  }
}

- (void)updateForKeyplaneChangeWithContext:(id)context
{
  contextCopy = context;
  if (!self->_isChangingInputViews)
  {
    v22 = contextCopy;
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    transientInputViews = [v5 transientInputViews];
    isEmpty = [transientInputViews isEmpty];

    contextCopy = v22;
    if ((isEmpty & 1) == 0)
    {
      if ([v22 updateAssistantView])
      {
        v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        hardwareKeyboardExclusivityIdentifier = [v8 hardwareKeyboardExclusivityIdentifier];

        if (hardwareKeyboardExclusivityIdentifier)
        {
          systemInputAssistantViewController = [v8 systemInputAssistantViewController];
          inputViewSet = [(UIInputWindowController *)self inputViewSet];
          v12 = [systemInputAssistantViewController shouldBeShownForInputDelegate:0 inputViews:inputViewSet];

          placement = [(UIInputWindowController *)self placement];
          objc_opt_class();
          LODWORD(inputViewSet) = objc_opt_isKindOfClass() & 1;

          if (v12 != inputViewSet)
          {
            inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
            _window = [(UIViewController *)self _window];
            windowScene = [_window windowScene];
            v17 = [UIPeripheralHost endPlacementForInputViewSet:inputViewSet2 windowScene:windowScene];

            placement2 = [(UIInputWindowController *)self placement];
            LOBYTE(_window) = [placement2 isEqual:v17];

            if ((_window & 1) == 0)
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
          updateAssistantView = [v22 updateAssistantView];
          contextCopy = v22;
          if (!updateAssistantView)
          {
            goto LABEL_22;
          }
        }

        [(UIInputWindowController *)self resetBackdropHeight];
        [(UIInputWindowController *)self updateHostingConstraints];
        splitWidthsChanged = [v22 splitWidthsChanged];
        contextCopy = v22;
        if (!splitWidthsChanged)
        {
          goto LABEL_22;
        }

        inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
        [inputViewSet3 refreshPresentation];

        [(UIInputWindowControllerHosting *)self->_hosting _updateBackdropViews];
      }

      contextCopy = v22;
    }
  }

LABEL_22:
}

- (void)_collectTransitionTimeStatistics:(unint64_t)statistics withStart:(id)start
{
  startCopy = start;
  if (startCopy && !-[UIInputWindowController shouldNotifyRemoteKeyboards](self, "shouldNotifyRemoteKeyboards") && ([UIApp launchedToTest] & 1) == 0)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:startCopy];
    v9 = v8;
    v10 = +[UIKeyboard activeKeyboard];
    view = [(UIViewController *)self view];
    if ([v10 isDescendantOfView:view])
    {

      if ((statistics & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        kdebug_trace();
        v12 = dispatch_get_global_queue(-2, 0);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __70__UIInputWindowController__collectTransitionTimeStatistics_withStart___block_invoke;
        v13[3] = &__block_descriptor_48_e5_v8__0l;
        v13[4] = statistics;
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

- (void)pushAnimationStyle:(id)style
{
  if (style)
  {
    [(NSMutableArray *)self->_animationStyleStack addObject:?];
  }
}

- (void)performOperations:(id)operations withAnimationStyle:(id)style
{
  if (operations)
  {
    operationsCopy = operations;
    [(UIInputWindowController *)self pushAnimationStyle:style];
    operationsCopy[2](operationsCopy);

    [(UIInputWindowController *)self popAnimationStyle];
  }
}

- (BOOL)mergeTransitionIfNecessaryWithTransition:(id)transition
{
  v33 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  currentTransition = [(UIInputWindowController *)self currentTransition];
  v6 = currentTransition;
  if (!currentTransition || ([currentTransition cancelled] & 1) != 0)
  {
    goto LABEL_15;
  }

  toPlacement = [v6 toPlacement];
  toPlacement2 = [transitionCopy toPlacement];
  if (([toPlacement isEqual:toPlacement2] & 1) == 0)
  {

LABEL_7:
    v13 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = transitionCopy;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Merging transitions: %@ into %@", &v29, 0x16u);
    }

    [v6 setCancelled:1];
    animationStyle = [v6 animationStyle];
    [animationStyle cancelInterruptibleAnimations];

    notifications = [v6 notifications];
    notificationInfo = [v6 notificationInfo];
    [(UIInputWindowController *)self postEndNotifications:notifications withInfo:notificationInfo];

    allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
    [allHostingItems enumerateObjectsUsingBlock:&__block_literal_global_532_0];

    if ([v6 animationState] > 2)
    {
      goto LABEL_15;
    }

    [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
    fromPlacement = [v6 fromPlacement];
    [transitionCopy setFromPlacement:fromPlacement];

    fromPlacement2 = [transitionCopy fromPlacement];
    showsInputViews = [fromPlacement2 showsInputViews];
    toPlacement3 = [transitionCopy toPlacement];
    if (showsInputViews == [toPlacement3 showsInputViews])
    {
      fromPlacement3 = [transitionCopy fromPlacement];
      showsKeyboard = [fromPlacement3 showsKeyboard];
      toPlacement4 = [transitionCopy toPlacement];
      if (showsKeyboard == [toPlacement4 showsKeyboard])
      {
        animationStyle2 = [transitionCopy animationStyle];
        dontMerge = [animationStyle2 dontMerge];

        if (dontMerge)
        {
          goto LABEL_15;
        }

        animationStyle3 = [transitionCopy animationStyle];
        fromPlacement2 = [animationStyle3 copy];

        [fromPlacement2 setAnimated:0];
        [transitionCopy setAnimationStyle:fromPlacement2];
LABEL_14:

LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  animationStyle4 = [v6 animationStyle];
  animationStyle5 = [transitionCopy animationStyle];
  v11 = [animationStyle4 isEqual:animationStyle5];

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = 1;
LABEL_16:

  return v12;
}

- (void)addPendingActivity:(id)activity
{
  activityCopy = activity;
  v5 = _Block_copy(self->_pendingTransitionActivity);
  v6 = v5;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__UIInputWindowController_addPendingActivity___block_invoke;
    v11[3] = &unk_1E70F77D0;
    v12 = v5;
    v13 = activityCopy;
    v7 = [v11 copy];
    pendingTransitionActivity = self->_pendingTransitionActivity;
    self->_pendingTransitionActivity = v7;

    v9 = v12;
  }

  else
  {
    v10 = [activityCopy copy];
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

- (int64_t)visualStateFromPlacement:(id)placement
{
  placementCopy = placement;
  if ([placementCopy isCompactAssistantView])
  {
    v4 = 6;
  }

  else if ([placementCopy isFloating])
  {
    v4 = 3;
  }

  else if ([placementCopy isFloatingAssistantView])
  {
    v4 = 5;
  }

  else if ([placementCopy isUndocked])
  {
    v4 = 4;
  }

  else if ([placementCopy showsKeyboard])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)animateKeyboardTrackingElementsWithNotificationInfo:(id)info notificationType:(unint64_t)type updateForStart:(BOOL)start updateForEnd:(BOOL)end
{
  endCopy = end;
  startCopy = start;
  v66 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v11 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"for start";
    if (endCopy)
    {
      v12 = @"using keyboard animation";
    }

    if (!startCopy)
    {
      v12 = @"for end";
    }

    *buf = 138412546;
    v63 = v12;
    v64 = 2112;
    v65 = infoCopy;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Updating keyboard tracking elements %@ with notificationInfo:\n%@", buf, 0x16u);
  }

  _window = [(UIViewController *)self _window];
  _isRemoteKeyboardWindow = [_window _isRemoteKeyboardWindow];

  if ((_isRemoteKeyboardWindow & 1) == 0)
  {
    currentTransition = [(UIInputWindowController *)self currentTransition];
    [currentTransition setCancelled:1];

    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    animationStyle = [currentTransition2 animationStyle];
    [animationStyle cancelInterruptibleAnimations];

    [(UIInputWindowController *)self setCurrentTransition:0];
    [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
  }

  self->_externalTrackingUpdateInProgress = 1;
  [infoCopy duration];
  if (v18 <= 0.0)
  {
    +[UIInputViewAnimationStyle animationStyleImmediate];
  }

  else
  {
    [infoCopy duration];
    [UIInputViewAnimationStyle animationStyleAnimated:1 duration:?];
  }
  v19 = ;
  [infoCopy setNonKeyboardOverride:1];
  [infoCopy endFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputAccessoryView = [inputViewSet inputAccessoryView];
  if (inputAccessoryView)
  {
    v30 = inputAccessoryView;
    [(UIInputWindowController *)self inputViewSet];
    v32 = v31 = endCopy;
    isInputViewPlaceholder = [v32 isInputViewPlaceholder];

    endCopy = v31;
    if (isInputViewPlaceholder)
    {
      v34 = +[UIInputViewSetNotificationInfo info];
      externalTrackingInfo = self->_externalTrackingInfo;
      self->_externalTrackingInfo = v34;

      v36 = self->_externalTrackingInfo;
      [infoCopy endFrame];
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
  v39 = infoCopy;
  v54 = v39;
  v40 = v19;
  v55 = v40;
  typeCopy = type;
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
  v52 = startCopy;
  typeCopy2 = type;
  v42 = v39;
  v43 = _Block_copy(v45);
  if (startCopy && endCopy)
  {
    [v40 launchAnimation:v41 afterStarted:0 completion:v43 forHost:self fromCurrentPosition:0];
  }

  else
  {
    if (startCopy)
    {
      v41[2](v41);
    }

    if (endCopy)
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

    currentTransition = [(UIInputWindowController *)self currentTransition];
    animationStyle = [currentTransition animationStyle];
    v7 = animationStyle;
    if (animationStyle)
    {
      nextAnimationStyle = animationStyle;
    }

    else
    {
      nextAnimationStyle = [(UIInputWindowController *)self nextAnimationStyle];
    }

    v9 = nextAnimationStyle;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__131;
    v49 = __Block_byref_object_dispose__131;
    placement = [(UIInputWindowController *)self placement];
    v50 = [UIInputViewPlacementTransition transitionForExistingPlacement:placement animationStyle:v9];

    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    v12 = currentTransition2;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__131;
    v44 = __Block_byref_object_dispose__131;
    v45 = 0;
    if (currentTransition2 && ([currentTransition2 cancelled] & 1) == 0)
    {
      currentTransition3 = [(UIInputWindowController *)self currentTransition];
      notificationInfo = [currentTransition3 notificationInfo];
      v15 = v41[5];
      v41[5] = notificationInfo;

      fromPlacement = [v12 fromPlacement];
      [*(*(&buf + 1) + 40) setFromPlacement:fromPlacement];

      [v12 setCancelled:1];
      animationStyle2 = [v12 animationStyle];
      [animationStyle2 cancelInterruptibleAnimations];

      [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
    }

    v18 = v41[5];
    if (!v18)
    {
      notificationInfoWaitingForInputUI = [(UIInputWindowController *)self notificationInfoWaitingForInputUI];

      if (notificationInfoWaitingForInputUI)
      {
        notificationInfoWaitingForInputUI2 = [(UIInputWindowController *)self notificationInfoWaitingForInputUI];
        v21 = v41[5];
        v41[5] = notificationInfoWaitingForInputUI2;

        [(UIInputWindowController *)self setNotificationInfoWaitingForInputUI:0];
      }

      else
      {
        initialNotificationInfo = [(UIInputWindowController *)self initialNotificationInfo];
        v23 = v41[5];
        v41[5] = initialNotificationInfo;

        v24 = v41[5];
        animationStyle3 = [*(*(&buf + 1) + 40) animationStyle];
        [v24 populateWithAnimationStyle:animationStyle3];
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
    animationStyle4 = [*(*(&buf + 1) + 40) animationStyle];
    [animationStyle4 setExtraOptions:{objc_msgSend(animationStyle4, "extraOptions") & 0xFFFFFFFFFFFFFFFDLL}];

    [(UIInputWindowController *)self setCurrentTransition:*(*(&buf + 1) + 40)];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 2;
    [*(*(&buf + 1) + 40) didAdvanceAnimationToState:1];
    notificationInfo2 = [*(*(&buf + 1) + 40) notificationInfo];
    [notificationInfo2 setWaitingForInputUI:0];

    notificationInfo3 = [*(*(&buf + 1) + 40) notificationInfo];
    v29 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    currentUIState = [v29 currentUIState];
    [notificationInfo3 setWasCausedRemotely:{objc_msgSend(notificationInfo3, "wasCausedRemotely") | objc_msgSend(currentUIState, "isLocal") ^ 1}];

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
    animationStyle5 = [*(*(&buf + 1) + 40) animationStyle];
    [animationStyle5 launchAnimation:v31 afterStarted:v32 completion:v33 forHost:self fromCurrentPosition:0];

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

- (void)moveFromPlacement:(id)placement toPlacement:(id)toPlacement starting:(id)starting completion:(id)completion
{
  v186 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  toPlacementCopy = toPlacement;
  startingCopy = starting;
  completionCopy = completion;
  v12 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    placement = self->_placement;
    *buf = 138412802;
    *&buf[4] = placementCopy;
    *&buf[12] = 2112;
    *&buf[14] = toPlacementCopy;
    *&buf[22] = 2112;
    placementCopy2 = placement;
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
    if ([toPlacementCopy showsKeyboard])
    {
      inputViewSet = [(UIInputWindowController *)self inputViewSet];
      inputAccessoryView = [inputViewSet inputAccessoryView];
      v19 = off_1E70E9B28;
      if (inputAccessoryView)
      {
        v19 = off_1E70E9AF8;
      }

      placement = [(__objc2_class *)*v19 placement];
    }

    else
    {
      placement = toPlacementCopy;
    }

    v22 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
      inputAccessoryView2 = [inputViewSet2 inputAccessoryView];
      *buf = 67109378;
      *&buf[4] = inputAccessoryView2 != 0;
      *&buf[8] = 2112;
      *&buf[10] = placement;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "_disablePlacementChanges = YES, (iav: %d) new placement: %@", buf, 0x12u);
    }

    v21 = placement;
  }

  else
  {
    v21 = toPlacementCopy;
  }

  v137 = v21;
  if (([v21 showsInputOrAssistantViews] & 1) == 0 && (objc_msgSend(v137, "showsKeyboard") & 1) == 0)
  {
    v25 = +[UIKeyboardImpl activeInstance];
    isMinimized = [v25 isMinimized];

    if (!isMinimized)
    {
      goto LABEL_26;
    }

    transientInputViewSet = [(UIInputWindowController *)self transientInputViewSet];
    v28 = transientInputViewSet;
    if (transientInputViewSet)
    {
      inputViewSet3 = transientInputViewSet;
    }

    else
    {
      inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
    }

    inputView = [inputViewSet3 inputView];
    if (inputView)
    {
    }

    else
    {
      inputAssistantView = [inputViewSet3 inputAssistantView];
      v32 = inputAssistantView == 0;

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
  nextAnimationStyle = [(UIInputWindowController *)self nextAnimationStyle];
  v34 = [UIInputViewPlacementTransition transitionFromPlacement:placementCopy toPlacement:v137 withAnimationStyle:nextAnimationStyle];
  if ([(UIInputWindowController *)self mergeTransitionIfNecessaryWithTransition:v34])
  {
    if (startingCopy)
    {
      [(UIInputWindowController *)self addPendingActivity:startingCopy];
    }

    if (completionCopy)
    {
      [(UIInputWindowController *)self addPendingActivity:?];
    }

    goto LABEL_113;
  }

  [(UIInputWindowController *)self flushPendingActivities];
  v35 = placementCopy;
  currentTransition = [(UIInputWindowController *)self currentTransition];
  fromPlacement = v35;
  if (currentTransition)
  {
    if ([(UIInputWindowController *)self isRotating])
    {
      currentTransition2 = [(UIInputWindowController *)self currentTransition];
      cancelled = [currentTransition2 cancelled];

      fromPlacement = v35;
      if (cancelled)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    fromPlacement = [v34 fromPlacement];
  }

LABEL_37:
  fromPlacement2 = [v34 fromPlacement];

  v40 = [fromPlacement2 isEqual:v137];
  animationStyle = [v34 animationStyle];
  v42 = [animationStyle extraOptions] & 0xFFFFFFFFFFFFFFFDLL;
  v43 = 2;
  if (!v40)
  {
    v43 = 0;
  }

  [animationStyle setExtraOptions:v42 | v43];

  [(UIInputWindowController *)self setCurrentTransition:v34];
  if (startingCopy)
  {
    startingCopy[2]();
  }

  if ([fromPlacement2 isEqual:v137])
  {
    v44 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v34 setAnimationStyle:v44];
  }

  initialNotificationInfo = [(UIInputWindowController *)self initialNotificationInfo];
  [v34 setNotificationInfo:initialNotificationInfo];

  notificationInfo = [v34 notificationInfo];
  animationStyle2 = [v34 animationStyle];
  [notificationInfo populateWithAnimationStyle:animationStyle2];

  [v34 setNotifications:{objc_msgSend(fromPlacement, "notificationsForTransitionToPlacement:", v137)}];
  if ([v34 notifications])
  {
    if ([v34 notifications] != 1)
    {
      notificationInfo2 = [v34 notificationInfo];
      [notificationInfo2 setForceNotification:1];
    }
  }

  else
  {
    notificationInfo3 = [v34 notificationInfo];
    forceNotification = [notificationInfo3 forceNotification];

    if (forceNotification)
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

    if ([fromPlacement2 accessoryViewWillAppear] && (objc_msgSend(fromPlacement2, "inputViewWillAppear") & 1) == 0)
    {
      LOBYTE(v52) = [v137 accessoryViewWillAppear] ^ 1 | v52;
    }

    notificationInfo4 = [v34 notificationInfo];
    [notificationInfo4 setShouldSendInClient:v52 & 1];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  placementCopy2 = "";
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
  if (([fromPlacement2 isEqual:self->_placement] & 1) == 0)
  {
    view = [(UIViewController *)self view];
    [view frame];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    view2 = [(UIViewController *)self view];
    window = [view2 window];
    [window bounds];
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
      requiresWindowBasedSafeAreaInsets = [fromPlacement2 requiresWindowBasedSafeAreaInsets];
      requiresWindowBasedSafeAreaInsets2 = [v137 requiresWindowBasedSafeAreaInsets];

      if (requiresWindowBasedSafeAreaInsets != requiresWindowBasedSafeAreaInsets2)
      {
        [(UIViewController *)self _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      }
    }
  }

  animationStyle3 = [v34 animationStyle];
  v72 = [animationStyle3 controllerForStartPlacement:fromPlacement2 endPlacement:v137];
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
  if (([fromPlacement2 isInteractive] & 1) == 0)
  {
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3;
    v168[3] = &unk_1E70F6B40;
    v169 = v131;
    selfCopy = self;
    v171 = fromPlacement2;
    v172 = v73;
    [(UIInputWindowController *)self ignoreLayoutNotifications:v168];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    notificationInfo5 = [v131 notificationInfo];
    v75 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    currentUIState = [v75 currentUIState];
    [notificationInfo5 setWasCausedRemotely:{objc_msgSend(notificationInfo5, "wasCausedRemotely") | objc_msgSend(currentUIState, "isLocal") ^ 1}];
  }

  else
  {
    notificationInfo5 = [v131 notificationInfo];
    v75 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [notificationInfo5 setWasCausedRemotely:{objc_msgSend(v75, "handlingRemoteEvent") | objc_msgSend(notificationInfo5, "wasCausedRemotely")}];
  }

  animationStyle4 = [v131 animationStyle];
  if (([animationStyle4 animated] & 1) == 0)
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
  assistantView = [fromPlacement2 assistantView];
  v80 = assistantView;
  if (assistantView)
  {
    v81 = assistantView;
  }

  else
  {
    v81 = fromPlacement2;
  }

  v133 = v81;

  assistantView2 = [v73 assistantView];
  v83 = assistantView2;
  if (assistantView2)
  {
    v84 = assistantView2;
  }

  else
  {
    v84 = v73;
  }

  v85 = v84;

  if (![v133 isEqual:fromPlacement2] || (objc_msgSend(v85, "isEqual:", v73) & 1) == 0)
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
    isCompactAssistantView = [v133 isCompactAssistantView];
    v124 = isCompactAssistantView ^ [v85 isCompactAssistantView];
  }

  else
  {
    v124 = 0;
  }

  v126 = [(UIInputWindowController *)self visualStateFromPlacement:fromPlacement2];
  v129 = [(UIInputWindowController *)self visualStateFromPlacement:v73];
  animationTypeForCurrentTransition = [(UIInputWindowController *)self animationTypeForCurrentTransition];
  if (![objc_opt_class() supportsStateBasedAnimations] || (objc_msgSend(fromPlacement2, "isInteractive") & 1) != 0 || (objc_msgSend(v73, "isInteractive") & 1) != 0 || ((v88 = -[UIInputWindowController isTransitioningBetweenFloatingStates](self, "isTransitioningBetweenFloatingStates"), v126 == v129) ? (v89 = 1) : (v89 = v88), (v89 & 1) != 0 || (objc_msgSend(nextAnimationStyle, "duration"), v90 <= 0.0)))
  {
    v127 = 0;
    v123 = 0;
  }

  else
  {
    v91 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
    [v91 prepareForTransitionToState:v129 animationType:animationTypeForCurrentTransition interactiveTransition:0];

    v127 = 1;
    v123 = 1;
  }

  postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];
  if (postRotationPlacement || [v85 isFloatingAssistantView] && (objc_msgSend(v133, "isFloatingAssistantView") & 1) != 0)
  {
    isInputViewPlaceholder = 1;
  }

  else if ([v85 showsInputViews])
  {
    inputViewSet4 = [(UIInputWindowController *)self inputViewSet];
    if ([inputViewSet4 isEmpty])
    {
      isInputViewPlaceholder = 1;
    }

    else
    {
      inputViewSet5 = [(UIInputWindowController *)self inputViewSet];
      isInputViewPlaceholder = [inputViewSet5 isInputViewPlaceholder];
    }
  }

  else
  {
    isInputViewPlaceholder = 0;
  }

  v94 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder = [v94 delegateAsResponder];
  _isWritingToolsActive = [delegateAsResponder _isWritingToolsActive];

  if (_isWritingToolsActive && self->_disablePlacementChanges)
  {
    v97 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder2 = [v97 delegateAsResponder];
    _isWritingToolsActive2 = [delegateAsResponder2 _isWritingToolsActive];

    isInputViewPlaceholder |= _isWritingToolsActive2;
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
  v102 = fromPlacement2;
  v166 = v127;
  v162 = v102;
  v163 = v126;
  v164 = v129;
  v165 = animationTypeForCurrentTransition;
  v167 = isInputViewPlaceholder;
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
  _transitionStartTime = [v106 _transitionStartTime];

  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __77__UIInputWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_559;
  v144[3] = &unk_1E7116540;
  v144[4] = self;
  v108 = v104;
  v145 = v108;
  v109 = v101;
  v146 = v109;
  v110 = _transitionStartTime;
  v147 = v110;
  placementCopy = v102;
  v148 = placementCopy;
  v152 = v127;
  v149 = completionCopy;
  v150 = v129;
  v151 = animationTypeForCurrentTransition;
  v153 = isInputViewPlaceholder;
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
  selfCopy2 = self;
  v116 = _Block_copy(v138);
  v117 = v116;
  if (v123)
  {
    (*(v116 + 2))(v116);
  }

  else
  {
    [(UIInputWindowController *)self chainPlacementsIfNecessaryFrom:placementCopy toPlacement:v109 transition:v112 completion:v116];
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

- (void)chainPlacementsIfNecessaryFrom:(id)from toPlacement:(id)placement transition:(id)transition completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  placementCopy = placement;
  transitionCopy = transition;
  completionCopy = completion;
  v13 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = fromCopy;
    *&buf[12] = 2112;
    *&buf[14] = placementCopy;
    *&buf[22] = 2112;
    v75 = transitionCopy;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "chainPlacementsIfNecessaryFrom, from: %@, to: %@ transition: %@", buf, 0x20u);
  }

  if ([fromCopy isEqual:placementCopy])
  {
    goto LABEL_41;
  }

  animationStyle = [transitionCopy animationStyle];
  if (![animationStyle animated])
  {
    goto LABEL_40;
  }

  isTransitioningBetweenFloatingStates = [(UIInputWindowController *)self isTransitioningBetweenFloatingStates];

  if (isTransitioningBetweenFloatingStates)
  {
    goto LABEL_41;
  }

  if ([placementCopy isFloating] && objc_msgSend(fromCopy, "isVisible"))
  {
    if ([fromCopy isFloatingAssistantView])
    {
      placement = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:fromCopy];
      animationStyle2 = [transitionCopy animationStyle];
    }

    else if ([fromCopy showsInputOrAssistantViews])
    {
      inputViewSet = [(UIInputWindowController *)self inputViewSet];
      inputAccessoryView = [inputViewSet inputAccessoryView];

      v26 = off_1E70E9B28;
      if (inputAccessoryView)
      {
        v26 = off_1E70E9AF8;
      }

      placement = [(__objc2_class *)*v26 placement];
      animationStyle2 = [transitionCopy animationStyle];
    }

    else
    {
      placement = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:fromCopy];
      animationStyle2 = +[UIInputViewAnimationStyle animationStyleImmediate];
    }

    animationStyle3 = animationStyle2;
    placement2 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:placementCopy];
    v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
    goto LABEL_56;
  }

  if ([placementCopy isVisible] && objc_msgSend(fromCopy, "isFloating"))
  {
    placement = +[UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:forFloatingAssistantViewTransition:](UIInputViewSetPlacementInvisibleForFloatingTransition, "placementWithPlacement:forFloatingAssistantViewTransition:", fromCopy, [placementCopy isFloatingAssistantView]);
    animationStyle3 = [transitionCopy animationStyle];
    if ([placementCopy showsInputOrAssistantViews])
    {
      if ([placementCopy isFloatingAssistantView])
      {
        v18 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:placementCopy];
      }

      else
      {
        inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
        inputAccessoryView2 = [inputViewSet2 inputAccessoryView];

        if (inputAccessoryView2)
        {
          +[UIInputViewSetPlacementAccessoryOnScreen placement];
        }

        else
        {
          +[UIInputViewSetPlacementOffScreenDown placement];
        }
        v18 = ;
      }

      placement2 = v18;
      v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  if ([placementCopy isFloatingAssistantView] && objc_msgSend(fromCopy, "isVisible") && (objc_msgSend(fromCopy, "isFloatingAssistantView") & 1) == 0)
  {
    if ([fromCopy accessoryViewWillAppear] && (objc_msgSend(fromCopy, "showsKeyboard") & 1) == 0)
    {
      placement = [UIInputViewSetPlacementInvisibleAssistantBar placementWithPlacement:placementCopy];
      animationStyle3 = +[UIInputViewAnimationStyle animationStyleImmediate];
      goto LABEL_53;
    }

    placement = +[UIInputViewSetPlacementOffScreenDownForFloatingAssistant placement];
    animationStyle3 = [transitionCopy animationStyle];
    placement2 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:placementCopy];
    v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
LABEL_56:
    animationStyle4 = v23;
    goto LABEL_57;
  }

  if (![placementCopy isVisible] || !objc_msgSend(fromCopy, "isFloatingAssistantView") || (objc_msgSend(placementCopy, "isFloatingAssistantView") & 1) != 0)
  {
    if ([fromCopy isFloatingAssistantView])
    {
      if ([placementCopy isFloatingAssistantView])
      {
        if (([placementCopy isInteractive] & 1) == 0)
        {
          v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          visualModeManager = [v19 visualModeManager];
          windowingModeEnabled = [visualModeManager windowingModeEnabled];

          if (windowingModeEnabled)
          {
            placement = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:fromCopy];
            animationStyle3 = [transitionCopy animationStyle];
            placement2 = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:placementCopy];
            v23 = +[UIInputViewAnimationStyle animationStyleImmediate];
            goto LABEL_56;
          }
        }
      }
    }

LABEL_41:
    placement2 = 0;
    animationStyle3 = 0;
    animationStyle4 = 0;
    goto LABEL_42;
  }

  if ([placementCopy accessoryViewWillAppear])
  {
    if (([placementCopy showsKeyboard] & 1) == 0)
    {
      inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
      inputAccessoryView3 = [inputViewSet3 inputAccessoryView];
      v30 = inputAccessoryView3 == 0;

      if (!v30)
      {
        animationStyle = +[UIInputViewAnimationStyle animationStyleImmediate];
        [transitionCopy setAnimationStyle:animationStyle];
LABEL_40:

        goto LABEL_41;
      }
    }
  }

  placement = [UIInputViewSetPlacementInvisibleForFloatingAssistantTransition placementWithPlacement:fromCopy];
  animationStyle3 = [transitionCopy animationStyle];
  if (![placementCopy showsInputOrAssistantViews])
  {
LABEL_30:
    v27 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [transitionCopy setAnimationStyle:v27];

LABEL_53:
    animationStyle4 = 0;
    placement2 = 0;
    goto LABEL_57;
  }

  accessoryViewWillAppear = [placementCopy accessoryViewWillAppear];
  v33 = off_1E70E9AF8;
  if (!accessoryViewWillAppear)
  {
    v33 = off_1E70E9B28;
  }

  placement2 = [(__objc2_class *)*v33 placement];
  v34 = +[UIInputViewAnimationStyle animationStyleImmediate];

  animationStyle4 = [transitionCopy animationStyle];
  animationStyle3 = v34;
LABEL_57:
  if (placement)
  {
    v37 = _UIInputWindowControllerLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = placement;
      *&buf[12] = 2112;
      *&buf[14] = placement2;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "chainPlacementsIfNecessaryFrom, intermediate 1: %@, intermediate 2: %@", buf, 0x16u);
    }

    [(UIInputWindowController *)self setPlacementDuringAnimation:placement];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v75) = 0;
    if (!+[UIKeyboard isInputSystemUI])
    {
      v44 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      visualModeManager2 = [v44 visualModeManager];
      shouldShowWithinAppWindow = [visualModeManager2 shouldShowWithinAppWindow];

      if (shouldShowWithinAppWindow)
      {
        _window = [(UIViewController *)self _window];
        _isRemoteKeyboardWindow = [_window _isRemoteKeyboardWindow];

        if (_isRemoteKeyboardWindow)
        {
          goto LABEL_62;
        }
      }

      else
      {
        _window2 = [(UIViewController *)self _window];
        _isRemoteKeyboardWindow2 = [_window2 _isRemoteKeyboardWindow];

        if (!_isRemoteKeyboardWindow2)
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
    v41 = fromCopy;
    v72 = v41;
    v52 = _Block_copy(aBlock);
    v42 = [_UIWeakReference weakReferenceWrappingObject:self];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_2;
    v65[3] = &unk_1E70F8868;
    v66 = v42;
    v51 = placement;
    v67 = v51;
    v68 = v41;
    v69 = placementCopy;
    selfCopy = self;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __92__UIInputWindowController_chainPlacementsIfNecessaryFrom_toPlacement_transition_completion___block_invoke_3;
    v56[3] = &unk_1E71165B8;
    v57 = transitionCopy;
    v54 = v52;
    v63 = v54;
    selfCopy2 = self;
    placement2 = placement2;
    v59 = placement2;
    v43 = v66;
    v60 = v43;
    animationStyle4 = animationStyle4;
    v61 = animationStyle4;
    v62 = v69;
    v64 = completionCopy;
    [animationStyle3 launchAnimation:v65 afterStarted:0 completion:v56 forHost:self fromCurrentPosition:0];

    _Block_object_dispose(buf, 8);
    goto LABEL_43;
  }

LABEL_42:
  completionCopy[2](completionCopy);
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
  hostView = [v2 hostView];

  return hostView;
}

- (CGRect)transitioningFrame
{
  view = [(UIViewController *)self view];
  [view frame];
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

- (void)updateToPlacement:(id)placement withNormalAnimationsAndNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  placementCopy = placement;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__UIInputWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v7 = placementCopy;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (notificationsCopy)
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

- (void)setKeyboardWindowSnapshotOn:(BOOL)on
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

  self->_keyboardWindowSnapshotOn = on;
}

- (void)setInputViewsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v14[1] = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v5 remoteTextInputPartner];
    v13 = @"hidden";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:hiddenCopy];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [remoteTextInputPartner forwardApplicationOperation:sel_setInputViewsHidden_ object:v8];
  }

  if (self->_inhibitingHiding)
  {
    hiddenCount = self->_hiddenCount;
    if (hiddenCopy)
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
    v12 = hiddenCopy;
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

- (void)setHiddenCount:(int)count
{
  if (count)
  {
    v5 = 4000;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  view = [(UIViewController *)self view];
  [view setOffsetOrigin:{0.0, v6}];

  self->_hiddenCount = count;
}

- (void)prepareForSplitTransition
{
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:inputViewSet];
}

- (void)finishSplitTransition
{
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:inputViewSet];

  inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
  [(UIInputWindowController *)self updateInputSwitcherView:inputViewSet2];
}

- (void)updateKeyboardLayoutGuideForRotationOrientation:(int64_t)orientation
{
  v43 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() useMetronomeTracking])
  {
    return;
  }

  placementIgnoringRotation = [(UIInputWindowController *)self placementIgnoringRotation];
  if ([placementIgnoringRotation isFloating])
  {
    goto LABEL_6;
  }

  placement = [(UIInputWindowController *)self placement];
  if ([placement isFloatingAssistantView])
  {

LABEL_6:
    v6 = placementIgnoringRotation;
LABEL_7:

    return;
  }

  placement2 = [(UIInputWindowController *)self placement];
  showsKeyboard = [placement2 showsKeyboard];

  if (!showsKeyboard)
  {
    return;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    currentUIState = [v9 currentUIState];

    if ([currentUIState assistantBarVisible])
    {
      requiresHeightForIntegratedAssistantBar = 1;
    }

    else
    {
      requiresHeightForIntegratedAssistantBar = [currentUIState requiresHeightForIntegratedAssistantBar];
    }

    if ((orientation - 3) >= 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }

    [UIKeyboard sizeForInterfaceOrientation:v12 includingAssistantBar:requiresHeightForIntegratedAssistantBar ignoreInputView:0];
    v14 = v13;
    v16 = v15;

    goto LABEL_23;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [UIKeyboard sizeForInterfaceOrientation:orientation ignoreInputView:0];
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
    _window = [(UIViewController *)self _window];
    _isHostedInAnotherProcess = [_window _isHostedInAnotherProcess];

    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    hasActiveKeyboardResponder = [v22 hasActiveKeyboardResponder];

    if ((hasActiveKeyboardResponder & 1) != 0 || _isHostedInAnotherProcess)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __75__UIInputWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke_2;
      v39[3] = &unk_1E7116408;
      v40 = v19;
      [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v39];
      windows = v40;
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      _window2 = [(UIViewController *)self _window];
      windowScene = [_window2 windowScene];
      windows = [windowScene windows];

      v27 = [windows countByEnumeratingWithState:&v35 objects:v42 count:16];
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
              objc_enumerationMutation(windows);
            }

            (*(v19 + 2))(v19, *(*(&v35 + 1) + 8 * i));
          }

          v28 = [windows countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v28);
      }
    }

    return;
  }

  _window3 = [(UIViewController *)self _window];
  if ([_window3 _isRemoteKeyboardWindow])
  {
    v6 = _window3;
    goto LABEL_7;
  }

  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

  if (isInputViewPlaceholder)
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
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  isSplit = [inputViewSet isSplit];

  return isSplit ^ 1;
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (+[_UIRemoteKeyboards enabled]&& !self->_rotationState)
  {
    self->_rotationState = 1;
    shouldNotifyRemoteKeyboards = [(UIInputWindowController *)self shouldNotifyRemoteKeyboards];
    if (shouldNotifyRemoteKeyboards)
    {
      v8 = +[UIInputViewSetNotificationInfo info];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_rotationInfo, v8);
    if (shouldNotifyRemoteKeyboards)
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

    placement = [(UIInputWindowController *)self placement];
    if ([placement showsKeyboard])
    {
    }

    else
    {
      placement2 = [(UIInputWindowController *)self placement];
      v14 = +[UIInputViewSetPlacementInitialPosition placement];
      v15 = [placement2 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        [(UIInputWindowController *)self updateGuideForOffscreenRotationWithDuration:duration];
      }
    }

    v16 = +[UIKeyboardImpl isFloating];
    hosting = self->_hosting;
    if (v16)
    {
      _inputAssistantView6 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:2];
      splitKeyboardController = [_inputAssistantView6 splitKeyboardController];
      [splitKeyboardController cancelGestureRecognizers];
    }

    else
    {
      v20 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:1];
      hostView = [v20 hostView];
      [hostView bounds];
      v23 = v22;
      v25 = v24;

      if (v23 > 0.0 && v25 > 0.0)
      {
        v26 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
        hostView2 = [v26 hostView];
        v28 = [hostView2 snapshotViewAfterScreenUpdates:0];
        v29 = self->_preRotationSnapshot;
        self->_preRotationSnapshot = v28;

        [(UIView *)self->_preRotationSnapshot setTranslatesAutoresizingMaskIntoConstraints:0];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_2;
        v84[3] = &unk_1E70F3590;
        v84[4] = self;
        [UIView performWithoutAnimation:v84];
        inputViewSet = [(UIInputWindowController *)self inputViewSet];
        LODWORD(hostView2) = [inputViewSet isSplit];

        if (hostView2)
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
            inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
            [inputViewSet2 _rightInputViewSetFrame];
            v35 = v34;

            inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
            [inputViewSet3 _leftInputViewSetFrame];
            v38 = v37;

            v39 = v38 / v32;
            v40 = (v32 - v38 - v35) / v32;
          }

          layer = [(UIView *)self->_preRotationSnapshot layer];
          [layer setContentsCenter:{v39, 0.0, v40, 1.0}];
        }
      }

      currentTransition = [(UIInputWindowController *)self currentTransition];
      if (currentTransition)
      {
        v43 = currentTransition;
        transientInputViewSet = [(UIInputWindowController *)self transientInputViewSet];

        if (transientInputViewSet)
        {
          transientInputViewSet2 = [(UIInputWindowController *)self transientInputViewSet];
          [(UIInputWindowController *)self changeToInputViewSet:transientInputViewSet2];
        }
      }

      currentTransition2 = [(UIInputWindowController *)self currentTransition];
      toPlacement = [currentTransition2 toPlacement];
      if (toPlacement)
      {
        [(UIInputWindowController *)self setPostRotationPlacement:toPlacement];
      }

      else
      {
        placement3 = [(UIInputWindowController *)self placement];
        [(UIInputWindowController *)self setPostRotationPlacement:placement3];
      }

      [(UIInputWindowController *)self setPostRotationPendingBlock:0];
      v49 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [(UIInputWindowController *)self pushAnimationStyle:v49];

      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __69__UIInputWindowController_willRotateToInterfaceOrientation_duration___block_invoke_3;
      v83[3] = &unk_1E70F32F0;
      v83[4] = self;
      v83[5] = orientation;
      [(UIInputWindowController *)self performWithoutAppearanceCallbacks:v83];
      if (self->_preRotationSnapshot)
      {
        view = [(UIViewController *)self view];
        [view addSubview:self->_preRotationSnapshot];
      }

      _inputView = [(UIInputWindowController *)self _inputView];
      [_inputView bounds];
      self->_preRotationInputViewSize.width = v52;
      self->_preRotationInputViewSize.height = v53;

      p_preRotationInputAssistantViewSize = &self->_preRotationInputAssistantViewSize;
      _inputAssistantView = [(UIInputWindowController *)self _inputAssistantView];
      if (_inputAssistantView)
      {
        _inputAssistantView2 = [(UIInputWindowController *)self _inputAssistantView];
        [_inputAssistantView2 bounds];
        p_preRotationInputAssistantViewSize->width = v57;
        self->_preRotationInputAssistantViewSize.height = v58;
      }

      else
      {
        *p_preRotationInputAssistantViewSize = *MEMORY[0x1E695F060];
      }

      p_preRotationInputAccessoryViewSize = &self->_preRotationInputAccessoryViewSize;
      _inputAccessoryView = [(UIInputWindowController *)self _inputAccessoryView];
      if (_inputAccessoryView)
      {
        _inputAccessoryView2 = [(UIInputWindowController *)self _inputAccessoryView];
        [_inputAccessoryView2 bounds];
        p_preRotationInputAccessoryViewSize->width = v62;
        self->_preRotationInputAccessoryViewSize.height = v63;
      }

      else
      {
        *p_preRotationInputAccessoryViewSize = *MEMORY[0x1E695F060];
      }

      _inputView2 = [(UIInputWindowController *)self _inputView];
      v65 = _inputView2;
      if (_inputView2)
      {
        [_inputView2 transform];
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
      _inputAssistantView3 = [(UIInputWindowController *)self _inputAssistantView];
      if (_inputAssistantView3)
      {
        _inputAssistantView4 = [(UIInputWindowController *)self _inputAssistantView];
        v69 = _inputAssistantView4;
        if (_inputAssistantView4)
        {
          [_inputAssistantView4 transform];
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
      _inputAccessoryView3 = [(UIInputWindowController *)self _inputAccessoryView];
      if (_inputAccessoryView3)
      {
        _inputAccessoryView4 = [(UIInputWindowController *)self _inputAccessoryView];
        v73 = _inputAccessoryView4;
        if (_inputAccessoryView4)
        {
          [_inputAccessoryView4 transform];
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

      _inputView3 = [(UIInputWindowController *)self _inputView];
      [_inputView3 setAlpha:0.0];

      _inputView4 = [(UIInputWindowController *)self _inputView];
      layer2 = [_inputView4 layer];
      [layer2 setAllowsGroupOpacity:0];

      _inputAssistantView5 = [(UIInputWindowController *)self _inputAssistantView];
      layer3 = [_inputAssistantView5 layer];
      [layer3 setAllowsGroupOpacity:0];

      _inputAccessoryView5 = [(UIInputWindowController *)self _inputAccessoryView];
      [_inputAccessoryView5 setAlpha:0.0];

      _inputAssistantView6 = [(UIInputWindowController *)self _inputAssistantView];
      [_inputAssistantView6 setAlpha:0.0];
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

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
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
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v40 = @"UITextEffectsWindow_toOrientation";
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
      v41[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      [defaultCenter postNotificationName:@"UITextEffectsWindowViewControllerWillRotateNotification" object:self userInfo:v10];
    }

    else
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_3;
      v36[3] = &unk_1E70F3590;
      v36[4] = self;
      [(UIInputWindowController *)self performWithoutCallbacksOrNotifications:v36];
      view = [(UIViewController *)self view];
      [view setNeedsUpdateConstraints];

      _inputView = [(UIInputWindowController *)self _inputView];
      _inputAssistantView = [(UIInputWindowController *)self _inputAssistantView];
      _inputAccessoryView = [(UIInputWindowController *)self _inputAccessoryView];
      if ([(UIInputWindowController *)self _useLiveRotation])
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_5;
        v31[3] = &unk_1E70F6B40;
        v15 = _inputView;
        v32 = v15;
        v16 = _inputAssistantView;
        v33 = v16;
        v17 = _inputAccessoryView;
        v34 = v17;
        selfCopy = self;
        [UIView performWithoutAnimation:v31];
        [v15 setAlpha:1.0];
        [v16 setAlpha:1.0];
        [v17 setAlpha:1.0];
        [(UIView *)self->_preRotationSnapshot setAlpha:0.0];
      }

      v18 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
      hostView = [v18 hostView];
      [hostView bounds];
      [(UIView *)self->_preRotationSnapshot setBounds:?];

      v20 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
      hostView2 = [v20 hostView];
      [hostView2 center];
      [(UIView *)self->_preRotationSnapshot setCenter:?];

      v22 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __78__UIInputWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_7;
      v26[3] = &unk_1E70F4378;
      v26[4] = self;
      v27 = _inputView;
      v28 = _inputAssistantView;
      v29 = _inputAccessoryView;
      orientationCopy = orientation;
      v10 = _inputAccessoryView;
      v9 = _inputAssistantView;
      defaultCenter = _inputView;
      [UIView conditionallyAnimate:v22 withAnimation:&__block_literal_global_608_0 layout:v26 completion:0];
      +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v38 = @"UITextEffectsWindow_toOrientation";
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
      v39 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [defaultCenter2 postNotificationName:@"UITextEffectsWindowViewControllerWillRotateNotification" object:self userInfo:v25];

      [(UIInputViewSetNotificationInfo *)self->_rotationInfo setDuration:duration];
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

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (self->_rotationState == 2)
  {
    self->_rotationState = 0;
    [(UIInputWindowController *)self _updateContentOverlayInsetsForSelfAndChildren];
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    inputView = [inputViewSet inputView];
    [inputView setAlpha:1.0];

    inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
    inputView2 = [inputViewSet2 inputView];
    layer = [inputView2 layer];
    [layer setAllowsGroupOpacity:1];

    inputViewSet3 = [(UIInputWindowController *)self inputViewSet];
    inputAssistantView = [inputViewSet3 inputAssistantView];
    layer2 = [inputAssistantView layer];
    [layer2 setAllowsGroupOpacity:1];

    inputViewSet4 = [(UIInputWindowController *)self inputViewSet];
    inputAssistantView2 = [inputViewSet4 inputAssistantView];
    [inputAssistantView2 setAlpha:1.0];

    inputViewSet5 = [(UIInputWindowController *)self inputViewSet];
    inputAccessoryView = [inputViewSet5 inputAccessoryView];
    [inputAccessoryView setAlpha:1.0];

    [(UIView *)self->_preRotationSnapshot removeFromSuperview];
    preRotationSnapshot = self->_preRotationSnapshot;
    self->_preRotationSnapshot = 0;

    postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

    if (postRotationPlacement)
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
      v48[5] = orientation;
      [(UIInputWindowController *)self performWithoutAppearanceCallbacks:v48];
      [(UIInputWindowController *)self popAnimationStyle];
      postRotationInputViewSet = [(UIInputWindowController *)self postRotationInputViewSet];
      postRotationInputViewNotificationInfo = [(UIInputWindowController *)self postRotationInputViewNotificationInfo];
      [postRotationInputViewNotificationInfo setDueToRotation:1];
      [postRotationInputViewNotificationInfo setShouldSendInClient:1];
      if (+[UIKeyboard usesInputSystemUI])
      {
        [postRotationInputViewNotificationInfo setWaitingForInputUI:1];
      }

      [(UIInputWindowController *)self setPostRotationPlacement:0];
      [(UIInputWindowController *)self setPostRotationInputViewSet:0];
      [(UIInputWindowController *)self setPostRotationInputViewNotificationInfo:0];
      postRotationPendingBlock = [(UIInputWindowController *)self postRotationPendingBlock];

      if (postRotationPendingBlock)
      {

        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"didRotateFromInterfaceOrientation: has postRotationPendingBlock"];
        [postRotationInputViewNotificationInfo addKeyboardNotificationDebuggingInfo:v22];

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_7;
        v47[3] = &unk_1E70F3590;
        v47[4] = self;
        [(UIInputWindowController *)self performOperations:v47 withTemplateNotificationInfo:postRotationInputViewNotificationInfo];
        postRotationInputViewSet = 0;
      }

      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      _window = [(UIViewController *)self _window];
      [v23 completeMoveKeyboardForWindow:_window];

      if (postRotationInputViewSet)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"didRotateFromInterfaceOrientation: has pending inputViewSet"];
        [postRotationInputViewNotificationInfo addKeyboardNotificationDebuggingInfo:v25];

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __61__UIInputWindowController_didRotateFromInterfaceOrientation___block_invoke_8;
        v45[3] = &unk_1E70F35B8;
        v45[4] = self;
        v46 = postRotationInputViewSet;
        [(UIInputWindowController *)self performOperations:v45 withTemplateNotificationInfo:postRotationInputViewNotificationInfo];
      }

      inputViewSet6 = [(UIInputWindowController *)self inputViewSet];
      if (![inputViewSet6 isInputViewPlaceholder])
      {
        v27 = +[UIKeyboardInputModeController sharedInputModeController];
        currentInputMode = [v27 currentInputMode];
        if ([currentInputMode isExtensionInputMode])
        {
          _inputViewController = [(UIInputWindowController *)self _inputViewController];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            _inputViewController2 = [(UIInputWindowController *)self _inputViewController];
            [_inputViewController2 takeSnapshotView];

            [(UIInputWindowController *)self updateKeyboardLayoutGuideForRotationOrientation:[(UIViewController *)self interfaceOrientation]];
          }

          goto LABEL_21;
        }
      }

LABEL_21:
      v40 = +[UIKeyboardImpl activeInstance];
      remoteTextInputPartner = [v40 remoteTextInputPartner];
      [remoteTextInputPartner documentStateChanged];

      +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v50 = @"UITextEffectsWindow_fromOrientation";
      v43 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
      v51 = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      [defaultCenter postNotificationName:@"UITextEffectsWindowViewControllerDidRotateNotification" object:self userInfo:v44];

      return;
    }

    if (+[UIKeyboardImpl isFloating])
    {
      if (self->_isChangingPlacement)
      {
        placement = [(UIInputWindowController *)self placement];
        [(UIInputWindowController *)self updateVisibilityConstraintsForPlacement:placement];
      }

      v33 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v33 performOnDistributedControllers:&__block_literal_global_612_0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v54 = @"UITextEffectsWindow_fromOrientation";
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
      v55[0] = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = v55;
      v38 = &v54;
    }

    else
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v52 = @"UITextEffectsWindow_fromOrientation";
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
      v53 = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = &v53;
      v38 = &v52;
    }

    v39 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
    [defaultCenter2 postNotificationName:@"UITextEffectsWindowViewControllerDidRotateNotification" object:self userInfo:v39];
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

- (CGSize)sizeForInputViewController:(id)controller inputView:(id)view includeAssistantBar:(BOOL)bar
{
  [UIKeyboard sizeForInterfaceOrientation:[(UIInputWindowController *)self keyboardOrientation:controller] includingAssistantBar:bar ignoreInputView:1];
  v7 = v6;
  v9 = v8;
  [(UIInputWindowController *)self _inputViewPadding];
  v12 = v9 + v11 + v10;
  v13 = v7;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)sizeForInputViewController:(id)controller inputView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v8 = ([controllerCopy _autosizeToCurrentKeyboard] & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || SubviewAutoSizesWithPredictionBar(viewCopy);
  [(UIInputWindowController *)self sizeForInputViewController:controllerCopy inputView:viewCopy includeAssistantBar:v8];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)isHostingView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  v6 = [allHostingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allHostingItems);
        }

        hostView = [*(*(&v12 + 1) + 8 * i) hostView];
        v10 = [viewCopy isEqual:hostView];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allHostingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (unint64_t)_clipCornersOfView:(id)view
{
  _splittableInputAccessoryView = [(UIInputViewSet *)self->_inputViewSet _splittableInputAccessoryView];
  inputAccessoryView = [(UIInputViewSet *)self->_inputViewSet inputAccessoryView];

  if (inputAccessoryView)
  {
    if (_splittableInputAccessoryView)
    {
      [_splittableInputAccessoryView leftContentViewSize];
      if (v6 == 0.0)
      {
        v7 = 14;
      }

      else
      {
        v7 = 12;
      }

      [_splittableInputAccessoryView rightContentViewSize];
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

    initialNotificationInfo = [(UIInputWindowController *)self initialNotificationInfo];
    if ([(UIInputWindowController *)self isOnScreen])
    {
      view = [(UIViewController *)self view];
      [view frame];
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
    [initialNotificationInfo populateEndInfoWithFrame:?];
    [initialNotificationInfo addKeyboardNotificationDebuggingInfo:v15];
    [(UIInputWindowController *)self postStartNotifications:v16 withInfo:initialNotificationInfo];
    [(UIInputWindowController *)self postEndNotifications:v16 withInfo:initialNotificationInfo];
  }
}

- (void)generateNotificationsForStart:(BOOL)start
{
  startCopy = start;
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    initialNotificationInfo = [(UIInputWindowController *)self initialNotificationInfo];
    if (startCopy)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__UIInputWindowController_generateNotificationsForStart___block_invoke;
      v17[3] = &unk_1E70F35B8;
      v17[4] = self;
      v18 = initialNotificationInfo;
      v6 = initialNotificationInfo;
      [(UIInputWindowController *)self performWithSafeTransitionFrames:v17];
    }

    else
    {
      v16 = initialNotificationInfo;
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

- (void)generateNotificationsForCompactAssistantFlickGestureCompletion:(id)completion
{
  completionCopy = completion;
  v21 = objc_alloc_init(UIInputViewSetNotificationInfo);
  v5 = [completionCopy objectForKeyedSubscript:0x1EFB7ADF0];
  [v5 CGRectValue];
  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [completionCopy objectForKeyedSubscript:0x1EFB7AE10];

  -[UIInputViewSetNotificationInfo setAssistantPosition:](v21, "setAssistantPosition:", [v14 intValue]);
  [(UIInputViewSetNotificationInfo *)v21 setAssistantFrame:v7, v9, v11, v13];
  [(UIInputViewSetNotificationInfo *)v21 setForceNotification:1];
  v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v15 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    inputViewSet = [(UIInputWindowController *)self inputViewSet];
    inputAccessoryView = [inputViewSet inputAccessoryView];

    if (!inputAccessoryView)
    {
      [(UIInputViewSetNotificationInfo *)v21 populateStartInfoWithFrame:v7, v9, v11, v13];
      [(UIInputViewSetNotificationInfo *)v21 populateEndInfoWithFrame:v7, v9, v11, v13];
    }
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"generateNotificationsForCompactAssistantFlickGestureCompletion (stageManager active: %d)", windowingModeEnabled];
  [(UIInputViewSetNotificationInfo *)v21 addKeyboardNotificationDebuggingInfo:v20];

  [(UIInputWindowController *)self postStartNotifications:2 withInfo:v21];
  [(UIInputWindowController *)self postEndNotifications:2 withInfo:v21];
}

- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification
{
  notificationCopy = notification;
  quietlyCopy = quietly;
  placementCopy = placement;
  _window = [(UIViewController *)self _window];

  if (_window)
  {
    if (animated)
    {
      if (quietlyCopy)
      {
        [(UIInputWindowController *)self _updatePlacementWithPlacement:placementCopy];
        [(UIInputWindowController *)self updateToPlacement:placementCopy withNormalAnimationsAndNotifications:0];
        if (!notificationCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      [(UIInputWindowController *)self setPlacement:placementCopy];
      if (notificationCopy)
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
      v13 = placementCopy;
      v14 = quietlyCopy;
      v15 = notificationCopy;
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
  _inputViewController = [(UIInputWindowController *)self _inputViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _inputViewController2 = [(UIInputWindowController *)self _inputViewController];
    [_inputViewController2 validateInputModeIsDisplayed];
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

- (void)updateInputAssistantView:(id)view
{
  viewCopy = view;
  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && !+[UIKeyboard usesLocalKeyboard])
  {
    goto LABEL_17;
  }

  _window = [(UIViewController *)self _window];
  if (!_window)
  {
    goto LABEL_17;
  }

  v5 = _window;
  _inputAssistantViewController = [(UIInputWindowController *)self _inputAssistantViewController];
  view = [_inputAssistantViewController view];
  inputAssistantView = [viewCopy inputAssistantView];
  v9 = inputAssistantView;
  if (view == inputAssistantView)
  {
    _window2 = [(UIViewController *)self _window];
    inputAssistantView2 = [viewCopy inputAssistantView];
    window = [inputAssistantView2 window];

    if (_window2 == window)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  selfCopy = [(UIInputWindowController *)self _inputAssistantViewController];
  v14 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  _appearState = [selfCopy _appearState];

  hosting = self->_hosting;
  inputAssistantView3 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
  [(UIInputWindowControllerHosting *)hosting disableViewSizingConstraints:2 forNewView:inputAssistantView3];

  [(UIInputWindowController *)self invalidateInputAssistantView];
  inputAssistantView4 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];

  if (inputAssistantView4)
  {
    *&self->super.super.super._viewControllerFlags |= 0x100000uLL;
    assistantViewController = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    [(UIInputWindowController *)self set_inputAssistantViewController:assistantViewController];

    _inputAssistantViewController2 = [(UIInputWindowController *)self _inputAssistantViewController];
    parentViewController = [_inputAssistantViewController2 parentViewController];
    if (parentViewController)
    {
      v22 = parentViewController;
      v23 = +[UIKeyboard usesLocalKeyboard];

      if (v23)
      {
LABEL_14:
        _inputAssistantViewController3 = [(UIInputWindowController *)self _inputAssistantViewController];
        [(UIViewController *)self _addChildViewController:_inputAssistantViewController3 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

        sizeClassCollectionOverride = self->_sizeClassCollectionOverride;
        if (sizeClassCollectionOverride)
        {
          _inputAssistantViewController4 = [(UIInputWindowController *)self _inputAssistantViewController];
          [(UIViewController *)self setOverrideTraitCollection:sizeClassCollectionOverride forChildViewController:_inputAssistantViewController4];
        }

        v28 = self->_hosting;
        _inputAssistantViewController5 = [(UIInputWindowController *)self _inputAssistantViewController];
        view2 = [_inputAssistantViewController5 view];
        [(UIInputWindowControllerHosting *)v28 setInputSetView:view2 forType:102];

        _inputAssistantViewController6 = [(UIInputWindowController *)self _inputAssistantViewController];
        [_inputAssistantViewController6 didMoveToParentViewController:self];

        [(UIInputWindowController *)self changeChild:2 toAppearState:_appearState animated:0];
        *&self->super.super.super._viewControllerFlags &= ~0x100000uLL;
        _inputAssistantViewController7 = [(UIInputWindowController *)self _inputAssistantViewController];
        view3 = [_inputAssistantViewController7 view];
        view4 = [(UIViewController *)self view];
        _inheritedRenderConfig = [view4 _inheritedRenderConfig];
        [view3 _setRenderConfig:_inheritedRenderConfig];

        goto LABEL_17;
      }

      _inputAssistantViewController2 = [(UIInputWindowController *)self _inputAssistantViewController];
      parentViewController2 = [_inputAssistantViewController2 parentViewController];
      [parentViewController2 invalidateInputAssistantView];
    }

    goto LABEL_14;
  }

LABEL_17:
}

- (void)updateInputSwitcherView:(id)view
{
  viewCopy = view;
  if (+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isMinimized], v4, (v5 & 1) == 0))
  {
    inputSwitcherView = [viewCopy inputSwitcherView];
  }

  else
  {
    inputSwitcherView = 0;
  }

  [(UIInputWindowControllerHosting *)self->_hosting setInputSetView:inputSwitcherView forType:103];
  [(UIInputWindowController *)self set_inputSwitcherView:inputSwitcherView];
  [(UIInputWindowController *)self updateHostingConstraints];
}

- (void)updateBackdropRenderConfig:(id)config
{
  hosting = self->_hosting;
  configCopy = config;
  v5 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:100];
  [v5 updateRenderConfigForCombinedBackdrop:configCopy];
}

- (unint64_t)changeToInputViewSet:(id)set
{
  v110 = *MEMORY[0x1E69E9840];
  setCopy = set;
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
    v109 = setCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Change to input view set: %@", buf, 0xCu);
  }

  v9 = self->_inputViewSet;
  objc_storeStrong(&self->_inputViewSet, set);
  [(UIInputWindowController *)self setTransientInputViewSet:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIInputWindowController_changeToInputViewSet___block_invoke;
  aBlock[3] = &unk_1E7116620;
  aBlock[4] = self;
  v10 = setCopy;
  v107 = v10;
  v102 = _Block_copy(aBlock);
  [(UIInputWindowControllerHosting *)self->_hosting initializeTranslateGestureRecognizerIfNecessary];
  self->_isChangingInputViews = 1;
  _inputViewController = [(UIInputWindowController *)self _inputViewController];
  view = [_inputViewController view];
  inputView = [(UIInputViewSet *)v10 inputView];

  hosting = self->_hosting;
  if (view == inputView)
  {
    v37 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:100];
    [v37 updateInputBackdropViewVisibility];

    v36 = 0;
  }

  else
  {
    inputView2 = [(UIInputViewSet *)v10 inputView];
    [(UIInputWindowControllerHosting *)hosting disableViewSizingConstraints:1 forNewView:inputView2];

    selfCopy = [(UIInputWindowController *)self _inputViewController];
    v17 = selfCopy;
    if (!selfCopy)
    {
      selfCopy = self;
    }

    _appearState = [selfCopy _appearState];

    [(UIInputWindowController *)self invalidateInputView];
    inputView3 = [(UIInputViewSet *)self->_inputViewSet inputView];

    if (inputView3)
    {
      if ([(UIInputViewSet *)self->_inputViewSet isInputViewPlaceholder])
      {
        inputView4 = [(UIInputViewSet *)self->_inputViewSet inputView];
        [inputView4 refreshPlaceholder];

        [(UIInputWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
      }

      *&self->super.super.super._viewControllerFlags |= 0x100000uLL;
      inputViewController = [(UIInputViewSet *)self->_inputViewSet inputViewController];
      [(UIInputWindowController *)self set_inputViewController:inputViewController];

      _inputViewController2 = [(UIInputWindowController *)self _inputViewController];
      parentViewController = [_inputViewController2 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        _inputViewController3 = [(UIInputWindowController *)self _inputViewController];
        parentViewController2 = [_inputViewController3 parentViewController];
        [parentViewController2 invalidateInputView];
      }

      _inputViewController4 = [(UIInputWindowController *)self _inputViewController];
      [(UIViewController *)self _addChildViewController:_inputViewController4 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

      v28 = self->_hosting;
      _inputViewController5 = [(UIInputWindowController *)self _inputViewController];
      view2 = [_inputViewController5 view];
      [(UIInputWindowControllerHosting *)v28 setInputSetView:view2 forType:100];

      _inputViewController6 = [(UIInputWindowController *)self _inputViewController];
      [_inputViewController6 didMoveToParentViewController:self];

      [(UIInputWindowController *)self changeChild:1 toAppearState:_appearState animated:0];
      *&self->super.super.super._viewControllerFlags &= ~0x100000uLL;
      _inputViewController7 = [(UIInputWindowController *)self _inputViewController];
      view3 = [_inputViewController7 view];
      view4 = [(UIViewController *)self view];
      _inheritedRenderConfig = [view4 _inheritedRenderConfig];
      [view3 _setRenderConfig:_inheritedRenderConfig];
    }

    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __48__UIInputWindowController_changeToInputViewSet___block_invoke_2;
    v105[3] = &unk_1E70F3590;
    v105[4] = self;
    [UIView performWithoutAnimation:v105];
    v36 = 1;
  }

  _inputAssistantViewController = [(UIInputWindowController *)self _inputAssistantViewController];
  view5 = [_inputAssistantViewController view];
  inputAssistantView = [(UIInputViewSet *)v10 inputAssistantView];
  v41 = inputAssistantView;
  if (view5 == inputAssistantView)
  {
    [(UIViewController *)self _window];
    v43 = v42 = v9;
    inputAssistantView2 = [(UIInputViewSet *)v10 inputAssistantView];
    window = [inputAssistantView2 window];

    v46 = v43 == window;
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
  _inputAccessoryViewController = [(UIInputWindowController *)self _inputAccessoryViewController];
  view6 = [_inputAccessoryViewController view];
  inputAccessoryView = [(UIInputViewSet *)v10 inputAccessoryView];

  if (view6 == inputAccessoryView)
  {
    _inputAccessoryViewController2 = [(UIInputWindowController *)self _inputAccessoryViewController];
    view7 = [_inputAccessoryViewController2 view];
    if (view7)
    {
      v81 = view7;
      v101 = v9;
      _inputAccessoryViewController3 = [(UIInputWindowController *)self _inputAccessoryViewController];
      view8 = [_inputAccessoryViewController3 view];
      v84 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:101];
      hostView = [v84 hostView];
      v86 = [view8 isDescendantOfView:hostView];

      if ((v86 & 1) == 0)
      {
        v87 = self->_hosting;
        _inputAccessoryViewController4 = [(UIInputWindowController *)self _inputAccessoryViewController];
        view9 = [_inputAccessoryViewController4 view];
        [(UIInputWindowControllerHosting *)v87 setInputSetView:view9 forType:101];

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
    inputAccessoryView2 = [(UIInputViewSet *)v10 inputAccessoryView];
    [(UIInputWindowControllerHosting *)v50 disableViewSizingConstraints:4 forNewView:inputAccessoryView2];

    selfCopy2 = [(UIInputWindowController *)self _inputAccessoryViewController];
    v53 = selfCopy2;
    if (!selfCopy2)
    {
      selfCopy2 = self;
    }

    _appearState2 = [selfCopy2 _appearState];

    [(UIInputWindowController *)self invalidateInputAccessoryView];
    v55 = v102;
    if (!(*(v102 + 2))(v102))
    {
      v36 = 0;
      goto LABEL_50;
    }

    inputAccessoryView3 = [(UIInputViewSet *)self->_inputViewSet inputAccessoryView];

    if (inputAccessoryView3)
    {
      *&self->super.super.super._viewControllerFlags |= 0x100000uLL;
      accessoryViewController = [(UIInputViewSet *)self->_inputViewSet accessoryViewController];
      [(UIInputWindowController *)self set_inputAccessoryViewController:accessoryViewController];

      _inputAccessoryViewController5 = [(UIInputWindowController *)self _inputAccessoryViewController];
      parentViewController3 = [_inputAccessoryViewController5 parentViewController];

      if (parentViewController3)
      {
        v100 = v9;
        _inputAccessoryViewController6 = [(UIInputWindowController *)self _inputAccessoryViewController];
        view10 = [_inputAccessoryViewController6 view];
        _responderWindow = [view10 _responderWindow];
        _firstResponder = [_responderWindow _firstResponder];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (-[UIInputWindowController _inputAccessoryViewController](self, "_inputAccessoryViewController"), v64 = objc_claimAutoreleasedReturnValue(), [v64 view], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "containsView:", _firstResponder), v65, v64, (v66 & 1) == 0))
        {

          _firstResponder = 0;
        }

        _inputAccessoryViewController7 = [(UIInputWindowController *)self _inputAccessoryViewController];
        parentViewController4 = [_inputAccessoryViewController7 parentViewController];

        objc_opt_class();
        v9 = v100;
        if (objc_opt_isKindOfClass())
        {
          [parentViewController4 invalidateInputAccessoryView];
        }

        [_firstResponder _becomeFirstResponderWhenPossible];
        v69 = (*(v102 + 2))();

        if (!v69)
        {
          v36 = 0;
          v55 = v102;
          goto LABEL_50;
        }
      }

      _inputAccessoryViewController8 = [(UIInputWindowController *)self _inputAccessoryViewController];
      [(UIViewController *)self _addChildViewController:_inputAccessoryViewController8 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

      v71 = self->_hosting;
      _inputAccessoryViewController9 = [(UIInputWindowController *)self _inputAccessoryViewController];
      view11 = [_inputAccessoryViewController9 view];
      [(UIInputWindowControllerHosting *)v71 setInputSetView:view11 forType:101];

      _inputAccessoryViewController10 = [(UIInputWindowController *)self _inputAccessoryViewController];
      [_inputAccessoryViewController10 didMoveToParentViewController:self];

      [(UIInputWindowController *)self changeChild:4 toAppearState:_appearState2 animated:0];
      *&self->super.super.super._viewControllerFlags &= ~0x100000uLL;
      _inputAccessoryViewController11 = [(UIInputWindowController *)self _inputAccessoryViewController];
      view12 = [_inputAccessoryViewController11 view];
      view13 = [(UIViewController *)self view];
      _inheritedRenderConfig2 = [view13 _inheritedRenderConfig];
      [view12 _setRenderConfig:_inheritedRenderConfig2];

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
  inputView5 = [(UIInputViewSet *)v9 inputView];
  superview = [inputView5 superview];

  if (!superview)
  {
    inputView6 = [(UIInputViewSet *)v9 inputView];
    [inputView6 _clearOverrideNextResponder];
  }

  inputAssistantView3 = [(UIInputViewSet *)v9 inputAssistantView];
  superview2 = [inputAssistantView3 superview];

  if (!superview2)
  {
    inputAssistantView4 = [(UIInputViewSet *)v9 inputAssistantView];
    [inputAssistantView4 _clearOverrideNextResponder];
  }

  inputAccessoryView4 = [(UIInputViewSet *)v9 inputAccessoryView];
  superview3 = [inputAccessoryView4 superview];

  if (!superview3)
  {
    inputAccessoryView5 = [(UIInputViewSet *)v9 inputAccessoryView];
    [inputAccessoryView5 _clearOverrideNextResponder];
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

- (void)setInputViewSet:(id)set
{
  v76 = *MEMORY[0x1E69E9840];
  setCopy = set;
  [(UIInputWindowController *)self updateKeyboardSizeClass];
  postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

  if (!postRotationPlacement)
  {
    v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    if ([v8 handlingRemoteEvent])
    {
      currentTransition = [(UIInputWindowController *)self currentTransition];
      fromPlacement = [currentTransition fromPlacement];
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

    if ([setCopy isEmpty])
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
      *&buf[4] = setCopy;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Setting input views: %@", buf, 0xCu);
    }

    [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:setCopy];
    [(UIInputWindowController *)self updateInputSwitcherView:setCopy];
    v13 = [(UIInputViewSet *)self->_inputViewSet isEqual:setCopy];
    if (v13)
    {
      v48 = 0;
    }

    else
    {
      LODWORD(v48) = ([setCopy isInputViewPlaceholder] & 1) != 0 || -[UIInputViewSet isInputViewPlaceholder](self->_inputViewSet, "isInputViewPlaceholder");
      if ([setCopy isInputViewPlaceholder])
      {
        HIDWORD(v48) = ![(UIInputWindowController *)self shouldNotifyRemoteKeyboards];
      }

      else
      {
        HIDWORD(v48) = 0;
      }

      if ([(UIInputViewSet *)self->_inputViewSet isCustomInputView])
      {
        v47 = [setCopy isCustomInputView] ^ 1;
LABEL_24:
        v14 = !v13;
        if (+[UIKeyboard usesInputSystemUI]&& [(UIInputViewSet *)self->_inputViewSet isInputViewPlaceholder])
        {
          inputView = [(UIInputViewSet *)self->_inputViewSet inputView];
          [inputView fixedSize];
          v17 = v16;
          [inputView refreshPlaceholder];
          [inputView fixedSize];
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

        nextAnimationStyle = [(UIInputWindowController *)self nextAnimationStyle];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v73 = __Block_byref_object_copy__131;
        v74 = __Block_byref_object_dispose__131;
        currentPresentationPlacement = [(UIInputWindowController *)self currentPresentationPlacement];
        _window = [(UIViewController *)self _window];
        windowScene = [_window windowScene];

        v23 = [nextAnimationStyle startPlacementForInputViewSet:setCopy currentPlacement:*(*&buf[8] + 40) windowScene:windowScene];
        v24 = [nextAnimationStyle endPlacementForInputViewSet:setCopy windowScene:windowScene];
        [v23 setOtherPlacement:v24];
        [v24 setOtherPlacement:v23];
        currentTransition2 = [(UIInputWindowController *)self currentTransition];
        toPlacement = [currentTransition2 toPlacement];
        v27 = [v24 isEqual:toPlacement];

        v28 = v14 | v27 ^ 1;
        if ((v28 & 1) == 0)
        {
          currentTransition3 = [(UIInputWindowController *)self currentTransition];
          animationStyle = [currentTransition3 animationStyle];
          v31 = [nextAnimationStyle isEqual:animationStyle];

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

        if ([(UIInputViewSet *)self->_inputViewSet isEqual:setCopy])
        {
          v34 = 0;
        }

        else
        {
          v34 = [*(*&buf[8] + 40) isEqual:v23] ^ 1;
        }

        subPlacements = [*(*&buf[8] + 40) subPlacements];
        subPlacements2 = [v24 subPlacements];
        if (subPlacements == subPlacements2)
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
            v68 = setCopy;
            v71 = buf;
            v69 = v23;
            v70 = v24;
            [UIView performWithoutAnimation:v67];
            [(UIInputWindowControllerHosting *)self->_hosting setRequiresConstraintUpdate:1];

            v28 = 1;
          }
        }

        objc_initWeak(&v66, self);
        [(UIInputWindowController *)self setTransientInputViewSet:setCopy];
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
          v64 = setCopy;
          [(UIInputWindowController *)self setPlacement:v24 starting:0 completion:v63];

          objc_destroyWeak(&v65);
          goto LABEL_69;
        }

        if (v39 != 1)
        {
          if (v39 == 2)
          {
            if ((-[UIInputViewSet isCustomInputView](self->_inputViewSet, "isCustomInputView") || ([*(*&buf[8] + 40) isFloating] & 1) != 0 || objc_msgSend(v23, "showsInputOrAssistantViews")) && (objc_msgSend(setCopy, "isNullInputView") & 1) == 0 && (objc_msgSend(v24, "showsKeyboard") & 1) == 0)
            {
              currentTransition4 = [(UIInputWindowController *)self currentTransition];
              toPlacement2 = [currentTransition4 toPlacement];
              v45 = [toPlacement2 isEqual:v24];

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
            v46 = setCopy;
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
        v52 = setCopy;
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

  [(UIInputWindowController *)self setPostRotationInputViewSet:setCopy];
  initialNotificationInfo = [(UIInputWindowController *)self initialNotificationInfo];
  [(UIInputWindowController *)self setPostRotationInputViewNotificationInfo:initialNotificationInfo];

  postRotationInputViewNotificationInfo = [(UIInputWindowController *)self postRotationInputViewNotificationInfo];
  [postRotationInputViewNotificationInfo setShouldSendInClient:1];

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

- (void)setPlacement:(id)placement
{
  placementCopy = placement;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__UIInputWindowController_setPlacement___block_invoke;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, &location);
  [(UIInputWindowController *)self setPlacement:placementCopy starting:v5 completion:0];
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

- (void)setRotationAwarePlacement:(id)placement
{
  placementCopy = placement;
  postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];

  if (postRotationPlacement)
  {
    [(UIInputWindowController *)self setPostRotationPlacement:placementCopy];
  }

  else
  {
    [(UIInputWindowController *)self setPlacement:placementCopy];
  }
}

- (void)setInputView:(id)view accessoryView:(id)accessoryView assistantView:(id)assistantView
{
  v6 = [UIInputViewSet inputSetWithInputView:view accessoryView:accessoryView assistantView:assistantView];
  [(UIInputWindowController *)self setInputViewSet:v6];
}

- (id)inputViewSnapshotOfView:(id)view afterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  viewCopy = view;
  view = [(UIViewController *)self view];
  [viewCopy bounds];
  [view convertRect:viewCopy fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  view2 = [(UIViewController *)self view];
  v17 = [view2 resizableSnapshotViewFromRect:updatesCopy afterScreenUpdates:v9 withCapInsets:{v11, v13, v15, 0.0, 0.0, 0.0, 0.0}];

  [v17 setUserInteractionEnabled:0];
  view3 = [(UIViewController *)self view];
  window = [view3 window];
  screen = [window screen];
  [screen scale];
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

- (CGRect)_visibleFrameInRemoteKeyboardWindow:(BOOL)window
{
  windowCopy = window;
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
      _window = [(UIViewController *)self _window];
      [_window frame];
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

  [(UIInputWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:windowCopy viewInRemoteKeyboardWindow:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view = [(UIViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen bounds];
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
  containerRootController = [v3 containerRootController];

  if (containerRootController == self)
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
    containerRootController2 = [v5 containerRootController];
    [containerRootController2 _visibleFrame];
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
  view = [(UIViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen bounds];
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
  containerRootController = [v3 containerRootController];

  if (containerRootController == self)
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
    containerRootController2 = [v5 containerRootController];
    [containerRootController2 _visibleInputViewFrame];
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
  inputViewSet = [(UIInputWindowController *)self inputViewSet];
  inputView = [inputViewSet inputView];
  [inputView bounds];
  if (v5 <= 0.0)
  {

    showsInputOrAssistantViews = 0;
LABEL_6:

    return showsInputOrAssistantViews;
  }

  inputViewSet2 = [(UIInputWindowController *)self inputViewSet];
  isLocalMinimumHeightInputView = [inputViewSet2 isLocalMinimumHeightInputView];

  if ((isLocalMinimumHeightInputView & 1) == 0)
  {
    inputViewSet = [(UIInputWindowController *)self placement];
    showsInputOrAssistantViews = [inputViewSet showsInputOrAssistantViews];
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)isUndocked
{
  placement = [(UIInputWindowController *)self placement];
  isUndocked = [placement isUndocked];

  return isUndocked;
}

- (BOOL)isOnScreenRotating
{
  postRotationPlacement = [(UIInputWindowController *)self postRotationPlacement];
  if (postRotationPlacement)
  {
    postRotationPlacement2 = [(UIInputWindowController *)self postRotationPlacement];
    showsInputViews = [postRotationPlacement2 showsInputViews];
  }

  else
  {
    showsInputViews = 0;
  }

  return showsInputViews;
}

- (void)animateAccessoryViewVisibility:(BOOL)visibility withDuration:(double)duration
{
  visibilityCopy = visibility;
  _inputAccessoryView = [(UIInputWindowController *)self _inputAccessoryView];
  v8 = _inputAccessoryView;
  if (_inputAccessoryView)
  {
    if (visibilityCopy)
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
    v11 = _inputAccessoryView;
    selfCopy = self;
    [UIView animateWithDuration:50331648 delay:v10 options:0 animations:duration completion:0.0];
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

- (void)setFullScreenPresentationAssertion:(id)assertion
{
  assertionCopy = assertion;
  fullScreenPresentationAssertion = self->_fullScreenPresentationAssertion;
  if (fullScreenPresentationAssertion)
  {
    v6 = fullScreenPresentationAssertion == assertionCopy;
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

  self->_fullScreenPresentationAssertion = assertionCopy;
}

- (void)presentationTransitionWillBegin:(id)begin
{
  beginCopy = begin;
  object = [beginCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager = [v6 visualModeManager];

    presentingViewController = [object presentingViewController];
    if (presentingViewController == self && [visualModeManager windowingModeEnabled])
    {
      shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

      if ((shouldShowWithinAppWindow & 1) == 0 && SpringBoardServicesLibraryCore() && getSBSAcquireFocusPreventingFullScreenPresentationAssertionSymbolLoc())
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

- (void)setInterfaceAutorotationDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  view = [(UIViewController *)self view];
  window = [view window];
  v7 = window;
  if (disabledCopy)
  {
    [window beginDisablingInterfaceAutorotation];
  }

  else
  {
    [window endDisablingInterfaceAutorotation];
  }

  v8 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:3];
  [v8 setInterfaceAutorotationDisabled:disabledCopy];
}

- (void)setPlacementChangeDisabled:(BOOL)disabled withPlacement:(id)placement
{
  disabledCopy = disabled;
  v20 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  v7 = _UIInputWindowControllerLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v15 = disabledCopy;
    v16 = 2112;
    v17 = placementCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "setPlacementChangeDisabled: %d, placement: %@ (self: %@)", buf, 0x1Cu);
  }

  if (!disabledCopy)
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
      selfCopy2 = self;
      v13 = placementCopy;
      [UIView performWithoutAnimation:&v8];

      if (!disabledCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [(UIInputWindowController *)self setPlacement:placementCopy];
      if (!disabledCopy)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    self->_disablePlacementChanges = 1;
    self->_disableInRotating = [(UIInputWindowController *)self isRotating:v8];
    goto LABEL_13;
  }

  [(UIInputWindowController *)self setPostRotationPlacement:placementCopy];
  if (disabledCopy)
  {
    goto LABEL_12;
  }

LABEL_10:
  self->_disableInRotating = 0;
LABEL_13:
}

- (void)transferPlacementStateToInputWindowController:(id)controller
{
  controllerCopy = controller;
  v4 = self->_inputViewSet;
  v5 = self->_placement;
  if ([(UIInputWindowController *)self isTransitioning])
  {
    transientInputViewSet = [(UIInputWindowController *)self transientInputViewSet];

    currentTransition = [(UIInputWindowController *)self currentTransition];
    fromPlacement = [currentTransition fromPlacement];

    v5 = fromPlacement;
    v4 = transientInputViewSet;
  }

  if ([(UIInputViewSet *)v4 isInputViewPlaceholder])
  {
    inputView = [(UIInputViewSet *)v4 inputView];
    fallbackView = [inputView fallbackView];
    inputAccessoryView = [(UIInputViewSet *)v4 inputAccessoryView];
    v12 = [_UIRemoteKeyboardPlaceholderView placeholderForView:inputAccessoryView];
    fallbackView2 = [inputView fallbackView];
    if (fallbackView2)
    {
      associatedView = [inputView associatedView];
    }

    else
    {
      associatedView = 0;
    }

    v18 = [UIInputViewSet inputSetWithInputView:fallbackView accessoryView:v12 assistantView:associatedView];

    if (fallbackView2)
    {
    }

    _window = [(UIViewController *)self _window];
    windowScene = [_window windowScene];
    [UIPeripheralHost endPlacementForInputViewSet:v18 windowScene:windowScene];
    v5 = v17 = v5;
  }

  else
  {
    inputView = [(UIInputViewSet *)v4 inputView];
    _window = [_UIRemoteKeyboardPlaceholderView placeholderForView:inputView];
    windowScene = [(UIInputViewSet *)v4 inputAccessoryView];
    v17 = [_UIRemoteKeyboardPlaceholderView placeholderForView:windowScene];
    v18 = [UIInputViewSet inputSetWithInputView:_window accessoryView:v17];
  }

  [controllerCopy changeToInputViewSet:v18];
  [controllerCopy setPlacement:v5 quietly:1 animated:0 generateSplitNotification:0];
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
    [controllerCopy setPlacementChangeDisabled:1 withPlacement:v19];
  }
}

- (void)candidateBarWillChangeHeight:(double)height withDuration:(double)duration
{
  placement = [(UIInputWindowController *)self placement];
  isUndocked = [placement isUndocked];

  if (isUndocked)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__UIInputWindowController_candidateBarWillChangeHeight_withDuration___block_invoke;
    v9[3] = &unk_1E70F32F0;
    v9[4] = self;
    *&v9[5] = height;
    [UIView animateWithDuration:50331648 delay:v9 options:&__block_literal_global_662 animations:duration completion:0.0];
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
  currentTransition = [(UIInputWindowController *)self currentTransition];

  if (currentTransition)
  {
    [(UIInputWindowController *)self setInputViewsHidden:1];
    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    [currentTransition2 setCancelled:1];

    currentTransition3 = [(UIInputWindowController *)self currentTransition];
    animationStyle = [currentTransition3 animationStyle];
    [animationStyle cancelInterruptibleAnimations];

    currentTransition4 = [(UIInputWindowController *)self currentTransition];
    fromPlacement = [currentTransition4 fromPlacement];
    [(UIInputWindowController *)self updateToPlacement:fromPlacement withNormalAnimationsAndNotifications:0];

    [(UIInputWindowController *)self setInputViewsHidden:0];
  }
}

- (BOOL)isTransitionStarted
{
  currentTransition = [(UIInputWindowController *)self currentTransition];
  if (currentTransition)
  {
    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    v5 = [currentTransition2 animationState] > 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIInputViewSetPlacement)expectedPlacement
{
  currentTransition = [(UIInputWindowController *)self currentTransition];
  if (currentTransition)
  {
    currentTransition2 = [(UIInputWindowController *)self currentTransition];
    toPlacement = [currentTransition2 toPlacement];
  }

  else
  {
    toPlacement = [(UIInputWindowController *)self placement];
  }

  return toPlacement;
}

@end