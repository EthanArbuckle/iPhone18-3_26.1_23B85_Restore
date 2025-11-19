@interface VSTwoFactorEntryViewController
@end

@implementation VSTwoFactorEntryViewController

void __49__VSTwoFactorEntryViewController_iOS_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v17 = v4;
  v6 = [v17 traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {
    v9 = [v17 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = [v17 viewModel];
    [v17 preferredLogoSize];
    [v17 vs_updateViewModel:v11 withUserInterfaceStyle:v10 andPreferredLogoSize:?];
  }

  v12 = [v17 traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  v14 = [v5 preferredContentSizeCategory];

  if (v13 != v14)
  {
    v15 = [v17 fontCenter];
    v16 = [v17 traitCollection];
    [v15 setTraitCollection:v16];
  }
}

void __52__VSTwoFactorEntryViewController_iOS_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) digitView];
  [v1 becomeFirstResponder];
}

@end