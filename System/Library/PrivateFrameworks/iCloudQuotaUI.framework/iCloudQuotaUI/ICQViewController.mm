@interface ICQViewController
+ (Class)viewControllerClassForPageClassIdentifier:(id)a3;
- (ICQPageDelegate)pageDelegate;
- (ICQViewController)initWithPageSpecification:(id)a3;
- (void)sender:(id)a3 action:(int64_t)a4 parameters:(id)a5;
@end

@implementation ICQViewController

+ (Class)viewControllerClassForPageClassIdentifier:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"_ICQUpgradeOfferPageSpecification"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"_ICQUpgradeCompletePageSpecification"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (ICQViewController)initWithPageSpecification:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v9 = [v5 pageClassIdentifier];
    v10 = [ICQViewController viewControllerClassForPageClassIdentifier:v9];

    if (objc_opt_class() == self)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "internal error: improper class returned", buf, 2u);
      }

      v8 = 0;
    }

    else
    {
      v8 = [[v10 alloc] initWithPageSpecification:v5];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICQViewController;
    v7 = [(ICQViewController *)&v13 initWithNibName:0 bundle:0];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_pageSpecification, a3);
    }
  }

  return v8;
}

- (void)sender:(id)a3 action:(int64_t)a4 parameters:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ICQViewController sender:action:parameters:", &v18, 2u);
  }

  v9 = [(ICQViewController *)self pageDelegate];
  v10 = objc_opt_respondsToSelector();

  v11 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [(ICQViewController *)self pageDelegate];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = _ICQStringForAction();
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "pageDelegate %@ being sent action:%@ parameters:%@", &v18, 0x20u);
    }

    v11 = [(ICQViewController *)self pageDelegate];
    [v11 sender:self action:a4 parameters:v7];
  }

  else if (v12)
  {
    v17 = [(ICQViewController *)self pageDelegate];
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "ICQViewController - page delegate %@ does not respond to sender:action:parameters:", &v18, 0xCu);
  }
}

- (ICQPageDelegate)pageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);

  return WeakRetained;
}

@end