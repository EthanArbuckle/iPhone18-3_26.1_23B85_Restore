@interface ICQViewController
+ (Class)viewControllerClassForPageClassIdentifier:(id)identifier;
- (ICQPageDelegate)pageDelegate;
- (ICQViewController)initWithPageSpecification:(id)specification;
- (void)sender:(id)sender action:(int64_t)action parameters:(id)parameters;
@end

@implementation ICQViewController

+ (Class)viewControllerClassForPageClassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"_ICQUpgradeOfferPageSpecification"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"_ICQUpgradeCompletePageSpecification"))
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

- (ICQViewController)initWithPageSpecification:(id)specification
{
  specificationCopy = specification;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    pageClassIdentifier = [specificationCopy pageClassIdentifier];
    v10 = [ICQViewController viewControllerClassForPageClassIdentifier:pageClassIdentifier];

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
      v8 = [[v10 alloc] initWithPageSpecification:specificationCopy];
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
      objc_storeStrong(&v7->_pageSpecification, specification);
    }
  }

  return v8;
}

- (void)sender:(id)sender action:(int64_t)action parameters:(id)parameters
{
  v24 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ICQViewController sender:action:parameters:", &v18, 2u);
  }

  pageDelegate = [(ICQViewController *)self pageDelegate];
  v10 = objc_opt_respondsToSelector();

  pageDelegate3 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(pageDelegate3, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      pageDelegate2 = [(ICQViewController *)self pageDelegate];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = _ICQStringForAction();
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = parametersCopy;
      _os_log_impl(&dword_275623000, pageDelegate3, OS_LOG_TYPE_DEFAULT, "pageDelegate %@ being sent action:%@ parameters:%@", &v18, 0x20u);
    }

    pageDelegate3 = [(ICQViewController *)self pageDelegate];
    [pageDelegate3 sender:self action:action parameters:parametersCopy];
  }

  else if (v12)
  {
    pageDelegate4 = [(ICQViewController *)self pageDelegate];
    v18 = 138412290;
    v19 = pageDelegate4;
    _os_log_impl(&dword_275623000, pageDelegate3, OS_LOG_TYPE_DEFAULT, "ICQViewController - page delegate %@ does not respond to sender:action:parameters:", &v18, 0xCu);
  }
}

- (ICQPageDelegate)pageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);

  return WeakRetained;
}

@end