@interface SBHomeScreenOverlayController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)handleEvent:(id)a3;
- (BOOL)interceptDismissalGestureForOverlayController:(id)a3;
- (BOOL)isEditingForHomeScreenOverlayViewController:(id)a3;
- (BOOL)isPresented;
- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayViewController:(id)a3;
- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayViewController:(id)a3;
- (NSString)coverSheetIdentifier;
- (SBFOverlayDismissalDelegate)dismissalDelegate;
- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)a3;
- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)a3 windowLevel:(double)a4 windowScene:(id)a5 traitsRole:(id)a6 zStackParticipantIdentifier:(int64_t)a7 screenEdgeSystemGestureType:(unint64_t)a8 indirectScreenEdgeSystemGestureType:(unint64_t)a9 scrunchSystemGestureType:(unint64_t)a10 secure:(BOOL)a11;
- (SBHomeScreenOverlayControllerDelegate)delegate;
- (UIViewController)activeSidebarViewController;
- (UIViewController)existingAvocadoVC;
- (double)_directionCoefficient;
- (double)contentWidth;
- (double)finalPresentationProgressForTranslation:(double)a3 velocity:(double)a4 initialPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (double)presentationProgress;
- (double)presentationProgressForTranslation:(double)a3 initialPresentationProgress:(double)a4 fromLeading:(BOOL)a5;
- (id)_rootViewController;
- (id)backgroundViewForEditingDoneButtonForHomeScreenOverlayViewController:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)testScrollView;
- (int64_t)idleTimerDuration;
- (int64_t)participantState;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (void)_configureDismissGestureRecognizer;
- (void)_dismissLevelAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_dismissScrollGestureBegan:(id)a3;
- (void)_dismissScrollGestureChanged:(id)a3;
- (void)_dismissScrollGestureEndedOrCancelled:(id)a3;
- (void)_enumerateHomeScreenOverlayObserversUsingBlock:(id)a3;
- (void)_setDisplayLayoutElementActive:(BOOL)a3;
- (void)_setHidden:(BOOL)a3;
- (void)_setHitTestingDisabled:(BOOL)a3;
- (void)addHomeScreenOverlayObserver:(id)a3;
- (void)addReasonToDisableDismissGestureRecognizer:(id)a3;
- (void)animatePresentationProgress:(double)a3 withGestureLiftOffVelocity:(double)a4 completionHandler:(id)a5;
- (void)cleanUpAfterSettingPresentationProgress:(double)a3;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)dismissScrollGestureUpdated:(id)a3;
- (void)dismissTapGestureUpdated:(id)a3;
- (void)dismissUsingViewControllerTransitionCoordinator:(id)a3;
- (void)homeScreenOverlayViewController:(id)a3 setSuppressesEditingStateForListView:(BOOL)a4;
- (void)homeScreenOverlayViewWantsToEndEditing:(id)a3;
- (void)homeScreenOverlayViewWantsWidgetEditingViewControllerPresented:(id)a3;
- (void)prepareToSetPresentationProgress:(double)a3 fromPresentationProgress:(double)a4;
- (void)removeReasonToDisableDismissGestureRecognizer:(id)a3;
- (void)setPresentationProgress:(double)a3 fromLeading:(BOOL)a4 interactive:(BOOL)a5 animated:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation SBHomeScreenOverlayController

- (void)_configureDismissGestureRecognizer
{
  v9 = [(SBHomeScreenOverlayController *)self _rootViewController];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_dismissTapGestureUpdated_];
  dismissTapGestureRecognizer = self->_dismissTapGestureRecognizer;
  self->_dismissTapGestureRecognizer = v3;

  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setDelegate:self];
  v5 = [v9 view];
  [v5 addGestureRecognizer:self->_dismissTapGestureRecognizer];

  v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_dismissScrollGestureUpdated_];
  dismissPanGestureRecognizer = self->_dismissPanGestureRecognizer;
  self->_dismissPanGestureRecognizer = v6;

  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setAllowedScrollTypesMask:2];
  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer _setCanPanVertically:0];
  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setDelegate:self];
  v8 = [v9 view];
  [v8 addGestureRecognizer:self->_dismissPanGestureRecognizer];
}

- (id)_rootViewController
{
  window = self->_window;
  if (window)
  {
    v4 = [(SBFWindow *)window rootViewController];
  }

  else
  {
    v4 = self->_overlayViewController;
  }

  return v4;
}

- (double)contentWidth
{
  v2 = [(SBHomeScreenOverlayController *)self overlayViewController];
  [v2 contentWidth];
  v4 = v3;

  return v4;
}

- (double)presentationProgress
{
  v2 = [(SBHomeScreenOverlayController *)self overlayViewController];
  [v2 presentationProgress];
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
    v3 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v3 userInterfaceIdiom] == 1;
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

- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)a3 windowLevel:(double)a4 windowScene:(id)a5 traitsRole:(id)a6 zStackParticipantIdentifier:(int64_t)a7 screenEdgeSystemGestureType:(unint64_t)a8 indirectScreenEdgeSystemGestureType:(unint64_t)a9 scrunchSystemGestureType:(unint64_t)a10 secure:(BOOL)a11
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v50.receiver = self;
  v50.super_class = SBHomeScreenOverlayController;
  v21 = [(SBHomeScreenOverlayController *)&v50 init];
  if (v21)
  {
    v22 = [[SBHomeScreenOverlayViewController alloc] initWithListLayoutProvider:v18];
    overlayViewController = v21->_overlayViewController;
    v21->_overlayViewController = v22;

    [(SBHomeScreenOverlayViewController *)v21->_overlayViewController setDelegate:v21];
    v21->_screenEdgeSystemGestureType = a8;
    v21->_indirectScreenEdgeSystemGestureType = a9;
    v21->_scrunchSystemGestureType = a10;
    if (SBHomeGestureEnabled())
    {
      v24 = objc_opt_class();
      v25 = v19;
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

      v28 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:a7 windowScene:v49];
      homeAffordanceViewController = v21->_homeAffordanceViewController;
      v21->_homeAffordanceViewController = v28;

      [(SBBarSwipeAffordanceViewController *)v21->_homeAffordanceViewController setSuppressAffordance:1];
      [(SBBarSwipeAffordanceViewController *)v21->_homeAffordanceViewController addChildViewController:v21->_overlayViewController];
      v30 = [(SBHomeScreenOverlayViewController *)v21->_overlayViewController view];
      v31 = [(SBBarSwipeAffordanceViewController *)v21->_homeAffordanceViewController view];
      [v31 addSubview:v30];
      [(SBHomeScreenOverlayViewController *)v21->_overlayViewController didMoveToParentViewController:v21->_homeAffordanceViewController];
      [v31 setDelegate:v21];
      [v31 addObserver:v21];
      [v31 setColorBias:2];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = [v31 leadingAnchor];
      v34 = [v30 leadingAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      [v32 addObject:v35];

      v36 = [v31 trailingAnchor];
      v37 = [v30 trailingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      [v32 addObject:v38];

      v39 = [v31 topAnchor];
      v40 = [v30 topAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      [v32 addObject:v41];

      v42 = [v31 bottomAnchor];
      v43 = [v30 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v32 addObject:v44];

      [MEMORY[0x277CCAAD0] activateConstraints:v32];
      v27 = v21->_homeAffordanceViewController;
    }

    else
    {
      v27 = v21->_overlayViewController;
    }

    v45 = objc_opt_self();

    v46 = [[v45 alloc] initWithWindowScene:v19];
    window = v21->_window;
    v21->_window = v46;

    [(SBFWindow *)v21->_window _setRoleHint:v20];
    [(SBFWindow *)v21->_window setWindowLevel:a4];
    [(SBFWindow *)v21->_window setRootViewController:v27];
    [(SBHomeScreenOverlayController *)v21 _configureDismissGestureRecognizer];
    [(SBHomeScreenOverlayController *)v21 _setHidden:0];
  }

  return v21;
}

- (SBHomeScreenOverlayController)initWithListLayoutProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHomeScreenOverlayController;
  v5 = [(SBHomeScreenOverlayController *)&v9 init];
  if (v5)
  {
    v6 = [[SBHomeScreenOverlayViewController alloc] initWithListLayoutProvider:v4];
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
  v2 = [(SBHomeScreenOverlayViewController *)self->_overlayViewController contentViewController];
  v3 = [v2 avocadoViewController];

  return v3;
}

- (void)animatePresentationProgress:(double)a3 withGestureLiftOffVelocity:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v10 = v9;
  if (BSFloatEqualToFloat())
  {
    if (v8)
    {
      v8[2](v8, 1);
    }
  }

  else
  {
    [(SBHomeScreenOverlayController *)self setAnimatingPresentationProgress:1];
    [(SBFFrameRateAssertion *)self->_frameRateAssertion invalidate];
    frameRateAssertion = self->_frameRateAssertion;
    self->_frameRateAssertion = 0;

    [(SBHomeScreenOverlayController *)self prepareToSetPresentationProgress:a3 fromPresentationProgress:v10];
    v12 = [(SBHomeScreenOverlayController *)self overlayViewController];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __106__SBHomeScreenOverlayController_animatePresentationProgress_withGestureLiftOffVelocity_completionHandler___block_invoke;
    v18[3] = &unk_2783B3D68;
    v18[4] = self;
    v20 = a3;
    v19 = v8;
    [v12 animatePresentationProgress:v18 withGestureLiftOffVelocity:a3 completionHandler:a4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __106__SBHomeScreenOverlayController_animatePresentationProgress_withGestureLiftOffVelocity_completionHandler___block_invoke_2;
    v14[3] = &unk_2783C4210;
    v16 = v10;
    v17 = a3;
    v14[4] = self;
    v15 = v12;
    v13 = v12;
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

- (void)setPresentationProgress:(double)a3 fromLeading:(BOOL)a4 interactive:(BOOL)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = [(SBHomeScreenOverlayController *)self overlayViewController];
  [v13 presentationProgress];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v14 = [v13 contentViewController];
    v15 = [v14 avocadoViewController];
    if (v15)
    {
      v16 = v15;
      v17 = [v13 isFromLeading];

      if (v17 != v9)
      {
        if (v12)
        {
          v12[2](v12, 0);
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
  v19 = v13;
  v31 = v19;
  v32 = v9;
  [v18 _performWithoutRetargetingAnimations:v30];
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v21 = v20;
  if (BSFloatEqualToFloat())
  {
    if (v12)
    {
      v12[2](v12, 1);
    }
  }

  else
  {
    if (!self->_frameRateAssertion && v8)
    {
      v22 = objc_alloc(MEMORY[0x277D65E70]);
      v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      v23 = [v22 initWithFrameRateRange:1114122 highFrameRateReason:{*&v33.minimum, *&v33.maximum, *&v33.preferred}];
      frameRateAssertion = self->_frameRateAssertion;
      self->_frameRateAssertion = v23;
    }

    [(SBHomeScreenOverlayController *)self prepareToSetPresentationProgress:a3 fromPresentationProgress:v21];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __108__SBHomeScreenOverlayController_setPresentationProgress_fromLeading_interactive_animated_completionHandler___block_invoke_2;
    v27[3] = &unk_2783B3D68;
    v27[4] = self;
    v29 = a3;
    v28 = v12;
    [v19 setPresentationProgress:v8 interactive:v7 animated:v27 completionHandler:a3];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __108__SBHomeScreenOverlayController_setPresentationProgress_fromLeading_interactive_animated_completionHandler___block_invoke_3;
    v25[3] = &unk_2783C4238;
    v25[4] = self;
    *&v25[5] = v21;
    *&v25[6] = a3;
    v26 = v9;
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

- (void)prepareToSetPresentationProgress:(double)a3 fromPresentationProgress:(double)a4
{
  [(SBHomeScreenOverlayController *)self _setDisplayLayoutElementActive:a3 >= 0.5];
  if (a3 > 0.0)
  {
    [(SBHomeScreenOverlayController *)self _setHidden:0];
    [(SBHomeScreenOverlayController *)self _addSystemGestureRecognizer];
  }

  else
  {
    [(SBHomeScreenOverlayController *)self _removeSystemGestureRecognizer];
  }

  [(SBHomeScreenOverlayController *)self setDismissing:a3 <= 0.0];
  v19 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v6 = [(SBHomeScreenOverlayController *)self existingAvocadoVC];
  v7 = [v19 contentViewController];
  v8 = [v7 avocadoViewController];

  v9 = [v19 _appearState];
  if (v6)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && v9 == 2;
  [(SBHomeScreenOverlayController *)self setExistingAvocadoVC:v8];
  if (![v19 _appearState] || objc_msgSend(v19, "_appearState") == 1)
  {
    if (BSFloatIsZero())
    {
      if (![(SBHomeScreenOverlayController *)self isOverlayAppearing])
      {
        v13 = [(SBHomeScreenOverlayController *)self overlayViewController];
        v14 = [v13 _appearState];

        if (!v14)
        {
          [v19 bs_beginAppearanceTransition:1 animated:1];
          [(SBHomeScreenOverlayController *)self setOverlayAppearing:1];
        }
      }
    }

    if (BSFloatGreaterThanFloat() && [(SBHomeScreenOverlayController *)self isOverlayAppearing])
    {
      v15 = [(SBHomeScreenOverlayController *)self overlayViewController];
      [v15 bs_endAppearanceTransition:1];

      [(SBHomeScreenOverlayController *)self setOverlayAppearing:0];
    }
  }

  if (v12)
  {
    v16 = [v8 view];
    [v16 setNeedsLayout];

    v17 = [v8 view];
    [v17 layoutIfNeeded];
  }

  v18 = [(SBHomeScreenOverlayController *)self homeAffordanceViewController];
  [v18 setWantsToBeActiveAffordance:a3 >= 1.0];

  [(SBHomeScreenOverlayController *)self _setHitTestingDisabled:[(SBHomeScreenOverlayController *)self isDismissing]];
}

- (void)cleanUpAfterSettingPresentationProgress:(double)a3
{
  if (BSFloatIsZero() && ![(SBHomeScreenOverlayController *)self isOverlayAppearing])
  {
    v4 = [(SBHomeScreenOverlayController *)self overlayViewController];
    [v4 bs_beginAppearanceTransition:0 animated:1];

    [(SBHomeScreenOverlayController *)self _setHidden:1];
    v5 = [(SBHomeScreenOverlayController *)self overlayViewController];
    [v5 bs_endAppearanceTransition:0];
  }

  [(SBHomeScreenOverlayController *)self setExistingAvocadoVC:0];
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    [(SBFFrameRateAssertion *)self->_frameRateAssertion invalidate];
    frameRateAssertion = self->_frameRateAssertion;
    self->_frameRateAssertion = 0;
  }
}

- (double)presentationProgressForTranslation:(double)a3 initialPresentationProgress:(double)a4 fromLeading:(BOOL)a5
{
  [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  [(SBHomeScreenOverlayController *)self contentWidth];
  BSUIConstrainValueToIntervalWithRubberBand();
  return result;
}

- (double)finalPresentationProgressForTranslation:(double)a3 velocity:(double)a4 initialPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v6 = a6;
  v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  v12 = a4 / 1000.0 * *MEMORY[0x277D76EC0] / (1.0 - *MEMORY[0x277D76EC0]) + a3;
  [(SBHomeScreenOverlayController *)self contentWidth];
  v14 = v12 / v13;
  if (v11 == v6)
  {
    v14 = -v14;
  }

  v15 = v14 + a5 <= 0.5;
  result = 0.0;
  if (!v15)
  {
    return 1.0;
  }

  return result;
}

- (void)addHomeScreenOverlayObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)_dismissLevelAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(SBHomeScreenOverlayController *)self dismissalDelegate];
  v7 = v6;
  if (!v6 || ([v6 interceptDismissalGestureForOverlayController:self] & 1) == 0)
  {
    [(SBHomeScreenOverlayController *)self dismissAnimated:v4 completionHandler:v8];
  }
}

- (void)dismissAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v8 = [v7 isFromLeading];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBHomeScreenOverlayController_dismissAnimated_completionHandler___block_invoke;
  v9[3] = &unk_2783C4260;
  v9[4] = self;
  [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v9];
  [(SBHomeScreenOverlayController *)self setPresentationProgress:v8 fromLeading:0 interactive:v4 animated:v6 completionHandler:0.0];
}

- (void)dismissUsingViewControllerTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v6 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v7 = [v6 isFromLeading];

  [v5 setFromLeading:v7];
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v9 = v8;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(SBHomeScreenOverlayController *)self prepareToSetPresentationProgress:0.0 fromPresentationProgress:v9];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke;
    v14[3] = &unk_2783A9488;
    v15 = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__SBHomeScreenOverlayController_dismissUsingViewControllerTransitionCoordinator___block_invoke_2;
    v10[3] = &unk_2783C42B0;
    v10[4] = self;
    v11 = v15;
    v12 = v9;
    v13 = v7;
    [v4 animateAlongsideTransition:v14 completion:v10];
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

- (void)addReasonToDisableDismissGestureRecognizer:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    [(SBHomeScreenOverlayController *)a2 addReasonToDisableDismissGestureRecognizer:?];
    v5 = 0;
  }

  reasonsToDisablePanGestureRecognizer = self->_reasonsToDisablePanGestureRecognizer;
  if (!reasonsToDisablePanGestureRecognizer)
  {
    v7 = objc_opt_new();
    v8 = self->_reasonsToDisablePanGestureRecognizer;
    self->_reasonsToDisablePanGestureRecognizer = v7;

    v5 = v10;
    reasonsToDisablePanGestureRecognizer = self->_reasonsToDisablePanGestureRecognizer;
  }

  v9 = [v5 copy];
  [(NSCountedSet *)reasonsToDisablePanGestureRecognizer addObject:v9];

  if ([(NSCountedSet *)self->_reasonsToDisablePanGestureRecognizer count])
  {
    [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setEnabled:0];
  }
}

- (void)removeReasonToDisableDismissGestureRecognizer:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    [(SBHomeScreenOverlayController *)a2 removeReasonToDisableDismissGestureRecognizer:?];
    v5 = 0;
  }

  [(NSCountedSet *)self->_reasonsToDisablePanGestureRecognizer removeObject:v5];
  if (![(NSCountedSet *)self->_reasonsToDisablePanGestureRecognizer count])
  {
    reasonsToDisablePanGestureRecognizer = self->_reasonsToDisablePanGestureRecognizer;
    self->_reasonsToDisablePanGestureRecognizer = 0;

    [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setEnabled:1];
  }
}

- (void)_enumerateHomeScreenOverlayObserversUsingBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setDisplayLayoutElementActive:(BOOL)a3
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (a3)
  {
    if (!displayLayoutAssertion)
    {
      v5 = [(SBHomeScreenOverlayController *)self delegate];
      if (v5)
      {
        v6 = [(SBHomeScreenOverlayController *)self activeSidebarViewController];
        if (v6)
        {
          v7 = [v5 homeScreenOverlayController:self displayLayoutIdentifierForSidebarViewController:v6];
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
      v14 = [(SBHomeScreenOverlayController *)self window];
      [v14 level];
      [v13 setLevel:v15];

      [v13 setFillsDisplayBounds:1];
      [v13 setLayoutRole:3];
      v16 = [MEMORY[0x277D0AAA0] sharedInstance];
      v17 = [v16 addElement:v13];
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

- (void)_setHitTestingDisabled:(BOOL)a3
{
  v3 = a3;
  window = self->_window;
  if (window)
  {
    v5 = window;
  }

  else
  {
    v5 = [(SBHomeScreenOverlayViewController *)self->_overlayViewController view];
  }

  v6 = v5;
  if (v3)
  {
    [(SBFWindow *)v5 endEditing:0];
    v5 = v6;
  }

  [(SBFWindow *)v5 bs_setHitTestingDisabled:v3];
}

- (void)_setHidden:(BOOL)a3
{
  v3 = a3;
  window = self->_window;
  if (window)
  {
    v6 = window;
  }

  else
  {
    v6 = [(SBHomeScreenOverlayViewController *)self->_overlayViewController view];
  }

  v7 = v6;
  if ([(SBFWindow *)v6 isHidden]!= v3)
  {
    [(SBFWindow *)v7 setHidden:v3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__SBHomeScreenOverlayController__setHidden___block_invoke;
    v8[3] = &unk_2783C42D8;
    v8[4] = self;
    v9 = v3;
    [(SBHomeScreenOverlayController *)self _enumerateHomeScreenOverlayObserversUsingBlock:v8];
  }
}

- (void)dismissTapGestureUpdated:(id)a3
{
  v10 = a3;
  if ([v10 state] == 3)
  {
    v4 = [(SBHomeScreenOverlayController *)self overlayViewController];
    v5 = [v4 view];
    [v10 locationInView:v5];
    v7 = v6;
    v9 = v8;

    [v4 contentRect];
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
  v2 = [(SBHomeScreenOverlayController *)self overlayViewController];
  if ([v2 isFromLeading])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  return v3;
}

- (void)dismissScrollGestureUpdated:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(SBHomeScreenOverlayController *)self _dismissScrollGestureEndedOrCancelled:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
LABEL_7:
    [(SBHomeScreenOverlayController *)self _dismissScrollGestureChanged:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(SBHomeScreenOverlayController *)self _dismissScrollGestureBegan:v7];
    goto LABEL_7;
  }

LABEL_9:
}

- (void)_dismissScrollGestureBegan:(id)a3
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

- (void)_dismissScrollGestureChanged:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v6 = [v5 isFromLeading];

  v7 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v8 = [v7 view];
  [v4 translationInView:v8];
  v10 = v9;

  [(SBHomeScreenOverlayController *)self presentationProgressForTranslation:v6 initialPresentationProgress:v10 fromLeading:self->_initialPresentationProgress];

  [(SBHomeScreenOverlayController *)self setPresentationProgress:v6 fromLeading:1 interactive:1 animated:0 completionHandler:?];
}

- (void)_dismissScrollGestureEndedOrCancelled:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v6 = [v5 isFromLeading];

  v7 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v8 = [v7 view];
  [v4 velocityInView:v8];
  v10 = v9;

  v11 = [(SBHomeScreenOverlayController *)self overlayViewController];
  v12 = [v11 view];
  [v4 translationInView:v12];
  v14 = v13;

  [(SBHomeScreenOverlayController *)self finalPresentationProgressForTranslation:v6 velocity:v14 initialPresentationProgress:v10 fromLeading:self->_initialPresentationProgress];

  [SBHomeScreenOverlayController animatePresentationProgress:"animatePresentationProgress:withGestureLiftOffVelocity:completionHandler:" withGestureLiftOffVelocity:0 completionHandler:?];
}

- (id)testScrollView
{
  v2 = [(SBHomeScreenOverlayViewController *)self->_overlayViewController contentViewController];
  v3 = [v2 avocadoViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 _majorScrollView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)interceptDismissalGestureForOverlayController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained interceptDismissalGestureForOverlayController:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  if ((a4 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + qword_21F8A8A98[a4 - 1]);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHomeScreenOverlayController *)self dismissTapGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(SBHomeScreenOverlayViewController *)self->_overlayViewController leadingSidebarViewController];
    v11 = [v10 viewIfLoaded];

    v12 = [(SBHomeScreenOverlayViewController *)self->_overlayViewController trailingSidebarViewController];
    v13 = [v12 viewIfLoaded];

    [v6 locationInView:v11];
    v15 = v14;
    v17 = v16;
    [v6 locationInView:v13];
    v19 = v18;
    v21 = v20;
    v9 = 0;
    if (!v11 || ([v11 frame], v23.x = v15, v23.y = v17, !CGRectContainsPoint(v25, v23)))
    {
      if (!v13 || ([v13 frame], v24.x = v19, v24.y = v21, !CGRectContainsPoint(v26, v24)))
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

- (BOOL)handleEvent:(id)a3
{
  v4 = [a3 type];
  if (v4 == 27)
  {
    v5 = 1;
    [(SBHomeScreenOverlayController *)self _dismissLevelAnimated:1 completionHandler:0];
    return v5;
  }

  if (v4 == 25)
  {
    [(SBHomeScreenOverlayController *)self dismissAnimated:0 completionHandler:0];
    return 0;
  }

  if (v4 != 12)
  {
    return 0;
  }

  v5 = 1;
  [(SBHomeScreenOverlayController *)self dismissAnimated:1 completionHandler:0];
  return v5;
}

- (id)backgroundViewForEditingDoneButtonForHomeScreenOverlayViewController:(id)a3
{
  v4 = [(SBHomeScreenOverlayController *)self delegate];
  v5 = [v4 backgroundViewForEditingDoneButtonForHomeScreenOverlayController:self];

  return v5;
}

- (void)homeScreenOverlayViewWantsToEndEditing:(id)a3
{
  v4 = [(SBHomeScreenOverlayController *)self delegate];
  [v4 homeScreenOverlayWantsToEndEditing:self];
}

- (void)homeScreenOverlayViewWantsWidgetEditingViewControllerPresented:(id)a3
{
  v4 = [(SBHomeScreenOverlayController *)self delegate];
  [v4 homeScreenOverlayWantsWidgetEditingViewControllerPresented:self];
}

- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayViewController:(id)a3
{
  v3 = self;
  v4 = [(SBHomeScreenOverlayController *)self delegate];
  LOBYTE(v3) = [v4 showsAddWidgetButtonWhileEditingForHomeScreenOverlayController:v3];

  return v3;
}

- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayViewController:(id)a3
{
  v3 = self;
  v4 = [(SBHomeScreenOverlayController *)self delegate];
  LOBYTE(v3) = [v4 showsDoneButtonWhileEditingForHomeScreenOverlayController:v3];

  return v3;
}

- (BOOL)isEditingForHomeScreenOverlayViewController:(id)a3
{
  v3 = self;
  v4 = [(SBHomeScreenOverlayController *)self delegate];
  LOBYTE(v3) = [v4 isEditingForHomeScreenOverlayController:v3];

  return v3;
}

- (void)homeScreenOverlayViewController:(id)a3 setSuppressesEditingStateForListView:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBHomeScreenOverlayController *)self delegate];
  [v6 homeScreenOverlayController:self setSuppressesEditingStateForListView:v4];
}

- (id)succinctDescription
{
  v2 = [(SBHomeScreenOverlayController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHomeScreenOverlayController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHomeScreenOverlayController *)self succinctDescriptionBuilder];
  [(SBHomeScreenOverlayController *)self presentationProgress];
  v5 = [v4 appendFloat:@"presentationProgress" withName:?];
  v6 = [v4 appendBool:-[SBHomeScreenOverlayController isDismissing](self withName:{"isDismissing"), @"isDismissing"}];
  [(SBFWindow *)self->_window level];
  v7 = [v4 appendFloat:@"windowLevel" withName:?];

  return v4;
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