@interface SKUIGiftConfirmViewController
- (SKUIGiftConfirmViewController)initWithGift:(id)gift configuration:(id)configuration;
- (id)_buyButtonTitle;
- (id)_confirmButtonTitle;
- (id)_newBuyBarButtonItemWithTitle:(id)title;
- (void)_buyButtonAction:(id)action;
- (void)_cancelBuyConfirmation:(id)confirmation;
- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message;
- (void)_purchaseGift;
- (void)_removeCancelGestureRecognizer;
- (void)_setShowingConfirmation:(BOOL)confirmation animated:(BOOL)animated;
- (void)_showSuccessPage;
- (void)_termsButtonAction:(id)action;
- (void)dealloc;
- (void)loadView;
@end

@implementation SKUIGiftConfirmViewController

- (SKUIGiftConfirmViewController)initWithGift:(id)gift configuration:(id)configuration
{
  giftCopy = gift;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftConfirmViewController initWithGift:configuration:];
  }

  v13.receiver = self;
  v13.super_class = SKUIGiftConfirmViewController;
  v8 = [(SKUIGiftStepViewController *)&v13 initWithGift:giftCopy configuration:configurationCopy];
  if (v8)
  {
    clientContext = [configurationCopy clientContext];
    v10 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_REVIEW_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_REVIEW_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    [(SKUIGiftConfirmViewController *)v8 setTitle:v11];

    [(SKUIGiftConfirmViewController *)v8 setEdgesForExtendedLayout:0];
  }

  return v8;
}

- (void)dealloc
{
  termsButton = [(SKUIGiftConfirmView *)self->_confirmView termsButton];
  [termsButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SKUIFocusedTouchGestureRecognizer *)self->_touchRecognizer removeTarget:self action:0];
  v4.receiver = self;
  v4.super_class = SKUIGiftConfirmViewController;
  [(SKUIGiftConfirmViewController *)&v4 dealloc];
}

- (void)loadView
{
  confirmView = self->_confirmView;
  if (!confirmView)
  {
    v4 = [SKUIGiftConfirmView alloc];
    gift = [(SKUIGiftStepViewController *)self gift];
    giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
    v7 = [(SKUIGiftConfirmView *)v4 initWithGift:gift configuration:giftConfiguration];
    v8 = self->_confirmView;
    self->_confirmView = v7;

    v9 = self->_confirmView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(SKUIGiftConfirmView *)v9 setBackgroundColor:_systemBackgroundColor];

    termsButton = [(SKUIGiftConfirmView *)self->_confirmView termsButton];
    [termsButton addTarget:self action:sel__termsButtonAction_ forControlEvents:64];

    confirmView = self->_confirmView;
  }

  [(SKUIGiftConfirmViewController *)self setView:confirmView];
  giftConfiguration2 = [(SKUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration2 clientContext];

  _buyButtonTitle = [(SKUIGiftConfirmViewController *)self _buyButtonTitle];
  v14 = [(SKUIGiftConfirmViewController *)self _newBuyBarButtonItemWithTitle:_buyButtonTitle];
  navigationItem = [(SKUIGiftConfirmViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v14];
}

- (void)_buyButtonAction:(id)action
{
  actionCopy = action;
  if (self->_isShowingConfirmation)
  {
    [(SKUIGiftConfirmViewController *)self _purchaseGift];
    [(SKUIGiftConfirmViewController *)self _setShowingConfirmation:0 animated:1];
    [(SKUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
    navigationItem = [(SKUIGiftConfirmViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];
  }

  else
  {
    [(SKUIGiftConfirmViewController *)self _setShowingConfirmation:1 animated:1];
    if (self->_touchRecognizer)
    {
      goto LABEL_6;
    }

    navigationItem2 = [(SKUIGiftConfirmViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
    navigationItem = [rightBarButtonItem2 customView];

    v8 = [SKUIFocusedTouchGestureRecognizer alloc];
    v9 = [(SKUIFocusedTouchGestureRecognizer *)v8 initWithFocusedView:navigationItem touchAllowance:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    touchRecognizer = self->_touchRecognizer;
    self->_touchRecognizer = v9;

    [(SKUIFocusedTouchGestureRecognizer *)self->_touchRecognizer addTarget:self action:sel__cancelBuyConfirmation_];
    rightBarButtonItem = [(SKUIGiftConfirmViewController *)self navigationController];
    view = [rightBarButtonItem view];
    [view addGestureRecognizer:self->_touchRecognizer];
  }

LABEL_6:
}

- (void)_cancelBuyConfirmation:(id)confirmation
{
  [(SKUIGiftConfirmViewController *)self _setShowingConfirmation:0 animated:1];

  [(SKUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
}

- (void)_termsButtonAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SKUIMetricsOpenURL(termsAndConditionsURL);
}

- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  v18 = messageCopy;
  if (resultCopy)
  {
    [(SKUIGiftConfirmViewController *)self _showSuccessPage];
  }

  else if (messageCopy)
  {
    giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    v9 = MEMORY[0x277D75110];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_UNABLE_TO_GIFT" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_UNABLE_TO_GIFT" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    v11 = [v9 alertControllerWithTitle:v10 message:v18 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_OK_BUTTON" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_OK_BUTTON" inBundles:0 inTable:@"Gifting"];
    }
    v13 = ;
    v14 = [v12 actionWithTitle:v13 style:0 handler:0];
    [v11 addAction:v14];

    [(SKUIGiftConfirmViewController *)self presentViewController:v11 animated:1 completion:0];
  }

  purchaseRequest = self->_purchaseRequest;
  self->_purchaseRequest = 0;

  navigationItem = [(SKUIGiftConfirmViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)_purchaseGift
{
  if (!self->_purchaseRequest)
  {
    objc_initWeak(&location, self);
    v3 = [SKUIGiftPurchaseRequest alloc];
    gift = [(SKUIGiftStepViewController *)self gift];
    giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
    v6 = [(SKUIGiftPurchaseRequest *)v3 initWithGift:gift configuration:giftConfiguration];
    purchaseRequest = self->_purchaseRequest;
    self->_purchaseRequest = v6;

    v8 = self->_purchaseRequest;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SKUIGiftConfirmViewController__purchaseGift__block_invoke;
    v9[3] = &unk_2781FB158;
    objc_copyWeak(&v10, &location);
    [(SKUIGiftPurchaseRequest *)v8 purchaseWithCompletionBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__SKUIGiftConfirmViewController__purchaseGift__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SKUIGiftConfirmViewController__purchaseGift__block_invoke_2;
  block[3] = &unk_2781FA318;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __46__SKUIGiftConfirmViewController__purchaseGift__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPurchaseWithResult:*(a1 + 48) errorMessage:*(a1 + 32)];
}

- (void)_removeCancelGestureRecognizer
{
  [(SKUIFocusedTouchGestureRecognizer *)self->_touchRecognizer removeTarget:self action:0];
  view = [(SKUIFocusedTouchGestureRecognizer *)self->_touchRecognizer view];
  [view removeGestureRecognizer:self->_touchRecognizer];

  touchRecognizer = self->_touchRecognizer;
  self->_touchRecognizer = 0;
}

- (void)_setShowingConfirmation:(BOOL)confirmation animated:(BOOL)animated
{
  if (self->_isShowingConfirmation != confirmation)
  {
    animatedCopy = animated;
    if (confirmation)
    {
      [(SKUIGiftConfirmViewController *)self _confirmButtonTitle];
    }

    else
    {
      [(SKUIGiftConfirmViewController *)self _buyButtonTitle];
    }
    v9 = ;
    v7 = [(SKUIGiftConfirmViewController *)self _newBuyBarButtonItemWithTitle:v9];
    navigationItem = [(SKUIGiftConfirmViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v7 animated:animatedCopy];

    self->_isShowingConfirmation = confirmation;
  }
}

- (void)_showSuccessPage
{
  v3 = [SKUIGiftResultViewController alloc];
  gift = [(SKUIGiftStepViewController *)self gift];
  giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
  v8 = [(SKUIGiftResultViewController *)v3 initWithGift:gift configuration:giftConfiguration];

  operationQueue = [(SKUIGiftStepViewController *)self operationQueue];
  [(SKUIGiftStepViewController *)v8 setOperationQueue:operationQueue];

  navigationController = [(SKUIGiftConfirmViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];

  [(SKUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
}

- (id)_newBuyBarButtonItemWithTitle:(id)title
{
  v4 = MEMORY[0x277D75220];
  titleCopy = title;
  v6 = [v4 buttonWithType:1];
  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  titleLabel = [v6 titleLabel];
  [titleLabel setFont:v7];

  [v6 addTarget:self action:sel__buyButtonAction_ forEvents:64];
  [v6 setTitle:titleCopy forState:0];

  [v6 sizeToFit];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];

  return v9;
}

- (id)_buyButtonTitle
{
  giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];
  v4 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_BUY_GIFT_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_BUY_GIFT_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v5 = ;

  return v5;
}

- (id)_confirmButtonTitle
{
  giftConfiguration = [(SKUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];
  v4 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_BUY_CONFIRM_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_BUY_CONFIRM_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v5 = ;

  return v5;
}

- (void)initWithGift:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftConfirmViewController initWithGift:configuration:]";
}

@end