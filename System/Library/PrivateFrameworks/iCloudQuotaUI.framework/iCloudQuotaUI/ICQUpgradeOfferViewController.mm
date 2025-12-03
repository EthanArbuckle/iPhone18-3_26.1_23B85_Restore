@interface ICQUpgradeOfferViewController
- (BOOL)isCancelEnabled;
- (ICQUpgradeOfferViewController)initWithPageSpecification:(id)specification;
- (ICQUpgradeOfferViewController)initWithUpgradeOfferPageSpecification:(id)specification;
- (void)cancel:(id)cancel;
- (void)loadView;
- (void)setCancelEnabled:(BOOL)enabled;
@end

@implementation ICQUpgradeOfferViewController

- (ICQUpgradeOfferViewController)initWithPageSpecification:(id)specification
{
  specificationCopy = specification;
  pageClassIdentifier = [specificationCopy pageClassIdentifier];
  v6 = [(ICQUpgradeOfferViewController *)self initWithUpgradeOfferPageSpecification:specificationCopy];

  return v6;
}

- (ICQUpgradeOfferViewController)initWithUpgradeOfferPageSpecification:(id)specification
{
  v7.receiver = self;
  v7.super_class = ICQUpgradeOfferViewController;
  v3 = [(ICQViewController *)&v7 initWithPageSpecification:specification];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v3 action:sel_cancel_];
    navigationItem = [(ICQUpgradeOfferViewController *)v3 navigationItem];
    [navigationItem setLeftBarButtonItem:v4];
  }

  return v3;
}

- (BOOL)isCancelEnabled
{
  navigationItem = [(ICQUpgradeOfferViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  isEnabled = [leftBarButtonItem isEnabled];

  return isEnabled;
}

- (void)setCancelEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(ICQUpgradeOfferViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];
}

- (void)loadView
{
  v3 = [ICQUpgradeOfferView alloc];
  v6 = [(ICQUpgradeOfferView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  upgradeOfferPageSpecification = [(ICQUpgradeOfferViewController *)self upgradeOfferPageSpecification];
  [(ICQUpgradeOfferView *)v6 setUpgradeOfferPageSpecification:upgradeOfferPageSpecification];

  buttonTintColor = [(ICQViewController *)self buttonTintColor];
  [(ICQUpgradeOfferView *)v6 setButtonTintColor:buttonTintColor];

  [(ICQUpgradeOfferViewController *)self setView:v6];
  [(ICQUpgradeOfferView *)v6 setDelegate:self];
}

- (void)cancel:(id)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "user canceled upgrade offer", &v15, 2u);
  }

  pageDelegate = [(ICQViewController *)self pageDelegate];
  v6 = objc_opt_respondsToSelector();

  pageDelegate3 = _ICQGetLogSystem();
  v8 = os_log_type_enabled(pageDelegate3, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = MEMORY[0x277CBEC10];
      pageDelegate2 = [(ICQViewController *)self pageDelegate];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = _ICQStringForAction();
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_275623000, pageDelegate3, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v15, 0x20u);
    }

    pageDelegate3 = [(ICQViewController *)self pageDelegate];
    [pageDelegate3 sender:self action:1 parameters:MEMORY[0x277CBEC10]];
  }

  else if (v8)
  {
    pageDelegate4 = [(ICQViewController *)self pageDelegate];
    v15 = 138412290;
    v16 = pageDelegate4;
    _os_log_impl(&dword_275623000, pageDelegate3, OS_LOG_TYPE_DEFAULT, "page delegate %@ does not respond to selector sender:action:paramters", &v15, 0xCu);
  }
}

@end