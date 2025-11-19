@interface SAUILayoutSpecifyingElementViewController
+ (void)initialize;
- (BOOL)_axCollapseIfExpandedByUserInteraction;
- (BOOL)_canShowWhileLocked;
- (BOOL)_expandToCustomLayoutModeFromUserActionIfPossible;
- (BOOL)_isObstructedBySensorRegion;
- (BOOL)isInteractiveDismissalEnabled;
- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (BOOL)isMinimalPresentationPossible;
- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (BOOL)isRequestingMenuPresentation;
- (BOOL)isTrackingTransition;
- (BOOL)isTrackingTransitionWithReason:(id)a3;
- (CGSize)_obstructedRegionSize;
- (NSArray)temporallyOrderedAlertingActivityAssertions;
- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)a3;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7;
- (NSString)description;
- (SAAutomaticallyInvalidatable)alertingActivityAssertion;
- (SAUILayoutHosting)layoutHost;
- (SAUILayoutModePreferring)layoutModePreference;
- (SAUILayoutSpecifyingElementViewController)initWithElementViewProvider:(id)a3;
- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion;
- (double)_defaultAlertingDuration;
- (double)concentricPaddingForProvidedView:(id)a3 fromViewProvider:(id)a4;
- (id)_alertingActivityAssertionWithReason:(id)a3 implicitlyDismissable:(BOOL)a4 withPreferredLayoutMode:(int64_t)a5;
- (id)_elementHost;
- (id)_overrideWithPreference:(id)a3;
- (id)_updatePreferredLayoutModeAssertionWithPreference:(id)a3;
- (id)alertWithReason:(id)a3 implicitlyDismissable:(BOOL)a4;
- (id)layoutModePreferenceForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (id)systemManagedAlertingActivityAssertionWithReason:(id)a3;
- (id)systemManagedAlertingActivityAssertionWithReason:(id)a3 preferredLayoutMode:(int64_t)a4;
- (int64_t)handleElementLongPress:(id)a3;
- (int64_t)handleElementTap:(id)a3;
- (int64_t)layoutMode;
- (int64_t)maximumSupportedLayoutMode;
- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (int64_t)minimumSupportedLayoutMode;
- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (int64_t)preferredLayoutMode;
- (unint64_t)customizationOptionsForLayoutMode:(int64_t)a3;
- (void)_axRequestDiminishment;
- (void)_configureAlertAssertionIfNecessary;
- (void)_configureTransitionShadowViewIfNecessary;
- (void)_defaultAlertingDuration;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_insertSnapshotView:(id)a3;
- (void)_invalidateElementPromotionPreferences;
- (void)_invalidatePreferredLayoutModeAssertionWithReason:(int64_t)a3;
- (void)_layoutTransitionShadowView;
- (void)addElementViewControllingObserver:(id)a3;
- (void)beginTrackingTransitionWithUniqueIdentifier:(id)a3 reason:(id)a4;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)elementRequestsNegativeResponse:(id)a3;
- (void)elementRequestsSignificantUpdateTransition:(id)a3;
- (void)endTrackingTransitionWithUniqueIdentifier:(id)a3;
- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)a3;
- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)a3;
- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)a3;
- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)a3;
- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)a3;
- (void)removeElementViewControllingObserver:(id)a3;
- (void)setLayoutHost:(id)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5;
- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5;
- (void)setSensorObscuringShadowProgress:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SAUILayoutSpecifyingElementViewController

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(SAUILayoutSpecifyingElementViewController *)self isViewLoaded];
  if (v4)
  {
    v5 = [(SAUILayoutSpecifyingElementViewController *)self view];
  }

  else
  {
    v5 = @"[view not loaded]";
  }

  v6 = SAUIStringFromElementViewLayoutMode([(SAUILayoutSpecifyingElementViewController *)self layoutMode]);
  v7 = SAUIStringFromElementViewLayoutMode([(SAUILayoutSpecifyingElementViewController *)self preferredLayoutMode]);
  v8 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
  v9 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
  v10 = [v9 element];
  v11 = MEMORY[0x26D6A1D80]();
  v12 = [v14 stringWithFormat:@"<%@: %p view: %@; layoutMode: %@; preferredLayoutMode: %@; elementViewProvider: %@; element: %@>", v3, self, v5, v6, v7, v8, v11];;

  if (v4)
  {
  }

  return v12;
}

- (int64_t)layoutMode
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 layoutMode];

  return v3;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (int64_t)preferredLayoutMode
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 preferredLayoutMode];

  return v3;
}

- (int64_t)maximumSupportedLayoutMode
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 maximumSupportedLayoutMode];

  return v3;
}

- (int64_t)minimumSupportedLayoutMode
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 minimumSupportedLayoutMode];

  return v3;
}

- (NSArray)temporallyOrderedAlertingActivityAssertions
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = self;
  objc_sync_enter(v4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4->_reasonsToAlertingActivityAssertions;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(NSMapTable *)v4->_reasonsToAlertingActivityAssertions objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        [v3 addObject:v9];
      }

      v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&__block_literal_global_0];
  objc_sync_exit(v4);

  return v3;
}

void __80__SAUILayoutSpecifyingElementViewController__configureAlertAssertionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 135);
    if (v5 == v6)
    {
      *(WeakRetained + 135) = 0;
    }
  }
}

- (void)_layoutTransitionShadowView
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SAUILayoutSpecifyingElementViewController *)self view];
    v4 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    [WeakRetained sensorRegionInContentView:v3 fromViewProvider:v4];
  }

  v5 = [(UIImageView *)self->_contentsTransitionShadowView image];
  [v5 size];
  BSRectWithSize();
  v6 = [(SAUILayoutSpecifyingElementViewController *)self traitCollection];
  [v6 displayScale];
  v16 = v7;
  UIRectCenteredIntegralRectScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(UIImageView *)self->_contentsTransitionShadowView setFrame:v9, v11, v13, v15, v16];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewDidLayoutSubviews];
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = self->_elementViewProvider;
    v4 = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider layoutHostContainerViewDidLayoutSubviews:v4];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewWillLayoutSubviews];
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = self->_elementViewProvider;
    v4 = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider layoutHostContainerViewWillLayoutSubviews:v4];
  }

  [(SAUILayoutSpecifyingElementViewController *)self _configureTransitionShadowViewIfNecessary];
  [(SAUILayoutSpecifyingElementViewController *)self _layoutTransitionShadowView];
}

- (void)_configureTransitionShadowViewIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    v5 = [WeakRetained viewProviderShouldMakeSensorShadowVisible:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277D75348] systemOrangeColor];
  v7 = [(UIImageView *)self->_contentsTransitionShadowView tintColor];
  v8 = BSEqualObjects();

  if (v5 != v8)
  {
    [(UIImageView *)self->_contentsTransitionShadowView removeFromSuperview];
    contentsTransitionShadowView = self->_contentsTransitionShadowView;
    self->_contentsTransitionShadowView = 0;
  }

  if (!self->_contentsTransitionShadowView)
  {
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__SAUILayoutSpecifyingElementViewController__configureTransitionShadowViewIfNecessary__block_invoke;
    v11[3] = &unk_279D32760;
    v11[4] = self;
    v13 = v5;
    v12 = v6;
    [v10 performWithoutAnimation:v11];
  }
}

- (BOOL)_isObstructedBySensorRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    v5 = [(SAUILayoutSpecifyingElementViewController *)self view];
    [WeakRetained sensorRegionObstructingViewProvider:v4 inContentView:v5];
    v8 = v7 != *(MEMORY[0x277CBF3A8] + 8) || v6 != *MEMORY[0x277CBF3A8];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SAAutomaticallyInvalidatable)alertingActivityAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_alertingActivityAssertion);

  return WeakRetained;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    SAUIRegisterSystemApertureLogging();
  }
}

- (SAUILayoutSpecifyingElementViewController)initWithElementViewProvider:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SAUILayoutSpecifyingElementViewController initWithElementViewProvider:];
  }

  v13.receiver = self;
  v13.super_class = SAUILayoutSpecifyingElementViewController;
  v6 = [(SAUILayoutSpecifyingElementViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementViewProvider, a3);
    if (objc_opt_respondsToSelector())
    {
      [(SAElementViewProviding *)v7->_elementViewProvider setLayoutHost:v7];
    }

    v8 = [(SAElementViewProviding *)v7->_elementViewProvider element];
    if (objc_opt_respondsToSelector())
    {
      [v8 setElementHost:v7];
    }

    v9 = [(SAElementViewProviding *)v7->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
    [v9 addBehaviorOverridingParticipant:v7];

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v10;
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v6 viewDidLoad];
  [(SAUILayoutSpecifyingElementViewController *)self setOverrideUserInterfaceStyle:2];
  v3 = [(SAUILayoutSpecifyingElementViewController *)self view];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [(SAUILayoutSpecifyingElementViewController *)self _containerView];
  if (v5)
  {
    [v3 addSubview:v5];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewWillAppear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SAUILayoutSpecifyingElementViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillAppear_ usingBlock:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewDidAppear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SAUILayoutSpecifyingElementViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidAppear_ usingBlock:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewWillDisappear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SAUILayoutSpecifyingElementViewController_viewWillDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillDisappear_ usingBlock:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewDidDisappear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SAUILayoutSpecifyingElementViewController_viewDidDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidDisappear_ usingBlock:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = self->_elementViewProvider;
    v9 = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider contentProviderWillTransitionToSize:v9 inContainerView:v7 transitionCoordinator:width, height];
  }

  previousLayoutMode = self->_previousLayoutMode;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SAUILayoutSpecifyingElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_279D32710;
  objc_copyWeak(v12, &location);
  v12[1] = previousLayoutMode;
  [v7 animateAlongsideTransition:0 completion:v11];
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __96__SAUILayoutSpecifyingElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = WeakRetained;
  if (v3 == [WeakRetained _previousLayoutMode])
  {
    [v4 _setPreviousLayoutMode:{objc_msgSend(v4, "layoutMode")}];
  }
}

- (BOOL)_canShowWhileLocked
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  elementViewProvider = self->_elementViewProvider;

  return [(SAElementViewProviding *)elementViewProvider _canShowWhileLocked];
}

- (id)alertWithReason:(id)a3 implicitlyDismissable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SAElementViewProviding *)self->_elementViewProvider element];
  v8 = SAHasActivityBehavior();

  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    WeakRetained = objc_loadWeakRetained(&v9->_alertingActivityAssertion);
    v11 = objc_opt_class();
    v12 = WeakRetained;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      v14 = [(SAUILayoutSpecifyingElementViewController *)v9 _alertingActivityAssertionWithReason:v6 implicitlyDismissable:v4 withPreferredLayoutMode:[(SAUILayoutSpecifyingElementViewController *)v9 maximumSupportedLayoutMode]];
      objc_initWeak(&location, v9);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __83__SAUILayoutSpecifyingElementViewController_alertWithReason_implicitlyDismissable___block_invoke;
      v19 = &unk_279D32738;
      objc_copyWeak(&v20, &location);
      [v14 addInvalidationBlock:&v16];
      objc_storeWeak(&v9->_alertingActivityAssertion, v14);
      [(SAUILayoutSpecifyingElementViewController *)v9 _invalidatePreferredLayoutModeAssertionWithReason:2, v16, v17, v18, v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __83__SAUILayoutSpecifyingElementViewController_alertWithReason_implicitlyDismissable___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 134);

    if (v5 == v6)
    {
      objc_storeWeak(v4 + 134, 0);
      [v4 _invalidateElementPromotionPreferences];
    }
  }
}

- (int64_t)handleElementTap:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SAElementViewProviding *)self->_elementViewProvider handleElementViewEvent:0]& 1) != 0)
  {
    return 2;
  }

  else
  {
    return [(SAUILayoutSpecifyingElementViewController *)self _expandToCustomLayoutModeFromUserActionIfPossible];
  }
}

- (int64_t)handleElementLongPress:(id)a3
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]!= 3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return [(SAUILayoutSpecifyingElementViewController *)self _expandToCustomLayoutModeFromUserActionIfPossible];
  }

  if ([(SAElementViewProviding *)self->_elementViewProvider handleElementViewEvent:4])
  {
    return 2;
  }

  return 0;
}

- (void)addElementViewControllingObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)removeElementViewControllingObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)setLayoutHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (WeakRetained != obj)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [SAUILayoutSpecifyingElementViewController setLayoutHost:];
    }

    objc_storeWeak(&self->_layoutHost, obj);
    [(SAUILayoutSpecifyingElementViewController *)self _configureAlertAssertionIfNecessary];
    v5 = [(SAElementViewProviding *)self->_elementViewProvider element];
    if (SAHasAlertBehavior())
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 setAlertHost:self];
      }
    }

    else if (SAHasActivityBehavior() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 setActivityHost:self];
    }
  }
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v6 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  [v6 setLayoutMode:a3 reason:a4];
}

- (BOOL)isInteractiveDismissalEnabled
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 isInteractiveDismissalEnabled];

  return v3;
}

- (BOOL)isMinimalPresentationPossible
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 isMinimalPresentationPossible];

  return v3;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v9 = a4.trailing;
  v10 = a4.bottom;
  v11 = a4.leading;
  v12 = a4.top;
  v14 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  [v14 preferredEdgeOutsetsForLayoutMode:a3 suggestedOutsets:v12 maximumOutsets:{v11, v10, v9, top, leading, bottom, trailing}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.trailing = v26;
  result.bottom = v25;
  result.leading = v24;
  result.top = v23;
  return result;
}

- (BOOL)isRequestingMenuPresentation
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 isRequestingMenuPresentation];

  return v3;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5
{
  layoutMode = self->_layoutMode;
  if (layoutMode != a3)
  {
    v9 = a5;
    [(SAUILayoutSpecifyingElementViewController *)self _setPreviousLayoutMode:layoutMode];
    self->_layoutMode = a3;
    if (a4 == 3)
    {
      if ([(SAUIPreferredLayoutModeAssertion *)self->_preferredLayoutModeAssertion preferredLayoutMode]!= a3 || [(SAUIPreferredLayoutModeAssertion *)self->_preferredLayoutModeAssertion layoutModeChangeReason]!= 3)
      {
        v10 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:a3 reason:3];
        v11 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v10];
      }

      WeakRetained = objc_loadWeakRetained(&self->_alertingActivityAssertion);
      [WeakRetained invalidateWithReason:@"layout mode changed by user interaction"];
    }

    else if (a3 <= 0)
    {
      [(SAAssertion *)self->_preferredLayoutModeAssertion invalidateWithReason:@"no longer in visible layout mode"];
    }

    v13 = [v9 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
    [v13 setLayoutMode:self->_layoutMode reason:a4 forTargetWithOverrider:v9];

    v14 = [(SAUILayoutSpecifyingElementViewController *)self viewIfLoaded];
    [v14 setNeedsLayout];
  }
}

- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_minimumSupportedLayoutModeForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 minimumSupportedLayoutModeForTargetWithOverrider:v6 isDefaultValue:a4];

  if (a4 && *a4 || v8 == -1)
  {
    v9 = SATargetElementFromBehaviorOverrider();
    if (SAHasActivityBehavior())
    {
      v8 = 1;
    }

    else if (SAHasAlertBehavior())
    {
      if (v8 == -1)
      {
        v10 = [v6 behaviorOverridingTarget];
        if (objc_opt_respondsToSelector())
        {
          v8 = [v10 preferredLayoutMode];
        }

        else
        {
          v8 = -1;
        }
      }

      else
      {
        v8 = 2;
      }
    }
  }

  return v8;
}

- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_maximumSupportedLayoutModeForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 maximumSupportedLayoutModeForTargetWithOverrider:v6 isDefaultValue:a4];

  return v8;
}

- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_isInteractiveDismissalEnabledForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 isInteractiveDismissalEnabledForTargetWithOverrider:v6 isDefaultValue:a4];

  if (a4 && *a4)
  {
    v9 = [v6 behaviorOverridingTarget];
    if (SAHasActivityBehavior())
    {
      v8 = 0;
    }

    else
    {
      v8 |= SAHasAlertBehavior();
    }
  }

  return v8 & 1;
}

- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_isMinimalPresentationPossibleForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 isMinimalPresentationPossibleForTargetWithOverrider:v6 isDefaultValue:a4];

  if (a4 && *a4)
  {
    v9 = [v6 behaviorOverridingTarget];
    if (SAHasActivityBehavior())
    {
      v8 = 0;
    }

    else if (SAHasAlertBehavior())
    {
      v12 = 1;
      v10 = [(SAUILayoutSpecifyingElementViewController *)self layoutModePreferenceForTargetWithOverrider:v6 isDefaultValue:&v12];
      v8 = [v10 preferredLayoutMode] == 2;
    }
  }

  return v8;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7
{
  if (a3 < 1)
  {
    v28 = *MEMORY[0x277D75060];
    v29 = *(MEMORY[0x277D75060] + 8);
    v30 = *(MEMORY[0x277D75060] + 16);
    v31 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    trailing = a5.trailing;
    bottom = a5.bottom;
    leading = a5.leading;
    top = a5.top;
    v12 = a4.trailing;
    v13 = a4.bottom;
    v14 = a4.leading;
    v15 = a4.top;
    v18 = a6;
    v19 = [v18 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_preferredEdgeOutsetsForLayoutMode_suggestedOutsets_maximumOutsets_forTargetWithOverrider_isDefaultValue_];
    [v19 preferredEdgeOutsetsForLayoutMode:a3 suggestedOutsets:v18 maximumOutsets:a7 forTargetWithOverrider:v15 isDefaultValue:{v14, v13, v12, top, leading, bottom, trailing}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = SAUIDirectionEdgeInsetsComponentWiseMaximum(v21, v23, v25, v27, top);
  }

  result.trailing = v31;
  result.bottom = v30;
  result.leading = v29;
  result.top = v28;
  return result;
}

- (id)layoutModePreferenceForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NSPointerArray *)self->_preferredLayoutModeAssertions sa_lastPointer];
  if (!v7)
  {
    v8 = [v6 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_layoutModePreferenceForTargetWithOverrider_isDefaultValue_];
    v9 = [v8 layoutModePreferenceForTargetWithOverrider:v6 isDefaultValue:a4];

    if (a4 && *a4)
    {
      v10 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:2 reason:0];

      v9 = v10;
    }

    v11 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v9];
    v7 = [(NSPointerArray *)self->_preferredLayoutModeAssertions sa_lastPointer];
  }

  return v7;
}

- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSPointerArray *)v6->_preferredLayoutModeAssertions sa_lastPointer];
  objc_sync_exit(v6);

  return v7;
}

- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5
{
  v6 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:a3 reason:a4];
  v8 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v6];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
    v7 = v8;
  }
}

- (double)concentricPaddingForProvidedView:(id)a3 fromViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  v9 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained concentricPaddingForProvidedView:v6 fromViewProvider:v7];
    v9 = v10;
  }

  return v9;
}

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = self->_elementViewProvider;
    v9 = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider contentProviderWillTransitionToSize:v9 inContainerView:v10 transitionCoordinator:width, height];
  }
}

- (BOOL)isTrackingTransition
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_transitionIDsToReasons count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isTrackingTransitionWithReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5->_transitionIDsToReasons;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)v5->_transitionIDsToReasons objectForKey:*(*(&v14 + 1) + 8 * i), v14];
        v12 = [v11 isEqualToString:v4];

        v8 += v12;
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    LOBYTE(v7) = v8 != 0;
  }

  objc_sync_exit(v5);
  return v7;
}

- (void)beginTrackingTransitionWithUniqueIdentifier:(id)a3 reason:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [SAUILayoutSpecifyingElementViewController beginTrackingTransitionWithUniqueIdentifier:reason:];
  }

  if (![v7 length])
  {
    [SAUILayoutSpecifyingElementViewController beginTrackingTransitionWithUniqueIdentifier:reason:];
  }

  v8 = [(SAElementViewProviding *)self->_elementViewProvider element];
  v9 = SAUILogElementViewControlling;
  if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = MEMORY[0x26D6A1D80](v8);
    v16 = 138543874;
    v17 = v11;
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_26C482000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin tracking transition with identifier '%{public}@' with reason: %{public}@", &v16, 0x20u);
  }

  v12 = self;
  objc_sync_enter(v12);
  transitionIDsToReasons = v12->_transitionIDsToReasons;
  if (!transitionIDsToReasons)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = v12->_transitionIDsToReasons;
    v12->_transitionIDsToReasons = v14;

    transitionIDsToReasons = v12->_transitionIDsToReasons;
  }

  [(NSMutableDictionary *)transitionIDsToReasons setObject:v7 forKey:v6];
  objc_sync_exit(v12);
}

- (void)endTrackingTransitionWithUniqueIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_transitionIDsToReasons objectForKey:v4];
    if (v6)
    {
      v7 = [(SAElementViewProviding *)v5->_elementViewProvider element];
      v8 = SAUILogElementViewControlling;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x26D6A1D80](v7);
        v11 = 138543874;
        v12 = v9;
        v13 = 2114;
        v14 = v4;
        v15 = 2114;
        v16 = v6;
        _os_log_impl(&dword_26C482000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: End tracking transition with identifier '%{public}@' with reason: %{public}@", &v11, 0x20u);
      }

      [(NSMutableDictionary *)v5->_transitionIDsToReasons removeObjectForKey:v4];
      if (![(NSMutableDictionary *)v5->_transitionIDsToReasons count])
      {
        transitionIDsToReasons = v5->_transitionIDsToReasons;
        v5->_transitionIDsToReasons = 0;
      }
    }

    objc_sync_exit(v5);
  }
}

- (void)_axRequestDiminishment
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _axLayoutSpecifierRequestsDiminishment:self];
    }
  }
}

- (BOOL)_axCollapseIfExpandedByUserInteraction
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]< 1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained _axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (BOOL)_expandToCustomLayoutModeFromUserActionIfPossible
{
  if (([(SAUILayoutSpecifyingElementViewController *)self layoutMode]- 1) > 1 || [(SAUILayoutSpecifyingElementViewController *)self maximumSupportedLayoutMode]< 3)
  {
    return 0;
  }

  v3 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:3 reason:3];
  v4 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v3];

  if (v4)
  {
    v5 = v4[2](v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = self->_observers;
    objc_sync_enter(v6);
    v7 = [(NSHashTable *)self->_observers copy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v5[2](v5, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v6);
  }
}

void __86__SAUILayoutSpecifyingElementViewController__configureTransitionShadowViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v2 imageNamed:@"elementContentTransitionShadow" inBundle:v3];

  if (*(a1 + 48) == 1)
  {
    v4 = [v10 imageWithRenderingMode:2];

    v10 = v4;
  }

  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
  v6 = *(a1 + 32);
  v7 = *(v6 + 992);
  *(v6 + 992) = v5;

  if (*(a1 + 48) == 1)
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = 0;
  }

  [*(*(a1 + 32) + 992) setTintColor:v8];
  [*(*(a1 + 32) + 992) setContentMode:4];
  [*(*(a1 + 32) + 992) setAlpha:*(*(a1 + 32) + 1064)];
  [*(*(a1 + 32) + 992) setUserInteractionEnabled:0];
  v9 = [*(a1 + 32) view];
  [v9 addSubview:*(*(a1 + 32) + 992)];
  [*(a1 + 32) _layoutTransitionShadowView];
}

- (id)_overrideWithPreference:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [SAUIPreferredLayoutModeAssertion alloc];
  v7 = [(SAElementViewProviding *)v5->_elementViewProvider element];
  v8 = [(SAUIPreferredLayoutModeAssertion *)v6 initWithRepresentedElement:v7 layoutModePreference:v4];

  objc_initWeak(&location, v5);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __69__SAUILayoutSpecifyingElementViewController__overrideWithPreference___block_invoke;
  v21 = &unk_279D32738;
  objc_copyWeak(&v22, &location);
  [(SAAssertion *)v8 addInvalidationBlock:&v18];
  preferredLayoutModeAssertions = v5->_preferredLayoutModeAssertions;
  if (!preferredLayoutModeAssertions)
  {
    v10 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v11 = v5->_preferredLayoutModeAssertions;
    v5->_preferredLayoutModeAssertions = v10;

    preferredLayoutModeAssertions = v5->_preferredLayoutModeAssertions;
  }

  [(NSPointerArray *)preferredLayoutModeAssertions sa_compact:v18];
  v12 = 0;
  do
  {
    v13 = v12;
    if (v12 >= [(NSPointerArray *)v5->_preferredLayoutModeAssertions count])
    {
      break;
    }

    v14 = [(NSPointerArray *)v5->_preferredLayoutModeAssertions pointerAtIndex:v12];
    v15 = [v14 layoutModeChangeReason];
    v16 = [(SAUIPreferredLayoutModeAssertion *)v8 layoutModeChangeReason];
    ++v12;
  }

  while (v15 <= v16);
  [(NSPointerArray *)v5->_preferredLayoutModeAssertions insertPointer:v8 atIndex:v13];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  objc_sync_exit(v5);

  return v8;
}

void __69__SAUILayoutSpecifyingElementViewController__overrideWithPreference___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[126] count])
    {
      v5 = 0;
      while ([v4[126] pointerAtIndex:v5] != v8)
      {
        if (++v5 >= [v4[126] count])
        {
          goto LABEL_9;
        }
      }

      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4[126] removePointerAtIndex:v5];
      }
    }

LABEL_9:
    v6 = [v4 layoutMode];
    if (v6 != [v4 preferredLayoutMode])
    {
      v7 = objc_loadWeakRetained(v4 + 137);
      [v7 preferredLayoutModeDidInvalidateForLayoutSpecifier:v4];
    }
  }
}

- (id)_updatePreferredLayoutModeAssertionWithPreference:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SAUILogElementViewControlling;
  if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v4;
    _os_log_impl(&dword_26C482000, v5, OS_LOG_TYPE_DEFAULT, "Update preferred layout mode assertion with layout mode preference: %{public}@", buf, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(SAAutomaticallyInvalidatingAssertion *)v4 preferredLayoutMode];
  if ([(SAUILayoutSpecifyingElementViewController *)v6 minimumSupportedLayoutMode]> v7)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_25;
  }

  v8 = [(SAUILayoutSpecifyingElementViewController *)v6 maximumSupportedLayoutMode];
  if (v7 && v7 > v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [(SAAutomaticallyInvalidatingAssertion *)v4 layoutModeChangeReason];
  if (v10 <= 4 && ((1 << v10) & 0x1A) != 0 || !v6->_cooldownAssertion)
  {
    v11 = [(SAUILayoutSpecifyingElementViewController *)v6 _overrideWithPreference:v4];
    preferredLayoutModeAssertion = v6->_preferredLayoutModeAssertion;
    v6->_preferredLayoutModeAssertion = v11;

    objc_initWeak(&location, v6);
    v13 = v6->_preferredLayoutModeAssertion;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_2;
    v30[3] = &unk_279D32738;
    objc_copyWeak(&v31, &location);
    [(SAAssertion *)v13 addInvalidationBlock:v30];
    if ([(SAUIPreferredLayoutModeAssertion *)v6->_preferredLayoutModeAssertion layoutModeChangeReason]== 3)
    {
      if (v6->_cooldownAssertion)
      {
        v14 = SAUILogElementViewControlling;
        if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
        {
          cooldownAssertion = v6->_cooldownAssertion;
          *buf = 138543362;
          v37 = cooldownAssertion;
          _os_log_impl(&dword_26C482000, v14, OS_LOG_TYPE_DEFAULT, "Resetting automatic invalidation timer of existing cooldown assertion: %{public}@", buf, 0xCu);
        }

        [(SAAutomaticallyInvalidatingAssertion *)v6->_cooldownAssertion resetAutomaticInvalidationTimer];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x277D6B8A0]) initWithInvalidationInterval:3.0];
        v20 = v6->_cooldownAssertion;
        v6->_cooldownAssertion = v19;

        v21 = v6->_cooldownAssertion;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_119;
        v28[3] = &unk_279D32738;
        objc_copyWeak(&v29, &location);
        [(SAAutomaticallyInvalidatingAssertion *)v21 addInvalidationBlock:v28];
        [(SAAutomaticallyInvalidatingAssertion *)v6->_cooldownAssertion setAutomaticallyInvalidatable:1];
        v22 = SAUILogElementViewControlling;
        if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v6->_cooldownAssertion;
          *buf = 138543618;
          v37 = v23;
          v38 = 2114;
          v39 = v4;
          _os_log_impl(&dword_26C482000, v22, OS_LOG_TYPE_DEFAULT, "Created cooldown assertion (%{public}@) for layout mode preference: %{public}@", buf, 0x16u);
        }

        objc_destroyWeak(&v29);
      }
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = SAUILogElementViewControlling;
    if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v6->_cooldownAssertion;
      *buf = 138543362;
      v37 = v17;
      _os_log_impl(&dword_26C482000, v16, OS_LOG_TYPE_DEFAULT, "Deferring preferred layout mode assertion update due to existing cooldown assertion: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, v6);
    v18 = v6->_cooldownAssertion;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke;
    v33[3] = &unk_279D32788;
    objc_copyWeak(&v35, buf);
    v34 = v4;
    [(SAAutomaticallyInvalidatingAssertion *)v18 addInvalidationBlock:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  objc_initWeak(buf, v6);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_120;
  v26[3] = &unk_279D327B0;
  objc_copyWeak(&v27, buf);
  v26[4] = v6;
  v9 = MEMORY[0x26D6A2080](v26);
  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
LABEL_25:
  v24 = MEMORY[0x26D6A2080](v9);

  objc_sync_exit(v6);

  return v24;
}

void __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _updatePreferredLayoutModeAssertionWithPreference:*(a1 + 32)];
}

void __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 127);
    if (v5 == v6)
    {
      *(WeakRetained + 127) = 0;
    }
  }
}

void __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_119(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 129);
    if (v5 == v6)
    {
      *(WeakRetained + 129) = 0;
    }
  }
}

uint64_t __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (v4 = [WeakRetained layoutMode], v4 != objc_msgSend(v3, "preferredLayoutMode")))
  {
    v6 = objc_loadWeakRetained(v3 + 137);
    [v6 preferredLayoutModeDidInvalidateForLayoutSpecifier:*(a1 + 32)];

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_defaultAlertingDuration
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(SAUILayoutSpecifyingElementViewController *)a2 _defaultAlertingDuration];
  }

  [WeakRetained alertingDurationForHost:self];
  v6 = v5;

  return v6;
}

- (id)_alertingActivityAssertionWithReason:(id)a3 implicitlyDismissable:(BOOL)a4 withPreferredLayoutMode:(int64_t)a5
{
  v6 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(SAElementViewProviding *)self->_elementViewProvider element];
  if (SAHasActivityBehavior())
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(NSMapTable *)v10->_reasonsToAlertingActivityAssertions objectForKey:v8];
    if (!v11)
    {
      v12 = [SAUILayoutModePreference alloc];
      if (v6)
      {
        v13 = 5;
      }

      else
      {
        v13 = 2;
      }

      v14 = [(SAUILayoutModePreference *)v12 initWithPreferredLayoutMode:a5 reason:v13];
      v15 = [(SAUILayoutSpecifyingElementViewController *)v10 _overrideWithPreference:v14];

      v16 = [SAUIAlertingAssertion alloc];
      [(SAUILayoutSpecifyingElementViewController *)v10 _defaultAlertingDuration];
      v11 = [(SAUIAlertingAssertion *)v16 initWithPreferredLayoutModeAssertion:v15 invalidationInterval:?];
      v17 = SAUILogElementViewControlling;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x26D6A1D80](v9);
        *buf = 138543874;
        v31 = v11;
        v32 = 2114;
        v33 = v8;
        v34 = 2114;
        v35 = v18;
        _os_log_impl(&dword_26C482000, v17, OS_LOG_TYPE_DEFAULT, "Created alerting activity assertion (%{public}@) with reason '%{public}@' for element: %{public}@", buf, 0x20u);
      }

      objc_initWeak(buf, v10);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __128__SAUILayoutSpecifyingElementViewController__alertingActivityAssertionWithReason_implicitlyDismissable_withPreferredLayoutMode___block_invoke;
      v27 = &unk_279D32788;
      objc_copyWeak(&v29, buf);
      v19 = v8;
      v28 = v19;
      [(SAAssertion *)v11 addInvalidationBlock:&v24];
      reasonsToAlertingActivityAssertions = v10->_reasonsToAlertingActivityAssertions;
      if (!reasonsToAlertingActivityAssertions)
      {
        v21 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
        v22 = v10->_reasonsToAlertingActivityAssertions;
        v10->_reasonsToAlertingActivityAssertions = v21;

        reasonsToAlertingActivityAssertions = v10->_reasonsToAlertingActivityAssertions;
      }

      [(NSMapTable *)reasonsToAlertingActivityAssertions setObject:v11 forKey:v19, v24, v25, v26, v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    objc_sync_exit(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __128__SAUILayoutSpecifyingElementViewController__alertingActivityAssertionWithReason_implicitlyDismissable_withPreferredLayoutMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[128] removeObjectForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_configureAlertAssertionIfNecessary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SAElementViewProviding *)self->_elementViewProvider element];
  if (SAHasAlertBehavior())
  {
    if (!self->_alertAssertion)
    {
      WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

      if (WeakRetained)
      {
        v5 = self;
        objc_sync_enter(v5);
        v6 = objc_alloc(MEMORY[0x277D6B8A0]);
        [(SAUILayoutSpecifyingElementViewController *)v5 _defaultAlertingDuration];
        v7 = [v6 initWithInvalidationInterval:?];
        v8 = SAUILogElementViewControlling;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = MEMORY[0x26D6A1D80](v3);
          *buf = 138543618;
          v14 = v7;
          v15 = 2114;
          v16 = v9;
          _os_log_impl(&dword_26C482000, v8, OS_LOG_TYPE_DEFAULT, "Created alert assertion (%{public}@) for element: %{public}@", buf, 0x16u);
        }

        objc_initWeak(buf, v5);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __80__SAUILayoutSpecifyingElementViewController__configureAlertAssertionIfNecessary__block_invoke;
        v11[3] = &unk_279D32738;
        objc_copyWeak(&v12, buf);
        [v7 addInvalidationBlock:v11];
        alertAssertion = self->_alertAssertion;
        self->_alertAssertion = v7;

        objc_destroyWeak(&v12);
        objc_destroyWeak(buf);
        objc_sync_exit(v5);
      }
    }
  }
}

- (void)_invalidatePreferredLayoutModeAssertionWithReason:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = SAUILogElementViewControlling;
  if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SAUIStringFromLayoutModeChangeReason(a3);
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&dword_26C482000, v6, OS_LOG_TYPE_DEFAULT, "Invalidate preferred layout mode assertion with reason: %{public}@", buf, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  if (a3 <= 4 && ((1 << a3) & 0x1A) != 0 || !v8->_cooldownAssertion)
  {
    preferredLayoutModeAssertion = v8->_preferredLayoutModeAssertion;
    v10 = SAUIStringFromLayoutModeChangeReason(a3);
    [(SAAssertion *)preferredLayoutModeAssertion invalidateWithReason:v10];

    WeakRetained = objc_loadWeakRetained(&v8->_layoutHost);
    [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:v8];
  }

  else
  {
    v12 = SAUILogElementViewControlling;
    if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
    {
      cooldownAssertion = v8->_cooldownAssertion;
      *buf = 138543362;
      v18 = cooldownAssertion;
      _os_log_impl(&dword_26C482000, v12, OS_LOG_TYPE_DEFAULT, "Deferring preferred layout mode assertion invalidation due to existing cooldown assertion: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, v8);
    v14 = v8->_cooldownAssertion;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__SAUILayoutSpecifyingElementViewController__invalidatePreferredLayoutModeAssertionWithReason___block_invoke;
    v15[3] = &unk_279D327D8;
    objc_copyWeak(v16, buf);
    v16[1] = a3;
    [(SAAutomaticallyInvalidatingAssertion *)v14 addInvalidationBlock:v15];
    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v8);
}

void __95__SAUILayoutSpecifyingElementViewController__invalidatePreferredLayoutModeAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidatePreferredLayoutModeAssertionWithReason:*(a1 + 40)];
}

- (void)_invalidateElementPromotionPreferences
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:self];
  }
}

- (CGSize)_obstructedRegionSize
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SAUILayoutSpecifyingElementViewController *)self view];
    v5 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    [WeakRetained sensorRegionInContentView:v4 fromViewProvider:v5];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_insertSnapshotView:(id)a3
{
  v4 = a3;
  v5 = [(SAUILayoutSpecifyingElementViewController *)self view];
  [v5 insertSubview:v4 belowSubview:self->_contentsTransitionShadowView];
}

- (void)elementRequestsNegativeResponse:(id)a3
{
  v5 = a3;
  v4 = [(SAUILayoutSpecifyingElementViewController *)self _elementHost];
  if (objc_opt_respondsToSelector())
  {
    [v4 elementRequestsNegativeResponse:v5];
  }
}

- (void)elementRequestsSignificantUpdateTransition:(id)a3
{
  v5 = a3;
  v4 = [(SAUILayoutSpecifyingElementViewController *)self _elementHost];
  if (objc_opt_respondsToSelector())
  {
    [v4 elementRequestsSignificantUpdateTransition:v5];
  }
}

uint64_t __105__SAUILayoutSpecifyingElementViewController_SubclassSupport__temporallyOrderedAlertingActivityAssertions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  [v5 timeIntervalSinceDate:v6];
  if (v7 > 0.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)systemManagedAlertingActivityAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [(SAUILayoutSpecifyingElementViewController *)self systemManagedAlertingActivityAssertionWithReason:v4 preferredLayoutMode:[(SAUILayoutSpecifyingElementViewController *)self maximumSupportedLayoutMode]];

  return v5;
}

- (id)systemManagedAlertingActivityAssertionWithReason:(id)a3 preferredLayoutMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(SAUILayoutSpecifyingElementViewController *)self _alertingActivityAssertionWithReason:v6 implicitlyDismissable:0 withPreferredLayoutMode:a4];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __131__SAUILayoutSpecifyingElementViewController_SubclassSupport__systemManagedAlertingActivityAssertionWithReason_preferredLayoutMode___block_invoke;
  v12 = &unk_279D32738;
  objc_copyWeak(&v13, &location);
  [v7 addInvalidationBlock:&v9];
  [(SAUILayoutSpecifyingElementViewController *)self _invalidatePreferredLayoutModeAssertionWithReason:4, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __131__SAUILayoutSpecifyingElementViewController_SubclassSupport__systemManagedAlertingActivityAssertionWithReason_preferredLayoutMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invalidateElementPromotionPreferences];
    WeakRetained = v2;
  }
}

- (SAUILayoutModePreferring)layoutModePreference
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 layoutModePreference];

  return v3;
}

- (unint64_t)customizationOptionsForLayoutMode:(int64_t)a3
{
  v4 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v5 = [v4 customizationOptionsForLayoutMode:a3];

  return v5;
}

- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion
{
  v2 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v3 = [v2 preferredLayoutModeAssertion];

  return v3;
}

- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v6 = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  [v6 setPreferredLayoutMode:a3 reason:a4];
}

- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)a3
{
  [(SAUILayoutSpecifyingElementViewController *)self _invalidatePreferredLayoutModeAssertionWithReason:1];
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)a3
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)a3
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained menuPresentationRequestDidChangeForLayoutSpecifier:self];
  }
}

- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained edgeOutsetsForSize:{width, height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.trailing = v17;
  result.bottom = v16;
  result.leading = v15;
  result.top = v14;
  return result;
}

- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:v5];
  }
}

- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredComponentViewSizeDidInvalidateForLayoutSpecifier:v5];
  }
}

- (void)setSensorObscuringShadowProgress:(double)a3
{
  if (self->_sensorObscuringShadowProgress != a3)
  {
    v6[6] = v3;
    v6[7] = v4;
    self->_sensorObscuringShadowProgress = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __95__SAUILayoutSpecifyingElementViewController_SubclassSupport__setSensorObscuringShadowProgress___block_invoke;
    v6[3] = &unk_279D32820;
    v6[4] = self;
    *&v6[5] = a3;
    LODWORD(a3) = *MEMORY[0x277CD9DD0];
    LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 8);
    [MEMORY[0x277D75D18] _modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v6 animations:{a3, COERCE_DOUBLE(*(MEMORY[0x277CD9DD0] + 4)), v5}];
  }
}

- (void)initWithElementViewProvider:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"elementViewProvider" object:? file:? lineNumber:? description:?];
}

- (void)setLayoutHost:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)beginTrackingTransitionWithUniqueIdentifier:reason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"transitionID" object:? file:? lineNumber:? description:?];
}

- (void)beginTrackingTransitionWithUniqueIdentifier:reason:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[reason length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)_defaultAlertingDuration
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
}

@end