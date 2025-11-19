@interface SKUIStorePageSectionsViewController
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (BOOL)collectionView:(id)a3 canScrollCellAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)performTestWithName:(id)a3 options:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (SKUICollectionViewPullToRefreshDelegate)pullToRefreshDelegate;
- (SKUIResourceLoader)resourceLoader;
- (SKUIStorePageSectionsDelegate)delegate;
- (SKUIStorePageSectionsViewController)initWithLayoutStyle:(int64_t)a3;
- (UICollectionView)collectionView;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 pinningContentInsetForItemAtIndexPath:(id)a5;
- (id)_childSectionsForMenuComponent:(id)a3 selectedIndex:(int64_t)a4;
- (id)_collectionViewSublayouts;
- (id)_createSectionsForExpandPageComponent:(id)a3 context:(id)a4 newSections:(id)a5 sectionCount:(int64_t)a6 sectionsByViewElement:(id)a7 updateStyle:(int64_t)a8;
- (id)_currentBackdropGroupName;
- (id)_defaultSectionForGridComponent:(id)a3;
- (id)_defaultSectionForSwooshComponent:(id)a3;
- (id)_expandContextForMenuComponent:(id)a3;
- (id)_impressionableViewElements;
- (id)_menuContextForMenuComponent:(id)a3;
- (id)_newSectionContext;
- (id)_newSectionsWithPageComponent:(id)a3;
- (id)_newSectionsWithPageComponents:(id)a3;
- (id)_newStorePageCollectionViewLayout;
- (id)_prepareLayoutForSections;
- (id)_splitForSectionIndex:(int64_t)a3;
- (id)_textLayoutCache;
- (id)_visibleMetricsImpressionsString;
- (id)backgroundColorForSection:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)defaultSectionForComponent:(id)a3;
- (id)indexPathsForGradientItemsInCollectionView:(id)a3 layout:(id)a4;
- (id)indexPathsForPinningItemsInCollectionView:(id)a3 layout:(id)a4;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (int64_t)collectionView:(id)a3 layout:(id)a4 pinningGroupForItemAtIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 layout:(id)a4 pinningStyleForItemAtIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 layout:(id)a4 pinningTransitionStyleForItemAtIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_applyColorScheme:(id)a3 toIndexBarControl:(id)a4;
- (void)_beginActiveImpressionsForImpressionableViewElements;
- (void)_deselectCellsForAppearance:(BOOL)a3;
- (void)_endAllPendingActiveImpression;
- (void)_endIgnoringSectionChanges;
- (void)_entityProviderDidInvalidateNotification:(id)a3;
- (void)_enumerateSectionContextsUsingBlock:(id)a3;
- (void)_enumerateVisibleSectionsUsingBlock:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_insertSectionsWithComponents:(id)a3 afterSection:(id)a4;
- (void)_invalidateIfLastKnownWidthChanged;
- (void)_invalidateLayoutWithNewSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)_longPressAction:(id)a3;
- (void)_pageSectionDidDismissOverlayController:(id)a3;
- (void)_registerForNotificationsForEntityProvider:(id)a3;
- (void)_reloadCollectionView;
- (void)_reloadRelevantEntityProviders;
- (void)_scrollFirstAppearanceSectionToView;
- (void)_setActiveProductPageOverlayController:(id)a3;
- (void)_setPageSize:(CGSize)a3;
- (void)_setRendersWithParallax:(BOOL)a3;
- (void)_setRendersWithPerspective:(BOOL)a3;
- (void)_setSelectedIndex:(int64_t)a3 forMenuSection:(id)a4;
- (void)_startRefresh:(id)a3;
- (void)_unregisterForNotificationsForEntityProvider:(id)a3;
- (void)_updateCollectionViewWithUpdates:(id)a3;
- (void)_updateSectionsAfterMenuChange;
- (void)_updateSectionsForIndex:(int64_t)a3 menuSection:(id)a4;
- (void)collectionView:(id)a3 didConfirmButtonElement:(id)a4 withClickInfo:(id)a5 forItemAtIndexPath:(id)a6;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndEditingItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 editorialView:(id)a4 didSelectLink:(id)a5;
- (void)collectionView:(id)a3 expandEditorialForLabelElement:(id)a4 indexPath:(id)a5;
- (void)collectionView:(id)a3 layout:(id)a4 willApplyLayoutAttributes:(id)a5;
- (void)collectionView:(id)a3 performDefaultActionForViewElement:(id)a4 indexPath:(id)a5;
- (void)collectionView:(id)a3 willBeginEditingItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)dismissOverlays;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)invalidateAndReload;
- (void)itemCollectionView:(id)a3 didConfirmItemOfferForCell:(id)a4;
- (void)itemCollectionView:(id)a3 didTapVideoForCollectionViewCell:(id)a4;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)loadView;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)productPageOverlayDidDismiss:(id)a3;
- (void)reloadSections:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActiveMetricsImpressionSession:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setIndexBarControl:(id)a3;
- (void)setMetricsController:(id)a3;
- (void)setPinningTransitionStyle:(int64_t)a3;
- (void)setSKUIStackedBar:(id)a3;
- (void)setSectionsWithPageComponents:(id)a3;
- (void)setSectionsWithSplitsDescription:(id)a3;
- (void)setUsePullToRefresh:(BOOL)a3;
- (void)showOverlayWithProductPage:(id)a3 metricsPageEvent:(id)a4;
- (void)skuiCollectionViewWillLayoutSubviews:(id)a3;
- (void)skui_viewWillAppear:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5;
@end

@implementation SKUIStorePageSectionsViewController

- (SKUIStorePageSectionsViewController)initWithLayoutStyle:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStorePageSectionsViewController initWithLayoutStyle:];
  }

  if (initWithLayoutStyle__onceToken != -1)
  {
    [SKUIStorePageSectionsViewController initWithLayoutStyle:];
  }

  v12.receiver = self;
  v12.super_class = SKUIStorePageSectionsViewController;
  v5 = [(SKUIStorePageSectionsViewController *)&v12 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_layoutStyle = a3;
    v5->_itemsChangedStateWhileDisappeared = 0;
    [(SKUIStorePageSectionsViewController *)v5 setRestorationClass:objc_opt_class()];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(SKUIStorePageSectionsViewController *)v6 setRestorationIdentifier:v8];

    v9 = +[SKUIItemStateCenter defaultCenter];
    [v9 addObserver:v6];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v6 selector:sel__contentSizeChangeNotification_ name:*MEMORY[0x277D76810] object:0];
  }

  return v6;
}

void __59__SKUIStorePageSectionsViewController_initWithLayoutStyle___block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  __orbSupported = [v0 _supportsForceTouch];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];
  [(SKUIStorePageSplitsDescription *)self->_splitsDescription enumerateSplitsUsingBlock:&__block_literal_global_11];
  v4 = +[SKUIItemStateCenter defaultCenter];
  [v4 removeObserver:self];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_entityProviderToRelevantSections;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SKUIStorePageSectionsViewController *)self _unregisterForNotificationsForEntityProvider:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(SKUICollectionView *)self->_collectionView setDataSource:0];
  [(SKUICollectionView *)self->_collectionView setDelegate:0];
  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0];
  if (self->_viewControllerPreviewing)
  {
    [(SKUIStorePageSectionsViewController *)self unregisterPreviewing:?];
    viewControllerPreviewing = self->_viewControllerPreviewing;
    self->_viewControllerPreviewing = 0;
  }

  v11.receiver = self;
  v11.super_class = SKUIStorePageSectionsViewController;
  [(SKUIViewController *)&v11 dealloc];
}

void __46__SKUIStorePageSectionsViewController_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sectionContext];
  [v2 _setParentViewController:0];
}

- (UICollectionView)collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v4 = [(SKUIStorePageSectionsViewController *)self _newStorePageCollectionViewLayout];
    v5 = [SKUICollectionView alloc];
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v7 = [(SKUICollectionView *)v5 initWithFrame:v4 collectionViewLayout:?];
    v8 = self->_collectionView;
    self->_collectionView = v7;

    [(SKUICollectionView *)self->_collectionView setSemanticContentAttribute:storeSemanticContentAttribute()];
    [(SKUICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UICollectionViewCell"];
    [(SKUICollectionView *)self->_collectionView setClipsToBounds:!self->_rendersWithPerspective];
    [(SKUICollectionView *)self->_collectionView setIndexBarControl:self->_indexBarControl];
    if (self->_refreshControl)
    {
      [(SKUICollectionView *)self->_collectionView setRefreshControl:?];
    }

    v9 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277D75348] systemBackgroundColor];
    }

    v12 = v11;

    [(SKUICollectionView *)self->_collectionView setBackgroundColor:v12];
    [(SKUICollectionView *)self->_collectionView setDataSource:self];
    [(SKUICollectionView *)self->_collectionView setDelegate:self];
    v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__longPressAction_];
    [(SKUICollectionView *)self->_collectionView addGestureRecognizer:v13];
    [v13 setCancelsTouchesInView:1];
    [v13 setDelaysTouchesBegan:0];
    v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    collectionViewTapGestureRecognizer = self->_collectionViewTapGestureRecognizer;
    self->_collectionViewTapGestureRecognizer = v14;

    [(SKUICollectionView *)self->_collectionView addGestureRecognizer:self->_collectionViewTapGestureRecognizer];
    [(UITapGestureRecognizer *)self->_collectionViewTapGestureRecognizer setEnabled:0];
    [(UITapGestureRecognizer *)self->_collectionViewTapGestureRecognizer setDelegate:self];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__SKUIStorePageSectionsViewController_collectionView__block_invoke;
    v17[3] = &unk_2781FA7D8;
    v17[4] = self;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v17];

    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (id)defaultSectionForComponent:(id)a3
{
  v4 = a3;
  v5 = 0;
  switch([v4 componentType])
  {
    case 1:
      v6 = SKUIAccountButtonsSection;
      goto LABEL_27;
    case 3:
      v11 = [v4 viewElement];

      if (v11)
      {
        v6 = SKUIRowViewElementPageSection;
      }

      else
      {
        v6 = SKUIRowSection;
      }

      goto LABEL_27;
    case 4:
      v6 = SKUIDividerPageSection;
      goto LABEL_27;
    case 5:
      v6 = SKUIEditorialPageSection;
      goto LABEL_27;
    case 6:
    case 13:
    case 18:
      v6 = SKUICarouselPageSection;
      goto LABEL_27;
    case 8:
      v10 = [(SKUIStorePageSectionsViewController *)self _defaultSectionForGridComponent:v4];
      goto LABEL_28;
    case 9:
      v5 = [v4 viewElement];

      if (v5)
      {
        goto LABEL_16;
      }

      break;
    case 10:
      v6 = SKUIMediaPageSection;
      goto LABEL_27;
    case 12:
      v6 = SKUIQuicklinksPageSection;
      goto LABEL_27;
    case 14:
      v6 = SKUISpacePageSection;
      goto LABEL_27;
    case 15:
      v10 = [(SKUIStorePageSectionsViewController *)self _defaultSectionForSwooshComponent:v4];
      goto LABEL_28;
    case 16:
      v6 = SKUIBrowseItemPageSection;
      goto LABEL_27;
    case 17:
      v6 = SKUIBrowseHeaderPageSection;
      goto LABEL_27;
    case 20:
      v6 = SKUIFacebookPageSection;
      goto LABEL_27;
    case 21:
      v6 = SKUIReviewListPageSection;
      goto LABEL_27;
    case 22:
      v7 = objc_opt_class();
      v8 = [v4 viewElement];
      v9 = [v8 isDynamicContainer];

      if (v9)
      {
        v7 = objc_opt_class();
      }

      v6 = v7;
      goto LABEL_27;
    case 23:
      v6 = SKUITracklistPageSection;
      goto LABEL_27;
    case 24:
LABEL_16:
      v6 = SKUIViewElementPageSection;
      goto LABEL_27;
    case 25:
      v6 = SKUISearchBarPageSection;
      goto LABEL_27;
    case 26:
      v6 = SKUIKeyValueInfoListPageSection;
      goto LABEL_27;
    case 27:
      v6 = SKUIVerticalInfoListPageSection;
LABEL_27:
      v10 = [[v6 alloc] initWithPageComponent:v4];
LABEL_28:
      v5 = v10;
      break;
    default:
      break;
  }

  return v5;
}

- (void)dismissOverlays
{
  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  [(SKUIProductPageOverlayController *)self->_overlayController dismiss];
  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (void)invalidateAndReload
{
  v28 = *MEMORY[0x277D85DE8];
  [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0];
  textLayoutCache = self->_textLayoutCache;
  self->_textLayoutCache = 0;

  v4 = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v22 + 1) + 8 * i) invalidateLayout];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v9 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  [v9 invalidateLayout];

  v10 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_sections;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        v17 = [v16 context];
        [v17 _setTextLayoutCache:v10];
        [v16 willAppearInContext:v17];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [v10 commitLayoutRequests];
  [(SKUICollectionView *)self->_collectionView reloadData];
}

- (void)reloadSections:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SKUIStorePageSectionsViewController_reloadSections___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithoutAnimation:v7];
}

- (SKUIResourceLoader)resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SKUIResourceLoader alloc];
    v5 = [(SKUIViewController *)self clientContext];
    v6 = [(SKUIResourceLoader *)v4 initWithClientContext:v5];

    v7 = SKUIResourceLoaderGetNameForObject(self);
    [(SKUIResourceLoader *)v6 setName:v7];

    [(SKUIStorePageSectionsViewController *)self setResourceLoader:v6];
    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (void)setColorScheme:(id)a3
{
  if (self->_colorScheme != a3)
  {
    v4 = [a3 copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__SKUIStorePageSectionsViewController_setColorScheme___block_invoke;
    v11[3] = &unk_2781FA7D8;
    v11[4] = self;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v11];
    v6 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    }

    v9 = v8;

    [(SKUICollectionView *)self->_collectionView setBackgroundColor:v9];
    if ([(SKUIStorePageSectionsViewController *)self isViewLoaded])
    {
      v10 = [(SKUIStorePageSectionsViewController *)self view];
      [v10 setBackgroundColor:v9];
    }
  }
}

- (void)setDelegate:(id)a3
{
  v7 = a3;
  v4 = objc_storeWeak(&self->_delegate, v7);
  v5 = objc_opt_respondsToSelector();

  self->_delegateWantsDidScroll = v5 & 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_delegateWantsWillScrollToOffsetVisibleRange = objc_opt_respondsToSelector() & 1;
}

- (void)setIndexBarControl:(id)a3
{
  v5 = a3;
  if (self->_indexBarControl != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_indexBarControl, a3);
    [(SKUICollectionView *)self->_collectionView setIndexBarControl:self->_indexBarControl];
    v5 = v6;
  }
}

- (void)setActiveMetricsImpressionSession:(id)a3
{
  v5 = a3;
  if (self->_activeMetricsImpressionSession != v5)
  {
    objc_storeStrong(&self->_activeMetricsImpressionSession, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__SKUIStorePageSectionsViewController_setActiveMetricsImpressionSession___block_invoke;
    v6[3] = &unk_2781FA7D8;
    v7 = v5;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v6];
  }
}

- (void)setPinningTransitionStyle:(int64_t)a3
{
  if (self->_pinningTransitionStyle != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_pinningTransitionStyle = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SKUIStorePageSectionsViewController_setPinningTransitionStyle___block_invoke;
    v7[3] = &unk_2781FA7D8;
    v7[4] = self;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v7];
    v6 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    [v6 invalidateLayout];
  }
}

- (void)setMetricsController:(id)a3
{
  v5 = a3;
  if (self->_metricsController != v5)
  {
    objc_storeStrong(&self->_metricsController, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SKUIStorePageSectionsViewController_setMetricsController___block_invoke;
    v6[3] = &unk_2781FA7D8;
    v7 = v5;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v6];
  }
}

- (void)setSectionsWithPageComponents:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = objc_alloc_init(SKUIStorePageSplitsDescription);
    v5 = objc_alloc_init(SKUIStorePageSplit);
    [(SKUIStorePageSplit *)v5 setPageComponents:v6];
    [(SKUIStorePageSplitsDescription *)v4 setTopSplit:v5];
    [(SKUIStorePageSectionsViewController *)self setSectionsWithSplitsDescription:v4];
  }

  else
  {
    [(SKUIStorePageSectionsViewController *)self setSectionsWithSplitsDescription:0];
  }
}

- (void)setSectionsWithSplitsDescription:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_ignoreSectionsChangeCount < 1)
  {
    if (self->_splitsDescription != v5)
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__11;
      v55 = __Block_byref_object_dispose__11;
      v56 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v31 = 1320;
      v7 = self->_sections;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (v8)
      {
        v9 = *v48;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v48 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v47 + 1) + 8 * i);
            v12 = [v11 pageComponent];
            v13 = [v12 viewElement];
            v14 = [v13 persistenceKey];

            if (v14)
            {
              [v52[5] setObject:v11 forKey:v14];
            }
          }

          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v8);
      }

      v15 = [(SKUIStorePageSplitsDescription *)self->_splitsDescription numberOfSplits];
      menuSectionContexts = self->_menuSectionContexts;
      self->_menuSectionContexts = 0;

      expandSectionContexts = self->_expandSectionContexts;
      self->_expandSectionContexts = 0;

      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = *(&self->super.super.super.super.isa + v31);
      *(&self->super.super.super.super.isa + v31) = v18;

      v20 = [(SKUIStorePageSplitsDescription *)v6 copy];
      splitsDescription = self->_splitsDescription;
      self->_splitsDescription = v20;

      v22 = [(SKUIStorePageSplitsDescription *)self->_splitsDescription numberOfSplits];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      if (self->_collectionView && self->_didInitialReload && (v23 = v22, [v52[5] count]) && v15 > 1 != v23 < 2)
      {
        v44[3] = 1;
      }

      else
      {
        [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0, v31];
        textLayoutCache = self->_textLayoutCache;
        self->_textLayoutCache = 0;
      }

      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__11;
      v41 = __Block_byref_object_dispose__11;
      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __72__SKUIStorePageSectionsViewController_setSectionsWithSplitsDescription___block_invoke;
      v36[3] = &unk_2781FA828;
      v36[4] = self;
      v36[5] = &v37;
      v36[6] = &v51;
      v36[7] = &v43;
      [(SKUIStorePageSectionsViewController *)self _updateCollectionViewWithUpdates:v36];
      if (!v44[3])
      {
        goto LABEL_31;
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v27 = v38[5];
      v28 = [v27 countByEnumeratingWithState:&v32 objects:v57 count:16];
      if (v28)
      {
        v29 = *v33;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v32 + 1) + 8 * j) prefetchResourcesWithReason:{-1, v31}];
          }

          v28 = [v27 countByEnumeratingWithState:&v32 objects:v57 count:16];
        }

        while (v28);
      }

      if (v44[3] != 3)
      {
LABEL_31:
        [(SKUIStorePageSectionsViewController *)self _reloadRelevantEntityProviders];
      }

      _Block_object_dispose(&v37, 8);

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v51, 8);
    }
  }

  else if (v5)
  {
    if (self->_deferredSplitsDescription != v5)
    {
      objc_storeStrong(&self->_deferredSplitsDescription, a3);
    }
  }

  else
  {
    v24 = [MEMORY[0x277CBEB68] null];
    deferredSplitsDescription = self->_deferredSplitsDescription;
    self->_deferredSplitsDescription = v24;
  }
}

uint64_t __72__SKUIStorePageSectionsViewController_setSectionsWithSplitsDescription___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v2 = [*(a1 + 32) _newSectionContext];
  [v2 activePageWidth];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 1328);
  v21[1] = 3221225472;
  v21[0] = MEMORY[0x277D85DD0];
  v21[2] = __72__SKUIStorePageSectionsViewController_setSectionsWithSplitsDescription___block_invoke_2;
  v21[3] = &unk_2781FA800;
  v22 = v3;
  v23 = v4;
  v24 = &v31;
  v25 = &v35;
  v26 = &v27;
  [v5 sizeSplitsToFitWidth:v21 usingBlock:?];
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && ![*(*(*(a1 + 48) + 8) + 40) count])
  {
    v6 = v36[3];
    if (v32[3] + v6 == v28[3])
    {
      v7 = v6 <= 0;
      v8 = 2;
      if (v7)
      {
        v8 = 3;
      }

      *(*(*(a1 + 56) + 8) + 24) = v8;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v39 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:{*(*(&v17 + 1) + 8 * v12), v17}];
        v14 = [v13 context];
        [v13 willHideInContext:v14];

        [v13 _setContext:0];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v39 count:16];
    }

    while (v10);
  }

  v15 = *(*(*(a1 + 56) + 8) + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  return v15;
}

void __72__SKUIStorePageSectionsViewController_setSectionsWithSplitsDescription___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) _newSectionContext];
  [v6 _setActivePageWidth:a3];
  [v5 setSectionContext:v6];
  v37 = v5;
  [v5 pageComponents];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v7 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v48;
    v38 = *v48;
    while (1)
    {
      v11 = 0;
      v39 = v8;
      do
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * v11);
        v13 = [v12 viewElement];
        v14 = [v13 persistenceKey];

        if ([v12 componentType] == 19)
        {
          v15 = [*(a1 + 32) _createSectionsForExpandPageComponent:v12 context:v6 newSections:*(*(*(a1 + 40) + 8) + 40) sectionCount:v9 sectionsByViewElement:*(*(*(a1 + 48) + 8) + 40) updateStyle:*(*(*(a1 + 56) + 8) + 24)];
          v16 = [v15 objectAtIndex:3];
          v17 = *(*(a1 + 40) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          v19 = [v15 objectAtIndex:4];
          v9 = [v19 integerValue];

          v20 = [v15 objectAtIndex:1];
          *(*(*(a1 + 64) + 8) + 24) += [v20 integerValue];

          v21 = [v15 objectAtIndex:0];
          *(*(*(a1 + 72) + 8) + 24) += [v21 integerValue];

          v22 = [v15 objectAtIndex:2];
          v23 = *(*(a1 + 48) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          goto LABEL_25;
        }

        v42 = v14;
        if (v14)
        {
          v25 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:v14];
          if (v25)
          {
            v15 = v25;
            v26 = [*(*(a1 + 32) + 1320) count];
            [v15 setBottomSection:0];
            [v15 setSectionIndex:v26];
            [v15 setTopSection:v9 == 0];
            v27 = [v15 updateWithContext:v6 pageComponent:v12];
            v28 = a1 + 72;
            if (v27 == 1)
            {
              goto LABEL_13;
            }

            if (v27 == 2)
            {
              v28 = a1 + 64;
LABEL_13:
              ++*(*(*v28 + 8) + 24);
            }

            [*(*(a1 + 32) + 1320) addObject:v15];
            [*(*(*(a1 + 48) + 8) + 40) removeObjectForKey:v14];
            ++v9;
            goto LABEL_25;
          }
        }

        v41 = v11;
        v29 = [*(a1 + 32) _newSectionsWithPageComponent:v12];
        v30 = [*(*(a1 + 32) + 1320) count];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v15 = v29;
        v31 = [v15 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v44;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v44 != v33)
              {
                objc_enumerationMutation(v15);
              }

              v35 = *(*(&v43 + 1) + 8 * i);
              [v35 setBottomSection:0];
              [v35 _setContext:v6];
              [v35 setSectionIndex:v30];
              [v35 setTopSection:v9 == 0];
              if (*(*(*(a1 + 56) + 8) + 24) == 1)
              {
                [v35 willAppearInContext:v6];
              }

              [*(*(*(a1 + 40) + 8) + 40) addObject:v35];
              [*(*(a1 + 32) + 1320) addObject:v35];
              ++v9;
              ++v30;
            }

            v32 = [v15 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v32);
        }

        v10 = v38;
        v8 = v39;
        v11 = v41;
        v14 = v42;
LABEL_25:

        ++v11;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (!v8)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = 0;
LABEL_29:
  v36 = [*(*(a1 + 32) + 1320) lastObject];
  [v36 setBottomSection:1];
  [v37 setNumberOfPageSections:v9];
  *(*(*(a1 + 80) + 8) + 24) += v9;
}

- (void)setSKUIStackedBar:(id)a3
{
  v5 = a3;
  stackedBar = self->_stackedBar;
  if (stackedBar != v5)
  {
    v7 = v5;
    [(SKUIStackedBar *)stackedBar removeFromSuperview];
    objc_storeStrong(&self->_stackedBar, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](stackedBar, v5);
}

- (void)showOverlayWithProductPage:(id)a3 metricsPageEvent:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_overlayController)
  {
    [(SKUIStorePageSectionsViewController *)self dismissOverlays];
  }

  v7 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:self];
  overlayController = self->_overlayController;
  self->_overlayController = v7;

  v9 = self->_overlayController;
  v10 = [(SKUIViewController *)self clientContext];
  [(SKUIProductPageOverlayController *)v9 setClientContext:v10];

  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:self];
  [(SKUIProductPageOverlayController *)self->_overlayController showWithInitialProductPage:v11 metricsPageEvent:v6];
  [(SKUIStorePageSectionsViewController *)self _setActiveProductPageOverlayController:self->_overlayController];
}

- (void)setUsePullToRefresh:(BOOL)a3
{
  refreshControl = self->_refreshControl;
  if (a3)
  {
    if (!refreshControl)
    {
      v5 = objc_opt_new();
      v6 = self->_refreshControl;
      self->_refreshControl = v5;

      [(UIRefreshControl *)self->_refreshControl addTarget:self action:sel__startRefresh_ forControlEvents:4096];
      collectionView = self->_collectionView;
      if (collectionView)
      {
        v8 = self->_refreshControl;

        [(SKUICollectionView *)collectionView setRefreshControl:v8];
      }

      return;
    }
  }

  else if (!refreshControl)
  {
    return;
  }

  if ([(UIRefreshControl *)refreshControl isRefreshing])
  {
    [(UIRefreshControl *)self->_refreshControl endRefreshing];
  }

  [(UIRefreshControl *)self->_refreshControl removeFromSuperview];
  v9 = self->_refreshControl;
  self->_refreshControl = 0;
}

- (void)_startRefresh:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pullToRefreshDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_pullToRefreshDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_pullToRefreshDelegate);
      [v8 refresh:self->_collectionView refreshControl:self->_refreshControl];
    }
  }
}

- (void)_longPressAction:(id)a3
{
  v9 = a3;
  v4 = [v9 state] == 1;
  v5 = v9;
  if (v4)
  {
    [v9 locationInView:self->_collectionView];
    v6 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
    v7 = v6;
    if (v6)
    {
      v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
      [v8 collectionViewDidLongPressItemAtIndexPath:v7];
    }

    v5 = v9;
  }
}

- (void)skui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIStorePageSectionsViewController *)self _deselectCellsForAppearance:?];
  v5.receiver = self;
  v5.super_class = SKUIStorePageSectionsViewController;
  [(SKUIViewController *)&v5 skui_viewWillAppear:v3];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overlayURLs"];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    initialOverlayURLs = self->_initialOverlayURLs;
    self->_initialOverlayURLs = v13;
  }

  v15.receiver = self;
  v15.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v15 decodeRestorableStateWithCoder:v4];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeOverlayController);
  v6 = [WeakRetained URLs];

  if ([v6 count])
  {
    [v4 encodeObject:v6 forKey:@"overlayURLs"];
  }

  v7.receiver = self;
  v7.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v7 encodeRestorableStateWithCoder:v4];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v19 = [v3 initWithFrame:?];

  [(SKUIStorePageSectionsViewController *)self setView:v19];
  v5 = [(SKUIStorePageSectionsViewController *)self collectionView];
  [v5 setAutoresizingMask:18];
  [v19 bounds];
  [v5 setFrame:?];
  [v19 addSubview:v5];
  v6 = [v5 backgroundColor];
  [v19 setBackgroundColor:v6];

  if (self->_stackedBar)
  {
    [v19 bounds];
    v8 = v7;
    v10 = v9;
    v11 = 0.0;
    if ([(SKUIStackedBar *)self->_stackedBar splitViewStyle])
    {
      v12 = [(SKUIStorePageSectionsViewController *)self navigationController];
      v13 = [v12 navigationBar];
      [v13 frame];
      Height = CGRectGetHeight(v21);

      v15 = [MEMORY[0x277D75128] sharedApplication];
      [v15 statusBarFrame];
      v16 = CGRectGetHeight(v22);

      v11 = Height + v16;
    }

    [(SKUIStackedBar *)self->_stackedBar setAutoresizingMask:2];
    [(SKUIStackedBar *)self->_stackedBar setFrame:v8, v11, v10, 0.0];
    [v19 addSubview:self->_stackedBar];
  }

  if (__orbSupported == 1)
  {
    v17 = [(SKUIStorePageSectionsViewController *)self registerForPreviewingWithDelegate:self sourceView:v5];
    viewControllerPreviewing = self->_viewControllerPreviewing;
    self->_viewControllerPreviewing = v17;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  initialOverlayURLs = self->_initialOverlayURLs;
  if (initialOverlayURLs)
  {
    if (!self->_overlayController)
    {
      v6 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:self];
      overlayController = self->_overlayController;
      self->_overlayController = v6;

      v8 = self->_overlayController;
      v9 = [(SKUIViewController *)self clientContext];
      [(SKUIProductPageOverlayController *)v8 setClientContext:v9];

      [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:self];
      [(SKUIProductPageOverlayController *)self->_overlayController showWithInitialURLs:self->_initialOverlayURLs];
      [(SKUIStorePageSectionsViewController *)self _setActiveProductPageOverlayController:self->_overlayController];
      initialOverlayURLs = self->_initialOverlayURLs;
    }

    self->_initialOverlayURLs = 0;
  }

  [(SKUICollectionView *)self->_collectionView setClipsToBounds:!self->_rendersWithPerspective];
  [(SKUIResourceLoader *)self->_resourceLoader enterForeground];
  v10.receiver = self;
  v10.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v10 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  [(SKUIStorePageSectionsViewController *)self _invalidateIfLastKnownWidthChanged];
  v5 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  v6 = [(SKUIStorePageSectionsViewController *)self _currentBackdropGroupName];
  [v5 setBackdropGroupName:v6];

  [(SKUIStorePageSectionsViewController *)self _deselectCellsForAppearance:v3];
  [(SKUIStorePageSectionsViewController *)self _beginActiveImpressionsForImpressionableViewElements];
  if (self->_itemsChangedStateWhileDisappeared)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_sections;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) requestLayoutWithReloadReason:2];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v12 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [v12 commitLayoutRequests];

    self->_itemsChangedStateWhileDisappeared = 0;
  }

  v13.receiver = self;
  v13.super_class = SKUIStorePageSectionsViewController;
  [(SKUIViewController *)&v13 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SKUIStorePageSectionsViewController *)self _invalidateIfLastKnownWidthChanged];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(SKUIStorePageSectionsViewController *)self view];
  [v6 bounds];
  *&v8 = v7;
  v9 = [v5 numberWithFloat:v8];
  lastKnownWidth = self->_lastKnownWidth;
  self->_lastKnownWidth = v9;

  [(SKUICollectionView *)self->_collectionView setClipsToBounds:1];
  [(SKUIStorePageSectionsViewController *)self _endAllPendingActiveImpression];
  v11.receiver = self;
  v11.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v11 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v4 viewDidDisappear:a3];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [(SKUIStorePageSectionsViewController *)self view];
  [v9 bounds];
  *&v11 = v10;
  v12 = [v7 numberWithFloat:v11];
  lastKnownWidth = self->_lastKnownWidth;
  self->_lastKnownWidth = v12;

  v14.receiver = self;
  v14.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v14 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = SKUIStorePageSectionsViewController;
  v4 = a3;
  [(SKUIStorePageSectionsViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(SKUIStorePageSectionsViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [v9 indexPathsForPinningItems];
      if ([v10 count])
      {
        v11 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
        [v11 setInvalidateFlowLayoutAttributes:0];
        [v11 setInvalidateFlowLayoutDelegateMetrics:0];
        [v11 setInvalidateItemPinningLayoutInformation:0];
        [v11 setInvalidatePinnedBackdropViewStyle:1];
        [v11 invalidateDecorationElementsOfKind:0x28280D8E8 atIndexPaths:v10];
        [v9 invalidateLayoutWithContext:v11];
      }
    }
  }
}

- (void)collectionView:(id)a3 editorialView:(id)a4 didSelectLink:(id)a5
{
  v25 = a5;
  v8 = a4;
  v9 = a3;
  [v8 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v8 superview];

  [v9 convertRect:v18 fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  v23 = [v9 indexPathForItemAtPoint:{v20, v22}];

  if (v23)
  {
    v24 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v23 section]);
    [v24 showPageWithLink:v25];
  }
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v20 = [*(*(a1 + 32) + 1080) indexPathsForVisibleItems];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 40);
  v21 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v21)
  {
    v19 = *v34;
    do
    {
      v2 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v2;
        v3 = *(*(&v33 + 1) + 8 * v2);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v4 = v20;
        v5 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v30;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v30 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v29 + 1) + 8 * i);
              v10 = [v9 section];
              v11 = [*(*(a1 + 32) + 1320) objectAtIndex:v10];
              if ([v11 updateCellWithIndexPath:v9 itemState:v3 animated:0])
              {
                [v24 addObject:v9];
                [v23 addIndex:v10];
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v6);
        }

        v2 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v21);
  }

  if ([v23 count])
  {
    v12 = [*(a1 + 32) view];
    v13 = [v12 window];

    if (!v13)
    {
      *(*(a1 + 32) + 1368) = 1;
    }

    v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke_2;
    v27[3] = &unk_2781FA850;
    v27[4] = *(a1 + 32);
    v15 = v14;
    v28 = v15;
    [v23 enumerateIndexesUsingBlock:v27];
    v16 = [*(a1 + 32) _textLayoutCache];
    [v16 commitLayoutRequests];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke_3;
    v25[3] = &unk_2781FA878;
    v25[4] = *(a1 + 32);
    v26 = v15;
    v17 = v15;
    [v24 enumerateObjectsUsingBlock:v25];
  }
}

void __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 1320) objectAtIndex:a2];
  if ([v4 requestLayoutWithReloadReason:2])
  {
    [*(a1 + 40) addIndex:a2];
  }
}

void __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 section];
  v4 = [*(*(a1 + 32) + 1320) objectAtIndex:v3];
  if ([*(a1 + 40) containsIndex:v3])
  {
    [v4 reloadVisibleCellsWithReason:2];
    [*(a1 + 40) removeIndex:v3];
  }

  else
  {
    [v4 reloadCellWithIndexPath:v5 reason:2];
  }
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__SKUIStorePageSectionsViewController_layoutCacheDidFinishBatch___block_invoke;
  v3[3] = &unk_2781F80F0;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __65__SKUIStorePageSectionsViewController_layoutCacheDidFinishBatch___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 1320);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidateCachedLayoutInformation];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 1080) reloadData];
}

- (void)productPageOverlayDidDismiss:(id)a3
{
  if (self->_overlayController == a3)
  {
    [(SKUIStorePageSectionsViewController *)self _setActiveProductPageOverlayController:0];
    [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
    overlayController = self->_overlayController;
    self->_overlayController = 0;

    if (![(NSMutableArray *)self->_sections count])
    {
      v6 = SKUIViewControllerGetAncestorTabBarController(self);
      v5 = [v6 transientViewController];
      if (v5 && SKUIViewControllerIsDescendent(self, v5))
      {
        [v6 setTransientViewController:0 animated:0];
      }
    }
  }
}

- (id)backgroundColorForSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_sections count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_sections objectAtIndex:a3];
    v6 = [v5 backgroundColorForSection];
  }

  return v6;
}

- (BOOL)collectionView:(id)a3 canScrollCellAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  indexPathOfEditedCell = self->_indexPathOfEditedCell;
  if (!indexPathOfEditedCell || (v10 = [v7 compare:?], indexPathOfEditedCell = self->_indexPathOfEditedCell, !v10))
  {
    if ([(NSIndexPath *)indexPathOfEditedCell compare:v8]== NSOrderedSame)
    {
      goto LABEL_6;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v11 = [(SKUICollectionView *)self->_collectionView cellForItemAtIndexPath:indexPathOfEditedCell];
  if (([v11 isDeleteButtonHidden] & 1) == 0)
  {
    if (([v11 isScrollingCellToHideActionButton] & 1) == 0)
    {
      [v11 hideDeleteButton];
    }

    goto LABEL_10;
  }

  v12 = self->_indexPathOfEditedCell;
  self->_indexPathOfEditedCell = 0;

  [(UITapGestureRecognizer *)self->_collectionViewTapGestureRecognizer setEnabled:0];
LABEL_6:
  v13 = 1;
LABEL_11:

  return v13;
}

- (void)collectionView:(id)a3 didEndEditingItemAtIndexPath:(id)a4
{
  indexPathOfEditedCell = self->_indexPathOfEditedCell;
  self->_indexPathOfEditedCell = 0;

  collectionViewTapGestureRecognizer = self->_collectionViewTapGestureRecognizer;

  [(UITapGestureRecognizer *)collectionViewTapGestureRecognizer setEnabled:0];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 pinningContentInsetForItemAtIndexPath:(id)a5
{
  sections = self->_sections;
  v6 = a5;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  [v7 pinningContentInsetForItemAtIndexPath:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (int64_t)collectionView:(id)a3 layout:(id)a4 pinningStyleForItemAtIndexPath:(id)a5
{
  sections = self->_sections;
  v6 = a5;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v8 = [v7 pinningStyleForItemAtIndexPath:v6];

  return v8;
}

- (int64_t)collectionView:(id)a3 layout:(id)a4 pinningGroupForItemAtIndexPath:(id)a5
{
  sections = self->_sections;
  v6 = a5;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v8 = [v7 pinningGroupForItemAtIndexPath:v6];

  return v8;
}

- (int64_t)collectionView:(id)a3 layout:(id)a4 pinningTransitionStyleForItemAtIndexPath:(id)a5
{
  sections = self->_sections;
  v6 = a5;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v8 = [v7 pinningTransitionStyleForItemAtIndexPath:v6];

  return v8;
}

- (void)collectionView:(id)a3 layout:(id)a4 willApplyLayoutAttributes:(id)a5
{
  v8 = a5;
  if (![v8 representedElementCategory])
  {
    v6 = [v8 indexPath];
    v7 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
    [v7 collectionViewWillApplyLayoutAttributes:v8];
  }
}

- (void)collectionView:(id)a3 willBeginEditingItemAtIndexPath:(id)a4
{
  v10 = a4;
  objc_storeStrong(&self->_indexPathOfEditedCell, a4);
  v6 = [(SKUICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v7 = v6;
  if (v6 && [v6 count])
  {
    collectionView = self->_collectionView;
    v9 = [v7 firstObject];
    [(SKUICollectionView *)collectionView deselectItemAtIndexPath:v9 animated:0];
  }

  [(UITapGestureRecognizer *)self->_collectionViewTapGestureRecognizer setEnabled:1];
}

- (id)indexPathsForPinningItemsInCollectionView:(id)a3 layout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_215F8ACD7;
  v8 = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  if ([v8 count] > 1)
  {
    splitsDescription = self->_splitsDescription;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__SKUIStorePageSectionsViewController_indexPathsForPinningItemsInCollectionView_layout___block_invoke;
    v17[3] = &unk_2781FA8A0;
    v18 = v7;
    v19 = v8;
    v20 = &v21;
    [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:v17];

    v10 = v22;
    v9 = v22[5];
  }

  else
  {
    v9 = [(NSMutableArray *)self->_sections count];
    v10 = v22;
    v22[5] = v9;
  }

  v12 = v10[4];
  if (v12 >= v9 + v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->_sections objectAtIndex:v12];
      v15 = [v14 indexPathsForPinningItems];
      if ([v15 count])
      {
        if (!v13)
        {
          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
        }

        [v13 addObjectsFromArray:v15];
      }

      ++v12;
    }

    while (v12 < v22[5] + v22[4]);
  }

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __88__SKUIStorePageSectionsViewController_indexPathsForPinningItemsInCollectionView_layout___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 numberOfPageSections];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) objectAtIndex:a3];

  v10 = *(*(a1 + 48) + 8);
  if (v8 == v9)
  {
    *(v10 + 40) = v7;
    *a4 = 1;
  }

  else
  {
    *(v10 + 32) += v7;
  }
}

- (id)indexPathsForGradientItemsInCollectionView:(id)a3 layout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_215F8ACD7;
  v8 = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  if ([v8 count] > 1)
  {
    splitsDescription = self->_splitsDescription;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SKUIStorePageSectionsViewController_indexPathsForGradientItemsInCollectionView_layout___block_invoke;
    v17[3] = &unk_2781FA8A0;
    v18 = v7;
    v19 = v8;
    v20 = &v21;
    [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:v17];

    v10 = v22;
    v9 = v22[5];
  }

  else
  {
    v9 = [(NSMutableArray *)self->_sections count];
    v10 = v22;
    v22[5] = v9;
  }

  v12 = v10[4];
  if (v12 >= v9 + v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->_sections objectAtIndex:v12];
      v15 = [v14 indexPathsForBackgroundItems];
      if ([v15 count])
      {
        if (!v13)
        {
          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
        }

        [v13 addObjectsFromArray:v15];
      }

      ++v12;
    }

    while (v12 < v22[5] + v22[4]);
  }

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __89__SKUIStorePageSectionsViewController_indexPathsForGradientItemsInCollectionView_layout___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 numberOfPageSections];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) objectAtIndex:a3];

  v10 = *(*(a1 + 48) + 8);
  if (v8 == v9)
  {
    *(v10 + 40) = v7;
    *a4 = 1;
  }

  else
  {
    *(v10 + 32) += v7;
  }
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(NSMutableArray *)self->_sections objectAtIndex:a5, a4];
  if ([(NSMutableArray *)self->_sections count]<= (a5 + 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_sections objectAtIndex:?];
  }

  v9 = [v7 pageComponent];
  v10 = [v9 viewElement];
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v12 = [v8 pageComponent];
    v13 = [v12 viewElement];
    v14 = objc_opt_class();
    v15 = objc_opt_class();

    if (v14 == v15)
    {
      v21 = 5.0;
      v17 = 0.0;
      v19 = 0.0;
      v23 = 0.0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  [v7 sectionContentInset];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
LABEL_8:

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [-[NSMutableArray objectAtIndex:](self->_sections objectAtIndex:{objc_msgSend(a5, "section", a3, a4)), "cellSizeForIndexPath:", a5}];
  v8 = v7;
  if (Width < 0.00000011920929)
  {
    [a3 bounds];
    Width = CGRectGetWidth(v11);
  }

  v9 = 1.0;
  if (v8 >= 0.00000011920929)
  {
    v9 = v8;
  }

  result.height = v9;
  result.width = Width;
  return result;
}

- (BOOL)performTestWithName:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasPrefix:@"Scroll"])
  {
    v8 = [MEMORY[0x277CBEB88] mainRunLoop];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v9 dateByAddingTimeInterval:4.0];
    [v8 runUntilDate:v10];

    v11 = [v7 objectForKeyedSubscript:@"iterations"];
    v12 = [v7 objectForKeyedSubscript:@"offset"];
    collectionView = self->_collectionView;
    v14 = [v11 intValue];
    v15 = [v12 intValue];
    [(SKUICollectionView *)self->_collectionView contentSize];
    [(SKUICollectionView *)collectionView _performScrollTest:v6 iterations:v14 delta:v15 length:v16];
  }

  return 1;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v7 section]);
  v9 = [v8 cellForIndexPath:v7];
  v10 = [(SKUIStorePageSectionsViewController *)self metricsController];
  v11 = [v10 activeImpressionsSession];

  if (v11)
  {
    [v8 addImpressionsForIndexPath:v7 toSession:v11];
  }

  if (!v9)
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:v7];
  }

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfCells];

  return v5;
}

- (void)collectionView:(id)a3 didConfirmButtonElement:(id)a4 withClickInfo:(id)a5 forItemAtIndexPath:(id)a6
{
  sections = self->_sections;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v9 section]);
  [v12 collectionViewDidConfirmButtonElement:v11 withClickInfo:v10 forItemAtIndexPath:v9];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [v7 section];
  if (v8 < [(NSMutableArray *)self->_sections count])
  {
    v9 = [(NSMutableArray *)self->_sections objectAtIndex:v8];
    [v9 collectionViewWillDisplayCellForItemAtIndexPath:v7];
    [v9 registerContextActionsForCell:v10 indexPath:v7 viewController:self];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [v7 section];
  if (v8 < [(NSMutableArray *)self->_sections count])
  {
    v9 = [(NSMutableArray *)self->_sections objectAtIndex:v8];
    [v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v7];
    [v9 unregisterContextActionsForCell:v10 indexPath:v7 viewController:self];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  sections = self->_sections;
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v5 section]);
  [v6 collectionViewDidSelectItemAtIndexPath:v5];
}

- (void)collectionView:(id)a3 expandEditorialForLabelElement:(id)a4 indexPath:(id)a5
{
  sections = self->_sections;
  v7 = a5;
  v8 = a4;
  v9 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v7 section]);
  [v9 expandEditorialForLabelElement:v8 indexPath:v7];
}

- (void)collectionView:(id)a3 performDefaultActionForViewElement:(id)a4 indexPath:(id)a5
{
  sections = self->_sections;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [a5 section]);
  [v8 performDefaultActionForViewElement:v7];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  sections = self->_sections;
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v5 section]);
  v7 = [v6 collectionViewShouldHighlightItemAtIndexPath:v5];

  return v7;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  sections = self->_sections;
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v5 section]);
  v7 = [v6 collectionViewShouldSelectItemAtIndexPath:v5];

  return v7;
}

- (void)itemCollectionView:(id)a3 didConfirmItemOfferForCell:(id)a4
{
  v5 = [a3 indexPathForCell:a4];
  if (v5)
  {
    v7 = v5;
    v6 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v5 section]);
    [v6 collectionViewDidConfirmItemOfferAtIndexPath:v7];

    v5 = v7;
  }
}

- (void)itemCollectionView:(id)a3 didTapVideoForCollectionViewCell:(id)a4
{
  v5 = [a3 indexPathForCell:a4];
  if (v5)
  {
    v7 = v5;
    v6 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v5 section]);
    [v6 collectionViewDidTapVideoAtIndexPath:v7];

    v5 = v7;
  }
}

- (void)skuiCollectionViewWillLayoutSubviews:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSectionsViewController *)self view];
  [v5 bounds];
  [(SKUIStorePageSectionsViewController *)self _setPageSize:v6, v7];

  lastInterfaceOrientation = self->_lastInterfaceOrientation;
  v9 = [MEMORY[0x277D75128] sharedApplication];
  if (lastInterfaceOrientation == [v9 statusBarOrientation])
  {
    didInitialReload = self->_didInitialReload;

    if (didInitialReload)
    {
      v11 = [MEMORY[0x277D75128] sharedApplication];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __76__SKUIStorePageSectionsViewController_skuiCollectionViewWillLayoutSubviews___block_invoke;
      v62[3] = &unk_2781F80F0;
      v62[4] = self;
      [v11 _performBlockAfterCATransactionCommits:v62];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x277D75128] sharedApplication];
  self->_lastInterfaceOrientation = [v12 statusBarOrientation];

  self->_didInitialReload = 1;
  v13 = MEMORY[0x277CCABB0];
  v14 = [(SKUIStorePageSectionsViewController *)self view];
  [v14 bounds];
  *&v16 = v15;
  v17 = [v13 numberWithFloat:v16];
  lastKnownWidth = self->_lastKnownWidth;
  self->_lastKnownWidth = v17;

  [(SKUICollectionView *)self->_collectionView reloadData];
  [(SKUIStorePageSectionsViewController *)self _reloadCollectionView];
  [(SKUIStorePageSectionsViewController *)self _scrollFirstAppearanceSectionToView];
LABEL_6:
  if (skuiCollectionViewWillLayoutSubviews__sLayoutRespondsToFrame == 255)
  {
    skuiCollectionViewWillLayoutSubviews__sLayoutRespondsToFrame = [MEMORY[0x277D75300] instancesRespondToSelector:sel__frame];
  }

  v19 = [(SKUIStorePageSplitsDescription *)self->_splitsDescription leftSplit];
  if (v19 && (-[SKUIStorePageSplitsDescription rightSplit](self->_splitsDescription, "rightSplit"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20) && ([v19 dividerColor], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    if (skuiCollectionViewWillLayoutSubviews__sLayoutRespondsToFrame)
    {
      splitsDividerView = self->_splitsDividerView;
      if (!splitsDividerView)
      {
        v24 = objc_alloc_init(MEMORY[0x277D75D18]);
        v25 = self->_splitsDividerView;
        self->_splitsDividerView = v24;

        [v4 addSubview:self->_splitsDividerView];
        splitsDividerView = self->_splitsDividerView;
      }

      [(UIView *)splitsDividerView setBackgroundColor:v22];
      v56 = 0;
      v57 = &v56;
      v58 = 0x4010000000;
      v59 = &unk_215F8ACD7;
      v26 = *(MEMORY[0x277CBF3A0] + 16);
      v60 = *MEMORY[0x277CBF3A0];
      v61 = v26;
      v27 = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
      splitsDescription = self->_splitsDescription;
      v49 = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v51 = __76__SKUIStorePageSectionsViewController_skuiCollectionViewWillLayoutSubviews___block_invoke_2;
      v52 = &unk_2781FA8A0;
      v53 = v19;
      v29 = v27;
      v54 = v29;
      v55 = &v56;
      [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:&v49];
      [v4 frame];
      v31 = v30;
      v32 = [MEMORY[0x277D759A0] mainScreen];
      [v32 scale];
      v34 = v33;

      ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
      x = v57[1].origin.x;
      y = v57[1].origin.y;
      width = v57[1].size.width;
      height = v57[1].size.height;
      v40 = 1.0 / v34;
      if (ShouldReverseLayoutDirection)
      {
        MinX = CGRectGetMinX(*&x);
      }

      else
      {
        MinX = CGRectGetMaxX(*&x) - v40;
      }

      MinY = CGRectGetMinY(v57[1]);
      [v4 contentOffset];
      v44 = v43;
      [v4 contentInset];
      v46 = v44 + v45;
      v47 = v57[1].origin.y;
      if (v47 <= 0.00000011920929)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0.0;
        if (v46 >= v47)
        {
          v48 = v46 - v47;
        }
      }

      [(UIView *)self->_splitsDividerView setFrame:MinX, MinY + v48, v40, v31];
      [(UIView *)self->_splitsDividerView setHidden:0];

      _Block_object_dispose(&v56, 8);
    }
  }

  else
  {
    [(UIView *)self->_splitsDividerView setHidden:1];
    v22 = 0;
  }
}

void __76__SKUIStorePageSectionsViewController_skuiCollectionViewWillLayoutSubviews___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) == a2)
  {
    v12 = [*(a1 + 40) objectAtIndex:?];
    [v12 _frame];
    v7 = *(*(a1 + 48) + 8);
    v7[4] = v8;
    v7[5] = v9;
    v7[6] = v10;
    v7[7] = v11;
    *a4 = 1;
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  if ([(SKUIResourceLoader *)self->_resourceLoader isIdle])
  {
    [(SKUIStorePageSectionsViewController *)self _prefetchArtworkForVisibleSections];
  }

  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isTracking") & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0)
  {
    [(SKUIStackedBar *)self->_stackedBar animateToFullSizeIfNecessary];
  }

  self->_scrollOffsetHasChanged = 1;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    if ([(SKUIResourceLoader *)self->_resourceLoader isIdle])
    {
      [(SKUIStorePageSectionsViewController *)self _prefetchArtworkForVisibleSections];
    }

    [(SKUIStackedBar *)self->_stackedBar animateToFullSizeIfNecessary];
  }

  self->_scrollOffsetHasChanged = 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  if (self->_indexPathOfEditedCell)
  {
    v4 = [(SKUICollectionView *)self->_collectionView cellForItemAtIndexPath:?];
    if (([v4 isScrollingCellToHideActionButton] & 1) == 0)
    {
      [v4 hideDeleteButton];
    }
  }

  if (self->_delegateWantsDidScroll)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sectionsViewControllerDidScroll:self];
  }

  if (self->_rendersWithParallax)
  {
    SKUICollectionViewUpdatePerspectiveCells(self->_collectionView, 0);
  }

  stackedBar = self->_stackedBar;
  [v8 contentOffset];
  [(SKUIStackedBar *)stackedBar setOffset:v7];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a5->x;
  y = a5->y;
  v8 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:a3, a5->x, y];
  v9 = [v8 item];
  v10 = [v8 section];
  [(SKUICollectionView *)self->_collectionView contentInset];
  v12 = v11;
  [(SKUICollectionView *)self->_collectionView bounds];
  v14 = y + v13;
  [(SKUICollectionView *)self->_collectionView contentSize];
  if (v14 >= v15 - v12)
  {
    v16 = v15 - v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:x, v16];
  v18 = [v17 item];
  v19 = [v17 section];
  v30 = v8;
  v20 = [v8 section];
  v21 = [(NSMutableArray *)self->_sections count]- 1;
  v22 = [v17 section];
  if (v21 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v20 <= v23)
  {
    do
    {
      v24 = [(NSMutableArray *)self->_sections objectAtIndex:v20];
      v31 = v10;
      v32 = v9;
      v33 = v19;
      v34 = v18;
      [v24 collectionViewWillScrollToOffset:&v31 visibleRange:{x, y}];

      v25 = [(NSMutableArray *)self->_sections count]- 1;
      v26 = [v17 section];
      if (v25 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }
    }

    while (v20++ < v27);
  }

  if (self->_delegateWantsWillScrollToOffsetVisibleRange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v31 = v10;
    v32 = v9;
    v33 = v19;
    v34 = v18;
    [WeakRetained sectionsViewController:self willScrollToOffset:&v31 visibleRange:{x, y}];
  }

  self->_scrollOffsetHasChanged = 1;
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 sourceView];
  [(SKUICollectionView *)self->_collectionView convertPoint:v8 fromView:x, y];
  v9 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
  v10 = [v9 section];
  if (v10 >= [(NSMutableArray *)self->_sections count])
  {
    v12 = 0;
  }

  else
  {
    v11 = [(NSMutableArray *)self->_sections objectAtIndex:v10];
    v12 = [v11 previewingContext:v7 viewControllerForLocation:{x, y}];
  }

  return v12;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(SKUIStorePageSectionsViewController *)self navigationController];
  v8 = [(SKUIStorePageSectionsViewController *)self parentViewController];
  if (v8)
  {
    while (1)
    {
      v9 = [v8 navigationController];
      v10 = [(SKUIViewController *)self clientContext];
      v11 = [v10 applicationController];
      v12 = [v11 rootViewController];
      IsDescendent = SKUIViewControllerIsDescendent(v9, v12);

      if (!IsDescendent)
      {

        goto LABEL_11;
      }

      if (v9)
      {
        break;
      }

      if ([v8 conformsToProtocol:&unk_2829AECD8])
      {
        v14 = [v8 overlayNavigationController];
        goto LABEL_7;
      }

LABEL_8:
      v16 = [v8 parentViewController];

      v8 = v16;
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    v14 = v9;
LABEL_7:
    v15 = v14;

    v7 = v15;
    goto LABEL_8;
  }

LABEL_11:
  v17 = v6;
  v18 = v17;
  if ([v17 conformsToProtocol:&unk_282996A00])
  {
    v18 = [v17 previewCommitViewController];

    if (objc_opt_respondsToSelector())
    {
      [v17 prepareForCommit];
    }
  }

  [v7 pushViewController:v18 animated:1];
}

- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v22 = a3;
  v9 = a5;
  v10 = [(SKUIStorePageSectionsViewController *)self collectionView];
  [v10 convertPoint:v9 fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(SKUIStorePageSectionsViewController *)self collectionView];
  v16 = [v15 indexPathForItemAtPoint:{v12, v14}];

  v17 = [(SKUIStorePageSectionsViewController *)self collectionView];
  v18 = [v17 cellForItemAtIndexPath:v16];

  v19 = [v22 presentationController];
  [v19 setSourceView:v18];
  [v18 bounds];
  [v19 setSourceRect:?];
  v20 = [v16 section];
  if (v20 < [(NSMutableArray *)self->_sections count])
  {
    v21 = [(NSMutableArray *)self->_sections objectAtIndex:v20];
    [v21 willPresentPreviewViewController:v22 forLocation:v9 inSourceView:{x, y}];
  }
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v4 = objc_alloc_init(a1);
  v5 = +[SKUIStateRestorationContext sharedContext];
  v6 = [v5 clientContext];
  [v4 setClientContext:v6];

  return v4;
}

- (void)_endIgnoringSectionChanges
{
  ignoreSectionsChangeCount = self->_ignoreSectionsChangeCount;
  v3 = ignoreSectionsChangeCount == 1;
  v4 = ignoreSectionsChangeCount < 1;
  v5 = ignoreSectionsChangeCount - 1;
  if (!v4)
  {
    self->_ignoreSectionsChangeCount = v5;
    if (v3)
    {
      if (self->_deferredSplitsDescription)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = self->_deferredSplitsDescription;
        }

        else
        {
          v8 = 0;
        }

        deferredSplitsDescription = self->_deferredSplitsDescription;
        self->_deferredSplitsDescription = 0;

        [(SKUIStorePageSectionsViewController *)self setSectionsWithSplitsDescription:v8];
      }
    }
  }
}

- (void)_insertSectionsWithComponents:(id)a3 afterSection:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableArray *)self->_sections indexOfObjectIdenticalTo:a4];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v20 = [(SKUIStorePageSectionsViewController *)self _splitForSectionIndex:v7];
    v9 = [v20 sectionContext];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = v8 + 1;
      v15 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = [(SKUIStorePageSectionsViewController *)self defaultSectionForComponent:*(*(&v22 + 1) + 8 * i)];
          v18 = v17;
          if (v17)
          {
            [v17 setSectionIndex:v14];
            [v18 _setContext:v9];
            [v18 willAppearInContext:v9];
            [(NSMutableArray *)self->_sections insertObject:v18 atIndex:v14++];
            ++v13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    [v20 setNumberOfPageSections:{objc_msgSend(v20, "numberOfPageSections") + v13}];
    v19 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [v19 commitLayoutRequests];

    [(SKUIStorePageSectionsViewController *)self _updateSectionsAfterMenuChange];
    v6 = v21;
  }
}

- (void)_pageSectionDidDismissOverlayController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_activeOverlayController);
  v6 = a3;

  if (WeakRetained == v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 sectionsViewControllerDidDismissOverlayController:self];
    }

    objc_storeWeak(&self->_activeOverlayController, 0);
  }
}

- (void)_setActiveProductPageOverlayController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_activeOverlayController, v4);
}

- (void)_setRendersWithPerspective:(BOOL)a3
{
  if (self->_rendersWithPerspective != a3)
  {
    self->_rendersWithPerspective = a3;
    v4 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    [v4 setRendersWithPerspective:self->_rendersWithPerspective];
    [(SKUICollectionView *)self->_collectionView setClipsToBounds:!self->_rendersWithPerspective];
    if (self->_rendersWithPerspective)
    {
      SKUICollectionViewUpdatePerspectiveCells(self->_collectionView, 0);
    }
  }
}

- (void)_setRendersWithParallax:(BOOL)a3
{
  if (self->_rendersWithParallax != a3)
  {
    self->_rendersWithParallax = a3;
  }
}

- (void)_setSelectedIndex:(int64_t)a3 forMenuSection:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 pageComponent];
  v8 = [(SKUIStorePageSectionsViewController *)self _menuContextForMenuComponent:v7];
  v9 = [v8 selectedIndex];
  if (v9 != a3)
  {
    v10 = [v7 childComponentsForIndex:v9];
    v20 = [v10 count];

    v22 = v6;
    v19 = [v6 sectionIndex];
    v21 = [(SKUIStorePageSectionsViewController *)self _splitForSectionIndex:?];
    v11 = [v21 sectionContext];
    v12 = [(SKUIStorePageSectionsViewController *)self _childSectionsForMenuComponent:v7 selectedIndex:a3];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          [v17 _setContext:v11];
          [v17 willAppearInContext:v11];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)self->_sections replaceObjectsInRange:v19 + 1 withObjectsFromArray:v20, v12];
    [v8 setSelectedIndex:a3];
    [v21 setNumberOfPageSections:{objc_msgSend(v21, "numberOfPageSections") - v20 + objc_msgSend(v12, "count")}];
    v18 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [v18 commitLayoutRequests];

    [(SKUIStorePageSectionsViewController *)self _updateSectionsAfterMenuChange];
    v6 = v22;
  }
}

- (void)_updateSectionsForIndex:(int64_t)a3 menuSection:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 pageComponent];
  v8 = [(SKUIStorePageSectionsViewController *)self _menuContextForMenuComponent:v7];
  if ([v8 selectedIndex] == a3)
  {
    v9 = [v8 sectionsForIndex:a3];
    v10 = [v9 count];

    if (!v10)
    {
      v19 = -[SKUIStorePageSectionsViewController _splitForSectionIndex:](self, "_splitForSectionIndex:", [v6 sectionIndex]);
      v11 = [v19 sectionContext];
      v12 = [(SKUIStorePageSectionsViewController *)self _childSectionsForMenuComponent:v7 selectedIndex:a3];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            [v17 _setContext:v11];
            [v17 willAppearInContext:v11];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      -[NSMutableArray replaceObjectsInRange:withObjectsFromArray:](self->_sections, "replaceObjectsInRange:withObjectsFromArray:", [v6 sectionIndex] + 1, 0, v12);
      [v19 setNumberOfPageSections:{objc_msgSend(v12, "count") + objc_msgSend(v19, "numberOfPageSections")}];
      v18 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
      [v18 commitLayoutRequests];

      [(SKUIStorePageSectionsViewController *)self _updateSectionsAfterMenuChange];
    }
  }
}

- (id)_visibleMetricsImpressionsString
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SKUIMetricsImpressionSession);
  v4 = [(SKUICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v9 section]);
        [v10 addImpressionsForIndexPath:v9 toSession:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [(SKUIMetricsImpressionSession *)v3 impressionsString];

  return v11;
}

- (id)_impressionableViewElements
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SKUIMetricsImpressionSession);
  v4 = [(SKUICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v9 section]);
        [v10 addImpressionsForIndexPath:v9 toSession:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [(SKUIMetricsImpressionSession *)v3 impressionableViewElements];

  return v11;
}

- (void)_handleTap:(id)a3
{
  if (self->_indexPathOfEditedCell)
  {
    v3 = [(SKUICollectionView *)self->_collectionView cellForItemAtIndexPath:?];
    if (([v3 isScrollingCellToHideActionButton] & 1) == 0)
    {
      [v3 hideDeleteButton];
    }
  }
}

- (void)_entityProviderDidInvalidateNotification:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __80__SKUIStorePageSectionsViewController__entityProviderDidInvalidateNotification___block_invoke;
  v10 = &unk_2781F80C8;
  v5 = v4;
  v11 = v5;
  v12 = self;
  v6 = _Block_copy(&v7);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6[2](v6);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __80__SKUIStorePageSectionsViewController__entityProviderDidInvalidateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 1160) objectForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKey:*MEMORY[0x277D1AF60]];

    v6 = [MEMORY[0x277D75D18] areAnimationsEnabled];
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
    v7 = *(*(a1 + 40) + 1080);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __80__SKUIStorePageSectionsViewController__entityProviderDidInvalidateNotification___block_invoke_2;
    v12 = &unk_2781F96E8;
    v13 = v3;
    v14 = v2;
    v15 = v5;
    v16 = *(a1 + 40);
    v8 = v5;
    [v7 performBatchUpdates:&v9 completion:0];
    [MEMORY[0x277D75D18] setAnimationsEnabled:{v6, v9, v10, v11, v12}];
  }
}

void __80__SKUIStorePageSectionsViewController__entityProviderDidInvalidateNotification___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) entityProvider:*(a1 + 40) didInvalidateWithContext:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 56) _textLayoutCache];
  [v7 commitLayoutRequests];
}

- (void)_applyColorScheme:(id)a3 toIndexBarControl:(id)a4
{
  v9 = a4;
  v5 = a3;
  v6 = [v5 backgroundColor];
  if (v6)
  {
    [v9 setBackgroundColor:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v7];
  }

  v8 = [v5 primaryTextColor];

  [v9 setTintColor:v8];
}

- (void)_beginActiveImpressionsForImpressionableViewElements
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIStorePageSectionsViewController *)self _impressionableViewElements];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(SKUIStorePageSectionsViewController *)self activeMetricsImpressionSession];
        [v9 beginActiveImpressionForViewElement:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_childSectionsForMenuComponent:(id)a3 selectedIndex:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SKUIStorePageSectionsViewController *)self _menuContextForMenuComponent:v6];
  v8 = [v7 sectionsForIndex:a4];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] array];

    v10 = [v6 childComponentsForIndex:a4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(SKUIStorePageSectionsViewController *)self defaultSectionForComponent:*(*(&v17 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v7 setSections:v9 forIndex:a4];
  }

  return v9;
}

- (id)_collectionViewSublayouts
{
  v2 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 sublayouts];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_createSectionsForExpandPageComponent:(id)a3 context:(id)a4 newSections:(id)a5 sectionCount:(int64_t)a6 sectionsByViewElement:(id)a7 updateStyle:(int64_t)a8
{
  v80 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v66 = a4;
  v68 = a5;
  v14 = a7;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 5;
  do
  {
    v17 = [MEMORY[0x277CBEB68] null];
    [v15 addObject:v17];

    --v16;
  }

  while (v16);
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  [v15 replaceObjectAtIndex:0 withObject:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  [v15 replaceObjectAtIndex:1 withObject:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v58 = v15;
  [v15 replaceObjectAtIndex:4 withObject:v20];

  [v13 viewElement];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v67 = v77 = 0u;
  v21 = [v67 persistenceKey];
  v22 = [v21 flattenedChildren];

  obj = v22;
  v64 = [v22 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v64)
  {
    v23 = 0;
    v63 = *v75;
    v60 = v14;
    v61 = v13;
    do
    {
      v24 = 0;
      do
      {
        if (*v75 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v25 = [*(*(&v74 + 1) + 8 * v24) persistenceKey];
        if (v25)
        {
          v26 = [v14 objectForKey:v25];
          if (v26)
          {
            v27 = v26;
            v65 = v24;
            v28 = [(NSMutableArray *)self->_sections count];
            [v27 setBottomSection:0];
            [v27 setSectionIndex:v28];
            [v27 setTopSection:a6 == 0];
            v29 = [v13 childComponentForIndex:v23];
            v30 = [v27 updateWithContext:v66 pageComponent:v29];

            if (v30 == 1)
            {
              v31 = v25;
              v32 = v23;
              v33 = 0;
LABEL_35:
              v50 = [v58 objectAtIndex:v33];
              v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v50, "integerValue") + 1}];
              [v58 replaceObjectAtIndex:v33 withObject:v51];

              v23 = v32;
              v25 = v31;
              v14 = v60;
              v13 = v61;
            }

            else if (v30 == 2)
            {
              v31 = v25;
              v32 = v23;
              v33 = 1;
              goto LABEL_35;
            }

            [(NSMutableArray *)self->_sections addObject:v27];
            [v14 removeObjectForKey:v25];
            ++a6;
LABEL_38:

            ++v23;
            v24 = v65;
            goto LABEL_39;
          }
        }

        v34 = [(NSMutableArray *)self->_sections count];
        if ([v67 isOpen])
        {
          v65 = v24;
          v35 = [v13 childComponentForIndex:v23];
          v36 = [(SKUIStorePageSectionsViewController *)self _newSectionsWithPageComponent:v35];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v27 = v36;
          v37 = [v27 countByEnumeratingWithState:&v70 objects:v78 count:16];
          if (v37)
          {
            v38 = v37;
            v59 = v23;
            v39 = *v71;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v71 != v39)
                {
                  objc_enumerationMutation(v27);
                }

                v41 = *(*(&v70 + 1) + 8 * i);
                [v41 setBottomSection:0];
                [v41 setSectionIndex:v34];
                [v41 setTopSection:a6 == 0];
                if (a8 == 1)
                {
                  [v41 _setContext:v66];
                  [v41 willAppearInContext:v66];
                  [v68 addObject:v41];
                  [(NSMutableArray *)self->_sections addObject:v41];
                  if ([v67 isOpen] && (objc_msgSend(v67, "previousIsOpen") & 1) == 0)
                  {
                    expandInsertSections = self->_expandInsertSections;
                    if (!expandInsertSections)
                    {
                      v43 = objc_alloc_init(MEMORY[0x277CCAB58]);
                      v44 = self->_expandInsertSections;
                      self->_expandInsertSections = v43;

                      expandInsertSections = self->_expandInsertSections;
                    }

                    [(NSMutableIndexSet *)expandInsertSections addIndex:v34];
                  }
                }

                else
                {
                  [v68 addObject:v41];
                  [(NSMutableArray *)self->_sections addObject:v41];
                }

                ++a6;
                ++v34;
              }

              v38 = [v27 countByEnumeratingWithState:&v70 objects:v78 count:16];
            }

            while (v38);

            v14 = v60;
            v13 = v61;
            v23 = v59;
          }

          else
          {
          }

          goto LABEL_38;
        }

        v45 = [v67 previousIsOpen];
        if (a8 == 1 && v45)
        {
          v46 = v24;
          expandRemoveSections = self->_expandRemoveSections;
          if (!expandRemoveSections)
          {
            v48 = objc_alloc_init(MEMORY[0x277CCAB58]);
            v49 = self->_expandRemoveSections;
            self->_expandRemoveSections = v48;

            expandRemoveSections = self->_expandRemoveSections;
          }

          [(NSMutableIndexSet *)expandRemoveSections addIndex:[(NSMutableIndexSet *)expandRemoveSections count]+ v34];
          v24 = v46;
        }

LABEL_39:

        ++v24;
      }

      while (v24 != v64);
      v52 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
      v64 = v52;
    }

    while (v52);
  }

  v53 = v67;
  if ([v67 isOpen] & 1) == 0 && (objc_msgSend(v67, "previousIsOpen"))
  {
    v54 = 0;
    v55 = v58;
LABEL_49:
    v53 = v67;
    [v67 setPreviousIsOpen:v54];
    goto LABEL_50;
  }

  v55 = v58;
  if ([v67 isOpen] && (objc_msgSend(v67, "previousIsOpen") & 1) == 0)
  {
    v54 = 1;
    goto LABEL_49;
  }

LABEL_50:
  [v55 replaceObjectAtIndex:2 withObject:v14];
  [v55 replaceObjectAtIndex:3 withObject:v68];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  [v55 replaceObjectAtIndex:4 withObject:v56];

  return v55;
}

- (id)_currentBackdropGroupName
{
  v2 = [(SKUIStorePageSectionsViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 _backdropGroupName];
  }

  else
  {
    v4 = [v2 navigationBar];
    v3 = [v4 _backdropViewLayerGroupName];
  }

  return v3;
}

- (id)_defaultSectionForGridComponent:(id)a3
{
  v3 = a3;
  v4 = [v3 gridType];
  if (v4 > 6)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << v4) & 0x3B) != 0)
    {
      v5 = SKUIGridPageSection;
    }

    else if (v4 == 2)
    {
      v5 = SKUIBrickGridPageSection;
    }

    else
    {
      v5 = objc_opt_class();
      v8 = [v3 viewElement];
      v9 = [v8 isDynamicContainer];

      if (v9)
      {
        v5 = objc_opt_class();
      }
    }

    v6 = [[v5 alloc] initWithPageComponent:v3];
  }

  return v6;
}

- (id)_defaultSectionForSwooshComponent:(id)a3
{
  v3 = a3;
  v4 = [v3 swooshType];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(*off_2781FA9F8[v4]) initWithPageComponent:v3];
  }

  return v5;
}

- (void)_deselectCellsForAppearance:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(SKUICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SKUICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v19 + 1) + 8 * v9++) animated:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_sections;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) deselectItemsAnimated:{v3, v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_endAllPendingActiveImpression
{
  v2 = [(SKUIStorePageSectionsViewController *)self activeMetricsImpressionSession];
  [v2 endAllPendingActiveImpression];
}

- (void)_enumerateSectionContextsUsingBlock:(id)a3
{
  v4 = a3;
  splitsDescription = self->_splitsDescription;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SKUIStorePageSectionsViewController__enumerateSectionContextsUsingBlock___block_invoke;
  v7[3] = &unk_2781FA8C8;
  v8 = v4;
  v6 = v4;
  [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:v7];
}

void __75__SKUIStorePageSectionsViewController__enumerateSectionContextsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 sectionContext];
  (*(v6 + 16))(v6, v7, a3, a4);
}

- (void)_enumerateVisibleSectionsUsingBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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

        [v6 addIndex:{objc_msgSend(*(*(&v15 + 1) + 8 * v11++), "section")}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__SKUIStorePageSectionsViewController__enumerateVisibleSectionsUsingBlock___block_invoke;
  v13[3] = &unk_2781FA8F0;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v6 enumerateIndexesUsingBlock:v13];
}

void __75__SKUIStorePageSectionsViewController__enumerateVisibleSectionsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 1320) objectAtIndex:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)_invalidateIfLastKnownWidthChanged
{
  if (self->_lastKnownWidth)
  {
    v3 = [(SKUIStorePageSectionsViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    [(NSNumber *)self->_lastKnownWidth floatValue];
    v9 = floorf(v8);
    if (floor(v5) != v9)
    {
      [(SKUIStorePageSectionsViewController *)self _invalidateLayoutWithNewSize:0 transitionCoordinator:v5, v7];
    }

    *&v9 = v5;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    lastKnownWidth = self->_lastKnownWidth;
    self->_lastKnownWidth = v10;

    MEMORY[0x2821F96F8](v10, lastKnownWidth);
  }
}

- (void)_invalidateLayoutWithNewSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v47 = *MEMORY[0x277D85DE8];
  v7 = a4;
  [(SKUIStorePageSectionsViewController *)self _setPageSize:width, height];
  v8 = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v40 + 1) + 8 * i) invalidateLayout];
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  v13 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  [v13 invalidateLayout];

  v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_sections;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * j);
        v21 = [v20 numberOfCells];
        [v20 willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
        if (v21 != [v20 numberOfCells])
        {
          [v14 addIndex:{objc_msgSend(v20, "sectionIndex")}];
        }
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v17);
  }

  v22 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  [v22 commitLayoutRequests];

  if ([v14 count])
  {
    v23 = MEMORY[0x277D75D18];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __90__SKUIStorePageSectionsViewController__invalidateLayoutWithNewSize_transitionCoordinator___block_invoke;
    v34[3] = &unk_2781F80C8;
    v34[4] = self;
    v35 = v14;
    [v23 performWithoutAnimation:v34];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = self->_sections;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v30 + 1) + 8 * k);
        if (([v14 containsIndex:{objc_msgSend(v29, "sectionIndex")}] & 1) == 0)
        {
          [v29 reloadVisibleCellsWithReason:0];
        }
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v26);
  }
}

- (id)_expandContextForMenuComponent:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_expandSectionContexts objectForKey:v4];
  if (!v5)
  {
    if (!self->_expandSectionContexts)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      expandSectionContexts = self->_expandSectionContexts;
      self->_expandSectionContexts = v6;
    }

    v5 = objc_alloc_init(SKUIExpandPageSectionContext);
    [(NSMapTable *)self->_expandSectionContexts setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)_menuContextForMenuComponent:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_menuSectionContexts objectForKey:v4];
  if (!v5)
  {
    if (!self->_menuSectionContexts)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      menuSectionContexts = self->_menuSectionContexts;
      self->_menuSectionContexts = v6;
    }

    v5 = objc_alloc_init(SKUIMenuPageSectionContext);
    -[SKUIMenuPageSectionContext setSelectedIndex:](v5, "setSelectedIndex:", [v4 defaultSelectedIndex]);
    [(NSMapTable *)self->_menuSectionContexts setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)_newSectionContext
{
  v3 = objc_alloc_init(SKUIStorePageSectionContext);
  [(SKUIStorePageSectionContext *)v3 _setCollectionView:self->_collectionView];
  [(SKUIStorePageSectionContext *)v3 _setColorScheme:self->_colorScheme];
  [(SKUIStorePageSectionContext *)v3 _setDefaultPinningTransitionStyle:self->_pinningTransitionStyle];
  [(SKUIStorePageSectionContext *)v3 _setLayoutStyle:self->_layoutStyle];
  [(SKUIStorePageSectionContext *)v3 _setMetricsController:self->_metricsController];
  [(SKUIStorePageSectionContext *)v3 _setParentViewController:self];
  v4 = [(SKUIStorePageSectionsViewController *)self resourceLoader];
  [(SKUIStorePageSectionContext *)v3 _setResourceLoader:v4];

  v5 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  [(SKUIStorePageSectionContext *)v3 _setTextLayoutCache:v5];

  [(SKUIStorePageSectionContext *)v3 _setActiveMetricsImpressionSession:self->_activeMetricsImpressionSession];
  if ([(SKUIStorePageSectionsViewController *)self isViewLoaded])
  {
    v6 = [(SKUIStorePageSectionsViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    v11 = [(SKUICollectionView *)self->_collectionView indexBarControl];

    if (v11)
    {
      v12 = [(SKUICollectionView *)self->_collectionView indexBarControl];
      [v12 sizeThatFits:{v8, v10}];
      v14 = v13;

      v8 = v8 - v14;
    }

    [(SKUIStorePageSectionContext *)v3 _setActivePageWidth:v8];
    [(SKUIStorePageSectionContext *)v3 _setLandscapePageWidth:v10];
    [(SKUIStorePageSectionContext *)v3 _setPortraitPageWidth:v8];
  }

  return v3;
}

- (id)_newSectionsWithPageComponent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v4 componentType] == 11)
  {
    v6 = v4;
    v7 = [[SKUIMenuPageSection alloc] initWithPageComponent:v6];
    [v5 addObject:v7];
    v8 = -[SKUIStorePageSectionsViewController _childSectionsForMenuComponent:selectedIndex:](self, "_childSectionsForMenuComponent:selectedIndex:", v6, [v6 defaultSelectedIndex]);
    if (v8)
    {
      [v5 addObjectsFromArray:v8];
    }
  }

  else
  {
    v6 = [(SKUIStorePageSectionsViewController *)self defaultSectionForComponent:v4];
    [v5 addObject:v6];
  }

  return v5;
}

- (id)_newSectionsWithPageComponents:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SKUIStorePageSectionsViewController *)self _newSectionsWithPageComponent:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObjectsFromArray:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_newStorePageCollectionViewLayout
{
  v3 = objc_alloc_init(SKUIStorePageCollectionViewLayout);
  v4 = [(SKUIStorePageSectionsViewController *)self _currentBackdropGroupName];
  [(SKUIStorePageCollectionViewLayout *)v3 setBackdropGroupName:v4];

  [(SKUIStorePageCollectionViewLayout *)v3 setRendersWithPerspective:self->_rendersWithPerspective];
  [(SKUIStorePageCollectionViewLayout *)v3 setRendersWithParallax:self->_rendersWithParallax];
  return v3;
}

- (id)_prepareLayoutForSections
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(SKUIStorePageSplitsDescription *)self->_splitsDescription numberOfSplits]> 1)
  {
    v4 = [(SKUIStorePageSectionsViewController *)self _newSectionContext];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    splitsDescription = self->_splitsDescription;
    [v4 activePageWidth];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__SKUIStorePageSectionsViewController__prepareLayoutForSections__block_invoke;
    v14[3] = &unk_2781FA938;
    v14[4] = self;
    v14[5] = v15;
    [(SKUIStorePageSplitsDescription *)splitsDescription sizeSplitsToFitWidth:v14 usingBlock:?];
    v10 = objc_alloc_init(SKUIStorePageSplitCollectionViewLayout);
    v12 = [(SKUIStorePageSectionsViewController *)self _currentBackdropGroupName];
    [(SKUIStorePageSplitCollectionViewLayout *)v10 setBackdropGroupName:v12];

    [(SKUIStorePageSplitCollectionViewLayout *)v10 setRendersWithPerspective:self->_rendersWithPerspective];
    [(SKUIStorePageSplitCollectionViewLayout *)v10 addSublayoutsUsingSplitsDescription:self->_splitsDescription];
    _Block_object_dispose(v15, 8);
  }

  else
  {
    v3 = [(SKUIStorePageSplitsDescription *)self->_splitsDescription firstSplit];
    v4 = [v3 sectionContext];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_sections;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          [v9 _setContext:v4];
          [v9 willAppearInContext:v4];
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v10 = [(SKUIStorePageSectionsViewController *)self _newStorePageCollectionViewLayout];
  }

  return v10;
}

void __64__SKUIStorePageSectionsViewController__prepareLayoutForSections__block_invoke(uint64_t a1, void *a2, double a3)
{
  v12 = a2;
  v5 = [v12 sectionContext];
  [v5 _setActivePageWidth:a3];
  v6 = [v12 numberOfPageSections];
  v7 = v6;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24);
  if (v6 < 1)
  {
    v11 = v9 + v6;
  }

  else
  {
    do
    {
      v10 = [*(*(a1 + 32) + 1320) objectAtIndex:v9];
      [v10 _setContext:v5];
      [v10 willAppearInContext:v5];

      ++v9;
      v8 = *(*(a1 + 40) + 8);
      v11 = *(v8 + 24) + v7;
    }

    while (v9 < v11);
  }

  *(v8 + 24) = v11;
}

- (void)_registerForNotificationsForEntityProvider:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 addObserver:self selector:sel__entityProviderDidInvalidateNotification_ name:*MEMORY[0x277D1AF58] object:v5];
  }
}

- (void)_reloadCollectionView
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIStorePageSectionsViewController *)self _prepareLayoutForSections];
  [(SKUICollectionView *)self->_collectionView setCollectionViewLayout:v3 animated:0];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = self->_sections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v39 + 1) + 8 * i) fitsToHeight])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  [(SKUICollectionView *)self->_collectionView setAlwaysBounceVertical:v9];
  [(SKUICollectionView *)self->_collectionView setScrollEnabled:v9];
  v10 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v13 = v12;

  [(SKUICollectionView *)self->_collectionView setBackgroundColor:v13];
  if ([(NSMutableArray *)self->_sections count])
  {
    v33 = v3;
    p_contentInsetAdjustments = &self->_contentInsetAdjustments;
    top = self->_contentInsetAdjustments.top;
    v16 = [(NSMutableArray *)self->_sections objectAtIndex:0];
    [v16 contentInsetAdjustmentForCollectionView:self->_collectionView];
    self->_contentInsetAdjustments.top = v17;
    v18 = self;
    v19 = v18;
    while (![v19 conformsToProtocol:&unk_282938F18])
    {
      v20 = [v19 parentViewController];

      v19 = v20;
      if (!v20)
      {
        goto LABEL_21;
      }
    }

    v21 = [v19 prefersNavigationBarBackgroundViewHidden];

    if (v21)
    {
      v22 = [(SKUIStorePageSectionsViewController *)v18 navigationController];
      v23 = [v22 navigationBar];
      [v23 frame];
      p_contentInsetAdjustments->top = p_contentInsetAdjustments->top - CGRectGetMaxY(v46);
    }

LABEL_21:
    if ([(NSMutableArray *)self->_sections count]>= 2)
    {
      v24 = [(NSMutableArray *)self->_sections lastObject];
      [v24 contentInsetAdjustmentForCollectionView:self->_collectionView];
      self->_contentInsetAdjustments.bottom = v25;
    }

    [(SKUICollectionView *)self->_collectionView contentInset];
    [(SKUICollectionView *)self->_collectionView setContentInset:v26 + p_contentInsetAdjustments->top - top];

    v3 = v33;
  }

  v27 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  [v27 commitLayoutRequests];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_sections;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v35 + 1) + 8 * j) prefetchResourcesWithReason:0];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v30);
  }

  [(SKUICollectionView *)self->_collectionView setDataSource:self];
  [(SKUICollectionView *)self->_collectionView setDelegate:self];
  [(SKUICollectionView *)self->_collectionView reloadData];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SKUIStorePageSectionsViewController__reloadCollectionView__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__SKUIStorePageSectionsViewController__reloadCollectionView__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 1320);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) didAppearInContext:{0, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_reloadRelevantEntityProviders
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v3 = self->_entityProviderToRelevantSections;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v48;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        if (!v6)
        {
          v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSMapTable count](self->_entityProviderToRelevantSections, "count")}];
        }

        [v6 addObject:v9];
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_sections;
  v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v32)
  {
    v31 = *v44;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * j);
        v12 = [v11 relevantEntityProviders];
        if ([v12 count])
        {
          v34 = j;
          if (!self->_entityProviderToRelevantSections)
          {
            v13 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
            entityProviderToRelevantSections = self->_entityProviderToRelevantSections;
            self->_entityProviderToRelevantSections = v13;
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v33 = v12;
          v15 = v12;
          v16 = [v15 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v40;
            do
            {
              for (k = 0; k != v17; ++k)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v39 + 1) + 8 * k);
                [v6 removeObject:v20];
                v21 = [(NSMapTable *)self->_entityProviderToRelevantSections objectForKey:v20];
                if (!v21)
                {
                  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
                  [(NSMapTable *)self->_entityProviderToRelevantSections setObject:v21 forKey:v20];
                  [(SKUIStorePageSectionsViewController *)self _registerForNotificationsForEntityProvider:v20];
                }

                [v21 addObject:v11];
              }

              v17 = [v15 countByEnumeratingWithState:&v39 objects:v52 count:16];
            }

            while (v17);
          }

          v12 = v33;
          j = v34;
        }
      }

      v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v32);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = v6;
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * m);
        [(SKUIStorePageSectionsViewController *)self _unregisterForNotificationsForEntityProvider:v27];
        [(NSMapTable *)self->_entityProviderToRelevantSections removeObjectForKey:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v24);
  }

  v28 = self->_entityProviderToRelevantSections;
  if (v28 && ![(NSMapTable *)v28 count])
  {
    v29 = self->_entityProviderToRelevantSections;
    self->_entityProviderToRelevantSections = 0;
  }
}

- (void)_scrollFirstAppearanceSectionToView
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_scrollOffsetHasChanged)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_sections;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) firstAppearanceIndexPath];
          if (v8)
          {
            v9 = v8;

            [(SKUICollectionView *)self->_collectionView scrollToItemAtIndexPath:v9 atScrollPosition:2 animated:0];
            self->_scrollOffsetHasChanged = 1;
            v3 = v9;
            goto LABEL_12;
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_setPageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  v7 = [(SKUICollectionView *)self->_collectionView indexBarControl];

  if (v7)
  {
    v8 = [(SKUICollectionView *)self->_collectionView indexBarControl];
    [v8 sizeThatFits:{width, height}];
    v10 = v9;

    width = width - v10;
  }

  splitsDescription = self->_splitsDescription;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SKUIStorePageSectionsViewController__setPageSize___block_invoke;
  v13[3] = &unk_2781FA960;
  v14 = v6;
  v12 = v6;
  [(SKUIStorePageSplitsDescription *)splitsDescription sizeSplitsToFitWidth:v13 usingBlock:width];
}

void __52__SKUIStorePageSectionsViewController__setPageSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = [a2 sectionContext];
  [v8 _setActivePageWidth:a4];
  v7 = [*(a1 + 32) objectAtIndex:a3];
  [v8 activePageWidth];
  [v7 setOverrideContentWidth:?];
}

- (id)_splitForSectionIndex:(int64_t)a3
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  splitsDescription = self->_splitsDescription;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SKUIStorePageSectionsViewController__splitForSectionIndex___block_invoke;
  v6[3] = &unk_2781FA988;
  v6[4] = v13;
  v6[5] = &v7;
  [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v4;
}

void __61__SKUIStorePageSectionsViewController__splitForSectionIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 numberOfPageSections];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  v10 = v9 < v7;
  v11 = v9 - v7;
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  else
  {
    *(v8 + 24) = v11;
  }
}

- (id)_textLayoutCache
{
  textLayoutCache = self->_textLayoutCache;
  if (!textLayoutCache)
  {
    v4 = objc_alloc_init(SKUILayoutCache);
    v5 = self->_textLayoutCache;
    self->_textLayoutCache = v4;

    [(SKUILayoutCache *)self->_textLayoutCache setDelegate:self];
    textLayoutCache = self->_textLayoutCache;
  }

  return textLayoutCache;
}

- (void)_unregisterForNotificationsForEntityProvider:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277D1AF58] object:v5];
  }
}

- (void)_updateCollectionViewWithUpdates:(id)a3
{
  v4 = (*(a3 + 2))(a3, a2);
  if (v4)
  {
    v5 = v4;
    v6 = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [v6 commitLayoutRequests];

    v7 = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_2;
    aBlock[3] = &unk_2781FA9B0;
    v25 = v5;
    aBlock[4] = self;
    v8 = v7;
    v24 = v8;
    v9 = _Block_copy(aBlock);
    if ([(NSMutableIndexSet *)self->_expandInsertSections count]|| [(NSMutableIndexSet *)self->_expandRemoveSections count])
    {
      [(SKUIStorePageSectionsViewController *)self _beginIgnoringSectionChanges];
      collectionView = self->_collectionView;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_4;
      v21[3] = &unk_2781F80C8;
      v21[4] = self;
      v22 = v8;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_5;
      v18 = &unk_2781FA9D8;
      v19 = self;
      v20 = v9;
      [(SKUICollectionView *)collectionView performBatchUpdates:v21 completion:&v15];
    }

    else
    {
      (*(v9 + 2))(v9, 1);
    }
  }

  else if (self->_didInitialReload && self->_collectionView)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke;
    v26[3] = &unk_2781F80F0;
    v26[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v26];
  }

  if ([(SKUIStorePageSectionsViewController *)self isViewLoaded:v15])
  {
    overlayController = self->_overlayController;
    if (overlayController)
    {
      v12 = [(SKUIProductPageOverlayController *)overlayController view];
      v13 = [v12 superview];
      [v13 bringSubviewToFront:v12];
    }
  }

  [(UITapGestureRecognizer *)self->_collectionViewTapGestureRecognizer setEnabled:0];
  indexPathOfEditedCell = self->_indexPathOfEditedCell;
  self->_indexPathOfEditedCell = 0;
}

uint64_t __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1080) reloadData];
  [*(a1 + 32) _reloadCollectionView];
  v2 = *(a1 + 32);

  return [v2 _scrollFirstAppearanceSectionToView];
}

void __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1[6];
  if (v1 == 1)
  {
    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_3;
    v9[3] = &unk_2781F80C8;
    v8 = a1[5];
    v9[4] = a1[4];
    v10 = v8;
    [v7 performWithoutAnimation:v9];
  }

  else if (v1 == 2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(a1[4] + 1320);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * v6++) reloadVisibleCellsWithReason:1];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

void __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_3(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 1080) collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addSublayoutsUsingSplitsDescription:*(*(a1 + 32) + 1328)];
  }

  [*(*(a1 + 32) + 1080) contentSize];
  v3 = v2;
  [*(*(a1 + 32) + 1080) setUserInteractionEnabled:0];
  [*(*(a1 + 32) + 1080) reloadData];
  [*(*(a1 + 32) + 1080) setUserInteractionEnabled:1];
  v4 = [*(a1 + 40) indexPathsForPinningItems];
  if ([v4 count])
  {
    [*(a1 + 40) collectionViewContentSize];
    if (v5 < v3)
    {
      [*(*(a1 + 32) + 1080) reloadItemsAtIndexPaths:v4];
    }
  }

  [*(a1 + 32) _scrollFirstAppearanceSectionToView];
}

void __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1176) count])
  {
    [*(a1 + 40) setExpandChildPageSectionsIndexSet:*(*(a1 + 32) + 1176)];
    [*(*(a1 + 32) + 1080) insertSections:*(*(a1 + 32) + 1176)];
  }

  else if ([*(*(a1 + 32) + 1184) count])
  {
    [*(a1 + 40) setExpandChildPageSectionsIndexSet:*(*(a1 + 32) + 1184)];
    [*(*(a1 + 32) + 1080) deleteSections:*(*(a1 + 32) + 1184)];
  }

  [*(a1 + 40) setExpandChildPageSectionsIndexSet:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1176);
  *(v2 + 1176) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1184);
  *(v4 + 1184) = 0;
}

uint64_t __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _endIgnoringSectionChanges];
}

- (void)_updateSectionsAfterMenuChange
{
  v3 = [(NSMutableArray *)self->_sections count];
  if (v3 < 1)
  {
    v6 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    LOBYTE(v6) = 1;
    do
    {
      v7 = [(NSMutableArray *)self->_sections objectAtIndex:v5];
      [v7 setSectionIndex:v5];
      if (v6)
      {
        v6 = [v7 fitsToHeight] ^ 1;
      }

      else
      {
        v6 = 0;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  [(SKUICollectionView *)self->_collectionView setAlwaysBounceVertical:v6];
  [(SKUICollectionView *)self->_collectionView setScrollEnabled:v6];
  [(SKUICollectionView *)self->_collectionView setScrollsToTop:v6];
  collectionView = self->_collectionView;

  [(SKUICollectionView *)collectionView reloadData];
}

- (SKUIStorePageSectionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SKUICollectionViewPullToRefreshDelegate)pullToRefreshDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pullToRefreshDelegate);

  return WeakRetained;
}

- (void)initWithLayoutStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageSectionsViewController initWithLayoutStyle:]";
}

@end