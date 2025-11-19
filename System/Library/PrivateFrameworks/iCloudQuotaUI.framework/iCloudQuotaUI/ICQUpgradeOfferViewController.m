@interface ICQUpgradeOfferViewController
- (BOOL)isCancelEnabled;
- (ICQUpgradeOfferViewController)initWithPageSpecification:(id)a3;
- (ICQUpgradeOfferViewController)initWithUpgradeOfferPageSpecification:(id)a3;
- (void)cancel:(id)a3;
- (void)loadView;
- (void)setCancelEnabled:(BOOL)a3;
@end

@implementation ICQUpgradeOfferViewController

- (ICQUpgradeOfferViewController)initWithPageSpecification:(id)a3
{
  v4 = a3;
  v5 = [v4 pageClassIdentifier];
  v6 = [(ICQUpgradeOfferViewController *)self initWithUpgradeOfferPageSpecification:v4];

  return v6;
}

- (ICQUpgradeOfferViewController)initWithUpgradeOfferPageSpecification:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICQUpgradeOfferViewController;
  v3 = [(ICQViewController *)&v7 initWithPageSpecification:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v3 action:sel_cancel_];
    v5 = [(ICQUpgradeOfferViewController *)v3 navigationItem];
    [v5 setLeftBarButtonItem:v4];
  }

  return v3;
}

- (BOOL)isCancelEnabled
{
  v2 = [(ICQUpgradeOfferViewController *)self navigationItem];
  v3 = [v2 leftBarButtonItem];
  v4 = [v3 isEnabled];

  return v4;
}

- (void)setCancelEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICQUpgradeOfferViewController *)self navigationItem];
  v4 = [v5 leftBarButtonItem];
  [v4 setEnabled:v3];
}

- (void)loadView
{
  v3 = [ICQUpgradeOfferView alloc];
  v6 = [(ICQUpgradeOfferView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = [(ICQUpgradeOfferViewController *)self upgradeOfferPageSpecification];
  [(ICQUpgradeOfferView *)v6 setUpgradeOfferPageSpecification:v4];

  v5 = [(ICQViewController *)self buttonTintColor];
  [(ICQUpgradeOfferView *)v6 setButtonTintColor:v5];

  [(ICQUpgradeOfferViewController *)self setView:v6];
  [(ICQUpgradeOfferView *)v6 setDelegate:self];
}

- (void)cancel:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "user canceled upgrade offer", &v15, 2u);
  }

  v5 = [(ICQViewController *)self pageDelegate];
  v6 = objc_opt_respondsToSelector();

  v7 = _ICQGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = MEMORY[0x277CBEC10];
      v10 = [(ICQViewController *)self pageDelegate];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = _ICQStringForAction();
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v15, 0x20u);
    }

    v7 = [(ICQViewController *)self pageDelegate];
    [v7 sender:self action:1 parameters:MEMORY[0x277CBEC10]];
  }

  else if (v8)
  {
    v14 = [(ICQViewController *)self pageDelegate];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "page delegate %@ does not respond to selector sender:action:paramters", &v15, 0xCu);
  }
}

@end