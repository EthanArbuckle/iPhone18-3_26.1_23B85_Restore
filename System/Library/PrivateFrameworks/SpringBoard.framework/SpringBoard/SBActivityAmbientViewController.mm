@interface SBActivityAmbientViewController
- (BOOL)_activityHasDifferentAlertSceneTarget:(id)target;
- (BOOL)_canTransitionActivityItem:(id)item forTransitionType:(int64_t)type;
- (BOOL)_isActiveActivityItem:(id)item;
- (BOOL)_itemIsFirstPartyActivity:(id)activity;
- (BOOL)_layerHasGaussianBlurFilter:(id)filter;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_compactOverlayFrameForContentSize:(CGSize)size;
- (SBActivityAmbientViewController)initWithPrimaryActivityItem:(id)item overlayMode:(int64_t)mode;
- (SBActivityAmbientViewControllerDelegate)delegate;
- (double)_blurWeightingForFullOverlayDismissalWithTranslation:(double)translation;
- (double)_cornerRadiusForFullOverlayDismissalWithTranslation:(double)translation;
- (double)_scaleForFullOverlayDismissalWithTranslation:(double)translation;
- (id)_addNewSwitchingTransitionViewBelowSubview:(id)subview;
- (id)_ambientActivitySettings;
- (id)_animationSettingsForFullOverlayDrag;
- (id)_animationSettingsForFullOverlayDragCancel;
- (id)_animationSettingsForFullOverlayTransitionYCurve;
- (id)_animationSettingsForTransitionType:(int64_t)type;
- (id)_nextSecondaryActivityItemForTransitionType:(int64_t)type;
- (id)_sceneTargetBundleIdentifierForItem:(id)item configuringForAlert:(BOOL)alert;
- (void)_addDismissGesture;
- (void)_addGaussianBlurToLayer:(id)layer inputRadius:(double)radius;
- (void)_addNewBackgroundBlurMaterialViewWithInitialWeighting:(double)weighting hidden:(BOOL)hidden;
- (void)_addNewCompactOverlayTransitionViewWithParentView:(id)view alpha:(double)alpha;
- (void)_addNewFullOverlayTransitionBlurMaterialViewWithParentView:(id)view initialWeighting:(double)weighting hidden:(BOOL)hidden;
- (void)_addOverlayForPrimaryActivity;
- (void)_addSecondaryActivityItemIfAvailable;
- (void)_animatePresentationOfCompactOverlayWithCompactViewController:(id)controller completion:(id)completion;
- (void)_animatePresentationOfFullOverlayWithViewController:(id)controller completion:(id)completion;
- (void)_animateTransitionToBecomeNewPrimaryAcivityWithItem:(id)item transitionType:(int64_t)type fullOverlayViewController:(id)controller compactOverlayViewControllerForTransition:(id)transition oldFullViewController:(id)viewController oldCompactViewController:(id)compactViewController completion:(id)completion;
- (void)_animateTransitionToCompactOverlayForItem:(id)item transitionType:(int64_t)type compactOverlayViewController:(id)controller completion:(id)completion;
- (void)_animateTransitionToFullOverlayForPrimaryActivityItem:(id)item transitionType:(int64_t)type fullOverlayViewControllerForTransition:(id)transition oldCompactOverlayViewController:(id)controller completion:(id)completion;
- (void)_beginFullOverlayDragWithTranslation:(CGPoint)translation;
- (void)_beginTransitionForActivityItem:(id)item transitionType:(int64_t)type configuringForAlerting:(BOOL)alerting withCompletion:(id)completion;
- (void)_cancelFullOverlayDrag;
- (void)_cleanupBackgroundBlurViewIfNecessary;
- (void)_cleanupCompactViewController:(id)controller;
- (void)_cleanupCurrentCompactOverlayViewController;
- (void)_cleanupCurrentFullOverlayViewController;
- (void)_cleanupFullViewController:(id)controller;
- (void)_cleanupSwitchingTransitionView;
- (void)_cleanupTransitionBlurViewIfNecessary;
- (void)_compactOverlayViewControllerForItem:(id)item completion:(id)completion;
- (void)_didUpdateVisibleActivityItems;
- (void)_dismissCompactOverlayForActivityEnding:(BOOL)ending completion:(id)completion;
- (void)_dismissCompactOverlayWithView:(id)view forActivityEnding:(BOOL)ending completion:(id)completion;
- (void)_dismissFullOverlayWithCompletion:(id)completion;
- (void)_endAndCleanupTransitionForActivityItem:(id)item forTransitionType:(int64_t)type compactOverlayViewController:(id)controller fullOverlayViewController:(id)viewController completion:(id)completion;
- (void)_fullOverlayViewControllerForItem:(id)item configuringForAlert:(BOOL)alert completion:(id)completion;
- (void)_handleDismissGesture:(id)gesture;
- (void)_handleDismissGestureBegan:(id)began;
- (void)_handleDismissGestureChanged:(id)changed;
- (void)_handleDismissGestureEnded:(id)ended;
- (void)_layoutCompactOverlayIfNecessaryWithView:(id)view frame:(CGRect)frame;
- (void)_layoutFullOverlayWithActivityView:(id)view;
- (void)_prepareFullOverlayViewForDragWithLocation:(CGPoint)location;
- (void)_removeDismissGesture;
- (void)_resetPrimaryActivityItemWithCompletion:(id)completion;
- (void)_setAnchorPointForDrag:(CGPoint)drag forView:(id)view;
- (void)_setPrimaryActivityItem:(id)item;
- (void)_setSecondaryActivityItem:(id)item;
- (void)_switchToAlertSceneForActivityItem:(id)item;
- (void)_transitionOverlayForActivityItem:(id)item withTransitionType:(int64_t)type configuringForAlerting:(BOOL)alerting withCompletion:(id)completion;
- (void)_updateAudioCategoriesDisablingVolumeHUD;
- (void)_updateCompactActivityOverlayWithItem:(id)item withCompletion:(id)completion;
- (void)_updateFullActivityOverlayWithItem:(id)item configuringForAlert:(BOOL)alert;
- (void)activityViewController:(id)controller didSetIdleTimerDisabled:(BOOL)disabled;
- (void)activityViewControllerContentRequestsCancellingGesture:(id)gesture;
- (void)activityViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:(id)d;
- (void)addOverlayForPrimaryActivityItem:(id)item withOverlayMode:(int64_t)mode;
- (void)addOverlayForSecondaryActivityItem:(id)item;
- (void)alertActivityItem:(id)item withAlertBlock:(id)block;
- (void)alertDidDismissForActivityItem:(id)item completion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)invalidate;
- (void)loadView;
- (void)removeOverlayForActivityItem:(id)item withCompletion:(id)completion;
- (void)setCompactOverlayHidden:(BOOL)hidden;
- (void)transitionToCompactOverlayModeWithCompletion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityAmbientViewController

- (SBActivityAmbientViewController)initWithPrimaryActivityItem:(id)item overlayMode:(int64_t)mode
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = SBActivityAmbientViewController;
  v7 = [(SBActivityAmbientViewController *)&v12 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_overlayMode = mode;
    v9 = objc_opt_new();
    itemsWithSwappedScenes = v8->_itemsWithSwappedScenes;
    v8->_itemsWithSwappedScenes = v9;

    [(SBActivityAmbientViewController *)v8 _setPrimaryActivityItem:itemCopy];
  }

  return v8;
}

- (void)dealloc
{
  [(SBActivityAmbientViewController *)self _removeDismissGesture];
  v3.receiver = self;
  v3.super_class = SBActivityAmbientViewController;
  [(SBActivityAmbientViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D65F80]);
  [(SBActivityAmbientViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBActivityAmbientViewController;
  [(SBActivityAmbientViewController *)&v4 viewDidLoad];
  [(SBActivityAmbientViewController *)self _addOverlayForPrimaryActivity];
  view = [(SBActivityAmbientViewController *)self view];
  [view setAccessibilityIdentifier:@"sb-activity-ambient-view"];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBActivityAmbientViewController;
  [(SBActivityAmbientViewController *)&v6 viewWillLayoutSubviews];
  compactOverlayViewController = self->_compactOverlayViewController;
  if (compactOverlayViewController)
  {
    [(SBActivityAmbientCompactOverlayViewController *)compactOverlayViewController contentSize];
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (!self->_isAnimatingTransition)
  {
    [(SBActivityAmbientViewController *)self _compactOverlayFrameForContentSize:v4, v5];
    [(SBActivityAmbientViewController *)self _layoutCompactOverlayIfNecessaryWithView:0 frame:?];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBActivityAmbientViewController;
  [(SBActivityAmbientViewController *)&v4 viewWillAppear:appear];
  [(SBActivityAmbientViewController *)self _addDismissGesture];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBActivityAmbientViewController;
  [(SBActivityAmbientViewController *)&v4 viewWillDisappear:disappear];
  [(SBActivityAmbientViewController *)self _cleanupCurrentCompactOverlayViewController];
  [(SBActivityAmbientViewController *)self _cleanupCurrentFullOverlayViewController];
  [(SBActivityAmbientViewController *)self _cleanupTransitionBlurViewIfNecessary];
  [(SBActivityAmbientViewController *)self _cleanupBackgroundBlurViewIfNecessary];
  [(SBActivityAmbientViewController *)self _removeDismissGesture];
}

- (void)addOverlayForPrimaryActivityItem:(id)item withOverlayMode:(int64_t)mode
{
  v10 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = SBLogActivity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] adding ambient overlay for primary item", &v8, 0xCu);
  }

  [(SBActivityAmbientViewController *)self _transitionOverlayForActivityItem:itemCopy withTransitionType:3 configuringForAlerting:0 withCompletion:0];
}

- (void)addOverlayForSecondaryActivityItem:(id)item
{
  v10 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] adding ambient overlay for secondary item", &v8, 0xCu);
  }

  [(SBActivityAmbientViewController *)self _setSecondaryActivityItem:itemCopy];
  secondaryActivityItem = self->_secondaryActivityItem;
  if (secondaryActivityItem)
  {
    [(SBActivityAmbientViewController *)self _updateCompactActivityOverlayWithItem:secondaryActivityItem withCompletion:0];
  }
}

- (void)transitionToCompactOverlayModeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_primaryActivityItem && !self->_overlayMode)
  {
    v5 = completionCopy;
    [SBActivityAmbientViewController _transitionOverlayForActivityItem:"_transitionOverlayForActivityItem:withTransitionType:configuringForAlerting:withCompletion:" withTransitionType:? configuringForAlerting:? withCompletion:?];
    completionCopy = v5;
  }
}

- (void)alertActivityItem:(id)item withAlertBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  blockCopy = block;
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SBActivityItem *)itemCopy identifier];
    v20 = 138543362;
    v21 = identifier;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ambient item alerting", &v20, 0xCu);
  }

  primaryActivityItem = self->_primaryActivityItem;
  if (primaryActivityItem == itemCopy)
  {
    activityItem = [(SBActivityViewController *)self->_fullOverlayViewController activityItem];
    v11 = activityItem == itemCopy || self->_isCreatingFullScreenOverlay;

    primaryActivityItem = self->_primaryActivityItem;
  }

  else
  {
    v11 = 0;
  }

  if (primaryActivityItem == itemCopy)
  {
    activityItem2 = [(SBActivityViewController *)self->_compactOverlayViewController activityItem];
    v13 = activityItem2 == itemCopy;
  }

  else
  {
    v13 = 0;
  }

  secondaryActivityItem = self->_secondaryActivityItem;
  v16 = [(SBActivityAmbientViewController *)self _activityHasDifferentAlertSceneTarget:itemCopy];
  if (v11)
  {
    if (v16)
    {
      [(NSMutableSet *)self->_itemsWithSwappedScenes addObject:itemCopy];
      [(SBActivityAmbientViewController *)self _switchToAlertSceneForActivityItem:itemCopy];
    }
  }

  else
  {
    v17 = secondaryActivityItem == itemCopy || v13;
    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    if ((v17 & 1) == 0)
    {
      delegate = [(SBActivityAmbientViewController *)self delegate];
      [delegate activityAmbientViewController:self removePendingItem:itemCopy];

      v18 = 4;
    }

    if (([(NSMutableSet *)self->_itemsWithSwappedScenes containsObject:itemCopy]& 1) == 0)
    {
      [(SBActivityAmbientViewController *)self _transitionOverlayForActivityItem:itemCopy withTransitionType:v18 configuringForAlerting:1 withCompletion:0];
    }
  }

  blockCopy[2](blockCopy);
}

- (void)alertDidDismissForActivityItem:(id)item completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  if ([(NSMutableSet *)self->_itemsWithSwappedScenes containsObject:itemCopy])
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [itemCopy identifier];
      *buf = 138543362;
      v13 = identifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ambient item restoring swapped scene", buf, 0xCu);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__SBActivityAmbientViewController_alertDidDismissForActivityItem_completion___block_invoke;
    v10[3] = &unk_2783A92D8;
    v10[4] = self;
    v11 = itemCopy;
    [(SBActivityAmbientViewController *)self _dismissFullOverlayWithCompletion:v10];
  }

  else
  {
    [(SBActivityAmbientViewController *)self transitionToCompactOverlayModeWithCompletion:completionCopy];
  }
}

- (void)removeOverlayForActivityItem:(id)item withCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  activityItem = [(SBActivityViewController *)self->_fullOverlayViewController activityItem];

  activityItem2 = [(SBActivityViewController *)self->_compactOverlayViewController activityItem];

  primaryActivityItem = self->_primaryActivityItem;
  secondaryActivityItem = self->_secondaryActivityItem;
  [(NSMutableSet *)self->_itemsWithSwappedScenes removeObject:itemCopy];
  if (primaryActivityItem == itemCopy)
  {
    [(SBActivityAmbientViewController *)self _setPrimaryActivityItem:0];
  }

  if (secondaryActivityItem == itemCopy)
  {
    [(SBActivityAmbientViewController *)self _setSecondaryActivityItem:0];
  }

  if (activityItem == itemCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__SBActivityAmbientViewController_removeOverlayForActivityItem_withCompletion___block_invoke;
    v16[3] = &unk_2783A98A0;
    v16[4] = self;
    v12 = &v17;
    v17 = completionCopy;
    [(SBActivityAmbientViewController *)self _dismissFullOverlayWithCompletion:v16];
    goto LABEL_9;
  }

  if (activityItem2 == itemCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__SBActivityAmbientViewController_removeOverlayForActivityItem_withCompletion___block_invoke_2;
    v13[3] = &unk_2783AA1E8;
    v13[4] = self;
    v12 = &v14;
    v14 = itemCopy;
    v15 = completionCopy;
    [(SBActivityAmbientViewController *)self _dismissCompactOverlayForActivityEnding:1 completion:v13];

LABEL_9:
  }
}

uint64_t __79__SBActivityAmbientViewController_removeOverlayForActivityItem_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cleanupCurrentCompactOverlayViewController];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == v2[138])
  {
    v6 = *(a1 + 48);

    return [v2 _resetPrimaryActivityItemWithCompletion:v6];
  }

  else
  {
    if (v3 == v2[139])
    {
      [v2 _addSecondaryActivityItemIfAvailable];
    }

    result = *(a1 + 48);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

- (void)setCompactOverlayHidden:(BOOL)hidden
{
  compactOverlayViewController = self->_compactOverlayViewController;
  if (compactOverlayViewController)
  {
    hiddenCopy = hidden;
    view = [(SBActivityAmbientCompactOverlayViewController *)compactOverlayViewController view];
    v6 = !hiddenCopy;
    v7 = 1.0;
    v8 = MEMORY[0x277D75D18];
    v10[1] = 3221225472;
    v10[0] = MEMORY[0x277D85DD0];
    v10[2] = __59__SBActivityAmbientViewController_setCompactOverlayHidden___block_invoke;
    v10[3] = &unk_2783A8BC8;
    if (!v6)
    {
      v7 = 0.0;
    }

    v11 = view;
    v12 = v7;
    v9 = view;
    [v8 _animateUsingSpringWithDuration:0 delay:v10 options:0 mass:0.1 stiffness:0.0 damping:0.0 initialVelocity:0.0 animations:50.0 completion:0.0];
  }
}

- (void)_setPrimaryActivityItem:(id)item
{
  itemCopy = item;
  if (self->_primaryActivityItem != itemCopy)
  {
    v7 = itemCopy;
    objc_storeStrong(&self->_primaryActivityItem, item);
    delegate = [(SBActivityAmbientViewController *)self delegate];
    [delegate activityAmbientViewController:self removePendingItem:v7];

    [(SBActivityAmbientViewController *)self _didUpdateVisibleActivityItems];
    itemCopy = v7;
  }
}

- (void)_setSecondaryActivityItem:(id)item
{
  itemCopy = item;
  if (self->_secondaryActivityItem != itemCopy)
  {
    v7 = itemCopy;
    objc_storeStrong(&self->_secondaryActivityItem, item);
    delegate = [(SBActivityAmbientViewController *)self delegate];
    [delegate activityAmbientViewController:self removePendingItem:v7];

    [(SBActivityAmbientViewController *)self _didUpdateVisibleActivityItems];
    itemCopy = v7;
  }
}

- (void)_addOverlayForPrimaryActivity
{
  if (self->_primaryActivityItem)
  {
    overlayMode = self->_overlayMode;
    if (overlayMode == 1)
    {
      [SBActivityAmbientViewController _updateCompactActivityOverlayWithItem:"_updateCompactActivityOverlayWithItem:withCompletion:" withCompletion:?];
    }

    else if (!overlayMode)
    {
      [SBActivityAmbientViewController _updateFullActivityOverlayWithItem:"_updateFullActivityOverlayWithItem:configuringForAlert:" configuringForAlert:?];
    }
  }
}

- (void)_updateCompactActivityOverlayWithItem:(id)item withCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    *buf = 138543362;
    v14 = identifier;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] adding compact ambient overlay", buf, 0xCu);
  }

  delegate = [(SBActivityAmbientViewController *)self delegate];
  [delegate activityAmbientViewController:self removePendingItem:itemCopy];

  if (self->_compactOverlayViewController)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__SBActivityAmbientViewController__updateCompactActivityOverlayWithItem_withCompletion___block_invoke;
    v11[3] = &unk_2783B5B20;
    v11[4] = self;
    v12 = completionCopy;
    [(SBActivityAmbientViewController *)self _compactOverlayViewControllerForItem:itemCopy completion:v11];
  }
}

uint64_t __88__SBActivityAmbientViewController__updateCompactActivityOverlayWithItem_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v11 = v4;
    objc_storeStrong((*(a1 + 32) + 1152), a2);
    v5 = [v11 view];
    [v11 cornerRadius];
    [v5 _setContinuousCornerRadius:?];

    v6 = *(a1 + 32);
    v7 = [v11 view];
    v8 = *(a1 + 32);
    [v11 contentSize];
    [v8 _compactOverlayFrameForContentSize:?];
    [v6 _layoutCompactOverlayIfNecessaryWithView:v7 frame:?];

    [*(a1 + 32) _animatePresentationOfCompactOverlayWithCompactViewController:v11 completion:*(a1 + 40)];
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)_updateFullActivityOverlayWithItem:(id)item configuringForAlert:(BOOL)alert
{
  alertCopy = alert;
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = SBLogActivity();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    *buf = 138543362;
    v13 = identifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] adding full ambient overlay", buf, 0xCu);
  }

  delegate = [(SBActivityAmbientViewController *)self delegate];
  [delegate activityAmbientViewController:self removePendingItem:itemCopy];
  if (!self->_fullOverlayViewController)
  {
    self->_isCreatingFullScreenOverlay = 1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__SBActivityAmbientViewController__updateFullActivityOverlayWithItem_configuringForAlert___block_invoke;
    v10[3] = &unk_2783B5B48;
    v10[4] = self;
    v11 = delegate;
    [(SBActivityAmbientViewController *)self _fullOverlayViewControllerForItem:itemCopy configuringForAlert:alertCopy completion:v10];
  }
}

void __90__SBActivityAmbientViewController__updateFullActivityOverlayWithItem_configuringForAlert___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  *(*(a1 + 32) + 1096) = 0;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 1144), a2);
    v5 = *(a1 + 32);
    v6 = [v4 view];
    [v5 _layoutFullOverlayWithActivityView:v6];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__SBActivityAmbientViewController__updateFullActivityOverlayWithItem_configuringForAlert___block_invoke_2;
    v10[3] = &unk_2783A92D8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v7 _animatePresentationOfFullOverlayWithViewController:v4 completion:v10];
  }
}

uint64_t __90__SBActivityAmbientViewController__updateFullActivityOverlayWithItem_configuringForAlert___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) activityAmbientViewControllerResetIdleTimerBehavior:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 _updateResolvedPreferences];
}

- (void)_fullOverlayViewControllerForItem:(id)item configuringForAlert:(BOOL)alert completion:(id)completion
{
  alertCopy = alert;
  itemCopy = item;
  completionCopy = completion;
  v10 = [(SBActivityAmbientViewController *)self _sceneTargetBundleIdentifierForItem:itemCopy configuringForAlert:alertCopy];
  v11 = [(SBActivityViewController *)[SBActivityAmbientFullOverlayViewController alloc] initWithActivityItem:itemCopy sceneType:2 payloadID:0 targetBundleIdentifier:v10];
  view = [(SBActivityAmbientFullOverlayViewController *)v11 view];
  [view setClipsToBounds:1];

  view2 = [(SBActivityAmbientFullOverlayViewController *)v11 view];
  [view2 setAlpha:0.0];

  view3 = [(SBActivityAmbientFullOverlayViewController *)v11 view];
  v15 = MEMORY[0x277CCACA8];
  descriptor = [itemCopy descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
  v18 = [v15 stringWithFormat:@"sb-activity-ambient-full-view, bundleIdentifier:%@", platterTargetBundleIdentifier];
  [view3 setAccessibilityIdentifier:v18];

  [(SBActivityViewController *)v11 setDelegate:self];
  [(SBActivityViewController *)v11 setPresentationMode:1];
  [(SBActivityViewController *)v11 setVisibility:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__SBActivityAmbientViewController__fullOverlayViewControllerForItem_configuringForAlert_completion___block_invoke;
  v22[3] = &unk_2783B5B98;
  v23 = itemCopy;
  selfCopy = self;
  v25 = v11;
  v26 = completionCopy;
  v19 = v11;
  v20 = completionCopy;
  v21 = itemCopy;
  [(SBActivityViewController *)v19 ensureContent:MEMORY[0x277D85CD0] queue:v22 completion:1.79769313e308];
}

void __100__SBActivityAmbientViewController__fullOverlayViewControllerForItem_configuringForAlert_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogActivity();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __100__SBActivityAmbientViewController__fullOverlayViewControllerForItem_configuringForAlert_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __100__SBActivityAmbientViewController__fullOverlayViewControllerForItem_configuringForAlert_completion___block_invoke_30;
    v7[3] = &unk_2783B5B70;
    v7[4] = v6;
    v8 = v5;
    v9 = *(a1 + 56);
    [v6 bs_addChildViewController:v8 animated:0 transitionBlock:v7];
  }
}

void __100__SBActivityAmbientViewController__fullOverlayViewControllerForItem_configuringForAlert_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 view];
  v5 = [*(*(a1 + 32) + 1152) view];
  v6 = [*(a1 + 40) view];
  if (v5)
  {
    [v7 insertSubview:v6 belowSubview:v5];
  }

  else
  {
    [v7 addSubview:v6];
  }

  v4[2](v4);

  (*(*(a1 + 48) + 16))();
}

- (void)_compactOverlayViewControllerForItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v8 = [(SBActivityViewController *)[SBActivityAmbientCompactOverlayViewController alloc] initWithActivityItem:itemCopy sceneType:3 payloadID:0];
  view = [(SBActivityAmbientCompactOverlayViewController *)v8 view];
  [view setClipsToBounds:1];

  view2 = [(SBActivityAmbientCompactOverlayViewController *)v8 view];
  [view2 setAlpha:0.0];

  view3 = [(SBActivityAmbientCompactOverlayViewController *)v8 view];
  v12 = MEMORY[0x277CCACA8];
  descriptor = [itemCopy descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
  v15 = [v12 stringWithFormat:@"sb-activity-ambient-compact-view, bundleIdentifier:%@", platterTargetBundleIdentifier];
  [view3 setAccessibilityIdentifier:v15];

  [(SBActivityViewController *)v8 setDelegate:self];
  [(SBActivityAmbientCompactOverlayViewController *)v8 setCompactOverlayDelegate:self];
  [(SBActivityViewController *)v8 setPresentationMode:1];
  [(SBActivityViewController *)v8 setVisibility:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__SBActivityAmbientViewController__compactOverlayViewControllerForItem_completion___block_invoke;
  v19[3] = &unk_2783B5B98;
  v20 = itemCopy;
  v21 = v8;
  selfCopy = self;
  v23 = completionCopy;
  v16 = v8;
  v17 = completionCopy;
  v18 = itemCopy;
  [(SBActivityViewController *)v16 ensureContent:MEMORY[0x277D85CD0] queue:v19 completion:1.79769313e308];
}

void __83__SBActivityAmbientViewController__compactOverlayViewControllerForItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogActivity();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__SBActivityAmbientViewController__compactOverlayViewControllerForItem_completion___block_invoke_cold_1(a1);
    }

    v5 = *(*(a1 + 56) + 16);
  }

  else
  {
    v6 = [*(a1 + 40) view];
    [*(a1 + 40) cornerRadius];
    [v6 _setContinuousCornerRadius:?];

    [*(a1 + 48) bs_addChildViewController:*(a1 + 40)];
    v5 = *(*(a1 + 56) + 16);
  }

  v5();
}

- (void)_animatePresentationOfCompactOverlayWithCompactViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  view = [controller view];
  v7 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__SBActivityAmbientViewController__animatePresentationOfCompactOverlayWithCompactViewController_completion___block_invoke;
  v16[3] = &unk_2783A8C18;
  v8 = view;
  v17 = v8;
  [v7 performWithoutAnimation:v16];
  v9 = MEMORY[0x277D75D18];
  v13 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__SBActivityAmbientViewController__animatePresentationOfCompactOverlayWithCompactViewController_completion___block_invoke_2;
  v14[3] = &unk_2783A8C18;
  v15 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __108__SBActivityAmbientViewController__animatePresentationOfCompactOverlayWithCompactViewController_completion___block_invoke_3;
  v12[3] = &unk_2783A9C70;
  v10 = completionCopy;
  v11 = v8;
  [v9 _animateUsingSpringWithDuration:0 delay:v14 options:v12 mass:0.8888 stiffness:0.0 damping:2.0 initialVelocity:315.827 animations:34.0214 completion:0.0];
}

uint64_t __108__SBActivityAmbientViewController__animatePresentationOfCompactOverlayWithCompactViewController_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) setHidden:0];
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.2, 0.2);
  return [v2 setTransform:&v4];
}

uint64_t __108__SBActivityAmbientViewController__animatePresentationOfCompactOverlayWithCompactViewController_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t __108__SBActivityAmbientViewController__animatePresentationOfCompactOverlayWithCompactViewController_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animatePresentationOfFullOverlayWithViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  view = [controller view];
  v8 = MEMORY[0x277D75D18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke;
  v23[3] = &unk_2783A92D8;
  v9 = view;
  v24 = v9;
  selfCopy = self;
  [v8 performWithoutAnimation:v23];
  v21[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_2;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_3;
  v21[3] = &unk_2783A9398;
  [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:0 delay:v22 options:v21 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  v10 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_4;
  v19[3] = &unk_2783A8C18;
  v11 = v9;
  v20 = v11;
  [v10 _animateUsingSpringWithDuration:0 delay:v19 options:0 mass:1.1117 stiffness:0.0 damping:2.0 initialVelocity:186.88 animations:27.3488 completion:0.0];
  v12 = MEMORY[0x277D75D18];
  v16 = completionCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_5;
  v17[3] = &unk_2783A8C18;
  v18 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_6;
  v15[3] = &unk_2783A9C70;
  v13 = completionCopy;
  v14 = v11;
  [v12 _animateUsingSpringWithDuration:0 delay:v17 options:v15 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

uint64_t __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  [v2 setTransform:&v4];
  return [*(a1 + 40) _addNewFullOverlayTransitionBlurMaterialViewWithParentView:*(a1 + 32) initialWeighting:0 hidden:0.5];
}

uint64_t __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __98__SBActivityAmbientViewController__animatePresentationOfFullOverlayWithViewController_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_dismissCompactOverlayForActivityEnding:(BOOL)ending completion:(id)completion
{
  compactOverlayViewController = self->_compactOverlayViewController;
  if (compactOverlayViewController)
  {
    completionCopy = completion;
    view = [(SBActivityAmbientCompactOverlayViewController *)compactOverlayViewController view];
    [(SBActivityAmbientViewController *)self _dismissCompactOverlayWithView:view forActivityEnding:view != 0 completion:completionCopy];
  }
}

- (void)_dismissCompactOverlayWithView:(id)view forActivityEnding:(BOOL)ending completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v8 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__SBActivityAmbientViewController__dismissCompactOverlayWithView_forActivityEnding_completion___block_invoke;
  v13[3] = &unk_2783A8C18;
  v14 = viewCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SBActivityAmbientViewController__dismissCompactOverlayWithView_forActivityEnding_completion___block_invoke_2;
  v11[3] = &unk_2783A9C70;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = viewCopy;
  [v8 _animateUsingSpringWithDuration:0 delay:v13 options:v11 mass:0.5845 stiffness:0.0 damping:2.0 initialVelocity:877.298 animations:51.1883 completion:0.0];
}

uint64_t __95__SBActivityAmbientViewController__dismissCompactOverlayWithView_forActivityEnding_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_dismissFullOverlayWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  fullOverlayViewController = self->_fullOverlayViewController;
  if (fullOverlayViewController)
  {
    v6 = fullOverlayViewController;
    v7 = self->_fullOverlayViewController;
    self->_fullOverlayViewController = 0;

    view = [(SBActivityAmbientFullOverlayViewController *)v6 view];
    v9 = SBLogActivity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      activityItem = [(SBActivityViewController *)v6 activityItem];
      identifier = [activityItem identifier];
      *buf = 138543362;
      v32 = identifier;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismissing ambient full screen overlay", buf, 0xCu);
    }

    v12 = MEMORY[0x277D75D18];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke;
    v29[3] = &unk_2783A92D8;
    v29[4] = self;
    v13 = view;
    v30 = v13;
    [v12 performWithoutAnimation:v29];
    v14 = MEMORY[0x277D75D18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_2;
    v27[3] = &unk_2783A92D8;
    v27[4] = self;
    v28 = v13;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_3;
    v24[3] = &unk_2783A8BF0;
    v15 = v28;
    v25 = v15;
    selfCopy = self;
    [v14 _animateUsingSpringWithDuration:0 delay:v27 options:v24 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
    v16 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_4;
    v22[3] = &unk_2783A8C18;
    v23 = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_5;
    v19[3] = &unk_2783AE5A0;
    v19[4] = self;
    v20 = v6;
    v21 = completionCopy;
    v17 = v6;
    v18 = v15;
    [v16 _animateUsingSpringWithDuration:0 delay:v22 options:v19 mass:1.1117 stiffness:0.0 damping:2.0 initialVelocity:186.88 animations:27.3488 completion:0.0];
  }
}

uint64_t __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addNewFullOverlayTransitionBlurMaterialViewWithParentView:*(a1 + 40) initialWeighting:0 hidden:0.0];
  v2 = [*(*(a1 + 32) + 992) layer];
  [v2 setAllowsGroupOpacity:1];

  v3 = [*(a1 + 40) layer];
  [v3 setAllowsGroupOpacity:1];

  v4 = [*(a1 + 32) traitCollection];
  [v4 displayCornerRadius];
  v6 = v5;

  v7 = *(a1 + 40);

  return [v7 _setContinuousCornerRadius:v6];
}

uint64_t __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setWeighting:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:1];

  v3 = *(a1 + 40);

  return [v3 _cleanupTransitionBlurViewIfNecessary];
}

uint64_t __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  return [v1 setTransform:&v3];
}

uint64_t __69__SBActivityAmbientViewController__dismissFullOverlayWithCompletion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _cleanupFullViewController:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_switchToAlertSceneForActivityItem:(id)item
{
  v12 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    *buf = 138543362;
    v11 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ambient item switching to alerting scene", buf, 0xCu);
  }

  activityItem = [(SBActivityViewController *)self->_fullOverlayViewController activityItem];

  if (activityItem == itemCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__SBActivityAmbientViewController__switchToAlertSceneForActivityItem___block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = itemCopy;
    [(SBActivityAmbientViewController *)self _dismissFullOverlayWithCompletion:v8];
  }
}

- (id)_sceneTargetBundleIdentifierForItem:(id)item configuringForAlert:(BOOL)alert
{
  alertCopy = alert;
  descriptor = [item descriptor];
  alertSceneTargetBundleIdentifiers = [descriptor alertSceneTargetBundleIdentifiers];
  sceneTargetBundleIdentifiers = [descriptor sceneTargetBundleIdentifiers];
  v8 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:3];
  v9 = [alertSceneTargetBundleIdentifiers objectForKey:v8];
  v10 = [sceneTargetBundleIdentifiers objectForKey:v8];
  contentType = [descriptor contentType];
  if (alertCopy && v9)
  {
    platterTargetBundleIdentifier = v9;
    goto LABEL_10;
  }

  if (v10)
  {
    v13 = @"com.apple.chrono.WidgetRenderer-Activities";
    if (contentType)
    {
      v13 = v10;
    }

    goto LABEL_7;
  }

  if (!contentType)
  {
    v13 = @"com.apple.chrono.WidgetRenderer-Activities";
LABEL_7:
    platterTargetBundleIdentifier = v13;
    goto LABEL_10;
  }

  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
LABEL_10:
  v14 = platterTargetBundleIdentifier;

  return v14;
}

- (BOOL)_itemIsFirstPartyActivity:(id)activity
{
  descriptor = [activity descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  v5 = +[SBActivityManager sharedInstance];
  firstPartyActivityGroupingIdentifiers = [v5 firstPartyActivityGroupingIdentifiers];
  v7 = [firstPartyActivityGroupingIdentifiers containsObject:platterTargetBundleIdentifier];

  return v7;
}

- (void)_cleanupCompactViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = controllerCopy;
    [(SBActivityAmbientViewController *)self bs_removeChildViewController:controllerCopy];
  }
}

- (void)_cleanupFullViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = controllerCopy;
    [(SBActivityAmbientViewController *)self bs_removeChildViewController:controllerCopy];
  }
}

- (void)_cleanupCurrentCompactOverlayViewController
{
  [(SBActivityAmbientViewController *)self _cleanupCompactViewController:self->_compactOverlayViewController];
  compactOverlayViewController = self->_compactOverlayViewController;
  self->_compactOverlayViewController = 0;
}

- (void)_cleanupCurrentFullOverlayViewController
{
  if (!self->_transitionAnimationCount)
  {
    [(SBActivityAmbientViewController *)self _cleanupFullViewController:self->_fullOverlayViewController];
    fullOverlayViewController = self->_fullOverlayViewController;
    self->_fullOverlayViewController = 0;

    [(SBActivityAmbientViewController *)self _updateResolvedPreferences];
  }
}

- (void)_cleanupTransitionBlurViewIfNecessary
{
  fullOverlayTransitionBlurView = self->_fullOverlayTransitionBlurView;
  if (fullOverlayTransitionBlurView && !self->_transitionAnimationCount)
  {
    [(MTMaterialView *)fullOverlayTransitionBlurView removeFromSuperview];
    v4 = self->_fullOverlayTransitionBlurView;
    self->_fullOverlayTransitionBlurView = 0;
  }
}

- (void)_cleanupBackgroundBlurViewIfNecessary
{
  backgroundBlurMaterialView = self->_backgroundBlurMaterialView;
  if (backgroundBlurMaterialView && !self->_transitionAnimationCount)
  {
    [(MTMaterialView *)backgroundBlurMaterialView removeFromSuperview];
    v4 = self->_backgroundBlurMaterialView;
    self->_backgroundBlurMaterialView = 0;
  }
}

- (void)_cleanupSwitchingTransitionView
{
  switchingTransitionView = self->_switchingTransitionView;
  if (switchingTransitionView)
  {
    [(UIView *)switchingTransitionView removeFromSuperview];
    v4 = self->_switchingTransitionView;
    self->_switchingTransitionView = 0;
  }
}

- (void)_didUpdateVisibleActivityItems
{
  delegate = [(SBActivityAmbientViewController *)self delegate];
  [delegate activityAmbientViewControllerDidUpdateVisibleActivityItems:self];
}

- (id)_ambientActivitySettings
{
  v2 = +[SBLiveActivityDomain rootSettings];
  ambientSettings = [v2 ambientSettings];

  return ambientSettings;
}

- (void)_updateAudioCategoriesDisablingVolumeHUD
{
  if (self->_overlayMode)
  {
    audioCategoriesDisablingVolumeHUD = 0;
  }

  else
  {
    audioCategoriesDisablingVolumeHUD = [(SBActivityViewController *)self->_fullOverlayViewController audioCategoriesDisablingVolumeHUD];
  }

  obj = audioCategoriesDisablingVolumeHUD;
  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, obj);
    delegate = [(SBActivityAmbientViewController *)self delegate];
    [delegate activityAmbientViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
  }
}

- (BOOL)_isActiveActivityItem:(id)item
{
  itemCopy = item;
  delegate = [(SBActivityAmbientViewController *)self delegate];
  LOBYTE(self) = [delegate activityAmbientViewController:self isActiveActivityItem:itemCopy];

  return self;
}

- (id)_nextSecondaryActivityItemForTransitionType:(int64_t)type
{
  delegate = [(SBActivityAmbientViewController *)self delegate];
  v6 = [delegate activityAmbientViewControllerNextPendingActivityItem:self];
  if (v6)
  {
    [delegate activityAmbientViewController:self removePendingItem:v6];
    [delegate activityAmbientViewController:self addPendingItem:self->_primaryActivityItem];
  }

  if ((type - 3) < 2)
  {
    primaryActivityItem = self->_primaryActivityItem;
    if (!primaryActivityItem)
    {
      primaryActivityItem = self->_secondaryActivityItem;
      if (!primaryActivityItem)
      {
        primaryActivityItem = v6;
      }
    }

LABEL_11:
    v8 = primaryActivityItem;
    goto LABEL_13;
  }

  if (type == 2)
  {
    primaryActivityItem = v6;
    if (!v6)
    {
      primaryActivityItem = self->_primaryActivityItem;
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (BOOL)_activityHasDifferentAlertSceneTarget:(id)target
{
  targetCopy = target;
  descriptor = [targetCopy descriptor];
  alertSceneTargetBundleIdentifiers = [descriptor alertSceneTargetBundleIdentifiers];

  v6 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:3];
  v7 = [alertSceneTargetBundleIdentifiers objectForKey:v6];
  descriptor2 = [targetCopy descriptor];

  platterTargetBundleIdentifier = [descriptor2 platterTargetBundleIdentifier];

  if (v7)
  {
    v10 = [platterTargetBundleIdentifier isEqualToString:v7] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_transitionOverlayForActivityItem:(id)item withTransitionType:(int64_t)type configuringForAlerting:(BOOL)alerting withCompletion:(id)completion
{
  alertingCopy = alerting;
  itemCopy = item;
  completionCopy = completion;
  if ([(SBActivityAmbientViewController *)self _canTransitionActivityItem:itemCopy forTransitionType:type])
  {
    [(SBActivityAmbientViewController *)self _beginTransitionForActivityItem:itemCopy transitionType:type configuringForAlerting:alertingCopy withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_beginTransitionForActivityItem:(id)item transitionType:(int64_t)type configuringForAlerting:(BOOL)alerting withCompletion:(id)completion
{
  alertingCopy = alerting;
  v41 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v12 = SBLogActivity();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SBActivityItem *)itemCopy identifier];
    *buf = 138543618;
    v38 = identifier;
    v39 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] begining ambient overlay transition for type: %ld", buf, 0x16u);
  }

  ++self->_transitionAnimationCount;
  v14 = self->_fullOverlayViewController;
  v15 = self->_compactOverlayViewController;
  if ([(SBActivityAmbientViewController *)self _transitionTypeIsToFullOverlay:type])
  {
    self->_overlayMode = 0;
    if (type == 2)
    {
      [(SBActivityAmbientViewController *)self _setSecondaryActivityItem:0];
    }

    v16 = self->_primaryActivityItem == itemCopy;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke;
    v30[3] = &unk_2783B5BE8;
    v36 = v16;
    v30[4] = self;
    typeCopy2 = type;
    v31 = itemCopy;
    v32 = v14;
    v33 = v15;
    v34 = completionCopy;
    v17 = v14;
    v18 = v15;
    [(SBActivityAmbientViewController *)self _fullOverlayViewControllerForItem:v31 configuringForAlert:alertingCopy completion:v30];

    v19 = v31;
  }

  else
  {
    self->_overlayMode = 1;
    view = [(SBActivityAmbientCompactOverlayViewController *)v15 view];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_4;
    v29[3] = &unk_2783A8C18;
    v29[4] = self;
    [(SBActivityAmbientViewController *)self _dismissCompactOverlayWithView:view forActivityEnding:0 completion:v29];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_5;
    v23[3] = &unk_2783B5C38;
    v23[4] = self;
    v24 = itemCopy;
    v25 = v15;
    typeCopy3 = type;
    v26 = v14;
    v27 = completionCopy;
    v21 = v14;
    v22 = v15;
    [(SBActivityAmbientViewController *)self _compactOverlayViewControllerForItem:v24 completion:v23];

    v19 = v24;
  }
}

void __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 1144), a2);
    v5 = *(a1 + 32);
    v6 = [v4 view];
    [v5 _layoutFullOverlayWithActivityView:v6];

    [*(a1 + 32) _updateResolvedPreferences];
    v7 = *(a1 + 32);
    if (*(a1 + 80))
    {
      v8 = v7[144];
      v7[144] = 0;

      [*(a1 + 32) _animateTransitionToFullOverlayForPrimaryActivityItem:*(a1 + 40) transitionType:*(a1 + 72) fullOverlayViewControllerForTransition:v4 oldCompactOverlayViewController:*(a1 + 56) completion:*(a1 + 64)];
    }

    else
    {
      v9 = [v7 _nextSecondaryActivityItemForTransitionType:*(a1 + 72)];
      [*(a1 + 32) _setPrimaryActivityItem:*(a1 + 40)];
      v10 = *(a1 + 32);
      if (v9)
      {
        [v10 _setSecondaryActivityItem:v9];
        v11 = *(a1 + 32);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_2;
        v26[3] = &unk_2783B5BC0;
        v26[4] = v11;
        v12 = &v27;
        v13 = *(a1 + 40);
        v14 = *(a1 + 72);
        v27 = v13;
        v32 = v14;
        v15 = &v28;
        v28 = v4;
        v29 = *(a1 + 48);
        v30 = *(a1 + 56);
        v31 = *(a1 + 64);
        [v11 _compactOverlayViewControllerForItem:v9 completion:v26];
      }

      else
      {
        v16 = v10[144];
        v10[144] = 0;

        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v19 = *(a1 + 72);
        v20 = *(a1 + 48);
        v22 = *(a1 + 56);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_3;
        v23[3] = &unk_2783A8ED8;
        v23[4] = v17;
        v12 = &v24;
        v21 = v20;
        v24 = v21;
        v15 = &v25;
        v25 = *(a1 + 56);
        [v17 _animateTransitionToBecomeNewPrimaryAcivityWithItem:v18 transitionType:v19 fullOverlayViewController:v4 compactOverlayViewControllerForTransition:0 oldFullViewController:v21 oldCompactViewController:v22 completion:v23];
      }
    }
  }
}

void __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v8 = v4;
    objc_storeStrong((*(a1 + 32) + 1152), a2);
    v5 = *(a1 + 32);
    v6 = [v8 view];
    v7 = *(a1 + 32);
    [v8 contentSize];
    [v7 _compactOverlayFrameForContentSize:?];
    [v5 _layoutCompactOverlayIfNecessaryWithView:v6 frame:?];

    [*(a1 + 32) _animateTransitionToBecomeNewPrimaryAcivityWithItem:*(a1 + 40) transitionType:*(a1 + 80) fullOverlayViewController:*(a1 + 48) compactOverlayViewControllerForTransition:v8 oldFullViewController:*(a1 + 56) oldCompactViewController:*(a1 + 64) completion:*(a1 + 72)];
    v4 = v8;
  }
}

uint64_t __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _cleanupFullViewController:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _cleanupCompactViewController:v3];
}

void __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = v2[139];
  v3 = [v2 delegate];
  [v3 activityAmbientViewController:*(a1 + 32) addPendingItem:v4];

  [*(a1 + 32) _setSecondaryActivityItem:0];
}

void __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 1152), a2);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 72);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_6;
    v13[3] = &unk_2783B5C10;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v6;
    *(&v12 + 1) = v8;
    v14 = v12;
    v15 = v11;
    v18 = *(a1 + 72);
    v16 = v4;
    v17 = *(a1 + 64);
    [v6 _animateTransitionToCompactOverlayForItem:v5 transitionType:v7 compactOverlayViewController:v16 completion:v13];
    [*(a1 + 32) _updateResolvedPreferences];
  }
}

uint64_t __120__SBActivityAmbientViewController__beginTransitionForActivityItem_transitionType_configuringForAlerting_withCompletion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _cleanupCompactViewController:*(a1 + 40)];
  [*(a1 + 32) _cleanupFullViewController:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);

  return [v2 _endAndCleanupTransitionForActivityItem:v3 forTransitionType:v5 compactOverlayViewController:v4 fullOverlayViewController:0 completion:v6];
}

- (void)_animateTransitionToFullOverlayForPrimaryActivityItem:(id)item transitionType:(int64_t)type fullOverlayViewControllerForTransition:(id)transition oldCompactOverlayViewController:(id)controller completion:(id)completion
{
  v83[3] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  transitionCopy = transition;
  controllerCopy = controller;
  completionCopy = completion;
  self->_isAnimatingTransition = 1;
  view = [transitionCopy view];
  view2 = [controllerCopy view];
  [view2 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [view frame];
  v25 = v24;
  v84.origin.x = v17;
  v84.origin.y = v19;
  v84.size.width = v21;
  v84.size.height = v23;
  MidY = CGRectGetMidY(v84);
  [view frame];
  v28 = v21 / v27;
  [view frame];
  v29 = MEMORY[0x277D75D18];
  v80[0] = MEMORY[0x277D85DD0];
  v31 = v23 / v30;
  v80[1] = 3221225472;
  v80[2] = __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke;
  v80[3] = &unk_2783A92D8;
  v32 = view;
  v81 = v32;
  selfCopy = self;
  [v29 performWithoutAnimation:v80];
  v33 = [(SBActivityAmbientViewController *)self _animationSettingsForTransitionType:type];
  v34 = MEMORY[0x277D75D18];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke_2;
  v78[3] = &unk_2783A8C18;
  v79 = view2;
  v64 = view2;
  [v34 animateWithDuration:0 delay:v78 options:0 animations:0.05 completion:0.0];
  v35 = MEMORY[0x277D75D18];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke_3;
  v76[3] = &unk_2783A8C18;
  v36 = v32;
  v77 = v36;
  [v35 sb_animateWithSettings:v33 mode:3 animations:v76 completion:0];
  v37 = MEMORY[0x277D75D18];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke_4;
  v74[3] = &unk_2783A92D8;
  v74[4] = self;
  v38 = v36;
  v75 = v38;
  v65 = v33;
  [v37 sb_animateWithSettings:v33 mode:3 animations:v74 completion:0];
  _animationSettingsForFullOverlayTransitionYCurve = [(SBActivityAmbientViewController *)self _animationSettingsForFullOverlayTransitionYCurve];
  bSAnimationSettings = [_animationSettingsForFullOverlayTransitionYCurve BSAnimationSettings];

  bSAnimationSettings2 = [v33 BSAnimationSettings];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke_5;
  v66[3] = &unk_2783B5C10;
  v67 = v38;
  selfCopy2 = self;
  v69 = controllerCopy;
  v70 = itemCopy;
  v71 = transitionCopy;
  v72 = completionCopy;
  typeCopy = type;
  v63 = completionCopy;
  v61 = transitionCopy;
  v60 = itemCopy;
  v58 = controllerCopy;
  v57 = v38;
  v56 = MEMORY[0x223D6F7F0](v66);
  v42 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.y"];
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:v25 * 0.5];
  [v42 setToValue:v43];

  [bSAnimationSettings mass];
  [v42 setMass:?];
  [bSAnimationSettings damping];
  [v42 setDamping:?];
  [bSAnimationSettings stiffness];
  [v42 setStiffness:?];
  v44 = *MEMORY[0x277CDA238];
  [v42 setFillMode:*MEMORY[0x277CDA238]];
  [v42 settlingDuration];
  [v42 setDuration:?];
  v45 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.y"];
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:MidY];
  [v45 setFromValue:v46];

  [bSAnimationSettings mass];
  [v45 setMass:?];
  [bSAnimationSettings damping];
  [v45 setDamping:?];
  [bSAnimationSettings stiffness];
  [v45 setStiffness:?];
  [v45 setFillMode:v44];
  [v45 settlingDuration];
  [v45 setDuration:?];
  v47 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.y"];
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  [v47 setFromValue:v48];

  [v47 setToValue:&unk_28336F2A0];
  [bSAnimationSettings2 mass];
  [v47 setMass:?];
  [bSAnimationSettings2 damping];
  [v47 setDamping:?];
  [bSAnimationSettings2 stiffness];
  [v47 setStiffness:?];
  [v47 setFillMode:v44];
  [v47 settlingDuration];
  [v47 setDuration:?];
  v49 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.x"];
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  [v49 setFromValue:v50];

  [v49 setToValue:&unk_28336F2A0];
  [bSAnimationSettings2 mass];
  [v49 setMass:?];
  [bSAnimationSettings2 damping];
  [v49 setDamping:?];
  [bSAnimationSettings2 stiffness];
  [v49 setStiffness:?];
  [v49 setFillMode:v44];
  [v49 settlingDuration];
  [v49 setDuration:?];
  animation = [MEMORY[0x277CD9E00] animation];
  v83[0] = v45;
  v83[1] = v47;
  v83[2] = v49;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
  [animation setAnimations:v52];

  [animation setFillMode:v44];
  [v47 settlingDuration];
  [animation setDuration:?];
  v53 = MEMORY[0x223D6F7F0](v56);
  [animation setValue:v53 forKey:@"SBActivityFullOverlayAnimationCompletionKey"];

  [animation setDelegate:self];
  layer = [v64 layer];
  [layer addAnimation:v42 forKey:@"position-y"];

  layer2 = [v57 layer];
  [layer2 addAnimation:animation forKey:@"scale-position"];
}

uint64_t __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:1];

  [*(a1 + 32) _setContinuousCornerRadius:250.0];
  [*(a1 + 40) _addNewFullOverlayTransitionBlurMaterialViewWithParentView:*(a1 + 32) initialWeighting:0 hidden:1.0];
  v3 = [*(*(a1 + 40) + 992) layer];
  [v3 setAllowsGroupOpacity:1];

  [*(a1 + 40) _addNewBackgroundBlurMaterialViewWithInitialWeighting:0 hidden:0.0];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

uint64_t __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setWeighting:0.0];
  [*(*(a1 + 32) + 1000) setWeighting:1.0];
  v2 = [*(a1 + 32) traitCollection];
  [v2 displayCornerRadius];
  v4 = v3;

  v5 = *(a1 + 40);

  return [v5 _setContinuousCornerRadius:v4];
}

uint64_t __186__SBActivityAmbientViewController__animateTransitionToFullOverlayForPrimaryActivityItem_transitionType_fullOverlayViewControllerForTransition_oldCompactOverlayViewController_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _setContinuousCornerRadius:0.0];
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:0];

  [*(a1 + 40) _cleanupCompactViewController:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);

  return [v3 _endAndCleanupTransitionForActivityItem:v4 forTransitionType:v6 compactOverlayViewController:0 fullOverlayViewController:v5 completion:v7];
}

- (void)_animateTransitionToBecomeNewPrimaryAcivityWithItem:(id)item transitionType:(int64_t)type fullOverlayViewController:(id)controller compactOverlayViewControllerForTransition:(id)transition oldFullViewController:(id)viewController oldCompactViewController:(id)compactViewController completion:(id)completion
{
  itemCopy = item;
  controllerCopy = controller;
  transitionCopy = transition;
  viewControllerCopy = viewController;
  compactViewControllerCopy = compactViewController;
  completionCopy = completion;
  self->_isAnimatingTransition = 1;
  traitCollection = [(SBActivityAmbientViewController *)self traitCollection];
  [traitCollection displayCornerRadius];
  v16 = v15;

  view = [viewControllerCopy view];
  view2 = [compactViewControllerCopy view];
  view3 = [controllerCopy view];
  view4 = [transitionCopy view];
  [view2 setUserInteractionEnabled:0];
  v63 = view;
  [view _setContinuousCornerRadius:v16];
  [view3 _setContinuousCornerRadius:v16];
  v44 = [(SBActivityAmbientViewController *)self _addNewSwitchingTransitionViewBelowSubview:view];
  v19 = MEMORY[0x277D75D18];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke;
  v85[3] = &unk_2783A8C18;
  v57 = view4;
  v86 = v57;
  [v19 performWithoutAnimation:v85];
  v68 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v68 setFromValue:&unk_28336F2B0];
  [v68 setToValue:&unk_28336F2C0];
  [v68 setMass:2.0];
  [v68 setDamping:50.0];
  [v68 setStiffness:300.0];
  v20 = *MEMORY[0x277CDA238];
  [v68 setFillMode:*MEMORY[0x277CDA238]];
  [v68 setDuration:0.8];
  v67 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.xy"];
  [v67 setFromValue:&unk_28336F2A0];
  [v67 setToValue:&unk_28336F2D0];
  [v67 setMass:2.0];
  [v67 setDamping:27.3488];
  [v67 setStiffness:186.88];
  [v67 setFillMode:v20];
  [v67 setDuration:1.1117];
  v66 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v66 setFromValue:&unk_28336F2A0];
  [v66 setToValue:&unk_28336F2B0];
  [v66 setMass:2.0];
  [v66 setDamping:50.0];
  [v66 setStiffness:300.0];
  [v66 setFillMode:v20];
  [v66 setDuration:0.8];
  v43 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v43 setFromValue:&unk_28336F2E0];
  [v43 setToValue:&unk_28336F2B0];
  [v43 setMass:2.0];
  [v43 setDamping:50.0];
  [v43 setStiffness:300.0];
  [v43 setFillMode:v20];
  [v43 setDuration:0.8];
  [v43 setRemovedOnCompletion:0];
  v65 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.xy"];
  [v65 setFromValue:&unk_28336F2D0];
  [v65 setToValue:&unk_28336F2A0];
  [v65 setMass:2.0];
  [v65 setDamping:27.3488];
  [v65 setStiffness:186.88];
  [v65 setFillMode:v20];
  [v65 setDuration:1.1117];
  v56 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v56 setFromValue:&unk_28336F2B0];
  [v56 setToValue:&unk_28336F2A0];
  [v56 setMass:2.0];
  [v56 setDamping:50.0];
  [v56 setStiffness:300.0];
  [v56 setFillMode:v20];
  [v56 setDuration:0.8];
  [v56 setRemovedOnCompletion:0];
  v46 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.xy"];
  [v46 setFromValue:&unk_28336F2A0];
  [v46 setToValue:&unk_28336F2F0];
  [v46 setMass:2.0];
  [v46 setDamping:51.1883];
  [v46 setStiffness:877.298];
  [v46 setFillMode:v20];
  [v46 setDuration:0.5845];
  [v46 setRemovedOnCompletion:0];
  v40 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v40 setFromValue:&unk_28336F2A0];
  [v40 setToValue:&unk_28336F2B0];
  [v40 setMass:2.0];
  [v40 setDamping:51.1883];
  [v40 setStiffness:877.298];
  [v40 setFillMode:v20];
  [v40 setDuration:0.5845];
  [v40 setRemovedOnCompletion:0];
  v47 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.xy"];
  [v47 setFromValue:&unk_28336F2F0];
  [v47 setToValue:&unk_28336F2A0];
  [v47 setMass:2.0];
  [v47 setDamping:34.0214];
  [v47 setStiffness:315.827];
  [v47 setFillMode:v20];
  [v47 setDuration:0.8888];
  v21 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v21 setFromValue:&unk_28336F2B0];
  [v21 setToValue:&unk_28336F2A0];
  [v21 setMass:2.0];
  [v21 setDamping:34.0214];
  [v21 setStiffness:315.827];
  [v21 setFillMode:v20];
  [v21 setDuration:0.8888];
  [v21 setBeginTime:0.2];
  [v21 setRemovedOnCompletion:0];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_79;
  v83[3] = &unk_2783A92D8;
  v83[4] = self;
  v22 = view3;
  v84 = v22;
  v23 = MEMORY[0x223D6F7F0](v83);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_2;
  v73[3] = &unk_2783B5C60;
  v74 = v44;
  selfCopy = self;
  v76 = viewControllerCopy;
  v77 = compactViewControllerCopy;
  v78 = itemCopy;
  v79 = transitionCopy;
  v80 = controllerCopy;
  v81 = completionCopy;
  typeCopy = type;
  v62 = completionCopy;
  v55 = controllerCopy;
  v51 = transitionCopy;
  v60 = itemCopy;
  v49 = compactViewControllerCopy;
  v42 = viewControllerCopy;
  v53 = v44;
  v45 = MEMORY[0x223D6F7F0](v73);
  v24 = MEMORY[0x223D6F7F0]();
  if (v42)
  {
    v25 = v66;
  }

  else
  {
    v25 = v65;
  }

  [v25 setValue:v24 forKey:@"SBActivityFullOverlayAnimationCompletionKey"];

  [v25 setDelegate:self];
  v26 = MEMORY[0x223D6F7F0](v23);
  [v43 setValue:v26 forKey:@"SBActivityFullOverlayAnimationCompletionKey"];

  [v43 setDelegate:self];
  v27 = MEMORY[0x277D75D18];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_3;
  v71[3] = &unk_2783A8C18;
  v72 = v57;
  v58 = v57;
  [v27 _animateUsingSpringWithDuration:2 delay:v71 options:0 mass:0.8888 stiffness:0.2 damping:2.0 initialVelocity:315.827 animations:34.0214 completion:0.0];
  v28 = MEMORY[0x277D75D18];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_4;
  v69[3] = &unk_2783A8C18;
  v70 = v22;
  v29 = v22;
  [v28 _animateUsingSpringWithDuration:0 delay:v69 options:0 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  layer = [v63 layer];
  [(SBActivityAmbientViewController *)self _addGaussianBlurToLayer:layer inputRadius:0.0];

  layer2 = [v29 layer];
  [(SBActivityAmbientViewController *)self _addGaussianBlurToLayer:layer2 inputRadius:50.0];

  layer3 = [v63 layer];
  [layer3 addAnimation:v67 forKey:@"currentFullScale"];

  layer4 = [v63 layer];
  [layer4 addAnimation:v68 forKey:@"currentFullBlur"];

  layer5 = [v63 layer];
  [layer5 addAnimation:v66 forKey:@"currentFullOverlayAlpha"];

  layer6 = [view2 layer];
  [layer6 addAnimation:v46 forKey:@"currentCompactScale"];

  layer7 = [view2 layer];
  [layer7 addAnimation:v40 forKey:@"currrentCompactAlpha"];

  layer8 = [v29 layer];
  [layer8 addAnimation:v65 forKey:@"newFullScale"];

  layer9 = [v29 layer];
  [layer9 addAnimation:v43 forKey:@"newFullBlur"];
}

uint64_t __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 0.5, 0.5);
  return [v1 setTransform:&v3];
}

void __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_79(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) layer];
  [v1 _removeGaussianBlurFromLayer:v2];
}

uint64_t __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) _cleanupFullViewController:*(a1 + 48)];
  [*(a1 + 40) _cleanupCompactViewController:*(a1 + 56)];
  v2 = *(a1 + 40);
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  return [v2 _endAndCleanupTransitionForActivityItem:v5 forTransitionType:v3 compactOverlayViewController:v6 fullOverlayViewController:v7 completion:v4];
}

uint64_t __228__SBActivityAmbientViewController__animateTransitionToBecomeNewPrimaryAcivityWithItem_transitionType_fullOverlayViewController_compactOverlayViewControllerForTransition_oldFullViewController_oldCompactViewController_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

- (void)_animateTransitionToCompactOverlayForItem:(id)item transitionType:(int64_t)type compactOverlayViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  self->_isAnimatingTransition = 1;
  view = [(SBActivityAmbientFullOverlayViewController *)self->_fullOverlayViewController view];
  view2 = [controllerCopy view];
  [controllerCopy contentSize];
  [(SBActivityAmbientViewController *)self _compactOverlayFrameForContentSize:?];
  v14 = v13;
  v16 = v15;
  layer = [view layer];
  [layer frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  view3 = [(SBActivityAmbientViewController *)self view];
  [view3 bounds];
  v28 = v27;

  layer2 = [view layer];
  [layer2 cornerRadius];
  v31 = v30;

  v32 = v31 / v28;
  v70.origin.x = v19;
  v70.origin.y = v21;
  v70.size.width = v23;
  v70.size.height = v25;
  MidX = CGRectGetMidX(v70);
  v71.origin.x = v19;
  v71.origin.y = v21;
  v71.size.width = v23;
  v71.size.height = v25;
  v34 = CGRectGetMidY(v71) - v16 * 0.5;
  memset(&v69, 0, sizeof(v69));
  CGAffineTransformMakeScale(&v69, v23 / v14, v25 / v16);
  [(SBActivityAmbientViewController *)self _layoutCompactOverlayIfNecessaryWithView:view2 frame:MidX - v14 * 0.5, v34, v14, v16];
  v35 = MEMORY[0x277D75D18];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke;
  v63[3] = &unk_2783B5C88;
  v63[4] = self;
  v36 = view2;
  v64 = v36;
  v67 = v16 * v32;
  v68 = v69;
  v37 = controllerCopy;
  v65 = v37;
  v38 = view;
  v66 = v38;
  [v35 performWithoutAnimation:v63];
  v39 = MEMORY[0x277D75D18];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_2;
  v61[3] = &unk_2783A8C18;
  v40 = v38;
  v62 = v40;
  [v39 animateWithDuration:0 delay:v61 options:0 animations:0.2 completion:0.0];
  v41 = MEMORY[0x277D75D18];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_3;
  v59[3] = &unk_2783A8C18;
  v42 = v37;
  v60 = v42;
  [v41 animateWithDuration:0 delay:v59 options:0 animations:0.2 completion:0.1];
  v43 = MEMORY[0x277D75D18];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_4;
  v57[3] = &unk_2783A8C18;
  v44 = v42;
  v58 = v44;
  [v43 animateWithDuration:0 delay:v57 options:0 animations:0.2 completion:0.2];
  v45 = MEMORY[0x277D75D18];
  v46 = [(SBActivityAmbientViewController *)self _animationSettingsForTransitionType:type];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_5;
  v53[3] = &unk_2783A9BD8;
  v53[4] = self;
  v54 = v44;
  v55 = v36;
  v56 = v40;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_6;
  v51[3] = &unk_2783AE778;
  v52 = completionCopy;
  v47 = completionCopy;
  v48 = v40;
  v49 = v36;
  v50 = v44;
  [v45 sb_animateWithSettings:v46 mode:3 animations:v53 completion:v51];
}

uint64_t __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  [*(a1 + 40) setHidden:0];
  [*(a1 + 40) _setContinuousCornerRadius:*(a1 + 64)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v8[0] = *(a1 + 72);
  v8[1] = v4;
  v8[2] = *(a1 + 104);
  [v3 setTransform:v8];
  [*(a1 + 48) setBackgroundAlpha:0.0];
  [*(a1 + 48) setContentAlpha:0.0];
  [*(a1 + 40) setAlpha:1.0];
  [*(a1 + 32) _addNewFullOverlayTransitionBlurMaterialViewWithParentView:*(a1 + 56) initialWeighting:1 hidden:0.0];
  [*(*(a1 + 32) + 992) setHidden:0];
  v5 = [*(*(a1 + 32) + 992) layer];
  [v5 setAllowsGroupOpacity:1];

  v6 = [*(a1 + 56) layer];
  [v6 setAllowsGroupOpacity:1];

  return [*(a1 + 56) layoutIfNeeded];
}

void __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_5(id *a1)
{
  [*(a1[4] + 125) setWeighting:0.0];
  [*(a1[4] + 124) setWeighting:1.0];
  v2 = a1[4];
  [a1[5] contentSize];
  [v2 _compactOverlayFrameForContentSize:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1[6];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  v16[0] = *MEMORY[0x277CBF2C0];
  v16[1] = v12;
  v16[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v11 setTransform:v16];
  [a1[6] setFrame:{v4, v6, v8, v10}];
  [a1[7] setFrame:{v4, v6, v8, v10}];
  [a1[5] cornerRadius];
  v14 = v13;
  [a1[6] _setContinuousCornerRadius:?];
  [a1[7] _setContinuousCornerRadius:v14];
  [a1[6] setAlpha:1.0];
  v15 = [a1[4] view];
  [v15 layoutIfNeeded];
}

uint64_t __132__SBActivityAmbientViewController__animateTransitionToCompactOverlayForItem_transitionType_compactOverlayViewController_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_animationSettingsForFullOverlayTransitionYCurve
{
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues setBehaviorType:1];
  [initWithDefaultValues setDampingRatio:0.84];
  [initWithDefaultValues setResponse:0.435];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues setFrameRateRange:1114143 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];

  return initWithDefaultValues;
}

- (id)_animationSettingsForTransitionType:(int64_t)type
{
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues setBehaviorType:1];
  v5 = 0.0;
  v6 = 0.0;
  if (type <= 4)
  {
    v5 = dbl_21F8A6A48[type];
    v6 = dbl_21F8A6A70[type];
  }

  [initWithDefaultValues setDampingRatio:v6];
  [initWithDefaultValues setResponse:v5];
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues setFrameRateRange:1114143 highFrameRateReason:{*&v9.minimum, *&v9.maximum, *&v9.preferred}];

  return initWithDefaultValues;
}

- (BOOL)_canTransitionActivityItem:(id)item forTransitionType:(int64_t)type
{
  itemCopy = item;
  if (![(SBActivityAmbientViewController *)self _isActiveActivityItem:itemCopy])
  {
    goto LABEL_13;
  }

  if (type > 2)
  {
    if ((type - 3) < 2)
    {
      v8 = 1;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (type)
  {
    if (type == 1)
    {
      v7 = 1104;
      goto LABEL_12;
    }

    if (type == 2)
    {
      v7 = 1112;
LABEL_12:
      if (*(&self->super.super.super.isa + v7) != itemCopy)
      {
        goto LABEL_13;
      }

      v9 = self->_overlayMode == 0;
      goto LABEL_16;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (self->_primaryActivityItem != itemCopy)
  {
    goto LABEL_13;
  }

  v9 = self->_overlayMode == 1;
LABEL_16:
  v8 = v9;
LABEL_14:

  return v8;
}

- (BOOL)_layerHasGaussianBlurFilter:(id)filter
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  filters = [filter filters];
  v4 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = *MEMORY[0x277CDA328];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(filters);
        }

        name = [*(*(&v13 + 1) + 8 * i) name];
        v10 = [name isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_addGaussianBlurToLayer:(id)layer inputRadius:(double)radius
{
  v13[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  if (![(SBActivityAmbientViewController *)self _layerHasGaussianBlurFilter:layerCopy])
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:@"default" forKey:@"inputQuality"];
    [v7 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
    [v7 setValue:v8 forKey:@"inputRadius"];

    v9 = MEMORY[0x277CBEC28];
    [v7 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
    [v7 setValue:v9 forKey:@"inputHardEdges"];
    filters = [layerCopy filters];
    v11 = [filters mutableCopy];

    [v11 addObject:v7];
    v13[0] = v7;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [layerCopy setFilters:v12];
  }
}

- (void)_addNewFullOverlayTransitionBlurMaterialViewWithParentView:(id)view initialWeighting:(double)weighting hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  viewCopy = view;
  [(SBActivityAmbientViewController *)self _cleanupTransitionBlurViewIfNecessary];
  v9 = MEMORY[0x277D26718];
  v10 = SBHBundle();
  v11 = [v9 materialViewWithRecipeNamed:@"ambientContentOverlay" inBundle:v10 options:0 initialWeighting:0 scaleAdjustment:weighting];

  [viewCopy bounds];
  [v11 setFrame:?];
  [v11 setOverrideUserInterfaceStyle:2];
  [v11 setAutoresizingMask:18];
  [v11 setHidden:hiddenCopy];
  [viewCopy addSubview:v11];
  [viewCopy bringSubviewToFront:v11];
  [viewCopy layoutIfNeeded];

  fullOverlayTransitionBlurView = self->_fullOverlayTransitionBlurView;
  self->_fullOverlayTransitionBlurView = v11;
}

- (void)_addNewBackgroundBlurMaterialViewWithInitialWeighting:(double)weighting hidden:(BOOL)hidden
{
  if (!self->_backgroundBlurMaterialView)
  {
    hiddenCopy = hidden;
    view = [(SBActivityAmbientViewController *)self view];
    v7 = MEMORY[0x277D26718];
    v8 = SBHBundle();
    v9 = [v7 materialViewWithRecipeNamed:@"activityAmbientBackground" inBundle:v8 options:0 initialWeighting:0 scaleAdjustment:weighting];

    [view bounds];
    [v9 setFrame:?];
    [v9 setOverrideUserInterfaceStyle:2];
    [v9 setHidden:hiddenCopy];
    [v9 setAutoresizingMask:18];
    [view addSubview:v9];
    [view sendSubviewToBack:v9];
    [view layoutIfNeeded];
    backgroundBlurMaterialView = self->_backgroundBlurMaterialView;
    self->_backgroundBlurMaterialView = v9;
  }
}

- (void)_addNewCompactOverlayTransitionViewWithParentView:(id)view alpha:(double)alpha
{
  if (!self->_compactOverlayTransitionView)
  {
    v6 = MEMORY[0x277D75D18];
    viewCopy = view;
    v8 = objc_alloc_init(v6);
    [viewCopy bounds];
    [(UIView *)v8 setFrame:?];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v8 setBackgroundColor:whiteColor];

    [(UIView *)v8 setAlpha:alpha];
    [(UIView *)v8 setAutoresizingMask:18];
    [viewCopy addSubview:v8];
    [viewCopy bringSubviewToFront:v8];
    [viewCopy layoutIfNeeded];

    compactOverlayTransitionView = self->_compactOverlayTransitionView;
    self->_compactOverlayTransitionView = v8;
  }
}

- (id)_addNewSwitchingTransitionViewBelowSubview:(id)subview
{
  v4 = MEMORY[0x277D75D18];
  subviewCopy = subview;
  v6 = objc_alloc_init(v4);
  view = [(SBActivityAmbientViewController *)self view];
  [view bounds];
  [v6 setFrame:?];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [v6 setBackgroundColor:blackColor];

  view2 = [(SBActivityAmbientViewController *)self view];
  [view2 insertSubview:v6 belowSubview:subviewCopy];

  view3 = [(SBActivityAmbientViewController *)self view];
  [view3 layoutIfNeeded];

  return v6;
}

- (void)_endAndCleanupTransitionForActivityItem:(id)item forTransitionType:(int64_t)type compactOverlayViewController:(id)controller fullOverlayViewController:(id)viewController completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v12 = SBLogActivity();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    v17 = 138543618;
    v18 = identifier;
    v19 = 2048;
    typeCopy2 = type;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ending ambient overlay transition for type: %ld", &v17, 0x16u);
  }

  --self->_transitionAnimationCount;
  [(SBActivityAmbientViewController *)self _cleanupTransitionBlurViewIfNecessary];
  [(SBActivityAmbientViewController *)self _cleanupBackgroundBlurViewIfNecessary];
  [(SBActivityAmbientViewController *)self _cleanupSwitchingTransitionView];
  self->_isAnimatingTransition = 0;
  if (type)
  {
    if (type == 1)
    {
      [(SBActivityAmbientViewController *)self _cleanupCurrentFullOverlayViewController];
    }
  }

  else
  {
    [(SBActivityAmbientViewController *)self _addSecondaryActivityItemIfAvailable];
  }

  delegate = [(SBActivityAmbientViewController *)self delegate];
  [delegate activityAmbientViewControllerResetIdleTimerBehavior:self];

  [(SBActivityAmbientViewController *)self _updateResolvedPreferences];
  v15 = SBLogActivity();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [itemCopy identifier];
    v17 = 138543618;
    v18 = identifier2;
    v19 = 2048;
    typeCopy2 = type;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Transition completed for type: %ld", &v17, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_addSecondaryActivityItemIfAvailable
{
  v9 = *MEMORY[0x277D85DE8];
  delegate = [(SBActivityAmbientViewController *)self delegate];
  v4 = [delegate activityAmbientViewControllerNextPendingActivityItem:self];

  if (v4)
  {
    v5 = SBLogActivity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v4 identifier];
      v7 = 138543362;
      v8 = identifier;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dequeueing ambient item to be secondary", &v7, 0xCu);
    }

    [(SBActivityAmbientViewController *)self addOverlayForSecondaryActivityItem:v4];
  }
}

- (void)_resetPrimaryActivityItemWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_isAnimatingTransition)
  {
    if (self->_primaryActivityItem)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      secondaryActivityItem = self->_secondaryActivityItem;
      if (secondaryActivityItem)
      {
        [(SBActivityAmbientViewController *)self _transitionOverlayForActivityItem:secondaryActivityItem withTransitionType:2 configuringForAlerting:0 withCompletion:completionCopy];
      }

      else
      {
        delegate = [(SBActivityAmbientViewController *)self delegate];
        v8 = [delegate activityAmbientViewControllerNextPendingActivityItem:self];

        if (v8)
        {
          v9 = SBLogActivity();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v8 identifier];
            v11 = 138543362;
            v12 = identifier;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dequeueing ambient item to be primary", &v11, 0xCu);
          }

          if (self->_overlayMode)
          {
            [(SBActivityAmbientViewController *)self _setPrimaryActivityItem:v8];
            [(SBActivityAmbientViewController *)self _updateCompactActivityOverlayWithItem:v8 withCompletion:v5];
          }

          else
          {
            [(SBActivityAmbientViewController *)self _transitionOverlayForActivityItem:v8 withTransitionType:3 configuringForAlerting:0 withCompletion:v5];
          }
        }

        else if (v5)
        {
          v5[2](v5);
        }

        [(SBActivityAmbientViewController *)self _didUpdateVisibleActivityItems];
      }
    }
  }
}

- (void)_layoutCompactOverlayIfNecessaryWithView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14 = viewCopy;
  if (viewCopy)
  {
    view = viewCopy;
  }

  else
  {
    view = [(SBActivityAmbientCompactOverlayViewController *)self->_compactOverlayViewController view];
  }

  v11 = view;
  [view setFrame:{x, y, width, height}];
  view2 = [(SBActivityAmbientViewController *)self view];
  [view2 bringSubviewToFront:v11];

  view3 = [(SBActivityAmbientViewController *)self view];
  [view3 layoutIfNeeded];
}

- (CGRect)_compactOverlayFrameForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(SBActivityAmbientViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  MidX = CGRectGetMidX(v19);
  v15 = v9 + 20.0;
  v16 = MidX + width * -0.5;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (void)_layoutFullOverlayWithActivityView:(id)view
{
  viewCopy = view;
  view = [(SBActivityAmbientViewController *)self view];
  [view bounds];
  [viewCopy setFrame:?];
  [viewCopy setAutoresizingMask:18];

  [view layoutIfNeeded];
}

- (void)_addDismissGesture
{
  if (!self->_dismissEdgePanGesture)
  {
    v3 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissGesture_ type:5 options:0];
    dismissEdgePanGesture = self->_dismissEdgePanGesture;
    self->_dismissEdgePanGesture = &v3->super;

    [(UIScreenEdgePanGestureRecognizer *)self->_dismissEdgePanGesture setEdges:4];
    [(UIScreenEdgePanGestureRecognizer *)self->_dismissEdgePanGesture setAllowedTouchTypes:&unk_28336E310];
    [(UIScreenEdgePanGestureRecognizer *)self->_dismissEdgePanGesture setDelegate:self];
    v5 = +[SBSystemGestureManager mainDisplayManager];
    [v5 addGestureRecognizer:self->_dismissEdgePanGesture withType:137];
  }

  if (!self->_dismissPanGesture)
  {
    _ambientActivitySettings = [(SBActivityAmbientViewController *)self _ambientActivitySettings];
    fullScreenDismissGestureEnabled = [_ambientActivitySettings fullScreenDismissGestureEnabled];

    if (fullScreenDismissGestureEnabled)
    {
      v8 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleDismissGesture_];
      dismissPanGesture = self->_dismissPanGesture;
      self->_dismissPanGesture = v8;

      [(UIPanGestureRecognizer *)self->_dismissPanGesture setAllowedTouchTypes:&unk_28336E328];
      [(UIPanGestureRecognizer *)self->_dismissPanGesture setDelegate:self];
      view = [(SBActivityAmbientViewController *)self view];
      [view addGestureRecognizer:self->_dismissPanGesture];
    }
  }
}

- (void)_removeDismissGesture
{
  if (self->_dismissEdgePanGesture)
  {
    v3 = +[SBSystemGestureManager mainDisplayManager];
    [v3 removeGestureRecognizer:self->_dismissEdgePanGesture];

    dismissEdgePanGesture = self->_dismissEdgePanGesture;
    self->_dismissEdgePanGesture = 0;
  }

  if (self->_dismissPanGesture)
  {
    view = [(SBActivityAmbientViewController *)self view];
    [view removeGestureRecognizer:self->_dismissPanGesture];

    dismissPanGesture = self->_dismissPanGesture;
    self->_dismissPanGesture = 0;
  }
}

- (void)_handleDismissGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 2)
  {
    goto LABEL_4;
  }

  if (state == 1)
  {
    [(SBActivityAmbientViewController *)self _handleDismissGestureBegan:gestureCopy];
LABEL_4:
    [(SBActivityAmbientViewController *)self _handleDismissGestureChanged:gestureCopy];
    goto LABEL_6;
  }

  [(SBActivityAmbientViewController *)self _handleDismissGestureEnded:gestureCopy];
LABEL_6:
}

- (void)_handleDismissGestureBegan:(id)began
{
  self->_isInFullOverlayDrag = 1;
  beganCopy = began;
  traitCollection = [(SBActivityAmbientViewController *)self traitCollection];
  [traitCollection displayCornerRadius];
  v7 = v6;

  view = [(SBActivityAmbientFullOverlayViewController *)self->_fullOverlayViewController view];
  [view _setContinuousCornerRadius:v7];

  [(SBActivityAmbientViewController *)self setCompactOverlayHidden:1];
  view2 = [(SBActivityAmbientViewController *)self view];
  [beganCopy locationInView:view2];
  v11 = v10;
  v13 = v12;

  [(SBActivityAmbientViewController *)self _prepareFullOverlayViewForDragWithLocation:v11, v13];
}

- (void)_handleDismissGestureChanged:(id)changed
{
  changedCopy = changed;
  view = [(SBActivityAmbientViewController *)self view];
  [changedCopy translationInView:view];
  v6 = v5;
  v8 = v7;

  [(SBActivityAmbientViewController *)self _beginFullOverlayDragWithTranslation:v6, v8];
}

- (void)_handleDismissGestureEnded:(id)ended
{
  v23 = *MEMORY[0x277D85DE8];
  self->_isInFullOverlayDrag = 0;
  self->_currentFullOverlayDragTranslationY = 9.22337204e18;
  self->_currentFullOverlayDragScale = 9.22337204e18;
  self->_currentFullOverlayDragOriginY = 9.22337204e18;
  endedCopy = ended;
  view = [(SBActivityAmbientViewController *)self view];
  [endedCopy translationInView:view];
  v7 = v6;

  view2 = [(SBActivityAmbientViewController *)self view];
  [endedCopy velocityInView:view2];
  v10 = v9;

  v11 = fabs(v7);
  if ((fabs(v10) <= 50.0 || v10 >= 0.0) && v11 <= 50.0)
  {

    [(SBActivityAmbientViewController *)self _cancelFullOverlayDrag];
  }

  else
  {
    descriptor = [(SBActivityItem *)self->_primaryActivityItem descriptor];
    isMomentary = [descriptor isMomentary];

    if (isMomentary)
    {
      v16 = SBLogActivity();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(SBActivityItem *)self->_primaryActivityItem identifier];
        v21 = 138543362;
        v22 = identifier;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ambient full screen dismissed but is momentary so ending activity", &v21, 0xCu);
      }

      v18 = objc_alloc_init(MEMORY[0x277CB98A0]);
      identifier2 = [(SBActivityItem *)self->_primaryActivityItem identifier];
      [v18 endActivity:identifier2];
    }

    else
    {
      primaryActivityItem = self->_primaryActivityItem;

      [(SBActivityAmbientViewController *)self _transitionOverlayForActivityItem:primaryActivityItem withTransitionType:1 configuringForAlerting:0 withCompletion:0];
    }
  }
}

- (void)_prepareFullOverlayViewForDragWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(SBActivityAmbientFullOverlayViewController *)self->_fullOverlayViewController view];
  [view frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SBActivityAmbientViewController__prepareFullOverlayViewForDragWithLocation___block_invoke;
  v15[3] = &unk_2783AF078;
  v15[4] = self;
  *&v15[5] = x;
  *&v15[6] = y;
  v15[7] = v8;
  v15[8] = v10;
  v15[9] = v12;
  v15[10] = v14;
  [MEMORY[0x277D75D18] performWithoutAnimation:v15];
}

void __78__SBActivityAmbientViewController__prepareFullOverlayViewForDragWithLocation___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1144) view];
  [*(a1 + 32) _setAnchorPointForDrag:v2 forView:{vdivq_f64(*(a1 + 40), *(a1 + 72))}];
}

- (void)_setAnchorPointForDrag:(CGPoint)drag forView:(id)view
{
  y = drag.y;
  x = drag.x;
  viewCopy = view;
  [viewCopy frame];
  v7 = v6;
  v9 = v8;
  layer = [viewCopy layer];
  [layer setAnchorPoint:{x, y}];

  [viewCopy frame];
  v12 = v11 - v7;
  v14 = v13 - v9;
  [viewCopy center];
  v16 = v15 - v12;
  [viewCopy center];
  [viewCopy setCenter:{v16, v17 - v14}];
}

- (void)_beginFullOverlayDragWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  view = [(SBActivityAmbientFullOverlayViewController *)self->_fullOverlayViewController view];
  currentFullOverlayDragTranslationY = self->_currentFullOverlayDragTranslationY;
  v8 = y;
  if (currentFullOverlayDragTranslationY != 9.22337204e18)
  {
    currentFullOverlayDragOriginY = self->_currentFullOverlayDragOriginY;
    if (y <= 50.0)
    {
      v10 = y;
    }

    else
    {
      v10 = self->_currentFullOverlayDragTranslationY;
    }

    if (currentFullOverlayDragOriginY >= 30.0)
    {
      v11 = y;
    }

    else
    {
      v11 = self->_currentFullOverlayDragTranslationY;
    }

    if (y < currentFullOverlayDragTranslationY)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (currentFullOverlayDragOriginY == 9.22337204e18)
    {
      v8 = y;
    }

    else
    {
      v8 = v12;
    }
  }

  [(SBActivityAmbientViewController *)self _scaleForFullOverlayDismissalWithTranslation:y];
  currentFullOverlayDragScale = v13;
  if (v13 < 0.2 && self->_currentFullOverlayDragScale != 9.22337204e18)
  {
    currentFullOverlayDragScale = self->_currentFullOverlayDragScale;
  }

  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeScale(&v33, currentFullOverlayDragScale, currentFullOverlayDragScale);
  memset(&v32, 0, sizeof(v32));
  CGAffineTransformMakeTranslation(&v32, x, v8);
  t1 = v33;
  memset(&v31, 0, sizeof(v31));
  t2 = v32;
  CGAffineTransformConcat(&v31, &t1, &t2);
  [(SBActivityAmbientViewController *)self _cornerRadiusForFullOverlayDismissalWithTranslation:v8];
  v17 = v16;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__SBActivityAmbientViewController__beginFullOverlayDragWithTranslation___block_invoke;
  v28[3] = &unk_2783A8C18;
  v28[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v28];
  v18 = MEMORY[0x277D75D18];
  _animationSettingsForFullOverlayDrag = [(SBActivityAmbientViewController *)self _animationSettingsForFullOverlayDrag];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v26 = v31;
  v24[2] = __72__SBActivityAmbientViewController__beginFullOverlayDragWithTranslation___block_invoke_2;
  v24[3] = &unk_2783B5CB0;
  v25 = view;
  v27 = v17;
  v20 = view;
  [v18 sb_animateWithSettings:_animationSettingsForFullOverlayDrag mode:5 animations:v24 completion:0];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__SBActivityAmbientViewController__beginFullOverlayDragWithTranslation___block_invoke_3;
  v23[3] = &unk_2783A8BC8;
  v23[4] = self;
  *&v23[5] = v8;
  [MEMORY[0x277D75D18] sb_animateWithSettings:initWithDefaultValues mode:3 animations:v23 completion:0];
  self->_currentFullOverlayDragTranslationY = v8;
  self->_currentFullOverlayDragScale = currentFullOverlayDragScale;
  layer = [v20 layer];
  [layer frame];
  self->_currentFullOverlayDragOriginY = v22;
}

void __72__SBActivityAmbientViewController__beginFullOverlayDragWithTranslation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addNewBackgroundBlurMaterialViewWithInitialWeighting:0 hidden:1.0];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

uint64_t __72__SBActivityAmbientViewController__beginFullOverlayDragWithTranslation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setTransform:v5];
  return [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 88)];
}

uint64_t __72__SBActivityAmbientViewController__beginFullOverlayDragWithTranslation___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1000);
  [*(a1 + 32) _blurWeightingForFullOverlayDismissalWithTranslation:*(a1 + 40)];

  return [v1 setWeighting:?];
}

- (double)_scaleForFullOverlayDismissalWithTranslation:(double)translation
{
  view = [(SBActivityAmbientViewController *)self view];
  [view bounds];
  v6 = translation / (v5 / 6.0) + 1.0;

  BSUIConstrainValueWithRubberBand();
  if (v6 >= 1.0)
  {
    v8 = v7 + 1.0;
  }

  else
  {
    v8 = 1.0 - v7;
  }

  return fmin(fmax(v8, 0.0), 1.1);
}

- (double)_blurWeightingForFullOverlayDismissalWithTranslation:(double)translation
{
  view = [(SBActivityAmbientViewController *)self view];
  [view bounds];
  v6 = translation / (v5 * 0.25) + 1.0;

  BSUIConstrainValueWithRubberBand();
  if (v6 >= 1.0)
  {
    v8 = v7 + 1.0;
  }

  else
  {
    v8 = 1.0 - v7;
  }

  return fmin(fmax(v8, 0.0), 1.1);
}

- (double)_cornerRadiusForFullOverlayDismissalWithTranslation:(double)translation
{
  v3 = fabs(translation);
  view = [(SBActivityAmbientFullOverlayViewController *)self->_fullOverlayViewController view];
  [view bounds];
  v6 = v5;

  result = v6 * 0.5;
  if (v3 <= v6 * 0.5)
  {
    return v3;
  }

  return result;
}

- (id)_animationSettingsForFullOverlayDrag
{
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues setBehaviorType:1];
  [initWithDefaultValues setDefaultValues];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues setFrameRateRange:1114143 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];

  return initWithDefaultValues;
}

- (id)_animationSettingsForFullOverlayDragCancel
{
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues setBehaviorType:1];
  [initWithDefaultValues setDampingRatio:1.0];
  [initWithDefaultValues setResponse:0.5];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues setFrameRateRange:1114143 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];

  return initWithDefaultValues;
}

- (void)_cancelFullOverlayDrag
{
  [(SBActivityAmbientViewController *)self setCompactOverlayHidden:0];
  view = [(SBActivityAmbientFullOverlayViewController *)self->_fullOverlayViewController view];
  view2 = [(SBActivityAmbientViewController *)self view];
  [view2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x277D75D18];
  _animationSettingsForFullOverlayDragCancel = [(SBActivityAmbientViewController *)self _animationSettingsForFullOverlayDragCancel];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__SBActivityAmbientViewController__cancelFullOverlayDrag__block_invoke;
  v18[3] = &unk_2783AAFD0;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v19 = view;
  selfCopy = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__SBActivityAmbientViewController__cancelFullOverlayDrag__block_invoke_2;
  v16[3] = &unk_2783B5CD8;
  v16[4] = self;
  v17 = v19;
  v15 = v19;
  [v13 sb_animateWithSettings:_animationSettingsForFullOverlayDragCancel mode:3 animations:v18 completion:v16];
}

uint64_t __57__SBActivityAmbientViewController__cancelFullOverlayDrag__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAnchorPoint:{0.5, 0.5}];

  __asm { FMOV            V1.2D, #0.5 }

  [*(a1 + 32) setCenter:{vmulq_f64(*(a1 + 64), _Q1)}];
  v8 = *(a1 + 32);
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  v11[0] = *MEMORY[0x277CBF2C0];
  v11[1] = v9;
  v11[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v8 setTransform:v11];
  return [*(*(a1 + 40) + 992) setWeighting:0.0];
}

uint64_t __57__SBActivityAmbientViewController__cancelFullOverlayDrag__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1040) = 0;
  [*(a1 + 40) _setContinuousCornerRadius:0.0];
  [*(a1 + 32) _cleanupTransitionBlurViewIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _cleanupBackgroundBlurViewIfNecessary];
}

- (void)activityViewController:(id)controller didSetIdleTimerDisabled:(BOOL)disabled
{
  if (self->_fullOverlayViewController == controller)
  {
    delegate = [(SBActivityAmbientViewController *)self delegate];
    [delegate activityAmbientViewControllerResetIdleTimerBehavior:self];
  }
}

- (void)activityViewControllerContentRequestsCancellingGesture:(id)gesture
{
  if (self->_fullOverlayViewController == gesture)
  {
    [(UIPanGestureRecognizer *)self->_dismissPanGesture setEnabled:0];
    [(UIPanGestureRecognizer *)self->_dismissPanGesture setEnabled:1];
    [(UIScreenEdgePanGestureRecognizer *)self->_dismissEdgePanGesture setEnabled:0];
    dismissEdgePanGesture = self->_dismissEdgePanGesture;

    [(UIScreenEdgePanGestureRecognizer *)dismissEdgePanGesture setEnabled:1];
  }
}

- (void)activityViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:(id)d
{
  if (self->_fullOverlayViewController == d)
  {
    [(SBActivityAmbientViewController *)self _updateAudioCategoriesDisablingVolumeHUD];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v4 = [stop valueForKey:{@"SBActivityFullOverlayAnimationCompletionKey", finished}];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_dismissEdgePanGesture != begin && self->_dismissPanGesture != begin)
  {
LABEL_5:
    LOBYTE(fullOverlayViewController) = 0;
    return fullOverlayViewController & 1;
  }

  delegate = [(SBActivityAmbientViewController *)self delegate];
  v5 = [delegate activityAmbientViewControllerCanBeginFullOverlayDismissGesture:self];

  bannerManager = [SBApp bannerManager];
  view = [(SBActivityAmbientViewController *)self view];
  _sbWindowScene = [view _sbWindowScene];
  v9 = [bannerManager isDisplayingBannerInWindowScene:_sbWindowScene];

  activityItem = [(SBActivityViewController *)self->_fullOverlayViewController activityItem];
  v11 = [(SBActivityAmbientViewController *)self _isActiveActivityItem:activityItem];

  fullOverlayViewController = self->_fullOverlayViewController;
  if (fullOverlayViewController)
  {
    if (!((self->_overlayMode != 0 || (v5 & 1) == 0) | v9 & 1))
    {
      LOBYTE(fullOverlayViewController) = !self->_isInFullOverlayDrag && v11;
      return fullOverlayViewController & 1;
    }

    goto LABEL_5;
  }

  return fullOverlayViewController & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  dismissPanGesture = self->_dismissPanGesture;
  dismissEdgePanGesture = self->_dismissEdgePanGesture;
  v12 = dismissPanGesture == recognizerCopy && dismissEdgePanGesture == gestureRecognizerCopy || dismissPanGesture == gestureRecognizerCopy && dismissEdgePanGesture == recognizerCopy;

  return v12;
}

- (void)invalidate
{
  [(SBActivityViewController *)self->_fullOverlayViewController invalidate];
  [(SBActivityViewController *)self->_compactOverlayViewController invalidate];

  [(SBActivityAmbientViewController *)self _removeDismissGesture];
}

- (SBActivityAmbientViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __100__SBActivityAmbientViewController__fullOverlayViewControllerForItem_configuringForAlert_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "[ActivityID: %{public}@] error ensuring ambient full screen overlay content: %{public}@", v4, v5, v6, v7, v8);
}

void __83__SBActivityAmbientViewController__compactOverlayViewControllerForItem_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "[ActivityID: %{public}@] error ensuring ambient compact overlay content: %{public}@", v4, v5, v6, v7, v8);
}

@end