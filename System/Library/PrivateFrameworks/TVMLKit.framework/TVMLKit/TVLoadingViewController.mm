@interface TVLoadingViewController
@end

@implementation TVLoadingViewController

void __43___TVLoadingViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingTitleLabel];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) loadingTitleLabel];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v5];
}

void __46___TVLoadingViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingTitleLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) spinnerView];
  [v3 setAlpha:0.0];
}

@end