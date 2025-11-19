@interface SKUIRedeemITunesPassLearnMoreViewController
- (SKUIRedeemITunesPassLearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_existingPass;
- (void)_didLoadPassbookURLString:(id)a3;
- (void)_loadPassbookPass;
- (void)_loadPassbookURL;
- (void)_passButtonAction:(id)a3;
- (void)_showErrorDialog;
- (void)dealloc;
- (void)loadView;
- (void)passbookLoaderDidFinish:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUIRedeemITunesPassLearnMoreViewController

- (SKUIRedeemITunesPassLearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemITunesPassLearnMoreViewController initWithNibName:bundle:];
  }

  v11.receiver = self;
  v11.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  v8 = [(SKUIRedeemITunesPassLearnMoreViewController *)&v11 initWithNibName:v6 bundle:v7];
  v9 = v8;
  if (v8)
  {
    [(SKUIRedeemITunesPassLearnMoreViewController *)v8 setEdgesForExtendedLayout:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  v4.receiver = self;
  v4.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  [(SKUIRedeemITunesPassLearnMoreViewController *)&v4 dealloc];
}

- (void)loadView
{
  learnMoreView = self->_learnMoreView;
  if (!learnMoreView)
  {
    v4 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreView);
    v5 = self->_learnMoreView;
    self->_learnMoreView = v4;

    v6 = self->_learnMoreView;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(SKUIRedeemITunesPassLearnMoreView *)v6 setBackgroundColor:v7];

    v8 = [(SKUIRedeemStepViewController *)self configuration];
    v9 = self->_learnMoreView;
    v10 = [v8 successImage];
    [(SKUIRedeemITunesPassLearnMoreView *)v9 setHeaderImage:v10];

    v11 = [v8 ITunesPassConfiguration];
    v12 = self->_learnMoreView;
    v13 = [v11 learnMoreExplanation];
    [(SKUIRedeemITunesPassLearnMoreView *)v12 setExplanationString:v13];

    v14 = [(SKUIRedeemITunesPassLearnMoreViewController *)self _existingPass];

    v15 = self->_learnMoreView;
    if (v14)
    {
      [v11 learnMoreViewPassButtonTitle];
    }

    else
    {
      [v11 learnMoreAddPassButtonTitle];
    }
    v16 = ;
    [(SKUIRedeemITunesPassLearnMoreView *)v15 setButtonTitle:v16];

    v17 = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
    [v17 addTarget:self action:sel__passButtonAction_ forControlEvents:64];

    learnMoreView = self->_learnMoreView;
  }

  [(SKUIRedeemITunesPassLearnMoreViewController *)self setView:learnMoreView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  +[SKUIITunesPassLearnMoreAlertDelegate beginThrottleInterval];
  v5.receiver = self;
  v5.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  [(SKUIRedeemITunesPassLearnMoreViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIRedeemStepViewController *)self configuration];
  v6 = [v5 ITunesPassConfiguration];

  v7 = [v6 learnMoreTitle];
  [(SKUIRedeemITunesPassLearnMoreViewController *)self setTitle:v7];

  v8 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v8 setAction:sel__doneButtonAction_];
  [v8 setStyle:2];
  [v8 setTarget:self];
  v9 = [v6 learnMoreDoneButtonTitle];
  [v8 setTitle:v9];

  v10 = [(SKUIRedeemITunesPassLearnMoreViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v8];

  v11.receiver = self;
  v11.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  [(SKUIRedeemITunesPassLearnMoreViewController *)&v11 viewWillAppear:v3];
}

- (void)passbookLoaderDidFinish:(id)a3
{
  [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  passbookLoader = self->_passbookLoader;
  self->_passbookLoader = 0;

  v5 = [(SKUIRedeemITunesPassLearnMoreViewController *)self _existingPass];

  if (v5)
  {
    v6 = [(SKUIRedeemStepViewController *)self configuration];
    v7 = [v6 ITunesPassConfiguration];

    learnMoreView = self->_learnMoreView;
    v9 = [v7 learnMoreViewPassButtonTitle];
    [(SKUIRedeemITunesPassLearnMoreView *)learnMoreView setButtonTitle:v9];
  }

  v10 = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
  [v10 setEnabled:1];
}

- (void)_passButtonAction:(id)a3
{
  v7 = a3;
  v4 = [(SKUIRedeemITunesPassLearnMoreViewController *)self _existingPass];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 passURL];
    SKUIMetricsOpenURL(v6);
  }

  else
  {
    self->_didTapAddPassbookButton = 1;
    [v7 setEnabled:0];
    if (self->_passbookURL)
    {
      [(SKUIRedeemITunesPassLearnMoreViewController *)self _loadPassbookPass];
    }

    else
    {
      [(SKUIRedeemITunesPassLearnMoreViewController *)self _loadPassbookURL];
    }
  }
}

- (void)_didLoadPassbookURLString:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    passbookURL = self->_passbookURL;
    self->_passbookURL = v4;

    if (self->_didTapAddPassbookButton)
    {
      [(SKUIRedeemITunesPassLearnMoreViewController *)self _loadPassbookPass];
    }
  }

  else
  {
    [(SKUIRedeemITunesPassLearnMoreViewController *)self _showErrorDialog];
    v6 = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
    [v6 setEnabled:1];
  }
}

- (id)_existingPass
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];
  v4 = [v3 ITunesPassSerialNumber];

  if (v4)
  {
    v5 = SKUIPassKitUIFramework();
    v6 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v5));
    v7 = [v6 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_loadPassbookPass
{
  if (!self->_passbookLoader && self->_passbookURL)
  {
    v3 = [SKUIPassbookLoader alloc];
    v4 = [(SKUIRedeemStepViewController *)self clientContext];
    v5 = [(SKUIPassbookLoader *)v3 initWithClientContext:v4];
    passbookLoader = self->_passbookLoader;
    self->_passbookLoader = v5;

    [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:self];
    v7 = self->_passbookLoader;
    v8 = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIPassbookLoader *)v7 setOperationQueue:v8];

    v9 = self->_passbookLoader;
    passbookURL = self->_passbookURL;

    [(SKUIPassbookLoader *)v9 loadPassWithURL:passbookURL];
  }
}

- (void)_loadPassbookURL
{
  if (!self->_passbookURL)
  {
    objc_initWeak(&location, self);
    v3 = [(SKUIRedeemStepViewController *)self clientContext];
    v4 = [v3 URLBag];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SKUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke;
    v5[3] = &unk_2781FBDE0;
    objc_copyWeak(&v6, &location);
    [v4 loadValueForKey:@"getAddCreditPassUrl" completionBlock:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __63__SKUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SKUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __63__SKUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadPassbookURLString:*(a1 + 32)];
}

- (void)_showErrorDialog
{
  v3 = [(SKUIRedeemStepViewController *)self clientContext];
  v4 = MEMORY[0x277D75110];
  v10 = v3;
  if (v3)
  {
    [v3 localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;
  v6 = [v4 alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  if (v10)
  {
    [v10 localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_DISMISS_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_DISMISS_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v8 = ;
  v9 = [v7 actionWithTitle:v8 style:0 handler:0];
  [v6 addAction:v9];

  [(SKUIRedeemITunesPassLearnMoreViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemITunesPassLearnMoreViewController initWithNibName:bundle:]";
}

@end