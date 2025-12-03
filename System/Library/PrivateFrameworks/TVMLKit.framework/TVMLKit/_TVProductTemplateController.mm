@interface _TVProductTemplateController
- (BOOL)_shouldShowTopHeroImage;
- (BOOL)_sportsLandscapePhone;
- (BOOL)_sportsLandscapePhoneIsOverlaySection:(id)section;
- (CGSize)_backgroundImageProxySize;
- (CGSize)_maxContentSize;
- (CGSize)_topHeroImageViewSize;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)_cellMarginForIndex:(int64_t)index partialMargins:(UIEdgeInsets *)margins;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)_largeTitleHeight;
- (id)_adamIDForElement:(id)element;
- (id)_backgroundImageProxy;
- (id)_canonicalIDForElement:(id)element;
- (id)_relatedSectionHeaderView;
- (id)_spacingMetricsForViewControllers:(id)controllers contentSize:(CGSize *)size;
- (id)_yOffsetForView:(id)view withScrollView:(id)scrollView targetYOffset:(double)offset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)preferredFocusEnvironments;
- (int64_t)_overrideLargeTitleDisplayMode;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_lastFocusableCellIndex;
- (void)_configureBackgroundTintView;
- (void)_configureTopHeroImage:(id)image;
- (void)_configureWithBannerElement:(id)element;
- (void)_configureWithBgElement:(id)element;
- (void)_recordImpressionsForVisibleView;
- (void)_updateBackgroundTintView;
- (void)_updateBackgroundTintViewEffects;
- (void)_updateImpressions;
- (void)_updateTopHeroImageOverlay;
- (void)_updateTopHeroImageVisibility:(id)visibility;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureAppearanceTransition;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateWithViewElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _TVProductTemplateController

- (void)updateWithViewElement:(id)element
{
  v96 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v92.receiver = self;
  v92.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v92 updateWithViewElement:elementCopy];
  objc_storeStrong(&self->_templateElement, element);
  elementName = [(IKViewElement *)self->_templateElement elementName];
  self->_sportsProductTemplate = [elementName isEqualToString:@"productSportsBundleTemplate"];

  appDocument = [elementCopy appDocument];
  [appDocument impressionThreshold];
  self->_impressionThreshold = v8;

  v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(NSArray *)self->_viewControllers mutableCopy];
  topHeroImageElement = self->_topHeroImageElement;
  self->_topHeroImageElement = 0;

  backdropTintElement = self->_backdropTintElement;
  self->_backdropTintElement = 0;

  backdropTintViewController = self->_backdropTintViewController;
  self->_backdropTintViewController = 0;

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v69 = elementCopy;
  obj = [elementCopy children];
  v13 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (!v13)
  {
    v74 = 0;
    v75 = 0;
    v15 = 0;
    goto LABEL_55;
  }

  v14 = v13;
  v74 = 0;
  v75 = 0;
  v15 = 0;
  v16 = *v89;
  selfCopy = self;
  v76 = *v89;
  v70 = v9;
  do
  {
    v17 = 0;
    v77 = v14;
    do
    {
      if (*v89 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v88 + 1) + 8 * v17);
      tv_elementType = [v18 tv_elementType];
      switch(tv_elementType)
      {
        case 16:
          [(_TVProductTemplateController *)self _configureTopHeroImage:v18];
          goto LABEL_51;
        case 12:
          if (v15)
          {
            goto LABEL_51;
          }

          v15 = v18;
          autoHighlightIdentifier = [v15 autoHighlightIdentifier];
          v21 = [autoHighlightIdentifier length];

          if (v21)
          {
            if (!v74)
            {
              v74 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
            }

            [v15 resetProperty:2];
          }

          break;
        case 4:
          [(_TVProductTemplateController *)self _configureWithBgElement:v18];
          goto LABEL_51;
        default:
          if (v15 != v18)
          {
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v22 = v9;
            v23 = [v22 countByEnumeratingWithState:&v84 objects:v94 count:16];
            if (v23)
            {
              v73 = v15;
              v24 = *v85;
              while (2)
              {
                for (i = 0; i != v23; i = (i + 1))
                {
                  if (*v85 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = *(*(&v84 + 1) + 8 * i);
                  tv_associatedIKViewElement = [v26 tv_associatedIKViewElement];
                  v28 = [[_TVShadowViewElementID alloc] initWithViewElement:tv_associatedIKViewElement];
                  v29 = [[_TVShadowViewElementID alloc] initWithViewElement:v18];
                  if ([(_TVShadowViewElementID *)v28 isEqual:v29])
                  {
                    v23 = v26;

                    goto LABEL_28;
                  }
                }

                v23 = [v22 countByEnumeratingWithState:&v84 objects:v94 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }

LABEL_28:
              v9 = v70;
              self = selfCopy;
              v15 = v73;
            }

            v30 = 0;
            goto LABEL_30;
          }

          break;
      }

      v23 = self->_bannerViewController;
      v30 = 1;
LABEL_30:
      v31 = +[TVInterfaceFactory sharedInterfaceFactory];
      v32 = [v31 _viewControllerFromElement:v18 existingController:v23];

      if (v32)
      {
        goto LABEL_31;
      }

      v38 = v15;
      v39 = +[TVInterfaceFactory sharedInterfaceFactory];
      view = [(UIViewController *)v23 view];
      v41 = [v39 _viewFromElement:v18 existingView:view];

      if (!v41)
      {
        v32 = 0;
        v15 = v38;
        goto LABEL_47;
      }

      objc_opt_class();
      v42 = (objc_opt_isKindOfClass() & 1) != 0 ? v23 : objc_alloc_init(MEMORY[0x277D75D28]);
      v32 = v42;
      [(UIViewController *)v42 setView:v41];
      [(UIViewController *)v32 tv_setAssociatedIKViewElement:v18];

      v15 = v38;
      if (v32)
      {
LABEL_31:
        if (!v30)
        {
          attributes = [v18 attributes];
          v34 = [attributes objectForKeyedSubscript:@"markBackgroundSegment"];
          bOOLValue = [v34 BOOLValue];

          if (bOOLValue)
          {
            objc_storeStrong(&self->_backdropTintElement, v18);
            objc_storeStrong(&self->_backdropTintViewController, v32);
          }

          autoHighlightIdentifier2 = [v18 autoHighlightIdentifier];
          v37 = [autoHighlightIdentifier2 length];

          if (v37)
          {
            if (!v74)
            {
              v74 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v72 inSection:{"count"), 1}];
            }

            [v18 resetProperty:2];
          }

          v16 = v76;
          v14 = v77;
          [v72 addObject:v32];
          if (!v23)
          {
            goto LABEL_50;
          }

LABEL_48:
          if (v23 == v32)
          {
            [v9 removeObjectIdenticalTo:v23];
          }

          goto LABEL_50;
        }

        v32 = v32;

        v75 = v32;
      }

LABEL_47:
      v16 = v76;
      v14 = v77;
      if (v23)
      {
        goto LABEL_48;
      }

LABEL_50:

LABEL_51:
      ++v17;
    }

    while (v17 != v14);
    v14 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
  }

  while (v14);
LABEL_55:

  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  self->_lastFocusedIndexPath = 0;

  objc_storeStrong(&self->_autoHighlightIndexPath, v74);
  if ([v9 count])
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v44 = v9;
    v45 = [v44 countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v81;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v81 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v80 + 1) + 8 * j);
          [v49 willMoveToParentViewController:0];
          view2 = [v49 view];
          [view2 removeFromSuperview];

          [v49 removeFromParentViewController];
        }

        v46 = [v44 countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v46);
    }

    v51 = 1;
  }

  else
  {
    v51 = [v69 updateType] != 1;
  }

  v52 = [v72 copy];
  viewControllers = self->_viewControllers;
  self->_viewControllers = v52;

  v79 = *MEMORY[0x277CBF3A8];
  v54 = [(_TVProductTemplateController *)self _spacingMetricsForViewControllers:self->_viewControllers contentSize:&v79];
  rowSpacingMetricsList = self->_rowSpacingMetricsList;
  self->_rowSpacingMetricsList = v54;

  if (self->_preloadContentSize.width != v79.width || self->_preloadContentSize.height != v79.height)
  {
    self->_preloadOnLayout = 1;
    self->_preloadContentSize = v79;
  }

  [(_TVProductTemplateController *)self _configureWithBannerElement:v15];
  objc_storeStrong(&self->_bannerViewController, v75);
  self->_preloadContentSize.height = self->_productBannerHeight + self->_preloadContentSize.height;
  if ([(_TVProductTemplateController *)self _shouldUsePartialScrollingTemplate])
  {
    height = self->_preloadContentSize.height;
  }

  else
  {
    v58 = [(NSArray *)self->_viewControllers count];
    height = self->_preloadContentSize.height;
    if (v58)
    {
      height = height + 70.0 + 89.0;
    }
  }

  self->_preloadContentSize.height = height + 500.0;
  if ([(_TVProductTemplateController *)self isViewLoaded])
  {
    collectionView = self->_collectionView;
    if (v51)
    {
      [(UICollectionView *)collectionView reloadData];
    }

    else
    {
      collectionViewLayout = [(UICollectionView *)collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }

    [v69 updateType];
  }

  view3 = [(_TVProductTemplateController *)self view];
  [(UICollectionView *)self->_collectionView setSemanticContentAttribute:[(IKViewElement *)self->_templateElement tv_semanticContentAttribute]];
  v62 = [(_TVProductTemplateController *)self _adamIDForElement:self->_templateElement];
  if (v62)
  {
    v63 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:@"com.apple.iTunes.externalMediaContent"];
    [v63 setExternalMediaContentIdentifier:v62];
    [(_TVProductTemplateController *)self setUserActivity:v63];
  }

  else
  {
    v63 = [(_TVProductTemplateController *)self _canonicalIDForElement:self->_templateElement];
    if (v63)
    {
      v64 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:@"com.apple.UMC.externalMediaContent"];
      [v64 setExternalMediaContentIdentifier:v63];
      [(_TVProductTemplateController *)self setUserActivity:v64];
    }
  }

  [(_TVProductTemplateController *)self _configureBackgroundTintView];
  style = [v69 style];
  tv_backgroundColor = [style tv_backgroundColor];
  color = [tv_backgroundColor color];

  view4 = [(_TVProductTemplateController *)self view];
  [view4 setBackgroundColor:color];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v13 = [v3 initWithFrame:?];

  [(_TVProductTemplateController *)self setView:v13];
  v5 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v5 setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)v5 setMinimumInteritemSpacing:0.0];
  v6 = [_TVStackCollectionView alloc];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v8 = [(_TVStackCollectionView *)v6 initWithFrame:v5 collectionViewLayout:?];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v8 setBackgroundColor:clearColor];

  [(UICollectionView *)v8 setDelegate:self];
  [(UICollectionView *)v8 setDataSource:self];
  [(UICollectionView *)v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TVProductCellIdentifier"];
  [(UICollectionView *)v8 setAutoresizingMask:18];
  [(UICollectionView *)v8 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"TVProductHeaderCellIdentifier"];
  [(UICollectionView *)v8 setShowsVerticalScrollIndicator:0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UICollectionView *)v8 setBackgroundColor:whiteColor];

  [(UICollectionView *)v8 setAlwaysBounceVertical:1];
  [(UICollectionView *)v8 _setContentInsetAdjustmentBehavior:0];
  collectionView = self->_collectionView;
  self->_collectionView = v8;
  v12 = v8;

  [v13 addSubview:self->_collectionView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v6 viewDidAppear:appear];
  if (self->_bgImageElement && !self->_fadedIn)
  {
    self->_fadedIn = 1;
    v4 = dispatch_time(0, 600000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46___TVProductTemplateController_viewDidAppear___block_invoke;
    block[3] = &unk_279D6E7F8;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
    [(_TVProductTemplateController *)self performSelector:sel__updateImpressions withObject:0 afterDelay:0.7];
  }

  else
  {
    [(_TVProductTemplateController *)self _updateImpressions];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  [(CALayer *)self->_bgBlurSublayer setFilters:0, finished];
  [(CALayer *)self->_bgBlurSublayer removeAnimationForKey:@"blurRadiusAnimation"];
  bgBlurSublayer = self->_bgBlurSublayer;

  [(CALayer *)bgBlurSublayer removeFromSuperlayer];
}

- (void)viewWillAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v16 viewWillAppear:appear];
  if (self->_autoHighlightIndexPath)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:?];
    [v5 frame];
    [(UICollectionView *)self->_collectionView setContentOffset:v4, CGRectGetMinY(v18)];
    [(_TVProductTemplateController *)self scrollViewDidScroll:self->_collectionView];
  }

  if (self->_bgImageElement && !self->_fadedIn && !self->_bgBlurSublayer)
  {
    v6 = objc_alloc(MEMORY[0x277CD9EA0]);
    v7 = [v6 initWithType:*MEMORY[0x277CDA328]];
    [v7 setValue:&unk_287E48808 forKey:@"inputRadius"];
    [v7 setValue:@"low" forKey:@"inputQuality"];
    [v7 setValue:&unk_287E47F10 forKey:@"inputHardEdges"];
    [v7 setName:@"blurFilter"];
    layer = [MEMORY[0x277CD9ED0] layer];
    bgBlurSublayer = self->_bgBlurSublayer;
    self->_bgBlurSublayer = layer;

    [(CALayer *)self->_bgBlurSublayer setContents:[(UIImage *)self->_bgImage CGImage]];
    v10 = self->_bgBlurSublayer;
    v17[0] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(CALayer *)v10 setFilters:v11];

    v12 = self->_bgBlurSublayer;
    layer2 = [(UIImageView *)self->_bgImageView layer];
    [layer2 frame];
    [(CALayer *)v12 setFrame:?];

    layer3 = [(UIImageView *)self->_bgImageView layer];
    [layer3 addSublayer:self->_bgBlurSublayer];
  }

  userActivity = [(_TVProductTemplateController *)self userActivity];
  [userActivity becomeCurrent];
}

- (void)configureAppearanceTransition
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = self->_topHeroImageVisible && [(_TVProductTemplateController *)self _shouldShowTopHeroImage];
  parentViewController = [(_TVProductTemplateController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];

  navigationController = [(_TVProductTemplateController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController2 = [(_TVProductTemplateController *)self navigationController];
    visibleViewController2 = [navigationController2 visibleViewController];
    templateViewController = [visibleViewController2 templateViewController];
    v11 = [templateViewController isEqual:self];
  }

  else
  {
    v11 = 0;
  }

  transitionCoordinator = [(_TVProductTemplateController *)self transitionCoordinator];
  if (transitionCoordinator && (topHeroImageView = self->_topHeroImageView, transitionCoordinator, topHeroImageView))
  {
    self->_lightStatusBar = v3;
    objc_initWeak(location, self);
    transitionCoordinator2 = [(_TVProductTemplateController *)self transitionCoordinator];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __61___TVProductTemplateController_configureAppearanceTransition__block_invoke;
    v35[3] = &unk_279D6F588;
    v38 = v11;
    objc_copyWeak(&v37, location);
    v39 = v3;
    v15 = navigationItem;
    v36 = v15;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __61___TVProductTemplateController_configureAppearanceTransition__block_invoke_2;
    v30[3] = &unk_279D6F588;
    v33 = v11;
    objc_copyWeak(&v32, location);
    v34 = v3;
    v31 = v15;
    [transitionCoordinator2 animateAlongsideTransition:v35 completion:v30];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }

  else if (self->_topHeroImageView)
  {
    if (v11)
    {
      navigationController3 = [(_TVProductTemplateController *)self navigationController];
      navigationBar = [navigationController3 navigationBar];
    }

    else
    {
      navigationBar = 0;
    }

    if (v3)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }

    [navigationBar _setBackgroundOpacity:v18];
    [navigationBar _setTitleOpacity:v18];
    if (v3)
    {
      [navigationItem setTitle:0];
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      navigationItem2 = [(_TVProductTemplateController *)self navigationItem];
      title = [navigationItem2 title];
      [navigationItem setTitle:title];

      [MEMORY[0x277D75348] tvmlkit_keyColor];
    }
    v21 = ;
    [navigationBar setTintColor:v21];

    self->_lightStatusBar = v3;
    [(_TVProductTemplateController *)self setNeedsStatusBarAppearanceUpdate];
    if (self->_sportsProductTemplate)
    {
      if ([(_TVProductTemplateController *)self _sportsLandscapePhone])
      {
        v22 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
        firstObject = [v22 firstObject];
        view = [(UIViewController *)self->_bannerViewController view];
        [firstObject addSubview:view];

        [(_TVProductTemplateController *)self _updateTopHeroImageOverlay];
      }

      collectionView = self->_collectionView;
      v26 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v40[0] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      [(UICollectionView *)collectionView reloadItemsAtIndexPaths:v27];

      *location = *MEMORY[0x277CBF348];
      [(_TVProductTemplateController *)self scrollViewWillEndDragging:self->_collectionView withVelocity:location targetContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(UICollectionView *)self->_collectionView setContentOffset:*location, *&location[1]];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = _TVProductTemplateController;
    [(_TVBgImageLoadingViewController *)&v28 configureAppearanceTransition];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _TVProductTemplateController;
  [(_TVProductTemplateController *)&v5 viewWillDisappear:disappear];
  userActivity = [(_TVProductTemplateController *)self userActivity];
  [userActivity resignCurrent];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidDisappear:disappear];
  [(_TVProductTemplateController *)self _cancelImpressionsUpdate];
}

- (void)viewDidLayoutSubviews
{
  v64.receiver = self;
  v64.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v64 viewDidLayoutSubviews];
  if (self->_preloadContentSize.width > 0.0 && self->_preloadContentSize.height > 0.0)
  {
    if (self->_preloadOnLayout)
    {
      self->_preloadOnLayout = 0;
      [(UICollectionView *)self->_collectionView _ensureViewsAreLoadedInRect:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    view = [(_TVProductTemplateController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v65.origin.x = v5;
    v65.origin.y = v7;
    v65.size.width = v9;
    v65.size.height = v11;
    Height = CGRectGetHeight(v65);
    v13 = Height - self->_productBannerHeight;
    [(UICollectionView *)self->_collectionView contentOffset];
    v15 = fmin(v13 + v14, Height);
    v16 = Height - v15;
    v66.origin.x = v5;
    v66.origin.y = v7;
    v66.size.width = v9;
    v66.size.height = v11;
    [(UIView *)self->_backdropView setFrame:0.0, v16, CGRectGetWidth(v66), v15];
    image = [(UIImageView *)self->_vignetteView image];
    [image size];
    v19 = v18;
    v21 = v20;

    [(UIImageView *)self->_vignetteView setFrame:0.0, v16 - v21, v19, v21];
  }

  style = [(IKViewElement *)self->_templateElement style];
  [style tv_margin];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  if (!self->_topHeroImageView)
  {
    topHeroImageView = 0;
LABEL_18:
    [(UIImageView *)topHeroImageView setHidden:1];
    [(UIImageView *)self->_topHeroGradientView setHidden:1];
    [(UIView *)self->_topHeroSeparatorView setHidden:1];
    [(UICollectionView *)self->_collectionView _setContentInsetAdjustmentBehavior:0];
    goto LABEL_21;
  }

  if (![(_TVProductTemplateController *)self _shouldShowTopHeroImage])
  {
    topHeroImageView = self->_topHeroImageView;
    goto LABEL_18;
  }

  [(UICollectionView *)self->_collectionView _setContentInsetAdjustmentBehavior:2];
  view2 = [(_TVProductTemplateController *)self view];
  [view2 safeAreaInsets];
  v33 = v32;

  if (([(UICollectionView *)self->_collectionView isDragging]& 1) == 0 && ([(UICollectionView *)self->_collectionView isDecelerating]& 1) == 0)
  {
    [(_TVProductTemplateController *)self _topHeroImageViewSize];
    v35 = v34;
    rect = v34;
    view3 = [(_TVProductTemplateController *)self view];
    [view3 bounds];
    Width = CGRectGetWidth(v67);

    [(UIImageView *)self->_topHeroImageView setFrame:0.0, 0.0, Width, v35];
    [(UIImageView *)self->_topHeroGradientView frame];
    v61 = v39;
    v62 = v38;
    view4 = [(_TVProductTemplateController *)self view];
    [view4 bounds];
    v41 = CGRectGetWidth(v68);

    image2 = [(UIImageView *)self->_topHeroGradientView image];
    [image2 size];
    v44 = v43;

    view5 = [(_TVProductTemplateController *)self view];
    [view5 safeAreaInsets];
    v47 = v46 + 30.0;

    if (v44 >= v47)
    {
      v48 = v44;
    }

    else
    {
      v48 = v47;
    }

    topHeroGradientView = self->_topHeroGradientView;
    v51 = v61;
    v50 = v62;
    v52 = v41;
    v69 = CGRectIntegral(*(&v48 - 3));
    [(UIImageView *)topHeroGradientView setFrame:v69.origin.x, v69.origin.y, v69.size.width, v69.size.height];
    v70.origin.x = 0.0;
    v70.origin.y = 0.0;
    v70.size.width = Width;
    v70.size.height = rect;
    MaxY = CGRectGetMaxY(v70);
    view6 = [(_TVProductTemplateController *)self view];
    [view6 bounds];
    v55 = CGRectGetWidth(v71);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v58 = 1.0 / v57;

    [(UIView *)self->_topHeroSeparatorView setFrame:0.0, MaxY, v55, v58];
  }

  [(UIImageView *)self->_topHeroImageView setHidden:0];
  v59 = self->_topHeroGradientView;
  if (self->_sportsProductTemplate)
  {
    [(UIImageView *)v59 setHidden:1];
    [(_TVProductTemplateController *)self _updateTopHeroImageOverlay];
  }

  else
  {
    [(UIImageView *)v59 setHidden:0];
  }

  v28 = v28 + v33;
  [(UIView *)self->_topHeroSeparatorView setHidden:0];
  v24 = 0.0;
LABEL_21:
  [(UICollectionView *)self->_collectionView setContentInset:v24, v26, v28, v30];
}

- (int64_t)_overrideLargeTitleDisplayMode
{
  if (self->_topHeroImageView)
  {
    return 2;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = _TVProductTemplateController;
  return [(_TVBgImageLoadingViewController *)&v5 _overrideLargeTitleDisplayMode];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = _TVProductTemplateController;
  coordinatorCopy = coordinator;
  [(_TVProductTemplateController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83___TVProductTemplateController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279D6EA18;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"TVProductCellIdentifier" forIndexPath:pathCopy];
  if ([pathCopy section])
  {
    item = [pathCopy item];
    v8 = [(NSArray *)self->_viewControllers objectAtIndex:item];
    v9 = *(MEMORY[0x277D768C8] + 16);
    v21 = *MEMORY[0x277D768C8];
    v22 = v9;
    [(_TVProductTemplateController *)self _cellMarginForIndex:item partialMargins:&v21];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v6 setPartialMargins:{v21, v22}];
    [v6 setMargins:{v11, v13, v15, v17}];
    if (!item)
    {
      [v6 enableWithMargins:{v11, v13, v15, v17}];
    }
  }

  else
  {
    v8 = self->_bannerViewController;
    [(_TVProductCollectionViewCell *)self->_bannerCell setViewController:0];
    objc_storeStrong(&self->_bannerCell, v6);
  }

  if ([(_TVProductTemplateController *)self _sportsLandscapePhoneIsOverlaySection:pathCopy])
  {
    [v6 setViewController:0];
  }

  else
  {
    [v6 setViewController:v8];
    contentView = [v6 contentView];
    view = [(UIViewController *)v8 view];
    [contentView addSubview:view];
  }

  return v6;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  collectionView = self->_collectionView;
  v7 = *MEMORY[0x277D767D8];
  pathCopy = path;
  v9 = [(UICollectionView *)collectionView dequeueReusableSupplementaryViewOfKind:v7 withReuseIdentifier:@"TVProductHeaderCellIdentifier" forIndexPath:pathCopy];
  [v9 addSubview:self->_topHeroImageView];
  [v9 addSubview:self->_topHeroSeparatorView];
  LODWORD(v7) = [(_TVProductTemplateController *)self _sportsLandscapePhoneIsOverlaySection:pathCopy];

  if (v7)
  {
    view = [(UIViewController *)self->_bannerViewController view];
    [v9 addSubview:view];

    [(_TVProductTemplateController *)self _updateTopHeroImageOverlay];
  }

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return [(NSArray *)self->_viewControllers count];
  }

  else
  {
    return self->_bannerViewController != 0;
  }
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  autoHighlightIndexPath = self->_autoHighlightIndexPath;
  if (!autoHighlightIndexPath)
  {
    autoHighlightIndexPath = self->_lastFocusedIndexPath;
  }

  return autoHighlightIndexPath;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewController = [cell viewController];
  v7 = viewController;
  if (viewController)
  {
    v10 = viewController;
    childViewControllers = [(_TVProductTemplateController *)self childViewControllers];
    v9 = [childViewControllers containsObject:v10];

    v7 = v10;
    if ((v9 & 1) == 0)
    {
      [(_TVProductTemplateController *)self addChildViewController:v10];
      viewController = [(UIViewController *)v10 didMoveToParentViewController:self];
      v7 = v10;
      if (v10 == self->_backdropTintViewController)
      {
        viewController = [(_TVProductTemplateController *)self _updateBackgroundTintView];
        v7 = v10;
      }
    }
  }

  MEMORY[0x2821F96F8](viewController, v7);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  viewController = [cellCopy viewController];
  if (viewController)
  {
    childViewControllers = [(_TVProductTemplateController *)self childViewControllers];
    if ([childViewControllers containsObject:viewController])
    {
      view = [viewController view];
      v9 = [view isDescendantOfView:cellCopy];

      if (v9)
      {
        [viewController willMoveToParentViewController:0];
        [viewController removeFromParentViewController];
      }
    }

    else
    {
    }
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = MEMORY[0x277CBF3A8];
  if ([pathCopy section])
  {
    v10 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [pathCopy item]);
  }

  else
  {
    v10 = self->_bannerViewController;
  }

  v11 = v10;
  v12 = *v9;
  v13 = v9[1];
  if (v10)
  {
    view = [(UIViewController *)v10 view];
    [viewCopy bounds];
    Width = CGRectGetWidth(v24);
    v16 = Width;
    if (view)
    {
      [view tv_sizeThatFits:{Width, 0.0}];
      v12 = v17;
      v13 = v18;
    }

    if (!-[_TVProductTemplateController _shouldUsePartialScrollingTemplate](self, "_shouldUsePartialScrollingTemplate") && [pathCopy section] == 1 && !objc_msgSend(pathCopy, "item"))
    {
      v13 = v13 + 70.0 + 89.0;
    }

    if ([pathCopy section] == 1)
    {
      -[_TVProductTemplateController _cellMarginForIndex:partialMargins:](self, "_cellMarginForIndex:partialMargins:", [pathCopy item], 0);
      v13 = v13 + v19 + v20;
    }

    if ([(_TVProductTemplateController *)self _sportsLandscapePhoneIsOverlaySection:pathCopy])
    {
      v13 = 1.0;
      v12 = v16;
    }
  }

  v21 = v12;
  v22 = v13;
  result.height = v22;
  result.width = v21;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  if (index)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v9 = [(IKViewElement *)self->_productBannerElement style:view];
    [v9 tv_margin];
    v5 = v10;
    v6 = v11;
    v7 = v12;
    v8 = v13;
  }

  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGSize)_topHeroImageViewSize
{
  [(IKImageElement *)self->_topHeroImageElement tv_imageScaleToSize];
  v4 = v3;
  v6 = v5;
  if ([(_TVProductTemplateController *)self _sportsLandscapePhone])
  {
    view = [(_TVProductTemplateController *)self view];
    [view frame];
    v9 = v8;
    view2 = [(_TVProductTemplateController *)self view];
    [view2 safeAreaInsets];
    v6 = v9 - v11;
  }

  v12 = v4;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else if ([(_TVProductTemplateController *)self _shouldShowTopHeroImage:view])
  {
    [(_TVProductTemplateController *)self _topHeroImageViewSize];
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  v8 = draggingCopy;
  if (self->_topHeroImageView)
  {
    v18 = draggingCopy;
    draggingCopy = [(_TVProductTemplateController *)self _shouldShowTopHeroImage];
    v8 = v18;
    if (draggingCopy)
    {
      [(_TVProductTemplateController *)self _topHeroImageViewSize];
      v10 = v9;
      [(_TVProductTemplateController *)self _largeTitleHeight];
      v12 = v10 + v11;
      draggingCopy = [(UICollectionView *)self->_collectionView safeAreaInsets];
      v8 = v18;
      v14 = v12 - v13;
      y = offset->y;
      v16 = y >= v10 * 0.5 && y < v14;
      if (v16 || ((v14 = 0.0, y >= 0.0) ? (v17 = y < v10 * 0.5) : (v17 = 0), v17))
      {
        offset->y = v14;
      }
    }
  }

  MEMORY[0x2821F96F8](draggingCopy, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(_TVProductTemplateController *)self _updateImpressions];
  if (self->_impressionThreshold > 0.0)
  {
    [(NSArray *)self->_viewControllers enumerateObjectsUsingBlock:&__block_literal_global_24];
  }

  [(_TVProductTemplateController *)self _updateTopHeroImageVisibility:scrollCopy];
  [(_TVProductTemplateController *)self _updateBackgroundTintViewEffects];
}

- (double)_largeTitleHeight
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_largeTitleHeight <= 0.0)
  {
    collectionView = self->_collectionView;
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v5 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewController = [v5 viewController];
      view = [viewController view];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        components = [view components];
        v9 = [components countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v21 = view;
          v22 = v5;
          v11 = 0;
          v12 = *v24;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(components);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              if (self->_sportsProductTemplate)
              {
                if (!v11)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v11 = v14;
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                NSClassFromString(&cfstr_Wlkuiproductsp.isa);
              }

              else
              {
                objc_opt_class();
              }

              if (objc_opt_isKindOfClass())
              {
                v15 = v14;

                v11 = v15;
                goto LABEL_21;
              }
            }

            v10 = [components countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

LABEL_21:

          if (v11)
          {
            v16 = self->_collectionView;
            [v11 bounds];
            [(UICollectionView *)v16 convertRect:v11 fromView:?];
            MaxY = CGRectGetMaxY(v29);
            [(_TVProductTemplateController *)self _topHeroImageViewSize];
            self->_largeTitleHeight = MaxY - v18 + 10.0;
          }

          v5 = v22;
          goto LABEL_27;
        }
      }
    }

    v11 = 0;
LABEL_27:
  }

  _sportsLandscapePhone = [(_TVProductTemplateController *)self _sportsLandscapePhone];
  result = 10.0;
  if (!_sportsLandscapePhone)
  {
    result = self->_largeTitleHeight;
    if (result == 0.0)
    {
      return 54.0;
    }
  }

  return result;
}

- (void)_updateTopHeroImageOverlay
{
  if ([(_TVProductTemplateController *)self _sportsLandscapePhone])
  {
    view = [(UIViewController *)self->_bannerViewController view];
    [view frame];

    view2 = [(UIViewController *)self->_bannerViewController view];
    view3 = [(_TVProductTemplateController *)self view];
    [view3 frame];
    [view2 sizeThatFits:{v6, 0.0}];

    view4 = [(_TVProductTemplateController *)self view];
    [view4 frame];

    [(_TVProductTemplateController *)self _topHeroImageViewSize];
    UIRectCenteredYInRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view5 = [(_TVProductTemplateController *)self view];
    [view5 frame];
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v18 = MaxX - CGRectGetWidth(v22);

    view6 = [(UIViewController *)self->_bannerViewController view];
    v23.origin.x = v18;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v24 = CGRectIntegral(v23);
    [view6 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];
  }
}

- (void)_updateTopHeroImageVisibility:(id)visibility
{
  [visibility contentOffset];
  v5 = v4;
  navigationController = [(_TVProductTemplateController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [(_TVProductTemplateController *)self _topHeroImageViewSize];
  v9 = v8;
  v11 = v10;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if (v5 <= 0.0 && ![(_TVProductTemplateController *)self _sportsLandscapePhone])
  {
    view = [(_TVProductTemplateController *)self view];
    [view bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v87.origin.x = v15;
    v87.origin.y = v17;
    v87.size.width = v19;
    v79 = v21;
    v87.size.height = v21;
    Width = CGRectGetWidth(v87);
    x = 0.0;
    v78 = v19;
    if (IsReduceMotionEnabled)
    {
      v24 = v17;
      v25 = v15;
      height = v11;
    }

    else
    {
      UIRectCenteredXInRect();
      v89 = CGRectInset(v88, v5 * 0.45, v5 * 0.45);
      x = v89.origin.x;
      Width = v89.size.width;
      v24 = v17;
      v25 = v15;
      height = v89.size.height;
    }

    [(UIImageView *)self->_topHeroImageView setFrame:x, v5, Width, height];
    v90.origin.x = x;
    v90.origin.y = v5;
    v90.size.width = Width;
    v90.size.height = height;
    MaxY = CGRectGetMaxY(v90);
    v91.origin.x = v25;
    v91.origin.y = v24;
    v91.size.width = v78;
    v91.size.height = v79;
    v28 = CGRectGetWidth(v91);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v31 = 1.0 / v30;

    [(UIView *)self->_topHeroSeparatorView setFrame:0.0, MaxY, v28, v31];
  }

  if (v5 <= v11 && !IsReduceMotionEnabled)
  {
    [(UIImageView *)self->_topHeroImageView _setContentRectInPixels:0.0 forContentSize:fmin(v5 * -0.28, 0.0), v9, v11, v9, v11];
  }

  if (self->_topHeroImageView)
  {
    _shouldShowTopHeroImage = [(_TVProductTemplateController *)self _shouldShowTopHeroImage];
    [(UICollectionView *)self->_collectionView safeAreaInsets];
    v34 = v11 - v33;
    [(_TVProductTemplateController *)self _largeTitleHeight];
    v36 = v35;
    if (v5 - v34 >= 0.0)
    {
      v37 = v5 - v34;
    }

    else
    {
      v37 = 0.0;
    }

    if (_shouldShowTopHeroImage)
    {
      v38 = fmin(v37 / (v35 * 0.5), 1.0);
      [(UIImageView *)self->_topHeroGradientView setAlpha:1.0 - v38];
      [navigationBar _setBackgroundOpacity:v38];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      tvmlkit_keyColor = [MEMORY[0x277D75348] tvmlkit_keyColor];
      v41 = [whiteColor blendWithColor:tvmlkit_keyColor percentage:v38];
      [navigationBar setTintColor:v41];

      _sportsLandscapePhone = [(_TVProductTemplateController *)self _sportsLandscapePhone];
      if (v5 <= 0.0 && _sportsLandscapePhone)
      {
        view2 = [(_TVProductTemplateController *)self view];
        [view2 safeAreaInsets];
        v45 = v5 + v44;

        if (v45 < 0.0)
        {
          v45 = 0.0;
        }

        view3 = [(_TVProductTemplateController *)self view];
        [view3 safeAreaInsets];
        v48 = v45 / (v47 * 0.5);

        tvmlkit_keyColor2 = [MEMORY[0x277D75348] tvmlkit_keyColor];
        whiteColor2 = [MEMORY[0x277D75348] whiteColor];
        v51 = [tvmlkit_keyColor2 blendWithColor:whiteColor2 percentage:{fmin(v48, 1.0)}];
        [navigationBar setTintColor:v51];
      }

      self->_lightStatusBar = v38 <= 0.3;
      [(_TVProductTemplateController *)self setNeedsStatusBarAppearanceUpdate];
    }

    navigationItem = [(_TVProductTemplateController *)self navigationItem];
    title = [navigationItem title];

    parentViewController = [(_TVProductTemplateController *)self parentViewController];
    navigationItem2 = [parentViewController navigationItem];

    if (v37 / v36 < 1.0)
    {
      if (self->_topHeroImageVisible)
      {
        goto LABEL_30;
      }

      if (!navigationBar)
      {
        goto LABEL_30;
      }

      self->_topHeroImageVisible = 1;
      if (!_shouldShowTopHeroImage)
      {
        goto LABEL_30;
      }

      v59 = MEMORY[0x277D75D18];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __62___TVProductTemplateController__updateTopHeroImageVisibility___block_invoke_2;
      v80[3] = &unk_279D6E2F8;
      v57 = &v81;
      v81 = navigationBar;
      v58 = &v82;
      v82 = navigationItem2;
      [v59 animateWithDuration:7 delay:v80 options:0 animations:0.15 completion:0.0];
    }

    else
    {
      if (!self->_topHeroImageVisible)
      {
        goto LABEL_30;
      }

      if (!navigationBar)
      {
        goto LABEL_30;
      }

      self->_topHeroImageVisible = 0;
      if (!_shouldShowTopHeroImage)
      {
        goto LABEL_30;
      }

      v56 = MEMORY[0x277D75D18];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __62___TVProductTemplateController__updateTopHeroImageVisibility___block_invoke;
      v83[3] = &unk_279D6F5D0;
      v57 = &v84;
      v84 = navigationBar;
      v58 = &v85;
      v85 = navigationItem2;
      v86 = title;
      [v56 animateWithDuration:7 delay:v83 options:0 animations:0.15 completion:0.0];
    }

LABEL_30:
    v60 = v36 + v34;
    [(UICollectionView *)self->_collectionView frame];
    v61 = v36 + v34 + CGRectGetHeight(v92);
    [(UICollectionView *)self->_collectionView contentSize];
    if (v61 > v62)
    {
      [(UICollectionView *)self->_collectionView contentInset];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      view4 = [(_TVProductTemplateController *)self view];
      [view4 safeAreaInsets];
      v71 = v70;
      style = [(IKViewElement *)self->_templateElement style];
      [style tv_margin];
      v74 = v71 + v73;

      [(UICollectionView *)self->_collectionView frame];
      v75 = v60 + CGRectGetHeight(v93);
      [(UICollectionView *)self->_collectionView contentSize];
      if (v74 >= v75 - v76)
      {
        v77 = v74;
      }

      else
      {
        v77 = v75 - v76;
      }

      [(UICollectionView *)self->_collectionView setContentInset:v64, v66, v77, v68];
    }
  }
}

- (int64_t)preferredStatusBarStyle
{
  v4.receiver = self;
  v4.super_class = _TVProductTemplateController;
  result = [(_TVBgImageLoadingViewController *)&v4 preferredStatusBarStyle];
  if (self->_topHeroImageView)
  {
    return self->_lightStatusBar;
  }

  return result;
}

- (void)_updateImpressions
{
  [(_TVProductTemplateController *)self _cancelImpressionsUpdate];
  if (self->_impressionThreshold > 0.0)
  {

    [(_TVProductTemplateController *)self performSelector:sel__recordImpressionsForVisibleView withObject:0 afterDelay:?];
  }
}

- (void)_recordImpressionsForVisibleView
{
  view = [(_TVProductTemplateController *)self view];
  window = [view window];

  if (window)
  {
    appDocument = [(IKViewElement *)self->_templateElement appDocument];
    v5 = [(_TVProductTemplateController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [appDocument recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v30 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  appDocument = [(IKViewElement *)self->_templateElement appDocument];
  v6 = [appDocument isEqual:documentCopy];

  if (v6)
  {
    visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
    array = [MEMORY[0x277CBEB18] array];
    if ([(_TVProductTemplateController *)self isViewLoaded])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = visibleCells;
      v9 = visibleCells;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            viewController = [v14 viewController];
            v16 = [viewController tv_impressionableElementsForDocument:documentCopy];
            [array addObjectsFromArray:v16];

            titleView = [v14 titleView];
            if (titleView)
            {
              v18 = titleView;
              isShowingTitleView = [v14 isShowingTitleView];

              if (isShowingTitleView)
              {
                titleView2 = [v14 titleView];
                v21 = [titleView2 tv_impressionableElementsForDocument:documentCopy];
                [array addObjectsFromArray:v21];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      visibleCells = v24;
    }

    if ([array count])
    {
      v22 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_collectionView)
  {
    v4[0] = self->_collectionView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (id)_adamIDForElement:(id)element
{
  v23 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributes = [elementCopy attributes];
  v5 = [attributes tv_stringForKey:@"data-siri"];

  if (v5)
  {
    v16 = v5;
    v17 = elementCopy;
    v6 = [v5 componentsSeparatedByString:{@", "}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndex:0];
            if ([v13 isEqualToString:@"adamid"])
            {
              v14 = [v12 objectAtIndex:1];

              v9 = v14;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v5 = v16;
    elementCopy = v17;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_canonicalIDForElement:(id)element
{
  v23 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributes = [elementCopy attributes];
  v5 = [attributes tv_stringForKey:@"data-siri"];

  if (v5)
  {
    v16 = v5;
    v17 = elementCopy;
    v6 = [v5 componentsSeparatedByString:{@", "}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndex:0];
            if ([v13 isEqualToString:@"canonicalId"])
            {
              v14 = [v12 objectAtIndex:1];

              v9 = v14;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v5 = v16;
    elementCopy = v17;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_yOffsetForView:(id)view withScrollView:(id)scrollView targetYOffset:(double)offset
{
  v74 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  scrollViewCopy = scrollView;
  if (!self->_bannerViewController || ![(NSArray *)self->_viewControllers count])
  {
    v23 = 0;
    goto LABEL_41;
  }

  collectionView = self->_collectionView;
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v12 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v11];

  v13 = self->_collectionView;
  v14 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:1];
  v15 = [(UICollectionView *)v13 cellForItemAtIndexPath:v14];

  v16 = self->_collectionView;
  v17 = [MEMORY[0x277CCAA70] indexPathForItem:1 inSection:1];
  v63 = [(UICollectionView *)v16 cellForItemAtIndexPath:v17];

  productBannerHeight = self->_productBannerHeight;
  _lastFocusableCellIndex = [(_TVProductTemplateController *)self _lastFocusableCellIndex];
  if (_lastFocusableCellIndex < 1)
  {
    v22 = 0;
  }

  else
  {
    v20 = self->_collectionView;
    v21 = [MEMORY[0x277CCAA70] indexPathForItem:_lastFocusableCellIndex inSection:1];
    v22 = [(UICollectionView *)v20 cellForItemAtIndexPath:v21];
  }

  v24 = _lastFocusableCellIndex > 0 && self->_isPartialScrollingTemplate;
  attributes = [(IKViewElement *)self->_templateElement attributes];
  v26 = [attributes objectForKey:@"partialScrollingEnabled"];

  bOOLValue = v26 == 0 && v24;
  if (v26 && v24)
  {
    attributes2 = [(IKViewElement *)self->_templateElement attributes];
    v29 = [attributes2 objectForKey:@"partialScrollingEnabled"];
    bOOLValue = [v29 BOOLValue];
  }

  if ([viewCopy isDescendantOfView:v12])
  {
    v30 = MEMORY[0x277CCABB0];
    [v12 frame];
    MinY = CGRectGetMinY(v76);
    v32 = v30;
    goto LABEL_12;
  }

  v34 = v15;
  if (v22 && [viewCopy isDescendantOfView:v22])
  {
    [scrollViewCopy contentInset];
    v36 = v35;
    [v22 frame];
    v37 = CGRectGetMinY(v77);
    [scrollViewCopy contentSize];
    v39 = v38;
    [scrollViewCopy frame];
    v40 = v36 + v39 - CGRectGetHeight(v78);
    if (v37 < v40)
    {
      v40 = v37;
    }

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
    [v23 doubleValue];
    if (v41 < productBannerHeight)
    {
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:productBannerHeight];

      v23 = v42;
    }

    v33 = v63;
    goto LABEL_40;
  }

  if (productBannerHeight > offset)
  {
    v43 = bOOLValue;
  }

  else
  {
    v43 = 0;
  }

  v33 = v63;
  if (v43 != 1)
  {
    goto LABEL_37;
  }

  if (![viewCopy isDescendantOfView:v15] || (objc_msgSend(scrollViewCopy, "contentOffset"), v45 = v44, objc_msgSend(v12, "frame"), v45 >= CGRectGetHeight(v79) * 0.5))
  {
    if ([viewCopy isDescendantOfView:v63])
    {
LABEL_39:
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:productBannerHeight];
      goto LABEL_40;
    }

LABEL_37:
    if (productBannerHeight <= offset && ![viewCopy isDescendantOfView:v15])
    {
      v23 = 0;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  children = [(IKViewElement *)self->_templateElement children];
  v47 = [children countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (!v47)
  {
LABEL_35:

LABEL_56:
    v23 = 0;
    goto LABEL_13;
  }

  v48 = v47;
  v49 = *v69;
LABEL_29:
  v50 = 0;
  while (1)
  {
    if (*v69 != v49)
    {
      objc_enumerationMutation(children);
    }

    v51 = *(*(&v68 + 1) + 8 * v50);
    if ([v51 tv_elementType] == 12)
    {
      break;
    }

    if (v48 == ++v50)
    {
      v48 = [children countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v48)
      {
        goto LABEL_29;
      }

      goto LABEL_35;
    }
  }

  v62 = children;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  children2 = [v51 children];
  v54 = [children2 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (!v54)
  {
LABEL_53:

    goto LABEL_56;
  }

  v55 = v54;
  v56 = *v65;
LABEL_47:
  v57 = 0;
  while (1)
  {
    if (*v65 != v56)
    {
      objc_enumerationMutation(children2);
    }

    v58 = *(*(&v64 + 1) + 8 * v57);
    if ([v58 tv_elementType] == 54)
    {
      break;
    }

    if (v55 == ++v57)
    {
      v55 = [children2 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v55)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }
  }

  style = [v58 style];
  [style tv_margin];
  v61 = v60 + 144.0;

  if (v61 == 0.0)
  {
    goto LABEL_56;
  }

  v32 = MEMORY[0x277CCABB0];
  MinY = v61;
LABEL_12:
  v23 = [v32 numberWithDouble:MinY];
LABEL_13:
  v33 = v63;
  v34 = v15;
LABEL_40:

LABEL_41:

  return v23;
}

- (unint64_t)_lastFocusableCellIndex
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_viewControllers count]< 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_viewControllers reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        tv_associatedIKViewElement = [v8 tv_associatedIKViewElement];
        if ([tv_associatedIKViewElement tv_elementType] != 52 && objc_msgSend(tv_associatedIKViewElement, "tv_elementType") != 38)
        {
          v10 = [(NSArray *)self->_viewControllers indexOfObject:v8];

          goto LABEL_14;
        }
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  return v10;
}

- (id)_relatedSectionHeaderView
{
  v3 = [(NSArray *)self->_viewControllers objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || ([(NSArray *)self->_viewControllers objectAtIndex:0], (shelfViewController = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(NSArray *)self->_viewControllers objectAtIndex:0];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    shelfViewController = 0;
    if (v7)
    {
      v8 = [(NSArray *)self->_viewControllers objectAtIndex:0];
      shelfViewController = [v8 shelfViewController];
    }
  }

  collectionWrappingView = [shelfViewController collectionWrappingView];
  headerView = [collectionWrappingView headerView];

  return headerView;
}

- (void)_configureTopHeroImage:(id)image
{
  imageCopy = image;
  if (!self->_topHeroImageElement)
  {
    v26 = imageCopy;
    v6 = [imageCopy tv_elementType] == 16;
    imageCopy = v26;
    if (v6)
    {
      v6 = [v26 tv_imageType] == 3;
      imageCopy = v26;
      if (v6)
      {
        objc_storeStrong(&self->_topHeroImageElement, image);
        v7 = +[TVInterfaceFactory sharedInterfaceFactory];
        v8 = [v7 _viewFromElement:v26 existingView:self->_topHeroImageView];
        topHeroImageView = self->_topHeroImageView;
        self->_topHeroImageView = v8;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UIImageView *)self->_topHeroImageView _loadImage];
        }

        [(UIImageView *)self->_topHeroImageView setContentMode:2];
        self->_topHeroImageVisible = 1;
        [(UIImageView *)self->_topHeroImageView sizeToFit];
        v10 = MEMORY[0x277D755B8];
        v11 = +[TVMLUtilities TVMLKitBundle];
        v12 = [v10 imageNamed:@"content-gradient-uber" inBundle:v11];

        if (!self->_topHeroGradientView)
        {
          v13 = objc_alloc(MEMORY[0x277D755E8]);
          v14 = [v12 resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
          v15 = [v13 initWithImage:v14];
          topHeroGradientView = self->_topHeroGradientView;
          self->_topHeroGradientView = v15;

          v17 = self->_topHeroGradientView;
          [v12 size];
          [(UIImageView *)v17 setFrame:0.0, 0.0, 1.0, v18];
          view = [(_TVProductTemplateController *)self view];
          [view addSubview:self->_topHeroGradientView];
        }

        if (!self->_topHeroSeparatorView)
        {
          v20 = objc_alloc_init(MEMORY[0x277D75D18]);
          topHeroSeparatorView = self->_topHeroSeparatorView;
          self->_topHeroSeparatorView = v20;

          v22 = self->_topHeroSeparatorView;
          systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
          [(UIView *)v22 setBackgroundColor:systemMidGrayColor];
        }

        navigationItem = [(_TVProductTemplateController *)self navigationItem];
        [navigationItem setLargeTitleDisplayMode:2];

        self->_lightStatusBar = 1;
        [(_TVProductTemplateController *)self setNeedsStatusBarAppearanceUpdate];
        view2 = [(_TVProductTemplateController *)self view];
        [view2 setNeedsLayout];

        [(_TVProductTemplateController *)self _updateTopHeroImageVisibility:self->_collectionView];
        imageCopy = v26;
      }
    }
  }
}

- (void)_configureWithBgElement:(id)element
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [element children];
  v5 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        p_bgImageElement = &self->_bgImageElement;
        if (self->_bgImageElement || [*(*(&v11 + 1) + 8 * v8) tv_elementType] != 16 || objc_msgSend(v9, "tv_imageType"))
        {
          p_bgImageElement = &self->_heroImageElement;
          if (self->_heroImageElement || [v9 tv_elementType] != 16 || objc_msgSend(v9, "tv_imageType") != 3)
          {
            if ([v9 tv_elementType] != 3)
            {
              goto LABEL_15;
            }

            p_bgImageElement = &self->_bgAudioElement;
          }
        }

        objc_storeStrong(p_bgImageElement, v9);
LABEL_15:
        ++v8;
      }

      while (v6 != v8);
      v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_configureWithBannerElement:(id)element
{
  v40 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  objc_storeStrong(&self->_productBannerElement, element);
  style = [(IKViewElement *)self->_productBannerElement style];
  [style tv_height];
  self->_productBannerHeight = v7;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = elementCopy;
  children = [elementCopy children];
  v9 = [children countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v28 = children;
    v29 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(children);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        tv_elementType = [v13 tv_elementType];
        if (tv_elementType > 23)
        {
          if (tv_elementType == 24)
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            children2 = [v13 children];
            v20 = [children2 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v31;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v31 != v22)
                  {
                    objc_enumerationMutation(children2);
                  }

                  if (!self->_heroImageElement)
                  {
                    v24 = *(*(&v30 + 1) + 8 * j);
                    if ([v24 tv_elementType] == 16 && objc_msgSend(v24, "tv_imageType") == 3)
                    {
                      objc_storeStrong(&self->_heroImageElement, v24);
                      goto LABEL_30;
                    }
                  }
                }

                v21 = [children2 countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }

LABEL_30:
              children = v28;
              v11 = v29;
            }
          }

          else
          {
            if (tv_elementType != 54)
            {
              continue;
            }

            children3 = [v13 children];
            children2 = [children3 firstObject];

            style2 = [children2 style];
            if ([style2 tv_position] == 2)
            {

              goto LABEL_32;
            }

            style3 = [children2 style];
            tv_position = [style3 tv_position];

            v11 = v29;
            if (tv_position == 3)
            {
LABEL_32:
              objc_storeStrong(&self->_titleElement, children2);
            }
          }

LABEL_33:

          continue;
        }

        if (tv_elementType != 16)
        {
          if (tv_elementType != 19)
          {
            continue;
          }

          v15 = 1152;
LABEL_10:
          v16 = v13;
          children2 = *(&self->super.super.super.super.isa + v15);
          *(&self->super.super.super.super.isa + v15) = v16;
          goto LABEL_33;
        }

        v15 = 1056;
        if (!self->_heroImageElement && [v13 tv_imageType] == 3)
        {
          goto LABEL_10;
        }
      }

      v10 = [children countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }
}

- (CGSize)_backgroundImageProxySize
{
  if (self->_bgImageElement)
  {
    bgImageElement = self->_bgImageElement;

    [(IKImageElement *)bgImageElement tv_imageScaleToSize];
  }

  else if (self->_topHeroImageElement)
  {

    [(_TVProductTemplateController *)self _topHeroImageViewSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _TVProductTemplateController;
    [(_TVBgImageLoadingViewController *)&v7 _backgroundImageProxySize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_backgroundImageProxy
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _graphicsQuality = [currentDevice _graphicsQuality];

  if (_graphicsQuality == 10)
  {
    v5 = 0;
  }

  else
  {
    attributes = [(IKViewElement *)self->_templateElement attributes];
    v7 = [attributes objectForKeyedSubscript:@"backgroundBlurDisabled"];

    if (objc_opt_respondsToSelector())
    {
      [v7 BOOLValue];
    }

    if (self->_bgImageElement)
    {
      appDocument = [(IKViewElement *)self->_templateElement appDocument];
      [appDocument tv_adjustedWindowSize];
      v10 = v9;
      v12 = v11;

      v13 = objc_opt_new();
      [v13 setImageSize:{v10, v12}];
      v14 = [TVImageLayout layoutWithLayout:v13 element:self->_bgImageElement];
      v5 = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v13];
      style = [(IKImageElement *)self->_bgImageElement style];
      tv_imageTreatment = [style tv_imageTreatment];
      v17 = [tv_imageTreatment isEqualToString:@"uber"];

      if (v17)
      {
        v18 = objc_alloc_init(_TVUberBlurImageDecorator);
        [(_TVUberBlurImageDecorator *)v18 setBlurType:self->_infoListElement == 0];
        [(_TVUberBlurImageDecorator *)v18 setBlurStyle:[TVMLUtilities interfaceStyleForTemplateElement:self->_templateElement]!= 2];
        [v5 setDecorator:v18];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_spacingMetricsForViewControllers:(id)controllers contentSize:(CGSize *)size
{
  v36 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  appDocument = [(IKViewElement *)self->_templateElement appDocument];
  [appDocument tv_adjustedWindowSize];
  v9 = v8;

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = &unk_26CE937F5;
  v33 = v9;
  v34 = 0;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(controllersCopy, "count")}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78___TVProductTemplateController__spacingMetricsForViewControllers_contentSize___block_invoke;
  v25[3] = &unk_279D6F5F8;
  v28 = v9;
  v27 = &v29;
  v11 = v10;
  v26 = v11;
  [controllersCopy enumerateObjectsUsingBlock:v25];
  if ([controllersCopy count] < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [TVMLUtilities rowSpacingMetricsForRowMetrics:v11];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v17)
        {
          [v17 tv_rowMetricsValue];
          v18 = *(&v20 + 1);
        }

        else
        {
          v18 = 0.0;
          v20 = 0u;
        }

        v30[2].height = v18 + v30[2].height;
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v14);
  }

  if (size)
  {
    *size = v30[2];
  }

  _Block_object_dispose(&v29, 8);

  return v13;
}

- (UIEdgeInsets)_cellMarginForIndex:(int64_t)index partialMargins:(UIEdgeInsets *)margins
{
  v7 = [(NSArray *)self->_viewControllers objectAtIndex:?];
  tv_associatedIKViewElement = [v7 tv_associatedIKViewElement];
  style = [tv_associatedIKViewElement style];
  [style tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *(MEMORY[0x277D768C8] + 16);
  if (index)
  {
    v11 = *MEMORY[0x277D768C8];
    if ([(NSArray *)self->_viewControllers count]- 1 == index)
    {
      v18 = v15;
    }
  }

  else if ([(_TVProductTemplateController *)self _shouldUsePartialScrollingTemplate])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      headerElement = [v7 headerElement];

      if (headerElement)
      {
        v11 = 0.0;
        if (margins)
        {
          margins->left = v13;
          margins->bottom = v18;
          margins->right = v17;
          margins->top = 0.0;
        }
      }
    }
  }

  if ([(NSArray *)self->_viewControllers count]- 1 > index)
  {
    v20 = [(NSArray *)self->_viewControllers objectAtIndex:index + 1];
    tv_associatedIKViewElement2 = [v20 tv_associatedIKViewElement];

    style2 = [tv_associatedIKViewElement2 style];
    [style2 tv_margin];
    v24 = v23;

    if (v15 > 0.0 || v24 > 0.0)
    {
      v18 = fmax(v15, v24);
    }

    else
    {
      v25 = [(NSArray *)self->_rowSpacingMetricsList objectAtIndex:index];
      v26 = v25;
      if (v25)
      {
        [v25 tv_rowMetricsValue];
        v18 = v31;
      }

      else
      {
        v18 = 0.0;
      }
    }
  }

  v27 = v11;
  v28 = v13;
  v29 = v18;
  v30 = v17;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (BOOL)_shouldShowTopHeroImage
{
  traitCollection = [(_TVProductTemplateController *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] != 1 || self->_sportsProductTemplate;

  return v4;
}

- (BOOL)_sportsLandscapePhone
{
  if (!self->_sportsProductTemplate || ([*MEMORY[0x277D76620] interfaceOrientation] - 3) > 1)
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)_sportsLandscapePhoneIsOverlaySection:(id)section
{
  sectionCopy = section;
  if ([(_TVProductTemplateController *)self _sportsLandscapePhone])
  {
    v5 = [sectionCopy section] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureBackgroundTintView
{
  if ([(NSArray *)self->_viewControllers count])
  {
    if (self->_backdropTintViewController)
    {
      if (self->_backdropTintView)
      {
        [(_TVProductTemplateController *)self _updateBackgroundTintView];
      }

      else
      {
        v3 = objc_alloc(MEMORY[0x277D75D18]);
        v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        backdropTintView = self->_backdropTintView;
        self->_backdropTintView = v4;

        [(UIView *)self->_backdropTintView setAutoresizingMask:50];
        [(UIView *)self->_backdropTintView setUserInteractionEnabled:0];
        [(UICollectionView *)self->_collectionView insertSubview:self->_backdropTintView atIndex:0];
      }

      v6 = self->_backdropTintView;
      style = [(IKViewElement *)self->_backdropTintElement style];
      tv_backgroundColor = [style tv_backgroundColor];
      color = [tv_backgroundColor color];

      v9 = color;
      if (!color)
      {
        v9 = [MEMORY[0x277D75348] colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
      }

      v11 = v9;
      [(UIView *)v6 setBackgroundColor:v9];
    }

    else
    {

      [(_TVProductTemplateController *)self _updateBackgroundTintView];
    }
  }
}

- (void)_updateBackgroundTintView
{
  if (self->_backdropTintViewController)
  {
    v3 = [(NSArray *)self->_viewControllers indexOfObject:?];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIView *)self->_backdropTintView removeFromSuperview];
      backdropTintViewController = self->_backdropTintViewController;
      self->_backdropTintViewController = 0;

      backdropTintView = self->_backdropTintView;
      self->_backdropTintView = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCAA70] indexPathForItem:v3 inSection:1];
      [(UICollectionView *)self->_collectionView frame];
      v7 = v6;
      v9 = v8;
      v10 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:v14];
      [v10 frame];
      v12 = v11;
      [(_TVProductTemplateController *)self _maxContentSize];
      [(UIView *)self->_backdropTintView setFrame:v7, v12, v9, fmax(v13 - v12, 0.0)];
      [(UICollectionView *)self->_collectionView sendSubviewToBack:self->_backdropTintView];
      [(_TVProductTemplateController *)self _updateBackgroundTintViewEffects];

      backdropTintView = v14;
    }
  }

  else
  {
    [(UIView *)self->_backdropTintView removeFromSuperview];
    backdropTintView = self->_backdropTintView;
    self->_backdropTintView = 0;
  }
}

- (void)_updateBackgroundTintViewEffects
{
  backdropTintView = self->_backdropTintView;
  if (backdropTintView)
  {
    [(UIView *)backdropTintView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(_TVProductTemplateController *)self _maxContentSize];
    v11 = v10;
    [(UIView *)self->_backdropTintView frame];
    v13 = fmax(v11 - v12, 0.0);
    if (v13 > 0.0)
    {
      [(UICollectionView *)self->_collectionView contentSize];
      v15 = v14;
      [(UICollectionView *)self->_collectionView bounds];
      v17 = v15 - v16;
      [(UICollectionView *)self->_collectionView contentInset];
      v19 = v17 - v18;
      [(UICollectionView *)self->_collectionView contentOffset];
      if (v20 > v19)
      {
        [(UICollectionView *)self->_collectionView contentOffset];
        v13 = v13 + v21 - v19;
      }
    }

    v22 = self->_backdropTintView;

    [(UIView *)v22 setFrame:v5, v7, v9, v13];
  }
}

- (CGSize)_maxContentSize
{
  [(UICollectionView *)self->_collectionView contentSize];
  v4 = v3;
  view = [(_TVProductTemplateController *)self view];
  [view bounds];
  v7 = v6;

  if (v4 < v7)
  {
    v4 = v7;
  }

  [(UICollectionView *)self->_collectionView contentSize];
  v9 = v8;
  view2 = [(_TVProductTemplateController *)self view];
  [view2 bounds];
  v12 = v11;

  if (v9 >= v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = v4;
  result.height = v13;
  result.width = v14;
  return result;
}

@end