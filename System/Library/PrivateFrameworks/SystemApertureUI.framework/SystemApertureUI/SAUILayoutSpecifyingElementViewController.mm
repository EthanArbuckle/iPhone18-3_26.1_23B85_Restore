@interface SAUILayoutSpecifyingElementViewController
+ (void)initialize;
- (BOOL)_axCollapseIfExpandedByUserInteraction;
- (BOOL)_canShowWhileLocked;
- (BOOL)_expandToCustomLayoutModeFromUserActionIfPossible;
- (BOOL)_isObstructedBySensorRegion;
- (BOOL)isInteractiveDismissalEnabled;
- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (BOOL)isMinimalPresentationPossible;
- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (BOOL)isRequestingMenuPresentation;
- (BOOL)isTrackingTransition;
- (BOOL)isTrackingTransitionWithReason:(id)reason;
- (CGSize)_obstructedRegionSize;
- (NSArray)temporallyOrderedAlertingActivityAssertions;
- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (NSString)description;
- (SAAutomaticallyInvalidatable)alertingActivityAssertion;
- (SAUILayoutHosting)layoutHost;
- (SAUILayoutModePreferring)layoutModePreference;
- (SAUILayoutSpecifyingElementViewController)initWithElementViewProvider:(id)provider;
- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion;
- (double)_defaultAlertingDuration;
- (double)concentricPaddingForProvidedView:(id)view fromViewProvider:(id)provider;
- (id)_alertingActivityAssertionWithReason:(id)reason implicitlyDismissable:(BOOL)dismissable withPreferredLayoutMode:(int64_t)mode;
- (id)_elementHost;
- (id)_overrideWithPreference:(id)preference;
- (id)_updatePreferredLayoutModeAssertionWithPreference:(id)preference;
- (id)alertWithReason:(id)reason implicitlyDismissable:(BOOL)dismissable;
- (id)layoutModePreferenceForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (id)systemManagedAlertingActivityAssertionWithReason:(id)reason;
- (id)systemManagedAlertingActivityAssertionWithReason:(id)reason preferredLayoutMode:(int64_t)mode;
- (int64_t)handleElementLongPress:(id)press;
- (int64_t)handleElementTap:(id)tap;
- (int64_t)layoutMode;
- (int64_t)maximumSupportedLayoutMode;
- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (int64_t)minimumSupportedLayoutMode;
- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (int64_t)preferredLayoutMode;
- (unint64_t)customizationOptionsForLayoutMode:(int64_t)mode;
- (void)_axRequestDiminishment;
- (void)_configureAlertAssertionIfNecessary;
- (void)_configureTransitionShadowViewIfNecessary;
- (void)_defaultAlertingDuration;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_insertSnapshotView:(id)view;
- (void)_invalidateElementPromotionPreferences;
- (void)_invalidatePreferredLayoutModeAssertionWithReason:(int64_t)reason;
- (void)_layoutTransitionShadowView;
- (void)addElementViewControllingObserver:(id)observer;
- (void)beginTrackingTransitionWithUniqueIdentifier:(id)identifier reason:(id)reason;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)elementRequestsNegativeResponse:(id)response;
- (void)elementRequestsSignificantUpdateTransition:(id)transition;
- (void)endTrackingTransitionWithUniqueIdentifier:(id)identifier;
- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)specifier;
- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)removeElementViewControllingObserver:(id)observer;
- (void)setLayoutHost:(id)host;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider;
- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider;
- (void)setSensorObscuringShadowProgress:(double)progress;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SAUILayoutSpecifyingElementViewController

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  isViewLoaded = [(SAUILayoutSpecifyingElementViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    view = [(SAUILayoutSpecifyingElementViewController *)self view];
  }

  else
  {
    view = @"[view not loaded]";
  }

  v6 = SAUIStringFromElementViewLayoutMode([(SAUILayoutSpecifyingElementViewController *)self layoutMode]);
  v7 = SAUIStringFromElementViewLayoutMode([(SAUILayoutSpecifyingElementViewController *)self preferredLayoutMode]);
  elementViewProvider = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
  elementViewProvider2 = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
  element = [elementViewProvider2 element];
  v11 = MEMORY[0x26D6A1D80]();
  v12 = [v14 stringWithFormat:@"<%@: %p view: %@; layoutMode: %@; preferredLayoutMode: %@; elementViewProvider: %@; element: %@>", v3, self, view, v6, v7, elementViewProvider, v11];;

  if (isViewLoaded)
  {
  }

  return v12;
}

- (int64_t)layoutMode
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  layoutMode = [systemApertureLayoutSpecifyingOverrider layoutMode];

  return layoutMode;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (int64_t)preferredLayoutMode
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  preferredLayoutMode = [systemApertureLayoutSpecifyingOverrider preferredLayoutMode];

  return preferredLayoutMode;
}

- (int64_t)maximumSupportedLayoutMode
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  maximumSupportedLayoutMode = [systemApertureLayoutSpecifyingOverrider maximumSupportedLayoutMode];

  return maximumSupportedLayoutMode;
}

- (int64_t)minimumSupportedLayoutMode
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  minimumSupportedLayoutMode = [systemApertureLayoutSpecifyingOverrider minimumSupportedLayoutMode];

  return minimumSupportedLayoutMode;
}

- (NSArray)temporallyOrderedAlertingActivityAssertions
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = selfCopy->_reasonsToAlertingActivityAssertions;
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

        v9 = [(NSMapTable *)selfCopy->_reasonsToAlertingActivityAssertions objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        [v3 addObject:v9];
      }

      v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&__block_literal_global_0];
  objc_sync_exit(selfCopy);

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
    view = [(SAUILayoutSpecifyingElementViewController *)self view];
    elementViewProvider = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    [WeakRetained sensorRegionInContentView:view fromViewProvider:elementViewProvider];
  }

  image = [(UIImageView *)self->_contentsTransitionShadowView image];
  [image size];
  BSRectWithSize();
  traitCollection = [(SAUILayoutSpecifyingElementViewController *)self traitCollection];
  [traitCollection displayScale];
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
    _contentView = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider layoutHostContainerViewDidLayoutSubviews:_contentView];
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
    _contentView = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider layoutHostContainerViewWillLayoutSubviews:_contentView];
  }

  [(SAUILayoutSpecifyingElementViewController *)self _configureTransitionShadowViewIfNecessary];
  [(SAUILayoutSpecifyingElementViewController *)self _layoutTransitionShadowView];
}

- (void)_configureTransitionShadowViewIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    v5 = [WeakRetained viewProviderShouldMakeSensorShadowVisible:elementViewProvider];
  }

  else
  {
    v5 = 0;
  }

  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  tintColor = [(UIImageView *)self->_contentsTransitionShadowView tintColor];
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
    v12 = systemOrangeColor;
    [v10 performWithoutAnimation:v11];
  }
}

- (BOOL)_isObstructedBySensorRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    view = [(SAUILayoutSpecifyingElementViewController *)self view];
    [WeakRetained sensorRegionObstructingViewProvider:elementViewProvider inContentView:view];
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
  if (objc_opt_class() == self)
  {

    SAUIRegisterSystemApertureLogging();
  }
}

- (SAUILayoutSpecifyingElementViewController)initWithElementViewProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [SAUILayoutSpecifyingElementViewController initWithElementViewProvider:];
  }

  v13.receiver = self;
  v13.super_class = SAUILayoutSpecifyingElementViewController;
  v6 = [(SAUILayoutSpecifyingElementViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementViewProvider, provider);
    if (objc_opt_respondsToSelector())
    {
      [(SAElementViewProviding *)v7->_elementViewProvider setLayoutHost:v7];
    }

    element = [(SAElementViewProviding *)v7->_elementViewProvider element];
    if (objc_opt_respondsToSelector())
    {
      [element setElementHost:v7];
    }

    systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)v7->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
    [systemApertureLayoutSpecifyingOverrider addBehaviorOverridingParticipant:v7];

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
  view = [(SAUILayoutSpecifyingElementViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];

  _containerView = [(SAUILayoutSpecifyingElementViewController *)self _containerView];
  if (_containerView)
  {
    [view addSubview:_containerView];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewWillAppear:appear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SAUILayoutSpecifyingElementViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillAppear_ usingBlock:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewDidAppear:appear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SAUILayoutSpecifyingElementViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidAppear_ usingBlock:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewWillDisappear:disappear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SAUILayoutSpecifyingElementViewController_viewWillDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillDisappear_ usingBlock:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewDidDisappear:disappear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SAUILayoutSpecifyingElementViewController_viewDidDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUILayoutSpecifyingElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidDisappear_ usingBlock:v4];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = SAUILayoutSpecifyingElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = self->_elementViewProvider;
    _contentView = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider contentProviderWillTransitionToSize:_contentView inContainerView:coordinatorCopy transitionCoordinator:width, height];
  }

  previousLayoutMode = self->_previousLayoutMode;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SAUILayoutSpecifyingElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_279D32710;
  objc_copyWeak(v12, &location);
  v12[1] = previousLayoutMode;
  [coordinatorCopy animateAlongsideTransition:0 completion:v11];
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

- (id)alertWithReason:(id)reason implicitlyDismissable:(BOOL)dismissable
{
  dismissableCopy = dismissable;
  reasonCopy = reason;
  element = [(SAElementViewProviding *)self->_elementViewProvider element];
  v8 = SAHasActivityBehavior();

  if (v8)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    WeakRetained = objc_loadWeakRetained(&selfCopy->_alertingActivityAssertion);
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
      v14 = [(SAUILayoutSpecifyingElementViewController *)selfCopy _alertingActivityAssertionWithReason:reasonCopy implicitlyDismissable:dismissableCopy withPreferredLayoutMode:[(SAUILayoutSpecifyingElementViewController *)selfCopy maximumSupportedLayoutMode]];
      objc_initWeak(&location, selfCopy);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __83__SAUILayoutSpecifyingElementViewController_alertWithReason_implicitlyDismissable___block_invoke;
      v19 = &unk_279D32738;
      objc_copyWeak(&v20, &location);
      [v14 addInvalidationBlock:&v16];
      objc_storeWeak(&selfCopy->_alertingActivityAssertion, v14);
      [(SAUILayoutSpecifyingElementViewController *)selfCopy _invalidatePreferredLayoutModeAssertionWithReason:2, v16, v17, v18, v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
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

- (int64_t)handleElementTap:(id)tap
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

- (int64_t)handleElementLongPress:(id)press
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

- (void)addElementViewControllingObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)removeElementViewControllingObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)setLayoutHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (WeakRetained != obj)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [SAUILayoutSpecifyingElementViewController setLayoutHost:];
    }

    objc_storeWeak(&self->_layoutHost, obj);
    [(SAUILayoutSpecifyingElementViewController *)self _configureAlertAssertionIfNecessary];
    element = [(SAElementViewProviding *)self->_elementViewProvider element];
    if (SAHasAlertBehavior())
    {
      if (objc_opt_respondsToSelector())
      {
        [element setAlertHost:self];
      }
    }

    else if (SAHasActivityBehavior() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [element setActivityHost:self];
    }
  }
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  [systemApertureLayoutSpecifyingOverrider setLayoutMode:mode reason:reason];
}

- (BOOL)isInteractiveDismissalEnabled
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  isInteractiveDismissalEnabled = [systemApertureLayoutSpecifyingOverrider isInteractiveDismissalEnabled];

  return isInteractiveDismissalEnabled;
}

- (BOOL)isMinimalPresentationPossible
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  isMinimalPresentationPossible = [systemApertureLayoutSpecifyingOverrider isMinimalPresentationPossible];

  return isMinimalPresentationPossible;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  trailing = maximumOutsets.trailing;
  bottom = maximumOutsets.bottom;
  leading = maximumOutsets.leading;
  top = maximumOutsets.top;
  v9 = outsets.trailing;
  v10 = outsets.bottom;
  v11 = outsets.leading;
  v12 = outsets.top;
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  [systemApertureLayoutSpecifyingOverrider preferredEdgeOutsetsForLayoutMode:mode suggestedOutsets:v12 maximumOutsets:{v11, v10, v9, top, leading, bottom, trailing}];
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
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  isRequestingMenuPresentation = [systemApertureLayoutSpecifyingOverrider isRequestingMenuPresentation];

  return isRequestingMenuPresentation;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider
{
  layoutMode = self->_layoutMode;
  if (layoutMode != mode)
  {
    overriderCopy = overrider;
    [(SAUILayoutSpecifyingElementViewController *)self _setPreviousLayoutMode:layoutMode];
    self->_layoutMode = mode;
    if (reason == 3)
    {
      if ([(SAUIPreferredLayoutModeAssertion *)self->_preferredLayoutModeAssertion preferredLayoutMode]!= mode || [(SAUIPreferredLayoutModeAssertion *)self->_preferredLayoutModeAssertion layoutModeChangeReason]!= 3)
      {
        v10 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:mode reason:3];
        v11 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v10];
      }

      WeakRetained = objc_loadWeakRetained(&self->_alertingActivityAssertion);
      [WeakRetained invalidateWithReason:@"layout mode changed by user interaction"];
    }

    else if (mode <= 0)
    {
      [(SAAssertion *)self->_preferredLayoutModeAssertion invalidateWithReason:@"no longer in visible layout mode"];
    }

    v13 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
    [v13 setLayoutMode:self->_layoutMode reason:reason forTargetWithOverrider:overriderCopy];

    viewIfLoaded = [(SAUILayoutSpecifyingElementViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  v7 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_minimumSupportedLayoutModeForTargetWithOverrider_isDefaultValue_];
  preferredLayoutMode = [v7 minimumSupportedLayoutModeForTargetWithOverrider:overriderCopy isDefaultValue:value];

  if (value && *value || preferredLayoutMode == -1)
  {
    v9 = SATargetElementFromBehaviorOverrider();
    if (SAHasActivityBehavior())
    {
      preferredLayoutMode = 1;
    }

    else if (SAHasAlertBehavior())
    {
      if (preferredLayoutMode == -1)
      {
        behaviorOverridingTarget = [overriderCopy behaviorOverridingTarget];
        if (objc_opt_respondsToSelector())
        {
          preferredLayoutMode = [behaviorOverridingTarget preferredLayoutMode];
        }

        else
        {
          preferredLayoutMode = -1;
        }
      }

      else
      {
        preferredLayoutMode = 2;
      }
    }
  }

  return preferredLayoutMode;
}

- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  v7 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_maximumSupportedLayoutModeForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 maximumSupportedLayoutModeForTargetWithOverrider:overriderCopy isDefaultValue:value];

  return v8;
}

- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  v7 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_isInteractiveDismissalEnabledForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 isInteractiveDismissalEnabledForTargetWithOverrider:overriderCopy isDefaultValue:value];

  if (value && *value)
  {
    behaviorOverridingTarget = [overriderCopy behaviorOverridingTarget];
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

- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  v7 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_isMinimalPresentationPossibleForTargetWithOverrider_isDefaultValue_];
  v8 = [v7 isMinimalPresentationPossibleForTargetWithOverrider:overriderCopy isDefaultValue:value];

  if (value && *value)
  {
    behaviorOverridingTarget = [overriderCopy behaviorOverridingTarget];
    if (SAHasActivityBehavior())
    {
      v8 = 0;
    }

    else if (SAHasAlertBehavior())
    {
      v12 = 1;
      v10 = [(SAUILayoutSpecifyingElementViewController *)self layoutModePreferenceForTargetWithOverrider:overriderCopy isDefaultValue:&v12];
      v8 = [v10 preferredLayoutMode] == 2;
    }
  }

  return v8;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  if (mode < 1)
  {
    v28 = *MEMORY[0x277D75060];
    v29 = *(MEMORY[0x277D75060] + 8);
    v30 = *(MEMORY[0x277D75060] + 16);
    v31 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    trailing = maximumOutsets.trailing;
    bottom = maximumOutsets.bottom;
    leading = maximumOutsets.leading;
    top = maximumOutsets.top;
    v12 = outsets.trailing;
    v13 = outsets.bottom;
    v14 = outsets.leading;
    v15 = outsets.top;
    overriderCopy = overrider;
    v19 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_preferredEdgeOutsetsForLayoutMode_suggestedOutsets_maximumOutsets_forTargetWithOverrider_isDefaultValue_];
    [v19 preferredEdgeOutsetsForLayoutMode:mode suggestedOutsets:overriderCopy maximumOutsets:value forTargetWithOverrider:v15 isDefaultValue:{v14, v13, v12, top, leading, bottom, trailing}];
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

- (id)layoutModePreferenceForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  sa_lastPointer = [(NSPointerArray *)self->_preferredLayoutModeAssertions sa_lastPointer];
  if (!sa_lastPointer)
  {
    v8 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_layoutModePreferenceForTargetWithOverrider_isDefaultValue_];
    v9 = [v8 layoutModePreferenceForTargetWithOverrider:overriderCopy isDefaultValue:value];

    if (value && *value)
    {
      v10 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:2 reason:0];

      v9 = v10;
    }

    v11 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v9];
    sa_lastPointer = [(NSPointerArray *)self->_preferredLayoutModeAssertions sa_lastPointer];
  }

  return sa_lastPointer;
}

- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  overriderCopy = overrider;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sa_lastPointer = [(NSPointerArray *)selfCopy->_preferredLayoutModeAssertions sa_lastPointer];
  objc_sync_exit(selfCopy);

  return sa_lastPointer;
}

- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider
{
  v6 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:mode reason:reason];
  v8 = [(SAUILayoutSpecifyingElementViewController *)self _updatePreferredLayoutModeAssertionWithPreference:v6];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
    v7 = v8;
  }
}

- (double)concentricPaddingForProvidedView:(id)view fromViewProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  v9 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained concentricPaddingForProvidedView:viewCopy fromViewProvider:providerCopy];
    v9 = v10;
  }

  return v9;
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = self->_elementViewProvider;
    _contentView = [(SAUILayoutSpecifyingElementViewController *)self _contentView];
    [(SAElementViewProviding *)elementViewProvider contentProviderWillTransitionToSize:_contentView inContainerView:coordinatorCopy transitionCoordinator:width, height];
  }
}

- (BOOL)isTrackingTransition
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_transitionIDsToReasons count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isTrackingTransitionWithReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = selfCopy->_transitionIDsToReasons;
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

        v11 = [(NSMutableDictionary *)selfCopy->_transitionIDsToReasons objectForKey:*(*(&v14 + 1) + 8 * i), v14];
        v12 = [v11 isEqualToString:reasonCopy];

        v8 += v12;
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    LOBYTE(v7) = v8 != 0;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)beginTrackingTransitionWithUniqueIdentifier:(id)identifier reason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  reasonCopy = reason;
  if (!identifierCopy)
  {
    [SAUILayoutSpecifyingElementViewController beginTrackingTransitionWithUniqueIdentifier:reason:];
  }

  if (![reasonCopy length])
  {
    [SAUILayoutSpecifyingElementViewController beginTrackingTransitionWithUniqueIdentifier:reason:];
  }

  element = [(SAElementViewProviding *)self->_elementViewProvider element];
  v9 = SAUILogElementViewControlling;
  if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = MEMORY[0x26D6A1D80](element);
    v16 = 138543874;
    v17 = v11;
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&dword_26C482000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin tracking transition with identifier '%{public}@' with reason: %{public}@", &v16, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  transitionIDsToReasons = selfCopy->_transitionIDsToReasons;
  if (!transitionIDsToReasons)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = selfCopy->_transitionIDsToReasons;
    selfCopy->_transitionIDsToReasons = v14;

    transitionIDsToReasons = selfCopy->_transitionIDsToReasons;
  }

  [(NSMutableDictionary *)transitionIDsToReasons setObject:reasonCopy forKey:identifierCopy];
  objc_sync_exit(selfCopy);
}

- (void)endTrackingTransitionWithUniqueIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_transitionIDsToReasons objectForKey:identifierCopy];
    if (v6)
    {
      element = [(SAElementViewProviding *)selfCopy->_elementViewProvider element];
      v8 = SAUILogElementViewControlling;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x26D6A1D80](element);
        v11 = 138543874;
        v12 = v9;
        v13 = 2114;
        v14 = identifierCopy;
        v15 = 2114;
        v16 = v6;
        _os_log_impl(&dword_26C482000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: End tracking transition with identifier '%{public}@' with reason: %{public}@", &v11, 0x20u);
      }

      [(NSMutableDictionary *)selfCopy->_transitionIDsToReasons removeObjectForKey:identifierCopy];
      if (![(NSMutableDictionary *)selfCopy->_transitionIDsToReasons count])
      {
        transitionIDsToReasons = selfCopy->_transitionIDsToReasons;
        selfCopy->_transitionIDsToReasons = 0;
      }
    }

    objc_sync_exit(selfCopy);
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

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
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
            blockCopy[2](blockCopy, v12);
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

- (id)_overrideWithPreference:(id)preference
{
  preferenceCopy = preference;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [SAUIPreferredLayoutModeAssertion alloc];
  element = [(SAElementViewProviding *)selfCopy->_elementViewProvider element];
  v8 = [(SAUIPreferredLayoutModeAssertion *)v6 initWithRepresentedElement:element layoutModePreference:preferenceCopy];

  objc_initWeak(&location, selfCopy);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __69__SAUILayoutSpecifyingElementViewController__overrideWithPreference___block_invoke;
  v21 = &unk_279D32738;
  objc_copyWeak(&v22, &location);
  [(SAAssertion *)v8 addInvalidationBlock:&v18];
  preferredLayoutModeAssertions = selfCopy->_preferredLayoutModeAssertions;
  if (!preferredLayoutModeAssertions)
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v11 = selfCopy->_preferredLayoutModeAssertions;
    selfCopy->_preferredLayoutModeAssertions = weakObjectsPointerArray;

    preferredLayoutModeAssertions = selfCopy->_preferredLayoutModeAssertions;
  }

  [(NSPointerArray *)preferredLayoutModeAssertions sa_compact:v18];
  v12 = 0;
  do
  {
    v13 = v12;
    if (v12 >= [(NSPointerArray *)selfCopy->_preferredLayoutModeAssertions count])
    {
      break;
    }

    v14 = [(NSPointerArray *)selfCopy->_preferredLayoutModeAssertions pointerAtIndex:v12];
    layoutModeChangeReason = [v14 layoutModeChangeReason];
    layoutModeChangeReason2 = [(SAUIPreferredLayoutModeAssertion *)v8 layoutModeChangeReason];
    ++v12;
  }

  while (layoutModeChangeReason <= layoutModeChangeReason2);
  [(NSPointerArray *)selfCopy->_preferredLayoutModeAssertions insertPointer:v8 atIndex:v13];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);

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

- (id)_updatePreferredLayoutModeAssertionWithPreference:(id)preference
{
  v40 = *MEMORY[0x277D85DE8];
  preferenceCopy = preference;
  v5 = SAUILogElementViewControlling;
  if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = preferenceCopy;
    _os_log_impl(&dword_26C482000, v5, OS_LOG_TYPE_DEFAULT, "Update preferred layout mode assertion with layout mode preference: %{public}@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  preferredLayoutMode = [(SAAutomaticallyInvalidatingAssertion *)preferenceCopy preferredLayoutMode];
  if ([(SAUILayoutSpecifyingElementViewController *)selfCopy minimumSupportedLayoutMode]> preferredLayoutMode)
  {
    if (!preferredLayoutMode)
    {
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_25;
  }

  maximumSupportedLayoutMode = [(SAUILayoutSpecifyingElementViewController *)selfCopy maximumSupportedLayoutMode];
  if (preferredLayoutMode && preferredLayoutMode > maximumSupportedLayoutMode)
  {
    goto LABEL_8;
  }

LABEL_9:
  layoutModeChangeReason = [(SAAutomaticallyInvalidatingAssertion *)preferenceCopy layoutModeChangeReason];
  if (layoutModeChangeReason <= 4 && ((1 << layoutModeChangeReason) & 0x1A) != 0 || !selfCopy->_cooldownAssertion)
  {
    v11 = [(SAUILayoutSpecifyingElementViewController *)selfCopy _overrideWithPreference:preferenceCopy];
    preferredLayoutModeAssertion = selfCopy->_preferredLayoutModeAssertion;
    selfCopy->_preferredLayoutModeAssertion = v11;

    objc_initWeak(&location, selfCopy);
    v13 = selfCopy->_preferredLayoutModeAssertion;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_2;
    v30[3] = &unk_279D32738;
    objc_copyWeak(&v31, &location);
    [(SAAssertion *)v13 addInvalidationBlock:v30];
    if ([(SAUIPreferredLayoutModeAssertion *)selfCopy->_preferredLayoutModeAssertion layoutModeChangeReason]== 3)
    {
      if (selfCopy->_cooldownAssertion)
      {
        v14 = SAUILogElementViewControlling;
        if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
        {
          cooldownAssertion = selfCopy->_cooldownAssertion;
          *buf = 138543362;
          v37 = cooldownAssertion;
          _os_log_impl(&dword_26C482000, v14, OS_LOG_TYPE_DEFAULT, "Resetting automatic invalidation timer of existing cooldown assertion: %{public}@", buf, 0xCu);
        }

        [(SAAutomaticallyInvalidatingAssertion *)selfCopy->_cooldownAssertion resetAutomaticInvalidationTimer];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x277D6B8A0]) initWithInvalidationInterval:3.0];
        v20 = selfCopy->_cooldownAssertion;
        selfCopy->_cooldownAssertion = v19;

        v21 = selfCopy->_cooldownAssertion;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_119;
        v28[3] = &unk_279D32738;
        objc_copyWeak(&v29, &location);
        [(SAAutomaticallyInvalidatingAssertion *)v21 addInvalidationBlock:v28];
        [(SAAutomaticallyInvalidatingAssertion *)selfCopy->_cooldownAssertion setAutomaticallyInvalidatable:1];
        v22 = SAUILogElementViewControlling;
        if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
        {
          v23 = selfCopy->_cooldownAssertion;
          *buf = 138543618;
          v37 = v23;
          v38 = 2114;
          v39 = preferenceCopy;
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
      v17 = selfCopy->_cooldownAssertion;
      *buf = 138543362;
      v37 = v17;
      _os_log_impl(&dword_26C482000, v16, OS_LOG_TYPE_DEFAULT, "Deferring preferred layout mode assertion update due to existing cooldown assertion: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    v18 = selfCopy->_cooldownAssertion;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke;
    v33[3] = &unk_279D32788;
    objc_copyWeak(&v35, buf);
    v34 = preferenceCopy;
    [(SAAutomaticallyInvalidatingAssertion *)v18 addInvalidationBlock:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  objc_initWeak(buf, selfCopy);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__SAUILayoutSpecifyingElementViewController__updatePreferredLayoutModeAssertionWithPreference___block_invoke_120;
  v26[3] = &unk_279D327B0;
  objc_copyWeak(&v27, buf);
  v26[4] = selfCopy;
  v9 = MEMORY[0x26D6A2080](v26);
  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
LABEL_25:
  v24 = MEMORY[0x26D6A2080](v9);

  objc_sync_exit(selfCopy);

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

- (id)_alertingActivityAssertionWithReason:(id)reason implicitlyDismissable:(BOOL)dismissable withPreferredLayoutMode:(int64_t)mode
{
  dismissableCopy = dismissable;
  v36 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  element = [(SAElementViewProviding *)self->_elementViewProvider element];
  if (SAHasActivityBehavior())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(NSMapTable *)selfCopy->_reasonsToAlertingActivityAssertions objectForKey:reasonCopy];
    if (!v11)
    {
      v12 = [SAUILayoutModePreference alloc];
      if (dismissableCopy)
      {
        v13 = 5;
      }

      else
      {
        v13 = 2;
      }

      v14 = [(SAUILayoutModePreference *)v12 initWithPreferredLayoutMode:mode reason:v13];
      v15 = [(SAUILayoutSpecifyingElementViewController *)selfCopy _overrideWithPreference:v14];

      v16 = [SAUIAlertingAssertion alloc];
      [(SAUILayoutSpecifyingElementViewController *)selfCopy _defaultAlertingDuration];
      v11 = [(SAUIAlertingAssertion *)v16 initWithPreferredLayoutModeAssertion:v15 invalidationInterval:?];
      v17 = SAUILogElementViewControlling;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x26D6A1D80](element);
        *buf = 138543874;
        v31 = v11;
        v32 = 2114;
        v33 = reasonCopy;
        v34 = 2114;
        v35 = v18;
        _os_log_impl(&dword_26C482000, v17, OS_LOG_TYPE_DEFAULT, "Created alerting activity assertion (%{public}@) with reason '%{public}@' for element: %{public}@", buf, 0x20u);
      }

      objc_initWeak(buf, selfCopy);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __128__SAUILayoutSpecifyingElementViewController__alertingActivityAssertionWithReason_implicitlyDismissable_withPreferredLayoutMode___block_invoke;
      v27 = &unk_279D32788;
      objc_copyWeak(&v29, buf);
      v19 = reasonCopy;
      v28 = v19;
      [(SAAssertion *)v11 addInvalidationBlock:&v24];
      reasonsToAlertingActivityAssertions = selfCopy->_reasonsToAlertingActivityAssertions;
      if (!reasonsToAlertingActivityAssertions)
      {
        strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
        v22 = selfCopy->_reasonsToAlertingActivityAssertions;
        selfCopy->_reasonsToAlertingActivityAssertions = strongToWeakObjectsMapTable;

        reasonsToAlertingActivityAssertions = selfCopy->_reasonsToAlertingActivityAssertions;
      }

      [(NSMapTable *)reasonsToAlertingActivityAssertions setObject:v11 forKey:v19, v24, v25, v26, v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    objc_sync_exit(selfCopy);
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
  element = [(SAElementViewProviding *)self->_elementViewProvider element];
  if (SAHasAlertBehavior())
  {
    if (!self->_alertAssertion)
    {
      WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

      if (WeakRetained)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v6 = objc_alloc(MEMORY[0x277D6B8A0]);
        [(SAUILayoutSpecifyingElementViewController *)selfCopy _defaultAlertingDuration];
        v7 = [v6 initWithInvalidationInterval:?];
        v8 = SAUILogElementViewControlling;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = MEMORY[0x26D6A1D80](element);
          *buf = 138543618;
          v14 = v7;
          v15 = 2114;
          v16 = v9;
          _os_log_impl(&dword_26C482000, v8, OS_LOG_TYPE_DEFAULT, "Created alert assertion (%{public}@) for element: %{public}@", buf, 0x16u);
        }

        objc_initWeak(buf, selfCopy);
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
        objc_sync_exit(selfCopy);
      }
    }
  }
}

- (void)_invalidatePreferredLayoutModeAssertionWithReason:(int64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = SAUILogElementViewControlling;
  if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SAUIStringFromLayoutModeChangeReason(reason);
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&dword_26C482000, v6, OS_LOG_TYPE_DEFAULT, "Invalidate preferred layout mode assertion with reason: %{public}@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (reason <= 4 && ((1 << reason) & 0x1A) != 0 || !selfCopy->_cooldownAssertion)
  {
    preferredLayoutModeAssertion = selfCopy->_preferredLayoutModeAssertion;
    v10 = SAUIStringFromLayoutModeChangeReason(reason);
    [(SAAssertion *)preferredLayoutModeAssertion invalidateWithReason:v10];

    WeakRetained = objc_loadWeakRetained(&selfCopy->_layoutHost);
    [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:selfCopy];
  }

  else
  {
    v12 = SAUILogElementViewControlling;
    if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
    {
      cooldownAssertion = selfCopy->_cooldownAssertion;
      *buf = 138543362;
      v18 = cooldownAssertion;
      _os_log_impl(&dword_26C482000, v12, OS_LOG_TYPE_DEFAULT, "Deferring preferred layout mode assertion invalidation due to existing cooldown assertion: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    v14 = selfCopy->_cooldownAssertion;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__SAUILayoutSpecifyingElementViewController__invalidatePreferredLayoutModeAssertionWithReason___block_invoke;
    v15[3] = &unk_279D327D8;
    objc_copyWeak(v16, buf);
    v16[1] = reason;
    [(SAAutomaticallyInvalidatingAssertion *)v14 addInvalidationBlock:v15];
    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);
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
    view = [(SAUILayoutSpecifyingElementViewController *)self view];
    elementViewProvider = [(SAUILayoutSpecifyingElementViewController *)self elementViewProvider];
    [WeakRetained sensorRegionInContentView:view fromViewProvider:elementViewProvider];
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

- (void)_insertSnapshotView:(id)view
{
  viewCopy = view;
  view = [(SAUILayoutSpecifyingElementViewController *)self view];
  [view insertSubview:viewCopy belowSubview:self->_contentsTransitionShadowView];
}

- (void)elementRequestsNegativeResponse:(id)response
{
  responseCopy = response;
  _elementHost = [(SAUILayoutSpecifyingElementViewController *)self _elementHost];
  if (objc_opt_respondsToSelector())
  {
    [_elementHost elementRequestsNegativeResponse:responseCopy];
  }
}

- (void)elementRequestsSignificantUpdateTransition:(id)transition
{
  transitionCopy = transition;
  _elementHost = [(SAUILayoutSpecifyingElementViewController *)self _elementHost];
  if (objc_opt_respondsToSelector())
  {
    [_elementHost elementRequestsSignificantUpdateTransition:transitionCopy];
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

- (id)systemManagedAlertingActivityAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(SAUILayoutSpecifyingElementViewController *)self systemManagedAlertingActivityAssertionWithReason:reasonCopy preferredLayoutMode:[(SAUILayoutSpecifyingElementViewController *)self maximumSupportedLayoutMode]];

  return v5;
}

- (id)systemManagedAlertingActivityAssertionWithReason:(id)reason preferredLayoutMode:(int64_t)mode
{
  reasonCopy = reason;
  v7 = [(SAUILayoutSpecifyingElementViewController *)self _alertingActivityAssertionWithReason:reasonCopy implicitlyDismissable:0 withPreferredLayoutMode:mode];
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
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  layoutModePreference = [systemApertureLayoutSpecifyingOverrider layoutModePreference];

  return layoutModePreference;
}

- (unint64_t)customizationOptionsForLayoutMode:(int64_t)mode
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  v5 = [systemApertureLayoutSpecifyingOverrider customizationOptionsForLayoutMode:mode];

  return v5;
}

- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  preferredLayoutModeAssertion = [systemApertureLayoutSpecifyingOverrider preferredLayoutModeAssertion];

  return preferredLayoutModeAssertion;
}

- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  systemApertureLayoutSpecifyingOverrider = [(SAElementViewProviding *)self->_elementViewProvider systemApertureLayoutSpecifyingOverrider];
  [systemApertureLayoutSpecifyingOverrider setPreferredLayoutMode:mode reason:reason];
}

- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)specifier
{
  [(SAUILayoutSpecifyingElementViewController *)self _invalidatePreferredLayoutModeAssertionWithReason:1];
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)specifier
{
  if ([(SAUILayoutSpecifyingElementViewController *)self layoutMode]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained menuPresentationRequestDidChangeForLayoutSpecifier:self];
  }
}

- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:specifierCopy];
  }
}

- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredComponentViewSizeDidInvalidateForLayoutSpecifier:specifierCopy];
  }
}

- (void)setSensorObscuringShadowProgress:(double)progress
{
  if (self->_sensorObscuringShadowProgress != progress)
  {
    v6[6] = v3;
    v6[7] = v4;
    self->_sensorObscuringShadowProgress = progress;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __95__SAUILayoutSpecifyingElementViewController_SubclassSupport__setSensorObscuringShadowProgress___block_invoke;
    v6[3] = &unk_279D32820;
    v6[4] = self;
    *&v6[5] = progress;
    LODWORD(progress) = *MEMORY[0x277CD9DD0];
    LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 8);
    [MEMORY[0x277D75D18] _modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v6 animations:{progress, COERCE_DOUBLE(*(MEMORY[0x277CD9DD0] + 4)), v5}];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
}

@end