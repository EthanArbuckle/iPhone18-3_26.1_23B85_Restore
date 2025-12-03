@interface PBFPosterGalleryPreviewViewController
+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout;
+ (void)configureSheetPresentationController:(id)controller;
+ (void)prewarmTopButtonLayout;
- ($E55302FE00A828021E966018723DA9D2)metricsForEnvironment:(SEL)environment;
- (NSSet)displayedPreviewIdentifiers;
- (NSSet)tappedPreviewIdentifiers;
- (NSString)addedPreviewIdentifier;
- (PBFPosterGalleryPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PBFPosterGalleryPreviewViewControllerDelegate)delegate;
- (PREditingSceneViewControllerDelegate)editingSceneDelegate;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller;
- (UIView)recycledViewsContainer;
- (id)_layoutSectionForSection:(int64_t)section environment:(id)environment galleryViewSpec:(id)spec;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)navigationControllerForPresentingSceneViewController:(id)controller;
- (int64_t)layoutOrientation;
- (void)_closeButtonTapped:(id)tapped;
- (void)_updatePreferredContentSizeForOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)editingSceneViewControllerDidFinishShowingContent:(id)content;
- (void)forwardAppearanceNotificationName:(id)name;
- (void)galleryCollectionViewControllerDidSelectPreview:(id)preview fromPreviewView:(id)view;
- (void)galleryCollectionViewControllerWillDisplayPreview:(id)preview;
- (void)noteEditingDidDismiss;
- (void)presentPreview:(id)preview withMode:(int64_t)mode fromView:(id)view;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setApplicationStateMonitor:(id)monitor;
- (void)setDataProvider:(id)provider;
- (void)setEditingExtensionInstance:(id)instance;
- (void)updatePreferredContentSizeForSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)viewDidLoad;
@end

@implementation PBFPosterGalleryPreviewViewController

- (PBFPosterGalleryPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewViewController;
  v4 = [(PBFPosterGalleryPreviewViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [objc_opt_class() prewarmTopButtonLayout];
  }

  return v4;
}

- (void)dealloc
{
  [(PRSceneViewController *)self->_loadingHeroEditingSceneViewController setForcesSceneForeground:0];
  [(PBFPosterGalleryPreviewViewController *)self setEditingExtensionInstance:0];
  v3.receiver = self;
  v3.super_class = PBFPosterGalleryPreviewViewController;
  [(PBFPosterGalleryPreviewViewController *)&v3 dealloc];
}

- (void)noteEditingDidDismiss
{
  [(_PBFGalleryCollectionViewController *)self->_collectionViewController noteEditingDidDismiss];
  [(PRSceneViewController *)self->_loadingHeroEditingSceneViewController setForcesSceneForeground:0];

  [(PBFPosterGalleryPreviewViewController *)self setEditingExtensionInstance:0];
}

+ (void)configureSheetPresentationController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy _setShouldDismissWhenTappedOutside:1];
  [controllerCopy setPrefersGrabberVisible:0];
  PRSheetCornerRadius();
  [controllerCopy setPreferredCornerRadius:?];
}

- (void)setApplicationStateMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (([(PBFApplicationStateMonitor *)self->_applicationStateMonitor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_applicationStateMonitor, monitor);
    [(_PBFGalleryCollectionViewController *)self->_collectionViewController setApplicationStateMonitor:self->_applicationStateMonitor];
  }
}

- (void)viewDidLoad
{
  v73[2] = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = PBFPosterGalleryPreviewViewController;
  [(PBFPosterGalleryPreviewViewController *)&v72 viewDidLoad];
  objc_initWeak(&location, self);
  view = [(PBFPosterGalleryPreviewViewController *)self view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  if (!self->_collectionViewController)
  {
    v5 = objc_alloc_init(MEMORY[0x277D752C0]);
    [v5 setScrollDirection:0];
    view2 = [(PBFPosterGalleryPreviewViewController *)self view];
    window = [view2 window];
    screen = [window screen];
    v9 = [PBFPosterGalleryViewSpec specForScreen:screen];

    v10 = objc_alloc(MEMORY[0x277D752B8]);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __52__PBFPosterGalleryPreviewViewController_viewDidLoad__block_invoke;
    v68[3] = &unk_2782C6FB0;
    objc_copyWeak(&v70, &location);
    v11 = v9;
    v69 = v11;
    v12 = [v10 initWithSectionProvider:v68 configuration:v5];
    v13 = [[_PBFGalleryCollectionViewController alloc] initWithCollectionViewLayout:v12];
    collectionViewController = self->_collectionViewController;
    self->_collectionViewController = v13;

    v15 = self->_collectionViewController;
    dataProvider = [(PBFPosterGalleryPreviewViewController *)self dataProvider];
    [(_PBFGalleryCollectionViewController *)v15 setDataProvider:dataProvider];

    [(_PBFGalleryCollectionViewController *)self->_collectionViewController setDelegate:self];
    [(_PBFGalleryCollectionViewController *)self->_collectionViewController setRecycledViewsContainerProviding:self];
    [(_PBFGalleryCollectionViewController *)self->_collectionViewController setHostingViewController:self];
    [(_PBFGalleryCollectionViewController *)self->_collectionViewController setApplicationStateMonitor:self->_applicationStateMonitor];
    navigationController = self->_navigationController;
    self->_navigationController = 0;

    objc_destroyWeak(&v70);
  }

  v18 = self->_navigationController;
  if (!v18)
  {
    v19 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_collectionViewController];
    if (![(PBFPosterGalleryPreviewViewController *)self modalPresentationStyle]|| [(PBFPosterGalleryPreviewViewController *)self modalPresentationStyle]== 5 || [(PBFPosterGalleryPreviewViewController *)self modalPresentationStyle]== 8)
    {
      [(UINavigationController *)v19 setNavigationBarHidden:1];
    }

    else
    {
      navigationItem = [(_PBFGalleryCollectionViewController *)self->_collectionViewController navigationItem];
      v50 = PBFLocalizedString(@"POSTER_GALLERY_PREVIEW_VIEW_TITLE");
      [navigationItem setTitle:v50];

      v51 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__closeButtonTapped_];
      [navigationItem setLeftBarButtonItem:v51];
    }

    v20 = self->_navigationController;
    self->_navigationController = v19;

    v18 = self->_navigationController;
  }

  v21 = v18;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __52__PBFPosterGalleryPreviewViewController_viewDidLoad__block_invoke_2;
  v65[3] = &unk_2782C6FD8;
  v66 = v21;
  v22 = view;
  v67 = v22;
  v52 = v66;
  [(PBFPosterGalleryPreviewViewController *)self bs_addChildViewController:v66 withSuperview:v22 animated:0 transitionBlock:v65];
  if (![(PBFPosterGalleryPreviewViewController *)self modalPresentationStyle]|| [(PBFPosterGalleryPreviewViewController *)self modalPresentationStyle]== 5 || [(PBFPosterGalleryPreviewViewController *)self modalPresentationStyle]== 8)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__0;
    v63 = __Block_byref_object_dispose__0;
    v64 = 0;
    v23 = objc_alloc(MEMORY[0x277D3EC80]);
    v24 = MEMORY[0x277D750C8];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __52__PBFPosterGalleryPreviewViewController_viewDidLoad__block_invoke_37;
    v57[3] = &unk_2782C7000;
    objc_copyWeak(&v58, &location);
    v57[4] = &v59;
    v25 = [v24 actionWithHandler:v57];
    v26 = [v23 initWithStyle:6 frame:v25 primaryAction:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v27 = v60[5];
    v60[5] = v26;

    [v60[5] sizeToFit];
    [v60[5] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 addSubview:v60[5]];
    v28 = objc_opt_class();
    if (v28)
    {
      [v28 _topButtonLayout];
      v29 = v54;
      v30 = v53;
      v31 = v56;
      v32 = v55;
    }

    else
    {
      v31 = 0.0;
      v32 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
    }

    v74.origin.x = v30;
    v74.origin.y = v29;
    v74.size.width = v32;
    v74.size.height = v31;
    MinX = 16.0;
    MinY = 16.0;
    if (!CGRectIsEmpty(v74))
    {
      v75.origin.x = v30;
      v75.origin.y = v29;
      v75.size.width = v32;
      v75.size.height = v31;
      MinX = CGRectGetMinX(v75);
      v76.origin.x = v30;
      v76.origin.y = v29;
      v76.size.width = v32;
      v76.size.height = v31;
      MinY = CGRectGetMinY(v76);
    }

    v35 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v60[5] leadingAnchor];
    leadingAnchor2 = [v22 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:MinX];
    v73[0] = v38;
    topAnchor = [v60[5] topAnchor];
    topAnchor2 = [v22 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:MinY];
    v73[1] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    [v35 activateConstraints:v42];

    objc_destroyWeak(&v58);
    _Block_object_dispose(&v59, 8);
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
  displayedPreviewIdentifiers = self->_displayedPreviewIdentifiers;
  self->_displayedPreviewIdentifiers = v43;

  v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
  tappedPreviewIdentifiers = self->_tappedPreviewIdentifiers;
  self->_tappedPreviewIdentifiers = v45;

  currentlyEditingPreviewIdentifier = self->_currentlyEditingPreviewIdentifier;
  self->_currentlyEditingPreviewIdentifier = 0;

  addedPreviewIdentifier = self->_addedPreviewIdentifier;
  self->_addedPreviewIdentifier = 0;

  [(PBFPosterGalleryPreviewViewController *)self _updatePreferredContentSizeForOrientation:[(PBFPosterGalleryPreviewViewController *)self layoutOrientation]];
  objc_destroyWeak(&location);
}

id __52__PBFPosterGalleryPreviewViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _layoutSectionForSection:a2 environment:v5 galleryViewSpec:*(a1 + 32)];

  return v7;
}

void __52__PBFPosterGalleryPreviewViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 view];
  [*(a1 + 40) bounds];
  [v4 setFrame:?];

  v5 = [*(a1 + 32) view];
  [v5 setAccessibilityIdentifier:@"posterboard-gallery-view"];

  v6[2]();
}

void __52__PBFPosterGalleryPreviewViewController_viewDidLoad__block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _closeButtonTapped:*(*(*(a1 + 32) + 8) + 40)];
}

- (id)_layoutSectionForSection:(int64_t)section environment:(id)environment galleryViewSpec:(id)spec
{
  v128[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  specCopy = spec;
  dataProvider = [(PBFPosterGalleryPreviewViewController *)self dataProvider];
  v11 = [dataProvider sectionIdentifierForIndex:section];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  memset(v115, 0, sizeof(v115));
  v108 = environmentCopy;
  [(PBFPosterGalleryPreviewViewController *)self metricsForEnvironment:environmentCopy];
  v105 = v11;
  v106 = dataProvider;
  v12 = [dataProvider sectionTypeForSectionWithIdentifier:v11];
  v13 = &v115[v12];
  v14 = *v13;
  v15 = v13[1];
  v16 = v120;
  v17 = MEMORY[0x277CFB840];
  v107 = specCopy;
  sectionHeaderTitleFont = [specCopy sectionHeaderTitleFont];
  [sectionHeaderTitleFont lineHeight];
  v19 = [v17 estimatedDimension:?];

  v20 = [MEMORY[0x277CFB840] estimatedDimension:v14];
  v21 = [MEMORY[0x277CFB840] estimatedDimension:v15];
  v22 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v20 heightDimension:v21];
  v23 = [MEMORY[0x277CFB860] itemWithLayoutSize:v22];
  v24 = [MEMORY[0x277CFB878] fixedSpacing:*&v16];
  v25 = 0;
  if (v12 <= 1)
  {
    if (v12)
    {
      v26 = 0x277CFB000;
      if (v12 != 1)
      {
        goto LABEL_23;
      }

      v48 = MEMORY[0x277CFB870];
      v49 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      [v48 sizeWithWidthDimension:v49 heightDimension:v21];
      v51 = v50 = v24;

      v52 = MEMORY[0x277CFB850];
      v128[0] = v23;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:1];
      v112 = v51;
      v54 = v51;
      v24 = v50;
      v26 = 0x277CFB000;
      v27 = [v52 horizontalGroupWithLayoutSize:v54 subitems:v53];

      [v27 setInterItemSpacing:v24];
      v25 = [MEMORY[0x277CFB868] sectionWithGroup:v27];
      [v25 setInterGroupSpacing:*(&v16 + 1)];
    }

    else
    {
      [MEMORY[0x277CFB870] sizeWithWidthDimension:v20 heightDimension:v21];
      v72 = v71 = v24;
      v73 = MEMORY[0x277CFB850];
      v126 = v23;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
      v112 = v72;
      v75 = v72;
      v24 = v71;
      v26 = 0x277CFB000;
      v27 = [v73 horizontalGroupWithLayoutSize:v75 subitems:v74];

      v25 = [MEMORY[0x277CFB868] sectionWithGroup:v27];
      [v25 setInterGroupSpacing:*&v16];
      [v25 setOrthogonalScrollingBehavior:2];
    }
  }

  else if (v12 == 2)
  {
    v55 = MEMORY[0x277CFB870];
    v56 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    [v55 sizeWithWidthDimension:v56 heightDimension:v21];
    v58 = v57 = v24;

    v59 = MEMORY[0x277CFB850];
    v127 = v23;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
    v112 = v58;
    v61 = v58;
    v24 = v57;
    v26 = 0x277CFB000;
    v27 = [v59 horizontalGroupWithLayoutSize:v61 subitems:v60];

    [v27 setInterItemSpacing:v24];
    v25 = [MEMORY[0x277CFB868] sectionWithGroup:v27];
  }

  else if (v12 == 3)
  {
    v62 = [v106 numberOfItemsInSectionWithIdentifier:v105];
    v63 = *(&v116 + 1);
    v64 = *(&v117 + 1);
    [v107 heroSpacingForOrientation:{-[PBFPosterGalleryPreviewViewController layoutOrientation](self, "layoutOrientation")}];
    v66 = v65;
    container = [v108 container];
    [container effectiveContentSize];
    v69 = v68 - v63 - v64;

    v70 = v66 * (v62 - 1);
    v104 = v19;
    if (section)
    {
      v112 = 0;
    }

    else
    {
      v112 = [MEMORY[0x277CFB878] fixedSpacing:22.0];
    }

    v26 = 0x277CFB000uLL;
    if (v70 + v62 * v14 <= v69)
    {
      v80 = (v69 - (v14 * v62 + v70)) * 0.5;
      v81 = MEMORY[0x277CFB870];
      v82 = [MEMORY[0x277CFB840] absoluteDimension:?];
      v27 = [v81 sizeWithWidthDimension:v82 heightDimension:v21];

      v78 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v27 repeatingSubitem:v23 count:v62];
      v83 = [MEMORY[0x277CFB878] fixedSpacing:v66];
      [v78 setInterItemSpacing:v83];

      v114 = [MEMORY[0x277CFB848] spacingForLeading:0 top:v112 trailing:0 bottom:0];
      [v78 setEdgeSpacing:v114];
      v111 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v109 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v111 heightDimension:v21];
      v84 = MEMORY[0x277CFB850];
      v123 = v78;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
      v85 = v24;
      v87 = v86 = v23;
      [v84 horizontalGroupWithLayoutSize:v109 subitems:v87];
      v88 = v102 = v20;

      v23 = v86;
      v24 = v85;
      v26 = 0x277CFB000uLL;
      [v88 setContentInsets:{0.0, v80, 0.0, v80}];
      v25 = [MEMORY[0x277CFB868] sectionWithGroup:v88];

      v20 = v102;
    }

    else
    {
      v27 = [MEMORY[0x277CFB870] sizeWithWidthDimension:v20 heightDimension:v21];
      v76 = MEMORY[0x277CFB850];
      v122 = v23;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v122 count:1];
      v78 = [v76 horizontalGroupWithLayoutSize:v27 subitems:v77];

      if (v112)
      {
        v79 = [MEMORY[0x277CFB848] spacingForLeading:0 top:v112 trailing:0 bottom:0];
        [v78 setEdgeSpacing:v79];
      }

      v25 = [MEMORY[0x277CFB868] sectionWithGroup:v78];
      [v25 setInterGroupSpacing:v66];
      [v25 setOrthogonalScrollingBehavior:2];
    }

    v12 = 3;
    v19 = v104;
  }

  else
  {
    v26 = 0x277CFB000;
    if (v12 != 4)
    {
      goto LABEL_23;
    }

    v101 = v20;
    v103 = v19;
    v112 = objc_opt_new();
    v27 = [MEMORY[0x277CFB840] estimatedDimension:v15 + v15];
    v28 = 1;
    v110 = v23;
    do
    {
      v113 = v28;
      v29 = MEMORY[0x277CFB870];
      v30 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v31 = [v29 sizeWithWidthDimension:v30 heightDimension:v27];

      v32 = MEMORY[0x277CFB850];
      v125 = v110;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
      v34 = [v32 horizontalGroupWithLayoutSize:v31 subitems:v33];

      [v34 setInterItemSpacing:v24];
      v35 = MEMORY[0x277CFB870];
      v36 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v37 = [v35 sizeWithWidthDimension:v36 heightDimension:v27];

      v38 = MEMORY[0x277CFB850];
      v124 = v34;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
      v40 = [v38 verticalGroupWithLayoutSize:v37 subitems:v39];

      [v40 setInterItemSpacing:v24];
      [v112 addObject:v40];

      v28 = 0;
    }

    while ((v113 & 1) != 0);
    v41 = MEMORY[0x277CFB870];
    v42 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v43 = [v41 sizeWithWidthDimension:v42 heightDimension:v27];

    v44 = [MEMORY[0x277CFB850] verticalGroupWithLayoutSize:v43 subitems:v112];
    v45 = [MEMORY[0x277CFB878] fixedSpacing:*&v16];
    [v44 setInterItemSpacing:v45];

    v46 = [MEMORY[0x277CFB878] flexibleSpacing:0.0];
    v47 = [MEMORY[0x277CFB848] spacingForLeading:v46 top:0 trailing:v46 bottom:0];
    [v44 setEdgeSpacing:v47];
    v25 = [MEMORY[0x277CFB868] sectionWithGroup:v44];
    [v25 setInterGroupSpacing:*(&v16 + 1)];
    [v25 setOrthogonalScrollingBehavior:2];

    v12 = 4;
    v19 = v103;
    v20 = v101;
    v23 = v110;
    v26 = 0x277CFB000;
  }

LABEL_23:
  [v25 setContentInsets:{*&v115[2 * v12 + 5], *(&v115[2 * v12 + 5] + 1), *&v115[2 * v12 + 6], *(&v115[2 * v12 + 6] + 1)}];
  if (v12 != 3)
  {
    v89 = *(v26 + 2160);
    v90 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v91 = [v89 sizeWithWidthDimension:v90 heightDimension:v19];

    v92 = [MEMORY[0x277CFB830] boundarySupplementaryItemWithLayoutSize:v91 elementKind:@"KGalleryHeaderElementKind" alignment:1 absoluteOffset:{0.0, 0.0}];
    [v92 setZIndex:0];
    v121 = v92;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
    v93 = v24;
    v94 = v23;
    v95 = v22;
    v96 = v21;
    v97 = v20;
    v99 = v98 = v19;
    [v25 setBoundarySupplementaryItems:v99];

    v19 = v98;
    v20 = v97;
    v21 = v96;
    v22 = v95;
    v23 = v94;
    v24 = v93;
  }

  return v25;
}

- (void)setDataProvider:(id)provider
{
  providerCopy = provider;
  if (self->_dataProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(&self->_dataProvider, provider);
    isViewLoaded = [(PBFPosterGalleryPreviewViewController *)self isViewLoaded];
    providerCopy = v7;
    if (isViewLoaded)
    {
      [(_PBFGalleryCollectionViewController *)self->_collectionViewController setDataProvider:self->_dataProvider];
      providerCopy = v7;
    }
  }
}

- (int64_t)layoutOrientation
{
  view = [(PBFPosterGalleryPreviewViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if (!interfaceOrientation)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    interfaceOrientation = [mEMORY[0x277D75128] activeInterfaceOrientation];
  }

  if ((interfaceOrientation - 1) < 2)
  {
    return 1;
  }

  else
  {
    return interfaceOrientation;
  }
}

- (void)_updatePreferredContentSizeForOrientation:(int64_t)orientation
{
  BSDispatchQueueAssertMain();
  traitCollection = [(PBFPosterGalleryPreviewViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    view = [(PBFPosterGalleryPreviewViewController *)self view];
    window = [view window];
    screen = [window screen];
    v20 = [PBFPosterGalleryViewSpec specForScreen:screen];

    [v20 gallerySizeForPadOrientation:orientation];
    [(PBFPosterGalleryPreviewViewController *)self setPreferredContentSize:?];
  }

  else
  {
    view2 = [(PBFPosterGalleryPreviewViewController *)self view];
    window2 = [view2 window];
    [window2 bounds];
    v13 = v12;
    v15 = v14;

    if (v13 == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v13 = v18;
      v15 = v19;
    }

    [(PBFPosterGalleryPreviewViewController *)self setPreferredContentSize:v13, v15];
  }
}

- (void)updatePreferredContentSizeForSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  BSDispatchQueueAssertMain();
  traitCollection = [(PBFPosterGalleryPreviewViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    if (width < height)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    [(PBFPosterGalleryPreviewViewController *)self _updatePreferredContentSizeForOrientation:v10];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__PBFPosterGalleryPreviewViewController_updatePreferredContentSizeForSize_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_2782C7028;
    objc_copyWeak(&v12, &location);
    [coordinatorCopy animateAlongsideTransition:v11 completion:0];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __101__PBFPosterGalleryPreviewViewController_updatePreferredContentSizeForSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 layoutIfNeeded];
}

- ($E55302FE00A828021E966018723DA9D2)metricsForEnvironment:(SEL)environment
{
  v71 = a4;
  container = [v71 container];
  [container contentSize];
  if (v8 != self->_environmentContainerContentSize.width || v7 != self->_environmentContainerContentSize.height)
  {
    goto LABEL_14;
  }

  container2 = [v71 container];
  [container2 contentInsets];
  v14 = v13;
  if (v15 != self->_environmentContainerContentInsets.leading || v11 != self->_environmentContainerContentInsets.top || v12 != self->_environmentContainerContentInsets.trailing)
  {

LABEL_14:
    goto LABEL_15;
  }

  bottom = self->_environmentContainerContentInsets.bottom;

  if (v14 == bottom)
  {
    v62 = *&self->_metrics.sectionContentInsets[4].top;
    *&retstr->var1[3].bottom = *&self->_metrics.sectionContentInsets[3].bottom;
    *&retstr->var1[4].top = v62;
    v63 = *&self->_metrics.standardSpacing;
    *&retstr->var1[4].bottom = *&self->_metrics.sectionContentInsets[4].bottom;
    *&retstr->var2 = v63;
    v64 = *&self->_metrics.sectionContentInsets[2].top;
    *&retstr->var1[1].bottom = *&self->_metrics.sectionContentInsets[1].bottom;
    *&retstr->var1[2].top = v64;
    v65 = *&self->_metrics.sectionContentInsets[3].top;
    *&retstr->var1[2].bottom = *&self->_metrics.sectionContentInsets[2].bottom;
    *&retstr->var1[3].top = v65;
    v66 = *&self->_metrics.sectionContentInsets[0].top;
    retstr->var0[4] = self->_metrics.itemSizeForType[4];
    *&retstr->var1[0].top = v66;
    v67 = *&self->_metrics.sectionContentInsets[1].top;
    *&retstr->var1[0].bottom = *&self->_metrics.sectionContentInsets[0].bottom;
    *&retstr->var1[1].top = v67;
    v68 = self->_metrics.itemSizeForType[1];
    retstr->var0[0] = self->_metrics.itemSizeForType[0];
    retstr->var0[1] = v68;
    v69 = self->_metrics.itemSizeForType[3];
    retstr->var0[2] = self->_metrics.itemSizeForType[2];
    retstr->var0[3] = v69;
    goto LABEL_18;
  }

LABEL_15:
  p_metrics = &self->_metrics;
  self->_metrics.itemSizeForType[0] = 0u;
  self->_metrics.itemSizeForType[1] = 0u;
  self->_metrics.itemSizeForType[2] = 0u;
  self->_metrics.itemSizeForType[3] = 0u;
  self->_metrics.itemSizeForType[4] = 0u;
  *&self->_metrics.sectionContentInsets[0].top = 0u;
  *&self->_metrics.sectionContentInsets[0].bottom = 0u;
  *&self->_metrics.sectionContentInsets[1].top = 0u;
  *&self->_metrics.sectionContentInsets[1].bottom = 0u;
  *&self->_metrics.sectionContentInsets[2].top = 0u;
  *&self->_metrics.sectionContentInsets[2].bottom = 0u;
  *&self->_metrics.sectionContentInsets[3].top = 0u;
  *&self->_metrics.sectionContentInsets[3].bottom = 0u;
  *&self->_metrics.sectionContentInsets[4].top = 0u;
  *&self->_metrics.sectionContentInsets[4].bottom = 0u;
  *&self->_metrics.standardSpacing = 0u;
  view = [(PBFPosterGalleryPreviewViewController *)self view];
  window = [view window];
  screen = [window screen];
  v22 = [PBFPosterGalleryViewSpec specForScreen:screen];

  container3 = [v71 container];
  [container3 effectiveContentSize];
  v70 = v24;

  layoutOrientation = [(PBFPosterGalleryPreviewViewController *)self layoutOrientation];
  [PBFPosterGalleryPreviewCell contentSizeForCellWithTitle:0 interfaceOrientation:layoutOrientation spec:v22];
  v27 = v26;
  v29 = v28;
  [PBFPosterGalleryPreviewCell contentSizeForCellWithTitle:0 interfaceOrientation:layoutOrientation spec:v22];
  v31 = v30;
  v33 = v32;
  [PBFPosterGalleryPreviewCell contentSizeForCellWithTitle:1 interfaceOrientation:layoutOrientation spec:v22];
  v35 = v34;
  v37 = v36;
  [PBFPosterGalleryPreviewCell heroContentSizeForCellWithTitle:1 interfaceOrientation:layoutOrientation spec:v22];
  v39 = v38;
  v41 = v40;
  [v22 sectionHorizontalMargin];
  UIRoundToScreenScale();
  p_metrics->itemSizeForType[1].width = v35;
  p_metrics->itemSizeForType[1].height = v37;
  p_metrics->itemSizeForType[0].width = v27;
  p_metrics->itemSizeForType[0].height = v29;
  p_metrics->itemSizeForType[3].width = v39;
  p_metrics->itemSizeForType[3].height = v41;
  p_metrics->itemSizeForType[2].width = v42;
  p_metrics->itemSizeForType[2].height = v29;
  p_trailing = &p_metrics->sectionContentInsets[0].trailing;
  v44 = 5;
  p_metrics->itemSizeForType[4].width = v31;
  p_metrics->itemSizeForType[4].height = v33;
  do
  {
    [v22 sectionHorizontalMargin];
    v46 = v45;
    [v22 sectionVerticalMargin];
    v48 = v47;
    [v22 sectionHorizontalMargin];
    *(p_trailing - 3) = 0;
    *(p_trailing - 2) = v46;
    *(p_trailing - 1) = v48;
    *p_trailing = v49;
    p_trailing += 4;
    --v44;
  }

  while (v44);
  v72 = *&p_metrics->sectionContentInsets[3].leading;
  trailing = p_metrics->sectionContentInsets[3].trailing;
  p_metrics->sectionContentInsets[3].top = 4.0;
  [v22 sectionVerticalMargin];
  [v22 sectionVerticalMargin];
  p_metrics->sectionContentInsets[4].top = 4.0;
  *&p_metrics->sectionContentInsets[4].leading = v72;
  p_metrics->sectionContentInsets[4].trailing = trailing;
  [v22 standardSpacing];
  p_metrics->standardSpacing = v50;
  [v22 groupSpacing];
  p_metrics->groupSpacing = v51;
  v52 = *&p_metrics->sectionContentInsets[4].top;
  *&retstr->var1[3].bottom = *&p_metrics->sectionContentInsets[3].bottom;
  *&retstr->var1[4].top = v52;
  v53 = *&p_metrics->sectionContentInsets[2].top;
  *&retstr->var1[1].bottom = *&p_metrics->sectionContentInsets[1].bottom;
  *&retstr->var1[2].top = v53;
  v54 = *&p_metrics->sectionContentInsets[3].top;
  *&retstr->var1[2].bottom = *&p_metrics->sectionContentInsets[2].bottom;
  *&retstr->var1[3].top = v54;
  v55 = *&p_metrics->sectionContentInsets[0].top;
  retstr->var0[4] = p_metrics->itemSizeForType[4];
  *&retstr->var1[0].top = v55;
  v56 = *&p_metrics->sectionContentInsets[1].top;
  *&retstr->var1[0].bottom = *&p_metrics->sectionContentInsets[0].bottom;
  *&retstr->var1[1].top = v56;
  v57 = p_metrics->itemSizeForType[1];
  retstr->var0[0] = p_metrics->itemSizeForType[0];
  retstr->var0[1] = v57;
  v58 = p_metrics->itemSizeForType[3];
  retstr->var0[2] = p_metrics->itemSizeForType[2];
  retstr->var0[3] = v58;
  v59 = *&p_metrics->standardSpacing;
  *&retstr->var1[4].bottom = *&p_metrics->sectionContentInsets[4].bottom;
  *&retstr->var2 = v59;

LABEL_18:

  return result;
}

- (void)setEditingExtensionInstance:(id)instance
{
  instanceCopy = instance;
  [(PFPosterExtensionInstance *)self->_editingExtensionInstance terminateWithExplanation:@"terminating for gallery reuse" error:0];
  editingExtensionInstance = self->_editingExtensionInstance;
  self->_editingExtensionInstance = instanceCopy;
}

- (void)presentPreview:(id)preview withMode:(int64_t)mode fromView:(id)view
{
  v73 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  viewCopy = view;
  posterDescriptorLookupInfo = [previewCopy posterDescriptorLookupInfo];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];

  posterDescriptorLookupInfo2 = [previewCopy posterDescriptorLookupInfo];
  posterDescriptorExtension = [posterDescriptorLookupInfo2 posterDescriptorExtension];

  v14 = MEMORY[0x277D3EB78];
  identity = [posterDescriptorExtension identity];
  v16 = [MEMORY[0x277CCAD78] pf_UUIDFromArbitraryString:@"PosterGalleryEditing"];
  v17 = [v14 extensionInstanceForIdentity:identity instanceIdentifier:v16];

  [(PBFPosterGalleryPreviewViewController *)self setEditingExtensionInstance:v17];
  v60 = self->_collectionViewController;
  if (posterDescriptorPath && v17)
  {
    if (mode == 2)
    {
      [(PBFPosterGalleryPreviewViewController *)self setPresentingPreview:1];
      previewUniqueIdentifier = [previewCopy previewUniqueIdentifier];
      currentlyEditingPreviewIdentifier = self->_currentlyEditingPreviewIdentifier;
      self->_currentlyEditingPreviewIdentifier = previewUniqueIdentifier;

      loadingHeroEditingSceneViewController = [(PBFPosterGalleryPreviewViewController *)self loadingHeroEditingSceneViewController];
      if (loadingHeroEditingSceneViewController)
      {
        [loadingHeroEditingSceneViewController removeObserver:self];
        [loadingHeroEditingSceneViewController setForcesSceneForeground:0];
        view = [loadingHeroEditingSceneViewController view];
        [view removeFromSuperview];

        [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroEditingSceneViewController:0];
        loadingHeroPreviewView = [(PBFPosterGalleryPreviewViewController *)self loadingHeroPreviewView];
        [loadingHeroPreviewView setShowsLoadingIndicator:0];

        [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroPreviewView:0];
        loadingHeroActivityIndicationTimer = [(PBFPosterGalleryPreviewViewController *)self loadingHeroActivityIndicationTimer];
        [loadingHeroActivityIndicationTimer invalidate];

        [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroActivityIndicationTimer:0];
      }

      v23 = [PBFGalleryEditingSceneViewController alloc];
      v24 = [MEMORY[0x277D3ED50] pbf_configurableOptionsForPreview:previewCopy];
      v25 = [MEMORY[0x277D3ED60] pbf_configuredPropertiesForPreview:previewCopy];
      v26 = [(PRSceneViewController *)v23 initWithProvider:v17 contents:posterDescriptorPath configurableOptions:v24 configuredProperties:v25];

      previewUniqueIdentifier2 = [previewCopy previewUniqueIdentifier];
      [(PBFEditingSceneViewController *)v26 setGalleryPreviewUniqueIdentifier:previewUniqueIdentifier2];

      galleryOptions = [previewCopy galleryOptions];
      [(PBFEditingSceneViewController *)v26 setGalleryOptions:galleryOptions];

      v29 = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:posterDescriptorPath];
      galleryOptions2 = [v29 galleryOptions];
      if (galleryOptions2)
      {
        [(PBFEditingSceneViewController *)v26 setDescriptorGalleryOptions:galleryOptions2];
      }

      else
      {
        v32 = [MEMORY[0x277D3EDE8] loadPosterDescriptorGalleryOptionsForPath:posterDescriptorPath error:0];
        [(PBFEditingSceneViewController *)v26 setDescriptorGalleryOptions:v32];
      }

      [viewCopy posterPreviewFrame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      window = [viewCopy window];
      [viewCopy convertRect:window toCoordinateSpace:{v34, v36, v38, v40}];
      [(PBFEditingSceneViewController *)v26 setGalleryPreviewFrame:?];

      window2 = [viewCopy window];
      screen = [window2 screen];
      v44 = [PBFPosterGalleryViewSpec specForScreen:screen];
      [v44 posterCornerRadius];
      [(PBFEditingSceneViewController *)v26 setGalleryPreviewCornerRadius:?];

      contentView = [viewCopy contentView];
      if (contentView)
      {
        presentationStyle = [previewCopy presentationStyle];
      }

      else
      {
        presentationStyle = 1;
      }

      [(PBFEditingSceneViewController *)v26 setGalleryPreviewView:contentView];
      [(PBFEditingSceneViewController *)v26 setGalleryPresentationStyle:presentationStyle];
      type = [previewCopy type];
      [(PBFEditingSceneViewController *)v26 setGalleryPreviewType:type];

      makeComplicationsPortalView = [viewCopy makeComplicationsPortalView];
      [(PBFEditingSceneViewController *)v26 setGalleryPreviewComplicationsView:makeComplicationsPortalView];

      [(PREditingSceneViewController *)v26 setDelegate:self];
      v59 = presentationStyle != 1;
      if (presentationStyle == 1)
      {
        v48 = PBFLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          posterExtensionBundleIdentifier = [posterDescriptorExtension posterExtensionBundleIdentifier];
          *buf = 138412290;
          v66 = posterExtensionBundleIdentifier;
          _os_log_impl(&dword_21B526000, v48, OS_LOG_TYPE_DEFAULT, "Delaying the start of presentation for hero poster until it finishes loading: %@", buf, 0xCu);
        }

        [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroEditingSceneViewController:v26];
        [(PREditingSceneViewController *)v26 addObserver:self];
        [(PREditingSceneViewController *)v26 setShowsContentWhenReady:1];
        view2 = [(PBFGalleryEditingSceneViewController *)v26 view];
        [view2 setHidden:1];
        view3 = [(PBFPosterGalleryPreviewViewController *)self view];
        window3 = [view3 window];
        [window3 bounds];
        [view2 setFrame:?];

        view4 = [(PBFPosterGalleryPreviewViewController *)self view];
        [view4 addSubview:view2];

        v54 = MEMORY[0x277CBEBB8];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __74__PBFPosterGalleryPreviewViewController_presentPreview_withMode_fromView___block_invoke;
        v63[3] = &unk_2782C7050;
        v63[4] = self;
        v64 = viewCopy;
        v55 = [v54 scheduledTimerWithTimeInterval:0 repeats:v63 block:0.5];
        [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroActivityIndicationTimer:v55];
        [(PRSceneViewController *)v26 setForcesSceneForeground:1];
      }
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277D3EE60]) initWithProvider:v17 contents:posterDescriptorPath previewing:mode == 1];
      v59 = 1;
    }

    [(PBFGalleryEditingSceneViewController *)v26 setModalPresentationStyle:5];
    [(PBFGalleryEditingSceneViewController *)v26 setModalPresentationCapturesStatusBarAppearance:1];
    if (v59)
    {
      v56 = [(PBFPosterGalleryPreviewViewController *)self navigationControllerForPresentingSceneViewController:v26];
      objc_initWeak(buf, self);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __74__PBFPosterGalleryPreviewViewController_presentPreview_withMode_fromView___block_invoke_2;
      v61[3] = &unk_2782C6D48;
      objc_copyWeak(&v62, buf);
      [(PBFPosterGalleryPreviewViewController *)self presentViewController:v56 animated:1 completion:v61];
      objc_destroyWeak(&v62);
      objc_destroyWeak(buf);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    processIdentity = [v17 processIdentity];
    *buf = 138413058;
    v66 = previewCopy;
    v67 = 2048;
    modeCopy = mode;
    v69 = 2112;
    v70 = posterDescriptorPath;
    v71 = 2112;
    v72 = processIdentity;
    _os_log_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "cannot present preview %@ (with mode=%lli) due to invalid lookup info : path=%@ processIdentity=%@", buf, 0x2Au);
  }
}

uint64_t __74__PBFPosterGalleryPreviewViewController_presentPreview_withMode_fromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingHeroPreviewView];
  [v2 setShowsLoadingIndicator:0];

  [*(a1 + 40) setShowsLoadingIndicator:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setLoadingHeroPreviewView:v4];
}

void __74__PBFPosterGalleryPreviewViewController_presentPreview_withMode_fromView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained noteEditingDidPresent];
}

- (id)navigationControllerForPresentingSceneViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[PBFEditingSceneNavigationController alloc] initWithRootViewController:controllerCopy];

  [(PBFEditingSceneNavigationController *)v5 setNavigationBarHidden:1 animated:0];
  [(PBFEditingSceneNavigationController *)v5 setModalPresentationStyle:5];
  [(PBFEditingSceneNavigationController *)v5 setModalPresentationCapturesStatusBarAppearance:1];
  [(PBFEditingSceneNavigationController *)v5 setTransitioningDelegate:self];
  [(PBFEditingSceneNavigationController *)v5 setDismissalDelegate:self];
  if (PUIDynamicRotationIsActive())
  {
    view = [(PBFEditingSceneNavigationController *)v5 view];
    [view setClipsToBounds:0];

    [(PBFEditingSceneNavigationController *)v5 _setClipsToBounds:0];
  }

  return v5;
}

- (NSSet)displayedPreviewIdentifiers
{
  v2 = [(NSMutableSet *)self->_displayedPreviewIdentifiers copy];

  return v2;
}

- (NSSet)tappedPreviewIdentifiers
{
  v2 = [(NSMutableSet *)self->_tappedPreviewIdentifiers copy];

  return v2;
}

- (NSString)addedPreviewIdentifier
{
  v2 = [(NSString *)self->_addedPreviewIdentifier copy];

  return v2;
}

+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout
{
  if (_topButtonLayout_onceToken != -1)
  {
    +[PBFPosterGalleryPreviewViewController _topButtonLayout];
  }

  v4 = unk_28120BE58;
  retstr->leadingTopButtonFrame.origin = _topButtonLayout_layout;
  retstr->leadingTopButtonFrame.size = v4;
  v5 = unk_28120BE78;
  retstr->trailingTopButtonFrame.origin = xmmword_28120BE68;
  retstr->trailingTopButtonFrame.size = v5;
  return result;
}

double __57__PBFPosterGalleryPreviewViewController__topButtonLayout__block_invoke()
{
  SBSTopButtonFramesForPosters();
  result = 0.0;
  _topButtonLayout_layout = 0u;
  unk_28120BE58 = 0u;
  xmmword_28120BE68 = 0u;
  unk_28120BE78 = 0u;
  return result;
}

+ (void)prewarmTopButtonLayout
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBFPosterGalleryPreviewViewController prewarmTopButtonLayout]"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__PBFPosterGalleryPreviewViewController_prewarmTopButtonLayout__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  PBFDispatchAsyncWithString(v3, QOS_CLASS_UTILITY, v4);
}

- (void)_closeButtonTapped:(id)tapped
{
  activePresentationController = [(PBFPosterGalleryPreviewViewController *)self activePresentationController];
  delegate = [activePresentationController delegate];
  presentingViewController = [(PBFPosterGalleryPreviewViewController *)self presentingViewController];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __60__PBFPosterGalleryPreviewViewController__closeButtonTapped___block_invoke;
  v12 = &unk_2782C58B0;
  v7 = delegate;
  v13 = v7;
  v8 = activePresentationController;
  v14 = v8;
  [presentingViewController dismissViewControllerAnimated:1 completion:&v9];

  if (objc_opt_respondsToSelector())
  {
    [v7 presentationControllerWillDismiss:{v8, v9, v10, v11, v12, v13}];
  }
}

uint64_t __60__PBFPosterGalleryPreviewViewController__closeButtonTapped___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 presentationControllerDidDismiss:v4];
  }

  return result;
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller
{
  v10 = a4;
  editingSceneDelegate = [(PBFPosterGalleryPreviewViewController *)self editingSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (editingSceneDelegate)
    {
      [editingSceneDelegate topButtonLayoutForEditingSceneViewController:v10];
    }

    else
    {
      retstr->trailingTopButtonFrame.origin = 0u;
      retstr->trailingTopButtonFrame.size = 0u;
      retstr->leadingTopButtonFrame.origin = 0u;
      retstr->leadingTopButtonFrame.size = 0u;
    }
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    retstr->leadingTopButtonFrame.origin = *MEMORY[0x277CBF3A0];
    retstr->leadingTopButtonFrame.size = v8;
    retstr->trailingTopButtonFrame.origin = v7;
    retstr->trailingTopButtonFrame.size = v8;
  }

  return result;
}

- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  completionCopy = completion;
  v16 = controllerCopy;
  NSClassFromString(&cfstr_Pbfgalleryedit.isa);
  if (!v16)
  {
    [PBFPosterGalleryPreviewViewController editingSceneViewController:a2 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterGalleryPreviewViewController editingSceneViewController:a2 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
  }

  v17 = 0x27CD8F000uLL;
  if (action == 1)
  {
    objc_storeStrong(&self->_addedPreviewIdentifier, self->_currentlyEditingPreviewIdentifier);
    v18 = v16;
    [v18 setGalleryDismissalAction:1];
    galleryOptions = [v18 galleryOptions];
    modeSemanticTypeToCreate = [galleryOptions modeSemanticTypeToCreate];

    if (modeSemanticTypeToCreate)
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x2050000000;
      v21 = getDNDModeConfigurationServiceClass_softClass;
      v60 = getDNDModeConfigurationServiceClass_softClass;
      if (!getDNDModeConfigurationServiceClass_softClass)
      {
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __getDNDModeConfigurationServiceClass_block_invoke;
        v56[3] = &unk_2782C5CB0;
        v56[4] = &v57;
        __getDNDModeConfigurationServiceClass_block_invoke(v56);
        v21 = v58[3];
      }

      v49 = completionCopy;
      v22 = v21;
      _Block_object_dispose(&v57, 8);
      v23 = [v21 serviceForClientIdentifier:@"com.apple.PosterBoard.gallery.MadeForFocus"];
      v55 = 0;
      v24 = [v23 createModeConfigurationUsingTemplateForModeSemanticType:objc_msgSend(modeSemanticTypeToCreate error:{"integerValue"), &v55}];
      v52 = v55;
      v53 = v24;
      if (v24)
      {
        v43 = v23;
        v25 = objc_alloc(MEMORY[0x277D3ED98]);
        mode = [v24 mode];
        [mode modeIdentifier];
        v27 = v46 = configurationCopy;
        [v24 mode];
        v28 = v44 = modeSemanticTypeToCreate;
        [v28 identifier];
        v29 = v45 = v18;
        v50 = [v25 initWithActivityIdentifier:v27 activityUUID:v29];

        v41 = objc_alloc(MEMORY[0x277D3ED60]);
        titleStyleConfiguration = [propertiesCopy titleStyleConfiguration];
        complicationLayout = [propertiesCopy complicationLayout];
        renderingConfiguration = [propertiesCopy renderingConfiguration];
        homeScreenConfiguration = [propertiesCopy homeScreenConfiguration];
        colorVariationsConfiguration = [propertiesCopy colorVariationsConfiguration];
        quickActionsConfiguration = [propertiesCopy quickActionsConfiguration];
        suggestionMetadata = [propertiesCopy suggestionMetadata];
        otherMetadata = [propertiesCopy otherMetadata];
        userInfo = [propertiesCopy userInfo];
        v34 = v50;
        v42 = [v41 initWithTitleStyleConfiguration:titleStyleConfiguration focusConfiguration:v50 complicationLayout:complicationLayout renderingConfiguration:renderingConfiguration homeScreenConfiguration:homeScreenConfiguration colorVariationsConfiguration:colorVariationsConfiguration quickActionsConfiguration:quickActionsConfiguration suggestionMetadata:suggestionMetadata otherMetadata:otherMetadata userInfo:userInfo];

        v17 = 0x27CD8F000;
        configurationCopy = v46;

        v18 = v45;
        modeSemanticTypeToCreate = v44;

        v23 = v43;
        propertiesCopy = v42;
      }

      else
      {
        v51 = PBFLogCommon();
        v34 = v51;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterGalleryPreviewViewController editingSceneViewController:v52 userDidDismissWithAction:v51 updatedConfiguration:? updatedConfiguredProperties:? completion:?];
        }
      }

      completionCopy = v49;
    }
  }

  editingSceneDelegate = [(PBFPosterGalleryPreviewViewController *)self editingSceneDelegate];
  [editingSceneDelegate editingSceneViewController:v16 userDidDismissWithAction:action updatedConfiguration:configurationCopy updatedConfiguredProperties:propertiesCopy completion:completionCopy];

  [(PBFPosterGalleryPreviewViewController *)self setPresentingPreview:0];
  v36 = *(v17 + 2856);
  v37 = *(&self->super.super.super.isa + v36);
  *(&self->super.super.super.isa + v36) = 0;
}

- (void)editingSceneViewControllerDidFinishShowingContent:(id)content
{
  v20 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  loadingHeroEditingSceneViewController = [(PBFPosterGalleryPreviewViewController *)self loadingHeroEditingSceneViewController];

  if (loadingHeroEditingSceneViewController == contentCopy)
  {
    v6 = PBFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      contentsIdentity = [contentCopy contentsIdentity];
      provider = [contentsIdentity provider];
      *buf = 138412290;
      v19 = provider;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Restarting of presentation for hero poster: %@", buf, 0xCu);
    }

    view = [contentCopy view];
    [view removeFromSuperview];
    [view setHidden:0];
    loadingHeroPreviewView = [(PBFPosterGalleryPreviewViewController *)self loadingHeroPreviewView];
    v11 = [(PBFPosterGalleryPreviewViewController *)self navigationControllerForPresentingSceneViewController:contentCopy];
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__PBFPosterGalleryPreviewViewController_editingSceneViewControllerDidFinishShowingContent___block_invoke;
    v14[3] = &unk_2782C7078;
    v15 = contentCopy;
    v12 = loadingHeroPreviewView;
    v16 = v12;
    objc_copyWeak(&v17, buf);
    [(PBFPosterGalleryPreviewViewController *)self presentViewController:v11 animated:1 completion:v14];
    [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroEditingSceneViewController:0];
    [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroPreviewView:0];
    loadingHeroActivityIndicationTimer = [(PBFPosterGalleryPreviewViewController *)self loadingHeroActivityIndicationTimer];
    [loadingHeroActivityIndicationTimer invalidate];

    [(PBFPosterGalleryPreviewViewController *)self setLoadingHeroActivityIndicationTimer:0];
    objc_destroyWeak(&v17);

    objc_destroyWeak(buf);
  }
}

void __91__PBFPosterGalleryPreviewViewController_editingSceneViewControllerDidFinishShowingContent___block_invoke(id *a1)
{
  [a1[4] setForcesSceneForeground:0];
  [a1[5] setShowsLoadingIndicator:0];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained noteEditingDidPresent];
}

- (void)forwardAppearanceNotificationName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  presentedViewController = [(PBFPosterGalleryPreviewViewController *)self presentedViewController];
  childViewControllers = [presentedViewController childViewControllers];

  v14 = childViewControllers;
  v7 = [childViewControllers bs_filter:&__block_literal_global_105];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = PBFLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v20 = nameCopy;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "Forwarding %{public}@ appearance notification to child view controller: %{public}@", buf, 0x16u);
        }

        [v12 forwardAppearanceNotificationName:nameCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  collectionView = [(_PBFGalleryCollectionViewController *)self->_collectionViewController collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];
  [collectionView deselectItemAtIndexPath:firstObject animated:1];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  if (sourceController == self && (objc_opt_self(), v8 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
  {
    bottomViewController = [controllerCopy bottomViewController];
    v11 = objc_opt_class();
    v12 = bottomViewController;
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

    v16 = v13;

    if ([v16 galleryPresentationStyle])
    {
      v14 = 0;
    }

    else
    {
      [v16 galleryPreviewFrame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [v16 galleryPreviewCornerRadius];
      v26 = v25;
      galleryPreviewView = [v16 galleryPreviewView];
      galleryPreviewComplicationsView = [v16 galleryPreviewComplicationsView];
      v14 = [(PBFEditingZoomAnimationController *)[PBFEditingZoomUpAnimationController alloc] initWithPreviewFrame:galleryPreviewView previewCornerRadius:galleryPreviewComplicationsView previewView:v18 complicationsView:v20, v22, v24, v26];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  bottomViewController = [controllerCopy bottomViewController];
  v9 = objc_opt_class();
  v10 = bottomViewController;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 galleryPreviewFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 galleryPreviewCornerRadius];
  v22 = v21;
  galleryPreviewView = [v12 galleryPreviewView];
  galleryPreviewComplicationsView = [v12 galleryPreviewComplicationsView];
  galleryPresentationStyle = [v12 galleryPresentationStyle];
  if (!galleryPresentationStyle)
  {
    v40 = v22;
    galleryPreviewUniqueIdentifier = [v12 galleryPreviewUniqueIdentifier];
    [(_PBFGalleryCollectionViewController *)self->_collectionViewController previewFrameForScrollingPreviewWithIdentifierToVisible:galleryPreviewUniqueIdentifier];
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    if (!CGRectIsNull(v42))
    {
      collectionView = [(_PBFGalleryCollectionViewController *)self->_collectionViewController collectionView];
      window = [collectionView window];
      [collectionView convertRect:window toCoordinateSpace:{x, y, width, height}];
      v14 = v33;
      v16 = v34;
      v18 = v35;
      v20 = v36;
    }

    v3 = [(PBFEditingZoomAnimationController *)[PBFEditingZoomDownAnimationController alloc] initWithPreviewFrame:galleryPreviewView previewCornerRadius:galleryPreviewComplicationsView previewView:v14 complicationsView:v16, v18, v20, v40];
    delegate = [(PBFPosterGalleryPreviewViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v38 = [delegate galleryViewController:self willUseAnimationController:v3 forDismissingEditingViewControllerWithAction:{objc_msgSend(v12, "galleryDismissalAction")}];

      v3 = v38;
    }
  }

  if (galleryPresentationStyle)
  {
LABEL_14:
    v3 = 0;
  }

  return v3;
}

- (void)galleryCollectionViewControllerWillDisplayPreview:(id)preview
{
  displayedPreviewIdentifiers = self->_displayedPreviewIdentifiers;
  previewUniqueIdentifier = [preview previewUniqueIdentifier];
  [(NSMutableSet *)displayedPreviewIdentifiers addObject:previewUniqueIdentifier];
}

- (void)galleryCollectionViewControllerDidSelectPreview:(id)preview fromPreviewView:(id)view
{
  viewCopy = view;
  previewCopy = preview;
  delegate = [(PBFPosterGalleryPreviewViewController *)self delegate];
  [delegate galleryViewController:self didSelectPreview:previewCopy fromPreviewView:viewCopy];

  tappedPreviewIdentifiers = self->_tappedPreviewIdentifiers;
  previewUniqueIdentifier = [previewCopy previewUniqueIdentifier];

  [(NSMutableSet *)tappedPreviewIdentifiers addObject:previewUniqueIdentifier];
}

- (UIView)recycledViewsContainer
{
  BSDispatchQueueAssertMain();
  recycledViewsContainer = self->_recycledViewsContainer;
  if (!recycledViewsContainer)
  {
    v4 = objc_opt_new();
    v5 = self->_recycledViewsContainer;
    self->_recycledViewsContainer = v4;

    [(UIView *)self->_recycledViewsContainer setAlpha:0.0];
    [(UIView *)self->_recycledViewsContainer setFrame:1000.0, 1000.0, 0.0, 0.0];
    recycledViewsContainer = self->_recycledViewsContainer;
  }

  return recycledViewsContainer;
}

- (PBFPosterGalleryPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PREditingSceneViewControllerDelegate)editingSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editingSceneDelegate);

  return WeakRetained;
}

- (void)editingSceneViewController:(const char *)a1 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PBFGalleryEditingSceneViewControllerClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"PBFPosterGalleryPreviewViewController.m";
    v10 = 1024;
    v11 = 724;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)editingSceneViewController:(uint64_t)a1 userDidDismissWithAction:(NSObject *)a2 updatedConfiguration:updatedConfiguredProperties:completion:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "Could not create mode configuration on demand: %@", &v2, 0xCu);
}

- (void)editingSceneViewController:(const char *)a1 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.3(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"PBFPosterGalleryPreviewViewController.m";
    v10 = 1024;
    v11 = 724;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end