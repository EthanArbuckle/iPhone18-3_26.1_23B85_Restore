@interface PXPeopleDetailSettingsOneUpViewController
- (PXPeopleDetailSettingsOneUpViewController)initWithAsset:(id)asset;
- (void)setAsset:(id)asset;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PXPeopleDetailSettingsOneUpViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__PXPeopleDetailSettingsOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E774C5F8;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:&__block_literal_global_230345];
}

void __96__PXPeopleDetailSettingsOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v5 = [v2 viewWithTag:1];

  v3 = [*(a1 + 32) px_screen];
  [v3 bounds];
  [v5 setBounds:?];

  v4 = [*(a1 + 32) view];
  [v4 center];
  [v5 setCenter:?];
}

- (void)setAsset:(id)asset
{
  v4 = MEMORY[0x1E69DCAE0];
  assetCopy = asset;
  v7 = [[v4 alloc] initWithImage:assetCopy];

  [v7 setContentMode:1];
  view = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [view addSubview:v7];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsOneUpViewController;
  [(PXPeopleDetailSettingsOneUpViewController *)&v12 viewDidLoad];
  view = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [view frame];
  v5 = v4;
  view2 = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [view2 frame];
  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v5, v8}];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v9 setBackgroundColor:whiteColor];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setContentMode:1];
  [v9 setClipsToBounds:0];
  [v9 setTag:1];
  view3 = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [view3 addSubview:v9];
}

- (PXPeopleDetailSettingsOneUpViewController)initWithAsset:(id)asset
{
  assetCopy = asset;
  if (self)
  {
    [(PXPeopleDetailSettingsOneUpViewController *)self superclass];
    objc_storeStrong(&self->_asset, asset);
  }

  return self;
}

@end