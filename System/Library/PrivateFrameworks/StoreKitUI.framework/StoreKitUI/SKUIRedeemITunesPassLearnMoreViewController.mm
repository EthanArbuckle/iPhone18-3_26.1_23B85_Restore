@interface SKUIRedeemITunesPassLearnMoreViewController
- (SKUIRedeemITunesPassLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_existingPass;
- (void)_didLoadPassbookURLString:(id)string;
- (void)_loadPassbookPass;
- (void)_loadPassbookURL;
- (void)_passButtonAction:(id)action;
- (void)_showErrorDialog;
- (void)dealloc;
- (void)loadView;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIRedeemITunesPassLearnMoreViewController

- (SKUIRedeemITunesPassLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemITunesPassLearnMoreViewController initWithNibName:bundle:];
  }

  v11.receiver = self;
  v11.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  v8 = [(SKUIRedeemITunesPassLearnMoreViewController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];
  v9 = v8;
  if (v8)
  {
    [(SKUIRedeemITunesPassLearnMoreViewController *)v8 setEdgesForExtendedLayout:0];
  }

  return v9;
}

- (void)dealloc
{
  button = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
  [button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIRedeemITunesPassLearnMoreView *)v6 setBackgroundColor:whiteColor];

    configuration = [(SKUIRedeemStepViewController *)self configuration];
    v9 = self->_learnMoreView;
    successImage = [configuration successImage];
    [(SKUIRedeemITunesPassLearnMoreView *)v9 setHeaderImage:successImage];

    iTunesPassConfiguration = [configuration ITunesPassConfiguration];
    v12 = self->_learnMoreView;
    learnMoreExplanation = [iTunesPassConfiguration learnMoreExplanation];
    [(SKUIRedeemITunesPassLearnMoreView *)v12 setExplanationString:learnMoreExplanation];

    _existingPass = [(SKUIRedeemITunesPassLearnMoreViewController *)self _existingPass];

    v15 = self->_learnMoreView;
    if (_existingPass)
    {
      [iTunesPassConfiguration learnMoreViewPassButtonTitle];
    }

    else
    {
      [iTunesPassConfiguration learnMoreAddPassButtonTitle];
    }
    v16 = ;
    [(SKUIRedeemITunesPassLearnMoreView *)v15 setButtonTitle:v16];

    button = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
    [button addTarget:self action:sel__passButtonAction_ forControlEvents:64];

    learnMoreView = self->_learnMoreView;
  }

  [(SKUIRedeemITunesPassLearnMoreViewController *)self setView:learnMoreView];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  +[SKUIITunesPassLearnMoreAlertDelegate beginThrottleInterval];
  v5.receiver = self;
  v5.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  [(SKUIRedeemITunesPassLearnMoreViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  configuration = [(SKUIRedeemStepViewController *)self configuration];
  iTunesPassConfiguration = [configuration ITunesPassConfiguration];

  learnMoreTitle = [iTunesPassConfiguration learnMoreTitle];
  [(SKUIRedeemITunesPassLearnMoreViewController *)self setTitle:learnMoreTitle];

  v8 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v8 setAction:sel__doneButtonAction_];
  [v8 setStyle:2];
  [v8 setTarget:self];
  learnMoreDoneButtonTitle = [iTunesPassConfiguration learnMoreDoneButtonTitle];
  [v8 setTitle:learnMoreDoneButtonTitle];

  navigationItem = [(SKUIRedeemITunesPassLearnMoreViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];

  v11.receiver = self;
  v11.super_class = SKUIRedeemITunesPassLearnMoreViewController;
  [(SKUIRedeemITunesPassLearnMoreViewController *)&v11 viewWillAppear:appearCopy];
}

- (void)passbookLoaderDidFinish:(id)finish
{
  [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  passbookLoader = self->_passbookLoader;
  self->_passbookLoader = 0;

  _existingPass = [(SKUIRedeemITunesPassLearnMoreViewController *)self _existingPass];

  if (_existingPass)
  {
    configuration = [(SKUIRedeemStepViewController *)self configuration];
    iTunesPassConfiguration = [configuration ITunesPassConfiguration];

    learnMoreView = self->_learnMoreView;
    learnMoreViewPassButtonTitle = [iTunesPassConfiguration learnMoreViewPassButtonTitle];
    [(SKUIRedeemITunesPassLearnMoreView *)learnMoreView setButtonTitle:learnMoreViewPassButtonTitle];
  }

  button = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
  [button setEnabled:1];
}

- (void)_passButtonAction:(id)action
{
  actionCopy = action;
  _existingPass = [(SKUIRedeemITunesPassLearnMoreViewController *)self _existingPass];
  v5 = _existingPass;
  if (_existingPass)
  {
    passURL = [_existingPass passURL];
    SKUIMetricsOpenURL(passURL);
  }

  else
  {
    self->_didTapAddPassbookButton = 1;
    [actionCopy setEnabled:0];
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

- (void)_didLoadPassbookURLString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:stringCopy];
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
    button = [(SKUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
    [button setEnabled:1];
  }
}

- (id)_existingPass
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (iTunesPassSerialNumber)
  {
    v5 = SKUIPassKitUIFramework();
    v6 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v5));
    v7 = [v6 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
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
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    v5 = [(SKUIPassbookLoader *)v3 initWithClientContext:clientContext];
    passbookLoader = self->_passbookLoader;
    self->_passbookLoader = v5;

    [(SKUIPassbookLoader *)self->_passbookLoader setDelegate:self];
    v7 = self->_passbookLoader;
    operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIPassbookLoader *)v7 setOperationQueue:operationQueue];

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
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    uRLBag = [clientContext URLBag];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SKUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke;
    v5[3] = &unk_2781FBDE0;
    objc_copyWeak(&v6, &location);
    [uRLBag loadValueForKey:@"getAddCreditPassUrl" completionBlock:v5];

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
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  v4 = MEMORY[0x277D75110];
  v10 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_TITLE" inTable:@"Redeem"];
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