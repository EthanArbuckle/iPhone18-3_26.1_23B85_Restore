@interface PSUIMyAccountSpecifier
- (PSListController)hostController;
- (PSUIMyAccountSpecifier)initWithContext:(id)context cbCache:(id)cache;
- (void)launchMyAccountInSafari:(id)safari;
- (void)launchMyAccountInWebView:(id)view;
@end

@implementation PSUIMyAccountSpecifier

- (PSUIMyAccountSpecifier)initWithContext:(id)context cbCache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v9 = [cacheCopy carrierServicesWebViewAccountUrl:contextCopy];
  v10 = [cacheCopy carrierServicesAccountUrl:contextCopy];
  if (v9 && [v9 length] || v10 && objc_msgSend(v10, "length"))
  {
    v11 = [cacheCopy carrierServicesMyAccountUrlTitle:contextCopy];
    v12 = [(PSUIMyAccountSpecifier *)self initWithName:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

    if (v12)
    {
      [(PSUIMyAccountSpecifier *)v12 setIdentifier:@"MY_ACCOUNT"];
      objc_storeStrong(&v12->_context, context);
      if (v9 && [v9 length])
      {
        [(PSUIMyAccountSpecifier *)v12 setProperty:v9 forKey:@"MY_ACCOUNT_URL"];
        v13 = &selRef_launchMyAccountInWebView_;
      }

      else
      {
        [(PSUIMyAccountSpecifier *)v12 setProperty:v10 forKey:@"MY_ACCOUNT_URL"];
        v13 = &selRef_launchMyAccountInSafari_;
      }

      [(PSUIMyAccountSpecifier *)v12 setButtonAction:*v13];
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)launchMyAccountInWebView:(id)view
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [view propertyForKey:@"MY_ACCOUNT_URL"];
  getLogger = [(PSUIMyAccountSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Launch my account in web view pressed: %@", &v13, 0xCu);
  }

  v6 = [[PSUICarrierSpaceMyAccountWebViewController alloc] initWithURLString:v4];
  myAccountWebViewController = self->_myAccountWebViewController;
  self->_myAccountWebViewController = v6;

  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_myAccountWebViewController];
  navCon = self->_navCon;
  self->_navCon = v8;

  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_hostController);
    [v11 presentViewController:self->_navCon animated:1 completion:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)launchMyAccountInSafari:(id)safari
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [safari propertyForKey:@"MY_ACCOUNT_URL"];
  v6 = [v4 URLWithString:v5];

  getLogger = [(PSUIMyAccountSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Launch my account in safari pressed: %@", &v11, 0xCu);
  }

  v8 = *MEMORY[0x277D76620];
  v9 = objc_opt_new();
  [v8 openURL:v6 options:v9 completionHandler:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end