@interface SKUIStorePageSectionsViewController
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (BOOL)collectionView:(id)view canScrollCellAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)performTestWithName:(id)name options:(id)options;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SKUICollectionViewPullToRefreshDelegate)pullToRefreshDelegate;
- (SKUIResourceLoader)resourceLoader;
- (SKUIStorePageSectionsDelegate)delegate;
- (SKUIStorePageSectionsViewController)initWithLayoutStyle:(int64_t)style;
- (UICollectionView)collectionView;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout pinningContentInsetForItemAtIndexPath:(id)path;
- (id)_childSectionsForMenuComponent:(id)component selectedIndex:(int64_t)index;
- (id)_collectionViewSublayouts;
- (id)_createSectionsForExpandPageComponent:(id)component context:(id)context newSections:(id)sections sectionCount:(int64_t)count sectionsByViewElement:(id)element updateStyle:(int64_t)style;
- (id)_currentBackdropGroupName;
- (id)_defaultSectionForGridComponent:(id)component;
- (id)_defaultSectionForSwooshComponent:(id)component;
- (id)_expandContextForMenuComponent:(id)component;
- (id)_impressionableViewElements;
- (id)_menuContextForMenuComponent:(id)component;
- (id)_newSectionContext;
- (id)_newSectionsWithPageComponent:(id)component;
- (id)_newSectionsWithPageComponents:(id)components;
- (id)_newStorePageCollectionViewLayout;
- (id)_prepareLayoutForSections;
- (id)_splitForSectionIndex:(int64_t)index;
- (id)_textLayoutCache;
- (id)_visibleMetricsImpressionsString;
- (id)backgroundColorForSection:(int64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)defaultSectionForComponent:(id)component;
- (id)indexPathsForGradientItemsInCollectionView:(id)view layout:(id)layout;
- (id)indexPathsForPinningItemsInCollectionView:(id)view layout:(id)layout;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (int64_t)collectionView:(id)view layout:(id)layout pinningGroupForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view layout:(id)layout pinningStyleForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view layout:(id)layout pinningTransitionStyleForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_applyColorScheme:(id)scheme toIndexBarControl:(id)control;
- (void)_beginActiveImpressionsForImpressionableViewElements;
- (void)_deselectCellsForAppearance:(BOOL)appearance;
- (void)_endAllPendingActiveImpression;
- (void)_endIgnoringSectionChanges;
- (void)_entityProviderDidInvalidateNotification:(id)notification;
- (void)_enumerateSectionContextsUsingBlock:(id)block;
- (void)_enumerateVisibleSectionsUsingBlock:(id)block;
- (void)_handleTap:(id)tap;
- (void)_insertSectionsWithComponents:(id)components afterSection:(id)section;
- (void)_invalidateIfLastKnownWidthChanged;
- (void)_invalidateLayoutWithNewSize:(CGSize)size transitionCoordinator:(id)coordinator;
- (void)_longPressAction:(id)action;
- (void)_pageSectionDidDismissOverlayController:(id)controller;
- (void)_registerForNotificationsForEntityProvider:(id)provider;
- (void)_reloadCollectionView;
- (void)_reloadRelevantEntityProviders;
- (void)_scrollFirstAppearanceSectionToView;
- (void)_setActiveProductPageOverlayController:(id)controller;
- (void)_setPageSize:(CGSize)size;
- (void)_setRendersWithParallax:(BOOL)parallax;
- (void)_setRendersWithPerspective:(BOOL)perspective;
- (void)_setSelectedIndex:(int64_t)index forMenuSection:(id)section;
- (void)_startRefresh:(id)refresh;
- (void)_unregisterForNotificationsForEntityProvider:(id)provider;
- (void)_updateCollectionViewWithUpdates:(id)updates;
- (void)_updateSectionsAfterMenuChange;
- (void)_updateSectionsForIndex:(int64_t)index menuSection:(id)section;
- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndEditingItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view editorialView:(id)editorialView didSelectLink:(id)link;
- (void)collectionView:(id)view expandEditorialForLabelElement:(id)element indexPath:(id)path;
- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes;
- (void)collectionView:(id)view performDefaultActionForViewElement:(id)element indexPath:(id)path;
- (void)collectionView:(id)view willBeginEditingItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)dismissOverlays;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)invalidateAndReload;
- (void)itemCollectionView:(id)view didConfirmItemOfferForCell:(id)cell;
- (void)itemCollectionView:(id)view didTapVideoForCollectionViewCell:(id)cell;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)layoutCacheDidFinishBatch:(id)batch;
- (void)loadView;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)reloadSections:(id)sections;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActiveMetricsImpressionSession:(id)session;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setIndexBarControl:(id)control;
- (void)setMetricsController:(id)controller;
- (void)setPinningTransitionStyle:(int64_t)style;
- (void)setSKUIStackedBar:(id)bar;
- (void)setSectionsWithPageComponents:(id)components;
- (void)setSectionsWithSplitsDescription:(id)description;
- (void)setUsePullToRefresh:(BOOL)refresh;
- (void)showOverlayWithProductPage:(id)page metricsPageEvent:(id)event;
- (void)skuiCollectionViewWillLayoutSubviews:(id)subviews;
- (void)skui_viewWillAppear:(BOOL)appear;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view;
@end

@implementation SKUIStorePageSectionsViewController

- (SKUIStorePageSectionsViewController)initWithLayoutStyle:(int64_t)style
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
    v5->_layoutStyle = style;
    v5->_itemsChangedStateWhileDisappeared = 0;
    [(SKUIStorePageSectionsViewController *)v5 setRestorationClass:objc_opt_class()];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(SKUIStorePageSectionsViewController *)v6 setRestorationIdentifier:v8];

    v9 = +[SKUIItemStateCenter defaultCenter];
    [v9 addObserver:v6];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__contentSizeChangeNotification_ name:*MEMORY[0x277D76810] object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];
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
    _newStorePageCollectionViewLayout = [(SKUIStorePageSectionsViewController *)self _newStorePageCollectionViewLayout];
    v5 = [SKUICollectionView alloc];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v7 = [(SKUICollectionView *)v5 initWithFrame:_newStorePageCollectionViewLayout collectionViewLayout:?];
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

    backgroundColor = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    v10 = backgroundColor;
    if (backgroundColor)
    {
      systemBackgroundColor = backgroundColor;
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    }

    v12 = systemBackgroundColor;

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

- (id)defaultSectionForComponent:(id)component
{
  componentCopy = component;
  viewElement2 = 0;
  switch([componentCopy componentType])
  {
    case 1:
      v6 = SKUIAccountButtonsSection;
      goto LABEL_27;
    case 3:
      viewElement = [componentCopy viewElement];

      if (viewElement)
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
      v10 = [(SKUIStorePageSectionsViewController *)self _defaultSectionForGridComponent:componentCopy];
      goto LABEL_28;
    case 9:
      viewElement2 = [componentCopy viewElement];

      if (viewElement2)
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
      v10 = [(SKUIStorePageSectionsViewController *)self _defaultSectionForSwooshComponent:componentCopy];
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
      viewElement3 = [componentCopy viewElement];
      isDynamicContainer = [viewElement3 isDynamicContainer];

      if (isDynamicContainer)
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
      v10 = [[v6 alloc] initWithPageComponent:componentCopy];
LABEL_28:
      viewElement2 = v10;
      break;
    default:
      break;
  }

  return viewElement2;
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

  _collectionViewSublayouts = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [_collectionViewSublayouts countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(_collectionViewSublayouts);
        }

        [*(*(&v22 + 1) + 8 * i) invalidateLayout];
      }

      v6 = [_collectionViewSublayouts countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
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
        context = [v16 context];
        [context _setTextLayoutCache:_textLayoutCache];
        [v16 willAppearInContext:context];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [_textLayoutCache commitLayoutRequests];
  [(SKUICollectionView *)self->_collectionView reloadData];
}

- (void)reloadSections:(id)sections
{
  sectionsCopy = sections;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SKUIStorePageSectionsViewController_reloadSections___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = sectionsCopy;
  v6 = sectionsCopy;
  [v5 performWithoutAnimation:v7];
}

- (SKUIResourceLoader)resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SKUIResourceLoader alloc];
    clientContext = [(SKUIViewController *)self clientContext];
    v6 = [(SKUIResourceLoader *)v4 initWithClientContext:clientContext];

    v7 = SKUIResourceLoaderGetNameForObject(self);
    [(SKUIResourceLoader *)v6 setName:v7];

    [(SKUIStorePageSectionsViewController *)self setResourceLoader:v6];
    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (void)setColorScheme:(id)scheme
{
  if (self->_colorScheme != scheme)
  {
    v4 = [scheme copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__SKUIStorePageSectionsViewController_setColorScheme___block_invoke;
    v11[3] = &unk_2781FA7D8;
    v11[4] = self;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v11];
    backgroundColor = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    v7 = backgroundColor;
    if (backgroundColor)
    {
      systemBackgroundColor = backgroundColor;
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    }

    v9 = systemBackgroundColor;

    [(SKUICollectionView *)self->_collectionView setBackgroundColor:v9];
    if ([(SKUIStorePageSectionsViewController *)self isViewLoaded])
    {
      view = [(SKUIStorePageSectionsViewController *)self view];
      [view setBackgroundColor:v9];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_delegateWantsDidScroll = v5 & 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_delegateWantsWillScrollToOffsetVisibleRange = objc_opt_respondsToSelector() & 1;
}

- (void)setIndexBarControl:(id)control
{
  controlCopy = control;
  if (self->_indexBarControl != controlCopy)
  {
    v6 = controlCopy;
    objc_storeStrong(&self->_indexBarControl, control);
    [(SKUICollectionView *)self->_collectionView setIndexBarControl:self->_indexBarControl];
    controlCopy = v6;
  }
}

- (void)setActiveMetricsImpressionSession:(id)session
{
  sessionCopy = session;
  if (self->_activeMetricsImpressionSession != sessionCopy)
  {
    objc_storeStrong(&self->_activeMetricsImpressionSession, session);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__SKUIStorePageSectionsViewController_setActiveMetricsImpressionSession___block_invoke;
    v6[3] = &unk_2781FA7D8;
    v7 = sessionCopy;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v6];
  }
}

- (void)setPinningTransitionStyle:(int64_t)style
{
  if (self->_pinningTransitionStyle != style)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_pinningTransitionStyle = style;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SKUIStorePageSectionsViewController_setPinningTransitionStyle___block_invoke;
    v7[3] = &unk_2781FA7D8;
    v7[4] = self;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v7];
    collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)setMetricsController:(id)controller
{
  controllerCopy = controller;
  if (self->_metricsController != controllerCopy)
  {
    objc_storeStrong(&self->_metricsController, controller);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SKUIStorePageSectionsViewController_setMetricsController___block_invoke;
    v6[3] = &unk_2781FA7D8;
    v7 = controllerCopy;
    [(SKUIStorePageSectionsViewController *)self _enumerateSectionContextsUsingBlock:v6];
  }
}

- (void)setSectionsWithPageComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy)
  {
    v4 = objc_alloc_init(SKUIStorePageSplitsDescription);
    v5 = objc_alloc_init(SKUIStorePageSplit);
    [(SKUIStorePageSplit *)v5 setPageComponents:componentsCopy];
    [(SKUIStorePageSplitsDescription *)v4 setTopSplit:v5];
    [(SKUIStorePageSectionsViewController *)self setSectionsWithSplitsDescription:v4];
  }

  else
  {
    [(SKUIStorePageSectionsViewController *)self setSectionsWithSplitsDescription:0];
  }
}

- (void)setSectionsWithSplitsDescription:(id)description
{
  v59 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v6 = descriptionCopy;
  if (self->_ignoreSectionsChangeCount < 1)
  {
    if (self->_splitsDescription != descriptionCopy)
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
            pageComponent = [v11 pageComponent];
            viewElement = [pageComponent viewElement];
            persistenceKey = [viewElement persistenceKey];

            if (persistenceKey)
            {
              [v52[5] setObject:v11 forKey:persistenceKey];
            }
          }

          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v8);
      }

      numberOfSplits = [(SKUIStorePageSplitsDescription *)self->_splitsDescription numberOfSplits];
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

      numberOfSplits2 = [(SKUIStorePageSplitsDescription *)self->_splitsDescription numberOfSplits];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      if (self->_collectionView && self->_didInitialReload && (v23 = numberOfSplits2, [v52[5] count]) && numberOfSplits > 1 != v23 < 2)
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

  else if (descriptionCopy)
  {
    if (self->_deferredSplitsDescription != descriptionCopy)
    {
      objc_storeStrong(&self->_deferredSplitsDescription, description);
    }
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    deferredSplitsDescription = self->_deferredSplitsDescription;
    self->_deferredSplitsDescription = null;
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

- (void)setSKUIStackedBar:(id)bar
{
  barCopy = bar;
  stackedBar = self->_stackedBar;
  if (stackedBar != barCopy)
  {
    v7 = barCopy;
    [(SKUIStackedBar *)stackedBar removeFromSuperview];
    objc_storeStrong(&self->_stackedBar, bar);
    barCopy = v7;
  }

  MEMORY[0x2821F96F8](stackedBar, barCopy);
}

- (void)showOverlayWithProductPage:(id)page metricsPageEvent:(id)event
{
  pageCopy = page;
  eventCopy = event;
  if (self->_overlayController)
  {
    [(SKUIStorePageSectionsViewController *)self dismissOverlays];
  }

  v7 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:self];
  overlayController = self->_overlayController;
  self->_overlayController = v7;

  v9 = self->_overlayController;
  clientContext = [(SKUIViewController *)self clientContext];
  [(SKUIProductPageOverlayController *)v9 setClientContext:clientContext];

  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:self];
  [(SKUIProductPageOverlayController *)self->_overlayController showWithInitialProductPage:pageCopy metricsPageEvent:eventCopy];
  [(SKUIStorePageSectionsViewController *)self _setActiveProductPageOverlayController:self->_overlayController];
}

- (void)setUsePullToRefresh:(BOOL)refresh
{
  refreshControl = self->_refreshControl;
  if (refresh)
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

- (void)_startRefresh:(id)refresh
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

- (void)_longPressAction:(id)action
{
  actionCopy = action;
  v4 = [actionCopy state] == 1;
  v5 = actionCopy;
  if (v4)
  {
    [actionCopy locationInView:self->_collectionView];
    v6 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
    v7 = v6;
    if (v6)
    {
      v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
      [v8 collectionViewDidLongPressItemAtIndexPath:v7];
    }

    v5 = actionCopy;
  }
}

- (void)skui_viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIStorePageSectionsViewController *)self _deselectCellsForAppearance:?];
  v5.receiver = self;
  v5.super_class = SKUIStorePageSectionsViewController;
  [(SKUIViewController *)&v5 skui_viewWillAppear:appearCopy];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overlayURLs"];
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
  [(SKUIStorePageSectionsViewController *)&v15 decodeRestorableStateWithCoder:coderCopy];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_activeOverlayController);
  uRLs = [WeakRetained URLs];

  if ([uRLs count])
  {
    [coderCopy encodeObject:uRLs forKey:@"overlayURLs"];
  }

  v7.receiver = self;
  v7.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v7 encodeRestorableStateWithCoder:coderCopy];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v19 = [v3 initWithFrame:?];

  [(SKUIStorePageSectionsViewController *)self setView:v19];
  collectionView = [(SKUIStorePageSectionsViewController *)self collectionView];
  [collectionView setAutoresizingMask:18];
  [v19 bounds];
  [collectionView setFrame:?];
  [v19 addSubview:collectionView];
  backgroundColor = [collectionView backgroundColor];
  [v19 setBackgroundColor:backgroundColor];

  if (self->_stackedBar)
  {
    [v19 bounds];
    v8 = v7;
    v10 = v9;
    v11 = 0.0;
    if ([(SKUIStackedBar *)self->_stackedBar splitViewStyle])
    {
      navigationController = [(SKUIStorePageSectionsViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      Height = CGRectGetHeight(v21);

      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] statusBarFrame];
      v16 = CGRectGetHeight(v22);

      v11 = Height + v16;
    }

    [(SKUIStackedBar *)self->_stackedBar setAutoresizingMask:2];
    [(SKUIStackedBar *)self->_stackedBar setFrame:v8, v11, v10, 0.0];
    [v19 addSubview:self->_stackedBar];
  }

  if (__orbSupported == 1)
  {
    v17 = [(SKUIStorePageSectionsViewController *)self registerForPreviewingWithDelegate:self sourceView:collectionView];
    viewControllerPreviewing = self->_viewControllerPreviewing;
    self->_viewControllerPreviewing = v17;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  initialOverlayURLs = self->_initialOverlayURLs;
  if (initialOverlayURLs)
  {
    if (!self->_overlayController)
    {
      v6 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:self];
      overlayController = self->_overlayController;
      self->_overlayController = v6;

      v8 = self->_overlayController;
      clientContext = [(SKUIViewController *)self clientContext];
      [(SKUIProductPageOverlayController *)v8 setClientContext:clientContext];

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
  [(SKUIStorePageSectionsViewController *)&v10 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v19 = *MEMORY[0x277D85DE8];
  [(SKUIStorePageSectionsViewController *)self _invalidateIfLastKnownWidthChanged];
  collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  _currentBackdropGroupName = [(SKUIStorePageSectionsViewController *)self _currentBackdropGroupName];
  [collectionViewLayout setBackdropGroupName:_currentBackdropGroupName];

  [(SKUIStorePageSectionsViewController *)self _deselectCellsForAppearance:appearCopy];
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

    _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [_textLayoutCache commitLayoutRequests];

    self->_itemsChangedStateWhileDisappeared = 0;
  }

  v13.receiver = self;
  v13.super_class = SKUIStorePageSectionsViewController;
  [(SKUIViewController *)&v13 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SKUIStorePageSectionsViewController *)self _invalidateIfLastKnownWidthChanged];
  v5 = MEMORY[0x277CCABB0];
  view = [(SKUIStorePageSectionsViewController *)self view];
  [view bounds];
  *&v8 = v7;
  v9 = [v5 numberWithFloat:v8];
  lastKnownWidth = self->_lastKnownWidth;
  self->_lastKnownWidth = v9;

  [(SKUICollectionView *)self->_collectionView setClipsToBounds:1];
  [(SKUIStorePageSectionsViewController *)self _endAllPendingActiveImpression];
  v11.receiver = self;
  v11.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v11 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v4 viewDidDisappear:disappear];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x277CCABB0];
  coordinatorCopy = coordinator;
  view = [(SKUIStorePageSectionsViewController *)self view];
  [view bounds];
  *&v11 = v10;
  v12 = [v7 numberWithFloat:v11];
  lastKnownWidth = self->_lastKnownWidth;
  self->_lastKnownWidth = v12;

  v14.receiver = self;
  v14.super_class = SKUIStorePageSectionsViewController;
  [(SKUIStorePageSectionsViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = SKUIStorePageSectionsViewController;
  changeCopy = change;
  [(SKUIStorePageSectionsViewController *)&v12 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(SKUIStorePageSectionsViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = collectionViewLayout;
      indexPathsForPinningItems = [v9 indexPathsForPinningItems];
      if ([indexPathsForPinningItems count])
      {
        v11 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
        [v11 setInvalidateFlowLayoutAttributes:0];
        [v11 setInvalidateFlowLayoutDelegateMetrics:0];
        [v11 setInvalidateItemPinningLayoutInformation:0];
        [v11 setInvalidatePinnedBackdropViewStyle:1];
        [v11 invalidateDecorationElementsOfKind:0x28280D8E8 atIndexPaths:indexPathsForPinningItems];
        [v9 invalidateLayoutWithContext:v11];
      }
    }
  }
}

- (void)collectionView:(id)view editorialView:(id)editorialView didSelectLink:(id)link
{
  linkCopy = link;
  editorialViewCopy = editorialView;
  viewCopy = view;
  [editorialViewCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  superview = [editorialViewCopy superview];

  [viewCopy convertRect:superview fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  v23 = [viewCopy indexPathForItemAtPoint:{v20, v22}];

  if (v23)
  {
    v24 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v23 section]);
    [v24 showPageWithLink:linkCopy];
  }
}

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SKUIStorePageSectionsViewController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
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

- (void)layoutCacheDidFinishBatch:(id)batch
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

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  if (self->_overlayController == dismiss)
  {
    [(SKUIStorePageSectionsViewController *)self _setActiveProductPageOverlayController:0];
    [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
    overlayController = self->_overlayController;
    self->_overlayController = 0;

    if (![(NSMutableArray *)self->_sections count])
    {
      v6 = SKUIViewControllerGetAncestorTabBarController(self);
      transientViewController = [v6 transientViewController];
      if (transientViewController && SKUIViewControllerIsDescendent(self, transientViewController))
      {
        [v6 setTransientViewController:0 animated:0];
      }
    }
  }
}

- (id)backgroundColorForSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_sections count]<= section)
  {
    backgroundColorForSection = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_sections objectAtIndex:section];
    backgroundColorForSection = [v5 backgroundColorForSection];
  }

  return backgroundColorForSection;
}

- (BOOL)collectionView:(id)view canScrollCellAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  indexPathOfEditedCell = self->_indexPathOfEditedCell;
  if (!indexPathOfEditedCell || (v10 = [pathCopy compare:?], indexPathOfEditedCell = self->_indexPathOfEditedCell, !v10))
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

- (void)collectionView:(id)view didEndEditingItemAtIndexPath:(id)path
{
  indexPathOfEditedCell = self->_indexPathOfEditedCell;
  self->_indexPathOfEditedCell = 0;

  collectionViewTapGestureRecognizer = self->_collectionViewTapGestureRecognizer;

  [(UITapGestureRecognizer *)collectionViewTapGestureRecognizer setEnabled:0];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout pinningContentInsetForItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v7 pinningContentInsetForItemAtIndexPath:pathCopy];
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

- (int64_t)collectionView:(id)view layout:(id)layout pinningStyleForItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v8 = [v7 pinningStyleForItemAtIndexPath:pathCopy];

  return v8;
}

- (int64_t)collectionView:(id)view layout:(id)layout pinningGroupForItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v8 = [v7 pinningGroupForItemAtIndexPath:pathCopy];

  return v8;
}

- (int64_t)collectionView:(id)view layout:(id)layout pinningTransitionStyleForItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v8 = [v7 pinningTransitionStyleForItemAtIndexPath:pathCopy];

  return v8;
}

- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (![attributesCopy representedElementCategory])
  {
    indexPath = [attributesCopy indexPath];
    v7 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [indexPath section]);
    [v7 collectionViewWillApplyLayoutAttributes:attributesCopy];
  }
}

- (void)collectionView:(id)view willBeginEditingItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_indexPathOfEditedCell, path);
  indexPathsForSelectedItems = [(SKUICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v7 = indexPathsForSelectedItems;
  if (indexPathsForSelectedItems && [indexPathsForSelectedItems count])
  {
    collectionView = self->_collectionView;
    firstObject = [v7 firstObject];
    [(SKUICollectionView *)collectionView deselectItemAtIndexPath:firstObject animated:0];
  }

  [(UITapGestureRecognizer *)self->_collectionViewTapGestureRecognizer setEnabled:1];
}

- (id)indexPathsForPinningItemsInCollectionView:(id)view layout:(id)layout
{
  viewCopy = view;
  layoutCopy = layout;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_215F8ACD7;
  _collectionViewSublayouts = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  if ([_collectionViewSublayouts count] > 1)
  {
    splitsDescription = self->_splitsDescription;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__SKUIStorePageSectionsViewController_indexPathsForPinningItemsInCollectionView_layout___block_invoke;
    v17[3] = &unk_2781FA8A0;
    v18 = layoutCopy;
    v19 = _collectionViewSublayouts;
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
      indexPathsForPinningItems = [v14 indexPathsForPinningItems];
      if ([indexPathsForPinningItems count])
      {
        if (!v13)
        {
          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(indexPathsForPinningItems, "count")}];
        }

        [v13 addObjectsFromArray:indexPathsForPinningItems];
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

- (id)indexPathsForGradientItemsInCollectionView:(id)view layout:(id)layout
{
  viewCopy = view;
  layoutCopy = layout;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_215F8ACD7;
  _collectionViewSublayouts = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  if ([_collectionViewSublayouts count] > 1)
  {
    splitsDescription = self->_splitsDescription;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SKUIStorePageSectionsViewController_indexPathsForGradientItemsInCollectionView_layout___block_invoke;
    v17[3] = &unk_2781FA8A0;
    v18 = layoutCopy;
    v19 = _collectionViewSublayouts;
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
      indexPathsForBackgroundItems = [v14 indexPathsForBackgroundItems];
      if ([indexPathsForBackgroundItems count])
      {
        if (!v13)
        {
          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(indexPathsForBackgroundItems, "count")}];
        }

        [v13 addObjectsFromArray:indexPathsForBackgroundItems];
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(NSMutableArray *)self->_sections objectAtIndex:index, layout];
  if ([(NSMutableArray *)self->_sections count]<= (index + 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_sections objectAtIndex:?];
  }

  pageComponent = [layout pageComponent];
  viewElement = [pageComponent viewElement];
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    pageComponent2 = [v8 pageComponent];
    viewElement2 = [pageComponent2 viewElement];
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

  [layout sectionContentInset];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [-[NSMutableArray objectAtIndex:](self->_sections objectAtIndex:{objc_msgSend(path, "section", view, layout)), "cellSizeForIndexPath:", path}];
  v8 = v7;
  if (Width < 0.00000011920929)
  {
    [view bounds];
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

- (BOOL)performTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy hasPrefix:@"Scroll"])
  {
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [date dateByAddingTimeInterval:4.0];
    [mainRunLoop runUntilDate:v10];

    v11 = [optionsCopy objectForKeyedSubscript:@"iterations"];
    v12 = [optionsCopy objectForKeyedSubscript:@"offset"];
    collectionView = self->_collectionView;
    intValue = [v11 intValue];
    intValue2 = [v12 intValue];
    [(SKUICollectionView *)self->_collectionView contentSize];
    [(SKUICollectionView *)collectionView _performScrollTest:nameCopy iterations:intValue delta:intValue2 length:v16];
  }

  return 1;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 cellForIndexPath:pathCopy];
  metricsController = [(SKUIStorePageSectionsViewController *)self metricsController];
  activeImpressionsSession = [metricsController activeImpressionsSession];

  if (activeImpressionsSession)
  {
    [v8 addImpressionsForIndexPath:pathCopy toSession:activeImpressionsSession];
  }

  if (!v9)
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:pathCopy];
  }

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  numberOfCells = [v4 numberOfCells];

  return numberOfCells;
}

- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  infoCopy = info;
  elementCopy = element;
  v12 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v12 collectionViewDidConfirmButtonElement:elementCopy withClickInfo:infoCopy forItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section < [(NSMutableArray *)self->_sections count])
  {
    v9 = [(NSMutableArray *)self->_sections objectAtIndex:section];
    [v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
    [v9 registerContextActionsForCell:cellCopy indexPath:pathCopy viewController:self];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section < [(NSMutableArray *)self->_sections count])
  {
    v9 = [(NSMutableArray *)self->_sections objectAtIndex:section];
    [v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
    [v9 unregisterContextActionsForCell:cellCopy indexPath:pathCopy viewController:self];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v6 collectionViewDidSelectItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view expandEditorialForLabelElement:(id)element indexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  elementCopy = element;
  v9 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v9 expandEditorialForLabelElement:elementCopy indexPath:pathCopy];
}

- (void)collectionView:(id)view performDefaultActionForViewElement:(id)element indexPath:(id)path
{
  sections = self->_sections;
  elementCopy = element;
  v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [path section]);
  [v8 performDefaultActionForViewElement:elementCopy];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v7 = [v6 collectionViewShouldHighlightItemAtIndexPath:pathCopy];

  return v7;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v7 = [v6 collectionViewShouldSelectItemAtIndexPath:pathCopy];

  return v7;
}

- (void)itemCollectionView:(id)view didConfirmItemOfferForCell:(id)cell
{
  v5 = [view indexPathForCell:cell];
  if (v5)
  {
    v7 = v5;
    v6 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v5 section]);
    [v6 collectionViewDidConfirmItemOfferAtIndexPath:v7];

    v5 = v7;
  }
}

- (void)itemCollectionView:(id)view didTapVideoForCollectionViewCell:(id)cell
{
  v5 = [view indexPathForCell:cell];
  if (v5)
  {
    v7 = v5;
    v6 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v5 section]);
    [v6 collectionViewDidTapVideoAtIndexPath:v7];

    v5 = v7;
  }
}

- (void)skuiCollectionViewWillLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  view = [(SKUIStorePageSectionsViewController *)self view];
  [view bounds];
  [(SKUIStorePageSectionsViewController *)self _setPageSize:v6, v7];

  lastInterfaceOrientation = self->_lastInterfaceOrientation;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (lastInterfaceOrientation == [mEMORY[0x277D75128] statusBarOrientation])
  {
    didInitialReload = self->_didInitialReload;

    if (didInitialReload)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __76__SKUIStorePageSectionsViewController_skuiCollectionViewWillLayoutSubviews___block_invoke;
      v62[3] = &unk_2781F80F0;
      v62[4] = self;
      [mEMORY[0x277D75128]2 _performBlockAfterCATransactionCommits:v62];

      goto LABEL_6;
    }
  }

  else
  {
  }

  mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
  self->_lastInterfaceOrientation = [mEMORY[0x277D75128]3 statusBarOrientation];

  self->_didInitialReload = 1;
  v13 = MEMORY[0x277CCABB0];
  view2 = [(SKUIStorePageSectionsViewController *)self view];
  [view2 bounds];
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

  leftSplit = [(SKUIStorePageSplitsDescription *)self->_splitsDescription leftSplit];
  if (leftSplit && (-[SKUIStorePageSplitsDescription rightSplit](self->_splitsDescription, "rightSplit"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20) && ([leftSplit dividerColor], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
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

        [subviewsCopy addSubview:self->_splitsDividerView];
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
      _collectionViewSublayouts = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
      splitsDescription = self->_splitsDescription;
      v49 = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v51 = __76__SKUIStorePageSectionsViewController_skuiCollectionViewWillLayoutSubviews___block_invoke_2;
      v52 = &unk_2781FA8A0;
      v53 = leftSplit;
      v29 = _collectionViewSublayouts;
      v54 = v29;
      v55 = &v56;
      [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:&v49];
      [subviewsCopy frame];
      v31 = v30;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
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
      [subviewsCopy contentOffset];
      v44 = v43;
      [subviewsCopy contentInset];
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

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if ([(SKUIResourceLoader *)self->_resourceLoader isIdle])
  {
    [(SKUIStorePageSectionsViewController *)self _prefetchArtworkForVisibleSections];
  }

  if (([deceleratingCopy isDragging] & 1) == 0 && (objc_msgSend(deceleratingCopy, "isTracking") & 1) == 0 && (objc_msgSend(deceleratingCopy, "isDecelerating") & 1) == 0)
  {
    [(SKUIStackedBar *)self->_stackedBar animateToFullSizeIfNecessary];
  }

  self->_scrollOffsetHasChanged = 1;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    if ([(SKUIResourceLoader *)self->_resourceLoader isIdle])
    {
      [(SKUIStorePageSectionsViewController *)self _prefetchArtworkForVisibleSections];
    }

    [(SKUIStackedBar *)self->_stackedBar animateToFullSizeIfNecessary];
  }

  self->_scrollOffsetHasChanged = 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
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
  [scrollCopy contentOffset];
  [(SKUIStackedBar *)stackedBar setOffset:v7];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = offset->x;
  y = offset->y;
  v8 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:dragging, offset->x, y];
  item = [v8 item];
  section = [v8 section];
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
  item2 = [v17 item];
  section2 = [v17 section];
  v30 = v8;
  section3 = [v8 section];
  v21 = [(NSMutableArray *)self->_sections count]- 1;
  section4 = [v17 section];
  if (v21 >= section4)
  {
    v23 = section4;
  }

  else
  {
    v23 = v21;
  }

  if (section3 <= v23)
  {
    do
    {
      v24 = [(NSMutableArray *)self->_sections objectAtIndex:section3];
      v31 = section;
      v32 = item;
      v33 = section2;
      v34 = item2;
      [v24 collectionViewWillScrollToOffset:&v31 visibleRange:{x, y}];

      v25 = [(NSMutableArray *)self->_sections count]- 1;
      section5 = [v17 section];
      if (v25 >= section5)
      {
        v27 = section5;
      }

      else
      {
        v27 = v25;
      }
    }

    while (section3++ < v27);
  }

  if (self->_delegateWantsWillScrollToOffsetVisibleRange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v31 = section;
    v32 = item;
    v33 = section2;
    v34 = item2;
    [WeakRetained sectionsViewController:self willScrollToOffset:&v31 visibleRange:{x, y}];
  }

  self->_scrollOffsetHasChanged = 1;
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextCopy = context;
  sourceView = [contextCopy sourceView];
  [(SKUICollectionView *)self->_collectionView convertPoint:sourceView fromView:x, y];
  v9 = [(SKUICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
  section = [v9 section];
  if (section >= [(NSMutableArray *)self->_sections count])
  {
    v12 = 0;
  }

  else
  {
    v11 = [(NSMutableArray *)self->_sections objectAtIndex:section];
    v12 = [v11 previewingContext:contextCopy viewControllerForLocation:{x, y}];
  }

  return v12;
}

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  navigationController = [(SKUIStorePageSectionsViewController *)self navigationController];
  parentViewController = [(SKUIStorePageSectionsViewController *)self parentViewController];
  if (parentViewController)
  {
    while (1)
    {
      navigationController2 = [parentViewController navigationController];
      clientContext = [(SKUIViewController *)self clientContext];
      applicationController = [clientContext applicationController];
      rootViewController = [applicationController rootViewController];
      IsDescendent = SKUIViewControllerIsDescendent(navigationController2, rootViewController);

      if (!IsDescendent)
      {

        goto LABEL_11;
      }

      if (navigationController2)
      {
        break;
      }

      if ([parentViewController conformsToProtocol:&unk_2829AECD8])
      {
        overlayNavigationController = [parentViewController overlayNavigationController];
        goto LABEL_7;
      }

LABEL_8:
      v8ParentViewController = [parentViewController parentViewController];

      parentViewController = v8ParentViewController;
      if (!v8ParentViewController)
      {
        goto LABEL_11;
      }
    }

    overlayNavigationController = navigationController2;
LABEL_7:
    v15 = overlayNavigationController;

    navigationController = v15;
    goto LABEL_8;
  }

LABEL_11:
  v17 = controllerCopy;
  previewCommitViewController = v17;
  if ([v17 conformsToProtocol:&unk_282996A00])
  {
    previewCommitViewController = [v17 previewCommitViewController];

    if (objc_opt_respondsToSelector())
    {
      [v17 prepareForCommit];
    }
  }

  [navigationController pushViewController:previewCommitViewController animated:1];
}

- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  viewCopy = view;
  collectionView = [(SKUIStorePageSectionsViewController *)self collectionView];
  [collectionView convertPoint:viewCopy fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  collectionView2 = [(SKUIStorePageSectionsViewController *)self collectionView];
  v16 = [collectionView2 indexPathForItemAtPoint:{v12, v14}];

  collectionView3 = [(SKUIStorePageSectionsViewController *)self collectionView];
  v18 = [collectionView3 cellForItemAtIndexPath:v16];

  presentationController = [controllerCopy presentationController];
  [presentationController setSourceView:v18];
  [v18 bounds];
  [presentationController setSourceRect:?];
  section = [v16 section];
  if (section < [(NSMutableArray *)self->_sections count])
  {
    v21 = [(NSMutableArray *)self->_sections objectAtIndex:section];
    [v21 willPresentPreviewViewController:controllerCopy forLocation:viewCopy inSourceView:{x, y}];
  }
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v4 = objc_alloc_init(self);
  v5 = +[SKUIStateRestorationContext sharedContext];
  clientContext = [v5 clientContext];
  [v4 setClientContext:clientContext];

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

- (void)_insertSectionsWithComponents:(id)components afterSection:(id)section
{
  v27 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v7 = [(NSMutableArray *)self->_sections indexOfObjectIdenticalTo:section];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v20 = [(SKUIStorePageSectionsViewController *)self _splitForSectionIndex:v7];
    sectionContext = [v20 sectionContext];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = componentsCopy;
    v10 = componentsCopy;
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
            [v18 _setContext:sectionContext];
            [v18 willAppearInContext:sectionContext];
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
    _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [_textLayoutCache commitLayoutRequests];

    [(SKUIStorePageSectionsViewController *)self _updateSectionsAfterMenuChange];
    componentsCopy = v21;
  }
}

- (void)_pageSectionDidDismissOverlayController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_activeOverlayController);
  controllerCopy = controller;

  if (WeakRetained == controllerCopy)
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

- (void)_setActiveProductPageOverlayController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_activeOverlayController, controllerCopy);
}

- (void)_setRendersWithPerspective:(BOOL)perspective
{
  if (self->_rendersWithPerspective != perspective)
  {
    self->_rendersWithPerspective = perspective;
    collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout setRendersWithPerspective:self->_rendersWithPerspective];
    [(SKUICollectionView *)self->_collectionView setClipsToBounds:!self->_rendersWithPerspective];
    if (self->_rendersWithPerspective)
    {
      SKUICollectionViewUpdatePerspectiveCells(self->_collectionView, 0);
    }
  }
}

- (void)_setRendersWithParallax:(BOOL)parallax
{
  if (self->_rendersWithParallax != parallax)
  {
    self->_rendersWithParallax = parallax;
  }
}

- (void)_setSelectedIndex:(int64_t)index forMenuSection:(id)section
{
  v28 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  pageComponent = [sectionCopy pageComponent];
  v8 = [(SKUIStorePageSectionsViewController *)self _menuContextForMenuComponent:pageComponent];
  selectedIndex = [v8 selectedIndex];
  if (selectedIndex != index)
  {
    v10 = [pageComponent childComponentsForIndex:selectedIndex];
    v20 = [v10 count];

    v22 = sectionCopy;
    sectionIndex = [sectionCopy sectionIndex];
    v21 = [(SKUIStorePageSectionsViewController *)self _splitForSectionIndex:?];
    sectionContext = [v21 sectionContext];
    v12 = [(SKUIStorePageSectionsViewController *)self _childSectionsForMenuComponent:pageComponent selectedIndex:index];
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
          [v17 _setContext:sectionContext];
          [v17 willAppearInContext:sectionContext];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)self->_sections replaceObjectsInRange:sectionIndex + 1 withObjectsFromArray:v20, v12];
    [v8 setSelectedIndex:index];
    [v21 setNumberOfPageSections:{objc_msgSend(v21, "numberOfPageSections") - v20 + objc_msgSend(v12, "count")}];
    _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [_textLayoutCache commitLayoutRequests];

    [(SKUIStorePageSectionsViewController *)self _updateSectionsAfterMenuChange];
    sectionCopy = v22;
  }
}

- (void)_updateSectionsForIndex:(int64_t)index menuSection:(id)section
{
  v25 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  pageComponent = [sectionCopy pageComponent];
  v8 = [(SKUIStorePageSectionsViewController *)self _menuContextForMenuComponent:pageComponent];
  if ([v8 selectedIndex] == index)
  {
    v9 = [v8 sectionsForIndex:index];
    v10 = [v9 count];

    if (!v10)
    {
      v19 = -[SKUIStorePageSectionsViewController _splitForSectionIndex:](self, "_splitForSectionIndex:", [sectionCopy sectionIndex]);
      sectionContext = [v19 sectionContext];
      v12 = [(SKUIStorePageSectionsViewController *)self _childSectionsForMenuComponent:pageComponent selectedIndex:index];
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
            [v17 _setContext:sectionContext];
            [v17 willAppearInContext:sectionContext];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      -[NSMutableArray replaceObjectsInRange:withObjectsFromArray:](self->_sections, "replaceObjectsInRange:withObjectsFromArray:", [sectionCopy sectionIndex] + 1, 0, v12);
      [v19 setNumberOfPageSections:{objc_msgSend(v12, "count") + objc_msgSend(v19, "numberOfPageSections")}];
      _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
      [_textLayoutCache commitLayoutRequests];

      [(SKUIStorePageSectionsViewController *)self _updateSectionsAfterMenuChange];
    }
  }
}

- (id)_visibleMetricsImpressionsString
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SKUIMetricsImpressionSession);
  indexPathsForVisibleItems = [(SKUICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v9 section]);
        [v10 addImpressionsForIndexPath:v9 toSession:v3];
      }

      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  impressionsString = [(SKUIMetricsImpressionSession *)v3 impressionsString];

  return impressionsString;
}

- (id)_impressionableViewElements
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SKUIMetricsImpressionSession);
  indexPathsForVisibleItems = [(SKUICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v9 section]);
        [v10 addImpressionsForIndexPath:v9 toSession:v3];
      }

      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  impressionableViewElements = [(SKUIMetricsImpressionSession *)v3 impressionableViewElements];

  return impressionableViewElements;
}

- (void)_handleTap:(id)tap
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

- (void)_entityProviderDidInvalidateNotification:(id)notification
{
  notificationCopy = notification;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __80__SKUIStorePageSectionsViewController__entityProviderDidInvalidateNotification___block_invoke;
  v10 = &unk_2781F80C8;
  v5 = notificationCopy;
  v11 = v5;
  selfCopy = self;
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

- (void)_applyColorScheme:(id)scheme toIndexBarControl:(id)control
{
  controlCopy = control;
  schemeCopy = scheme;
  backgroundColor = [schemeCopy backgroundColor];
  if (backgroundColor)
  {
    [controlCopy setBackgroundColor:backgroundColor];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [controlCopy setBackgroundColor:clearColor];
  }

  primaryTextColor = [schemeCopy primaryTextColor];

  [controlCopy setTintColor:primaryTextColor];
}

- (void)_beginActiveImpressionsForImpressionableViewElements
{
  v15 = *MEMORY[0x277D85DE8];
  _impressionableViewElements = [(SKUIStorePageSectionsViewController *)self _impressionableViewElements];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [_impressionableViewElements countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_impressionableViewElements);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        activeMetricsImpressionSession = [(SKUIStorePageSectionsViewController *)self activeMetricsImpressionSession];
        [activeMetricsImpressionSession beginActiveImpressionForViewElement:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [_impressionableViewElements countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_childSectionsForMenuComponent:(id)component selectedIndex:(int64_t)index
{
  v22 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v7 = [(SKUIStorePageSectionsViewController *)self _menuContextForMenuComponent:componentCopy];
  v8 = [v7 sectionsForIndex:index];
  if ([v8 count])
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];

    v10 = [componentCopy childComponentsForIndex:index];
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
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v7 setSections:array forIndex:index];
  }

  return array;
}

- (id)_collectionViewSublayouts
{
  collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sublayouts = [collectionViewLayout sublayouts];
  }

  else
  {
    sublayouts = 0;
  }

  return sublayouts;
}

- (id)_createSectionsForExpandPageComponent:(id)component context:(id)context newSections:(id)sections sectionCount:(int64_t)count sectionsByViewElement:(id)element updateStyle:(int64_t)style
{
  v80 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  contextCopy = context;
  sectionsCopy = sections;
  elementCopy = element;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 5;
  do
  {
    null = [MEMORY[0x277CBEB68] null];
    [v15 addObject:null];

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

  [componentCopy viewElement];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v67 = v77 = 0u;
  persistenceKey = [v67 persistenceKey];
  flattenedChildren = [persistenceKey flattenedChildren];

  obj = flattenedChildren;
  v64 = [flattenedChildren countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v64)
  {
    v23 = 0;
    v63 = *v75;
    v60 = elementCopy;
    v61 = componentCopy;
    do
    {
      v24 = 0;
      do
      {
        if (*v75 != v63)
        {
          objc_enumerationMutation(obj);
        }

        persistenceKey2 = [*(*(&v74 + 1) + 8 * v24) persistenceKey];
        if (persistenceKey2)
        {
          v26 = [elementCopy objectForKey:persistenceKey2];
          if (v26)
          {
            v27 = v26;
            v65 = v24;
            v28 = [(NSMutableArray *)self->_sections count];
            [v27 setBottomSection:0];
            [v27 setSectionIndex:v28];
            [v27 setTopSection:count == 0];
            v29 = [componentCopy childComponentForIndex:v23];
            v30 = [v27 updateWithContext:contextCopy pageComponent:v29];

            if (v30 == 1)
            {
              v31 = persistenceKey2;
              v32 = v23;
              v33 = 0;
LABEL_35:
              v50 = [v58 objectAtIndex:v33];
              v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v50, "integerValue") + 1}];
              [v58 replaceObjectAtIndex:v33 withObject:v51];

              v23 = v32;
              persistenceKey2 = v31;
              elementCopy = v60;
              componentCopy = v61;
            }

            else if (v30 == 2)
            {
              v31 = persistenceKey2;
              v32 = v23;
              v33 = 1;
              goto LABEL_35;
            }

            [(NSMutableArray *)self->_sections addObject:v27];
            [elementCopy removeObjectForKey:persistenceKey2];
            ++count;
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
          v35 = [componentCopy childComponentForIndex:v23];
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
                [v41 setTopSection:count == 0];
                if (style == 1)
                {
                  [v41 _setContext:contextCopy];
                  [v41 willAppearInContext:contextCopy];
                  [sectionsCopy addObject:v41];
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
                  [sectionsCopy addObject:v41];
                  [(NSMutableArray *)self->_sections addObject:v41];
                }

                ++count;
                ++v34;
              }

              v38 = [v27 countByEnumeratingWithState:&v70 objects:v78 count:16];
            }

            while (v38);

            elementCopy = v60;
            componentCopy = v61;
            v23 = v59;
          }

          else
          {
          }

          goto LABEL_38;
        }

        previousIsOpen = [v67 previousIsOpen];
        if (style == 1 && previousIsOpen)
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
  [v55 replaceObjectAtIndex:2 withObject:elementCopy];
  [v55 replaceObjectAtIndex:3 withObject:sectionsCopy];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [v55 replaceObjectAtIndex:4 withObject:v56];

  return v55;
}

- (id)_currentBackdropGroupName
{
  navigationController = [(SKUIStorePageSectionsViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    _backdropGroupName = [navigationController _backdropGroupName];
  }

  else
  {
    navigationBar = [navigationController navigationBar];
    _backdropGroupName = [navigationBar _backdropViewLayerGroupName];
  }

  return _backdropGroupName;
}

- (id)_defaultSectionForGridComponent:(id)component
{
  componentCopy = component;
  gridType = [componentCopy gridType];
  if (gridType > 6)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << gridType) & 0x3B) != 0)
    {
      v5 = SKUIGridPageSection;
    }

    else if (gridType == 2)
    {
      v5 = SKUIBrickGridPageSection;
    }

    else
    {
      v5 = objc_opt_class();
      viewElement = [componentCopy viewElement];
      isDynamicContainer = [viewElement isDynamicContainer];

      if (isDynamicContainer)
      {
        v5 = objc_opt_class();
      }
    }

    v6 = [[v5 alloc] initWithPageComponent:componentCopy];
  }

  return v6;
}

- (id)_defaultSectionForSwooshComponent:(id)component
{
  componentCopy = component;
  swooshType = [componentCopy swooshType];
  if (swooshType > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(*off_2781FA9F8[swooshType]) initWithPageComponent:componentCopy];
  }

  return v5;
}

- (void)_deselectCellsForAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  v25 = *MEMORY[0x277D85DE8];
  indexPathsForSelectedItems = [(SKUICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [(SKUICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v19 + 1) + 8 * v9++) animated:appearanceCopy];
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v19 objects:v24 count:16];
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

        [*(*(&v15 + 1) + 8 * v14++) deselectItemsAnimated:{appearanceCopy, v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_endAllPendingActiveImpression
{
  activeMetricsImpressionSession = [(SKUIStorePageSectionsViewController *)self activeMetricsImpressionSession];
  [activeMetricsImpressionSession endAllPendingActiveImpression];
}

- (void)_enumerateSectionContextsUsingBlock:(id)block
{
  blockCopy = block;
  splitsDescription = self->_splitsDescription;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SKUIStorePageSectionsViewController__enumerateSectionContextsUsingBlock___block_invoke;
  v7[3] = &unk_2781FA8C8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SKUIStorePageSplitsDescription *)splitsDescription enumerateSplitsUsingBlock:v7];
}

void __75__SKUIStorePageSectionsViewController__enumerateSectionContextsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 sectionContext];
  (*(v6 + 16))(v6, v7, a3, a4);
}

- (void)_enumerateVisibleSectionsUsingBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  indexPathsForVisibleItems = [(SKUICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = indexPathsForVisibleItems;
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
  v14 = blockCopy;
  v12 = blockCopy;
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
    view = [(SKUIStorePageSectionsViewController *)self view];
    [view bounds];
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

- (void)_invalidateLayoutWithNewSize:(CGSize)size transitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v47 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  [(SKUIStorePageSectionsViewController *)self _setPageSize:width, height];
  _collectionViewSublayouts = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [_collectionViewSublayouts countByEnumeratingWithState:&v40 objects:v46 count:16];
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
          objc_enumerationMutation(_collectionViewSublayouts);
        }

        [*(*(&v40 + 1) + 8 * i) invalidateLayout];
      }

      v10 = [_collectionViewSublayouts countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

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
        numberOfCells = [v20 numberOfCells];
        [v20 willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
        if (numberOfCells != [v20 numberOfCells])
        {
          [v14 addIndex:{objc_msgSend(v20, "sectionIndex")}];
        }
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v17);
  }

  _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  [_textLayoutCache commitLayoutRequests];

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

- (id)_expandContextForMenuComponent:(id)component
{
  componentCopy = component;
  v5 = [(NSMapTable *)self->_expandSectionContexts objectForKey:componentCopy];
  if (!v5)
  {
    if (!self->_expandSectionContexts)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      expandSectionContexts = self->_expandSectionContexts;
      self->_expandSectionContexts = v6;
    }

    v5 = objc_alloc_init(SKUIExpandPageSectionContext);
    [(NSMapTable *)self->_expandSectionContexts setObject:v5 forKey:componentCopy];
  }

  return v5;
}

- (id)_menuContextForMenuComponent:(id)component
{
  componentCopy = component;
  v5 = [(NSMapTable *)self->_menuSectionContexts objectForKey:componentCopy];
  if (!v5)
  {
    if (!self->_menuSectionContexts)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      menuSectionContexts = self->_menuSectionContexts;
      self->_menuSectionContexts = v6;
    }

    v5 = objc_alloc_init(SKUIMenuPageSectionContext);
    -[SKUIMenuPageSectionContext setSelectedIndex:](v5, "setSelectedIndex:", [componentCopy defaultSelectedIndex]);
    [(NSMapTable *)self->_menuSectionContexts setObject:v5 forKey:componentCopy];
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
  resourceLoader = [(SKUIStorePageSectionsViewController *)self resourceLoader];
  [(SKUIStorePageSectionContext *)v3 _setResourceLoader:resourceLoader];

  _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  [(SKUIStorePageSectionContext *)v3 _setTextLayoutCache:_textLayoutCache];

  [(SKUIStorePageSectionContext *)v3 _setActiveMetricsImpressionSession:self->_activeMetricsImpressionSession];
  if ([(SKUIStorePageSectionsViewController *)self isViewLoaded])
  {
    view = [(SKUIStorePageSectionsViewController *)self view];
    [view bounds];
    v8 = v7;
    v10 = v9;

    indexBarControl = [(SKUICollectionView *)self->_collectionView indexBarControl];

    if (indexBarControl)
    {
      indexBarControl2 = [(SKUICollectionView *)self->_collectionView indexBarControl];
      [indexBarControl2 sizeThatFits:{v8, v10}];
      v14 = v13;

      v8 = v8 - v14;
    }

    [(SKUIStorePageSectionContext *)v3 _setActivePageWidth:v8];
    [(SKUIStorePageSectionContext *)v3 _setLandscapePageWidth:v10];
    [(SKUIStorePageSectionContext *)v3 _setPortraitPageWidth:v8];
  }

  return v3;
}

- (id)_newSectionsWithPageComponent:(id)component
{
  componentCopy = component;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([componentCopy componentType] == 11)
  {
    v6 = componentCopy;
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
    v6 = [(SKUIStorePageSectionsViewController *)self defaultSectionForComponent:componentCopy];
    [v5 addObject:v6];
  }

  return v5;
}

- (id)_newSectionsWithPageComponents:(id)components
{
  v18 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = componentsCopy;
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
  _currentBackdropGroupName = [(SKUIStorePageSectionsViewController *)self _currentBackdropGroupName];
  [(SKUIStorePageCollectionViewLayout *)v3 setBackdropGroupName:_currentBackdropGroupName];

  [(SKUIStorePageCollectionViewLayout *)v3 setRendersWithPerspective:self->_rendersWithPerspective];
  [(SKUIStorePageCollectionViewLayout *)v3 setRendersWithParallax:self->_rendersWithParallax];
  return v3;
}

- (id)_prepareLayoutForSections
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(SKUIStorePageSplitsDescription *)self->_splitsDescription numberOfSplits]> 1)
  {
    _newSectionContext = [(SKUIStorePageSectionsViewController *)self _newSectionContext];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    splitsDescription = self->_splitsDescription;
    [_newSectionContext activePageWidth];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__SKUIStorePageSectionsViewController__prepareLayoutForSections__block_invoke;
    v14[3] = &unk_2781FA938;
    v14[4] = self;
    v14[5] = v15;
    [(SKUIStorePageSplitsDescription *)splitsDescription sizeSplitsToFitWidth:v14 usingBlock:?];
    _newStorePageCollectionViewLayout = objc_alloc_init(SKUIStorePageSplitCollectionViewLayout);
    _currentBackdropGroupName = [(SKUIStorePageSectionsViewController *)self _currentBackdropGroupName];
    [(SKUIStorePageSplitCollectionViewLayout *)_newStorePageCollectionViewLayout setBackdropGroupName:_currentBackdropGroupName];

    [(SKUIStorePageSplitCollectionViewLayout *)_newStorePageCollectionViewLayout setRendersWithPerspective:self->_rendersWithPerspective];
    [(SKUIStorePageSplitCollectionViewLayout *)_newStorePageCollectionViewLayout addSublayoutsUsingSplitsDescription:self->_splitsDescription];
    _Block_object_dispose(v15, 8);
  }

  else
  {
    firstSplit = [(SKUIStorePageSplitsDescription *)self->_splitsDescription firstSplit];
    _newSectionContext = [firstSplit sectionContext];

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
          [v9 _setContext:_newSectionContext];
          [v9 willAppearInContext:_newSectionContext];
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    _newStorePageCollectionViewLayout = [(SKUIStorePageSectionsViewController *)self _newStorePageCollectionViewLayout];
  }

  return _newStorePageCollectionViewLayout;
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

- (void)_registerForNotificationsForEntityProvider:(id)provider
{
  if (provider)
  {
    v4 = MEMORY[0x277CCAB98];
    providerCopy = provider;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel__entityProviderDidInvalidateNotification_ name:*MEMORY[0x277D1AF58] object:providerCopy];
  }
}

- (void)_reloadCollectionView
{
  v45 = *MEMORY[0x277D85DE8];
  _prepareLayoutForSections = [(SKUIStorePageSectionsViewController *)self _prepareLayoutForSections];
  [(SKUICollectionView *)self->_collectionView setCollectionViewLayout:_prepareLayoutForSections animated:0];
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
  backgroundColor = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
  v11 = backgroundColor;
  if (backgroundColor)
  {
    systemBackgroundColor = backgroundColor;
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v13 = systemBackgroundColor;

  [(SKUICollectionView *)self->_collectionView setBackgroundColor:v13];
  if ([(NSMutableArray *)self->_sections count])
  {
    v33 = _prepareLayoutForSections;
    p_contentInsetAdjustments = &self->_contentInsetAdjustments;
    top = self->_contentInsetAdjustments.top;
    v16 = [(NSMutableArray *)self->_sections objectAtIndex:0];
    [v16 contentInsetAdjustmentForCollectionView:self->_collectionView];
    self->_contentInsetAdjustments.top = v17;
    selfCopy = self;
    v19 = selfCopy;
    while (![v19 conformsToProtocol:&unk_282938F18])
    {
      parentViewController = [v19 parentViewController];

      v19 = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_21;
      }
    }

    prefersNavigationBarBackgroundViewHidden = [v19 prefersNavigationBarBackgroundViewHidden];

    if (prefersNavigationBarBackgroundViewHidden)
    {
      navigationController = [(SKUIStorePageSectionsViewController *)selfCopy navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      p_contentInsetAdjustments->top = p_contentInsetAdjustments->top - CGRectGetMaxY(v46);
    }

LABEL_21:
    if ([(NSMutableArray *)self->_sections count]>= 2)
    {
      lastObject = [(NSMutableArray *)self->_sections lastObject];
      [lastObject contentInsetAdjustmentForCollectionView:self->_collectionView];
      self->_contentInsetAdjustments.bottom = v25;
    }

    [(SKUICollectionView *)self->_collectionView contentInset];
    [(SKUICollectionView *)self->_collectionView setContentInset:v26 + p_contentInsetAdjustments->top - top];

    _prepareLayoutForSections = v33;
  }

  _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
  [_textLayoutCache commitLayoutRequests];

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
        relevantEntityProviders = [v11 relevantEntityProviders];
        if ([relevantEntityProviders count])
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
          v33 = relevantEntityProviders;
          v15 = relevantEntityProviders;
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

          relevantEntityProviders = v33;
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

          firstAppearanceIndexPath = [*(*(&v10 + 1) + 8 * i) firstAppearanceIndexPath];
          if (firstAppearanceIndexPath)
          {
            v9 = firstAppearanceIndexPath;

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

- (void)_setPageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _collectionViewSublayouts = [(SKUIStorePageSectionsViewController *)self _collectionViewSublayouts];
  indexBarControl = [(SKUICollectionView *)self->_collectionView indexBarControl];

  if (indexBarControl)
  {
    indexBarControl2 = [(SKUICollectionView *)self->_collectionView indexBarControl];
    [indexBarControl2 sizeThatFits:{width, height}];
    v10 = v9;

    width = width - v10;
  }

  splitsDescription = self->_splitsDescription;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SKUIStorePageSectionsViewController__setPageSize___block_invoke;
  v13[3] = &unk_2781FA960;
  v14 = _collectionViewSublayouts;
  v12 = _collectionViewSublayouts;
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

- (id)_splitForSectionIndex:(int64_t)index
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = index;
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

- (void)_unregisterForNotificationsForEntityProvider:(id)provider
{
  if (provider)
  {
    v4 = MEMORY[0x277CCAB98];
    providerCopy = provider;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D1AF58] object:providerCopy];
  }
}

- (void)_updateCollectionViewWithUpdates:(id)updates
{
  v4 = (*(updates + 2))(updates, a2);
  if (v4)
  {
    v5 = v4;
    _textLayoutCache = [(SKUIStorePageSectionsViewController *)self _textLayoutCache];
    [_textLayoutCache commitLayoutRequests];

    collectionViewLayout = [(SKUICollectionView *)self->_collectionView collectionViewLayout];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__SKUIStorePageSectionsViewController__updateCollectionViewWithUpdates___block_invoke_2;
    aBlock[3] = &unk_2781FA9B0;
    v25 = v5;
    aBlock[4] = self;
    v8 = collectionViewLayout;
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
      selfCopy = self;
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
      view = [(SKUIProductPageOverlayController *)overlayController view];
      superview = [view superview];
      [superview bringSubviewToFront:view];
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