@interface PDUWelcomeViewController
@end

@implementation PDUWelcomeViewController

void __59__PDUWelcomeViewController_iOS__requestIconForApplication___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__PDUWelcomeViewController_iOS__requestIconForApplication___block_invoke_2;
  v3[3] = &unk_279AA2740;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 getCGImageForImageDescriptor:v2 completion:v3];
  objc_destroyWeak(&v4);
}

void __59__PDUWelcomeViewController_iOS__requestIconForApplication___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v5 = [MEMORY[0x277D755B8] imageWithCGImage:a2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__PDUWelcomeViewController_iOS__requestIconForApplication___block_invoke_3;
    v7[3] = &unk_279AA2718;
    v8 = v4;
    v9 = v5;
    v6 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __59__PDUWelcomeViewController_iOS__requestIconForApplication___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  [v2 setIcon:*(a1 + 40) accessibilityLabel:@"AppIcon"];
}

@end