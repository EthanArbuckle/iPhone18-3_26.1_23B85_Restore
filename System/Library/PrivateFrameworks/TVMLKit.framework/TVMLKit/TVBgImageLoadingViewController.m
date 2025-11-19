@interface TVBgImageLoadingViewController
@end

@implementation TVBgImageLoadingViewController

void __64___TVBgImageLoadingViewController_configureAppearanceTransition__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  v5 = [v3 navigationBar];

  v4 = [MEMORY[0x277D75348] tvmlkit_keyColor];
  [v5 setTintColor:v4];

  [v5 _setBackgroundOpacity:*(a1 + 40)];
  [v5 _setTitleOpacity:*(a1 + 40)];
}

void __64___TVBgImageLoadingViewController_configureAppearanceTransition__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  v5 = [v3 navigationBar];

  v4 = [MEMORY[0x277D75348] tvmlkit_keyColor];
  [v5 setTintColor:v4];

  [v5 _setBackgroundOpacity:*(a1 + 40)];
  [v5 _setTitleOpacity:*(a1 + 40)];
}

void __69___TVBgImageLoadingViewController_loadFromViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69___TVBgImageLoadingViewController_loadFromViewController_completion___block_invoke_2;
  v5[3] = &unk_279D6F7B8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v9 = *(a1 + 48);
  v7 = *(a1 + 32);
  v10 = *(a1 + 49);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v8);
}

void __69___TVBgImageLoadingViewController_loadFromViewController_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) uiImage];
    v3 = WeakRetained[124];
    WeakRetained[124] = 0;

    [WeakRetained _configureWithBgImage:v2 backdropImage:0];
    v4 = v2 != 0;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 57), v4);
    }
  }
}

@end