@interface PXPeopleDetailSettingsOneUpViewController
- (PXPeopleDetailSettingsOneUpViewController)initWithAsset:(id)a3;
- (void)setAsset:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PXPeopleDetailSettingsOneUpViewController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__PXPeopleDetailSettingsOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E774C5F8;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:&__block_literal_global_230345];
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

- (void)setAsset:(id)a3
{
  v4 = MEMORY[0x1E69DCAE0];
  v5 = a3;
  v7 = [[v4 alloc] initWithImage:v5];

  [v7 setContentMode:1];
  v6 = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [v6 addSubview:v7];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsOneUpViewController;
  [(PXPeopleDetailSettingsOneUpViewController *)&v12 viewDidLoad];
  v3 = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [v6 frame];
  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v5, v8}];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [v9 setBackgroundColor:v10];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setContentMode:1];
  [v9 setClipsToBounds:0];
  [v9 setTag:1];
  v11 = [(PXPeopleDetailSettingsOneUpViewController *)self view];
  [v11 addSubview:v9];
}

- (PXPeopleDetailSettingsOneUpViewController)initWithAsset:(id)a3
{
  v5 = a3;
  if (self)
  {
    [(PXPeopleDetailSettingsOneUpViewController *)self superclass];
    objc_storeStrong(&self->_asset, a3);
  }

  return self;
}

@end