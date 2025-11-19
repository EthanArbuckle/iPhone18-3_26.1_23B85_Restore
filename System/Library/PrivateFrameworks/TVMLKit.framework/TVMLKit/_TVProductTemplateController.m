@interface _TVProductTemplateController
- (BOOL)_shouldShowTopHeroImage;
- (BOOL)_sportsLandscapePhone;
- (BOOL)_sportsLandscapePhoneIsOverlaySection:(id)a3;
- (CGSize)_backgroundImageProxySize;
- (CGSize)_maxContentSize;
- (CGSize)_topHeroImageViewSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)_cellMarginForIndex:(int64_t)a3 partialMargins:(UIEdgeInsets *)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)_largeTitleHeight;
- (id)_adamIDForElement:(id)a3;
- (id)_backgroundImageProxy;
- (id)_canonicalIDForElement:(id)a3;
- (id)_relatedSectionHeaderView;
- (id)_spacingMetricsForViewControllers:(id)a3 contentSize:(CGSize *)a4;
- (id)_yOffsetForView:(id)a3 withScrollView:(id)a4 targetYOffset:(double)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)preferredFocusEnvironments;
- (int64_t)_overrideLargeTitleDisplayMode;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_lastFocusableCellIndex;
- (void)_configureBackgroundTintView;
- (void)_configureTopHeroImage:(id)a3;
- (void)_configureWithBannerElement:(id)a3;
- (void)_configureWithBgElement:(id)a3;
- (void)_recordImpressionsForVisibleView;
- (void)_updateBackgroundTintView;
- (void)_updateBackgroundTintViewEffects;
- (void)_updateImpressions;
- (void)_updateTopHeroImageOverlay;
- (void)_updateTopHeroImageVisibility:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureAppearanceTransition;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _TVProductTemplateController

- (void)updateWithViewElement:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v92.receiver = self;
  v92.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v92 updateWithViewElement:v5];
  objc_storeStrong(&self->_templateElement, a3);
  v6 = [(IKViewElement *)self->_templateElement elementName];
  self->_sportsProductTemplate = [v6 isEqualToString:@"productSportsBundleTemplate"];

  v7 = [v5 appDocument];
  [v7 impressionThreshold];
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
  v69 = v5;
  obj = [v5 children];
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
  v71 = self;
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
      v19 = [v18 tv_elementType];
      switch(v19)
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
          v20 = [v15 autoHighlightIdentifier];
          v21 = [v20 length];

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
                  v27 = [v26 tv_associatedIKViewElement];
                  v28 = [[_TVShadowViewElementID alloc] initWithViewElement:v27];
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
              self = v71;
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
      v40 = [(UIViewController *)v23 view];
      v41 = [v39 _viewFromElement:v18 existingView:v40];

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
          v33 = [v18 attributes];
          v34 = [v33 objectForKeyedSubscript:@"markBackgroundSegment"];
          v35 = [v34 BOOLValue];

          if (v35)
          {
            objc_storeStrong(&self->_backdropTintElement, v18);
            objc_storeStrong(&self->_backdropTintViewController, v32);
          }

          v36 = [v18 autoHighlightIdentifier];
          v37 = [v36 length];

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
          v50 = [v49 view];
          [v50 removeFromSuperview];

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
      v60 = [(UICollectionView *)collectionView collectionViewLayout];
      [v60 invalidateLayout];
    }

    [v69 updateType];
  }

  v61 = [(_TVProductTemplateController *)self view];
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
  v65 = [v69 style];
  v66 = [v65 tv_backgroundColor];
  v67 = [v66 color];

  v68 = [(_TVProductTemplateController *)self view];
  [v68 setBackgroundColor:v67];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v13 = [v3 initWithFrame:?];

  [(_TVProductTemplateController *)self setView:v13];
  v5 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v5 setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)v5 setMinimumInteritemSpacing:0.0];
  v6 = [_TVStackCollectionView alloc];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v8 = [(_TVStackCollectionView *)v6 initWithFrame:v5 collectionViewLayout:?];

  v9 = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v8 setBackgroundColor:v9];

  [(UICollectionView *)v8 setDelegate:self];
  [(UICollectionView *)v8 setDataSource:self];
  [(UICollectionView *)v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TVProductCellIdentifier"];
  [(UICollectionView *)v8 setAutoresizingMask:18];
  [(UICollectionView *)v8 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"TVProductHeaderCellIdentifier"];
  [(UICollectionView *)v8 setShowsVerticalScrollIndicator:0];
  v10 = [MEMORY[0x277D75348] whiteColor];
  [(UICollectionView *)v8 setBackgroundColor:v10];

  [(UICollectionView *)v8 setAlwaysBounceVertical:1];
  [(UICollectionView *)v8 _setContentInsetAdjustmentBehavior:0];
  collectionView = self->_collectionView;
  self->_collectionView = v8;
  v12 = v8;

  [v13 addSubview:self->_collectionView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v6 viewDidAppear:a3];
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [(CALayer *)self->_bgBlurSublayer setFilters:0, a4];
  [(CALayer *)self->_bgBlurSublayer removeAnimationForKey:@"blurRadiusAnimation"];
  bgBlurSublayer = self->_bgBlurSublayer;

  [(CALayer *)bgBlurSublayer removeFromSuperlayer];
}

- (void)viewWillAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v16 viewWillAppear:a3];
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
    v8 = [MEMORY[0x277CD9ED0] layer];
    bgBlurSublayer = self->_bgBlurSublayer;
    self->_bgBlurSublayer = v8;

    [(CALayer *)self->_bgBlurSublayer setContents:[(UIImage *)self->_bgImage CGImage]];
    v10 = self->_bgBlurSublayer;
    v17[0] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(CALayer *)v10 setFilters:v11];

    v12 = self->_bgBlurSublayer;
    v13 = [(UIImageView *)self->_bgImageView layer];
    [v13 frame];
    [(CALayer *)v12 setFrame:?];

    v14 = [(UIImageView *)self->_bgImageView layer];
    [v14 addSublayer:self->_bgBlurSublayer];
  }

  v15 = [(_TVProductTemplateController *)self userActivity];
  [v15 becomeCurrent];
}

- (void)configureAppearanceTransition
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = self->_topHeroImageVisible && [(_TVProductTemplateController *)self _shouldShowTopHeroImage];
  v4 = [(_TVProductTemplateController *)self parentViewController];
  v5 = [v4 navigationItem];

  v6 = [(_TVProductTemplateController *)self navigationController];
  v7 = [v6 visibleViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_TVProductTemplateController *)self navigationController];
    v9 = [v8 visibleViewController];
    v10 = [v9 templateViewController];
    v11 = [v10 isEqual:self];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(_TVProductTemplateController *)self transitionCoordinator];
  if (v12 && (topHeroImageView = self->_topHeroImageView, v12, topHeroImageView))
  {
    self->_lightStatusBar = v3;
    objc_initWeak(location, self);
    v14 = [(_TVProductTemplateController *)self transitionCoordinator];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __61___TVProductTemplateController_configureAppearanceTransition__block_invoke;
    v35[3] = &unk_279D6F588;
    v38 = v11;
    objc_copyWeak(&v37, location);
    v39 = v3;
    v15 = v5;
    v36 = v15;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __61___TVProductTemplateController_configureAppearanceTransition__block_invoke_2;
    v30[3] = &unk_279D6F588;
    v33 = v11;
    objc_copyWeak(&v32, location);
    v34 = v3;
    v31 = v15;
    [v14 animateAlongsideTransition:v35 completion:v30];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }

  else if (self->_topHeroImageView)
  {
    if (v11)
    {
      v16 = [(_TVProductTemplateController *)self navigationController];
      v17 = [v16 navigationBar];
    }

    else
    {
      v17 = 0;
    }

    if (v3)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }

    [v17 _setBackgroundOpacity:v18];
    [v17 _setTitleOpacity:v18];
    if (v3)
    {
      [v5 setTitle:0];
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      v19 = [(_TVProductTemplateController *)self navigationItem];
      v20 = [v19 title];
      [v5 setTitle:v20];

      [MEMORY[0x277D75348] tvmlkit_keyColor];
    }
    v21 = ;
    [v17 setTintColor:v21];

    self->_lightStatusBar = v3;
    [(_TVProductTemplateController *)self setNeedsStatusBarAppearanceUpdate];
    if (self->_sportsProductTemplate)
    {
      if ([(_TVProductTemplateController *)self _sportsLandscapePhone])
      {
        v22 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
        v23 = [v22 firstObject];
        v24 = [(UIViewController *)self->_bannerViewController view];
        [v23 addSubview:v24];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVProductTemplateController;
  [(_TVProductTemplateController *)&v5 viewWillDisappear:a3];
  v4 = [(_TVProductTemplateController *)self userActivity];
  [v4 resignCurrent];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVProductTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidDisappear:a3];
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

    v3 = [(_TVProductTemplateController *)self view];
    [v3 bounds];
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
    v17 = [(UIImageView *)self->_vignetteView image];
    [v17 size];
    v19 = v18;
    v21 = v20;

    [(UIImageView *)self->_vignetteView setFrame:0.0, v16 - v21, v19, v21];
  }

  v22 = [(IKViewElement *)self->_templateElement style];
  [v22 tv_margin];
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
  v31 = [(_TVProductTemplateController *)self view];
  [v31 safeAreaInsets];
  v33 = v32;

  if (([(UICollectionView *)self->_collectionView isDragging]& 1) == 0 && ([(UICollectionView *)self->_collectionView isDecelerating]& 1) == 0)
  {
    [(_TVProductTemplateController *)self _topHeroImageViewSize];
    v35 = v34;
    rect = v34;
    v36 = [(_TVProductTemplateController *)self view];
    [v36 bounds];
    Width = CGRectGetWidth(v67);

    [(UIImageView *)self->_topHeroImageView setFrame:0.0, 0.0, Width, v35];
    [(UIImageView *)self->_topHeroGradientView frame];
    v61 = v39;
    v62 = v38;
    v40 = [(_TVProductTemplateController *)self view];
    [v40 bounds];
    v41 = CGRectGetWidth(v68);

    v42 = [(UIImageView *)self->_topHeroGradientView image];
    [v42 size];
    v44 = v43;

    v45 = [(_TVProductTemplateController *)self view];
    [v45 safeAreaInsets];
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
    v54 = [(_TVProductTemplateController *)self view];
    [v54 bounds];
    v55 = CGRectGetWidth(v71);
    v56 = [MEMORY[0x277D759A0] mainScreen];
    [v56 scale];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = _TVProductTemplateController;
  v7 = a4;
  [(_TVProductTemplateController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83___TVProductTemplateController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279D6EA18;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"TVProductCellIdentifier" forIndexPath:v5];
  if ([v5 section])
  {
    v7 = [v5 item];
    v8 = [(NSArray *)self->_viewControllers objectAtIndex:v7];
    v9 = *(MEMORY[0x277D768C8] + 16);
    v21 = *MEMORY[0x277D768C8];
    v22 = v9;
    [(_TVProductTemplateController *)self _cellMarginForIndex:v7 partialMargins:&v21];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v6 setPartialMargins:{v21, v22}];
    [v6 setMargins:{v11, v13, v15, v17}];
    if (!v7)
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

  if ([(_TVProductTemplateController *)self _sportsLandscapePhoneIsOverlaySection:v5])
  {
    [v6 setViewController:0];
  }

  else
  {
    [v6 setViewController:v8];
    v18 = [v6 contentView];
    v19 = [(UIViewController *)v8 view];
    [v18 addSubview:v19];
  }

  return v6;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  collectionView = self->_collectionView;
  v7 = *MEMORY[0x277D767D8];
  v8 = a5;
  v9 = [(UICollectionView *)collectionView dequeueReusableSupplementaryViewOfKind:v7 withReuseIdentifier:@"TVProductHeaderCellIdentifier" forIndexPath:v8];
  [v9 addSubview:self->_topHeroImageView];
  [v9 addSubview:self->_topHeroSeparatorView];
  LODWORD(v7) = [(_TVProductTemplateController *)self _sportsLandscapePhoneIsOverlaySection:v8];

  if (v7)
  {
    v10 = [(UIViewController *)self->_bannerViewController view];
    [v9 addSubview:v10];

    [(_TVProductTemplateController *)self _updateTopHeroImageOverlay];
  }

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4)
  {
    return [(NSArray *)self->_viewControllers count];
  }

  else
  {
    return self->_bannerViewController != 0;
  }
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  autoHighlightIndexPath = self->_autoHighlightIndexPath;
  if (!autoHighlightIndexPath)
  {
    autoHighlightIndexPath = self->_lastFocusedIndexPath;
  }

  return autoHighlightIndexPath;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = [a4 viewController];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = [(_TVProductTemplateController *)self childViewControllers];
    v9 = [v8 containsObject:v10];

    v7 = v10;
    if ((v9 & 1) == 0)
    {
      [(_TVProductTemplateController *)self addChildViewController:v10];
      v6 = [(UIViewController *)v10 didMoveToParentViewController:self];
      v7 = v10;
      if (v10 == self->_backdropTintViewController)
      {
        v6 = [(_TVProductTemplateController *)self _updateBackgroundTintView];
        v7 = v10;
      }
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v6 = [v10 viewController];
  if (v6)
  {
    v7 = [(_TVProductTemplateController *)self childViewControllers];
    if ([v7 containsObject:v6])
    {
      v8 = [v6 view];
      v9 = [v8 isDescendantOfView:v10];

      if (v9)
      {
        [v6 willMoveToParentViewController:0];
        [v6 removeFromParentViewController];
      }
    }

    else
    {
    }
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CBF3A8];
  if ([v8 section])
  {
    v10 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [v8 item]);
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
    v14 = [(UIViewController *)v10 view];
    [v7 bounds];
    Width = CGRectGetWidth(v24);
    v16 = Width;
    if (v14)
    {
      [v14 tv_sizeThatFits:{Width, 0.0}];
      v12 = v17;
      v13 = v18;
    }

    if (!-[_TVProductTemplateController _shouldUsePartialScrollingTemplate](self, "_shouldUsePartialScrollingTemplate") && [v8 section] == 1 && !objc_msgSend(v8, "item"))
    {
      v13 = v13 + 70.0 + 89.0;
    }

    if ([v8 section] == 1)
    {
      -[_TVProductTemplateController _cellMarginForIndex:partialMargins:](self, "_cellMarginForIndex:partialMargins:", [v8 item], 0);
      v13 = v13 + v19 + v20;
    }

    if ([(_TVProductTemplateController *)self _sportsLandscapePhoneIsOverlaySection:v8])
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  if (a5)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v9 = [(IKViewElement *)self->_productBannerElement style:a3];
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
    v7 = [(_TVProductTemplateController *)self view];
    [v7 frame];
    v9 = v8;
    v10 = [(_TVProductTemplateController *)self view];
    [v10 safeAreaInsets];
    v6 = v9 - v11;
  }

  v12 = v4;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if (a5)
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else if ([(_TVProductTemplateController *)self _shouldShowTopHeroImage:a3])
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v8 = v7;
  if (self->_topHeroImageView)
  {
    v18 = v7;
    v7 = [(_TVProductTemplateController *)self _shouldShowTopHeroImage];
    v8 = v18;
    if (v7)
    {
      [(_TVProductTemplateController *)self _topHeroImageViewSize];
      v10 = v9;
      [(_TVProductTemplateController *)self _largeTitleHeight];
      v12 = v10 + v11;
      v7 = [(UICollectionView *)self->_collectionView safeAreaInsets];
      v8 = v18;
      v14 = v12 - v13;
      y = a5->y;
      v16 = y >= v10 * 0.5 && y < v14;
      if (v16 || ((v14 = 0.0, y >= 0.0) ? (v17 = y < v10 * 0.5) : (v17 = 0), v17))
      {
        a5->y = v14;
      }
    }
  }

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(_TVProductTemplateController *)self _updateImpressions];
  if (self->_impressionThreshold > 0.0)
  {
    [(NSArray *)self->_viewControllers enumerateObjectsUsingBlock:&__block_literal_global_24];
  }

  [(_TVProductTemplateController *)self _updateTopHeroImageVisibility:v4];
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
      v6 = [v5 viewController];
      v7 = [v6 view];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 components];
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v21 = v7;
          v22 = v5;
          v11 = 0;
          v12 = *v24;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v8);
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

            v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  v19 = [(_TVProductTemplateController *)self _sportsLandscapePhone];
  result = 10.0;
  if (!v19)
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
    v3 = [(UIViewController *)self->_bannerViewController view];
    [v3 frame];

    v4 = [(UIViewController *)self->_bannerViewController view];
    v5 = [(_TVProductTemplateController *)self view];
    [v5 frame];
    [v4 sizeThatFits:{v6, 0.0}];

    v7 = [(_TVProductTemplateController *)self view];
    [v7 frame];

    [(_TVProductTemplateController *)self _topHeroImageViewSize];
    UIRectCenteredYInRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(_TVProductTemplateController *)self view];
    [v16 frame];
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v18 = MaxX - CGRectGetWidth(v22);

    v19 = [(UIViewController *)self->_bannerViewController view];
    v23.origin.x = v18;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v24 = CGRectIntegral(v23);
    [v19 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];
  }
}

- (void)_updateTopHeroImageVisibility:(id)a3
{
  [a3 contentOffset];
  v5 = v4;
  v6 = [(_TVProductTemplateController *)self navigationController];
  v7 = [v6 navigationBar];

  [(_TVProductTemplateController *)self _topHeroImageViewSize];
  v9 = v8;
  v11 = v10;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if (v5 <= 0.0 && ![(_TVProductTemplateController *)self _sportsLandscapePhone])
  {
    v13 = [(_TVProductTemplateController *)self view];
    [v13 bounds];
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
    v29 = [MEMORY[0x277D759A0] mainScreen];
    [v29 scale];
    v31 = 1.0 / v30;

    [(UIView *)self->_topHeroSeparatorView setFrame:0.0, MaxY, v28, v31];
  }

  if (v5 <= v11 && !IsReduceMotionEnabled)
  {
    [(UIImageView *)self->_topHeroImageView _setContentRectInPixels:0.0 forContentSize:fmin(v5 * -0.28, 0.0), v9, v11, v9, v11];
  }

  if (self->_topHeroImageView)
  {
    v32 = [(_TVProductTemplateController *)self _shouldShowTopHeroImage];
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

    if (v32)
    {
      v38 = fmin(v37 / (v35 * 0.5), 1.0);
      [(UIImageView *)self->_topHeroGradientView setAlpha:1.0 - v38];
      [v7 _setBackgroundOpacity:v38];
      v39 = [MEMORY[0x277D75348] whiteColor];
      v40 = [MEMORY[0x277D75348] tvmlkit_keyColor];
      v41 = [v39 blendWithColor:v40 percentage:v38];
      [v7 setTintColor:v41];

      v42 = [(_TVProductTemplateController *)self _sportsLandscapePhone];
      if (v5 <= 0.0 && v42)
      {
        v43 = [(_TVProductTemplateController *)self view];
        [v43 safeAreaInsets];
        v45 = v5 + v44;

        if (v45 < 0.0)
        {
          v45 = 0.0;
        }

        v46 = [(_TVProductTemplateController *)self view];
        [v46 safeAreaInsets];
        v48 = v45 / (v47 * 0.5);

        v49 = [MEMORY[0x277D75348] tvmlkit_keyColor];
        v50 = [MEMORY[0x277D75348] whiteColor];
        v51 = [v49 blendWithColor:v50 percentage:{fmin(v48, 1.0)}];
        [v7 setTintColor:v51];
      }

      self->_lightStatusBar = v38 <= 0.3;
      [(_TVProductTemplateController *)self setNeedsStatusBarAppearanceUpdate];
    }

    v52 = [(_TVProductTemplateController *)self navigationItem];
    v53 = [v52 title];

    v54 = [(_TVProductTemplateController *)self parentViewController];
    v55 = [v54 navigationItem];

    if (v37 / v36 < 1.0)
    {
      if (self->_topHeroImageVisible)
      {
        goto LABEL_30;
      }

      if (!v7)
      {
        goto LABEL_30;
      }

      self->_topHeroImageVisible = 1;
      if (!v32)
      {
        goto LABEL_30;
      }

      v59 = MEMORY[0x277D75D18];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __62___TVProductTemplateController__updateTopHeroImageVisibility___block_invoke_2;
      v80[3] = &unk_279D6E2F8;
      v57 = &v81;
      v81 = v7;
      v58 = &v82;
      v82 = v55;
      [v59 animateWithDuration:7 delay:v80 options:0 animations:0.15 completion:0.0];
    }

    else
    {
      if (!self->_topHeroImageVisible)
      {
        goto LABEL_30;
      }

      if (!v7)
      {
        goto LABEL_30;
      }

      self->_topHeroImageVisible = 0;
      if (!v32)
      {
        goto LABEL_30;
      }

      v56 = MEMORY[0x277D75D18];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __62___TVProductTemplateController__updateTopHeroImageVisibility___block_invoke;
      v83[3] = &unk_279D6F5D0;
      v57 = &v84;
      v84 = v7;
      v58 = &v85;
      v85 = v55;
      v86 = v53;
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
      v69 = [(_TVProductTemplateController *)self view];
      [v69 safeAreaInsets];
      v71 = v70;
      v72 = [(IKViewElement *)self->_templateElement style];
      [v72 tv_margin];
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
  v3 = [(_TVProductTemplateController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v6 = [(IKViewElement *)self->_templateElement appDocument];
    v5 = [(_TVProductTemplateController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [v6 recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKViewElement *)self->_templateElement appDocument];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = [(UICollectionView *)self->_collectionView visibleCells];
    v8 = [MEMORY[0x277CBEB18] array];
    if ([(_TVProductTemplateController *)self isViewLoaded])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = v7;
      v9 = v7;
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
            v15 = [v14 viewController];
            v16 = [v15 tv_impressionableElementsForDocument:v4];
            [v8 addObjectsFromArray:v16];

            v17 = [v14 titleView];
            if (v17)
            {
              v18 = v17;
              v19 = [v14 isShowingTitleView];

              if (v19)
              {
                v20 = [v14 titleView];
                v21 = [v20 tv_impressionableElementsForDocument:v4];
                [v8 addObjectsFromArray:v21];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      v7 = v24;
    }

    if ([v8 count])
    {
      v22 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
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

- (id)_adamIDForElement:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 tv_stringForKey:@"data-siri"];

  if (v5)
  {
    v16 = v5;
    v17 = v3;
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
    v3 = v17;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_canonicalIDForElement:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 tv_stringForKey:@"data-siri"];

  if (v5)
  {
    v16 = v5;
    v17 = v3;
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
    v3 = v17;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_yOffsetForView:(id)a3 withScrollView:(id)a4 targetYOffset:(double)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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
  v19 = [(_TVProductTemplateController *)self _lastFocusableCellIndex];
  if (v19 < 1)
  {
    v22 = 0;
  }

  else
  {
    v20 = self->_collectionView;
    v21 = [MEMORY[0x277CCAA70] indexPathForItem:v19 inSection:1];
    v22 = [(UICollectionView *)v20 cellForItemAtIndexPath:v21];
  }

  v24 = v19 > 0 && self->_isPartialScrollingTemplate;
  v25 = [(IKViewElement *)self->_templateElement attributes];
  v26 = [v25 objectForKey:@"partialScrollingEnabled"];

  v27 = v26 == 0 && v24;
  if (v26 && v24)
  {
    v28 = [(IKViewElement *)self->_templateElement attributes];
    v29 = [v28 objectForKey:@"partialScrollingEnabled"];
    v27 = [v29 BOOLValue];
  }

  if ([v8 isDescendantOfView:v12])
  {
    v30 = MEMORY[0x277CCABB0];
    [v12 frame];
    MinY = CGRectGetMinY(v76);
    v32 = v30;
    goto LABEL_12;
  }

  v34 = v15;
  if (v22 && [v8 isDescendantOfView:v22])
  {
    [v9 contentInset];
    v36 = v35;
    [v22 frame];
    v37 = CGRectGetMinY(v77);
    [v9 contentSize];
    v39 = v38;
    [v9 frame];
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

  if (productBannerHeight > a5)
  {
    v43 = v27;
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

  if (![v8 isDescendantOfView:v15] || (objc_msgSend(v9, "contentOffset"), v45 = v44, objc_msgSend(v12, "frame"), v45 >= CGRectGetHeight(v79) * 0.5))
  {
    if ([v8 isDescendantOfView:v63])
    {
LABEL_39:
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:productBannerHeight];
      goto LABEL_40;
    }

LABEL_37:
    if (productBannerHeight <= a5 && ![v8 isDescendantOfView:v15])
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
  v46 = [(IKViewElement *)self->_templateElement children];
  v47 = [v46 countByEnumeratingWithState:&v68 objects:v73 count:16];
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
      objc_enumerationMutation(v46);
    }

    v51 = *(*(&v68 + 1) + 8 * v50);
    if ([v51 tv_elementType] == 12)
    {
      break;
    }

    if (v48 == ++v50)
    {
      v48 = [v46 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v48)
      {
        goto LABEL_29;
      }

      goto LABEL_35;
    }
  }

  v62 = v46;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v53 = [v51 children];
  v54 = [v53 countByEnumeratingWithState:&v64 objects:v72 count:16];
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
      objc_enumerationMutation(v53);
    }

    v58 = *(*(&v64 + 1) + 8 * v57);
    if ([v58 tv_elementType] == 54)
    {
      break;
    }

    if (v55 == ++v57)
    {
      v55 = [v53 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v55)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }
  }

  v59 = [v58 style];
  [v59 tv_margin];
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
  v3 = [(NSArray *)self->_viewControllers reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 tv_associatedIKViewElement];
        if ([v9 tv_elementType] != 52 && objc_msgSend(v9, "tv_elementType") != 38)
        {
          v10 = [(NSArray *)self->_viewControllers indexOfObject:v8];

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  if ((isKindOfClass & 1) == 0 || ([(NSArray *)self->_viewControllers objectAtIndex:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(NSArray *)self->_viewControllers objectAtIndex:0];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    v5 = 0;
    if (v7)
    {
      v8 = [(NSArray *)self->_viewControllers objectAtIndex:0];
      v5 = [v8 shelfViewController];
    }
  }

  v9 = [v5 collectionWrappingView];
  v10 = [v9 headerView];

  return v10;
}

- (void)_configureTopHeroImage:(id)a3
{
  v5 = a3;
  if (!self->_topHeroImageElement)
  {
    v26 = v5;
    v6 = [v5 tv_elementType] == 16;
    v5 = v26;
    if (v6)
    {
      v6 = [v26 tv_imageType] == 3;
      v5 = v26;
      if (v6)
      {
        objc_storeStrong(&self->_topHeroImageElement, a3);
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
          v19 = [(_TVProductTemplateController *)self view];
          [v19 addSubview:self->_topHeroGradientView];
        }

        if (!self->_topHeroSeparatorView)
        {
          v20 = objc_alloc_init(MEMORY[0x277D75D18]);
          topHeroSeparatorView = self->_topHeroSeparatorView;
          self->_topHeroSeparatorView = v20;

          v22 = self->_topHeroSeparatorView;
          v23 = [MEMORY[0x277D75348] systemMidGrayColor];
          [(UIView *)v22 setBackgroundColor:v23];
        }

        v24 = [(_TVProductTemplateController *)self navigationItem];
        [v24 setLargeTitleDisplayMode:2];

        self->_lightStatusBar = 1;
        [(_TVProductTemplateController *)self setNeedsStatusBarAppearanceUpdate];
        v25 = [(_TVProductTemplateController *)self view];
        [v25 setNeedsLayout];

        [(_TVProductTemplateController *)self _updateTopHeroImageVisibility:self->_collectionView];
        v5 = v26;
      }
    }
  }
}

- (void)_configureWithBgElement:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 children];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_configureWithBannerElement:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_productBannerElement, a3);
  v6 = [(IKViewElement *)self->_productBannerElement style];
  [v6 tv_height];
  self->_productBannerHeight = v7;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v5;
  v8 = [v5 children];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v28 = v8;
    v29 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 tv_elementType];
        if (v14 > 23)
        {
          if (v14 == 24)
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v17 = [v13 children];
            v20 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                    objc_enumerationMutation(v17);
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

                v21 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }

LABEL_30:
              v8 = v28;
              v11 = v29;
            }
          }

          else
          {
            if (v14 != 54)
            {
              continue;
            }

            v18 = [v13 children];
            v17 = [v18 firstObject];

            v19 = [v17 style];
            if ([v19 tv_position] == 2)
            {

              goto LABEL_32;
            }

            v25 = [v17 style];
            v26 = [v25 tv_position];

            v11 = v29;
            if (v26 == 3)
            {
LABEL_32:
              objc_storeStrong(&self->_titleElement, v17);
            }
          }

LABEL_33:

          continue;
        }

        if (v14 != 16)
        {
          if (v14 != 19)
          {
            continue;
          }

          v15 = 1152;
LABEL_10:
          v16 = v13;
          v17 = *(&self->super.super.super.super.isa + v15);
          *(&self->super.super.super.super.isa + v15) = v16;
          goto LABEL_33;
        }

        v15 = 1056;
        if (!self->_heroImageElement && [v13 tv_imageType] == 3)
        {
          goto LABEL_10;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 _graphicsQuality];

  if (v4 == 10)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(IKViewElement *)self->_templateElement attributes];
    v7 = [v6 objectForKeyedSubscript:@"backgroundBlurDisabled"];

    if (objc_opt_respondsToSelector())
    {
      [v7 BOOLValue];
    }

    if (self->_bgImageElement)
    {
      v8 = [(IKViewElement *)self->_templateElement appDocument];
      [v8 tv_adjustedWindowSize];
      v10 = v9;
      v12 = v11;

      v13 = objc_opt_new();
      [v13 setImageSize:{v10, v12}];
      v14 = [TVImageLayout layoutWithLayout:v13 element:self->_bgImageElement];
      v5 = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v13];
      v15 = [(IKImageElement *)self->_bgImageElement style];
      v16 = [v15 tv_imageTreatment];
      v17 = [v16 isEqualToString:@"uber"];

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

- (id)_spacingMetricsForViewControllers:(id)a3 contentSize:(CGSize *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(IKViewElement *)self->_templateElement appDocument];
  [v7 tv_adjustedWindowSize];
  v9 = v8;

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = &unk_26CE937F5;
  v33 = v9;
  v34 = 0;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78___TVProductTemplateController__spacingMetricsForViewControllers_contentSize___block_invoke;
  v25[3] = &unk_279D6F5F8;
  v28 = v9;
  v27 = &v29;
  v11 = v10;
  v26 = v11;
  [v6 enumerateObjectsUsingBlock:v25];
  if ([v6 count] < 2)
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

  if (a4)
  {
    *a4 = v30[2];
  }

  _Block_object_dispose(&v29, 8);

  return v13;
}

- (UIEdgeInsets)_cellMarginForIndex:(int64_t)a3 partialMargins:(UIEdgeInsets *)a4
{
  v7 = [(NSArray *)self->_viewControllers objectAtIndex:?];
  v8 = [v7 tv_associatedIKViewElement];
  v9 = [v8 style];
  [v9 tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *(MEMORY[0x277D768C8] + 16);
  if (a3)
  {
    v11 = *MEMORY[0x277D768C8];
    if ([(NSArray *)self->_viewControllers count]- 1 == a3)
    {
      v18 = v15;
    }
  }

  else if ([(_TVProductTemplateController *)self _shouldUsePartialScrollingTemplate])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v7 headerElement];

      if (v19)
      {
        v11 = 0.0;
        if (a4)
        {
          a4->left = v13;
          a4->bottom = v18;
          a4->right = v17;
          a4->top = 0.0;
        }
      }
    }
  }

  if ([(NSArray *)self->_viewControllers count]- 1 > a3)
  {
    v20 = [(NSArray *)self->_viewControllers objectAtIndex:a3 + 1];
    v21 = [v20 tv_associatedIKViewElement];

    v22 = [v21 style];
    [v22 tv_margin];
    v24 = v23;

    if (v15 > 0.0 || v24 > 0.0)
    {
      v18 = fmax(v15, v24);
    }

    else
    {
      v25 = [(NSArray *)self->_rowSpacingMetricsList objectAtIndex:a3];
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
  v3 = [(_TVProductTemplateController *)self traitCollection];
  v4 = [v3 verticalSizeClass] != 1 || self->_sportsProductTemplate;

  return v4;
}

- (BOOL)_sportsLandscapePhone
{
  if (!self->_sportsProductTemplate || ([*MEMORY[0x277D76620] interfaceOrientation] - 3) > 1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)_sportsLandscapePhoneIsOverlaySection:(id)a3
{
  v4 = a3;
  if ([(_TVProductTemplateController *)self _sportsLandscapePhone])
  {
    v5 = [v4 section] == 0;
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
      v7 = [(IKViewElement *)self->_backdropTintElement style];
      v8 = [v7 tv_backgroundColor];
      v10 = [v8 color];

      v9 = v10;
      if (!v10)
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
  v5 = [(_TVProductTemplateController *)self view];
  [v5 bounds];
  v7 = v6;

  if (v4 < v7)
  {
    v4 = v7;
  }

  [(UICollectionView *)self->_collectionView contentSize];
  v9 = v8;
  v10 = [(_TVProductTemplateController *)self view];
  [v10 bounds];
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