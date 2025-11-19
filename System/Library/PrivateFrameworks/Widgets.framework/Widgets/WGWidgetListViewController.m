@interface WGWidgetListViewController
- (BOOL)isWidgetExtensionVisible:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (CGRect)_visibleContentFrameForBounds:(CGRect)a3 withContentOccludingInsets:(UIEdgeInsets)a4;
- (CGRect)visibleFrameForWidget:(id)a3;
- (CGSize)_maxVisibleContentSize;
- (CGSize)maxSizeForWidget:(id)a3 forDisplayMode:(int64_t)a4;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSString)_group;
- (UIControl)editButton;
- (UIEdgeInsets)layoutMarginForWidget:(id)a3;
- (UIEdgeInsets)marginInsetsForWidget:(id)a3;
- (UIScrollView)widgetListView;
- (WGWidgetListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WGWidgetListViewController)initWithWidgetDiscoveryController:(id)a3;
- (WGWidgetListViewControllerDelegatePrivate)delegate;
- (id)_animatablePropertiesForStackViewUpdate;
- (id)_beginInsertion:(BOOL)a3 ofListItem:(id)a4 withOrderedIdentifiers:(id)a5 removingViewIfPossible:(BOOL)a6;
- (id)_identifierForCell:(id)a3;
- (id)_insert:(BOOL)a3 listItem:(id)a4 withOrderedIdentifiers:(id)a5 animated:(BOOL)a6;
- (id)_listItemViewControllerForWidgetWithIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4;
- (id)_newCaptureOnlyMaterialView;
- (id)_platterViewAtLocation:(CGPoint)a3;
- (id)_platterViewForWidgetWithIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4;
- (id)_scrollViewLoadingIfNecessary:(BOOL)a3;
- (id)_widgetIdentifiersForPlatterViewsVisibleInBounds;
- (id)_wrapperViewForWidgetPlatterView:(id)a3;
- (id)visibleWidgetIdentifiers;
- (id)widgetListItemViewController:(id)a3 widgetHostWithIdentifier:(id)a4;
- (unint64_t)_insertionIndexofListItem:(id)a3 intoWidgetViews:(id)a4 withOrderedIdentifiers:(id)a5;
- (void)_adjustContentOffsetToInsideContent:(BOOL)a3;
- (void)_cancelTouchesForHitWidgetIfNecessaryAndDisableTouchesOnAllWidgets;
- (void)_cancelTouchesForWidget:(id)a3;
- (void)_configureAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:(int64_t)a3;
- (void)_configureCaptureOnlyMaterialView;
- (void)_configureScrollView;
- (void)_configureStackView;
- (void)_createPropertiesForStackViewUpdate;
- (void)_didUpdateStackViewArrangedSubviews;
- (void)_invalidateAllAlternateCaptureOnlyMaterialViews;
- (void)_invalidateAllCancelTouchesAssertions;
- (void)_invalidateAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:(int64_t)a3;
- (void)_invokeBlock:(id)a3 withPlatterViewsPassingTest:(id)a4;
- (void)_invokeBlockWithPlatterViewsVisibleInBounds:(id)a3;
- (void)_invokeBlockWithPlatterViewsVisibleInRect:(CGRect)a3 block:(id)a4;
- (void)_pruneAlternateCaptureOnlyMaterialViews;
- (void)_repopulateStackView;
- (void)_repopulateStackViewWithWidgetIdentifiers:(id)a3;
- (void)_resizeCell:(id)a3;
- (void)_scrollViewDidStop;
- (void)_stackViewArrangedSubviewsTransformPresentationValueChanged;
- (void)_updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers:(id)a3;
- (void)brokenViewDidAppearForWidget:(id)a3;
- (void)dealloc;
- (void)makeVisibleWidgetWithIdentifier:(id)a3 completion:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)registerWidgetForRefreshEvents:(id)a3;
- (void)remoteViewControllerViewDidAppearForWidget:(id)a3;
- (void)remoteViewControllerViewDidHideForWidget:(id)a3;
- (void)resizeWidgetWrapperView:(id)a3 toSize:(CGSize)a4 withTransitionContext:(id)a5 completion:(id)a6;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setEditingIcons:(BOOL)a3;
- (void)setShouldBlurContent:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unregisterWidgetForRefreshEvents:(id)a3;
- (void)updatePreviouslyVisibleWidgetIDs;
- (void)updateWidgetViewState;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)widget:(id)a3 didChangeLargestSupportedDisplayMode:(int64_t)a4;
- (void)widgetDiscoveryController:(id)a3 orderDidChangeForWidgetIdentifiers:(id)a4;
- (void)widgetDiscoveryControllerSignificantWidgetsChange:(id)a3;
@end

@implementation WGWidgetListViewController

- (WGWidgetListViewController)initWithWidgetDiscoveryController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [WGWidgetListViewController initWithWidgetDiscoveryController:];
  }

  v9.receiver = self;
  v9.super_class = WGWidgetListViewController;
  v6 = [(WGWidgetListViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveryController, a3);
    v7->_shouldIncludeScrollView = 0;
  }

  return v7;
}

- (WGWidgetListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"WGWidgetListViewController.m" lineNumber:67 description:@"Not a valid initializer."];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(WGWidgetListViewController *)self _invalidateAllCancelTouchesAssertions];
  v4.receiver = self;
  v4.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v4 dealloc];
}

- (UIScrollView)widgetListView
{
  if ([(WGWidgetListViewController *)self shouldIncludeScrollView])
  {
    v3 = [(WGWidgetListViewController *)self _scrollViewIfLoaded];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v3 = [WeakRetained scrollViewForWidgetListViewController:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setShouldBlurContent:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_shouldBlurContent != a3)
  {
    self->_shouldBlurContent = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSMutableDictionary *)self->_widgetIDsToItemVCs allValues];
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

          v9 = [*(*(&v10 + 1) + 8 * v8) platterView];
          [(WGWidgetListViewController *)self _updateBackgroundViewForPlatter:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (NSString)_group
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"WGWidgetListViewController.m" lineNumber:107 description:@"Abstract"];

  return 0;
}

- (id)_listItemViewControllerForWidgetWithIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    widgetIDsToItemVCs = self->_widgetIDsToItemVCs;
    if (!widgetIDsToItemVCs)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_widgetIDsToItemVCs;
      self->_widgetIDsToItemVCs = v8;

      widgetIDsToItemVCs = self->_widgetIDsToItemVCs;
    }

    v10 = [(NSMutableDictionary *)widgetIDsToItemVCs objectForKey:v6];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = !v4;
    }

    if (!v11)
    {
      v10 = [[WGWidgetListItemViewController alloc] initWithWidgetIdentifier:v6];
      [(WGWidgetListItemViewController *)v10 setDelegate:self];
      [(WGWidgetListItemViewController *)v10 setAdjustsFontForContentSizeCategory:1];
      v12 = [(WGWidgetListItemViewController *)v10 platterView];
      [(WGWidgetListViewController *)self _updateBackgroundViewForPlatter:v12];

      [(NSMutableDictionary *)self->_widgetIDsToItemVCs setObject:v10 forKey:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_platterViewForWidgetWithIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:a3 creatingIfNecessary:a4];
  v5 = [v4 platterView];

  return v5;
}

- (void)_configureStackView
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 integerForKey:@"WGAzulWidgetsType"];

  v5 = objc_alloc_init(MEMORY[0x277D75A68]);
  stackView = self->_stackView;
  self->_stackView = v5;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setSpacing:8.0];
  [(UIStackView *)self->_stackView setPreservesSuperviewLayoutMargins:1];
  if ([(WGWidgetListViewController *)self shouldIncludeScrollView])
  {
    [(WGWidgetListViewController *)self widgetListView];
  }

  else
  {
    [(WGWidgetListViewController *)self view];
  }
  v24 = ;
  [v24 addSubview:self->_stackView];
  v7 = [(UIStackView *)self->_stackView leadingAnchor];
  v8 = [v24 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = self->_stackView;
  if (v4 == 1)
  {
    v11 = [(UIStackView *)v10 widthAnchor];
    v12 = [v11 constraintEqualToConstant:200.0];
    [v12 setActive:1];
  }

  else
  {
    v13 = [(UIStackView *)v10 trailingAnchor];
    v14 = [v24 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v11 = [(UIStackView *)self->_stackView widthAnchor];
    v12 = [v24 widthAnchor];
    v16 = [v11 constraintEqualToAnchor:v12];
    [v16 setActive:1];
  }

  v17 = [(UIStackView *)self->_stackView topAnchor];
  v18 = [v24 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(UIStackView *)self->_stackView bottomAnchor];
  v21 = [v24 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v22;

  [(NSLayoutConstraint *)self->_stackViewBottomConstraint setActive:1];
  [(UIStackView *)self->_stackView setAxis:1];
}

- (void)_repopulateStackViewWithWidgetIdentifiers:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(UIStackView *)self->_stackView arrangedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  [(WGWidgetListViewController *)self _invalidateAllAlternateCaptureOnlyMaterialViews];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:*(*(&v18 + 1) + 8 * v14) creatingIfNecessary:1, v18];
        v16 = [(WGWidgetListViewController *)self _insert:1 listItem:v15 withOrderedIdentifiers:v10 animated:0];
        v17 = v16;
        if (v16)
        {
          (*(v16 + 16))(v16);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (unint64_t)_insertionIndexofListItem:(id)a3 intoWidgetViews:(id)a4 withOrderedIdentifiers:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 widgetIdentifier];
    v11 = [v9 indexOfObject:v10];

    if (v11 && v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11 - 1;
      if (v12 < 0)
      {
        v11 = 0;
      }

      else
      {
        do
        {
          v13 = [v9 objectAtIndex:v12];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __95__WGWidgetListViewController__insertionIndexofListItem_intoWidgetViews_withOrderedIdentifiers___block_invoke;
          v18[3] = &unk_279ED11C8;
          v19 = v13;
          v14 = v13;
          v15 = [v8 indexOfObjectPassingTest:v18];

          v16 = v12-- != 0;
        }

        while (v16 && v15 == 0x7FFFFFFFFFFFFFFFLL);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15 + 1;
        }
      }
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

uint64_t __95__WGWidgetListViewController__insertionIndexofListItem_intoWidgetViews_withOrderedIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = WGSafeCast(v5, v3);

  v7 = [v6 platterView];
  v8 = WGSafeCast(v4, v7);
  v9 = [v8 listItem];
  v10 = [v9 widgetIdentifier];
  v11 = [v10 isEqualToString:*(a1 + 32)];

  return v11;
}

- (id)_beginInsertion:(BOOL)a3 ofListItem:(id)a4 withOrderedIdentifiers:(id)a5 removingViewIfPossible:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    if ([(WGWidgetListViewController *)self isViewLoaded])
    {
      if (!v8)
      {
        if (v6)
        {
          widgetIDsToItemVCs = self->_widgetIDsToItemVCs;
          v22 = [v11 widgetIdentifier];
          [(NSMutableDictionary *)widgetIDsToItemVCs removeObjectForKey:v22];
        }

        goto LABEL_15;
      }

      v13 = [(UIStackView *)self->_stackView arrangedSubviews];
      v14 = [(WGWidgetListViewController *)self _insertionIndexofListItem:v11 intoWidgetViews:v13 withOrderedIdentifiers:v12];

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_15:
        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __103__WGWidgetListViewController__beginInsertion_ofListItem_withOrderedIdentifiers_removingViewIfPossible___block_invoke_2;
        v35 = &unk_279ED0BD0;
        v38 = v8;
        v36 = self;
        v37 = v11;
        v29 = MEMORY[0x2743E8C10](&v32);

        goto LABEL_18;
      }

      v15 = [v11 parentViewController];

      if (v15 == self)
      {
LABEL_14:
        v24 = [WGWidgetWrapperView alloc];
        v25 = [v11 platterView];
        v26 = [(WGWidgetWrapperView *)v24 initWithPlatterView:v25];

        v27 = MEMORY[0x277D75D18];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __103__WGWidgetListViewController__beginInsertion_ofListItem_withOrderedIdentifiers_removingViewIfPossible___block_invoke;
        v39[3] = &unk_279ED1088;
        v39[4] = self;
        v40 = v26;
        v41 = v14;
        v28 = v26;
        [v27 performWithoutAnimation:v39];

        goto LABEL_15;
      }

      [(WGWidgetListViewController *)self addChildViewController:v11];
      v16 = [v11 widgetIdentifier];
      v17 = WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(v16, @"10.0");

      if (v17)
      {
        v18 = [v11 widgetIdentifier];
        v19 = WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(v18, @"13.0");

        if (v19)
        {
LABEL_13:
          [v11 didMoveToParentViewController:self];
          goto LABEL_14;
        }

        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      v23 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v20];
      [(WGWidgetListViewController *)self setOverrideTraitCollection:v23 forChildViewController:v11];

      [(WGWidgetListViewController *)self _configureAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:v20];
      goto LABEL_13;
    }
  }

  else
  {
    [WGWidgetListViewController _beginInsertion:a2 ofListItem:self withOrderedIdentifiers:? removingViewIfPossible:?];
  }

  v29 = 0;
LABEL_18:
  v30 = [v29 copy];

  return v30;
}

uint64_t __103__WGWidgetListViewController__beginInsertion_ofListItem_withOrderedIdentifiers_removingViewIfPossible___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) insertArrangedSubview:*(a1 + 40) atIndex:*(a1 + 48)];
  v2 = [*(a1 + 32) widgetListView];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 32);

  return [v3 _didUpdateStackViewArrangedSubviews];
}

void __103__WGWidgetListViewController__beginInsertion_ofListItem_withOrderedIdentifiers_removingViewIfPossible___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) platterView];
    v5 = [v3 _wrapperViewForWidgetPlatterView:v4];

    [v5 removeFromSuperview];
    [*(a1 + 40) willMoveToParentViewController:0];
    [*(a1 + 40) removeFromParentViewController];
  }
}

- (void)_didUpdateStackViewArrangedSubviews
{
  [(WGWidgetListViewController *)self _createPropertiesForStackViewUpdate];
  v3 = MEMORY[0x277D75D18];
  v4 = [(WGWidgetListViewController *)self _animatablePropertiesForStackViewUpdate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__WGWidgetListViewController__didUpdateStackViewArrangedSubviews__block_invoke;
  v5[3] = &unk_279ED0948;
  v5[4] = self;
  [v3 _createTransformerWithInputAnimatableProperties:v4 presentationValueChangedCallback:v5];
}

- (void)_createPropertiesForStackViewUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(WGWidgetListViewController *)self resizeContexts];
  v4 = [v3 count];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(WGWidgetListViewController *)self resizeContexts];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) resizeProgress];
          [v11 invalidate];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(WGWidgetListViewController *)self setResizeContexts:0];
  }

  v12 = [(WGWidgetListViewController *)self resizeContexts];

  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(WGWidgetListViewController *)self setResizeContexts:v13];
  }
}

- (id)_animatablePropertiesForStackViewUpdate
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(UIStackView *)self->_stackView arrangedSubviews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WGWidgetListViewController__animatablePropertiesForStackViewUpdate__block_invoke;
  v9[3] = &unk_279ED1100;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __69__WGWidgetListViewController__animatablePropertiesForStackViewUpdate__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [*(a1 + 32) _identifierForCell:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_alloc_init(_WGCarouselCellResizeContext);
      v5 = objc_alloc_init(MEMORY[0x277D75D38]);
      [(_WGCarouselCellResizeContext *)v4 setResizeProgress:v5];

      [(_WGCarouselCellResizeContext *)v4 setActive:0];
      v6 = *(a1 + 40);
      v7 = [(_WGCarouselCellResizeContext *)v4 resizeProgress];
      [v6 addObject:v7];

      v8 = [*(a1 + 32) resizeContexts];
      [v8 setObject:v4 forKey:v3];
    }
  }
}

- (void)_resizeCell:(id)a3
{
  v18 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v18 platterView];
    v5 = [v4 listItem];
    v6 = [v5 widgetIdentifier];

    v7 = [(WGWidgetListViewController *)self resizeContexts];
    v8 = [v7 objectForKey:v6];

    v9 = -1.0;
    if ([v8 isActive])
    {
      [v8 compactHeight];
      v11 = v10;
      v12 = [v8 resizeProgress];
      [v12 presentationValue];
      v14 = v13;
      [v8 expandedHeight];
      v16 = v15;
      [v8 compactHeight];
      v9 = v11 + v14 * (v16 - v17);
    }

    [v18 setOverrideIntrinsicContentHeight:v9];
  }
}

- (void)_stackViewArrangedSubviewsTransformPresentationValueChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(UIStackView *)self->_stackView arrangedSubviews];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(WGWidgetListViewController *)self _resizeCell:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(UIStackView *)self->_stackView layoutIfNeeded];
}

- (id)_insert:(BOOL)a3 listItem:(id)a4 withOrderedIdentifiers:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    if ([(WGWidgetListViewController *)self isViewLoaded])
    {
      v13 = [(WGWidgetListViewController *)self _beginInsertion:v8 ofListItem:v11 withOrderedIdentifiers:v12 removingViewIfPossible:1];
      if (!v6)
      {
        goto LABEL_8;
      }

      v14 = [v11 platterView];
      v15 = [(WGWidgetListViewController *)self _wrapperViewForWidgetPlatterView:v14];

      if (v8)
      {
        v16 = MEMORY[0x277D75D18];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __79__WGWidgetListViewController__insert_listItem_withOrderedIdentifiers_animated___block_invoke;
        v27[3] = &unk_279ED0A40;
        v28 = v15;
        v29 = self;
        [v16 performWithoutAnimation:v27];
      }

      v17 = MEMORY[0x277D75D18];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __79__WGWidgetListViewController__insert_listItem_withOrderedIdentifiers_animated___block_invoke_2;
      v23[3] = &unk_279ED0BD0;
      v26 = v8;
      v24 = v15;
      v25 = self;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __79__WGWidgetListViewController__insert_listItem_withOrderedIdentifiers_animated___block_invoke_3;
      v21[3] = &unk_279ED11F0;
      v22 = v13;
      v18 = v15;
      [v17 animateWithDuration:0 delay:v23 usingSpringWithDamping:v21 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
    }
  }

  else
  {
    [WGWidgetListViewController _insert:a2 listItem:self withOrderedIdentifiers:? animated:?];
  }

  v13 = 0;
LABEL_8:
  v19 = MEMORY[0x2743E8C10](v13);

  return v19;
}

void __79__WGWidgetListViewController__insert_listItem_withOrderedIdentifiers_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = [*(a1 + 40) widgetListView];
  [v2 layoutIfNeeded];
}

void __79__WGWidgetListViewController__insert_listItem_withOrderedIdentifiers_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:(*(a1 + 48) & 1) == 0];
  v2 = [*(a1 + 40) widgetListView];
  [v2 layoutIfNeeded];
}

uint64_t __79__WGWidgetListViewController__insert_listItem_withOrderedIdentifiers_animated___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_pruneAlternateCaptureOnlyMaterialViews
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_userInterfaceStylesToCaptureOnlyMaterialViews)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = self->_widgetIDsToItemVCs;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(WGWidgetListViewController *)self overrideTraitCollectionForChildViewController:*(*(&v25 + 1) + 8 * v8)];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 userInterfaceStyle];
            if (v11)
            {
              v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
              [v3 addObject:v12];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }

    v13 = objc_alloc(MEMORY[0x277CBEB58]);
    v14 = [(NSMutableDictionary *)self->_userInterfaceStylesToCaptureOnlyMaterialViews allKeys];
    v15 = [v13 initWithArray:v14];

    [v15 minusSet:v3];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          -[WGWidgetListViewController _invalidateAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:](self, "_invalidateAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:", [*(*(&v21 + 1) + 8 * v20++) integerValue]);
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v18);
    }
  }
}

- (id)_newCaptureOnlyMaterialView
{
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:2];
  [v2 setGroupNameBase:@"WGWidgetListViewControllerGroupName"];
  [v2 setCaptureOnly:1];
  [v2 setAutoresizingMask:18];
  return v2;
}

- (void)_configureCaptureOnlyMaterialView
{
  v3 = [(WGWidgetListViewController *)self _newCaptureOnlyMaterialView];
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  self->_captureOnlyMaterialView = v3;

  v6 = [(WGWidgetListViewController *)self view];
  v5 = self->_captureOnlyMaterialView;
  [v6 bounds];
  [(MTMaterialView *)v5 setFrame:?];
  [v6 insertSubview:self->_captureOnlyMaterialView atIndex:0];
}

- (void)_configureAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:(int64_t)a3
{
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v5 = [(NSMutableDictionary *)self->_userInterfaceStylesToCaptureOnlyMaterialViews objectForKey:?];

  if (!v5)
  {
    v6 = [(WGWidgetListViewController *)self _newCaptureOnlyMaterialView];
    [v6 setOverrideUserInterfaceStyle:a3];
    userInterfaceStylesToCaptureOnlyMaterialViews = self->_userInterfaceStylesToCaptureOnlyMaterialViews;
    if (!userInterfaceStylesToCaptureOnlyMaterialViews)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_userInterfaceStylesToCaptureOnlyMaterialViews;
      self->_userInterfaceStylesToCaptureOnlyMaterialViews = v8;

      userInterfaceStylesToCaptureOnlyMaterialViews = self->_userInterfaceStylesToCaptureOnlyMaterialViews;
    }

    [(NSMutableDictionary *)userInterfaceStylesToCaptureOnlyMaterialViews setObject:v6 forKey:v11];
    v10 = [(WGWidgetListViewController *)self view];
    [v10 bounds];
    [v6 setFrame:?];
    [v10 insertSubview:v6 aboveSubview:self->_captureOnlyMaterialView];
  }
}

- (void)_invalidateAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStylesToCaptureOnlyMaterialViews)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v4 = [(NSMutableDictionary *)self->_userInterfaceStylesToCaptureOnlyMaterialViews objectForKey:?];
    v5 = v4;
    if (v4)
    {
      [v4 removeFromSuperview];
      [(NSMutableDictionary *)self->_userInterfaceStylesToCaptureOnlyMaterialViews removeObjectForKey:v7];
      if (![(NSMutableDictionary *)self->_userInterfaceStylesToCaptureOnlyMaterialViews count])
      {
        userInterfaceStylesToCaptureOnlyMaterialViews = self->_userInterfaceStylesToCaptureOnlyMaterialViews;
        self->_userInterfaceStylesToCaptureOnlyMaterialViews = 0;
      }
    }
  }
}

- (void)_invalidateAllAlternateCaptureOnlyMaterialViews
{
  v14 = *MEMORY[0x277D85DE8];
  userInterfaceStylesToCaptureOnlyMaterialViews = self->_userInterfaceStylesToCaptureOnlyMaterialViews;
  if (userInterfaceStylesToCaptureOnlyMaterialViews)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(NSMutableDictionary *)userInterfaceStylesToCaptureOnlyMaterialViews allKeys];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          -[WGWidgetListViewController _invalidateAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:](self, "_invalidateAlternateCaptureOnlyMaterialViewWithUserInterfaceStyle:", [*(*(&v9 + 1) + 8 * i) integerValue]);
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_configureScrollView
{
  v3 = objc_alloc_init(_WGWidgetListScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = &v3->super;

  v5 = [(UIScrollView *)self->_scrollView layer];
  [v5 setHitTestsAsOpaque:1];

  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:0];
  [(UIScrollView *)self->_scrollView setAutoresizingMask:18];
  v7 = [(WGWidgetListViewController *)self view];
  v6 = self->_scrollView;
  [v7 bounds];
  [(UIScrollView *)v6 setFrame:?];
  [v7 addSubview:self->_scrollView];
}

- (id)_scrollViewLoadingIfNecessary:(BOOL)a3
{
  if (a3 && ([(WGWidgetListViewController *)self isViewLoaded]& 1) == 0)
  {
    [(WGWidgetListViewController *)self loadViewIfNeeded];
  }

  scrollView = self->_scrollView;

  return scrollView;
}

- (void)_repopulateStackView
{
  v3 = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
  [(WGWidgetListViewController *)self _repopulateStackViewWithWidgetIdentifiers:v3];
}

- (id)_platterViewAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v6 = [(WGWidgetListViewController *)self _scrollViewIfLoaded];
  stackView = v6;
  if (!self->_shouldIncludeScrollView)
  {
    stackView = self->_stackView;
  }

  v8 = stackView;
  if (v8)
  {
    v9 = [(UIStackView *)self->_stackView arrangedSubviews];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__WGWidgetListViewController__platterViewAtLocation___block_invoke;
    v12[3] = &unk_279ED1218;
    v15 = x;
    v16 = y;
    v13 = v8;
    v14 = &v17;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

uint64_t __53__WGWidgetListViewController__platterViewAtLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v11;
  if (isKindOfClass)
  {
    v8 = [v11 platterView];
    v9 = *(a1 + 32);
    [v8 bounds];
    [v9 convertRect:v8 fromView:?];
    if (CGRectContainsPoint(v13, *(a1 + 48)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
      *a4 = 1;
    }

    v7 = v11;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v7);
}

- (void)_cancelTouchesForHitWidgetIfNecessaryAndDisableTouchesOnAllWidgets
{
  v3 = [(WGWidgetListViewController *)self _scrollViewIfLoaded];
  v12 = v3;
  if (v3)
  {
    v4 = [v3 panGestureRecognizer];
    [v4 locationInView:v12];
    v6 = v5;
    v8 = v7;

    v9 = [(WGWidgetListViewController *)self _platterViewAtLocation:v6, v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 widgetHost];
      [(WGWidgetListViewController *)self _cancelTouchesForWidget:v11];
    }
  }

  [(WGWidgetListViewController *)self _disableTouchesOnAllWidgets];
}

- (void)_cancelTouchesForWidget:(id)a3
{
  v9 = a3;
  v4 = [v9 widgetIdentifier];
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID objectForKey:v4];
    if (!v5)
    {
      v5 = [v9 _cancelTouches];
      if (v5)
      {
        cancelTouchesAssertionsByWidgetID = self->_cancelTouchesAssertionsByWidgetID;
        if (!cancelTouchesAssertionsByWidgetID)
        {
          v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v8 = self->_cancelTouchesAssertionsByWidgetID;
          self->_cancelTouchesAssertionsByWidgetID = v7;

          cancelTouchesAssertionsByWidgetID = self->_cancelTouchesAssertionsByWidgetID;
        }

        [(NSMutableDictionary *)cancelTouchesAssertionsByWidgetID setObject:v5 forKey:v4];
      }
    }
  }
}

- (void)_invalidateAllCancelTouchesAssertions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_cancelTouchesAssertionsByWidgetID;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID removeAllObjects];
  [(WGWidgetListViewController *)self _enableTouchesOnAllWidgets];
}

- (void)_adjustContentOffsetToInsideContent:(BOOL)a3
{
  if (self->_shouldIncludeScrollView)
  {
    scrollView = self->_scrollView;
    if (scrollView)
    {
      v5 = a3;
      [(UIScrollView *)scrollView contentSize];
      v7 = v6;
      [(UIScrollView *)self->_scrollView bounds];
      v9 = v7 - v8;
      [(UIScrollView *)self->_scrollView contentInset];
      v11 = v9 + v10;
      v12 = fmax(v9 + v10, 0.0);
      [(UIScrollView *)self->_scrollView contentInset];
      v14 = v12 - v13;
      [(UIScrollView *)self->_scrollView contentOffset];
      if (v15 > v14)
      {
        v16 = v11 >= 0.0 && v5;
        v17 = self->_scrollView;

        [(UIScrollView *)v17 setContentOffset:v16 animated:0.0, v14];
      }
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v3 viewDidLoad];
  [(WGWidgetListViewController *)self _configureCaptureOnlyMaterialView];
  if (self->_shouldIncludeScrollView)
  {
    [(WGWidgetListViewController *)self _configureScrollView];
  }

  [(WGWidgetListViewController *)self _configureStackView];
  [(WGWidgetListViewController *)self _repopulateStackView];
  [(WGWidgetDiscoveryController *)self->_discoveryController addDiscoveryObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v8 viewWillAppear:?];
  [(WGWidgetListViewController *)self _adjustContentOffsetToInsideContent:v3];
  [(WGWidgetListViewController *)self _invalidateAllCancelTouchesAssertions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__WGWidgetListViewController_viewWillAppear___block_invoke;
  v6[3] = &__block_descriptor_33_e33_v24__0__WGWidgetPlatterView_8_B16l;
  v7 = v3;
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__WGWidgetListViewController_viewWillAppear___block_invoke_2;
  v5[3] = &unk_279ED1280;
  v5[4] = self;
  [(WGWidgetListViewController *)self _invokeBlock:v5 withPlatterViewsPassingTest:0];
}

void __45__WGWidgetListViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 listItem];
  [v3 wg_beginAppearanceTransitionIfNecessary:1 animated:*(a1 + 32)];
}

void __45__WGWidgetListViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 listItem];
  [v3 managingContainerWillAppear:*(a1 + 32)];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v7 viewDidAppear:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__WGWidgetListViewController_viewDidAppear___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v24__0__WGWidgetPlatterView_8_B16l;
  v6 = a3;
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v5];
}

void __44__WGWidgetListViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 listItem];
  [v3 wg_beginAppearanceTransitionIfNecessary:1 animated:*(a1 + 32)];
  [v3 wg_endAppearanceTransitionIfNecessary];
  v4 = [v3 widgetHost];
  v5 = 1.0;
  if (([v4 isRemoteViewVisible] & 1) == 0 && (objc_msgSend(v4, "isSnapshotLoaded") & 1) == 0 && (objc_msgSend(v4, "isBrokenViewVisible") & 1) == 0)
  {
    if ([v4 isLockedOut])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v6 = [v9 contentView];
  [v6 setAlpha:v5];

  v7 = +[WGWidgetEventTracker sharedInstance];
  v8 = [v4 widgetIdentifier];
  [v7 widget:v8 didAppearInMode:{objc_msgSend(v4, "activeDisplayMode")}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v5 viewWillDisappear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WGWidgetListViewController_viewWillDisappear___block_invoke;
  v4[3] = &unk_279ED1280;
  v4[4] = self;
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v4];
  [(WGWidgetListViewController *)self _disableTouchesOnAllWidgets];
}

void __48__WGWidgetListViewController_viewWillDisappear___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 widgetHost];
  [*(a1 + 32) _cancelTouchesForWidget:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v7 viewDidDisappear:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__WGWidgetListViewController_viewDidDisappear___block_invoke;
  v5[3] = &unk_279ED12A8;
  v6 = a3;
  v5[4] = self;
  [(WGWidgetListViewController *)self _invokeBlock:v5 withPlatterViewsPassingTest:0];
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:&__block_literal_global_68];
}

void __47__WGWidgetListViewController_viewDidDisappear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 listItem];
  [v5 wg_beginAppearanceTransitionIfNecessary:0 animated:*(a1 + 40)];
  [v5 wg_endAppearanceTransitionIfNecessary];
  [v5 managingContainerDidDisappear:*(a1 + 32)];
  v4 = [v3 contentView];

  [v4 setAlpha:1.0];
}

void __47__WGWidgetListViewController_viewDidDisappear___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 widgetHost];
  v2 = +[WGWidgetEventTracker sharedInstance];
  v3 = [v4 widgetIdentifier];
  [v2 widget:v3 didDisappearInMode:{objc_msgSend(v4, "activeDisplayMode")}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = WGWidgetListViewController;
  [(WGWidgetListViewController *)&v15 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  v7 = [(WGWidgetListViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__WGWidgetListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &__block_descriptor_65_e33_v24__0__WGWidgetPlatterView_8_B16l;
  v12 = v11 != height || v9 != width;
  v14 = v12;
  *&v13[4] = v9;
  *&v13[5] = v11;
  *&v13[6] = width;
  *&v13[7] = height;
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v13];
}

void __81__WGWidgetListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = [a2 widgetHost];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [v3 maximumSizeDidChangeForDisplayMode:0];
    }

    [v3 maximumSizeDidChangeForDisplayMode:1];
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9)
  {
    [v9 preferredContentSize];
    v12 = v11;
    if (width == 0.0 && height == 0.0 && [(WGWidgetListViewController *)self isViewLoaded])
    {
      v13 = [(WGWidgetListViewController *)self view];
      [v13 bounds];
      width = CGRectGetWidth(v35);
    }

    [v10 contentSizeForPreferredContentSize:{width, v12}];
    v15 = v14;
    v17 = v16;
    v18 = [v10 widgetHost];
    [(WGWidgetListViewController *)self maxSizeForWidget:v18 forDisplayMode:0];
    v20 = v19;

    v21 = [v10 widgetHost];
    if ([v21 activeDisplayMode] < 1)
    {
      v25 = v20;
    }

    else
    {
      v22 = [v10 widgetHost];
      v23 = [v10 widgetHost];
      -[WGWidgetListViewController maxSizeForWidget:forDisplayMode:](self, "maxSizeForWidget:forDisplayMode:", v22, [v23 activeDisplayMode]);
      v25 = v24;
    }

    if (v20 >= v17)
    {
      v28 = v20;
    }

    else
    {
      v28 = v17;
    }

    if (v25 <= v28)
    {
      v29 = v25;
    }

    else
    {
      v29 = v28;
    }

    [v10 preferredContentSizeForContentOfSize:{v15, v29}];
    v26 = v30;
    v27 = v31;
  }

  else
  {
    v26 = *MEMORY[0x277CBF3A8];
    v27 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v32 = v26;
  v33 = v27;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(WGWidgetListViewController *)self view];
    [v7 bounds];
    [(WGWidgetListViewController *)self sizeForChildContentContainer:v4 withParentContainerSize:v8, v9];
    v11 = v10;
    v13 = v12;

    v14 = [v6 widgetIdentifier];
    v15 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:v14 creatingIfNecessary:0];

    v16 = [(WGWidgetListViewController *)self _wrapperViewForWidgetPlatterView:v15];
    [v16 invalidateIntrinsicContentSize];
    ADClientPushValueForDistributionKey();
    v17 = [(WGWidgetListViewController *)self _appearState]== 2;
    v18 = [(WGWidgetListViewController *)self _widgetIdentifiersForPlatterViewsVisibleInBounds];
    [(WGWidgetListViewController *)self _setPreviouslyVisibleWidgetIDs:v18];

    v19 = objc_alloc_init(MEMORY[0x277D763A0]);
    [v19 _setIsAnimated:v17];
    v20 = [v19 _transitionCoordinator];
    [v4 viewWillTransitionToSize:v20 withTransitionCoordinator:{v11, v13}];

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__WGWidgetListViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
    v23[3] = &unk_279ED12F0;
    objc_copyWeak(&v25, &location);
    v21 = v19;
    v24 = v21;
    v22 = MEMORY[0x2743E8C10](v23);
    [(WGWidgetListViewController *)self resizeWidgetWrapperView:v16 toSize:v21 withTransitionContext:v22 completion:v11, v13];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __84__WGWidgetListViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _previouslyVisibleWidgetIDs];
  [WeakRetained _updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers:v4];

  [*(a1 + 32) completeTransition:a2];
}

- (id)_identifierForCell:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;

    v10 = [v9 platterView];

    v11 = [v10 listItem];
    v8 = [v11 widgetIdentifier];

    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = objc_opt_class(), NSStringFromClass(v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_12:
    [WGWidgetListViewController _identifierForCell:v3];
LABEL_13:
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (void)resizeWidgetWrapperView:(id)a3 toSize:(CGSize)a4 withTransitionContext:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v76 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15 = [v12 isAnimated];
    v16 = [(WGWidgetListViewController *)self _identifierForCell:v11];
    v17 = [(NSMutableDictionary *)self->_resizeContexts objectForKey:v16];
    v18 = v17;
    if ((v15 & 1) == 0)
    {
      if ([v17 isActive])
      {
        [v18 setActive:0];
        [v11 setOverrideIntrinsicContentHeight:-1.0];
      }

      v21 = [(WGWidgetListViewController *)self widgetListView];
      [v21 setNeedsLayout];

      [v12 __runAlongsideAnimations];
      if (v14)
      {
        v14[2](v14, 1);
      }

      goto LABEL_40;
    }

    v19 = [v17 resizeProgress];
    if ([v18 isActive])
    {
      [v19 value];
      if (BSFloatIsZero())
      {
        [v18 compactHeight];
      }

      else
      {
        [v18 expandedHeight];
      }

      v23 = v20;
    }

    else
    {
      [v11 bounds];
      v23 = v22;
    }

    if (BSFloatEqualToFloat())
    {
      v24 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
        v26 = [(WGWidgetListViewController *)self _identifierForCell:v11];
        *buf = 138412802;
        *&buf[4] = v26;
        v68 = 2048;
        v69 = v23;
        v70 = 2048;
        v71 = height;
        _os_log_debug_impl(&dword_27425E000, v25, OS_LOG_TYPE_DEBUG, "Not animating for cell %@ from: %.2f to %.2f", buf, 0x20u);
      }

LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    if (height <= v23)
    {
      v27 = height;
    }

    else
    {
      v27 = v23;
    }

    if (height <= v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = height;
    }

    if ([v18 isActive] && ((objc_msgSend(v18, "compactHeight"), !BSFloatEqualToFloat()) ? (v29 = 0) : (objc_msgSend(v18, "expandedHeight"), v29 = BSFloatEqualToFloat()), objc_msgSend(v19, "value"), IsOne = BSFloatIsOne(), (v29 & 1) != 0))
    {
      if (((height > v23) ^ IsOne))
      {
        v31 = 1;
LABEL_34:
        [v18 setActive:1];
        v33 = ++resizeWidgetWrapperView_toSize_withTransitionContext_completion__animationId;
        v34 = WGLogWidgets;
        if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
        {
          v43 = v34;
          v44 = [(WGWidgetListViewController *)self _identifierForCell:v11];
          *buf = 134219010;
          *&buf[4] = v33;
          v68 = 2112;
          v69 = *&v44;
          v70 = 2048;
          v71 = v23;
          v72 = 2048;
          v73 = height;
          v74 = 1024;
          v75 = v31;
          _os_log_debug_impl(&dword_27425E000, v43, OS_LOG_TYPE_DEBUG, "nmao _updateUtilityButtonForMoreContentState Starting animation %lu for cell %@ from: %.2f to %.2f reversing %{BOOL}d", buf, 0x30u);
        }

        v35 = dispatch_group_create();
        dispatch_group_enter(v35);
        v36 = MEMORY[0x277D75D18];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke;
        v64[3] = &unk_279ED10D8;
        v65 = v19;
        v66 = height > v23;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2;
        v59[3] = &unk_279ED1318;
        v63 = v33;
        v60 = v18;
        v37 = v11;
        v61 = v37;
        v38 = v35;
        v62 = v38;
        [v36 _animateUsingSpringWithTension:0 friction:v64 interactive:v59 animations:341.02 completion:36.93];
        *buf = 0;
        v57 = 0.0;
        v58 = 0;
        WGConvertTensionAndFrictionToDampingRatioResponseAndSettlingDuration(buf, &v58, &v57, 341.02, 36.93);
        dispatch_group_enter(v38);
        v39 = MEMORY[0x277D75D18];
        v40 = v57;
        v41 = *buf;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_80;
        v52[3] = &unk_279ED1340;
        v53 = v37;
        v55 = width;
        v56 = height;
        v54 = v12;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2_81;
        v48[3] = &unk_279ED1368;
        v51 = v33;
        v49 = v53;
        v42 = v38;
        v50 = v42;
        [v39 animateWithDuration:6 delay:v52 usingSpringWithDamping:v48 initialSpringVelocity:v40 options:0.0 animations:v41 completion:0.0];
        if (v14)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_82;
          block[3] = &unk_279ED1390;
          v47 = v33;
          v46 = v14;
          dispatch_group_notify(v42, MEMORY[0x277D85CD0], block);
        }

        goto LABEL_39;
      }
    }

    else
    {
      [v18 setCompactHeight:v27];
      [v18 setExpandedHeight:v28];
    }

    v32 = 1.0;
    if (height > v23)
    {
      v32 = 0.0;
    }

    [v19 setValue:v32];
    [v11 setOverrideIntrinsicContentHeight:v23];
    v31 = 0;
    goto LABEL_34;
  }

  (*(v13 + 2))(v13, 1);
LABEL_41:
}

uint64_t __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setValue:v1];
}

void __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v5 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2_cold_1(a1, a3, v5);
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((a3 & 1) == 0)
  {
LABEL_3:
    [*(a1 + 32) setActive:0];
    [*(a1 + 40) setOverrideIntrinsicContentHeight:-1.0];
    v6 = [*(a1 + 40) platterView];
    [v6 setOverrideHeightForLayingOutContentView:-1.0];
  }

LABEL_4:
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_80(uint64_t a1)
{
  v2 = [*(a1 + 32) platterView];
  [v2 setOverrideHeightForLayingOutContentView:*(a1 + 56)];

  v3 = [*(a1 + 32) platterView];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 40);

  return [v4 __runAlongsideAnimations];
}

void __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2_81(uint64_t a1)
{
  v2 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2_81_cold_1(a1, v2);
  }

  v3 = [*(a1 + 32) platterView];
  [v3 setOverrideHeightForLayingOutContentView:-1.0];

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_82(uint64_t a1)
{
  v2 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_82_cold_1(a1, v2);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = WGWidgetListViewController;
  v4 = a3;
  [(WGWidgetListViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(WGWidgetListViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(WGWidgetListViewController *)self _invokeBlockWithAllPlatterViews:&__block_literal_global_86];
  }
}

void __55__WGWidgetListViewController_traitCollectionDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 listItem];
  [v2 adjustForContentSizeCategoryChange];
}

- (void)_invokeBlock:(id)a3 withPlatterViewsPassingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(WGWidgetListViewController *)self _scrollViewIfLoaded];
    if (v8 || !self->_shouldIncludeScrollView)
    {
      v9 = [(UIStackView *)self->_stackView arrangedSubviews];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __71__WGWidgetListViewController__invokeBlock_withPlatterViewsPassingTest___block_invoke;
      v10[3] = &unk_279ED13B8;
      v11 = v7;
      v12 = v6;
      [v9 enumerateObjectsUsingBlock:v10];
    }
  }
}

uint64_t __71__WGWidgetListViewController__invokeBlock_withPlatterViewsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v8;
  if (isKindOfClass)
  {
    v5 = [v8 platterView];
    v6 = *(a1 + 32);
    if (!v6 || (*(v6 + 16))(v6, v5))
    {
      (*(*(a1 + 40) + 16))();
    }

    v4 = v8;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v4);
}

- (void)_invokeBlockWithPlatterViewsVisibleInRect:(CGRect)a3 block:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (v9)
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (CGRectGetHeight(v11) > 0.0)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __78__WGWidgetListViewController__invokeBlockWithPlatterViewsVisibleInRect_block___block_invoke;
      v10[3] = &unk_279ED13E0;
      v10[4] = self;
      *&v10[5] = x;
      *&v10[6] = y;
      *&v10[7] = width;
      *&v10[8] = height;
      [(WGWidgetListViewController *)self _invokeBlock:v9 withPlatterViewsPassingTest:v10];
    }
  }
}

BOOL __78__WGWidgetListViewController__invokeBlockWithPlatterViewsVisibleInRect_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) widgetListView];
  [v3 convertRect:v12 toView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [*(a1 + 32) _wrapperViewForWidgetPlatterView:v3];

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  if (CGRectIntersectsRect(*(a1 + 40), v27))
  {
    v22 = [v21 contentView];
    [v22 alpha];
    if (v23 <= 0.0)
    {
      v25 = 0;
    }

    else
    {
      [v21 alpha];
      v25 = v24 > 0.0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_invokeBlockWithPlatterViewsVisibleInBounds:(id)a3
{
  v4 = a3;
  v5 = [(WGWidgetListViewController *)self widgetListView];
  [v5 bounds];
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInRect:v4 block:?];
}

- (id)_widgetIdentifiersForPlatterViewsVisibleInBounds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__WGWidgetListViewController__widgetIdentifiersForPlatterViewsVisibleInBounds__block_invoke;
  v5[3] = &unk_279ED1408;
  v5[4] = &v6;
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __78__WGWidgetListViewController__widgetIdentifiersForPlatterViewsVisibleInBounds__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 widgetHost];
  v4 = [v3 widgetIdentifier];

  if ([v4 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

- (void)updateWidgetViewState
{
  [(WGWidgetListViewController *)self _updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers:self->_previouslyVisibleWidgetIDs];
  previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
  self->_previouslyVisibleWidgetIDs = 0;
}

- (void)updatePreviouslyVisibleWidgetIDs
{
  v3 = [(WGWidgetListViewController *)self _widgetIdentifiersForPlatterViewsVisibleInBounds];
  previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
  self->_previouslyVisibleWidgetIDs = v3;

  MEMORY[0x2821F96F8](v3, previouslyVisibleWidgetIDs);
}

- (void)_updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WGWidgetListViewController *)self _appearState]== 2)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__3;
    v27 = __Block_byref_object_dispose__3;
    v28 = [MEMORY[0x277CBEB58] set];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __91__WGWidgetListViewController__updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers___block_invoke;
    v22[3] = &unk_279ED1408;
    v22[4] = &v23;
    [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v22];
    v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
    [v5 minusSet:v24[5]];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_widgetIDsToItemVCs objectForKey:v9];
          [v10 wg_beginAppearanceTransitionIfNecessary:0 animated:1];
          [v10 wg_endAppearanceTransitionIfNecessary];
          discoveryController = self->_discoveryController;
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = [(WGWidgetDiscoveryController *)discoveryController widgetWithIdentifier:v9 delegate:self forRequesterWithIdentifier:v13];

          v15 = +[WGWidgetEventTracker sharedInstance];
          v16 = [v14 widgetIdentifier];
          [v15 widget:v16 didDisappearInMode:{objc_msgSend(v14, "activeDisplayMode")}];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v6);
    }

    _Block_object_dispose(&v23, 8);
  }
}

void __91__WGWidgetListViewController__updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 listItem];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 widgetIdentifier];
    if (![v6 length])
    {
      v7 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
      {
        __91__WGWidgetListViewController__updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers___block_invoke_cold_1(v5, v7);
      }
    }

    if ([v6 length])
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
      [v5 wg_beginAppearanceTransitionIfNecessary:1 animated:1];
      [v5 wg_endAppearanceTransitionIfNecessary];
      v8 = [v5 widgetHost];
      if ([v8 isRemoteViewVisible])
      {
        [v8 _invalidateVisibleFrame];
      }

      else
      {
        v10 = 1.0;
        if (([v8 isSnapshotLoaded] & 1) == 0 && (objc_msgSend(v8, "isBrokenViewVisible") & 1) == 0)
        {
          if ([v8 isLockedOut])
          {
            v10 = 1.0;
          }

          else
          {
            v10 = 0.0;
          }
        }

        v11 = [v3 contentView];
        [v11 setAlpha:v10];

        v12 = +[WGWidgetEventTracker sharedInstance];
        [v12 widget:v6 didAppearInMode:{objc_msgSend(v8, "activeDisplayMode")}];
      }
    }
  }

  else
  {
    v9 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      __91__WGWidgetListViewController__updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers___block_invoke_cold_2(v3, v9);
    }
  }
}

- (id)_wrapperViewForWidgetPlatterView:(id)a3
{
  v3 = [a3 superview];
  v4 = [v3 superview];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (void)setEditingIcons:(BOOL)a3
{
  self->_editingIcons = a3;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__WGWidgetListViewController_setEditingIcons___block_invoke;
  v3[3] = &__block_descriptor_33_e33_v24__0__WGWidgetPlatterView_8_B16l;
  v4 = a3;
  [(WGWidgetListViewController *)self _invokeBlockWithAllPlatterViews:v3];
}

- (UIControl)editButton
{
  editButton = self->_editButton;
  if (!editButton)
  {
    v4 = objc_alloc_init(WGShortLookStyleButton);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"WIDGETS_EDIT_BUTTON" value:&stru_2883435D8 table:@"Widgets"];
    [(WGShortLookStyleButton *)v4 setTitle:v6];

    [(WGShortLookStyleButton *)v4 setBackgroundBlurred:self->_shouldBlurContent];
    [(WGShortLookStyleButton *)v4 addTarget:self action:sel__presentEditViewController forControlEvents:64];
    [(WGShortLookStyleButton *)v4 setMaterialGroupNameBase:@"WGWidgetListViewControllerGroupName"];
    v7 = self->_editButton;
    self->_editButton = &v4->super;

    editButton = self->_editButton;
  }

  return editButton;
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidScroll_ withObject:v5];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  [(WGWidgetListViewController *)self _cancelTouchesForHitWidgetIfNecessaryAndDisableTouchesOnAllWidgets];
  v4 = [(WGWidgetListViewController *)self _widgetIdentifiersForPlatterViewsVisibleInBounds];
  previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
  self->_previouslyVisibleWidgetIDs = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewWillBeginDragging_ withObject:v7];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewWillEndDragging:v10 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v4 && ([v7 isDecelerating] & 1) == 0)
  {
    [(WGWidgetListViewController *)self _scrollViewDidStop];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidEndDragging:v7 willDecelerate:v4];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewWillBeginDecelerating_ withObject:v5];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  [(WGWidgetListViewController *)self _scrollViewDidStop];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidEndDecelerating_ withObject:v5];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v5 = a3;
  [(WGWidgetListViewController *)self _scrollViewDidStop];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidEndScrollingAnimation_ withObject:v5];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained scrollViewShouldScrollToTop:v4])
  {
    v8 = 0;
  }

  else
  {
    v6 = [(WGWidgetListViewController *)self _widgetIdentifiersForPlatterViewsVisibleInBounds];
    previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
    self->_previouslyVisibleWidgetIDs = v6;

    v8 = 1;
  }

  return v8;
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v5 = a3;
  [(WGWidgetListViewController *)self _scrollViewDidStop];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidScrollToTop_ withObject:v5];
  }
}

- (void)_scrollViewDidStop
{
  [(WGWidgetListViewController *)self _updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers:self->_previouslyVisibleWidgetIDs];
  previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
  self->_previouslyVisibleWidgetIDs = 0;

  [(WGWidgetListViewController *)self _invalidateAllCancelTouchesAssertions];
}

- (void)widgetDiscoveryControllerSignificantWidgetsChange:(id)a3
{
  v4 = [(WGWidgetListViewController *)self widgetListView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  [(WGWidgetListViewController *)self _repopulateStackView];
  v9 = [(WGWidgetListViewController *)self widgetListView];
  [v9 setContentOffset:{v6, v8}];
}

- (void)widgetDiscoveryController:(id)a3 orderDidChangeForWidgetIdentifiers:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(WGWidgetListViewController *)self _widgetIdentifiersForPlatterViewsVisibleInBounds];
  previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
  self->_previouslyVisibleWidgetIDs = v7;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v19 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:*(*(&v25 + 1) + 8 * v10) creatingIfNecessary:0];
        v12 = [v11 platterView];
        v13 = [(WGWidgetListViewController *)self _wrapperViewForWidgetPlatterView:v12];
        v14 = MEMORY[0x277D75D18];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __91__WGWidgetListViewController_widgetDiscoveryController_orderDidChangeForWidgetIdentifiers___block_invoke;
        v22[3] = &unk_279ED0B58;
        v22[4] = self;
        v15 = v11;
        v23 = v15;
        v16 = v13;
        v24 = v16;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __91__WGWidgetListViewController_widgetDiscoveryController_orderDidChangeForWidgetIdentifiers___block_invoke_2;
        v20[3] = &unk_279ED1430;
        objc_copyWeak(&v21, &location);
        [v14 animateWithDuration:0 delay:v22 usingSpringWithDamping:v20 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
        objc_destroyWeak(&v21);

        ++v10;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&location);
}

void __91__WGWidgetListViewController_widgetDiscoveryController_orderDidChangeForWidgetIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2[128] arrangedSubviews];
  v5 = [*(a1 + 32) visibleWidgetIdentifiers];
  v6 = [v2 _insertionIndexofListItem:v3 intoWidgetViews:v4 withOrderedIdentifiers:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(*(a1 + 32) + 1024);
    v8 = *(a1 + 48);

    [v7 insertArrangedSubview:v8 atIndex:v6];
  }
}

void __91__WGWidgetListViewController_widgetDiscoveryController_orderDidChangeForWidgetIdentifiers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _previouslyVisibleWidgetIDs];
  [WeakRetained _updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers:v1];
}

- (CGRect)_visibleContentFrameForBounds:(CGRect)a3 withContentOccludingInsets:(UIEdgeInsets)a4
{
  v4 = [(WGWidgetListViewController *)self widgetListView];
  [v4 contentInset];

  UIRectInset();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)_maxVisibleContentSize
{
  p_maxVisibleContentSize = &self->_maxVisibleContentSize;
  width = self->_maxVisibleContentSize.width;
  height = self->_maxVisibleContentSize.height;
  if (width == 0.0 && height == 0.0)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained widgetListViewController:self sizeForInterfaceOrientation:v8];
    }

    else
    {
      v10 = [(WGWidgetListViewController *)self view];
      [v10 bounds];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained widgetListViewController:self contentOccludingInsetsForInterfaceOrientation:v8];
    }

    BSRectWithSize();
    [WGWidgetListViewController _visibleContentFrameForBounds:"_visibleContentFrameForBounds:withContentOccludingInsets:" withContentOccludingInsets:?];
    p_maxVisibleContentSize->width = v11;
    p_maxVisibleContentSize->height = v12;

    width = p_maxVisibleContentSize->width;
    height = p_maxVisibleContentSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSizeForWidget:(id)a3 forDisplayMode:(int64_t)a4
{
  v6 = a3;
  [(WGWidgetListViewController *)self _maxVisibleContentSize];
  v8 = v7;
  v10 = v9;
  +[WGWidgetInfo maximumContentHeightForCompactDisplayMode];
  v12 = v11;
  if (a4)
  {
    [MEMORY[0x277CD9378] defaultWidgetRowHeight];
    v14 = v13;
    [MEMORY[0x277CD9378] widgetRowHeight];
    v16 = v15;
    v17 = [v6 widgetIdentifier];
    v18 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:v17 creatingIfNecessary:1];
    [v18 contentSizeForSize:{v8, v10}];
    if (v14 <= v16)
    {
      v20 = v14;
    }

    else
    {
      v20 = v16;
    }

    v21 = floor(v19 / v20);

    if (v16 * v21 >= v12)
    {
      v12 = v16 * v21;
    }
  }

  v22 = v8;
  v23 = v12;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)registerWidgetForRefreshEvents:(id)a3
{
  discoveryController = self->_discoveryController;
  v4 = [a3 widgetIdentifier];
  [(WGWidgetDiscoveryController *)discoveryController registerIdentifierForRefreshEvents:v4];
}

- (void)unregisterWidgetForRefreshEvents:(id)a3
{
  discoveryController = self->_discoveryController;
  v4 = [a3 widgetIdentifier];
  [(WGWidgetDiscoveryController *)discoveryController unregisterIdentifierForRefreshEvents:v4];
}

- (UIEdgeInsets)marginInsetsForWidget:(id)a3
{
  v3 = [(WGWidgetListViewController *)self view];
  v4 = [v3 _shouldReverseLayoutDirection];
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 15.0;
  }

  if (v4)
  {
    v6 = 15.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = 0.0;
  v8 = 0.0;
  v9 = v5;
  v10 = v6;
  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)layoutMarginForWidget:(id)a3
{
  v3 = *MEMORY[0x277CD9380];
  v4 = *(MEMORY[0x277CD9380] + 8);
  v5 = *(MEMORY[0x277CD9380] + 24);
  [(WGWidgetListViewController *)self _maxVisibleContentSize];
  [WGWidgetPlatterView contentBaselineToBoundsBottomWithWidth:?];
  v7 = v6;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  result.right = v10;
  result.bottom = v7;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)widget:(id)a3 didChangeLargestSupportedDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__WGWidgetListViewController_widget_didChangeLargestSupportedDisplayMode___block_invoke;
  v9[3] = &unk_279ED1088;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 animateWithDuration:v9 animations:0.5];
}

void __74__WGWidgetListViewController_widget_didChangeLargestSupportedDisplayMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) widgetIdentifier];
  v3 = [v2 _platterViewForWidgetWithIdentifier:v4 creatingIfNecessary:0];
  [v3 setShowMoreButtonVisible:*(a1 + 48) == 1];
}

- (void)remoteViewControllerViewDidAppearForWidget:(id)a3
{
  v4 = a3;
  if (-[UIViewController wg_isAppearingOrAppeared](self, "wg_isAppearingOrAppeared") && [v4 isRemoteViewVisible])
  {
    [v4 _invalidateVisibleFrame];
    v5 = [v4 widgetIdentifier];
    v6 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:v5 creatingIfNecessary:0];

    if (v6)
    {
      v7 = MEMORY[0x277D75D18];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __73__WGWidgetListViewController_remoteViewControllerViewDidAppearForWidget___block_invoke;
      v8[3] = &unk_279ED0948;
      v9 = v6;
      [v7 animateWithDuration:v8 animations:0.25];
    }
  }
}

void __73__WGWidgetListViewController_remoteViewControllerViewDidAppearForWidget___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:1.0];
}

- (void)remoteViewControllerViewDidHideForWidget:(id)a3
{
  cancelTouchesAssertionsByWidgetID = self->_cancelTouchesAssertionsByWidgetID;
  v5 = [a3 widgetIdentifier];
  v4 = [(NSMutableDictionary *)cancelTouchesAssertionsByWidgetID objectForKey:v5];
  [v4 invalidate];
}

- (void)brokenViewDidAppearForWidget:(id)a3
{
  v4 = a3;
  if (-[UIViewController wg_isAppearingOrAppeared](self, "wg_isAppearingOrAppeared") && ([v4 isSnapshotLoaded] & 1) == 0 && (objc_msgSend(v4, "isRemoteViewVisible") & 1) == 0)
  {
    v5 = [v4 widgetIdentifier];
    v6 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:v5 creatingIfNecessary:0];

    if (v6)
    {
      v7 = MEMORY[0x277D75D18];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__WGWidgetListViewController_brokenViewDidAppearForWidget___block_invoke;
      v8[3] = &unk_279ED0948;
      v9 = v6;
      [v7 animateWithDuration:v8 animations:0.25];
    }
  }
}

void __59__WGWidgetListViewController_brokenViewDidAppearForWidget___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:1.0];
}

- (CGRect)visibleFrameForWidget:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained widgetListViewController:self contentOccludingInsetsForInterfaceOrientation:{objc_msgSend(*MEMORY[0x277D76620], "activeInterfaceOrientation")}];
    }

    v10 = [(WGWidgetListViewController *)self widgetListView:*&v8];
    [v10 bounds];
    [WGWidgetListViewController _visibleContentFrameForBounds:"_visibleContentFrameForBounds:withContentOccludingInsets:" withContentOccludingInsets:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(WGWidgetListViewController *)self widgetListView];
    v20 = [v4 view];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v20 superview];
    [v19 convertRect:v29 fromView:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    v58.origin.x = v31;
    v58.origin.y = v33;
    v58.size.width = v35;
    v58.size.height = v37;
    v56 = CGRectIntersection(v55, v58);
    x = v56.origin.x;
    y = v56.origin.y;
    width = v56.size.width;
    height = v56.size.height;
    v6 = v53;
    v5 = v54;
    v8 = v51;
    v7 = v52;
    if (!CGRectIsNull(v56))
    {
      v42 = [v4 view];
      [v42 convertRect:v19 fromView:{x, y, width, height}];
      v5 = v43;
      v6 = v44;
      v7 = v45;
      v8 = v46;
    }
  }

  v47 = v5;
  v48 = v6;
  v49 = v7;
  v50 = v8;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (id)widgetListItemViewController:(id)a3 widgetHostWithIdentifier:(id)a4
{
  discoveryController = self->_discoveryController;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(WGWidgetDiscoveryController *)discoveryController widgetWithIdentifier:v6 delegate:self forRequesterWithIdentifier:v8];

  return v9;
}

- (BOOL)isWidgetExtensionVisible:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(WGWidgetListViewController *)self _appearState])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__WGWidgetListViewController_isWidgetExtensionVisible___block_invoke;
    v7[3] = &unk_279ED1458;
    v8 = v4;
    v9 = &v10;
    [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v7];
  }

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __55__WGWidgetListViewController_isWidgetExtensionVisible___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 widgetHost];
  v6 = [v5 widgetIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (WGWidgetListViewControllerDelegatePrivate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)visibleWidgetIdentifiers
{
  discoveryController = self->_discoveryController;
  v3 = [(WGWidgetListViewController *)self _group];
  v4 = [(WGWidgetDiscoveryController *)discoveryController visibleWidgetIdentifiersForGroup:v3];

  return v4;
}

- (void)makeVisibleWidgetWithIdentifier:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 length])
  {
    v7 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:v11 creatingIfNecessary:0];
    if (v7)
    {
      v8 = [(WGWidgetListViewController *)self _widgetIdentifiersForPlatterViewsVisibleInBounds];
      previouslyVisibleWidgetIDs = self->_previouslyVisibleWidgetIDs;
      self->_previouslyVisibleWidgetIDs = v8;

      v10 = [(WGWidgetListViewController *)self widgetListView];
      [v7 frame];
      [v10 scrollRectToVisible:1 animated:?];
    }

    if (v6)
    {
      v6[2](v6, v7 != 0);
    }
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)initWithWidgetDiscoveryController:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"discoveryController" object:? file:? lineNumber:? description:?];
}

- (uint64_t)_beginInsertion:(uint64_t)a1 ofListItem:(void *)a2 withOrderedIdentifiers:removingViewIfPossible:.cold.1(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v4 handleFailureInMethod:@"listItemVC" object:? file:? lineNumber:? description:?];

  return [a2 isViewLoaded];
}

- (uint64_t)_insert:(uint64_t)a1 listItem:(void *)a2 withOrderedIdentifiers:animated:.cold.1(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v4 handleFailureInMethod:@"listItemVC" object:? file:? lineNumber:? description:?];

  return [a2 isViewLoaded];
}

- (void)_identifierForCell:(void *)a1 .cold.1(void *a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 recursiveDescription];
  OUTLINED_FUNCTION_1_0();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

void __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = 134218240;
  v5 = v3;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_27425E000, log, OS_LOG_TYPE_DEBUG, "C2 completion %lu - retargeted: %{BOOL}d", &v4, 0x12u);
}

void __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_2_81_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_27425E000, a2, OS_LOG_TYPE_DEBUG, "CA completion %lu", &v3, 0xCu);
}

void __94__WGWidgetListViewController_resizeWidgetWrapperView_toSize_withTransitionContext_completion___block_invoke_82_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_27425E000, a2, OS_LOG_TYPE_DEBUG, "final completion %lu", &v3, 0xCu);
}

void __91__WGWidgetListViewController__updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_27425E000, a2, OS_LOG_TYPE_ERROR, "Encountered list item without a widget identifier: %{public}@", &v2, 0xCu);
}

void __91__WGWidgetListViewController__updateWidgetViewStateWithPreviouslyVisibleWidgetIdentifiers___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_27425E000, a2, OS_LOG_TYPE_ERROR, "Encountered widget short look view with no list item: %{public}@", &v2, 0xCu);
}

@end