@interface UITrackingElementWindowController
+ (BOOL)useMetronomeTracking;
- (BOOL)_useLiveRotation;
- (BOOL)currentControllerShouldUpdateKeyboardLayoutGuide;
- (BOOL)customTrackingElementsShouldUseActualFrame;
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
- (BOOL)mergeTransitionIfNecessaryWithTransition:(id)a3;
- (BOOL)shouldBeginTransitionForController:(id)a3;
- (BOOL)shouldPostNotification:(unint64_t)a3 withInfo:(id)a4;
- (BOOL)sizesWindowToScene;
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
- (UIInputViewSetPlacement)placementIgnoringRotation;
- (UITrackingElementWindowController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIView)bottomEdgeView;
- (id)_infoForBackdropMatchMoveForLayer:(id)a3;
- (id)_inputAccessoryView;
- (id)_inputAssistantView;
- (id)_inputViewPlaceholder;
- (id)_screenCoordinateSpace;
- (id)animationAwarePlacement;
- (id)currentPresentationPlacement;
- (id)expectedPlacement;
- (id)initialNotificationInfo;
- (id)inputViewSnapshotOfView:(id)a3 afterScreenUpdates:(BOOL)a4;
- (id)nextAnimationStyle;
- (id)notificationsFromPlacement;
- (id)notificationsToPlacement;
- (id)transitionGuideBackdrop:(BOOL)a3;
- (id)viewForTransitionScreenSnapshot;
- (int)appearStateForChild:(unint64_t)a3 placement:(id)a4 start:(BOOL)a5;
- (int64_t)animationTypeForCurrentTransition;
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
- (void)changeChild:(unint64_t)a3 toAppearState:(int)a4 animated:(BOOL)a5;
- (void)changeGuideAnimationOptions:(unint64_t)a3 duration:(double)a4;
- (void)changeGuideAnimationState:(BOOL)a3;
- (void)checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:(BOOL)a3 layoutSubviews:(BOOL)a4;
- (void)clearKeyboardSnapshot;
- (void)clearRotationState;
- (void)didEndTransitionWithController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)didSnapshot;
- (void)dismissViewController:(id)a3;
- (void)flushPendingActivities;
- (void)generateNotificationsForCompactAssistantFlickGestureCompletion:(id)a3;
- (void)generateNotificationsForStart:(BOOL)a3;
- (void)hideGuideBackdrop:(BOOL)a3;
- (void)hostAppSceneBoundsChanged;
- (void)hostViewWillDisappear;
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
- (void)layoutFromCoordinatorIfNeeded;
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
- (void)postStartNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)postTransitionEndNotification;
- (void)postValidatedEndNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)postValidatedStartNotifications:(unint64_t)a3 withInfo:(id)a4;
- (void)prepareForInputAssistant:(id)a3 animated:(BOOL)a4;
- (void)presentViewController:(id)a3;
- (void)pushAnimationStyle:(id)a3;
- (void)refreshKeyboardLayoutGuide;
- (void)registerPowerLogEvent:(BOOL)a3;
- (void)setDisableUpdateMaskForSecureTextEntry:(BOOL)a3;
- (void)setExclusiveTouch:(BOOL)a3;
- (void)setHiddenCount:(int)a3;
- (void)setInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5;
- (void)setInputViewSet:(id)a3;
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
- (void)updateForKeyplaneChangeWithContext:(id)a3;
- (void)updateGestureRecognizers;
- (void)updateGuideForOffscreenRotationWithDuration:(double)a3;
- (void)updateHostingConstraints;
- (void)updateHostingItemsForConstraintChanges;
- (void)updateInputAssistantView:(id)a3;
- (void)updateKeyboardDockViewVisibility;
- (void)updateKeyboardLayoutGuideForRotationOrientation:(int64_t)a3;
- (void)updateKeyboardLayoutGuideWithFrame:(CGRect)a3 layoutViews:(BOOL)a4;
- (void)updateKeyboardPlacementForGuide:(id)a3;
- (void)updateKeyboardSizeClass;
- (void)updateOffscreenKeyboardLayoutGuide;
- (void)updateSizingFromRemoteChange;
- (void)updateSupportsDockViewController;
- (void)updateToPlacement:(id)a3 withNormalAnimationsAndNotifications:(BOOL)a4;
- (void)updateTrackingCoordinatorForAccessoryBounds:(CGRect)a3;
- (void)updateTrackingCoordinatorForRotationOrientation:(int64_t)a3;
- (void)updateTrackingElementsWithOffset:(UIOffset)a3;
- (void)updateTrackingElementsWithSize:(CGSize)a3;
- (void)updateVisibilityConstraintsForPlacement:(id)a3;
- (void)validateInputView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willSnapshot;
@end

@implementation UITrackingElementWindowController

- (void)clearKeyboardSnapshot
{
  v2.receiver = self;
  v2.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v2 clearKeyboardSnapshot];
}

- (void)popAnimationStyle
{
  if ([(NSMutableArray *)self->_animationStyleStack count])
  {
    animationStyleStack = self->_animationStyleStack;

    [(NSMutableArray *)animationStyleStack removeLastObject];
  }
}

- (BOOL)isOnScreen
{
  v2 = [(UITrackingElementWindowController *)self placement];
  v3 = [v2 showsInputViews];

  return v3;
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

    v4 = [(UITrackingElementWindowController *)self _inputViewController];
    [(UIViewController *)self setOverrideTraitCollection:v3 forChildViewController:v4];

    v5 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
    [(UIViewController *)self setOverrideTraitCollection:v3 forChildViewController:v5];

    sizeClassCollectionOverride = self->_sizeClassCollectionOverride;
    self->_sizeClassCollectionOverride = v3;
  }
}

- (BOOL)isUndocked
{
  v2 = [(UITrackingElementWindowController *)self placement];
  v3 = [v2 isUndocked];

  return v3;
}

- (void)loadView
{
  v3 = [UITrackingWindowView alloc];
  v4 = [(UITrackingWindowView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIViewController *)self setView:v4];

  v5 = [(UIViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(UIViewController *)self view];
  [v6 setClipsToBounds:1];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3.receiver = self;
  v3.super_class = UITrackingElementWindowController;
  return [(UIInputWindowController *)&v3 supportedInterfaceOrientations];
}

- (void)invalidateInputAssistantView
{
  v3 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
  v4 = [v3 view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__UITrackingElementWindowController_invalidateInputAssistantView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 _preserveResponderOverridesWhilePerforming:v5];
}

- (UIEdgeInsets)_viewSafeAreaInsetsFromScene
{
  v3 = [(UIViewController *)self _window];
  if ([v3 _isTextEffectsWindow] && objc_msgSend(v3, "_isHostedInAnotherProcess"))
  {
    [v3 hostedSafeInsets];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UITrackingElementWindowController;
    [(UIInputWindowController *)&v16 _viewSafeAreaInsetsFromScene];
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

- (void)updateGestureRecognizers
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return;
  }

  v3 = [(UITrackingElementWindowController *)self inputViewSet];
  v4 = [v3 inputView];
  if (!v4)
  {

    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(UITrackingElementWindowController *)self inputViewSet];
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

- (BOOL)sizesWindowToScene
{
  if (+[UIInputWindowController useMetronomeTracking])
  {
    return 1;
  }

  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  return v5;
}

- (BOOL)isRotating
{
  v2 = [(UITrackingElementWindowController *)self postRotationPlacement];
  v3 = v2 != 0;

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v8 viewWillLayoutSubviews];
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

- (void)viewDidLayoutSubviews
{
  v3 = [(UITrackingElementWindowController *)self currentTransition];
  v4 = v3 != 0;

  if (v3)
  {
    v5 = [(UITrackingElementWindowController *)self currentTransition];
    v6 = [v5 notifications] == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIViewController *)self _screen];
  v8 = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:v7];

  if (!-[UITrackingElementWindowController isOnScreen](self, "isOnScreen") || -[UITrackingElementWindowController isDragging](self, "isDragging") || ([v8 handlingFlickGesture] & 1) != 0)
  {
    if (([v8 handlingFlickGesture] & 1) == 0)
    {
      v9 = [(UITrackingElementWindowController *)self currentTransition];
      v10 = [v9 notifications];
      v11 = [(UITrackingElementWindowController *)self currentTransition];
      v12 = [v11 notificationInfo];
      [(UITrackingElementWindowController *)self updateAmbiguousControlCenterActivationMargin:v10 withInfo:v12];
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__UITrackingElementWindowController_viewDidLayoutSubviews__block_invoke;
    v14[3] = &unk_1E70F8A10;
    v14[4] = self;
    v15 = v4;
    v16 = v6;
    [(UITrackingElementWindowController *)self performWithSafeTransitionFrames:v14];
  }

  v13.receiver = self;
  v13.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v13 viewDidLayoutSubviews];
}

- (void)updateSupportsDockViewController
{
  supportsDockViewController = self->_supportsDockViewController;
  self->_supportsDockViewController = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  v8 = +[UIKeyboardImpl activeInstance];
  v4 = [v8 window];
  if (v4)
  {
  }

  else
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 currentInputMode];
    v7 = [v6 isExtensionInputMode];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (supportsDockViewController != self->_supportsDockViewController)
  {
    [(UITrackingElementWindowController *)self updateKeyboardDockViewVisibility];
  }

LABEL_6:
}

- (UIView)bottomEdgeView
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:4];
  v3 = [v2 hostView];

  return v3;
}

- (void)viewDidLoad
{
  if (!self->_hosting)
  {
    v3 = [(UIViewController *)self _window];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(UIViewController *)self _window];
      v5 = [v4 isForViewService];

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v6 = [[UIInputWindowControllerHosting alloc] initWithHost:self];
    hosting = self->_hosting;
    self->_hosting = v6;
  }

LABEL_7:
  v8.receiver = self;
  v8.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v8 viewDidLoad];
}

- (void)updateHostingConstraints
{
  if (!self->_suppressUpdateViewConstraints)
  {
    [(UIInputWindowControllerHosting *)self->_hosting updateViewConstraints];
  }
}

- (void)updateKeyboardDockViewVisibility
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_410_0];
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

- (void)_updateContentOverlayInsetsForSelfAndChildren
{
  v3.receiver = self;
  v3.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v3 _updateContentOverlayInsetsForSelfAndChildren];
  [(UITrackingElementWindowController *)self updateSupportsDockViewController];
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
    v17.super_class = UITrackingElementWindowController;
    [(UIInputWindowController *)&v17 _viewFrameInWindowForContentOverlayInsetsCalculation];
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

- (int64_t)overrideUserInterfaceStyle
{
  if (dyld_program_sdk_at_least())
  {
    v7.receiver = self;
    v7.super_class = UITrackingElementWindowController;
    return [(UIInputWindowController *)&v7 overrideUserInterfaceStyle];
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

- (BOOL)isOnScreenRotating
{
  v3 = [(UITrackingElementWindowController *)self postRotationPlacement];
  if (v3)
  {
    v4 = [(UITrackingElementWindowController *)self postRotationPlacement];
    v5 = [v4 showsInputViews];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)visibleFrame
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 containerRootController];

  if (v4 == self)
  {
    [(UITrackingElementWindowController *)self _visibleFrame];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  else
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 containerRootController];
    [v6 visibleFrame];
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

- (CGRect)_visibleFrame
{
  [(UITrackingElementWindowController *)self _visibleFrameInRemoteKeyboardWindow:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v2 didReceiveMemoryWarning];
}

- (BOOL)isTransitionStarted
{
  v3 = [(UITrackingElementWindowController *)self currentTransition];
  if (v3)
  {
    v4 = [(UITrackingElementWindowController *)self currentTransition];
    v5 = [v4 animationState] > 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTransitioning
{
  v2 = [(UITrackingElementWindowController *)self currentTransition];
  v3 = v2 != 0;

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
  v3 = [(UITrackingElementWindowController *)self currentTransition];
  v4 = [v3 animationState];

  if (v4 < 3)
  {
    v6 = [(UITrackingElementWindowController *)self currentTransition];
    v5 = [v6 fromPlacement];

    if (!v5 || [v5 showsInputViews])
    {
      v7 = [(UITrackingElementWindowController *)self placement];

      v5 = v7;
    }
  }

  else
  {
    v5 = [(UITrackingElementWindowController *)self placement];
  }

  return v5;
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
  v3 = [(UITrackingElementWindowController *)self _inputViewController];
  v4 = [v3 view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__UITrackingElementWindowController_invalidateInputView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 _preserveResponderOverridesWhilePerforming:v5];
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

- (id)expectedPlacement
{
  v3 = [(UITrackingElementWindowController *)self currentTransition];
  if (v3)
  {
    v4 = [(UITrackingElementWindowController *)self currentTransition];
    v5 = [v4 toPlacement];
  }

  else
  {
    v5 = [(UITrackingElementWindowController *)self placement];
  }

  return v5;
}

- (id)initialNotificationInfo
{
  v2 = [(UITrackingElementWindowController *)self templateNotificationInfo];
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

- (int64_t)animationTypeForCurrentTransition
{
  v5 = [(UITrackingElementWindowController *)self currentTransition];
  v6 = [v5 fromPlacement];
  v7 = [v6 isFloatingAssistantView];
  if ((v7 & 1) != 0 || (-[UITrackingElementWindowController currentTransition](self, "currentTransition"), v2 = objc_claimAutoreleasedReturnValue(), [v2 fromPlacement], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isCompactAssistantView")))
  {
    v8 = [(UITrackingElementWindowController *)self currentTransition];
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

  v12 = [(UITrackingElementWindowController *)self currentTransition];
  v13 = [v12 toPlacement];
  if ([v13 isFloatingAssistantView])
  {

    return 14;
  }

  v14 = [(UITrackingElementWindowController *)self currentTransition];
  v15 = [v14 toPlacement];
  v16 = [v15 isCompactAssistantView];

  if (v16)
  {
    return 14;
  }

  return 0;
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

- (void)refreshKeyboardLayoutGuide
{
  if ([objc_opt_class() useMetronomeTracking])
  {
    [(UITrackingElementWindowController *)self addWindowsForTracking];
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
    {
      v3 = [(UITrackingElementWindowController *)self postRotationPlacement];

      if (!v3)
      {
        v4 = [(UITrackingElementWindowController *)self currentTransition];

        if (!v4 || (-[UITrackingElementWindowController currentTransition](self, "currentTransition"), v5 = objc_claimAutoreleasedReturnValue(), [v5 fromPlacement], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
        {
          v8 = [(UITrackingElementWindowController *)self placement];
          if ([v8 showsInputOrAssistantViews])
          {
LABEL_12:

            goto LABEL_13;
          }

          v9 = [(UITrackingElementWindowController *)self placement];
          if ([v9 isFloatingAssistantView])
          {

            goto LABEL_12;
          }

          v25 = [(UITrackingElementWindowController *)self inputViewSet];
          v26 = [v25 inputAccessoryView];

          if (v26)
          {
LABEL_13:
            v10 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
            [v10 notificationsFrame];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v18 = v17;

            if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
            {
              v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              v20 = [v19 hasActiveKeyboardResponder];

              if (v20)
              {
                [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v12, v14, v16, v18];
                v12 = v21;
                v14 = v22;
                v16 = v23;
                v18 = v24;
              }
            }

            [(UITrackingElementWindowController *)self keyboardMovedToScreenPosition:0 animated:v12, v14, v16, v18];
            return;
          }

          [(UITrackingElementWindowController *)self updateOffscreenKeyboardLayoutGuide];
        }
      }
    }
  }
}

+ (BOOL)useMetronomeTracking
{
  v2 = _os_feature_enabled_impl();
  if (TIGetEnableMetronomeValue_onceToken_0 != -1)
  {
    dispatch_once(&TIGetEnableMetronomeValue_onceToken_0, &__block_literal_global_833);
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

void __58__UITrackingElementWindowController_addWindowsForTracking__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTrackingKeyboard])
  {
    v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v2 addWindowForTracking:v3];
  }
}

- (BOOL)currentControllerShouldUpdateKeyboardLayoutGuide
{
  if ([objc_opt_class() useMetronomeTracking])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(UIViewController *)self _window];
    if ([v4 _isTextEffectsWindowNotificationOwner])
    {
      v3 = [v4 isForViewService] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

void __58__UITrackingElementWindowController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[236];
  v79 = v2[237];
  v5 = v2[238];
  v4 = v2[239];
  v6 = [v2 inputViewSet];
  v7 = [v6 inputAccessoryView];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [(CGRect *)v8 inputViewSet];
    v10 = [v9 inputAccessoryView];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [*(a1 + 32) updateTrackingCoordinatorForAccessoryBounds:{v12, v14, v16, v18}];
    v82.origin.x = v12;
    v82.origin.y = v14;
    v82.size.width = v16;
    v82.size.height = v18;
    v19 = CGRectEqualToRect(*(*(a1 + 32) + 1920), v82);
    v20 = (*(a1 + 32) + 1920);
    *v20 = v12;
    v20[1] = v14;
    v20[2] = v16;
    v20[3] = v18;
  }

  else
  {
    v21 = MEMORY[0x1E695F058];
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    v83.origin.x = *MEMORY[0x1E695F058];
    v83.origin.y = v23;
    v83.size.width = v24;
    v83.size.height = v25;
    if (CGRectEqualToRect(v8[60], v83))
    {
      v19 = 0;
    }

    else
    {
      [*(a1 + 32) updateTrackingCoordinatorForAccessoryBounds:{v22, v23, v24, v25}];
      v26 = (*(a1 + 32) + 1920);
      v27 = v21[1];
      *v26 = *v21;
      v26[1] = v27;
      v19 = 1;
    }
  }

  v28 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
  [v28 notificationsFrame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = [*(a1 + 32) view];
  v38 = [v37 window];
  v39 = [v38 screen];
  [v39 scale];
  v41 = v40;

  v42 = round(v4 * v41) != round(v36 * v41);
  v43 = v5 != v34 || v42;
  if (v19)
  {
    v44 = [*(a1 + 32) animationAwarePlacement];
    v45 = [v44 isFloatingAssistantView];

    if ((v45 & 1) == 0)
    {
      v46 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v47 = [v46 trackingElementCoordinator];
      [v47 incomingKeyboardFrame];
      v30 = v48;
      v32 = v49;
      v34 = v50;
      v36 = v51;
    }

    v43 = 1;
  }

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:0 viewInRemoteKeyboardWindow:{v30, v32, v34, v36}];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = [*(a1 + 32) animationAwarePlacement];
  v61 = 0;
  if (([v60 accessoryViewWillAppear] | v19))
  {
    v62 = [*(a1 + 32) postRotationPlacement];
    if (v62)
    {
      v61 = 0;
    }

    else
    {
      v63 = [*(a1 + 32) inputViewSet];
      v61 = [v63 isInputViewPlaceholder];
    }
  }

  if (v43 && !*(a1 + 40) || *(a1 + 41) == 1)
  {
    v80 = +[UIInputViewSetNotificationInfo info];
    [v80 setForceNotification:1];
    [*(a1 + 32) transferActiveNotificationInfoToInfo:v80];
    v64 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v80 populateWithAnimationStyle:v64];

    [v80 populateStartInfoWithFrame:{v3, v79, v5, v4}];
    [v80 populateEndInfoWithFrame:{v53, v55, v57, v59}];
    v65 = &stru_1EFB14550;
    if (*(a1 + 41))
    {
      v66 = @" transitionRequiresImplicitNotifications";
    }

    else
    {
      v66 = &stru_1EFB14550;
    }

    if (v43)
    {
      v65 = @" hostViewDidChangeSize";
    }

    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC viewDidLayoutSubviews%@%@", v66, v65];
    [v80 addKeyboardNotificationDebuggingInfo:v67];

    if (v61)
    {
      __58__UITrackingElementWindowController_viewDidLayoutSubviews__block_invoke_2(v80);
    }

    v68 = [*(a1 + 32) placement];
    if ([v68 isFloating])
    {
    }

    else
    {
      v69 = *(*(a1 + 32) + 1652);

      if ((v69 & 1) == 0)
      {
        [*(a1 + 32) postStartNotifications:2 withInfo:v80];
        [*(a1 + 32) postEndNotifications:2 withInfo:v80];
      }
    }
  }

  else
  {
    if ((v43 & *(a1 + 40)) != 1)
    {
      return;
    }

    v70 = *(a1 + 32);
    if (v70[1624] != 1)
    {
      return;
    }

    v71 = [v70 currentTransition];
    v80 = [v71 notificationInfo];

    v72 = [v80 forceNotification];
    [v80 setForceNotification:1];
    [v80 addKeyboardNotificationDebuggingInfo:{@"TEWC viewDidLayoutSubviews hasTransition, hostViewDidChangeSize, _isChangingPlacement"}];
    if (v61)
    {
      __58__UITrackingElementWindowController_viewDidLayoutSubviews__block_invoke_2(v80);
    }

    v73 = *(a1 + 32);
    v74 = [v73 currentTransition];
    [v73 postEndNotifications:objc_msgSend(v74 withInfo:{"notifications"), v80}];

    [v80 populateStartInfoWithFrame:{v3, v79, v5, v4}];
    [v80 populateEndInfoWithFrame:{v53, v55, v57, v59}];
    if (v61)
    {
      __58__UITrackingElementWindowController_viewDidLayoutSubviews__block_invoke_2(v80);
    }

    v75 = *(a1 + 32);
    v76 = [v75 currentTransition];
    [v75 postStartNotifications:objc_msgSend(v76 withInfo:{"notifications"), v80}];

    v77 = [*(a1 + 32) currentTransition];
    v78 = [v77 notificationInfo];
    [v78 setForceNotification:v72];
  }
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
      v3 = [(UITrackingElementWindowController *)v5 isTransitioningBetweenFloatingStates];
    }
  }

  return v3;
}

uint64_t __56__UITrackingElementWindowController_invalidateInputView__block_invoke(uint64_t a1)
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

    [*(*(a1 + 32) + 1664) clearInputViewEdgeConstraints];
    [*(*(a1 + 32) + 1664) resetInputViewVisibility];
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

- (void)invalidateInputAccessoryView
{
  v3 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
  v4 = [v3 view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__UITrackingElementWindowController_invalidateInputAccessoryView__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 _preserveResponderOverridesWhilePerforming:v5];
}

- (id)_inputAccessoryView
{
  v2 = [(UITrackingElementWindowController *)self inputViewSet];
  v3 = [v2 inputAccessoryView];

  return v3;
}

- (UITrackingElementWindowController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = UITrackingElementWindowController;
  v4 = [(UIInputWindowController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animationStyleStack = v4->_animationStyleStack;
    v4->_animationStyleStack = v5;

    v7 = +[(UIInputViewSetPlacement *)UITrackingElementPlacementInitialPosition];
    placement = v4->_placement;
    v4->_placement = v7;
  }

  return v4;
}

- (void)_updatePlacementWithPlacement:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _UITrackingElementWindowControllerLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "updatePlacementWithPlacement: %@", buf, 0xCu);
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  objc_opt_isKindOfClass();
  if ([(UIInputViewSetPlacement *)self->_placement isHiddenForFloatingTransition])
  {
    v7 = [(UIInputViewSetPlacement *)self->_placement applicatorClassForKeyboard:1]== 0;
  }

  else
  {
    v7 = 0;
  }

  [(UIInputWindowControllerHosting *)self->_hosting unloadForPlacement];
  objc_storeStrong(&self->_placement, a3);
  hosting = self->_hosting;
  v9 = [(UITrackingElementWindowController *)self transientInputViewSet];
  if (v9)
  {
    [(UIInputWindowControllerHosting *)hosting reloadForPlacementForInputViewSet:v9];
  }

  else
  {
    v10 = [(UITrackingElementWindowController *)self inputViewSet];
    [(UIInputWindowControllerHosting *)hosting reloadForPlacementForInputViewSet:v10];
  }

  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__UITrackingElementWindowController__updatePlacementWithPlacement___block_invoke;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView performWithoutAnimation:v15];
  }

  v11 = [(UITrackingElementWindowController *)self inputViewSet];
  v12 = [v11 assistantViewController];
  v13 = [v12 assistantBarStyle];

  if (v13 == 1 && ([v5 isFloatingAssistantView] & 1) == 0)
  {
    v14 = [(UITrackingElementWindowController *)self inputViewSet];
    [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:v14];
  }
}

void __67__UITrackingElementWindowController__updatePlacementWithPlacement___block_invoke(uint64_t a1)
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

- (void)prepareForInputAssistant:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(UITrackingElementWindowController *)self inputViewSet];
  v7 = [v6 inputAssistantView];

  if (v7)
  {
    v8 = [v6 assistantViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v6 assistantViewController];
      [v10 prepareTransition:v11 animated:v4];
    }
  }
}

- (void)hostViewWillDisappear
{
  v3 = [(UITrackingElementWindowController *)self postRotationInputViewSet];
  if (v3 || ([(UITrackingElementWindowController *)self postRotationPlacement], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__UITrackingElementWindowController_hostViewWillDisappear__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
    return;
  }

  v4 = [(UITrackingElementWindowController *)self postRotationPendingBlock];

  if (v4)
  {
    goto LABEL_4;
  }
}

uint64_t __58__UITrackingElementWindowController_hostViewWillDisappear__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 keyboardOrientation];

  return [v1 didRotateFromInterfaceOrientation:v2];
}

- (id)_inputViewPlaceholder
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(UITrackingElementWindowController *)self inputViewSet];
  v4 = [v3 isInputViewPlaceholder];

  if ((v4 & 1) == 0)
  {
    v5 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = [(UITrackingElementWindowController *)self inputViewSet];
      v10 = [v9 inputView];
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Tracking element window has a non-placeholder input view: %@", &v11, 0xCu);
    }
  }

  v6 = [(UITrackingElementWindowController *)self inputViewSet];
  v7 = [v6 inputView];

  return v7;
}

- (id)_inputAssistantView
{
  v2 = [(UITrackingElementWindowController *)self inputViewSet];
  v3 = [v2 inputAssistantView];

  return v3;
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
  [(UITrackingElementWindowController *)self performWithoutAppearanceCallbacks:a3];
  --self->_suppressedNotifications;
}

- (void)performOperations:(id)a3 withTemplateNotificationInfo:(id)a4
{
  v6 = a3;
  [(UITrackingElementWindowController *)self setTemplateNotificationInfo:a4];
  v6[2](v6);

  [(UITrackingElementWindowController *)self setTemplateNotificationInfo:0];
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
    v7 = [(UITrackingElementWindowController *)self inputSetContainerView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__UITrackingElementWindowController_performWithSafeTransitionFrames___block_invoke;
    v12[3] = &unk_1E7102030;
    v13 = hiddenCount;
    v12[4] = self;
    [v7 performWithoutGeometryObserverNotifications:v12];

    self->_inhibitingHiding = 1;
    v6[2](v6);

    LODWORD(v7) = self->_hiddenCount + hiddenCount;
    self->_hiddenCount = 0;
    self->_inhibitingHiding = 0;
    v8 = [(UITrackingElementWindowController *)self inputSetContainerView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__UITrackingElementWindowController_performWithSafeTransitionFrames___block_invoke_2;
    v10[3] = &unk_1E7102030;
    v11 = v7;
    v10[4] = self;
    [v8 performWithoutGeometryObserverNotifications:v10];
  }
}

uint64_t __69__UITrackingElementWindowController_performWithSafeTransitionFrames___block_invoke(uint64_t result)
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

uint64_t __69__UITrackingElementWindowController_performWithSafeTransitionFrames___block_invoke_2(uint64_t result)
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
  v4 = [(UITrackingElementWindowController *)self inputViewSet];

  if (!v4)
  {
    [(UIViewController *)self updateViewConstraints];
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

- (void)didEndTransitionWithController:(id)a3
{
  [(UITrackingElementWindowController *)self setInterfaceAutorotationDisabled:0];
  v14 = [(UITrackingElementWindowController *)self initialNotificationInfo];
  v4 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
  [v4 notificationsFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v6, v8, v10, v12];
  [v14 populateEndInfoWithFrame:?];
  [v14 addKeyboardNotificationDebuggingInfo:@"TEWC didEndTransitionWithController:"];
  if (+[UIKeyboardImpl isFloating])
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [(UITrackingElementWindowController *)self postValidatedStartNotifications:v13 withInfo:v14];
  [(UITrackingElementWindowController *)self postValidatedEndNotifications:v13 withInfo:v14];
  [(UITrackingElementWindowController *)self keyboardMoveOfType:1 info:v14];
  [(UIInputWindowControllerHosting *)self->_hosting updateCombinedBackdropViewAnimated:0 forKeyboardUp:1];
  [(UITrackingElementWindowController *)self updateKeyboardSizeClass];
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
    v7 = [(UITrackingElementWindowController *)self inputViewSet];
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

- (void)layoutFromCoordinatorIfNeeded
{
  self->_suppressUpdateVisibilityConstraints = 1;
  self->_animatedLayoutFromCoordinator = +[UIView _isInAnimationBlock];
  v3 = [(UIViewController *)self view];
  [v3 layoutIfNeeded];

  self->_animatedLayoutFromCoordinator = 0;
  self->_suppressUpdateVisibilityConstraints = 0;
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
          v18 = [(UITrackingElementWindowController *)v20 _inputAccessoryView];
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
  if ([objc_opt_class() useMetronomeTracking])
  {
    v3 = [(UITrackingElementWindowController *)self postRotationPlacement];

    if (!v3)
    {
      v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v5 = [v4 trackingElementCoordinator];
      [v5 sendUpdateCompleteWithExistingInfo];
    }
  }

  [(UIInputWindowControllerHosting *)self->_hosting updateConstraintInsets];
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v6 sceneUpdated];
  }

  v7 = [(UIViewController *)self _window];
  v8 = [v7 _isHostedInAnotherProcess];

  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v10 = [v9 visualModeManager];
  v11 = [v10 windowingModeEnabled];

  if ((v11 & 1) != 0 || v8)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__UITrackingElementWindowController_hostAppSceneBoundsChanged__block_invoke;
    v27[3] = &unk_1E70F35E0;
    v28 = v8;
    v27[4] = self;
    [(UITrackingElementWindowController *)self performWithoutCallbacksOrNotifications:v27];
  }

  if (+[UIKeyboardImpl isFloating])
  {
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v13 = [v12 visualModeManager];
    v14 = [v13 windowingModeEnabled];

    if (v14)
    {
      +[UIKeyboardImpl floatingPersistentOffset];
      v16 = v15;
      v18 = v17;
      v19 = [(UITrackingElementWindowController *)self inputViewSet];
      [v19 inputViewBounds];
      [UIPeripheralHost adjustedFloatingOffsetForKeyboardSize:v20, v21];
      v23 = v22;
      v25 = v24;

      if (v16 != v23 || v18 != v25)
      {
        v26 = +[UIPeripheralHost sharedInstance];
        [v26 setUndockedWithOffset:1 animated:{v23, v25}];
      }
    }
  }
}

uint64_t __62__UITrackingElementWindowController_hostAppSceneBoundsChanged__block_invoke(uint64_t a1)
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
  v3.receiver = self;
  v3.super_class = UITrackingElementWindowController;
  [(UIInputWindowController *)&v3 takeKeyboardSnapshotIgnoringSpotlightCheck:a3];
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

- (BOOL)customTrackingElementsShouldUseActualFrame
{
  v3 = [(UITrackingElementWindowController *)self placement];
  if ([v3 isUndocked])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UITrackingElementWindowController *)self placement];
    if ([v5 isFloating])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(UITrackingElementWindowController *)self placement];
      if ([v6 isFloatingAssistantView])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(UITrackingElementWindowController *)self placement];
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
  if (![(UITrackingElementWindowController *)self customTrackingElementsShouldUseActualFrame])
  {
    v6 = [(UIViewController *)self _window];
    [v6 bounds];
    width = v7;

    height = 0.0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__UITrackingElementWindowController_updateTrackingElementsWithSize___block_invoke;
  v8[3] = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
  *&v8[4] = width;
  *&v8[5] = height;
  [UIKeyboardSceneDelegate performOnControllers:v8];
}

- (void)updateTrackingElementsWithOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v5 = ![(UITrackingElementWindowController *)self customTrackingElementsShouldUseActualFrame];
  v8[1] = 3221225472;
  v6 = 0.0;
  if (v5)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = horizontal;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[2] = __70__UITrackingElementWindowController_updateTrackingElementsWithOffset___block_invoke;
  v8[3] = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
  if (!v5)
  {
    v6 = vertical;
  }

  *&v8[4] = v7;
  *&v8[5] = v6;
  [UIKeyboardSceneDelegate performOnControllers:v8];
}

- (void)hostedOriginDidUpdate
{
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v5 trackingElementCoordinator];
  v4 = [(UIViewController *)self _window];
  [v4 hostedViewOrigin];
  [v3 updateTEWHostingOrigin:?];
}

- (void)changeGuideAnimationOptions:(unint64_t)a3 duration:(double)a4
{
  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__UITrackingElementWindowController_changeGuideAnimationOptions_duration___block_invoke;
    v6[3] = &__block_descriptor_48_e22_v24__0__UIWindow_8_B16l;
    *&v6[4] = a4;
    v6[5] = a3;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v6];
  }
}

void __74__UITrackingElementWindowController_changeGuideAnimationOptions_duration___block_invoke(uint64_t a1, void *a2)
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
  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__UITrackingElementWindowController_changeGuideAnimationState___block_invoke;
    v4[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
    v5 = a3;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v4];
  }
}

void __63__UITrackingElementWindowController_changeGuideAnimationState___block_invoke(uint64_t a1, void *a2)
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
  v3[2] = __55__UITrackingElementWindowController_hideGuideBackdrop___block_invoke;
  v3[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
  v4 = a3;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v3];
}

void __55__UITrackingElementWindowController_hideGuideBackdrop___block_invoke(uint64_t a1, void *a2)
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
  v12 = __Block_byref_object_copy__178;
  v13 = __Block_byref_object_dispose__178;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UITrackingElementWindowController_transitionGuideBackdrop___block_invoke;
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

void __61__UITrackingElementWindowController_transitionGuideBackdrop___block_invoke(uint64_t a1, void *a2)
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
  v9[2] = __78__UITrackingElementWindowController_updateGuideBackdropRenderConfig_animated___block_invoke;
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

void __78__UITrackingElementWindowController_updateGuideBackdropRenderConfig_animated___block_invoke(uint64_t a1, void *a2)
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
  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__UITrackingElementWindowController_keyboardIsDocking___block_invoke;
    v4[3] = &__block_descriptor_33_e22_v24__0__UIWindow_8_B16l;
    v5 = a3;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v4];
  }
}

void __55__UITrackingElementWindowController_keyboardIsDocking___block_invoke(uint64_t a1, void *a2)
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
  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__UITrackingElementWindowController_updateKeyboardPlacementForGuide___block_invoke;
    v5[3] = &unk_1E70F4440;
    v6 = v4;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v5];
  }
}

void __69__UITrackingElementWindowController_updateKeyboardPlacementForGuide___block_invoke(uint64_t a1, void *a2)
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
    v6 = [(UITrackingElementWindowController *)self postRotationPlacement];

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

          v7 = [(UITrackingElementWindowController *)self placement];
          if (![v7 isFloating])
          {
            v8 = [(UITrackingElementWindowController *)self placement];
            v9 = [v8 isFloatingAssistantView];

            if (v9)
            {
              goto LABEL_2;
            }

            goto LABEL_19;
          }

          goto LABEL_23;
        }

        v7 = [(UITrackingElementWindowController *)self placement];
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
        [(UITrackingElementWindowController *)self keyboardDismissWithInfo:v12];
        goto LABEL_2;
      }

      if (a3 == 2)
      {
LABEL_19:
        [(UITrackingElementWindowController *)self keyboardMoveWithInfo:v12];
        goto LABEL_2;
      }

      if (a3 == 3 && ([v12 dueToRotation] & 1) == 0)
      {
        v10 = [(UITrackingElementWindowController *)self postRotationPlacement];

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
  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    if (([v4 dueToRotation] & 1) == 0)
    {
      v5 = [(UITrackingElementWindowController *)self postRotationPlacement];

      if (!v5)
      {
        v6 = [(UIViewController *)self _window];
        [v6 bounds];
        [(UITrackingElementWindowController *)self updateTrackingElementsWithSize:v7, 0.0];

        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __61__UITrackingElementWindowController_keyboardDismissWithInfo___block_invoke;
        v8[3] = &unk_1E70F4440;
        v9 = v4;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v8];
      }
    }
  }
}

void __61__UITrackingElementWindowController_keyboardDismissWithInfo___block_invoke(uint64_t a1, void *a2)
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

    [(UITrackingElementWindowController *)self updateOffscreenKeyboardLayoutGuide];
  }
}

- (void)updateOffscreenKeyboardLayoutGuide
{
  v3 = [(UIViewController *)self _window];
  [v3 bounds];
  [(UITrackingElementWindowController *)self updateTrackingElementsWithSize:v4, 0.0];

  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
  {
    v5 = [(UIViewController *)self _window];
    v6 = [v5 _primaryKeyboardTrackingGuide];
    v7 = [(UIViewController *)self _window];
    [v7 bounds];
    v9 = v8;
    v10 = [(UIViewController *)self _window];
    [v10 insetForDismissedKeyboardGuide];
    v12 = [v6 changeSizingConstants:{v9, v11}];

    v13 = [(UIViewController *)self _window];
    v14 = [v13 _primaryKeyboardTrackingGuide];
    v15 = [v14 changeOffsetConstants:{0.0, 0.0}];

    if ((v12 & 1) != 0 || v15)
    {
      v16 = [(UIViewController *)self _window];
      [v16 layoutIfNeeded];
    }

    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:&__block_literal_global_263_2];
  }
}

void __71__UITrackingElementWindowController_updateOffscreenKeyboardLayoutGuide__block_invoke(uint64_t a1, void *a2)
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
  if (([objc_opt_class() useMetronomeTracking] & 1) == 0)
  {

    [(UITrackingElementWindowController *)self updateOffscreenKeyboardLayoutGuide];
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
    [(UITrackingElementWindowController *)self updateTrackingElementsWithSize:width, height];
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
      [(UITrackingElementWindowController *)self updateTrackingElementsWithOffset:MinX, v15 - CGRectGetMaxY(v40)];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__UITrackingElementWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke;
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
      v30[2] = __84__UITrackingElementWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke_2;
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

void __84__UITrackingElementWindowController_updateKeyboardLayoutGuideWithFrame_layoutViews___block_invoke(uint64_t a1, void *a2)
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
  v28 = a3;
  v4 = [(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide];
  v5 = v28;
  if (v4)
  {
    [v28 endFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIViewController *)self _window];
    v15 = [v14 _isHostedInAnotherProcess];

    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 hasActiveKeyboardResponder];

    v30.origin.x = v7;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    if (!CGRectIsEmpty(v30))
    {
      if (v15 & 1 | ((v17 & 1) == 0))
      {
        v23 = 1;
      }

      else
      {
        v23 = +[UIKeyboard usesInputSystemUI];
      }

      v24 = [(UITrackingElementWindowController *)self inputViewSet];
      v25 = [v24 isInputViewPlaceholder];

      v26 = [v28 forWritingToolsSheet];
      v5 = v28;
      if ((v26 & 1) == 0 && v25 && !v23)
      {
        goto LABEL_14;
      }

      [v28 duration];
      [(UITrackingElementWindowController *)self keyboardMovedToScreenPosition:v27 > 0.0 animated:v7, v9, v11, v13];
      goto LABEL_13;
    }

    v18 = [(UITrackingElementWindowController *)self currentTransition];
    if (!v18 || (v19 = v18, -[UITrackingElementWindowController currentTransition](self, "currentTransition"), v20 = objc_claimAutoreleasedReturnValue(), [v20 toPlacement], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "showsInputOrAssistantViews"), v21, v20, v19, v5 = v28, (v22 & 1) == 0))
    {
      [(UITrackingElementWindowController *)self keyboardDismissWithInfo:v28];
LABEL_13:
      v5 = v28;
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
  v82 = *MEMORY[0x1E69E9840];
  if ([(UITrackingElementWindowController *)self currentControllerShouldUpdateKeyboardLayoutGuide])
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

    v18 = [(UITrackingElementWindowController *)self placement];
    if ([v18 isUndocked])
    {
      v19 = 1;
    }

    else
    {
      v20 = [(UITrackingElementWindowController *)self placement];
      if ([v20 isFloating])
      {
        v19 = 1;
      }

      else
      {
        v21 = [(UITrackingElementWindowController *)self placement];
        if ([v21 isFloatingAssistantView])
        {
          v19 = 1;
        }

        else
        {
          v22 = [(UITrackingElementWindowController *)self placement];
          v19 = [v22 isHiddenForFloatingTransition];
        }
      }
    }

    if (width > 0.0)
    {
      v23 = [(UIViewController *)self _window];
      v24 = [v23 windowScene];
      v25 = [v24 _coordinateSpace];
      v63 = x;
      v64 = y;
      v65 = height;
      [v14 convertRect:v25 toCoordinateSpace:{x, y, width, height}];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = [(UIViewController *)self _window];
      [v34 bounds];
      v90.origin.x = v27;
      v90.origin.y = v29;
      v90.size.width = v31;
      v90.size.height = v33;
      v84 = CGRectIntersection(v83, v90);
      v35 = v84.origin.x;
      v36 = v84.origin.y;
      v37 = v84.size.width;
      v38 = v84.size.height;

      [(UITrackingElementWindowController *)self updateTrackingElementsWithSize:v37, v38];
      v85.origin.x = v35;
      v85.origin.y = v36;
      v85.size.width = v37;
      v85.size.height = v38;
      MaxY = CGRectGetMaxY(v85);
      v40 = [(UIViewController *)self _window];
      [v40 frame];
      v41 = CGRectGetMaxY(v86);

      MinX = 0.0;
      v43 = MaxY < v41;
      v44 = 0.0;
      if (v43)
      {
        v87.origin.x = v35;
        v87.origin.y = v36;
        v87.size.width = v37;
        v87.size.height = v38;
        MinX = CGRectGetMinX(v87);
        v45 = [(UIViewController *)self _window];
        [v45 frame];
        v46 = CGRectGetMaxY(v88);
        v89.origin.x = v35;
        v89.origin.y = v36;
        v89.size.width = v37;
        v89.size.height = v38;
        v44 = v46 - CGRectGetMaxY(v89);

        [(UITrackingElementWindowController *)self updateTrackingElementsWithOffset:MinX, v44];
      }

      v47 = [(UIViewController *)self _window];
      v48 = [v47 _primaryKeyboardTrackingGuide];
      v49 = [v48 changeSizingConstants:{v37, v38}];

      v50 = [(UIViewController *)self _window];
      v51 = [v50 _primaryKeyboardTrackingGuide];
      v52 = [v51 changeOffsetConstants:{MinX, v44}];

      if ((v49 & 1) != 0 || v52)
      {
        v53 = [(UIViewController *)self _window];
        [v53 layoutIfNeeded];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __76__UITrackingElementWindowController_keyboardMovedToScreenPosition_animated___block_invoke;
      aBlock[3] = &unk_1E7120250;
      v78 = v19;
      v74 = v63;
      v75 = v64;
      v76 = width;
      v77 = v65;
      v79 = v11;
      aBlock[4] = self;
      v73 = v14;
      v80 = a4;
      v54 = _Block_copy(aBlock);
      v55 = v54;
      if ((v17 | v11))
      {
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __76__UITrackingElementWindowController_keyboardMovedToScreenPosition_animated___block_invoke_2;
        v70[3] = &unk_1E7116408;
        v71 = v54;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v70];
        v56 = v71;
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v57 = [(UIViewController *)self _window];
        v58 = [v57 windowScene];
        v56 = [v58 windows];

        v59 = [v56 countByEnumeratingWithState:&v66 objects:v81 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v67;
          do
          {
            v62 = 0;
            do
            {
              if (*v67 != v61)
              {
                objc_enumerationMutation(v56);
              }

              v55[2](v55, *(*(&v66 + 1) + 8 * v62++));
            }

            while (v60 != v62);
            v60 = [v56 countByEnumeratingWithState:&v66 objects:v81 count:16];
          }

          while (v60);
        }
      }
    }
  }
}

void __76__UITrackingElementWindowController_keyboardMovedToScreenPosition_animated___block_invoke(uint64_t a1, void *a2)
{
  v58 = a2;
  if (![v58 isTrackingKeyboard])
  {
    goto LABEL_23;
  }

  v3 = [v58 _primaryKeyboardTrackingGuide];
  [v3 setDocked:(*(a1 + 80) & 1) == 0];

  if (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || (*(a1 + 81))
  {
    v4 = *(a1 + 40);
    v5 = [v58 windowScene];
    v6 = [v5 _coordinateSpace];
    [v4 convertRect:v6 toCoordinateSpace:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    x = v7;
    y = v9;
    width = v11;
    height = v13;

    if (*(a1 + 81) != 1 || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v58 frame];
      v69.origin.x = v15;
      v69.origin.y = v16;
      v69.size.width = v17;
      v69.size.height = v18;
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      v61 = CGRectIntersection(v60, v69);
      x = v61.origin.x;
      y = v61.origin.y;
      width = v61.size.width;
      height = v61.size.height;
    }

    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    if (!CGRectIsEmpty(v62))
    {
      goto LABEL_11;
    }
  }

  else
  {
    [v58 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [*(a1 + 32) _window];
    [v27 convertRect:v58 fromWindow:{v20, v22, v24, v26}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v63.origin.x = v29;
    v63.origin.y = v31;
    v63.size.width = v33;
    v63.size.height = v35;
    v64 = CGRectIntersection(v63, *(a1 + 48));
    v36 = v64.origin.x;
    v37 = v64.origin.y;
    v38 = v64.size.width;
    v39 = v64.size.height;
    if (!CGRectIsNull(v64))
    {
      v53 = [*(a1 + 32) _window];
      [v53 convertRect:v58 toWindow:{v36, v37, v38, v39}];
      x = v54;
      y = v55;
      width = v56;
      height = v57;

      goto LABEL_11;
    }
  }

  [v58 frame];
  y = CGRectGetMaxY(v65);
  [v58 frame];
  width = v40;
  [v58 insetForDismissedKeyboardGuide];
  height = v41;
  x = 0.0;
LABEL_11:
  [v58 insetForDismissedKeyboardGuide];
  if (height < v42)
  {
    [v58 insetForDismissedKeyboardGuide];
    height = v43;
  }

  [v58 frame];
  MaxY = CGRectGetMaxY(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  v45 = MaxY - CGRectGetMaxY(v67);
  if (v45 > 0.0 && !*(a1 + 80))
  {
    v45 = 0.0;
  }

  v46 = v58;
  if ((*(a1 + 82) & 1) == 0)
  {
    v47 = [v58 _primaryKeyboardTrackingGuide];
    [v47 enableAnimations:0];

    v46 = v58;
  }

  v48 = [v46 _primaryKeyboardTrackingGuide];
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v49 = [v48 changeOffsetConstants:{CGRectGetMinX(v68), v45}];

  v50 = [v58 _primaryKeyboardTrackingGuide];
  v51 = [v50 changeSizingConstants:{width, height}];

  if (((v49 & 1) != 0 || v51) && *(a1 + 82) == 1)
  {
    [v58 layoutViewsForTrackedGuides];
  }

  v52 = [v58 _primaryKeyboardTrackingGuide];
  [v52 enableAnimations:1];

LABEL_23:
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
  if (![v8 _isTextEffectsWindowNotificationOwner] || objc_msgSend(UIApp, "isSuspended") && self->_isSnapshotting || -[UITrackingElementWindowController isTransitioningBetweenFloatingStates](self, "isTransitioningBetweenFloatingStates"))
  {
    goto LABEL_13;
  }

  v9 = [(UITrackingElementWindowController *)self inputViewSet];
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
    [(UITrackingElementWindowController *)self setNotificationInfoWaitingForInputUI:v6];
    LOBYTE(v12) = 1;
  }

  return v12 ^ 1;
}

- (void)postStartNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  if ([(UITrackingElementWindowController *)self shouldPostNotification:a3 withInfo:?])
  {
    [(UITrackingElementWindowController *)self postValidatedStartNotifications:a3 withInfo:v6];
  }
}

- (void)postValidatedStartNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__UITrackingElementWindowController_postValidatedStartNotifications_withInfo___block_invoke;
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
    v10 = [(UITrackingElementWindowController *)self isTransitioningBetweenFloatingStates];

    if (!v10)
    {
      v8[2](v8);
      goto LABEL_6;
    }
  }

  [UIView performWithoutAnimation:v8];
LABEL_6:
}

void __78__UITrackingElementWindowController_postValidatedStartNotifications_withInfo___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
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
            *v34 = 0;
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
            *v34 = 0;
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
            *v34 = 0;
            v6 = "notificationWill.rotate";
LABEL_25:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, v6, "", v34, 2u);
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
        *v34 = 0;
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
        *v34 = 0;
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
      *v34 = 0;
      v6 = "notificationWill.frameChange";
      goto LABEL_25;
    }
  }

LABEL_26:

  v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v13 = [v12 trackingElementCoordinator];

  if (objc_opt_respondsToSelector())
  {
    [v13 postNotificationType:*(a1 + 48) forStart:1];
    goto LABEL_36;
  }

  v14 = [*(a1 + 32) notificationsFromPlacement];
  v15 = [v14 keyboardState];

  v16 = [*(a1 + 32) notificationsToPlacement];
  v17 = [v16 keyboardState];

  if ([*(a1 + 32) isRotating])
  {
    [v15 setIsRotating:1];
    [v17 setIsRotating:1];
  }

  if (*(a1 + 48) == 1)
  {
    if ([v15 isInteractive])
    {
      v18 = v15;
      v15 = v17;
LABEL_34:
      v17 = v18;

      v15 = v17;
      goto LABEL_35;
    }

    v19 = [v17 hasAccessoryView];
    v18 = v17;
    if ((v19 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  [v13 postStartNotificationsFromState:v15 toState:{v17, *v34}];

LABEL_36:
  v20 = [*(a1 + 40) debugInfo];
  v21 = [v20 length];

  if (v21 >= 2)
  {
    v22 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v33 = [*(a1 + 40) debugInfo];
      *v34 = 138412290;
      *&v34[4] = v33;
      _os_log_debug_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEBUG, "Posted notifications (start) from %@", v34, 0xCu);
    }
  }

  v23 = *(a1 + 48);
  if (v23 > 1)
  {
    switch(v23)
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
            *v34 = 0;
            v27 = "notificationWill.show";
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      case 3:
        kdebug_trace();
        v24 = kac_get_log();
        v30 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v30;
          if (os_signpost_enabled(v24))
          {
            *v34 = 0;
            v27 = "notificationWill.hide";
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      case 4:
        kdebug_trace();
        v24 = kac_get_log();
        v25 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v25;
          if (os_signpost_enabled(v24))
          {
            *v34 = 0;
            v27 = "notificationWill.rotate";
LABEL_64:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v24, OS_SIGNPOST_INTERVAL_END, v26, v27, "", v34, 2u);
            goto LABEL_65;
          }
        }

        goto LABEL_65;
    }

LABEL_61:
    kdebug_trace();
    v24 = kac_get_log();
    v32 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v32;
      if (os_signpost_enabled(v24))
      {
        *v34 = 0;
        v27 = "notificationWill.unknown";
        goto LABEL_64;
      }
    }

    goto LABEL_65;
  }

  if (!v23)
  {
    kdebug_trace();
    v24 = kac_get_log();
    v31 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v31;
      if (os_signpost_enabled(v24))
      {
        *v34 = 0;
        v27 = "notificationWill.none";
        goto LABEL_64;
      }
    }

    goto LABEL_65;
  }

  if (v23 != 1)
  {
    goto LABEL_61;
  }

  kdebug_trace();
  v24 = kac_get_log();
  v28 = os_signpost_id_make_with_pointer(v24, *(a1 + 32));
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = v28;
    if (os_signpost_enabled(v24))
    {
      *v34 = 0;
      v27 = "notificationWill.frameChange";
      goto LABEL_64;
    }
  }

LABEL_65:
}

- (void)postEndNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  if ([(UITrackingElementWindowController *)self shouldPostNotification:a3 withInfo:?])
  {
    [(UITrackingElementWindowController *)self postValidatedEndNotifications:a3 withInfo:v6];
  }
}

- (void)postValidatedEndNotifications:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__UITrackingElementWindowController_postValidatedEndNotifications_withInfo___block_invoke;
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
    v10 = [(UITrackingElementWindowController *)self isTransitioningBetweenFloatingStates];

    if (!v10)
    {
      v8[2](v8);
      goto LABEL_6;
    }
  }

  [UIView performWithoutAnimation:v8];
LABEL_6:
}

void __76__UITrackingElementWindowController_postValidatedEndNotifications_withInfo___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
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
            *v43 = 0;
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
            *v43 = 0;
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
            *v43 = 0;
            v6 = "notificationDid.rotate";
LABEL_25:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, v6, "", v43, 2u);
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
        *v43 = 0;
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
        *v43 = 0;
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
      *v43 = 0;
      v6 = "notificationDid.frameChange";
      goto LABEL_25;
    }
  }

LABEL_26:

  [*(a1 + 32) updateAmbiguousControlCenterActivationMargin:*(a1 + 48) withInfo:*(a1 + 40)];
  if (![UIApp isSuspended] || (objc_msgSend(*(a1 + 32), "_window"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "_isHostedInAnotherProcess"), v12, v13))
  {
    v14 = [*(a1 + 32) inputViewSet];
    v15 = [v14 keyboard];
    if (v15)
    {
      v16 = [*(a1 + 32) isOnScreen];
      v17 = *(a1 + 32);
      if (v16)
      {
        v18 = [v17 placement];
        if ([v18 showsKeyboard])
        {
          v19 = 1;
        }

        else
        {
          v19 = [*(a1 + 32) isUndocked];
        }
      }

      else
      {
        v19 = [v17 isUndocked];
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = +[UIPeripheralHost sharedInstance];
    [v20 setKeyboardOnScreenNotifyKey:v19];
  }

  v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v22 = [v21 trackingElementCoordinator];

  if (objc_opt_respondsToSelector())
  {
    [v22 postNotificationType:*(a1 + 48) forStart:0];
    goto LABEL_47;
  }

  v23 = [*(a1 + 32) notificationsFromPlacement];
  v24 = [v23 keyboardState];

  v25 = [*(a1 + 32) notificationsToPlacement];
  v26 = [v25 keyboardState];

  if ([*(a1 + 32) isRotating])
  {
    [v24 setIsRotating:1];
    [v26 setIsRotating:1];
  }

  if (*(a1 + 48) == 1)
  {
    if ([v24 isInteractive])
    {
      v27 = v24;
      v24 = v26;
LABEL_45:
      v26 = v27;

      v24 = v26;
      goto LABEL_46;
    }

    v28 = [v26 hasAccessoryView];
    v27 = v26;
    if ((v28 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  [v22 postEndNotificationsFromState:v24 toState:v26];

LABEL_47:
  v29 = [*(a1 + 40) debugInfo];
  v30 = [v29 length];

  if (v30 >= 2)
  {
    v31 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v42 = [*(a1 + 40) debugInfo];
      *v43 = 138412290;
      *&v43[4] = v42;
      _os_log_debug_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEBUG, "Posted notifications (end) from %@", v43, 0xCu);
    }
  }

  v32 = *(a1 + 48);
  if (v32 > 1)
  {
    switch(v32)
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
            *v43 = 0;
            v36 = "notificationDid.show";
            goto LABEL_75;
          }
        }

        goto LABEL_76;
      case 3:
        kdebug_trace();
        v33 = kac_get_log();
        v39 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v35 = v39;
          if (os_signpost_enabled(v33))
          {
            *v43 = 0;
            v36 = "notificationDid.hide";
            goto LABEL_75;
          }
        }

        goto LABEL_76;
      case 4:
        kdebug_trace();
        v33 = kac_get_log();
        v34 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v35 = v34;
          if (os_signpost_enabled(v33))
          {
            *v43 = 0;
            v36 = "notificationDid.rotate";
LABEL_75:
            _os_signpost_emit_with_name_impl(&dword_188A29000, v33, OS_SIGNPOST_INTERVAL_END, v35, v36, "", v43, 2u);
            goto LABEL_76;
          }
        }

        goto LABEL_76;
    }

LABEL_72:
    kdebug_trace();
    v33 = kac_get_log();
    v41 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = v41;
      if (os_signpost_enabled(v33))
      {
        *v43 = 0;
        v36 = "notificationDid.unknown";
        goto LABEL_75;
      }
    }

    goto LABEL_76;
  }

  if (!v32)
  {
    kdebug_trace();
    v33 = kac_get_log();
    v40 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = v40;
      if (os_signpost_enabled(v33))
      {
        *v43 = 0;
        v36 = "notificationDid.none";
        goto LABEL_75;
      }
    }

    goto LABEL_76;
  }

  if (v32 != 1)
  {
    goto LABEL_72;
  }

  kdebug_trace();
  v33 = kac_get_log();
  v37 = os_signpost_id_make_with_pointer(v33, *(a1 + 32));
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v35 = v37;
    if (os_signpost_enabled(v33))
    {
      *v43 = 0;
      v36 = "notificationDid.frameChange";
      goto LABEL_75;
    }
  }

LABEL_76:
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
    v8 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
  }

  else
  {
    if (a3 == 4)
    {
      [(UITrackingElementWindowController *)self _inputAccessoryViewController];
    }

    else
    {
      [(UITrackingElementWindowController *)self _inputViewController];
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
    [(UITrackingElementWindowController *)self changeChild:(1 << i) toAppearState:[(UITrackingElementWindowController *)self appearStateForChild:(1 << i) placement:a3 start:v6] animated:v5];
  }
}

- (void)updateAmbiguousControlCenterActivationMargin:(unint64_t)a3 withInfo:(id)a4
{
  v14 = a4;
  v7 = +[UIDevice _hasHomeButton];
  if (v7 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), ([v4 orientation] - 3) < 2))
  {
    v8 = [(UITrackingElementWindowController *)self placement];
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

- (void)updateTrackingCoordinatorForAccessoryBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  v8 = [(UITrackingElementWindowController *)self inputViewSet];
  v9 = [v8 isInputAccessoryViewPlaceholder];

  if (!v9 || (-[UIViewController view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 bounds], v12 = v11, v10, height < v12))
  {
    v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v14 = [v13 trackingElementCoordinator];

    v15 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v18 = NSStringFromCGRect(v26);
      v19 = 138412802;
      v20 = v17;
      v21 = 2048;
      v22 = v14;
      v23 = 2112;
      v24 = v18;
      _os_log_debug_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEBUG, "Tracking coordinator: Updating <%@:%p> for IAV bounds change to %@", &v19, 0x20u);
    }

    v16 = [(UIViewController *)self _window];
    [v14 updateAccessoryViewBounds:v16 forWindow:{x, y, width, height}];
  }
}

- (void)transferActiveNotificationInfoToInfo:(id)a3
{
  v7 = a3;
  v4 = [(UITrackingElementWindowController *)self templateNotificationInfo];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC transferActiveNotificationInfoToInfo:"];
  [v7 addKeyboardNotificationDebuggingInfo:v5];

  if (!v4)
  {
    if (![(UITrackingElementWindowController *)self isRotating])
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
  [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:0 viewInRemoteKeyboardWindow:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v9 = [(UIViewController *)self view];
  [v9 convertRect:0 toView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ([UIApp _isSpringBoard])
  {
    goto LABEL_2;
  }

  v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v28 = [v27 visualModeManager];
  v29 = [v28 windowingModeEnabled];

  if (v29)
  {
LABEL_8:
    v18 = [(UIViewController *)self _window];
    v33 = [v18 windowScene];
    v34 = [v33 _coordinateSpace];
    v35 = [(UIViewController *)self _window];
    v36 = [v35 screen];
    v37 = [v36 coordinateSpace];
    [v34 convertRect:v37 toCoordinateSpace:{v11, v13, v15, v17}];
    v20 = v38;
    v22 = v39;
    v24 = v40;
    v26 = v41;

    goto LABEL_9;
  }

  v30 = [(UIViewController *)self _window];
  if (([v30 _isTextEffectsWindow] & 1) == 0)
  {

    goto LABEL_8;
  }

  v31 = [(UIViewController *)self _window];
  v32 = [v31 _isHostedInAnotherProcess];

  if (!v32)
  {
    goto LABEL_8;
  }

LABEL_2:
  v18 = [(UIViewController *)self _window];
  [v18 convertRect:0 toWindow:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
LABEL_9:

  v42 = v20;
  v43 = v22;
  v44 = v24;
  v45 = v26;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (void)updateHostingItemsForConstraintChanges
{
  v3 = [(UITrackingElementWindowController *)self inputViewSet];
  v4 = [v3 inputAccessoryView];
  if (v4)
  {
  }

  else
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 visualModeManager];
    v7 = [v6 shouldShowWithinAppWindow];

    if (!v7)
    {
      return;
    }
  }

  v8 = [(UIViewController *)self view];
  [v8 layoutIfNeeded];
}

void __58__UITrackingElementWindowController_viewDidLayoutSubviews__block_invoke_2(void *a1)
{
  v1 = a1;
  v5 = [getTUIKeyboardAnimationInfoClass_0() defaultInfo];
  [v5 setDuration:0.0];
  [v5 setShouldAnimate:0];
  v2 = [v1 userInfo];

  [v5 setNotificationInfo:v2];
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 trackingElementCoordinator];

  if (objc_opt_respondsToSelector())
  {
    [v4 updateNotificationsOnly:v5];
  }
}

- (void)checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:(BOOL)a3 layoutSubviews:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UITrackingElementWindowController *)self inputViewSet];
  v8 = [v7 isInputViewPlaceholder];

  if (v8)
  {
    externalTrackingUpdateInProgress = self->_externalTrackingUpdateInProgress;
    v10 = [(UITrackingElementWindowController *)self inputViewSet];
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

  v13 = [(UITrackingElementWindowController *)self inputViewSet];
  v14 = [v13 isInputAssistantViewPlaceholder];

  if (v14)
  {
    v15 = [(UITrackingElementWindowController *)self inputViewSet];
    v16 = [v15 inputAssistantView];
    externalTrackingUpdateInProgress = externalTrackingUpdateInProgress | [v16 refreshPlaceholder];
  }

  v17 = [(UITrackingElementWindowController *)self inputViewSet];
  v18 = [v17 isInputAccessoryViewPlaceholder];

  if (v18)
  {
    v19 = [(UITrackingElementWindowController *)self inputViewSet];
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

  if (v5 || v4 || ([(UITrackingElementWindowController *)self postRotationPlacement], (externalTrackingUpdateInProgress = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = [(UITrackingElementWindowController *)self inputViewSet];
    if ([v21 isInputViewPlaceholder])
    {
      v22 = self->_externalTrackingUpdateInProgress;

      if (!v5 && !v4)
      {
      }

      if (!v22)
      {
        [(UITrackingElementWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
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
    [(UITrackingElementWindowController *)self updateHostingConstraints];
  }

  if (v4)
  {

    [(UITrackingElementWindowController *)self updateHostingItemsForConstraintChanges];
  }

  else
  {
    v23 = [(UIViewController *)self view];
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
          v11 = [(UITrackingElementWindowController *)self inputViewSet];
          v12 = [v10 shouldBeShownForInputDelegate:0 inputViews:v11];

          v13 = [(UITrackingElementWindowController *)self placement];
          objc_opt_class();
          LODWORD(v11) = objc_opt_isKindOfClass() & 1;

          if (v12 != v11)
          {
            v14 = [(UITrackingElementWindowController *)self inputViewSet];
            v15 = [(UIViewController *)self _window];
            v16 = [v15 windowScene];
            v17 = [UIPeripheralHost endPlacementForInputViewSet:v14 windowScene:v16];

            v18 = [(UITrackingElementWindowController *)self placement];
            LOBYTE(v15) = [v18 isEqual:v17];

            if ((v15 & 1) == 0)
            {
              [(UITrackingElementWindowController *)self setPlacement:v17];
            }
          }
        }

        [(UITrackingElementWindowController *)self updateKeyboardSizeClass];
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
        [(UITrackingElementWindowController *)self updateViewSizingConstraints];
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

        [(UITrackingElementWindowController *)self resetBackdropHeight];
        [(UITrackingElementWindowController *)self updateHostingConstraints];
        v20 = [v22 splitWidthsChanged];
        v4 = v22;
        if (!v20)
        {
          goto LABEL_22;
        }

        v21 = [(UITrackingElementWindowController *)self inputViewSet];
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
        v13[2] = __80__UITrackingElementWindowController__collectTransitionTimeStatistics_withStart___block_invoke;
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

void __80__UITrackingElementWindowController__collectTransitionTimeStatistics_withStart___block_invoke(uint64_t a1)
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
    [(UITrackingElementWindowController *)self pushAnimationStyle:a4];
    v6[2](v6);

    [(UITrackingElementWindowController *)self popAnimationStyle];
  }
}

- (BOOL)mergeTransitionIfNecessaryWithTransition:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITrackingElementWindowController *)self currentTransition];
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
    v13 = _UITrackingElementWindowControllerLogger();
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
    [(UITrackingElementWindowController *)self postEndNotifications:v15 withInfo:v16];

    v17 = [(UIInputWindowControllerHosting *)self->_hosting allHostingItems];
    [v17 enumerateObjectsUsingBlock:&__block_literal_global_311_0];

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
    v11[2] = __56__UITrackingElementWindowController_addPendingActivity___block_invoke;
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

uint64_t __56__UITrackingElementWindowController_addPendingActivity___block_invoke(uint64_t a1)
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

  else if ([v3 isFloatingAssistantView])
  {
    v4 = 5;
  }

  else if ([v3 isFloating])
  {
    v4 = 3;
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
  v65 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = _UITrackingElementWindowControllerLogger();
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
    v62 = v12;
    v63 = 2112;
    v64 = v10;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Updating keyboard tracking elements %@ with notificationInfo:\n%@", buf, 0x16u);
  }

  v13 = [(UITrackingElementWindowController *)self currentTransition];

  if (v13)
  {
    v14 = [(UITrackingElementWindowController *)self currentTransition];
    [v14 setCancelled:1];

    v15 = [(UITrackingElementWindowController *)self currentTransition];
    v16 = [v15 animationStyle];
    [v16 cancelInterruptibleAnimations];

    [(UITrackingElementWindowController *)self setCurrentTransition:0];
    [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
  }

  self->_externalTrackingUpdateInProgress = 1;
  [v10 duration];
  if (v17 <= 0.0)
  {
    +[UIInputViewAnimationStyle animationStyleImmediate];
  }

  else
  {
    [v10 duration];
    [UIInputViewAnimationStyle animationStyleAnimated:1 duration:?];
  }
  v18 = ;
  [v10 setNonKeyboardOverride:1];
  [v10 endFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(UITrackingElementWindowController *)self inputViewSet];
  v28 = [v27 inputAccessoryView];
  if (v28)
  {
    v29 = v28;
    v43 = v18;
    v30 = v7;
    v31 = a4;
    v32 = v6;
    v33 = [(UITrackingElementWindowController *)self inputViewSet];
    v34 = [v33 isInputViewPlaceholder];

    if (v34)
    {
      v35 = +[UIInputViewSetNotificationInfo info];
      externalTrackingInfo = self->_externalTrackingInfo;
      self->_externalTrackingInfo = v35;

      v37 = self->_externalTrackingInfo;
      [v10 endFrame];
      [(UIInputViewSetNotificationInfo *)v37 populateEndInfoWithFrame:?];
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    v6 = v32;
    a4 = v31;
    v7 = v30;
    v18 = v43;
  }

  else
  {

    v38 = 0;
  }

  if (+[UIInputWindowController useMetronomeTracking])
  {
    self->_externalTrackingUpdateInProgress = 0;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke;
    aBlock[3] = &unk_1E7116280;
    aBlock[4] = self;
    v55 = v20;
    v56 = v22;
    v57 = v24;
    v58 = v26;
    v60 = v38;
    v39 = v10;
    v53 = v39;
    v40 = v18;
    v54 = v40;
    v59 = a4;
    v41 = _Block_copy(aBlock);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_3;
    v44[3] = &unk_1E71164C8;
    v44[4] = self;
    v46 = v20;
    v47 = v22;
    v48 = v24;
    v49 = v26;
    v51 = v7;
    v45 = v39;
    v50 = a4;
    v42 = _Block_copy(v44);
    if (v7 && v6)
    {
      [v40 launchAnimation:v41 afterStarted:0 completion:v42 forHost:self fromCurrentPosition:0];
    }

    else
    {
      if (v7)
      {
        v41[2](v41);
      }

      if (v6)
      {
        v42[2](v42, 1);
      }

      else
      {
        self->_externalTrackingUpdateInProgress = 0;
      }
    }
  }
}

void __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_2;
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

uint64_t __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_2(uint64_t a1)
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

void __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_4;
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
  *(*(a1 + 32) + 2041) = 0;
}

uint64_t __134__UITrackingElementWindowController_animateKeyboardTrackingElementsWithNotificationInfo_notificationType_updateForStart_updateForEnd___block_invoke_4(uint64_t a1)
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
  v53 = *MEMORY[0x1E69E9840];
  if (+[UIInputWindowController useMetronomeTracking])
  {
    v3 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      placement = self->_placement;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = placement;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Updating sizing for existing placement %@", &buf, 0xCu);
    }

    v5 = [(UITrackingElementWindowController *)self currentTransition];
    v6 = [v5 animationStyle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(UITrackingElementWindowController *)self nextAnimationStyle];
    }

    v9 = v8;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__178;
    v51 = __Block_byref_object_dispose__178;
    v10 = [(UITrackingElementWindowController *)self placement];
    v52 = [UITrackingElementPlacementTransition transitionForExistingPlacement:v10 animationStyle:v9];

    v11 = [(UITrackingElementWindowController *)self currentTransition];
    v12 = v11;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__178;
    v46 = __Block_byref_object_dispose__178;
    v47 = 0;
    if (v11 && ([v11 cancelled] & 1) == 0)
    {
      v13 = [(UITrackingElementWindowController *)self currentTransition];
      v14 = [v13 notificationInfo];
      v15 = v43[5];
      v43[5] = v14;

      v16 = [v12 fromPlacement];
      [*(*(&buf + 1) + 40) setFromPlacement:v16];

      [v12 setCancelled:1];
      v17 = [v12 animationStyle];
      [v17 cancelInterruptibleAnimations];

      [(UIInputWindowControllerHosting *)self->_hosting removeAllAnimations];
    }

    v18 = v43[5];
    if (!v18)
    {
      v19 = [(UITrackingElementWindowController *)self notificationInfoWaitingForInputUI];

      if (v19)
      {
        v20 = [(UITrackingElementWindowController *)self notificationInfoWaitingForInputUI];
        v21 = v43[5];
        v43[5] = v20;

        [(UITrackingElementWindowController *)self setNotificationInfoWaitingForInputUI:0];
      }

      else
      {
        v22 = [(UITrackingElementWindowController *)self initialNotificationInfo];
        v23 = v43[5];
        v43[5] = v22;

        v24 = v43[5];
        v25 = [*(*(&buf + 1) + 40) animationStyle];
        [v24 populateWithAnimationStyle:v25];
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke;
      v41[3] = &unk_1E70FE3F8;
      v41[4] = self;
      v41[5] = &v42;
      [(UITrackingElementWindowController *)self performWithSafeTransitionFrames:v41];
      v18 = v43[5];
    }

    [*(*(&buf + 1) + 40) setNotificationInfo:v18];
    v26 = [*(*(&buf + 1) + 40) animationStyle];
    [v26 setExtraOptions:{objc_msgSend(v26, "extraOptions") & 0xFFFFFFFFFFFFFFFDLL}];

    [(UITrackingElementWindowController *)self setCurrentTransition:*(*(&buf + 1) + 40)];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = 2;
    [*(*(&buf + 1) + 40) didAdvanceAnimationToState:1];
    v27 = [*(*(&buf + 1) + 40) notificationInfo];
    [v27 setWaitingForInputUI:0];

    v28 = +[UIKeyboard usesInputSystemUI];
    v29 = *(*(&buf + 1) + 40);
    if (v28)
    {
      v30 = [v29 notificationInfo];
      v31 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
      v32 = [v31 currentUIState];
      [v30 setWasCausedRemotely:{objc_msgSend(v30, "wasCausedRemotely") | objc_msgSend(v32, "isLocal") ^ 1}];
    }

    else
    {
      v30 = [v29 notificationInfo];
      [v30 setWasCausedRemotely:1];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_2;
    aBlock[3] = &unk_1E71053E8;
    aBlock[4] = self;
    aBlock[5] = &buf;
    aBlock[6] = v40;
    v33 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_328;
    v38[3] = &unk_1E70F2F20;
    v38[4] = &buf;
    v34 = _Block_copy(v38);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_2_329;
    v37[3] = &unk_1E7116518;
    v37[4] = self;
    v37[5] = &buf;
    v37[6] = v40;
    v35 = _Block_copy(v37);
    v36 = [*(*(&buf + 1) + 40) animationStyle];
    [v36 launchAnimation:v33 afterStarted:v34 completion:v35 forHost:self fromCurrentPosition:0];

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  v11 = *(*(*(a1 + 40) + 8) + 40);

  return [v11 populateStartInfoWithFrame:?];
}

void __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 40) + 8) + 40) didAdvanceAnimationToState:2])
  {
    v2 = *(a1 + 32);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_3;
    v40[3] = &unk_1E70F3590;
    v40[4] = v2;
    [v2 performWithoutCallbacksOrNotifications:v40];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_4;
    v37[3] = &unk_1E71164F0;
    v38 = *(a1 + 32);
    v39 = *(a1 + 48);
    [v38 performWithSafeTransitionFrames:v37];
    if (+[UIInputWindowController useMetronomeTracking])
    {
      v3 = [*(a1 + 32) postRotationPlacement];

      if (!v3)
      {
        v4 = [*(a1 + 32) placement];
        v5 = [v4 keyboardState];

        v6 = [*(*(a1 + 32) + 1664) itemForPurpose:0];
        [v6 trackingCoordinatorFrame];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v16 = [v15 keyboardTrackingProvider];

        v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v18 = [v17 trackingElementCoordinator];
        [v18 incomingKeyboardFrame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        if (v24 > 0.0)
        {
          v12 = v24;
          v14 = v26;
          v8 = v20;
          v10 = v22;
        }

        v27 = *(a1 + 32);
        v28 = [*(*(*(a1 + 40) + 8) + 40) animationStyle];
        v29 = [v27 infoForAnimationStyle:v28];

        v30 = [*(*(*(a1 + 40) + 8) + 40) notificationInfo];
        v31 = [v30 userInfo];
        [v29 setNotificationInfo:v31];

        v32 = _UITrackingElementWindowControllerLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v44.origin.x = v8;
          v44.origin.y = v10;
          v44.size.width = v12;
          v44.size.height = v14;
          v36 = NSStringFromCGRect(v44);
          *buf = 138412290;
          v42 = v36;
          _os_log_debug_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEBUG, "Tracking provider: updateSizingFromRemoteChange to %@", buf, 0xCu);
        }

        [v16 keyboardWillChangeState:v5 endFrame:v29 animationInfo:{v8, v10, v12, v14}];
      }
    }

    v33 = *(*(*(a1 + 48) + 8) + 24);
    v34 = *(a1 + 32);
    v35 = [*(*(*(a1 + 40) + 8) + 40) notificationInfo];
    [v34 postStartNotifications:v33 withInfo:v35];
  }
}

void __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
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
  [v20 addKeyboardNotificationDebuggingInfo:@"TEWC updateFromRemoteChange"];

  if (v18 == 0.0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 3;
  }
}

uint64_t __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_2_329(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTransition];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setCurrentTransition:0];
  }

  *(*(a1 + 32) + 1624) = 0;
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
  v14[2] = __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_3_330;
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

void __65__UITrackingElementWindowController_updateSizingFromRemoteChange__block_invoke_3_330(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 24);
  v3 = [*(*(a1[6] + 8) + 40) notificationInfo];
  [v1 postEndNotifications:v2 withInfo:v3];
}

- (void)moveFromPlacement:(id)a3 toPlacement:(id)a4 starting:(id)a5 completion:(id)a6
{
  v168 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v117 = a5;
  v115 = a6;
  v12 = _UITrackingElementWindowControllerLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    placement = self->_placement;
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v165 = placement;
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
      v17 = [(UITrackingElementWindowController *)self inputViewSet];
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

    v22 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(UITrackingElementWindowController *)self inputViewSet];
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

  v118 = v21;
  if (([v21 showsInputOrAssistantViews] & 1) != 0 || objc_msgSend(v118, "showsKeyboard"))
  {
    self->_externalTrackingUpdateInProgress = 0;
    externalTrackingInfo = self->_externalTrackingInfo;
    self->_externalTrackingInfo = 0;
  }

  v116 = [(UITrackingElementWindowController *)self nextAnimationStyle];
  v119 = [UITrackingElementPlacementTransition transitionFromPlacement:v10 toPlacement:v118 withAnimationStyle:v116];
  if ([(UITrackingElementWindowController *)self mergeTransitionIfNecessaryWithTransition:v119])
  {
    if (v117)
    {
      [(UITrackingElementWindowController *)self addPendingActivity:v117];
    }

    if (v115)
    {
      [(UITrackingElementWindowController *)self addPendingActivity:?];
    }

    goto LABEL_100;
  }

  [(UITrackingElementWindowController *)self flushPendingActivities];
  v26 = v10;
  v27 = [(UITrackingElementWindowController *)self currentTransition];
  v114 = v26;
  if (v27)
  {
    if ([(UITrackingElementWindowController *)self isRotating])
    {
      v28 = [(UITrackingElementWindowController *)self currentTransition];
      v29 = [v28 cancelled];

      v114 = v26;
      if (v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v114 = [v119 fromPlacement];
  }

LABEL_30:
  v30 = [v119 fromPlacement];

  v31 = [v30 isEqual:v118];
  v32 = [v119 animationStyle];
  v33 = [v32 extraOptions] & 0xFFFFFFFFFFFFFFFDLL;
  v34 = 2;
  if (!v31)
  {
    v34 = 0;
  }

  [v32 setExtraOptions:v33 | v34];

  v35 = [(UITrackingElementWindowController *)self currentTransition];
  if (v35)
  {
    v36 = [(UITrackingElementWindowController *)self currentTransition];
    [v36 lastKnownKeyboardFrame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
  }

  else
  {
    v38 = *MEMORY[0x1E695F058];
    v40 = *(MEMORY[0x1E695F058] + 8);
    v42 = *(MEMORY[0x1E695F058] + 16);
    v44 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UITrackingElementWindowController *)self setCurrentTransition:v119];
  if (v117)
  {
    v117[2]();
  }

  if ([v30 isEqual:v118])
  {
    v45 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v119 setAnimationStyle:v45];
  }

  if ([v118 accessoryViewWillAppear] && (objc_msgSend(v118, "inputViewWillAppear") & 1) == 0)
  {
    v46 = [v30 isEqual:v118] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  if ([v30 accessoryViewWillAppear] && (objc_msgSend(v30, "inputViewWillAppear") & 1) == 0)
  {
    v47 = [v118 accessoryViewWillAppear] ^ 1;
  }

  else
  {
    v47 = 0;
  }

  if ((v46 | v47))
  {
    v112 = 1;
  }

  else
  {
    v48 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v112 = [v48 handlingRemoteEvent];
  }

  if ([v30 showsInputOrAssistantViews] && !objc_msgSend(v30, "isInteractive") || (objc_msgSend(v118, "showsInputOrAssistantViews") & 1) != 0)
  {
    LOBYTE(v113) = 0;
  }

  else
  {
    v113 = [v30 isEqual:v118] ^ 1;
  }

  v49 = [(UITrackingElementWindowController *)self initialNotificationInfo];
  [v119 setNotificationInfo:v49];

  v50 = [v119 notificationInfo];
  v51 = [v119 animationStyle];
  [v50 populateWithAnimationStyle:v51];

  [v119 setNotifications:{objc_msgSend(v114, "notificationsForTransitionToPlacement:", v118)}];
  if ([v119 notifications])
  {
    if ([v119 notifications] != 1)
    {
      v52 = [v119 notificationInfo];
      [v52 setForceNotification:1];
    }
  }

  else
  {
    v53 = [v119 notificationInfo];
    v54 = [v53 forceNotification];
    if (v54 & 1 | ((v113 & 1) == 0))
    {

      if (!v54)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v55 = [(UITrackingElementWindowController *)self postRotationPlacement];
      v56 = v55 == 0;

      if (!v56)
      {
        goto LABEL_68;
      }
    }

    if ([v118 showsInputViews])
    {
      v57 = 2;
    }

    else if ([v118 inputViewWillAppear])
    {
      v57 = 1;
    }

    else
    {
      v57 = 3;
    }

    [v119 setNotifications:v57];
  }

LABEL_68:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v165 = "";
  v166 = 0u;
  v167 = 0u;
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke;
  v156[3] = &unk_1E7102D60;
  v58 = v119;
  v160 = v38;
  v161 = v40;
  v162 = v42;
  v163 = v44;
  v159 = buf;
  v157 = v58;
  v158 = self;
  [(UITrackingElementWindowController *)self performWithSafeTransitionFrames:v156];
  [v58 didAdvanceAnimationToState:1];
  [(UITrackingElementWindowController *)self updateAppearStatesForPlacement:v118 start:1 animated:1];
  if (([v30 isEqual:self->_placement] & 1) == 0)
  {
    v59 = [(UIViewController *)self view];
    [v59 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = [(UIViewController *)self view];
    v69 = [v68 window];
    [v69 bounds];
    v170.origin.x = v70;
    v170.origin.y = v71;
    v170.size.width = v72;
    v170.size.height = v73;
    v169.origin.x = v61;
    v169.origin.y = v63;
    v169.size.width = v65;
    v169.size.height = v67;
    if (CGRectEqualToRect(v169, v170))
    {
    }

    else
    {
      v74 = [v30 requiresWindowBasedSafeAreaInsets];
      v75 = [v118 requiresWindowBasedSafeAreaInsets];

      if (v74 != v75)
      {
        [(UIViewController *)self _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      }
    }
  }

  v76 = [v58 animationStyle];
  v77 = [v76 controllerForStartPlacement:v30 endPlacement:v118];
  [v58 setAnimationController:v77];

  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2;
  v151[3] = &unk_1E7106908;
  v151[4] = self;
  v78 = v30;
  v152 = v78;
  v79 = v118;
  v153 = v79;
  v80 = v58;
  v154 = v80;
  v155 = buf;
  [(UITrackingElementWindowController *)self performWithSafeTransitionFrames:v151];
  if (([v78 showsInputOrAssistantViews] & 1) == 0 && !objc_msgSend(v78, "isInteractive"))
  {
    goto LABEL_78;
  }

  v81 = [v80 animationStyle];
  if ([v81 animationType])
  {

LABEL_78:
    v146[0] = MEMORY[0x1E69E9820];
    v146[1] = 3221225472;
    v146[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3;
    v146[3] = &unk_1E70F6B40;
    v147 = v80;
    v148 = self;
    v149 = v78;
    v150 = v79;
    [(UITrackingElementWindowController *)self ignoreLayoutNotifications:v146];

    v83 = v147;
    goto LABEL_79;
  }

  v82 = [v116 animationType] == 0;

  if (!v82)
  {
    goto LABEL_78;
  }

  v83 = [v80 animationStyle];
  if (![v83 animationType])
  {
    v110 = [v78 isInteractive];

    if (v110)
    {
      goto LABEL_80;
    }

    v143[0] = MEMORY[0x1E69E9820];
    v143[1] = 3221225472;
    v143[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_4;
    v143[3] = &unk_1E70F35B8;
    v144 = v80;
    v145 = v79;
    [(UITrackingElementWindowController *)self ignoreLayoutNotifications:v143];

    v83 = v144;
  }

LABEL_79:

LABEL_80:
  v84 = [v80 animationStyle];
  if ([v84 animated])
  {
    v85 = +[UIViewPropertyAnimator _trackedAnimationsStartPaused];

    if (v85)
    {
      [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:0];
    }
  }

  else
  {
  }

  if ((([v79 isFloatingAssistantView] & 1) != 0 || objc_msgSend(v79, "isCompactAssistantView")) && (objc_msgSend(v78, "isEqual:", v79) & 1) == 0)
  {
    v86 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v87 = [v86 visualModeManager];
    v111 = [v87 shouldShowWithinAppWindow];
  }

  else
  {
    v111 = 0;
  }

  if (([v78 isFloatingAssistantView] & 1) != 0 || objc_msgSend(v79, "isFloatingAssistantView"))
  {
    v88 = [v78 isCompactAssistantView];
    v89 = v88 ^ [v79 isCompactAssistantView];
  }

  else
  {
    v89 = 0;
  }

  v90 = [(UITrackingElementWindowController *)self visualStateFromPlacement:v78];
  v91 = [(UITrackingElementWindowController *)self visualStateFromPlacement:v79];
  v92 = [(UITrackingElementWindowController *)self animationTypeForCurrentTransition];
  if (([v78 isInteractive] & 1) == 0 && (objc_msgSend(v79, "isInteractive") & 1) == 0)
  {
    v93 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
    [v93 prepareForTransitionToState:v91 animationType:v92 interactiveTransition:0];
  }

  [(UITrackingElementWindowController *)self setPlacementBeforeAnimation:v78];
  [(UITrackingElementWindowController *)self setPlacementDuringAnimation:v79];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_5;
  aBlock[3] = &unk_1E7120278;
  aBlock[4] = self;
  v94 = v80;
  v134 = v94;
  v95 = v78;
  v135 = v95;
  v96 = v79;
  v136 = v96;
  v137 = v90;
  v138 = v91;
  v139 = v92;
  v140 = v111;
  v141 = v112;
  v142 = v113;
  v97 = _Block_copy(aBlock);
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_340;
  v129[3] = &unk_1E70F5B18;
  v129[4] = self;
  v98 = v94;
  v130 = v98;
  v132 = v89;
  v99 = v96;
  v131 = v99;
  v100 = _Block_copy(v129);
  v101 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v102 = [v101 _transitionStartTime];

  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_341;
  v121[3] = &unk_1E71202A0;
  v121[4] = self;
  v103 = v98;
  v122 = v103;
  v123 = v99;
  v104 = v102;
  v124 = v104;
  v10 = v95;
  v125 = v10;
  v127 = v91;
  v128 = v92;
  v126 = v115;
  v105 = _Block_copy(v121);
  v106 = [v103 animationStyle];
  [v106 launchAnimation:v97 afterStarted:v100 completion:v105 forHost:self fromCurrentPosition:0];

  kdebug_trace();
  v107 = kac_get_log();
  v108 = os_signpost_id_make_with_pointer(v107, self);
  if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v109 = v108;
    if (os_signpost_enabled(v107))
    {
      *v120 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v107, OS_SIGNPOST_INTERVAL_END, v109, "animationPreparing", "", v120, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_100:
}

uint64_t __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animationStyle];
  if ([v2 animated])
  {
  }

  else
  {
    IsEmpty = CGRectIsEmpty(*(a1 + 56));

    if (!IsEmpty)
    {
      v11 = *(*(a1 + 48) + 8);
      v12 = *(a1 + 72);
      *(v11 + 32) = *(a1 + 56);
      *(v11 + 48) = v12;
      goto LABEL_6;
    }
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 trackingElementCoordinator];

  [v5 lastKnownKeyboardFrame];
  v6 = *(*(a1 + 48) + 8);
  v6[4] = v7;
  v6[5] = v8;
  v6[6] = v9;
  v6[7] = v10;

LABEL_6:
  result = [*(a1 + 40) convertRectFromContainerCoordinateSpaceToScreenSpace:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  v14 = *(*(a1 + 48) + 8);
  v14[4] = v15;
  v14[5] = v16;
  v14[6] = v17;
  v14[7] = v18;
  return result;
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
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
  if (([*(a1 + 40) showsInputOrAssistantViews] & 1) == 0 && (objc_msgSend(*(a1 + 40), "accessoryViewWillAppear") & 1) == 0 && objc_msgSend(*(a1 + 48), "accessoryViewWillAppear"))
  {
    v14 = v14 + v18;
  }

  v19 = [*(a1 + 56) notificationInfo];
  [v19 populateStartInfoWithFrame:{v12, v14, v16, v18}];

  v20 = [*(a1 + 56) notificationInfo];
  v22 = *(*(*(a1 + 64) + 8) + 32);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  [v20 setForceNotification:{objc_msgSend(v20, "forceNotification") | !CGRectEqualToRect(v22, v23)}];
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) animationController];
  v2 = [v3 prepareAnimationWithHost:*(a1 + 40) startPlacement:*(a1 + 48) endPlacement:*(a1 + 56)];
  [*(a1 + 32) setAnimationContext:v2];
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_5(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = kac_get_log();
  v3 = os_signpost_id_make_with_pointer(v2, (*(a1 + 40) ^ *(a1 + 32)));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v4, "animationAnimating", "", buf, 2u);
    }
  }

  if ([*(a1 + 40) didAdvanceAnimationToState:2])
  {
    v5 = [*(*(a1 + 32) + 1664) itemForPurpose:2];
    [v5 prepareTranslationFromPlacement:*(a1 + 48) to:*(a1 + 56)];

    [*(a1 + 32) _updatePlacementWithPlacement:*(a1 + 56)];
    if (([*(a1 + 48) isInteractive] & 1) != 0 || !objc_msgSend(*(a1 + 48), "showsKeyboard"))
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [*(a1 + 56) showsKeyboard] ^ 1;
    }

    v10 = [*(a1 + 40) animationController];
    if (v10 && (v11 = v10, [*(a1 + 40) animationContext], v12 = objc_claimAutoreleasedReturnValue(), v13 = (v12 != 0) | v6, v12, v11, (v13 & 1) != 0))
    {
      v14 = [*(a1 + 40) animationController];
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) animationContext];
      [v14 performAnimationWithHost:v15 context:v16];
    }

    else
    {
      [*(a1 + 32) updateVisibilityConstraintsForPlacement:*(a1 + 56)];
    }

    *(*(a1 + 32) + 1624) = 1;
    v17 = [*(*(a1 + 32) + 1664) itemForPurpose:2];
    [v17 willBeginTranslationFromPlacement:*(a1 + 48) to:*(a1 + 56)];

    if (([*(a1 + 48) isInteractive] & 1) == 0 && (objc_msgSend(*(a1 + 56), "isInteractive") & 1) == 0)
    {
      v18 = [*(*(a1 + 32) + 1664) itemForPurpose:0];
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v21 = *(a1 + 80);
      v22 = [*(a1 + 32) currentTransition];
      v23 = [v22 animationStyle];
      [v23 duration];
      [v18 animatingTransitionFromState:v19 toState:v20 animationType:v21 totalDuration:?];
    }

    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_335;
    v76[3] = &unk_1E70F6B40;
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);
    v27 = *(a1 + 40);
    *&v28 = v26;
    *(&v28 + 1) = v27;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v77 = v29;
    v78 = v28;
    [v24 performWithSafeTransitionFrames:v76];
    if ([objc_opt_class() useMetronomeTracking] && ((*(a1 + 88) & 1) != 0 || (*(a1 + 89) & 1) != 0 || *(a1 + 90) == 1))
    {
      v30 = [*(a1 + 32) postRotationPlacement];

      if (!v30)
      {
        v31 = [*(a1 + 56) keyboardState];
        v32 = [*(*(a1 + 32) + 1664) itemForPurpose:0];
        [v32 trackingCoordinatorFrame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v41 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v42 = [v41 keyboardTrackingProvider];

        v43 = [v42 keyboardScene];
        v44 = [v43 _coordinateSpace];
        v45 = [*(a1 + 32) _window];
        v46 = [v45 coordinateSpace];
        [v44 convertRect:v46 fromCoordinateSpace:{v34, v36, v38, v40}];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = *(a1 + 32);
        v56 = [*(a1 + 40) animationStyle];
        v57 = [v55 infoForAnimationStyle:v56];

        if ([*(a1 + 48) isInteractive])
        {
          [v57 setIsInteractive:1];
        }

        v58 = [*(a1 + 40) notificationInfo];
        v59 = [v58 userInfo];
        [v57 setNotificationInfo:v59];

        v60 = _UITrackingElementWindowControllerLogger();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v82.origin.x = v48;
          v82.origin.y = v50;
          v82.size.width = v52;
          v82.size.height = v54;
          v71 = NSStringFromCGRect(v82);
          *buf = 138412290;
          v80 = v71;
          _os_log_debug_impl(&dword_188A29000, v60, OS_LOG_TYPE_DEBUG, "Tracking provider: moveFromPlacement:toPlacement: update to %@", buf, 0xCu);
        }

        [v42 keyboardWillChangeState:v31 endFrame:v57 animationInfo:{v48, v50, v52, v54}];
      }
    }

    v61 = [*(a1 + 32) postRotationPlacement];

    if (v61)
    {
      v62 = *(a1 + 32);
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_339;
      v72[3] = &unk_1E70F6228;
      v73 = *(a1 + 56);
      v63 = *(a1 + 40);
      v64 = *(a1 + 32);
      v74 = v63;
      v75 = v64;
      [v62 performWithSafeTransitionFrames:v72];
    }

    v65 = *(a1 + 32);
    v66 = [*(a1 + 40) notifications];
    v67 = [*(a1 + 40) notificationInfo];
    [v65 postStartNotifications:v66 withInfo:v67];

    kdebug_trace();
    v68 = kac_get_log();
    v69 = os_signpost_id_make_with_pointer(v68, (*(a1 + 40) ^ *(a1 + 32)));
    if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v70 = v69;
      if (os_signpost_enabled(v68))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v68, OS_SIGNPOST_INTERVAL_END, v70, "animationAnimating", "", buf, 2u);
      }
    }
  }

  else
  {
    kdebug_trace();
    v7 = kac_get_log();
    v8 = os_signpost_id_make_with_pointer(v7, (*(a1 + 40) ^ *(a1 + 32)));
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v7, OS_SIGNPOST_INTERVAL_END, v9, "animationAnimating", "", buf, 2u);
      }
    }
  }
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_335(id *a1)
{
  v2 = [*(a1[4] + 208) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [a1[4] convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([a1[5] accessoryViewWillAppear] && (objc_msgSend(a1[6], "accessoryViewWillAppear") & 1) == 0 && !objc_msgSend(a1[6], "showsInputOrAssistantViews"))
  {
    v14 = v14 + v18;
  }

  [a1[7] setLastKnownKeyboardFrame:{v12, v14, v16, v18}];
  v19 = [a1[7] notificationInfo];
  [v19 populateEndInfoWithFrame:{v12, v14, v16, v18}];

  v25 = [a1[7] notificationInfo];
  v20 = MEMORY[0x1E696AEC0];
  v21 = [a1[7] fromPlacement];
  v22 = objc_opt_class();
  v23 = [a1[7] toPlacement];
  v24 = [v20 stringWithFormat:@"TEWC moveFromPlacement: %@ toPlacement: %@", v22, objc_opt_class()];
  [v25 addKeyboardNotificationDebuggingInfo:v24];
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_339(uint64_t a1)
{
  if (([*(a1 + 32) showsInputOrAssistantViews] & 1) == 0)
  {
    v2 = [*(a1 + 40) notificationInfo];
    [v2 endFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [*(a1 + 40) notificationInfo];
    [v11 populateEndInfoWithFrame:{v4, v6 + v10, v8, v10}];
  }

  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) animationStyle];
  v20 = [v12 infoForAnimationStyle:v13];

  [v20 setIsInteractive:0];
  [v20 setIsRotating:1];
  [v20 setIsLocalKeyboard:1];
  [v20 setDuration:0.0];
  v14 = [*(a1 + 40) notifications];
  v15 = [*(a1 + 40) notificationInfo];
  [v15 setType:v14];

  v16 = [*(a1 + 40) notificationInfo];
  v17 = [v16 userInfo];
  [v20 setNotificationInfo:v17];

  v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v19 = [v18 trackingElementCoordinator];

  if (objc_opt_respondsToSelector())
  {
    [v19 updateNotificationsOnly:v20];
  }
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_340(uint64_t a1)
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
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) animationStyle];
    [v6 prepareForInputAssistant:v5 animated:{objc_msgSend(v7, "animated")}];

    [*(*(a1 + 32) + 1664) initializeTranslateGestureRecognizerIfNecessary];
  }

  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (*(a1 + 40) ^ *(a1 + 32)));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v8, OS_SIGNPOST_INTERVAL_END, v10, "animationStarted", "", v11, 2u);
    }
  }
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_341(uint64_t a1, _BOOL4 a2)
{
  v52 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v4 = kac_get_log();
  v5 = os_signpost_id_make_with_pointer(v4, (*(a1 + 40) ^ *(a1 + 32)));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 67109376;
      v49 = a2;
      v50 = 1024;
      v51 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "animationDone", " finished=%{signpost.description:attribute}d started=%{signpost.description}d", buf, 0xEu);
    }
  }

  [*(a1 + 32) setPlacementDuringAnimation:*(a1 + 48)];
  v7 = [*(a1 + 32) currentTransition];
  v8 = *(a1 + 40);

  if (v7 == v8)
  {
    [*(a1 + 32) setCurrentTransition:0];
  }

  if ([*(a1 + 40) didAdvanceAnimationToState:4])
  {
    [*(a1 + 32) _collectTransitionTimeStatistics:objc_msgSend(*(a1 + 40) withStart:{"notifications"), *(a1 + 56)}];
    v9 = 1;
  }

  else
  {
    v9 = [*(a1 + 40) didAdvanceAnimationToState:3];
  }

  if (v7 == v8)
  {
    [*(a1 + 32) updateAppearStatesForPlacement:*(a1 + 48) start:0 animated:1];
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [*(a1 + 32) view];
    v12 = [v11 _window];
    [v10 completeMoveKeyboardForWindow:v12];

    if (+[UIKeyboard usesInputSystemUI])
    {
      v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v14 = [v13 remoteInputViewHost];

      [v14 updateInputViewsIfNecessary];
    }

    *(*(a1 + 32) + 1624) = 0;
    v15 = [*(*(a1 + 32) + 1664) itemForPurpose:2];
    [v15 didFinishTranslationFromPlacement:*(a1 + 64) to:*(a1 + 48)];

    if (([*(a1 + 64) isInteractive] & 1) == 0 && (objc_msgSend(*(a1 + 48), "isInteractive") & 1) == 0)
    {
      v16 = [*(*(a1 + 32) + 1664) itemForPurpose:0];
      [v16 finishedTransitionToState:*(a1 + 80) animationType:*(a1 + 88) interactiveTransition:0];
    }

    v17 = *(a1 + 72);
    if (v17)
    {
      (*(v17 + 16))();
    }

    [*(a1 + 32) flushPendingActivities];
  }

  if (v9)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_342;
    v43[3] = &unk_1E70F6B40;
    v18 = *(a1 + 32);
    v44 = *(a1 + 40);
    v45 = *(a1 + 64);
    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    v46 = v19;
    v47 = v20;
    [v18 performWithSafeTransitionFrames:v43];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2_358;
  aBlock[3] = &unk_1E70F35B8;
  v21 = *(a1 + 40);
  v22 = *(a1 + 32);
  v41 = v21;
  v42 = v22;
  v23 = _Block_copy(aBlock);
  v24 = v23;
  if (*(*(a1 + 32) + 1992) == 1)
  {
    v25 = _Block_copy(v23);
    v26 = *(a1 + 32);
    v27 = *(v26 + 2000);
    *(v26 + 2000) = v25;

    v28 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3_359;
    block[3] = &unk_1E70F3590;
    block[4] = *(a1 + 32);
    dispatch_after(v28, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v23[2](v23);
  }

  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && [*(a1 + 48) showsInputViews])
  {
    v29 = +[UIKeyboardImpl activeInstance];
    v30 = [v29 remoteTextInputPartner];
    [v30 forwardKeyboardOperation:sel_clearKeyboardSnapshot object:0];
  }

  if (([*(a1 + 32) shouldNotifyRemoteKeyboards] & 1) == 0)
  {
    v31 = [*(a1 + 40) animationStyle];
    if (![v31 animated])
    {
LABEL_30:

      goto LABEL_31;
    }

    v32 = [*(a1 + 40) animationStyle];
    [v32 duration];
    v34 = v33;

    if (v34 > 0.0)
    {
      v31 = +[UIPeripheralHost sharedInstance];
      [v31 flushDelayedTasks];
      goto LABEL_30;
    }
  }

LABEL_31:
  v35 = +[UIKeyboardImpl sharedInstance];
  [v35 flushDelayedTasks];

  kdebug_trace();
  v36 = kac_get_log();
  v37 = os_signpost_id_make_with_pointer(v36, (*(a1 + 40) ^ *(a1 + 32)));
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v38 = v37;
    if (os_signpost_enabled(v36))
    {
      *buf = 67109376;
      v49 = v7 == v8;
      v50 = 1024;
      v51 = v9;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v36, OS_SIGNPOST_INTERVAL_END, v38, "animationDone", " finished=%{signpost.description:attribute}d started=%{signpost.description}d", buf, 0xEu);
    }
  }
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_342(id *a1)
{
  v2 = [a1[4] notificationInfo];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"TEWC moveFromPlacement: %@ toPlacement: %@ [didStart]", v4, objc_opt_class()];
  [v2 addKeyboardNotificationDebuggingInfo:v5];

  v6 = a1[7];
  v7 = [a1[4] notifications];
  v8 = [a1[4] notificationInfo];
  [v6 postEndNotifications:v7 withInfo:v8];

  if (([a1[6] isUndocked] & 1) != 0 || objc_msgSend(a1[6], "showsInputOrAssistantViews"))
  {
    v49 = +[UIInputViewSetNotificationInfo info];
    v9 = [*(a1[7] + 208) itemForPurpose:1];
    [v9 notificationsFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [a1[7] convertRectFromContainerCoordinateSpaceToScreenSpace:{v11, v13, v15, v17}];
    [v49 populateEndInfoWithFrame:?];
    [v49 endFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [a1[4] notificationInfo];
    [v26 endFrame];
    v52.origin.x = v27;
    v52.origin.y = v28;
    v52.size.width = v29;
    v52.size.height = v30;
    v51.origin.x = v19;
    v51.origin.y = v21;
    v51.size.width = v23;
    v51.size.height = v25;
    v31 = CGRectEqualToRect(v51, v52);

    if (!v31)
    {
      v32 = MEMORY[0x1E696AEC0];
      if ([a1[6] isUndocked])
      {
        v33 = @"isUndocked ";
      }

      else
      {
        v33 = &stru_1EFB14550;
      }

      v34 = [a1[6] showsInputViews];
      v35 = @"showsInputViews ";
      if (!v34)
      {
        v35 = &stru_1EFB14550;
      }

      v36 = [v32 stringWithFormat:@"%@%@", v33, v35];
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_opt_class();
      v39 = [v37 stringWithFormat:@"TEWC moveFromPlacement: %@ toPlacement: %@ [%@]", v38, objc_opt_class(), v36];
      [v49 addKeyboardNotificationDebuggingInfo:v39];

      v40 = [a1[4] notificationInfo];
      [v40 endFrame];
      [v49 populateStartInfoWithFrame:?];

      if ([objc_opt_class() useMetronomeTracking] && ((objc_msgSend(a1[6], "isFloatingAssistantView") & 1) != 0 || objc_msgSend(a1[6], "accessoryViewWillAppear") && (objc_msgSend(a1[6], "showsKeyboard") & 1) == 0))
      {
        v41 = a1[7];
        v42 = [a1[4] animationStyle];
        v43 = [v41 infoForAnimationStyle:v42];

        [v43 setIsInteractive:0];
        v44 = [a1[7] postRotationPlacement];
        [v43 setIsRotating:v44 != 0];

        [v43 setIsLocalKeyboard:1];
        [v43 setDuration:0.0];
        v45 = [a1[4] notificationInfo];
        [v45 setType:1];

        v46 = [v49 userInfo];
        [v43 setNotificationInfo:v46];

        v47 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v48 = [v47 trackingElementCoordinator];

        if (objc_opt_respondsToSelector())
        {
          [v48 updateNotificationsOnly:v43];
        }
      }

      [a1[7] postStartNotifications:1 withInfo:v49];
      [a1[7] postEndNotifications:1 withInfo:v49];
    }
  }
}

uint64_t __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_2_358(uint64_t a1)
{
  v2 = [*(a1 + 32) animationController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) animationContext];
  [v2 completeAnimationWithHost:v3 context:v4];

  [*(a1 + 32) setAnimationContext:0];
  v5 = *(a1 + 40);

  return [v5 setPlacementDuringAnimation:0];
}

void __87__UITrackingElementWindowController_moveFromPlacement_toPlacement_starting_completion___block_invoke_3_359(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 2000);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 2000);
    *(v3 + 2000) = 0;
  }
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
  aBlock[2] = __92__UITrackingElementWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke;
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
    v10[2] = __92__UITrackingElementWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke_2;
    v10[3] = &unk_1E70F0F78;
    v11 = v8;
    [(UITrackingElementWindowController *)self performWithoutCallbacksOrNotifications:v10];
  }
}

void __92__UITrackingElementWindowController_updateToPlacement_withNormalAnimationsAndNotifications___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateVisibilityConstraintsForPlacement:*(a1 + 40)];
  v2 = [*(a1 + 32) inputViewSet];
  if ([v2 isInputAccessoryViewPlaceholder])
  {
    goto LABEL_4;
  }

  v3 = [*(a1 + 32) inputViewSet];
  v4 = [v3 inputAccessoryView];

  if (v4)
  {
    [v4 frame];
    v2 = v4;
LABEL_4:
  }

  *(*(a1 + 32) + 1650) = 1;
  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];

  *(*(a1 + 32) + 1650) = 0;
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
    v11[2] = __57__UITrackingElementWindowController_setInputViewsHidden___block_invoke;
    v11[3] = &unk_1E70F35E0;
    v11[4] = self;
    v12 = v3;
    [UIView performWithoutAnimation:v11];
  }
}

_DWORD *__57__UITrackingElementWindowController_setInputViewsHidden___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1628);
  v4 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3 - 1;
  }

  *(v2 + 1628) = v5;
  result = *(a1 + 32);
  v7 = result[407];
  if (v7 == 1 && v4 != 0)
  {
    v9 = [result view];
    [v9 setOffsetOrigin:{0.0, 4000.0}];

    result = *(a1 + 32);
    v7 = result[407];
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
    if ((result[407] & 0x80000000) != 0)
    {
LABEL_11:
      result[407] = 0;
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

- (void)updateTrackingCoordinatorForRotationOrientation:(int64_t)a3
{
  v6 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v10 = [v9 currentUIState];

    v77 = v7;
    v79 = v5;
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
      v23 = 1;
    }

    else
    {
      v23 = 4;
    }

    [UIKeyboard sizeForInterfaceOrientation:v23 includingAssistantBar:v11 ignoreInputView:0];
    v17 = v24;
    v22 = v25;
  }

  else
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v12 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      [v12 keyboardPosition];
      v6 = v13;
      v15 = v14;
      v17 = v16;
      v8 = v18;

      v19 = v8;
      v20 = v17;
      v77 = v17;
      v79 = v15;
      v21 = v6;
      v22 = v8;
      goto LABEL_13;
    }

    v77 = v7;
    v79 = v5;
    [UIKeyboard sizeForInterfaceOrientation:a3 ignoreInputView:0];
    v17 = v26;
    v22 = v27;
  }

  v19 = 0.0;
  v20 = 0.0;
  v15 = 0.0;
  v21 = 0.0;
LABEL_13:
  if (![objc_opt_class() useMetronomeTracking])
  {
    return;
  }

  v28 = [(UITrackingElementWindowController *)self postRotationPlacement];
  v76 = v6;
  if (v28)
  {
    v29 = v28;
    v30 = [(UITrackingElementWindowController *)self postRotationPlacement];
    v31 = [v30 showsInputOrAssistantViews];

    if ((v31 & 1) == 0)
    {
      v22 = 0.0;
    }
  }

  v81 = [(UIViewController *)self _window];
  v32 = [v81 screen];
  [v32 bounds];
  v74 = v33;
  v35 = v34;

  if (![v81 interfaceOrientation])
  {
    goto LABEL_24;
  }

  v36 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v37 = [v36 keyboardWindow];
  if (![v37 interfaceOrientation])
  {

LABEL_24:
    v42 = v81;
    goto LABEL_25;
  }

  v38 = ([v81 interfaceOrientation] - 3) < 2;
  v39 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v40 = [v39 keyboardWindow];
  v41 = v38 ^ (([v40 interfaceOrientation] - 3) < 2);

  v42 = v81;
  if (v41)
  {
    v35 = v74;
  }

LABEL_25:
  v43 = v19 == v22;
  v44 = v35 - v22;
  if (v19 == v22)
  {
    v45 = v8;
  }

  else
  {
    v45 = v22;
  }

  v75 = v45;
  v46 = v79;
  if (v19 == v22)
  {
    v47 = v77;
  }

  else
  {
    v47 = v17;
  }

  if (v19 != v22)
  {
    v46 = v35 - v22;
  }

  v78 = v47;
  v80 = v46;
  if (v19 == v22)
  {
    v48 = v76;
  }

  else
  {
    v48 = 0.0;
  }

  if (v19 == v22)
  {
    v49 = v19;
  }

  else
  {
    v49 = v22;
  }

  if (v19 == v22)
  {
    v50 = v20;
  }

  else
  {
    v50 = v17;
  }

  if (v43)
  {
    v51 = v15;
  }

  else
  {
    v51 = v44;
  }

  if (v43)
  {
    v52 = v21;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = [v42 screen];
  v54 = [v53 coordinateSpace];
  v55 = [v81 windowScene];
  v56 = [v55 _coordinateSpace];
  [v54 convertRect:v56 toCoordinateSpace:{v52, v51, v50, v49}];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v65 = [getTUIKeyboardAnimationInfoClass_0() defaultInfo];
  [v65 setIsRotating:1];
  [v65 setIsLocalKeyboard:1];
  [v65 setDuration:0.0];
  v66 = 1872;
  v67 = [(UIInputViewSetNotificationInfo *)self->_rotationInfo userInfo];

  if (v67)
  {
    [(UIInputViewSetNotificationInfo *)self->_rotationInfo populateEndInfoWithFrame:v48, v80, v78, v75];
    v68 = [(UIInputViewSetNotificationInfo *)self->_rotationInfo userInfo];
    [v65 setNotificationInfo:v68];
  }

  v69 = [(UITrackingElementWindowController *)self postRotationPlacement];
  v70 = [v69 showsInputOrAssistantViews];
  if (v70 & 1) != 0 || (-[UITrackingElementWindowController placement](self, "placement"), v66 = objc_claimAutoreleasedReturnValue(), ([v66 showsInputOrAssistantViews]))
  {
    v71 = [getTUIKeyboardStateClass_1() onscreenState];
    if (v70)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v71 = [getTUIKeyboardStateClass_1() offscreenState];
  }

LABEL_56:
  [v71 setIsRotating:1];
  v72 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v73 = [v72 trackingElementCoordinator];
  [v73 updateClientsForState:v71 finalFrame:v65 animationInfo:1 forStart:{v58, v60, v62, v64}];
}

- (void)updateKeyboardLayoutGuideForRotationOrientation:(int64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() useMetronomeTracking])
  {
    return;
  }

  v31 = [(UITrackingElementWindowController *)self placementIgnoringRotation];
  if ([v31 isFloating])
  {

    return;
  }

  v5 = [(UITrackingElementWindowController *)self placement];
  v6 = [v5 isFloatingAssistantView];

  if (v6)
  {
    return;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v7 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v8 = [v7 currentUIState];

    if ([v8 assistantBarVisible])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 requiresHeightForIntegratedAssistantBar];
    }

    if ((a3 - 3) >= 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }

    [UIKeyboard sizeForInterfaceOrientation:v12 includingAssistantBar:v9 ignoreInputView:0];
    v14 = v13;
    v16 = v15;

    goto LABEL_22;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [UIKeyboard sizeForInterfaceOrientation:a3 ignoreInputView:0];
    v14 = v17;
    v16 = v18;
LABEL_22:
    [(UITrackingElementWindowController *)self updateTrackingElementsWithSize:v14, v16];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__UITrackingElementWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke;
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
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __85__UITrackingElementWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke_2;
      v36[3] = &unk_1E7116408;
      v37 = v19;
      [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v36];
      v26 = v37;
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v24 = [(UIViewController *)self _window];
      v25 = [v24 windowScene];
      v26 = [v25 windows];

      v27 = [v26 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v33;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(v26);
            }

            (*(v19 + 2))(v19, *(*(&v32 + 1) + 8 * i));
          }

          v28 = [v26 countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v28);
      }
    }

    return;
  }

  v10 = [(UITrackingElementWindowController *)self inputViewSet];
  v11 = [v10 isInputViewPlaceholder];

  if (v11)
  {

    [(UITrackingElementWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
  }
}

void __85__UITrackingElementWindowController_updateKeyboardLayoutGuideForRotationOrientation___block_invoke(uint64_t a1, void *a2)
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
  v2 = [(UITrackingElementWindowController *)self inputViewSet];
  v3 = [v2 isSplit];

  return v3 ^ 1;
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (+[_UIRemoteKeyboards enabled]&& !self->_rotationState)
  {
    self->_rotationState = 1;
    v6 = [(UIInputWindowController *)self shouldNotifyRemoteKeyboards];
    if (v6)
    {
      v7 = +[UIInputViewSetNotificationInfo info];
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&self->_rotationInfo, v7);
    if (v6)
    {
    }

    if (self->_rotationInfo)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke;
      v80[3] = &unk_1E70F3590;
      v80[4] = self;
      [(UITrackingElementWindowController *)self performWithSafeTransitionFrames:v80];
      [(UIInputViewSetNotificationInfo *)self->_rotationInfo addKeyboardNotificationDebuggingInfo:@"TEWC willRotateToInterfaceOrientation: update _rotationInfo"];
      v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      -[UIInputViewSetNotificationInfo setWasCausedRemotely:](self->_rotationInfo, "setWasCausedRemotely:", [v8 keyboardActive] ^ 1);
    }

    preRotationSnapshot = self->_preRotationSnapshot;
    if (preRotationSnapshot)
    {
      [(UIView *)preRotationSnapshot removeFromSuperview];
      v10 = self->_preRotationSnapshot;
      self->_preRotationSnapshot = 0;
    }

    v11 = +[UIKeyboardImpl isFloating];
    hosting = self->_hosting;
    if (v11)
    {
      v13 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:2];
      v14 = [v13 splitKeyboardController];
      [v14 cancelGestureRecognizers];
    }

    else
    {
      v15 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:1];
      v16 = [v15 hostView];
      [v16 bounds];
      v18 = v17;
      v20 = v19;

      if (v18 > 0.0 && v20 > 0.0)
      {
        v21 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
        v22 = [v21 hostView];
        v23 = [v22 snapshotViewAfterScreenUpdates:0];
        v24 = self->_preRotationSnapshot;
        self->_preRotationSnapshot = v23;

        [(UIView *)self->_preRotationSnapshot setTranslatesAutoresizingMaskIntoConstraints:0];
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_2;
        v79[3] = &unk_1E70F3590;
        v79[4] = self;
        [UIView performWithoutAnimation:v79];
        v25 = [(UITrackingElementWindowController *)self inputViewSet];
        LODWORD(v22) = [v25 isSplit];

        if (v22)
        {
          [(UIView *)self->_preRotationSnapshot bounds];
          if (v26 <= 0.0)
          {
            v35 = 0.2;
            v34 = 0.4;
          }

          else
          {
            v27 = v26;
            v28 = [(UITrackingElementWindowController *)self inputViewSet];
            [v28 _rightInputViewSetFrame];
            v30 = v29;

            v31 = [(UITrackingElementWindowController *)self inputViewSet];
            [v31 _leftInputViewSetFrame];
            v33 = v32;

            v34 = v33 / v27;
            v35 = (v27 - v33 - v30) / v27;
          }

          v36 = [(UIView *)self->_preRotationSnapshot layer];
          [v36 setContentsCenter:{v34, 0.0, v35, 1.0}];
        }
      }

      v37 = [(UITrackingElementWindowController *)self currentTransition];
      if (v37)
      {
        v38 = v37;
        v39 = [(UITrackingElementWindowController *)self transientInputViewSet];

        if (v39)
        {
          v40 = [(UITrackingElementWindowController *)self transientInputViewSet];
          [(UITrackingElementWindowController *)self changeToInputViewSet:v40];
        }
      }

      v41 = [(UITrackingElementWindowController *)self currentTransition];
      v42 = [v41 toPlacement];
      if (v42)
      {
        [(UITrackingElementWindowController *)self setPostRotationPlacement:v42];
      }

      else
      {
        v43 = [(UITrackingElementWindowController *)self placement];
        [(UITrackingElementWindowController *)self setPostRotationPlacement:v43];
      }

      [(UITrackingElementWindowController *)self setPostRotationPendingBlock:0];
      v44 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [(UITrackingElementWindowController *)self pushAnimationStyle:v44];

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_3;
      v78[3] = &unk_1E70F32F0;
      v78[4] = self;
      v78[5] = a3;
      [(UITrackingElementWindowController *)self performWithoutAppearanceCallbacks:v78];
      if (self->_preRotationSnapshot)
      {
        v45 = [(UIViewController *)self view];
        [v45 addSubview:self->_preRotationSnapshot];
      }

      v46 = [(UITrackingElementWindowController *)self _inputViewPlaceholder];
      [v46 bounds];
      self->_preRotationInputViewSize.width = v47;
      self->_preRotationInputViewSize.height = v48;

      p_preRotationInputAssistantViewSize = &self->_preRotationInputAssistantViewSize;
      v50 = [(UITrackingElementWindowController *)self _inputAssistantView];
      if (v50)
      {
        v51 = [(UITrackingElementWindowController *)self _inputAssistantView];
        [v51 bounds];
        p_preRotationInputAssistantViewSize->width = v52;
        self->_preRotationInputAssistantViewSize.height = v53;
      }

      else
      {
        *p_preRotationInputAssistantViewSize = *MEMORY[0x1E695F060];
      }

      p_preRotationInputAccessoryViewSize = &self->_preRotationInputAccessoryViewSize;
      v55 = [(UITrackingElementWindowController *)self _inputAccessoryView];
      if (v55)
      {
        v56 = [(UITrackingElementWindowController *)self _inputAccessoryView];
        [v56 bounds];
        p_preRotationInputAccessoryViewSize->width = v57;
        self->_preRotationInputAccessoryViewSize.height = v58;
      }

      else
      {
        *p_preRotationInputAccessoryViewSize = *MEMORY[0x1E695F060];
      }

      v59 = [(UITrackingElementWindowController *)self _inputViewPlaceholder];
      v60 = v59;
      if (v59)
      {
        [v59 transform];
      }

      else
      {
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
      }

      *&self->_preRotationInputViewTransform.a = v75;
      *&self->_preRotationInputViewTransform.c = v76;
      *&self->_preRotationInputViewTransform.tx = v77;

      p_preRotationInputAssistantViewTransform = &self->_preRotationInputAssistantViewTransform;
      v62 = [(UITrackingElementWindowController *)self _inputAssistantView];
      if (v62)
      {
        v63 = [(UITrackingElementWindowController *)self _inputAssistantView];
        v64 = v63;
        if (v63)
        {
          [v63 transform];
        }

        else
        {
          v76 = 0u;
          v77 = 0u;
          v75 = 0u;
        }

        *&p_preRotationInputAssistantViewTransform->a = v75;
        *&self->_preRotationInputAssistantViewTransform.c = v76;
        *&self->_preRotationInputAssistantViewTransform.tx = v77;
      }

      else
      {
        *&self->_preRotationInputAssistantViewTransform.c = 0u;
        *&self->_preRotationInputAssistantViewTransform.tx = 0u;
        *&p_preRotationInputAssistantViewTransform->a = 0u;
      }

      p_preRotationInputAccessoryViewTransform = &self->_preRotationInputAccessoryViewTransform;
      v66 = [(UITrackingElementWindowController *)self _inputAccessoryView];
      if (v66)
      {
        v67 = [(UITrackingElementWindowController *)self _inputAccessoryView];
        v68 = v67;
        if (v67)
        {
          [v67 transform];
        }

        else
        {
          v76 = 0u;
          v77 = 0u;
          v75 = 0u;
        }

        *&p_preRotationInputAccessoryViewTransform->a = v75;
        *&self->_preRotationInputAccessoryViewTransform.c = v76;
        *&self->_preRotationInputAccessoryViewTransform.tx = v77;
      }

      else
      {
        *&self->_preRotationInputAccessoryViewTransform.c = 0u;
        *&self->_preRotationInputAccessoryViewTransform.tx = 0u;
        *&p_preRotationInputAccessoryViewTransform->a = 0u;
      }

      v69 = [(UITrackingElementWindowController *)self _inputViewPlaceholder];
      [v69 setAlpha:0.0];

      v70 = [(UITrackingElementWindowController *)self _inputViewPlaceholder];
      v71 = [v70 layer];
      [v71 setAllowsGroupOpacity:0];

      v72 = [(UITrackingElementWindowController *)self _inputAssistantView];
      v73 = [v72 layer];
      [v73 setAllowsGroupOpacity:0];

      v74 = [(UITrackingElementWindowController *)self _inputAccessoryView];
      [v74 setAlpha:0.0];

      v13 = [(UITrackingElementWindowController *)self _inputAssistantView];
      [v13 setAlpha:0.0];
    }
  }
}

void __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1872);
  v13 = [*(v2 + 1664) itemForPurpose:1];
  [v13 notificationsFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) view];
  [UIScreen convertRect:v12 fromView:v5, v7, v9, v11];
  [v3 populateStartInfoWithFrame:?];
}

void __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
  v3 = [v2 hostView];
  [v3 bounds];
  [*(*(a1 + 32) + 1672) setBounds:?];

  v5 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
  v4 = [v5 hostView];
  [v4 center];
  [*(*(a1 + 32) + 1672) setCenter:?];
}

uint64_t __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_4;
  v3[3] = &unk_1E70F32F0;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  return [UIView performWithoutAnimation:v3];
}

void __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_4(uint64_t a1)
{
  v2 = +[UIInputViewSetNotificationInfo info];
  [v2 setDueToRotation:1];
  [v2 setShouldSendInClient:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC willRotateToInterfaceOrientation: %li", *(a1 + 40)];
  [v2 addKeyboardNotificationDebuggingInfo:v3];

  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v2 setWasCausedRemotely:{objc_msgSend(v4, "keyboardActive") ^ 1}];

  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_5;
  v6[3] = &unk_1E70F3590;
  v6[4] = v5;
  [v5 performOperations:v6 withTemplateNotificationInfo:v2];
}

void __79__UITrackingElementWindowController_willRotateToInterfaceOrientation_duration___block_invoke_5(uint64_t a1)
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
      v37[2] = __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_2;
      v37[3] = &unk_1E70F3590;
      v37[4] = self;
      [UIView conditionallyAnimate:v7 withAnimation:&__block_literal_global_375_4 layout:v37 completion:0];
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
      v36[2] = __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_3;
      v36[3] = &unk_1E70F3590;
      v36[4] = self;
      [(UITrackingElementWindowController *)self performWithoutCallbacksOrNotifications:v36];
      v11 = [(UIViewController *)self view];
      [v11 setNeedsUpdateConstraints];

      v12 = [(UITrackingElementWindowController *)self _inputViewPlaceholder];
      v13 = [(UITrackingElementWindowController *)self _inputAssistantView];
      v14 = [(UITrackingElementWindowController *)self _inputAccessoryView];
      if ([(UITrackingElementWindowController *)self _useLiveRotation])
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_5;
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
      v26[2] = __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_7;
      v26[3] = &unk_1E70F4378;
      v26[4] = self;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      v30 = a3;
      v10 = v14;
      v9 = v13;
      v8 = v12;
      [UIView conditionallyAnimate:v22 withAnimation:&__block_literal_global_381_3 layout:v26 completion:0];
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

void __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) placement];
  [*(a1 + 32) setPlacement:v2];
}

uint64_t __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_4;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) postRotationPlacement];
  [*(a1 + 32) setPlacement:v2];
}

uint64_t __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_5(uint64_t a1)
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
    v7 = (*(a1 + 56) + 1680);
    v8 = *(MEMORY[0x1E695F060] + 8);
    v9 = *v7;
    if (*MEMORY[0x1E695F060] != *v7 || v8 != *(*(a1 + 56) + 1688))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        [v11 transform];
        v9 = *(*(a1 + 56) + 1680);
        v11 = *(a1 + 32);
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      [v11 bounds];
      v12 = *(*(a1 + 56) + 1688);
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
    v17 = (*(a1 + 56) + 1696);
    v18 = v6[1];
    v19 = *v17;
    if (*v6 != *v17 || v18 != *(*(a1 + 56) + 1704))
    {
      v21 = *(a1 + 40);
      if (v21)
      {
        [v21 transform];
        v19 = *(*(a1 + 56) + 1696);
        v21 = *(a1 + 40);
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      [v21 bounds];
      v22 = *(*(a1 + 56) + 1704);
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
    v28 = (*(a1 + 56) + 1712);
    v29 = v6[1];
    v30 = *v28;
    if (*v6 != *v28 || v29 != *(*(a1 + 56) + 1720))
    {
      v32 = *(a1 + 48);
      if (v32)
      {
        [v32 transform];
        v32 = *(a1 + 48);
        v30 = *(*(a1 + 56) + 1712);
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      [v32 bounds];
      v33 = *(*(a1 + 56) + 1720);
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

uint64_t __88__UITrackingElementWindowController_willAnimateRotationToInterfaceOrientation_duration___block_invoke_7(void *a1)
{
  v2 = a1[4];
  memset(&t1, 0, sizeof(t1));
  v3 = v2[108];
  v4 = v2[110];
  *&t2.c = v2[109];
  *&t2.tx = v4;
  *&t2.a = v3;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v18 = v2[109];
    v5 = v2[110];
    v6 = a1[5];
    *&t1.a = v2[108];
    *&t1.c = v18;
    *&t1.tx = v5;
    [v6 setTransform:&t1];
    v2 = a1[4];
  }

  memset(&t1, 0, sizeof(t1));
  v7 = v2[111];
  v8 = v2[113];
  *&t2.c = v2[112];
  *&t2.tx = v8;
  *&t2.a = v7;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v17 = v2[112];
    v9 = v2[113];
    v10 = a1[6];
    *&t1.a = v2[111];
    *&t1.c = v17;
    *&t1.tx = v9;
    [v10 setTransform:&t1];
    v2 = a1[4];
  }

  memset(&t1, 0, sizeof(t1));
  v11 = v2[114];
  v12 = v2[116];
  *&t2.c = v2[115];
  *&t2.tx = v12;
  *&t2.a = v11;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v15 = v2[115];
    v16 = v2[116];
    v13 = a1[7];
    *&t1.a = v2[114];
    *&t1.c = v15;
    *&t1.tx = v16;
    [v13 setTransform:{&t1, *&t1.a, *&t1.b, v15, v16}];
    v2 = a1[4];
  }

  return [v2 updateTrackingCoordinatorForRotationOrientation:a1[8]];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (self->_rotationState == 2)
  {
    self->_rotationState = 0;
    [(UITrackingElementWindowController *)self _updateContentOverlayInsetsForSelfAndChildren];
    v5 = [(UITrackingElementWindowController *)self inputViewSet];
    v6 = [v5 inputView];
    [v6 setAlpha:1.0];

    v7 = [(UITrackingElementWindowController *)self inputViewSet];
    v8 = [v7 inputView];
    v9 = [v8 layer];
    [v9 setAllowsGroupOpacity:1];

    v10 = [(UITrackingElementWindowController *)self inputViewSet];
    v11 = [v10 inputAssistantView];
    v12 = [v11 layer];
    [v12 setAllowsGroupOpacity:1];

    v13 = [(UITrackingElementWindowController *)self inputViewSet];
    v14 = [v13 inputAssistantView];
    [v14 setAlpha:1.0];

    v15 = [(UITrackingElementWindowController *)self inputViewSet];
    v16 = [v15 inputAccessoryView];
    [v16 setAlpha:1.0];

    [(UIView *)self->_preRotationSnapshot removeFromSuperview];
    preRotationSnapshot = self->_preRotationSnapshot;
    self->_preRotationSnapshot = 0;

    v18 = [(UITrackingElementWindowController *)self postRotationPlacement];

    if (v18)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke;
      v46[3] = &unk_1E70F3590;
      v46[4] = self;
      [(UITrackingElementWindowController *)self performWithoutCallbacksOrNotifications:v46];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_3;
      v45[3] = &unk_1E70F32F0;
      v45[4] = self;
      v45[5] = a3;
      [(UITrackingElementWindowController *)self performWithoutAppearanceCallbacks:v45];
      [(UITrackingElementWindowController *)self popAnimationStyle];
      v19 = [(UITrackingElementWindowController *)self postRotationInputViewSet];
      v20 = [(UITrackingElementWindowController *)self postRotationInputViewNotificationInfo];
      [v20 setDueToRotation:1];
      [v20 setShouldSendInClient:1];
      if (+[UIKeyboard usesInputSystemUI])
      {
        [v20 setWaitingForInputUI:1];
      }

      [(UITrackingElementWindowController *)self setPostRotationPlacement:0];
      [(UITrackingElementWindowController *)self setPostRotationInputViewSet:0];
      [(UITrackingElementWindowController *)self setPostRotationInputViewNotificationInfo:0];
      v21 = [(UITrackingElementWindowController *)self postRotationPendingBlock];

      if (v21)
      {

        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC didRotateFromInterfaceOrientation: has postRotationPendingBlock"];
        [v20 addKeyboardNotificationDebuggingInfo:v22];

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_6;
        v44[3] = &unk_1E70F3590;
        v44[4] = self;
        [(UITrackingElementWindowController *)self performOperations:v44 withTemplateNotificationInfo:v20];
        v19 = 0;
      }

      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v24 = [(UIViewController *)self _window];
      [v23 completeMoveKeyboardForWindow:v24];

      if (v19)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC didRotateFromInterfaceOrientation: has pending inputViewSet"];
        [v20 addKeyboardNotificationDebuggingInfo:v25];

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_7;
        v42[3] = &unk_1E70F35B8;
        v42[4] = self;
        v43 = v19;
        [(UITrackingElementWindowController *)self performOperations:v42 withTemplateNotificationInfo:v20];
      }

      v26 = [(UITrackingElementWindowController *)self inputViewSet];
      if (![v26 isInputViewPlaceholder])
      {
        v27 = +[UIKeyboardInputModeController sharedInputModeController];
        v28 = [v27 currentInputMode];
        if ([v28 isExtensionInputMode])
        {
          v29 = [(UITrackingElementWindowController *)self _inputViewController];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            v31 = [(UITrackingElementWindowController *)self _inputViewController];
            [v31 takeSnapshotView];

            [(UITrackingElementWindowController *)self updateTrackingCoordinatorForRotationOrientation:[(UIViewController *)self interfaceOrientation]];
          }

          goto LABEL_21;
        }
      }

LABEL_21:
      +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
      v39 = [MEMORY[0x1E696AD88] defaultCenter];
      v47 = @"UITextEffectsWindow_fromOrientation";
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v48 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [v39 postNotificationName:@"UITextEffectsWindowViewControllerDidRotateNotification" object:self userInfo:v41];

      return;
    }

    if (+[UIKeyboardImpl isFloating])
    {
      if (self->_isChangingPlacement)
      {
        v32 = [(UITrackingElementWindowController *)self placement];
        [(UITrackingElementWindowController *)self updateVisibilityConstraintsForPlacement:v32];
      }

      v33 = [MEMORY[0x1E696AD88] defaultCenter];
      v51 = @"UITextEffectsWindow_fromOrientation";
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v52[0] = v34;
      v35 = MEMORY[0x1E695DF20];
      v36 = v52;
      v37 = &v51;
    }

    else
    {
      v33 = [MEMORY[0x1E696AD88] defaultCenter];
      v49 = @"UITextEffectsWindow_fromOrientation";
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v50 = v34;
      v35 = MEMORY[0x1E695DF20];
      v36 = &v50;
      v37 = &v49;
    }

    v38 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
    [v33 postNotificationName:@"UITextEffectsWindowViewControllerDidRotateNotification" object:self userInfo:v38];
  }
}

uint64_t __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_2;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_2(uint64_t a1)
{
  v2 = +[UIInputViewSetPlacementOffScreenDown placement];
  [*(a1 + 32) setPlacement:v2];
}

uint64_t __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_4;
  v3[3] = &unk_1E70F32F0;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  return [UIView performWithoutAnimation:v3];
}

void __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_4(uint64_t a1)
{
  v2 = +[UIInputViewSetNotificationInfo info];
  [v2 setDueToRotation:1];
  v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v2 setWasCausedRemotely:{objc_msgSend(v3, "keyboardActive") ^ 1}];

  [v2 setShouldSendInClient:1];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC didRotateFromInterfaceOrientation: %li", *(a1 + 40)];
  [v2 addKeyboardNotificationDebuggingInfo:v4];

  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_5;
  v6[3] = &unk_1E70F3590;
  v6[4] = v5;
  [v5 performOperations:v6 withTemplateNotificationInfo:v2];
}

uint64_t __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) postRotationPlacement];
  [*(a1 + 32) setPlacement:v2];

  v3 = *(*(a1 + 32) + 1664);

  return [v3 initializeTranslateGestureRecognizerIfNecessary];
}

uint64_t __71__UITrackingElementWindowController_didRotateFromInterfaceOrientation___block_invoke_6(uint64_t a1)
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
    [(UITrackingElementWindowController *)self willAnimateRotationToInterfaceOrientation:+[UIKeyboardSceneDelegate duration:"interfaceOrientation"], 0.0];
    rotationState = self->_rotationState;
  }

  if (rotationState == 2)
  {
    [(UITrackingElementWindowController *)self didRotateFromInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  }

  hosting = self->_hosting;

  [(UIInputWindowControllerHosting *)hosting removeAllAnimations];
}

- (UIInputViewSetPlacement)placementIgnoringRotation
{
  if ([(UITrackingElementWindowController *)self isRotating])
  {
    [(UITrackingElementWindowController *)self postRotationPlacement];
  }

  else
  {
    [(UITrackingElementWindowController *)self placement];
  }
  v3 = ;

  return v3;
}

- (CGSize)sizeForInputViewController:(id)a3 inputView:(id)a4 includeAssistantBar:(BOOL)a5
{
  [UIKeyboard sizeForInterfaceOrientation:[(UIInputWindowController *)self keyboardOrientation:a3] includingAssistantBar:a5 ignoreInputView:1];
  v7 = v6;
  v9 = v8;
  [(UITrackingElementWindowController *)self _inputViewPadding];
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
  [(UITrackingElementWindowController *)self sizeForInputViewController:v6 inputView:v7 includeAssistantBar:v8];
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

    v17 = [(UITrackingElementWindowController *)self initialNotificationInfo];
    if ([(UITrackingElementWindowController *)self isOnScreen])
    {
      v12 = [(UIViewController *)self view];
      [v12 frame];
      v14 = v13 - v11;

      v15 = @"TEWC postTransitionEndNotification (isOnScreen)";
      v16 = 2;
    }

    else
    {
      v14 = v7 + v11;
      v15 = @"TEWC postTransitionEndNotification (!isOnScreen)";
      v16 = 3;
    }

    [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v5, v14, v9, v11];
    [v17 populateEndInfoWithFrame:?];
    [v17 addKeyboardNotificationDebuggingInfo:v15];
    [(UITrackingElementWindowController *)self postStartNotifications:v16 withInfo:v17];
    [(UITrackingElementWindowController *)self postEndNotifications:v16 withInfo:v17];
  }
}

- (void)generateNotificationsForStart:(BOOL)a3
{
  v3 = a3;
  if ([(UIInputWindowController *)self shouldNotifyRemoteKeyboards])
  {
    v5 = [(UITrackingElementWindowController *)self initialNotificationInfo];
    if (v3)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __67__UITrackingElementWindowController_generateNotificationsForStart___block_invoke;
      v17[3] = &unk_1E70F35B8;
      v17[4] = self;
      v18 = v5;
      v6 = v5;
      [(UITrackingElementWindowController *)self performWithSafeTransitionFrames:v17];
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

      [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v9, v11, v13, v15];
      [v16 populateEndInfoWithFrame:?];
      [v16 addKeyboardNotificationDebuggingInfo:@"TEWC generateNotificationsForStart:0"];
      [(UITrackingElementWindowController *)self postEndNotifications:1 withInfo:v16];
    }
  }
}

uint64_t __67__UITrackingElementWindowController_generateNotificationsForStart___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1664) itemForPurpose:1];
  [v2 notificationsFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) convertRectFromContainerCoordinateSpaceToScreenSpace:{v4, v6, v8, v10}];
  [*(a1 + 40) populateStartInfoWithFrame:?];
  [*(a1 + 40) addKeyboardNotificationDebuggingInfo:@"TEWC generateNotificationsForStart:1"];
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
  [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:?];
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
    v18 = [(UITrackingElementWindowController *)self inputViewSet];
    v19 = [v18 inputAccessoryView];

    if (!v19)
    {
      [(UIInputViewSetNotificationInfo *)v21 populateStartInfoWithFrame:v7, v9, v11, v13];
      [(UIInputViewSetNotificationInfo *)v21 populateEndInfoWithFrame:v7, v9, v11, v13];
    }
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TEWC generateNotificationsForCompactAssistantFlickGestureCompletion (stageManager active: %d)", v17];
  [(UIInputViewSetNotificationInfo *)v21 addKeyboardNotificationDebuggingInfo:v20];

  [(UITrackingElementWindowController *)self postStartNotifications:2 withInfo:v21];
  [(UITrackingElementWindowController *)self postEndNotifications:2 withInfo:v21];
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
        [(UITrackingElementWindowController *)self _updatePlacementWithPlacement:v10];
        [(UITrackingElementWindowController *)self updateToPlacement:v10 withNormalAnimationsAndNotifications:0];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      [(UITrackingElementWindowController *)self setPlacement:v10];
      if (v6)
      {
LABEL_8:
        [(UITrackingElementWindowController *)self postTransitionEndNotification];
      }
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __93__UITrackingElementWindowController_setPlacement_quietly_animated_generateSplitNotification___block_invoke;
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

- (void)validateInputView
{
  v3 = [(UITrackingElementWindowController *)self _inputViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UITrackingElementWindowController *)self _inputViewController];
    [v5 validateInputModeIsDisplayed];
  }
}

uint64_t __65__UITrackingElementWindowController_invalidateInputAssistantView__block_invoke(uint64_t a1)
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

  [*(*(a1 + 32) + 1664) removeInputAssistantHostView];
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
  v6 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
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

  v13 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
  v14 = v13;
  if (!v13)
  {
    v13 = self;
  }

  v15 = [v13 _appearState];

  hosting = self->_hosting;
  v17 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
  [(UIInputWindowControllerHosting *)hosting disableViewSizingConstraints:2 forNewView:v17];

  [(UITrackingElementWindowController *)self invalidateInputAssistantView];
  v18 = [v36 inputAssistantView];

  if (v18)
  {
    *&self->super.super.super.super._viewControllerFlags |= 0x100000uLL;
    v19 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    [(UITrackingElementWindowController *)self set_inputAssistantViewController:v19];

    v20 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
    v21 = [v20 parentViewController];
    if (v21)
    {
      v22 = v21;
      v23 = +[UIKeyboard usesLocalKeyboard];

      if (v23)
      {
LABEL_14:
        v25 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
        [(UIViewController *)self _addChildViewController:v25 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

        sizeClassCollectionOverride = self->_sizeClassCollectionOverride;
        if (sizeClassCollectionOverride)
        {
          v27 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
          [(UIViewController *)self setOverrideTraitCollection:sizeClassCollectionOverride forChildViewController:v27];
        }

        v28 = self->_hosting;
        v29 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
        v30 = [v29 view];
        [(UIInputWindowControllerHosting *)v28 setInputSetView:v30 forType:102];

        v31 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
        [v31 didMoveToParentViewController:self];

        [(UITrackingElementWindowController *)self changeChild:2 toAppearState:v15 animated:0];
        *&self->super.super.super.super._viewControllerFlags &= ~0x100000uLL;
        v32 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
        v33 = [v32 view];
        v34 = [(UIViewController *)self view];
        v35 = [v34 _inheritedRenderConfig];
        [v33 _setRenderConfig:v35];

        goto LABEL_17;
      }

      v20 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
      v24 = [v20 parentViewController];
      [v24 invalidateInputAssistantView];
    }

    goto LABEL_14;
  }

LABEL_17:
}

uint64_t __65__UITrackingElementWindowController_invalidateInputAccessoryView__block_invoke(uint64_t a1)
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

  [*(*(a1 + 32) + 1664) clearInputAccessoryViewEdgeConstraints];
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

- (unint64_t)changeToInputViewSet:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _UITrackingElementWindowControllerLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    inputViewSet = self->_inputViewSet;
    *buf = 138412290;
    v124 = inputViewSet;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Change from input view set: %@", buf, 0xCu);
  }

  v8 = _UITrackingElementWindowControllerLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v124 = v5;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Change to input view set: %@", buf, 0xCu);
  }

  v9 = self->_inputViewSet;
  objc_storeStrong(&self->_inputViewSet, a3);
  [(UITrackingElementWindowController *)self setTransientInputViewSet:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke;
  aBlock[3] = &unk_1E7116620;
  aBlock[4] = self;
  v10 = v5;
  v121 = v10;
  v11 = _Block_copy(aBlock);
  [(UIInputWindowControllerHosting *)self->_hosting initializeTranslateGestureRecognizerIfNecessary];
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  v116 = 0u;
  v12 = [(UITrackingElementWindowController *)self hosting];
  v13 = [v12 allHostingItems];

  v14 = [v13 countByEnumeratingWithState:&v116 objects:v122 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v117;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v117 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v116 + 1) + 8 * i) updateInputViewSet:v10];
      }

      v15 = [v13 countByEnumeratingWithState:&v116 objects:v122 count:16];
    }

    while (v15);
  }

  v112 = v11;

  self->_isChangingInputViews = 1;
  v18 = [(UITrackingElementWindowController *)self _inputViewController];
  v19 = [v18 view];
  v20 = [(UIInputViewSet *)v10 inputView];

  hosting = self->_hosting;
  if (v19 == v20)
  {
    v44 = [(UIInputWindowControllerHosting *)hosting itemForPurpose:100];
    [v44 updateInputBackdropViewVisibility];

    v43 = 0;
  }

  else
  {
    v22 = [(UIInputViewSet *)v10 inputView];
    [(UIInputWindowControllerHosting *)hosting disableViewSizingConstraints:1 forNewView:v22];

    v23 = [(UITrackingElementWindowController *)self _inputViewController];
    v24 = v23;
    if (!v23)
    {
      v23 = self;
    }

    v25 = [v23 _appearState];

    [(UITrackingElementWindowController *)self invalidateInputView];
    v26 = [(UIInputViewSet *)self->_inputViewSet inputView];

    if (v26)
    {
      if ([(UIInputViewSet *)self->_inputViewSet isInputViewPlaceholder])
      {
        v27 = [(UIInputViewSet *)self->_inputViewSet inputView];
        [v27 refreshPlaceholder];

        [(UITrackingElementWindowController *)self updateKeyboardLayoutGuideForRefreshedPlaceholder];
      }

      *&self->super.super.super.super._viewControllerFlags |= 0x100000uLL;
      v28 = [(UIInputViewSet *)self->_inputViewSet inputViewController];
      [(UITrackingElementWindowController *)self set_inputViewController:v28];

      v29 = [(UITrackingElementWindowController *)self _inputViewController];
      v30 = [v29 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v32 = [(UITrackingElementWindowController *)self _inputViewController];
        v33 = [v32 parentViewController];
        [v33 invalidateInputView];
      }

      v34 = [(UITrackingElementWindowController *)self _inputViewController];
      [(UIViewController *)self _addChildViewController:v34 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

      v35 = self->_hosting;
      v36 = [(UITrackingElementWindowController *)self _inputViewController];
      v37 = [v36 view];
      [(UIInputWindowControllerHosting *)v35 setInputSetView:v37 forType:100];

      v38 = [(UITrackingElementWindowController *)self _inputViewController];
      [v38 didMoveToParentViewController:self];

      [(UITrackingElementWindowController *)self changeChild:1 toAppearState:v25 animated:0];
      *&self->super.super.super.super._viewControllerFlags &= ~0x100000uLL;
      v39 = [(UITrackingElementWindowController *)self _inputViewController];
      v40 = [v39 view];
      v41 = [(UIViewController *)self view];
      v42 = [v41 _inheritedRenderConfig];
      [v40 _setRenderConfig:v42];
    }

    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke_2;
    v115[3] = &unk_1E70F3590;
    v115[4] = self;
    [UIView performWithoutAnimation:v115];
    v43 = 1;
  }

  v45 = [(UITrackingElementWindowController *)self _inputAssistantViewController];
  v46 = [v45 view];
  v47 = [(UIInputViewSet *)v10 inputAssistantView];
  v48 = v47;
  if (v46 == v47)
  {
    [(UIViewController *)self _window];
    v50 = v49 = v9;
    v51 = [(UIInputViewSet *)v10 inputAssistantView];
    [v51 window];
    v52 = v111 = v43;

    v53 = v50 == v52;
    v43 = v111;
    v9 = v49;
    if (v53)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  [(UITrackingElementWindowController *)self updateInputAssistantView:v10];
  v111 = v43 | 2;
LABEL_27:
  v54 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
  v55 = [v54 view];
  v56 = [(UIInputViewSet *)v10 inputAccessoryView];

  if (v55 == v56)
  {
    v88 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
    v89 = [v88 view];
    if (v89)
    {
      v90 = v89;
      v110 = v9;
      v91 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
      v92 = [v91 view];
      v93 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:101];
      v94 = [v93 hostView];
      v95 = [v92 isDescendantOfView:v94];

      if ((v95 & 1) == 0)
      {
        v96 = self->_hosting;
        v97 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
        v98 = [v97 view];
        [(UIInputWindowControllerHosting *)v96 setInputSetView:v98 forType:101];

        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke_4;
        v113[3] = &unk_1E70F3590;
        v113[4] = self;
        [UIView performWithoutAnimation:v113];
      }

      v9 = v110;
      v62 = v112;
    }

    else
    {

      v62 = v112;
    }

    v87 = v111;
  }

  else
  {
    v57 = self->_hosting;
    v58 = [(UIInputViewSet *)v10 inputAccessoryView];
    [(UIInputWindowControllerHosting *)v57 disableViewSizingConstraints:4 forNewView:v58];

    v59 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
    v60 = v59;
    if (!v59)
    {
      v59 = self;
    }

    v61 = [v59 _appearState];

    [(UITrackingElementWindowController *)self invalidateInputAccessoryView];
    v62 = v112;
    if (!v112[2](v112))
    {
      v87 = 0;
      goto LABEL_58;
    }

    v63 = [(UIInputViewSet *)self->_inputViewSet inputAccessoryView];

    if (v63)
    {
      *&self->super.super.super.super._viewControllerFlags |= 0x100000uLL;
      v64 = [(UIInputViewSet *)self->_inputViewSet accessoryViewController];
      [(UITrackingElementWindowController *)self set_inputAccessoryViewController:v64];

      v65 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
      v66 = [v65 parentViewController];

      if (v66)
      {
        v109 = v9;
        v67 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
        v68 = [v67 view];
        v69 = [v68 _responderWindow];
        v70 = [v69 _firstResponder];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (-[UITrackingElementWindowController _inputAccessoryViewController](self, "_inputAccessoryViewController"), v71 = objc_claimAutoreleasedReturnValue(), [v71 view], v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "containsView:", v70), v72, v71, (v73 & 1) == 0))
        {

          v70 = 0;
        }

        v74 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
        v75 = [v74 parentViewController];

        objc_opt_class();
        v9 = v109;
        if (objc_opt_isKindOfClass())
        {
          [v75 invalidateInputAccessoryView];
        }

        [v70 _becomeFirstResponderWhenPossible];
        v76 = (v112[2])();

        if (!v76)
        {
          v87 = 0;
          v62 = v112;
          goto LABEL_58;
        }
      }

      v77 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
      [(UIViewController *)self _addChildViewController:v77 performHierarchyCheck:dyld_program_sdk_at_least() notifyWillMove:1];

      v78 = self->_hosting;
      v79 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
      v80 = [v79 view];
      [(UIInputWindowControllerHosting *)v78 setInputSetView:v80 forType:101];

      v81 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
      [v81 didMoveToParentViewController:self];

      [(UITrackingElementWindowController *)self changeChild:4 toAppearState:v61 animated:0];
      *&self->super.super.super.super._viewControllerFlags &= ~0x100000uLL;
      v82 = [(UITrackingElementWindowController *)self _inputAccessoryViewController];
      v83 = [v82 view];
      v84 = [(UIViewController *)self view];
      v85 = [v84 _inheritedRenderConfig];
      [v83 _setRenderConfig:v85];

      v86 = [(UIInputViewSet *)self->_inputViewSet inputAccessoryView];
      [v86 bounds];
      [(UITrackingElementWindowController *)self updateTrackingCoordinatorForAccessoryBounds:?];

      v62 = v112;
    }

    v87 = v111 | 4;
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke_3;
    v114[3] = &unk_1E70F3590;
    v114[4] = self;
    [UIView performWithoutAnimation:v114];
  }

  self->_isChangingInputViews = 0;
  [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:self->_inputViewSet];
  [(UITrackingElementWindowController *)self updateKeyboardDockViewVisibility];
  if (v87 || [(UIInputWindowControllerHosting *)self->_hosting requiresConstraintUpdate])
  {
    [(UIViewController *)self updateViewConstraints];
  }

  [(UITrackingElementWindowController *)self updateGestureRecognizers];
  v99 = [(UIInputViewSet *)v9 inputView];
  v100 = [v99 superview];

  if (!v100)
  {
    v101 = [(UIInputViewSet *)v9 inputView];
    [v101 _clearOverrideNextResponder];
  }

  v102 = [(UIInputViewSet *)v9 inputAssistantView];
  v103 = [v102 superview];

  if (!v103)
  {
    v104 = [(UIInputViewSet *)v9 inputAssistantView];
    [v104 _clearOverrideNextResponder];
  }

  v105 = [(UIInputViewSet *)v9 inputAccessoryView];
  v106 = [v105 superview];

  if (!v106)
  {
    v107 = [(UIInputViewSet *)v9 inputAccessoryView];
    [v107 _clearOverrideNextResponder];
  }

LABEL_58:

  return v87;
}

uint64_t __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 2048) inputAccessoryView];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 2048) inputAccessoryView];
    v5 = [v4 superview];

    if (!v5)
    {
      return 1;
    }
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 2048);

  return [v7 isEqual:v6];
}

void __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1664) itemForPurpose:100];
  [v1 updateInputBackdropView];
}

void __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1664) itemForPurpose:101];
  [v1 updateInputAccessoryBackdropView];
}

void __58__UITrackingElementWindowController_changeToInputViewSet___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1664) itemForPurpose:101];
  [v1 updateInputAccessoryBackdropView];
}

- (void)setInputViewSet:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UITrackingElementWindowController *)self updateKeyboardSizeClass];
  v5 = [(UITrackingElementWindowController *)self postRotationPlacement];

  if (v5)
  {
    [(UITrackingElementWindowController *)self setPostRotationInputViewSet:v4];
    v6 = [(UITrackingElementWindowController *)self initialNotificationInfo];
    [(UITrackingElementWindowController *)self setPostRotationInputViewNotificationInfo:v6];

    v7 = [(UITrackingElementWindowController *)self postRotationInputViewNotificationInfo];
    [v7 setShouldSendInClient:1];

    goto LABEL_73;
  }

  v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  if ([v8 handlingRemoteEvent])
  {
    v9 = [(UITrackingElementWindowController *)self currentTransition];
    v10 = [v9 fromPlacement];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  if (![v4 isEmpty] || self->_inputViewSet || objc_msgSend(UIApp, "_isSpringBoard") && (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "existingContainerRootController"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35 == self))
  {
    v12 = _UITrackingElementWindowControllerLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Setting tracking element input views: %@", buf, 0xCu);
    }

    [(UIInputWindowController *)self updateInputAssistantViewForInputViewSet:v4];
    v13 = [(UIInputViewSet *)self->_inputViewSet isEqual:v4];
    if (v13)
    {
      v47 = 0;
    }

    else
    {
      LODWORD(v47) = ([v4 isInputViewPlaceholder] & 1) != 0 || -[UIInputViewSet isInputViewPlaceholder](self->_inputViewSet, "isInputViewPlaceholder");
      if ([v4 isInputViewPlaceholder])
      {
        HIDWORD(v47) = ![(UIInputWindowController *)self shouldNotifyRemoteKeyboards];
      }

      else
      {
        HIDWORD(v47) = 0;
      }

      if ([(UIInputViewSet *)self->_inputViewSet isCustomInputView])
      {
        v46 = [v4 isCustomInputView] ^ 1;
        goto LABEL_22;
      }
    }

    v46 = 0;
LABEL_22:
    v14 = !v13;
    if ([(UIInputViewSet *)self->_inputViewSet isInputViewPlaceholder])
    {
      v15 = [(UIInputViewSet *)self->_inputViewSet inputView];
      [v15 fixedSize];
      v17 = v16;
      [v15 refreshPlaceholder];
      [v15 fixedSize];
      v19 = v18;
      if (v17 != v18)
      {
        v20 = _UITrackingElementWindowControllerLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v17;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Placeholder height changed from %.1f to %.1f", buf, 0x16u);
        }

        v14 = 1;
      }
    }

    v21 = [(UITrackingElementWindowController *)self nextAnimationStyle];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__178;
    v72 = __Block_byref_object_dispose__178;
    v73 = [(UITrackingElementWindowController *)self currentPresentationPlacement];
    v22 = [(UIViewController *)self _window];
    v48 = [v22 windowScene];

    v23 = [v21 startPlacementForInputViewSet:v4 currentPlacement:*(*&buf[8] + 40) windowScene:v48];
    v24 = [v21 endPlacementForInputViewSet:v4 windowScene:v48];
    [v23 setOtherPlacement:v24];
    [v24 setOtherPlacement:v23];
    v25 = [(UITrackingElementWindowController *)self currentTransition];
    v26 = [v25 toPlacement];
    v27 = [v24 isEqual:v26];

    v28 = v14 | v27 ^ 1;
    if ((v28 & 1) == 0)
    {
      v29 = [(UITrackingElementWindowController *)self currentTransition];
      v30 = [v29 animationStyle];
      v31 = [v21 isEqual:v30];

      if (v31)
      {
        v32 = _UITrackingElementWindowControllerLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v65[0]) = 0;
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEFAULT, "Skipping changing input views", v65, 2u);
        }

        goto LABEL_72;
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

    if (!-[UIInputViewSet isEqual:](self->_inputViewSet, "isEqual:", v4) && ([*(*&buf[8] + 40) isEqual:v23] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke;
        v66[3] = &unk_1E70FF0C8;
        v66[4] = self;
        v67 = v4;
        v69 = buf;
        v68 = v23;
        [UIView performWithoutAnimation:v66];
        [(UIInputWindowControllerHosting *)self->_hosting setRequiresConstraintUpdate:1];

        v28 = 1;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v36 = objc_opt_isKindOfClass();
    }

    else
    {
      v36 = 0;
    }

    objc_initWeak(v65, self);
    [(UITrackingElementWindowController *)self setTransientInputViewSet:v4];
    v37 = [*(*&buf[8] + 40) notificationsForTransitionToPlacement:v24];
    if ((v37 == 3) | (HIDWORD(v47) | v33 | v36) & 1)
    {
      if (HIDWORD(v47))
      {
        [v24 setDirty];
      }

      if (v36)
      {
        v38 = +[UIInputViewAnimationStyle animationStyleImmediate];
        [(UITrackingElementWindowController *)self pushAnimationStyle:v38];
      }

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_3;
      v62[3] = &unk_1E70F2F80;
      objc_copyWeak(&v64, v65);
      v63 = v4;
      [(UITrackingElementWindowController *)self setPlacement:v24 starting:0 completion:v62];
      if (v36)
      {
        [(UITrackingElementWindowController *)self popAnimationStyle];
      }

      objc_destroyWeak(&v64);
      goto LABEL_71;
    }

    if (v37 != 1)
    {
      if (v37 == 2)
      {
        if ((-[UIInputViewSet isCustomInputView](self->_inputViewSet, "isCustomInputView") || ([*(*&buf[8] + 40) isFloating] & 1) != 0 || objc_msgSend(v23, "showsInputOrAssistantViews")) && (objc_msgSend(v4, "isNullInputView") & 1) == 0 && (objc_msgSend(v24, "showsKeyboard") & 1) == 0)
        {
          v42 = [(UITrackingElementWindowController *)self currentTransition];
          v43 = [v42 toPlacement];
          v44 = [v43 isEqual:v24];

          v39 = (v44 | v46) & 1;
        }

        else
        {
          v39 = 1;
        }

        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_4;
        v58[3] = &unk_1E7108F18;
        v61 = v39;
        objc_copyWeak(&v60, v65);
        v45 = v4;
        v59 = v45;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_5;
        v54[3] = &unk_1E7108F18;
        objc_copyWeak(&v56, v65);
        v57 = v39;
        v55 = v45;
        [(UITrackingElementWindowController *)self setPlacement:v24 starting:v58 completion:v54];

        objc_destroyWeak(&v56);
        objc_destroyWeak(&v60);
        goto LABEL_71;
      }

      if (!v28)
      {
        [(UITrackingElementWindowController *)self setTransientInputViewSet:0];
LABEL_71:
        objc_destroyWeak(v65);
LABEL_72:

        _Block_object_dispose(buf, 8);
        goto LABEL_73;
      }
    }

    v40 = +[UIInputViewSetNotificationInfo info];
    [(UITrackingElementWindowController *)self transferActiveNotificationInfoToInfo:v40];
    [v40 addKeyboardNotificationDebuggingInfo:@"TEWC setInputViewSet:"];
    if (v47)
    {
      [v40 forceNotification];
      [v40 setForceNotification:1];
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_7;
    v49[3] = &unk_1E7116670;
    objc_copyWeak(&v53, v65);
    v50 = v24;
    v51 = v4;
    v41 = v40;
    v52 = v41;
    [(UITrackingElementWindowController *)self performOperations:v49 withTemplateNotificationInfo:v41];

    objc_destroyWeak(&v53);
    goto LABEL_71;
  }

LABEL_73:
}

void __53__UITrackingElementWindowController_setInputViewSet___block_invoke(uint64_t a1)
{
  [*(a1 + 32) changeToInputViewSet:*(a1 + 40)];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = [*(a1 + 32) currentPresentationPlacement];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (([*(*(*(a1 + 56) + 8) + 40) isEqual:*(a1 + 48)] & 1) == 0)
  {
    [*(a1 + 32) _updatePlacementWithPlacement:*(a1 + 48)];
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_2;
  v7[3] = &unk_1E70F3590;
  v7[4] = v6;
  [v6 ignoreLayoutNotifications:v7];
  [*(*(a1 + 32) + 1664) _updateBackdropViews];
}

void __53__UITrackingElementWindowController_setInputViewSet___block_invoke_3(uint64_t a1)
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

void __53__UITrackingElementWindowController_setInputViewSet___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained changeToInputViewSet:*(a1 + 32)];
  }
}

void __53__UITrackingElementWindowController_setInputViewSet___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 48))
  {
    [WeakRetained[208] initializeTranslateGestureRecognizerIfNecessary];
  }

  else
  {
    [WeakRetained changeToInputViewSet:*(a1 + 32)];
  }

  [v3[208] updateEmptyHeightConstraint];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_6;
  v4[3] = &unk_1E70F3590;
  v4[4] = v3;
  [UIView performWithoutAnimation:v4];
}

void __53__UITrackingElementWindowController_setInputViewSet___block_invoke_7(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_8;
  v6[3] = &unk_1E7101A88;
  objc_copyWeak(&v9, a1 + 7);
  v7 = a1[5];
  v8 = a1[6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_10;
  v4[3] = &unk_1E70F3590;
  v5 = a1[4];
  [WeakRetained setPlacement:v3 starting:v6 completion:v4];

  objc_destroyWeak(&v9);
}

void __53__UITrackingElementWindowController_setInputViewSet___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 40) setChangedAccessoryOnly:{objc_msgSend(WeakRetained, "changeToInputViewSet:", *(a1 + 32)) == 4}];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__UITrackingElementWindowController_setInputViewSet___block_invoke_9;
  v3[3] = &unk_1E70F35B8;
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  [UIView performWithoutAnimation:v3];
}

uint64_t __53__UITrackingElementWindowController_setInputViewSet___block_invoke_9(uint64_t a1)
{
  if ([*(a1 + 32) changedAccessoryOnly])
  {
    [*(a1 + 40) updateHostingItemsForConstraintChanges];
  }

  v2 = *(*(a1 + 40) + 1664);

  return [v2 _updateBackdropViews];
}

uint64_t __53__UITrackingElementWindowController_setInputViewSet___block_invoke_10(uint64_t a1)
{
  result = [*(a1 + 32) isFloating];
  if ((result & 1) == 0)
  {

    return [UIView performWithoutAnimation:&__block_literal_global_420];
  }

  return result;
}

- (void)setPlacement:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__UITrackingElementWindowController_setPlacement___block_invoke;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, &location);
  [(UITrackingElementWindowController *)self setPlacement:v4 starting:v5 completion:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__UITrackingElementWindowController_setPlacement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained[208] allHostingItems];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__UITrackingElementWindowController_setPlacement___block_invoke_2;
  v4[3] = &unk_1E7116698;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 enumerateObjectsUsingBlock:v4];

  objc_destroyWeak(&v5);
}

void __50__UITrackingElementWindowController_setPlacement___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dockView];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained updateViewConstraints];
    [WeakRetained updateKeyboardDockViewVisibility];
  }
}

- (void)setRotationAwarePlacement:(id)a3
{
  v5 = a3;
  v4 = [(UITrackingElementWindowController *)self postRotationPlacement];

  if (v4)
  {
    [(UITrackingElementWindowController *)self setPostRotationPlacement:v5];
  }

  else
  {
    [(UITrackingElementWindowController *)self setPlacement:v5];
  }
}

- (void)setInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5
{
  v6 = [UIInputViewSet inputSetWithInputView:a3 accessoryView:a4 assistantView:a5];
  [(UITrackingElementWindowController *)self setInputViewSet:v6];
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

- (CGRect)_visibleFrameInRemoteKeyboardWindow:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:1];
  [v5 notificationsFrame];
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  if (CGRectGetHeight(v72) == 0.0 && +[UIKeyboard isInputUIProcess](UIKeyboard, "isInputUIProcess") && !+[UIKeyboard inputUIOOP])
  {
    v10 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    if ([v10 keyboardVisible] && (objc_msgSend(v10, "remoteKeyboardUndocked") & 1) == 0 && !objc_msgSend(v10, "isFloating"))
    {
      [v10 keyboardPosition];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = [(UIViewController *)self _window];
      [v67 frame];
      v69 = v68;
      [v10 keyboardPosition];
      v71 = v69 - v70;
      v76.origin.x = v60;
      v76.origin.y = v62;
      v76.size.width = v64;
      v76.size.height = v66;
      v77 = CGRectOffset(v76, 0.0, v71);
      v51 = v77.origin.x;
      v52 = v77.origin.y;
      v53 = v77.size.width;
      v54 = v77.size.height;

      goto LABEL_19;
    }
  }

  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v10 = [v11 trackingElementCoordinator];

  if ([UIApp _isSpringBoard])
  {
    v12 = self;
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
    v17 = v3;
  }

  else
  {
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v10 incomingKeyboardFrame];
      v18 = v73.origin.x;
      v19 = v73.origin.y;
      v20 = v73.size.width;
      v21 = v73.size.height;
      if (!CGRectIsEmpty(v73))
      {
        x = v18;
        y = v19;
        width = v20;
        height = v21;
      }

      v22 = [(UIViewController *)self _window];
      v23 = [v22 windowScene];
      v24 = [v23 _coordinateSpace];
      v25 = [(UIViewController *)self _window];
      v26 = [v25 screen];
      v27 = [v26 coordinateSpace];
      [v24 convertRect:v27 toCoordinateSpace:{x, y, width, height}];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      goto LABEL_17;
    }

    v12 = self;
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
    v17 = 0;
  }

  [(UITrackingElementWindowController *)v12 convertRectFromContainerCoordinateSpaceToScreenSpace:v17 viewInRemoteKeyboardWindow:v13, v14, v15, v16];
  v29 = v36;
  v31 = v37;
  v33 = v38;
  v35 = v39;
LABEL_17:
  v40 = [(UIViewController *)self view];
  v41 = [v40 window];
  v42 = [v41 screen];
  [v42 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v74.origin.x = v29;
  v74.origin.y = v31;
  v74.size.width = v33;
  v74.size.height = v35;
  v79.origin.x = v44;
  v79.origin.y = v46;
  v79.size.width = v48;
  v79.size.height = v50;
  v75 = CGRectIntersection(v74, v79);
  v51 = v75.origin.x;
  v52 = v75.origin.y;
  v53 = v75.size.width;
  v54 = v75.size.height;
  if (CGRectIsNull(v75))
  {
    v54 = 0.0;
    v53 = v48;
    v52 = v50;
    v51 = 0.0;
  }

LABEL_19:

  v55 = v51;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (CGRect)_visibleInputViewFrame
{
  v3 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:0];
  [v3 fullInputViewAndAssistantFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UITrackingElementWindowController *)self convertRectFromContainerCoordinateSpaceToScreenSpace:v5, v7, v9, v11];
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
    [(UITrackingElementWindowController *)self _visibleInputViewFrame];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  else
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 containerRootController];
    [v6 visibleInputViewFrame];
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
  v3 = [(UITrackingElementWindowController *)self inputViewSet];
  v4 = [v3 inputView];
  [v4 bounds];
  if (v5 <= 0.0)
  {

    v8 = 0;
LABEL_6:

    return v8;
  }

  v6 = [(UITrackingElementWindowController *)self inputViewSet];
  v7 = [v6 isLocalMinimumHeightInputView];

  if ((v7 & 1) == 0)
  {
    v3 = [(UITrackingElementWindowController *)self placement];
    v8 = [v3 showsInputOrAssistantViews];
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)isTranslating
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
  v3 = [v2 splitKeyboardController];
  v4 = [v3 isTranslating];

  return v4;
}

- (BOOL)isSplitting
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:2];
  v3 = [v2 splitKeyboardController];
  v4 = [v3 isSplitting];

  return v4;
}

- (BOOL)isDragging
{
  v2 = [(UIInputWindowControllerHosting *)self->_hosting itemForPurpose:3];
  v3 = [v2 scrollKeyboardActive];

  return v3;
}

- (void)animateAccessoryViewVisibility:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  v7 = [(UITrackingElementWindowController *)self _inputAccessoryView];
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
    v10[2] = __81__UITrackingElementWindowController_animateAccessoryViewVisibility_withDuration___block_invoke;
    v10[3] = &unk_1E70F36D0;
    v13 = v9;
    v11 = v7;
    v12 = self;
    [UIView animateWithDuration:50331648 delay:v10 options:0 animations:a4 completion:0.0];
  }
}

uint64_t __81__UITrackingElementWindowController_animateAccessoryViewVisibility_withDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 1664);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__UITrackingElementWindowController_animateAccessoryViewVisibility_withDuration___block_invoke_2;
  v4[3] = &__block_descriptor_40_e31_v16__0__UIKBInputBackdropView_8l;
  v4[4] = *(a1 + 48);
  return [v2 performForInputAccessoryBackdropViews:v4];
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
  v7 = _UITrackingElementWindowControllerLogger();
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

  if (![(UITrackingElementWindowController *)self isRotating])
  {
    if (self->_disableInRotating)
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __78__UITrackingElementWindowController_setPlacementChangeDisabled_withPlacement___block_invoke;
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
      [(UITrackingElementWindowController *)self setPlacement:v6];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    self->_disablePlacementChanges = 1;
    self->_disableInRotating = [(UITrackingElementWindowController *)self isRotating:v8];
    goto LABEL_13;
  }

  [(UITrackingElementWindowController *)self setPostRotationPlacement:v6];
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
  if ([(UITrackingElementWindowController *)self isTransitioning])
  {
    v6 = [(UITrackingElementWindowController *)self transientInputViewSet];

    v7 = [(UITrackingElementWindowController *)self currentTransition];
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
    if ([(UITrackingElementWindowController *)self isRotating])
    {
      [(UITrackingElementWindowController *)self postRotationPlacement];
    }

    else
    {
      [(UITrackingElementWindowController *)self placement];
    }
    v19 = ;
    [v20 setPlacementChangeDisabled:1 withPlacement:v19];
  }
}

- (void)candidateBarWillChangeHeight:(double)a3 withDuration:(double)a4
{
  v7 = [(UITrackingElementWindowController *)self placement];
  v8 = [v7 isUndocked];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__UITrackingElementWindowController_candidateBarWillChangeHeight_withDuration___block_invoke;
    v9[3] = &unk_1E70F32F0;
    v9[4] = self;
    *&v9[5] = a3;
    [UIView animateWithDuration:50331648 delay:v9 options:&__block_literal_global_428_0 animations:a4 completion:0.0];
  }
}

uint64_t __79__UITrackingElementWindowController_candidateBarWillChangeHeight_withDuration___block_invoke(uint64_t a1)
{
  v2 = -*(a1 + 40);
  v3 = [*(a1 + 32) placement];
  [v3 setExtendedHeight:v2];

  v4 = *(a1 + 32);
  v5 = [v4 placement];
  [v4 updateVisibilityConstraintsForPlacement:v5];

  v6 = *(a1 + 32);

  return [v6 updateHostingItemsForConstraintChanges];
}

- (void)cancelCurrentTransition
{
  v3 = [(UITrackingElementWindowController *)self currentTransition];

  if (v3)
  {
    [(UITrackingElementWindowController *)self setInputViewsHidden:1];
    v4 = [(UITrackingElementWindowController *)self currentTransition];
    [v4 setCancelled:1];

    v5 = [(UITrackingElementWindowController *)self currentTransition];
    v6 = [v5 animationStyle];
    [v6 cancelInterruptibleAnimations];

    v7 = [(UITrackingElementWindowController *)self currentTransition];
    v8 = [v7 fromPlacement];
    [(UITrackingElementWindowController *)self updateToPlacement:v8 withNormalAnimationsAndNotifications:0];

    [(UITrackingElementWindowController *)self setInputViewsHidden:0];
  }
}

- (BOOL)isTransitioningBetweenKeyboardStates
{
  v2 = [(UITrackingElementWindowController *)self currentTransition];
  v3 = [v2 fromPlacement];
  v4 = [v3 showsKeyboard];
  v5 = [v2 toPlacement];
  v6 = [v5 showsKeyboard];

  return v4 ^ v6;
}

- (id)animationAwarePlacement
{
  v3 = [(UITrackingElementWindowController *)self placementDuringAnimation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UITrackingElementWindowController *)self placementIgnoringRotation];
  }

  v6 = v5;

  return v6;
}

- (id)notificationsFromPlacement
{
  v3 = [(UITrackingElementWindowController *)self postRotationPlacement];

  if (v3)
  {
    v4 = [(UITrackingElementWindowController *)self placementDuringAnimation];
    v5 = [v4 showsInputOrAssistantViews];

    if (v5)
    {
      +[UIInputViewSetPlacementOffScreenDown placement];
    }

    else
    {
      [(UITrackingElementWindowController *)self placementIgnoringRotation];
    }
    v8 = ;
  }

  else
  {
    v6 = [(UITrackingElementWindowController *)self placementBeforeAnimation];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [(UITrackingElementWindowController *)self currentTransition];
      if (v9)
      {
        v10 = [(UITrackingElementWindowController *)self currentTransition];
        v8 = [v10 fromPlacement];
      }

      else
      {
        v8 = [(UITrackingElementWindowController *)self placement];
      }
    }
  }

  return v8;
}

- (id)notificationsToPlacement
{
  v3 = [(UITrackingElementWindowController *)self postRotationPlacement];

  if (v3)
  {
    v4 = [(UITrackingElementWindowController *)self animationAwarePlacement];
  }

  else
  {
    v5 = [(UITrackingElementWindowController *)self currentTransition];
    if (v5)
    {
      v6 = [(UITrackingElementWindowController *)self currentTransition];
      v4 = [v6 toPlacement];
    }

    else
    {
      v4 = [(UITrackingElementWindowController *)self animationAwarePlacement];
    }
  }

  return v4;
}

@end