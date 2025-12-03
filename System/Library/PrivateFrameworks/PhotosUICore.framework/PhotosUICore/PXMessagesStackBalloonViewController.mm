@interface PXMessagesStackBalloonViewController
- (PXMessagesStackBalloonViewController)initWithCoder:(id)coder;
- (PXMessagesStackBalloonViewController)initWithDataSourceManager:(id)manager mediaProvider:(id)provider;
- (PXMessagesStackBalloonViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_executeReuseTest;
- (void)_executeScroll;
- (void)_presentGridWithAssetReference:(id)reference;
- (void)_toggleAdditionalItems;
- (void)_togglePlayableLoading;
- (void)_toggleSnapshot;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PXMessagesStackBalloonViewController

- (void)_presentGridWithAssetReference:(id)reference
{
  v4 = [off_1E7721830 alloc];
  dataSourceManager = [(PXMessagesStackBalloonViewController *)self dataSourceManager];
  mediaProvider = [(PXMessagesStackBalloonViewController *)self mediaProvider];
  assetActionManager = [(PXMessagesStackBalloonViewController *)self assetActionManager];
  v13 = [v4 initWithDataSourceManager:dataSourceManager mediaProvider:mediaProvider selectionManager:0 assetActionManager:assetActionManager assetCollectionActionManager:0];

  [v13 setAllowedActions:{objc_msgSend(v13, "allowedActions") | 0x12000}];
  [v13 setAllowedBehaviors:{objc_msgSend(v13, "allowedBehaviors") & 0xFFFFFFFFFFFFFFDFLL}];
  [v13 setForbiddenBadges:-1];
  [v13 setSectionBodyStyle:2];
  [v13 setWantsModernNavBarButtons:0];
  [v13 setNavBarStyle:0];
  v8 = +[PXMessagesUISettings sharedInstance];
  if ([v8 enableDebugTapbacksGrid])
  {
    v9 = objc_alloc_init(PXMessagesDebugTapbackStatusManager);
    [v13 setTapbackStatusManager:v9];
  }

  else
  {
    [v13 setTapbackStatusManager:0];
  }

  [v13 setDecorationViewClass:objc_opt_class()];
  v10 = [[PXPhotosUIViewController alloc] initWithConfiguration:v13];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:0];
  gridTransitioningDelegate = [(PXMessagesStackView *)self->_stackView gridTransitioningDelegate];
  [v11 setTransitioningDelegate:gridTransitioningDelegate];

  [(PXMessagesStackBalloonViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_toggleAdditionalItems
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = *off_1E7721F88;
  v3 = 1;
  v14 = vdupq_n_s64(1uLL);
  v4 = [(PXMessagesStackView *)self->_stackView additionalItemsCount:v13];
  v6 = &v13 + 1;
  v7 = 1;
  while (v4 != *(v6 - 1) || v5 != *v6)
  {
    v6 += 2;
    if (++v7 == 9)
    {
      goto LABEL_9;
    }
  }

  v3 = v7 & 7;
LABEL_9:
  v9 = &v13 + v3;
  v10 = *v9;
  v11 = *(v9 + 1);
  stackView = self->_stackView;

  [(PXMessagesStackView *)stackView setAdditionalItemsCount:v10, v11];
}

- (void)_toggleSnapshot
{
  stackView = self->_stackView;
  if (self->_hasTransitionSnapshot)
  {
    [(PXMessagesStackView *)self->_stackView removeTransitionSnapshotView];
  }

  else
  {
    currentAssetReference = [(PXMessagesStackView *)self->_stackView currentAssetReference];
    v5 = [(PXMessagesStackView *)stackView installTransitionSnapshotViewForAssetReference:currentAssetReference uncroppedImageFrame:0];
  }

  self->_hasTransitionSnapshot ^= 1u;
}

- (void)_togglePlayableLoading
{
  v3 = [(PXMessagesStackView *)self->_stackView allowPlayableContentLoading]^ 1;
  stackView = self->_stackView;

  [(PXMessagesStackView *)stackView setAllowPlayableContentLoading:v3];
}

- (void)_executeScroll
{
  dataSourceManager = [(PXBaseMessagesStackView *)self->_stackView dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v4 = arc4random_uniform([dataSource numberOfItemsInSection:0]);
  if (![(PXBaseMessagesStackView *)self->_stackView scrollToIndex:v4 animated:1])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to scroll to index %lu", v4];
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Scroll Failed" message:v5 preferredStyle:1];
    v7 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v6 addAction:v7];

    [(PXMessagesStackBalloonViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_executeReuseTest
{
  v3 = self->_stackView;
  dataSourceManager = [(PXMessagesStackBalloonViewController *)self dataSourceManager];
  mediaProvider = [(PXMessagesStackBalloonViewController *)self mediaProvider];
  [(PXBaseMessagesStackView *)v3 setDataSourceManager:0];
  [(PXMessagesStackView *)v3 setMediaProvider:0];
  v6 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXMessagesStackBalloonViewController__executeReuseTest__block_invoke;
  block[3] = &unk_1E774A1B8;
  v11 = v3;
  v12 = mediaProvider;
  v13 = dataSourceManager;
  v7 = dataSourceManager;
  v8 = mediaProvider;
  v9 = v3;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

uint64_t __57__PXMessagesStackBalloonViewController__executeReuseTest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMediaProvider:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDataSourceManager:v2];
}

- (void)viewWillLayoutSubviews
{
  view = [(PXMessagesStackBalloonViewController *)self view];
  [view bounds];

  [(PXMessagesStackBalloonViewController *)self px_safeAreaInsets];
  PXEdgeInsetsInsetRect();
}

- (void)viewDidLoad
{
  v46[6] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = PXMessagesStackBalloonViewController;
  [(PXMessagesStackBalloonViewController *)&v45 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PXMessagesStackBalloonViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [PXMessagesStackView alloc];
  v6 = [(PXMessagesStackView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  stackView = self->_stackView;
  self->_stackView = v6;

  mediaProvider = [(PXMessagesStackBalloonViewController *)self mediaProvider];
  [(PXMessagesStackView *)self->_stackView setMediaProvider:mediaProvider];

  [(PXMessagesStackView *)self->_stackView setAllowPlayableContentLoading:1];
  v9 = +[PXMessagesUISettings sharedInstance];
  if ([v9 enableDebugTapbacksStack])
  {
    v10 = objc_alloc_init(PXMessagesDebugTapbackStatusManager);
    [(PXMessagesStackView *)self->_stackView setTapbackStatusManager:v10];
  }

  else
  {
    [(PXMessagesStackView *)self->_stackView setTapbackStatusManager:0];
  }

  self->_allowAutoplay = 1;
  dataSourceManager = [(PXMessagesStackBalloonViewController *)self dataSourceManager];
  [(PXBaseMessagesStackView *)self->_stackView setDataSourceManager:dataSourceManager];

  v12 = +[PXMessagesUISettings sharedInstance];
  [v12 verticalContentInsets];
  [(PXBaseMessagesStackView *)self->_stackView setVerticalContentInsets:?];

  [(PXMessagesStackView *)self->_stackView setDelegate:self];
  view2 = [(PXMessagesStackBalloonViewController *)self view];
  [view2 addSubview:self->_stackView];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC628];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke;
  v42[3] = &unk_1E774BB08;
  objc_copyWeak(&v43, &location);
  v31 = [v14 actionWithTitle:@"Scroll" image:0 identifier:0 handler:v42];
  v15 = MEMORY[0x1E69DC628];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_2;
  v40[3] = &unk_1E774BB08;
  objc_copyWeak(&v41, &location);
  v30 = [v15 actionWithTitle:@"Reuse Test" image:0 identifier:0 handler:v40];
  v16 = MEMORY[0x1E69DC628];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_3;
  v38[3] = &unk_1E774BB08;
  objc_copyWeak(&v39, &location);
  v17 = [v16 actionWithTitle:@"Toggle Playable Loading" image:0 identifier:0 handler:v38];
  v18 = MEMORY[0x1E69DC628];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_4;
  v36[3] = &unk_1E774BB08;
  objc_copyWeak(&v37, &location);
  v19 = [v18 actionWithTitle:@"Toggle autoplay" image:0 identifier:0 handler:v36];
  v20 = MEMORY[0x1E69DC628];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_5;
  v34[3] = &unk_1E774BB08;
  objc_copyWeak(&v35, &location);
  v21 = [v20 actionWithTitle:@"Toggle Snapshot" image:0 identifier:0 handler:v34];
  v22 = MEMORY[0x1E69DC628];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_6;
  v32[3] = &unk_1E774BB08;
  objc_copyWeak(&v33, &location);
  v23 = [v22 actionWithTitle:@"Toggle +N" image:0 identifier:0 handler:v32];
  v24 = objc_alloc(MEMORY[0x1E69DC708]);
  v25 = MEMORY[0x1E69DCC60];
  v46[0] = v31;
  v46[1] = v30;
  v46[2] = v17;
  v46[3] = v19;
  v46[4] = v21;
  v46[5] = v23;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:6];
  v27 = [v25 menuWithChildren:v26];
  v28 = [v24 initWithTitle:@"Actions" menu:v27];
  navigationItem = [(PXMessagesStackBalloonViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v28];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _executeScroll];
}

void __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _executeReuseTest];
}

void __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _togglePlayableLoading];
}

void __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAutoplay];
}

void __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSnapshot];
}

void __51__PXMessagesStackBalloonViewController_viewDidLoad__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAdditionalItems];
}

- (PXMessagesStackBalloonViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackBalloonViewController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXMessagesStackBalloonViewController initWithCoder:]"}];

  abort();
}

- (PXMessagesStackBalloonViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackBalloonViewController.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXMessagesStackBalloonViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXMessagesStackBalloonViewController)initWithDataSourceManager:(id)manager mediaProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PXMessagesStackBalloonViewController;
  v9 = [(PXMessagesStackBalloonViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSourceManager, manager);
    objc_storeStrong(&v10->_mediaProvider, provider);
  }

  return v10;
}

@end