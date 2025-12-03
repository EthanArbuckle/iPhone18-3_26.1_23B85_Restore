@interface SKUIAccountButtonsViewController
- (BOOL)isGiftingHidden;
- (BOOL)isTermsAndConditionsHidden;
- (SKUIAccountButtonsDelegate)delegate;
- (SKUIAccountButtonsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_buttonsView;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_accountStoreChangedNotification:(id)notification;
- (void)_ecommerceLinkAction:(id)action;
- (void)_giftAction:(id)action;
- (void)_openIForgot;
- (void)_redeemButtonAction:(id)action;
- (void)_reloadAccountsButton;
- (void)_reloadRestrictions;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_sendDidSignIn;
- (void)_signInButtonAction:(id)action;
- (void)_signOut;
- (void)_termsAndConditionsButtonAction:(id)action;
- (void)_usernameButtonAction:(id)action;
- (void)_viewAppleID;
- (void)dealloc;
- (void)loadView;
- (void)setECommerceLink:(id)link;
- (void)setGiftingHidden:(BOOL)hidden;
- (void)setTermsAndConditionsHidden:(BOOL)hidden;
@end

@implementation SKUIAccountButtonsViewController

- (SKUIAccountButtonsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAccountButtonsViewController initWithNibName:bundle:];
  }

  v11.receiver = self;
  v11.super_class = SKUIAccountButtonsViewController;
  v8 = [(SKUIAccountButtonsViewController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__accountStoreChangedNotification_ name:*MEMORY[0x277D69D70] object:0];
    [defaultCenter addObserver:v8 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D25CA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D69D70] object:0];
  appleIDButton = [(SKUIAccountButtonsView *)self->_buttonsView appleIDButton];
  [appleIDButton removeTarget:self action:0 forControlEvents:64];

  eCommerceButton = [(SKUIAccountButtonsView *)self->_buttonsView ECommerceButton];
  [eCommerceButton removeTarget:self action:0 forControlEvents:64];

  redeemButton = [(SKUIAccountButtonsView *)self->_buttonsView redeemButton];
  [redeemButton removeTarget:self action:0 forControlEvents:64];

  termsAndConditionsButton = [(SKUIAccountButtonsView *)self->_buttonsView termsAndConditionsButton];
  [termsAndConditionsButton removeTarget:self action:0 forControlEvents:64];

  v8.receiver = self;
  v8.super_class = SKUIAccountButtonsViewController;
  [(SKUIAccountButtonsViewController *)&v8 dealloc];
}

- (BOOL)isGiftingHidden
{
  _buttonsView = [(SKUIAccountButtonsViewController *)self _buttonsView];
  isGiftingHidden = [_buttonsView isGiftingHidden];

  return isGiftingHidden;
}

- (BOOL)isTermsAndConditionsHidden
{
  _buttonsView = [(SKUIAccountButtonsViewController *)self _buttonsView];
  isTermsAndConditionsHidden = [_buttonsView isTermsAndConditionsHidden];

  return isTermsAndConditionsHidden;
}

- (void)setECommerceLink:(id)link
{
  linkCopy = link;
  if (self->_ecommerceLink != linkCopy)
  {
    v8 = linkCopy;
    objc_storeStrong(&self->_ecommerceLink, link);
    _buttonsView = [(SKUIAccountButtonsViewController *)self _buttonsView];
    title = [(SKUILink *)v8 title];
    [_buttonsView setECommerceLinkTitle:title];

    linkCopy = v8;
  }
}

- (void)setGiftingHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _buttonsView = [(SKUIAccountButtonsViewController *)self _buttonsView];
  [_buttonsView setGiftingHidden:hiddenCopy];
}

- (void)setTermsAndConditionsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _buttonsView = [(SKUIAccountButtonsViewController *)self _buttonsView];
  [_buttonsView setTermsAndConditionsHidden:hiddenCopy];
}

- (void)loadView
{
  _buttonsView = [(SKUIAccountButtonsViewController *)self _buttonsView];
  [(SKUIAccountButtonsViewController *)self setView:_buttonsView];

  [(SKUIAccountButtonsViewController *)self _reloadAccountsButton];

  [(SKUIAccountButtonsViewController *)self _reloadRestrictions];
}

- (void)_ecommerceLinkAction:(id)action
{
  delegate = [(SKUIAccountButtonsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate accountButtonsViewControllerDidTapECommerceLink:self];
  }

  else
  {
    v4 = [(SKUILink *)self->_ecommerceLink URL];
    v5 = v4;
    if (v4)
    {
      SKUIMetricsOpenURL(v4);
    }
  }
}

- (void)_giftAction:(id)action
{
  v5 = [[SKUIGift alloc] initWithGiftCategory:0];
  v4 = [[SKUIGiftViewController alloc] initWithGift:v5];
  [(SKUIGiftViewController *)v4 setClientContext:self->_clientContext];
  [(SKUIAccountButtonsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_redeemButtonAction:(id)action
{
  v4 = [[SKUIRedeemViewController alloc] initWithRedeemCategory:0];
  [(SKUIRedeemViewController *)v4 setClientContext:self->_clientContext];
  [(SKUIAccountButtonsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_signInButtonAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D69A50]);
  contextForSignIn = [MEMORY[0x277D69A58] contextForSignIn];
  v7 = [v5 initWithAuthenticationContext:contextForSignIn];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SKUIAccountButtonsViewController__signInButtonAction___block_invoke;
  v8[3] = &unk_2781FA2F0;
  objc_copyWeak(&v9, &location);
  [v7 startWithAuthenticateResponseBlock:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __56__SKUIAccountButtonsViewController__signInButtonAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SKUIAccountButtonsViewController__signInButtonAction___block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __56__SKUIAccountButtonsViewController__signInButtonAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadAccountsButton];

  if ([*(a1 + 32) authenticateResponseType] == 4)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _sendDidSignIn];
  }
}

- (void)_termsAndConditionsButtonAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SKUIMetricsOpenURL(termsAndConditionsURL);
}

- (void)_usernameButtonAction:(id)action
{
  actionCopy = action;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (!activeAccount)
  {
    [(SKUIAccountButtonsViewController *)self _reloadAccountsButton];
    goto LABEL_28;
  }

  if (![(SKUIClientContext *)self->_clientContext isMultiUser]|| ![(SKUIClientContext *)self->_clientContext isManagedAppleID])
  {
    v7 = objc_alloc_init(MEMORY[0x277D75110]);
    v8 = MEMORY[0x277CF0300];
    accountName = [activeAccount accountName];
    v10 = [v8 formattedUsernameFromUsername:accountName];
    [v7 setMessage:v10];

    [v7 setPreferredStyle:1];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"SIGN_IN_ALERT_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SIGN_IN_ALERT_TITLE" inBundles:0];
    }
    v12 = ;
    [v7 setTitle:v12];

    if ([(SKUIClientContext *)self->_clientContext isMultiUser])
    {
      objc_initWeak(&location, self);
    }

    else
    {
      isManagedAppleID = [(SKUIClientContext *)self->_clientContext isManagedAppleID];
      objc_initWeak(&location, self);
      if (isManagedAppleID)
      {
        v14 = 1;
LABEL_16:
        v18 = self->_clientContext;
        v19 = v18;
        if (v18)
        {
          [(SKUIClientContext *)v18 localizedStringForKey:@"SIGN_IN_ALERT_SIGN_OUT"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"SIGN_IN_ALERT_SIGN_OUT" inBundles:0];
        }
        v20 = ;

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke_2;
        v29[3] = &unk_2781F8320;
        objc_copyWeak(&v30, &location);
        [v7 _addActionWithTitle:v20 style:0 handler:v29];

        if ((v14 & 1) == 0)
        {
          v21 = self->_clientContext;
          v22 = v21;
          if (v21)
          {
            [(SKUIClientContext *)v21 localizedStringForKey:@"SIGN_IN_ALERT_IFORGOT"];
          }

          else
          {
            [SKUIClientContext localizedStringForKey:@"SIGN_IN_ALERT_IFORGOT" inBundles:0];
          }
          v23 = ;

          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke_3;
          v27[3] = &unk_2781F8320;
          objc_copyWeak(&v28, &location);
          [v7 _addActionWithTitle:v23 style:0 handler:v27];

          objc_destroyWeak(&v28);
        }

        v24 = self->_clientContext;
        v25 = v24;
        if (v24)
        {
          [(SKUIClientContext *)v24 localizedStringForKey:@"CANCEL"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
        }
        v26 = ;

        [v7 _addActionWithTitle:v26 style:1 handler:0];
        [(SKUIAccountButtonsViewController *)self presentViewController:v7 animated:1 completion:0];
        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);

        goto LABEL_28;
      }
    }

    v15 = self->_clientContext;
    v16 = v15;
    if (v15)
    {
      [(SKUIClientContext *)v15 localizedStringForKey:@"SIGN_IN_ALERT_VIEW_APPLE_ID"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SIGN_IN_ALERT_VIEW_APPLE_ID" inBundles:0];
    }
    v17 = ;

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke;
    v31[3] = &unk_2781F8320;
    objc_copyWeak(&v32, &location);
    [v7 _addActionWithTitle:v17 style:0 handler:v31];

    objc_destroyWeak(&v32);
    v14 = 0;
    goto LABEL_16;
  }

LABEL_28:
}

void __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _viewAppleID];
}

void __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signOut];
}

void __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke_4;
  block[3] = &unk_2781F8320;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __58__SKUIAccountButtonsViewController__usernameButtonAction___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openIForgot];
}

- (void)_accountStoreChangedNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SKUIAccountButtonsViewController__accountStoreChangedNotification___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_restrictionsChangedNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SKUIAccountButtonsViewController__restrictionsChangedNotification___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (id)_buttonsView
{
  buttonsView = self->_buttonsView;
  if (!buttonsView)
  {
    v4 = [[SKUIAccountButtonsView alloc] initWithClientContext:self->_clientContext];
    v5 = self->_buttonsView;
    self->_buttonsView = v4;

    eCommerceButton = [(SKUIAccountButtonsView *)self->_buttonsView ECommerceButton];
    [eCommerceButton addTarget:self action:sel__ecommerceLinkAction_ forControlEvents:64];

    giftingButton = [(SKUIAccountButtonsView *)self->_buttonsView giftingButton];
    [giftingButton addTarget:self action:sel__giftAction_ forControlEvents:64];

    redeemButton = [(SKUIAccountButtonsView *)self->_buttonsView redeemButton];
    [redeemButton addTarget:self action:sel__redeemButtonAction_ forControlEvents:64];

    termsAndConditionsButton = [(SKUIAccountButtonsView *)self->_buttonsView termsAndConditionsButton];
    [termsAndConditionsButton addTarget:self action:sel__termsAndConditionsButtonAction_ forControlEvents:64];

    buttonsView = self->_buttonsView;
  }

  return buttonsView;
}

- (void)_openIForgot
{
  v2 = objc_alloc(MEMORY[0x277D7FD18]);
  v5 = [v2 initWithURLBagKey:*MEMORY[0x277D6A5F0]];
  [v5 setITunesStoreURL:0];
  v3 = [objc_alloc(MEMORY[0x277D7FD10]) initWithOpenURLRequest:v5];
  mainQueue = [MEMORY[0x277D7FD20] mainQueue];
  [mainQueue addOperation:v3];
}

- (void)_reloadAccountsButton
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  appleIDButton = [(SKUIAccountButtonsView *)self->_buttonsView appleIDButton];
  if (activeAccount)
  {
    v5 = MEMORY[0x277CF0300];
    accountName = [activeAccount accountName];
    v7 = [v5 formattedUsernameFromUsername:accountName];

    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"ACCOUNT_BUTTON_APPLE_ID"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"ACCOUNT_BUTTON_APPLE_ID" inBundles:0];
    }
    v10 = ;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v7];
    [appleIDButton setTitle:v11 forState:0];
    [appleIDButton removeTarget:self action:0 forControlEvents:64];
    [appleIDButton addTarget:self action:sel__usernameButtonAction_ forControlEvents:64];
    buttonsView = self->_buttonsView;
    creditsString = [activeAccount creditsString];
    [(SKUIAccountButtonsView *)buttonsView setAccountCredits:creditsString];
  }

  else
  {
    v9 = self->_clientContext;
    if (v9)
    {
      [(SKUIClientContext *)v9 localizedStringForKey:@"ACCOUNT_BUTTON_SIGN_IN"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"ACCOUNT_BUTTON_SIGN_IN" inBundles:0];
    }
    v14 = ;
    [appleIDButton setTitle:v14 forState:0];

    [appleIDButton removeTarget:self action:0 forControlEvents:64];
    [appleIDButton addTarget:self action:sel__signInButtonAction_ forControlEvents:64];
    [(SKUIAccountButtonsView *)self->_buttonsView setAccountCredits:0];
  }

  [(SKUIAccountButtonsView *)self->_buttonsView setNeedsLayout];
}

- (void)_reloadRestrictions
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] != 2;

  v5 = +[SKUIItemStateCenter defaultCenter];
  isRunningInStoreDemoMode = [v5 isRunningInStoreDemoMode];

  appleIDButton = [(SKUIAccountButtonsView *)self->_buttonsView appleIDButton];
  v8 = isRunningInStoreDemoMode ^ 1u;
  [appleIDButton setEnabled:v4 & v8];

  giftingButton = [(SKUIAccountButtonsView *)self->_buttonsView giftingButton];
  [giftingButton setEnabled:v8];

  redeemButton = [(SKUIAccountButtonsView *)self->_buttonsView redeemButton];
  [redeemButton setEnabled:v8];
}

- (void)_sendDidSignIn
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 accountButtonsViewControllerDidSignIn:self];
  }
}

- (void)_signOut
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  if (activeAccount)
  {
    [defaultStore signOutAccount:activeAccount];
    [(SKUIAccountButtonsViewController *)self _reloadAccountsButton];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 accountButtonsViewControllerDidSignOut:self];
    }
  }
}

- (void)_viewAppleID
{
  clientInterface = [(SKUIClientContext *)self->_clientContext clientInterface];
  v3 = objc_alloc_init(MEMORY[0x277D7FD90]);
  [v3 setCanMoveToOverlay:0];
  [v3 setClientInterface:clientInterface];
  [v3 setStyle:2];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v4 setDelegate:self];
  [v4 setModalPresentationStyle:2];
  [(SKUIAccountButtonsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (SKUIAccountButtonsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAccountButtonsViewController initWithNibName:bundle:]";
}

@end