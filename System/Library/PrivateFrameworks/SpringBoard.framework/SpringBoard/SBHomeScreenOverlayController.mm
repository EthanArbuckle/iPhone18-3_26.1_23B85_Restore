@interface SBHomeScreenOverlayController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)handleEvent:(id)event;
- (BOOL)interceptDismissalGestureForOverlayController:(id)controller;
- (BOOL)isEditingForHomeScreenOverlayViewController:(id)controller;
- (BOOL)isPresented;
- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayViewController:(id)controller;
- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayViewController:(id)controller;
- (NSString)coverSheetIdentifier;
- (SBFOverlayDismissalDelegate)dismissalDelegate;
- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)provider;
- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)provider windowLevel:(double)level windowScene:(id)scene traitsRole:(id)role zStackParticipantIdentifier:(int64_t)identifier screenEdgeSystemGestureType:(unint64_t)type indirectScreenEdgeSystemGestureType:(unint64_t)gestureType scrunchSystemGestureType:(unint64_t)self0 secure:(BOOL)self1;
- (SBHomeScreenOverlayControllerDelegate)delegate;
- (UIViewController)activeSidebarViewController;
- (UIViewController)existingAvocadoVC;
- (double)_directionCoefficient;
- (double)contentWidth;
- (double)finalPresentationProgressForTranslation:(double)translation velocity:(double)velocity initialPresentationProgress:(double)progress fromLeading:(BOOL)leading;
- (double)presentationProgress;
- (double)presentationProgressForTranslation:(double)translation initialPresentationProgress:(double)progress fromLeading:(BOOL)leading;
- (id)_rootViewController;
- (id)backgroundViewForEditingDoneButtonForHomeScreenOverlayViewController:(id)controller;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)testScrollView;
- (int64_t)idleTimerDuration;
- (int64_t)participantState;
- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type;
- (void)_configureDismissGestureRecognizer;
- (void)_dismissLevelAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)_dismissScrollGestureBegan:(id)began;
- (void)_dismissScrollGestureChanged:(id)changed;
- (void)_dismissScrollGestureEndedOrCancelled:(id)cancelled;
- (void)_enumerateHomeScreenOverlayObserversUsingBlock:(id)block;
- (void)_setDisplayLayoutElementActive:(BOOL)active;
- (void)_setHidden:(BOOL)hidden;
- (void)_setHitTestingDisabled:(BOOL)disabled;
- (void)addHomeScreenOverlayObserver:(id)observer;
- (void)addReasonToDisableDismissGestureRecognizer:(id)recognizer;
- (void)animatePresentationProgress:(double)progress withGestureLiftOffVelocity:(double)velocity completionHandler:(id)handler;
- (void)cleanUpAfterSettingPresentationProgress:(double)progress;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)dismissScrollGestureUpdated:(id)updated;
- (void)dismissTapGestureUpdated:(id)updated;
- (void)dismissUsingViewControllerTransitionCoordinator:(id)coordinator;
- (void)homeScreenOverlayViewController:(id)controller setSuppressesEditingStateForListView:(BOOL)view;
- (void)homeScreenOverlayViewWantsToEndEditing:(id)editing;
- (void)homeScreenOverlayViewWantsWidgetEditingViewControllerPresented:(id)presented;
- (void)prepareToSetPresentationProgress:(double)progress fromPresentationProgress:(double)presentationProgress;
- (void)removeReasonToDisableDismissGestureRecognizer:(id)recognizer;
- (void)setPresentationProgress:(double)progress fromLeading:(BOOL)leading interactive:(BOOL)interactive animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation SBHomeScreenOverlayController

- (void)_configureDismissGestureRecognizer
{
  _rootViewController = [(SBHomeScreenOverlayController *)self _rootViewController];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_dismissTapGestureUpdated_];
  dismissTapGestureRecognizer = self->_dismissTapGestureRecognizer;
  self->_dismissTapGestureRecognizer = v3;

  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setDelegate:self];
  view = [_rootViewController view];
  [view addGestureRecognizer:self->_dismissTapGestureRecognizer];

  v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_dismissScrollGestureUpdated_];
  dismissPanGestureRecognizer = self->_dismissPanGestureRecognizer;
  self->_dismissPanGestureRecognizer = v6;

  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setAllowedScrollTypesMask:2];
  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer _setCanPanVertically:0];
  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setDelegate:self];
  view2 = [_rootViewController view];
  [view2 addGestureRecognizer:self->_dismissPanGestureRecognizer];
}

- (id)_rootViewController
{
  window = self->_window;
  if (window)
  {
    rootViewController = [(SBFWindow *)window rootViewController];
  }

  else
  {
    rootViewController = self->_overlayViewController;
  }

  return rootViewController;
}

- (double)contentWidth
{
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  [overlayViewController contentWidth];
  v4 = v3;

  return v4;
}

- (double)presentationProgress
{
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  [overlayViewController presentationProgress];
  v4 = v3;

  return v4;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (SBHomeScreenOverlayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)existingAvocadoVC
{
  WeakRetained = objc_loadWeakRetained(&self->_existingAvocadoVC);

  return WeakRetained;
}

- (int64_t)participantState
{
  [(SBHomeScreenOverlayController *)self presentationProgress];
  if (BSFloatGreaterThanFloat())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)idleTimerDuration
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  if (v2)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPresented
{
  [(SBHomeScreenOverlayController *)self presentationProgress];

  return BSFloatGreaterThanFloat();
}

- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)provider windowLevel:(double)level windowScene:(id)scene traitsRole:(id)role zStackParticipantIdentifier:(int64_t)identifier screenEdgeSystemGestureType:(unint64_t)type indirectScreenEdgeSystemGestureType:(unint64_t)gestureType scrunchSystemGestureType:(unint64_t)self0 secure:(BOOL)self1
{
  providerCopy = provider;
  sceneCopy = scene;
  roleCopy = role;
  v50.receiver = self;
  v50.super_class = SBHomeScreenOverlayController;
  v21 = [(SBHomeScreenOverlayController *)&v50 init];
  if (v21)
  {
    v22 = [[SBHomeScreenOverlayViewController alloc] initWithListLayoutProvider:providerCopy];
    overlayViewController = v21->_overlayViewController;
    v21->_overlayViewController = v22;

    [(SBHomeScreenOverlayViewController *)v21->_overlayViewController setDelegate:v21];
    v21->_screenEdgeSystemGestureType = type;
    v21->_indirectScreenEdgeSystemGestureType = gestureType;
    v21->_scrunchSystemGestureType = systemGestureType;
    if (SBHomeGestureEnabled())
    {
      v24 = objc_opt_class();
      v25 = sceneCopy;
      if (v24)
      {
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v49 = v26;

      v28 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:identifier windowScene:v49];
      homeAffordanceViewController = v21->_homeAffordanceViewController;
      v21->_homeAffordanceViewController = v28;

      [(SBBarSwipeAffordanceViewController *)v21->_homeAffordanceViewController setSuppressAffordance:1];
      [(SBBarSwipeAffordanceViewController *)v21->_homeAffordanceViewController addChildViewController:v21->_overlayViewController];
      view = [(SBHomeScreenOverlayViewController *)v21->_overlayViewController view];
      view2 = [(SBBarSwipeAffordanceViewController *)v21->_homeAffordanceViewController view];
      [view2 addSubview:view];
      [(SBHomeScreenOverlayViewController *)v21->_overlayViewController didMoveToParentViewController:v21->_homeAffordanceViewController];
      [view2 setDelegate:v21];
      [view2 addObserver:v21];
      [view2 setColorBias:2];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v32 addObject:v35];

      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [view trailingAnchor];
      v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v32 addObject:v38];

      topAnchor = [view2 topAnchor];
      topAnchor2 = [view topAnchor];
      v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v32 addObject:v41];

      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v32 addObject:v44];

      [MEMORY[0x277CCAAD0] activateConstraints:v32];
      v27 = v21->_homeAffordanceViewController;
    }

    else
    {
      v27 = v21->_overlayViewController;
    }

    v45 = objc_opt_self();

    v46 = [[v45 alloc] initWithWindowScene:sceneCopy];
    window = v21->_window;
    v21->_window = v46;

    [(SBFWindow *)v21->_window _setRoleHint:roleCopy];
    [(SBFWindow *)v21->_window setWindowLevel:level];
    [(SBFWindow *)v21->_window setRootViewController:v27];
    [(SBHomeScreenOverlayController *)v21 _configureDismissGestureRecognizer];
    [(SBHomeScreenOverlayController *)v21 _setHidden:0];
  }

  return v21;
}

- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBHomeScreenOverlayController;
  v5 = [(SBHomeScreenOverlayController *)&v9 init];
  if (v5)
  {
    v6 = [[SBHomeScreenOverlayViewController alloc] initWithListLayoutProvider:providerCopy];
    overlayViewController = v5->_overlayViewController;
    v5->_overlayViewController = v6;

    [(SBHomeScreenOverlayViewController *)v5->_overlayViewController setDelegate:v5];
    [(SBHomeScreenOverlayController *)v5 _configureDismissGestureRecognizer];
    [(SBHomeScreenOverlayController *)v5 _setHidden:1];
  }

  return v5;
}

- (void)dealloc
{
  [(SBFFrameRateAssertion *)self->_frameRateAssertion invalidate];
  [(BSInvalidatable *)self->_displayLayoutAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBHomeScreenOverlayController;
  [(SBHomeScreenOverlayController *)&v3 dealloc];
}

- (UIViewController)activeSidebarViewController
{
  contentViewController = [(SBHomeScreenOverlayViewController *)self->_overlayViewController contentViewController];
  avocadoViewController = [contentViewController avocadoViewController];

  return avocadoViewController;
}

- (void)animatePresentationProgress:(double)progress withGestureLiftOffVelocity:(double)velocity completionHandler:(id)handler
{
  handlerCopy = handler;
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v10 = v9;
  if (BSFloatEqualToFloat())
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    [(SBHomeScreenOverlayController *)self setAnimatingPresentationProgress:1];
    [(SBFFrameRateAssertion *)self->_frameRateAssertion invalidate];
    frameRateAssertion = self->_frameRateAssertion;
    self->_frameRateAssertion = 0;

    [(SBHomeScreenOverlayController *)self prepareToSetPresentationProgress:progress fromPresentationProgress:v10];
    overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __106__SBHomeScreenOverlayController_animatePresentationProgress_withGestureLiftOffVelocity_completionHandler___block_invoke;
    v18[3] = &unk_2783B3D68;
    v18[4] = self;
    progressCopy = progress;
    v19 = handlerCopy;
    [overlayViewController animatePresentationProgress:v18 withGestureLiftOffVelocity:progress completionHandler:velocity];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __106__SBHomeScreenOverlayController_animatePresentationProgress_withGestureLiftOffVelocity_completionHandler___block_invoke_2;
    v14[3] = &unk_2783C4210;
    v16 = v10;
    progressCopy2 = progress;
    v14[4] = self;
    v15 = overlayViewController;
    v13 = overlayViewController;
    [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v14];
  }
}

uint64_t __106__SBHomeScreenOverlayController_animatePresentationProgress_withGestureLiftOffVelocity_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setAnimatingPresentationProgress:0];
    [*(a1 + 32) cleanUpAfterSettingPresentationProgress:*(a1 + 48)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __106__SBHomeScreenOverlayController_animatePresentationProgress_withGestureLiftOffVelocity_completionHandler___block_invoke_2(double *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a2;
  [v6 overlayController:v4 didChangePresentationProgress:objc_msgSend(v5 newPresentationProgress:"isFromLeading") fromLeading:{v2, v3}];
}

- (void)setPresentationProgress:(double)progress fromLeading:(BOOL)leading interactive:(BOOL)interactive animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  interactiveCopy = interactive;
  leadingCopy = leading;
  handlerCopy = handler;
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  [overlayViewController presentationProgress];
  if ((BSFloatIsZero() & 1) == 0)
  {
    contentViewController = [overlayViewController contentViewController];
    avocadoViewController = [contentViewController avocadoViewController];
    if (avocadoViewController)
    {
      v16 = avocadoViewController;
      isFromLeading = [overlayViewController isFromLeading];

      if (isFromLeading != leadingCopy)
      {
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v18 = MEMORY[0x277D75D18];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __108__SBHomeScreenOverlayController_setPresentationProgress_fromLeading_interactive_animated_completionHandler___block_invoke;
  v30[3] = &unk_2783A9F58;
  v19 = overlayViewController;
  v31 = v19;
  v32 = leadingCopy;
  [v18 _performWithoutRetargetingAnimations:v30];
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v21 = v20;
  if (BSFloatEqualToFloat())
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    if (!self->_frameRateAssertion && interactiveCopy)
    {
      v22 = objc_alloc(MEMORY[0x277D65E70]);
      v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      v23 = [v22 initWithFrameRateRange:1114122 highFrameRateReason:{*&v33.minimum, *&v33.maximum, *&v33.preferred}];
      frameRateAssertion = self->_frameRateAssertion;
      self->_frameRateAssertion = v23;
    }

    [(SBHomeScreenOverlayController *)self prepareToSetPresentationProgress:progress fromPresentationProgress:v21];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __108__SBHomeScreenOverlayController_setPresentationProgress_fromLeading_interactive_animated_completionHandler___block_invoke_2;
    v27[3] = &unk_2783B3D68;
    v27[4] = self;
    progressCopy = progress;
    v28 = handlerCopy;
    [v19 setPresentationProgress:interactiveCopy interactive:animatedCopy animated:v27 completionHandler:progress];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __108__SBHomeScreenOverlayController_setPresentationProgress_fromLeading_interactive_animated_completionHandler___block_invoke_3;
    v25[3] = &unk_2783C4238;
    v25[4] = self;
    *&v25[5] = v21;
    *&v25[6] = progress;
    v26 = leadingCopy;
    [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v25];
  }

LABEL_15:
}

uint64_t __108__SBHomeScreenOverlayController_setPresentationProgress_fromLeading_interactive_animated_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) cleanUpAfterSettingPresentationProgress:*(a1 + 48)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)prepareToSetPresentationProgress:(double)progress fromPresentationProgress:(double)presentationProgress
{
  [(SBHomeScreenOverlayController *)self _setDisplayLayoutElementActive:progress >= 0.5];
  if (progress > 0.0)
  {
    [(SBHomeScreenOverlayController *)self _setHidden:0];
    [(SBHomeScreenOverlayController *)self _addSystemGestureRecognizer];
  }

  else
  {
    [(SBHomeScreenOverlayController *)self _removeSystemGestureRecognizer];
  }

  [(SBHomeScreenOverlayController *)self setDismissing:progress <= 0.0];
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  existingAvocadoVC = [(SBHomeScreenOverlayController *)self existingAvocadoVC];
  contentViewController = [overlayViewController contentViewController];
  avocadoViewController = [contentViewController avocadoViewController];

  _appearState = [overlayViewController _appearState];
  if (existingAvocadoVC)
  {
    v10 = existingAvocadoVC == avocadoViewController;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && _appearState == 2;
  [(SBHomeScreenOverlayController *)self setExistingAvocadoVC:avocadoViewController];
  if (![overlayViewController _appearState] || objc_msgSend(overlayViewController, "_appearState") == 1)
  {
    if (BSFloatIsZero())
    {
      if (![(SBHomeScreenOverlayController *)self isOverlayAppearing])
      {
        overlayViewController2 = [(SBHomeScreenOverlayController *)self overlayViewController];
        _appearState2 = [overlayViewController2 _appearState];

        if (!_appearState2)
        {
          [overlayViewController bs_beginAppearanceTransition:1 animated:1];
          [(SBHomeScreenOverlayController *)self setOverlayAppearing:1];
        }
      }
    }

    if (BSFloatGreaterThanFloat() && [(SBHomeScreenOverlayController *)self isOverlayAppearing])
    {
      overlayViewController3 = [(SBHomeScreenOverlayController *)self overlayViewController];
      [overlayViewController3 bs_endAppearanceTransition:1];

      [(SBHomeScreenOverlayController *)self setOverlayAppearing:0];
    }
  }

  if (v12)
  {
    view = [avocadoViewController view];
    [view setNeedsLayout];

    view2 = [avocadoViewController view];
    [view2 layoutIfNeeded];
  }

  homeAffordanceViewController = [(SBHomeScreenOverlayController *)self homeAffordanceViewController];
  [homeAffordanceViewController setWantsToBeActiveAffordance:progress >= 1.0];

  [(SBHomeScreenOverlayController *)self _setHitTestingDisabled:[(SBHomeScreenOverlayController *)self isDismissing]];
}

- (void)cleanUpAfterSettingPresentationProgress:(double)progress
{
  if (BSFloatIsZero() && ![(SBHomeScreenOverlayController *)self isOverlayAppearing])
  {
    overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
    [overlayViewController bs_beginAppearanceTransition:0 animated:1];

    [(SBHomeScreenOverlayController *)self _setHidden:1];
    overlayViewController2 = [(SBHomeScreenOverlayController *)self overlayViewController];
    [overlayViewController2 bs_endAppearanceTransition:0];
  }

  [(SBHomeScreenOverlayController *)self setExistingAvocadoVC:0];
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    [(SBFFrameRateAssertion *)self->_frameRateAssertion invalidate];
    frameRateAssertion = self->_frameRateAssertion;
    self->_frameRateAssertion = 0;
  }
}

- (double)presentationProgressForTranslation:(double)translation initialPresentationProgress:(double)progress fromLeading:(BOOL)leading
{
  [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  [(SBHomeScreenOverlayController *)self contentWidth];
  BSUIConstrainValueToIntervalWithRubberBand();
  return result;
}

- (double)finalPresentationProgressForTranslation:(double)translation velocity:(double)velocity initialPresentationProgress:(double)progress fromLeading:(BOOL)leading
{
  leadingCopy = leading;
  v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  v12 = velocity / 1000.0 * *MEMORY[0x277D76EC0] / (1.0 - *MEMORY[0x277D76EC0]) + translation;
  [(SBHomeScreenOverlayController *)self contentWidth];
  v14 = v12 / v13;
  if (v11 == leadingCopy)
  {
    v14 = -v14;
  }

  v15 = v14 + progress <= 0.5;
  result = 0.0;
  if (!v15)
  {
    return 1.0;
  }

  return result;
}

- (void)addHomeScreenOverlayObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_dismissLevelAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  dismissalDelegate = [(SBHomeScreenOverlayController *)self dismissalDelegate];
  v7 = dismissalDelegate;
  if (!dismissalDelegate || ([dismissalDelegate interceptDismissalGestureForOverlayController:self] & 1) == 0)
  {
    [(SBHomeScreenOverlayController *)self dismissAnimated:animatedCopy completionHandler:handlerCopy];
  }
}

- (void)dismissAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  isFromLeading = [overlayViewController isFromLeading];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBHomeScreenOverlayController_dismissAnimated_completionHandler___block_invoke;
  v9[3] = &unk_2783C4260;
  v9[4] = self;
  [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v9];
  [(SBHomeScreenOverlayController *)self setPresentationProgress:isFromLeading fromLeading:0 interactive:animatedCopy animated:handlerCopy completionHandler:0.0];
}

- (void)dismissUsingViewControllerTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  overlayViewController2 = [(SBHomeScreenOverlayController *)self overlayViewController];
  isFromLeading = [overlayViewController2 isFromLeading];

  [overlayViewController setFromLeading:isFromLeading];
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v9 = v8;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(SBHomeScreenOverlayController *)self prepareToSetPresentationProgress:0.0 fromPresentationProgress:v9];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke;
    v14[3] = &unk_2783A9488;
    v15 = overlayViewController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke_2;
    v10[3] = &unk_2783C42B0;
    v10[4] = self;
    v11 = v15;
    v12 = v9;
    v13 = isFromLeading;
    [coordinatorCopy animateAlongsideTransition:v14 completion:v10];
  }
}

uint64_t __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentationProgress:0.0];
  v2 = *(a1 + 32);

  return [v2 setSuppressesExtraEditingButtons:1];
}

uint64_t __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cleanUpAfterSettingPresentationProgress:0.0];
  [*(a1 + 40) setSuppressesExtraEditingButtons:0];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke_3;
  v4[3] = &unk_2783C4288;
  v4[4] = v2;
  v4[5] = *(a1 + 48);
  v5 = *(a1 + 56);
  return [v2 _enumerateHomeScreenOverlayObserversUsingBlock:v4];
}

- (void)addReasonToDisableDismissGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v10 = recognizerCopy;
  if (!recognizerCopy)
  {
    [(SBHomeScreenOverlayController *)a2 addReasonToDisableDismissGestureRecognizer:?];
    recognizerCopy = 0;
  }

  reasonsToDisablePanGestureRecognizer = self->_reasonsToDisablePanGestureRecognizer;
  if (!reasonsToDisablePanGestureRecognizer)
  {
    v7 = objc_opt_new();
    v8 = self->_reasonsToDisablePanGestureRecognizer;
    self->_reasonsToDisablePanGestureRecognizer = v7;

    recognizerCopy = v10;
    reasonsToDisablePanGestureRecognizer = self->_reasonsToDisablePanGestureRecognizer;
  }

  v9 = [recognizerCopy copy];
  [(NSCountedSet *)reasonsToDisablePanGestureRecognizer addObject:v9];

  if ([(NSCountedSet *)self->_reasonsToDisablePanGestureRecognizer count])
  {
    [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setEnabled:0];
  }
}

- (void)removeReasonToDisableDismissGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v7 = recognizerCopy;
  if (!recognizerCopy)
  {
    [(SBHomeScreenOverlayController *)a2 removeReasonToDisableDismissGestureRecognizer:?];
    recognizerCopy = 0;
  }

  [(NSCountedSet *)self->_reasonsToDisablePanGestureRecognizer removeObject:recognizerCopy];
  if (![(NSCountedSet *)self->_reasonsToDisablePanGestureRecognizer count])
  {
    reasonsToDisablePanGestureRecognizer = self->_reasonsToDisablePanGestureRecognizer;
    self->_reasonsToDisablePanGestureRecognizer = 0;

    [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setEnabled:1];
  }
}

- (void)_enumerateHomeScreenOverlayObserversUsingBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (active)
  {
    if (!displayLayoutAssertion)
    {
      delegate = [(SBHomeScreenOverlayController *)self delegate];
      if (delegate)
      {
        activeSidebarViewController = [(SBHomeScreenOverlayController *)self activeSidebarViewController];
        if (activeSidebarViewController)
        {
          v7 = [delegate homeScreenOverlayController:self displayLayoutIdentifierForSidebarViewController:activeSidebarViewController];
        }

        else
        {
          v10 = SBLogCommon();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

          if (v11)
          {
            NSLog(&cfstr_ThereReallySho.isa);
          }

          v12 = SBLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            [SBHomeScreenOverlayController _setDisplayLayoutElementActive:v12];
          }

          v7 = *MEMORY[0x277D66F68];
        }

        v9 = v7;
      }

      else
      {
        v9 = *MEMORY[0x277D66F68];
      }

      v13 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:v9];
      window = [(SBHomeScreenOverlayController *)self window];
      [window level];
      [v13 setLevel:v15];

      [v13 setFillsDisplayBounds:1];
      [v13 setLayoutRole:3];
      mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AAA0] sharedInstance];
      v17 = [mEMORY[0x277D0AAA0] addElement:v13];
      v18 = self->_displayLayoutAssertion;
      self->_displayLayoutAssertion = v17;
    }
  }

  else if (displayLayoutAssertion)
  {
    [(BSInvalidatable *)displayLayoutAssertion invalidate];
    v8 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;
  }
}

- (void)_setHitTestingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  window = self->_window;
  if (window)
  {
    view = window;
  }

  else
  {
    view = [(SBHomeScreenOverlayViewController *)self->_overlayViewController view];
  }

  v6 = view;
  if (disabledCopy)
  {
    [(SBFWindow *)view endEditing:0];
    view = v6;
  }

  [(SBFWindow *)view bs_setHitTestingDisabled:disabledCopy];
}

- (void)_setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  window = self->_window;
  if (window)
  {
    view = window;
  }

  else
  {
    view = [(SBHomeScreenOverlayViewController *)self->_overlayViewController view];
  }

  v7 = view;
  if ([(SBFWindow *)view isHidden]!= hiddenCopy)
  {
    [(SBFWindow *)v7 setHidden:hiddenCopy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__SBHomeScreenOverlayController__setHidden___block_invoke;
    v8[3] = &unk_2783C42D8;
    v8[4] = self;
    v9 = hiddenCopy;
    [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v8];
  }
}

- (void)dismissTapGestureUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy state] == 3)
  {
    overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
    view = [overlayViewController view];
    [updatedCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    [overlayViewController contentRect];
    v12.x = v7;
    v12.y = v9;
    if (!CGRectContainsPoint(v13, v12))
    {
      [(SBHomeScreenOverlayController *)self dismissAnimated:1 completionHandler:0];
    }
  }
}

- (double)_directionCoefficient
{
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  if ([overlayViewController isFromLeading])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  return v3;
}

- (void)dismissScrollGestureUpdated:(id)updated
{
  updatedCopy = updated;
  state = [updatedCopy state];
  if ((state - 3) < 3)
  {
    [(SBHomeScreenOverlayController *)self _dismissScrollGestureEndedOrCancelled:updatedCopy];
LABEL_8:
    v6 = updatedCopy;
    goto LABEL_9;
  }

  if (state == 2)
  {
LABEL_7:
    [(SBHomeScreenOverlayController *)self _dismissScrollGestureChanged:updatedCopy];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = updatedCopy;
  if (v5)
  {
    [(SBHomeScreenOverlayController *)self _dismissScrollGestureBegan:updatedCopy];
    goto LABEL_7;
  }

LABEL_9:
}

- (void)_dismissScrollGestureBegan:(id)began
{
  [(SBHomeScreenOverlayController *)self setDismissing:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBHomeScreenOverlayController__dismissScrollGestureBegan___block_invoke;
  v5[3] = &unk_2783C4260;
  v5[4] = self;
  [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v5];
  [(SBHomeScreenOverlayController *)self layerPresentationProgress];
  self->_initialPresentationProgress = v4;
}

- (void)_dismissScrollGestureChanged:(id)changed
{
  changedCopy = changed;
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  isFromLeading = [overlayViewController isFromLeading];

  overlayViewController2 = [(SBHomeScreenOverlayController *)self overlayViewController];
  view = [overlayViewController2 view];
  [changedCopy translationInView:view];
  v10 = v9;

  [(SBHomeScreenOverlayController *)self presentationProgressForTranslation:isFromLeading initialPresentationProgress:v10 fromLeading:self->_initialPresentationProgress];

  [(SBHomeScreenOverlayController *)self setPresentationProgress:isFromLeading fromLeading:1 interactive:1 animated:0 completionHandler:?];
}

- (void)_dismissScrollGestureEndedOrCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  overlayViewController = [(SBHomeScreenOverlayController *)self overlayViewController];
  isFromLeading = [overlayViewController isFromLeading];

  overlayViewController2 = [(SBHomeScreenOverlayController *)self overlayViewController];
  view = [overlayViewController2 view];
  [cancelledCopy velocityInView:view];
  v10 = v9;

  overlayViewController3 = [(SBHomeScreenOverlayController *)self overlayViewController];
  view2 = [overlayViewController3 view];
  [cancelledCopy translationInView:view2];
  v14 = v13;

  [(SBHomeScreenOverlayController *)self finalPresentationProgressForTranslation:isFromLeading velocity:v14 initialPresentationProgress:v10 fromLeading:self->_initialPresentationProgress];

  [SBHomeScreenOverlayController animatePresentationProgress:"animatePresentationProgress:withGestureLiftOffVelocity:completionHandler:" withGestureLiftOffVelocity:0 completionHandler:?];
}

- (id)testScrollView
{
  contentViewController = [(SBHomeScreenOverlayViewController *)self->_overlayViewController contentViewController];
  avocadoViewController = [contentViewController avocadoViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _majorScrollView = [avocadoViewController _majorScrollView];
  }

  else
  {
    _majorScrollView = 0;
  }

  return _majorScrollView;
}

- (BOOL)interceptDismissalGestureForOverlayController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained interceptDismissalGestureForOverlayController:controllerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + qword_21F8A8A98[type - 1]);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  dismissTapGestureRecognizer = [(SBHomeScreenOverlayController *)self dismissTapGestureRecognizer];

  if (dismissTapGestureRecognizer == recognizerCopy)
  {
    leadingSidebarViewController = [(SBHomeScreenOverlayViewController *)self->_overlayViewController leadingSidebarViewController];
    viewIfLoaded = [leadingSidebarViewController viewIfLoaded];

    trailingSidebarViewController = [(SBHomeScreenOverlayViewController *)self->_overlayViewController trailingSidebarViewController];
    viewIfLoaded2 = [trailingSidebarViewController viewIfLoaded];

    [touchCopy locationInView:viewIfLoaded];
    v15 = v14;
    v17 = v16;
    [touchCopy locationInView:viewIfLoaded2];
    v19 = v18;
    v21 = v20;
    v9 = 0;
    if (!viewIfLoaded || ([viewIfLoaded frame], v23.x = v15, v23.y = v17, !CGRectContainsPoint(v25, v23)))
    {
      if (!viewIfLoaded2 || ([viewIfLoaded2 frame], v24.x = v19, v24.y = v21, !CGRectContainsPoint(v26, v24)))
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)handleEvent:(id)event
{
  type = [event type];
  if (type == 27)
  {
    v5 = 1;
    [(SBHomeScreenOverlayController *)self _dismissLevelAnimated:1 completionHandler:0];
    return v5;
  }

  if (type == 25)
  {
    [(SBHomeScreenOverlayController *)self dismissAnimated:0 completionHandler:0];
    return 0;
  }

  if (type != 12)
  {
    return 0;
  }

  v5 = 1;
  [(SBHomeScreenOverlayController *)self dismissAnimated:1 completionHandler:0];
  return v5;
}

- (id)backgroundViewForEditingDoneButtonForHomeScreenOverlayViewController:(id)controller
{
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  v5 = [delegate backgroundViewForEditingDoneButtonForHomeScreenOverlayController:self];

  return v5;
}

- (void)homeScreenOverlayViewWantsToEndEditing:(id)editing
{
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  [delegate homeScreenOverlayWantsToEndEditing:self];
}

- (void)homeScreenOverlayViewWantsWidgetEditingViewControllerPresented:(id)presented
{
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  [delegate homeScreenOverlayWantsWidgetEditingViewControllerPresented:self];
}

- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayViewController:(id)controller
{
  selfCopy = self;
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  LOBYTE(selfCopy) = [delegate showsAddWidgetButtonWhileEditingForHomeScreenOverlayController:selfCopy];

  return selfCopy;
}

- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayViewController:(id)controller
{
  selfCopy = self;
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  LOBYTE(selfCopy) = [delegate showsDoneButtonWhileEditingForHomeScreenOverlayController:selfCopy];

  return selfCopy;
}

- (BOOL)isEditingForHomeScreenOverlayViewController:(id)controller
{
  selfCopy = self;
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  LOBYTE(selfCopy) = [delegate isEditingForHomeScreenOverlayController:selfCopy];

  return selfCopy;
}

- (void)homeScreenOverlayViewController:(id)controller setSuppressesEditingStateForListView:(BOOL)view
{
  viewCopy = view;
  delegate = [(SBHomeScreenOverlayController *)self delegate];
  [delegate homeScreenOverlayController:self setSuppressesEditingStateForListView:viewCopy];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHomeScreenOverlayController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHomeScreenOverlayController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHomeScreenOverlayController *)self succinctDescriptionBuilder];
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v5 = [succinctDescriptionBuilder appendFloat:@"presentationProgress" withName:?];
  v6 = [succinctDescriptionBuilder appendBool:-[SBHomeScreenOverlayController isDismissing](self withName:{"isDismissing"), @"isDismissing"}];
  [(SBFWindow *)self->_window level];
  v7 = [succinctDescriptionBuilder appendFloat:@"windowLevel" withName:?];

  return succinctDescriptionBuilder;
}

- (SBFOverlayDismissalDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

- (void)addReasonToDisableDismissGestureRecognizer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenOverlayController.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"reasonToDisablePanGestureRecognizer"}];
}

- (void)removeReasonToDisableDismissGestureRecognizer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenOverlayController.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"reasonToDisablePanGestureRecognizer"}];
}

@end