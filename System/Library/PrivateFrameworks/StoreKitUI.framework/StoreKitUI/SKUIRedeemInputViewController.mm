@interface SKUIRedeemInputViewController
- (SKUIRedeemInputViewController)initWithRedeemCategory:(int64_t)category;
- (id)_newTextFieldWithClientContext:(id)context;
- (void)_cancelAction:(id)action;
- (void)_passbookLockupAction:(id)action;
- (void)_redeemAction:(id)action;
- (void)_redeemConfigurationImagesDidLoad:(id)load;
- (void)_termsButtonAction:(id)action;
- (void)_textFieldTextDidChange:(id)change;
- (void)_toggleActivityIndicatorBarButtonItem:(BOOL)item;
- (void)dealloc;
- (void)loadView;
@end

@implementation SKUIRedeemInputViewController

- (SKUIRedeemInputViewController)initWithRedeemCategory:(int64_t)category
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemInputViewController initWithRedeemCategory:];
  }

  v8.receiver = self;
  v8.super_class = SKUIRedeemInputViewController;
  v5 = [(SKUIRedeemInputViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_category = category;
    [(SKUIRedeemInputViewController *)v5 setEdgesForExtendedLayout:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0x2828123E8 object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [(SKUIRedeemTextField *)self->_field setDelegate:0];
  [(SKUIRedeemITunesPassLockup *)self->_passbookLockup removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4.receiver = self;
  v4.super_class = SKUIRedeemInputViewController;
  [(SKUIRedeemInputViewController *)&v4 dealloc];
}

- (void)loadView
{
  v103[1] = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = SKUIRedeemInputViewController;
  [(SKUIRedeemInputViewController *)&v102 loadView];
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  view = [(SKUIRedeemInputViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = v7;
  v10 = v9;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 50.0;
  if (v10 <= 480.0)
  {
    v13 = 28.0;
  }

  if (userInterfaceIdiom)
  {
    v14 = 30.0;
  }

  else
  {
    v14 = v13;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  imageView = self->_imageView;
  if (!imageView)
  {
    v16 = objc_alloc(MEMORY[0x277D755E8]);
    configuration = [(SKUIRedeemStepViewController *)self configuration];
    inputImage = [configuration inputImage];
    v19 = [v16 initWithImage:inputImage];
    v20 = self->_imageView;
    self->_imageView = v19;

    [(UIImageView *)self->_imageView setAutoresizingMask:5];
    configuration2 = [(SKUIRedeemStepViewController *)self configuration];
    [defaultCenter addObserver:self selector:sel__redeemConfigurationImagesDidLoad_ name:0x2828123E8 object:configuration2];

    imageView = self->_imageView;
  }

  [(UIImageView *)imageView frame];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v24 = dbl_215F3F1A0[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v25 = dbl_215F3F1B0[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  [view frame];
  v27 = (v26 - v24) * 0.5;
  v28 = floorf(v27);
  [(UIImageView *)self->_imageView setFrame:v28, v14, v24, v25];
  [view addSubview:self->_imageView];
  v29 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v29 setAutoresizingMask:2];
  backgroundColor = [view backgroundColor];
  [v29 setBackgroundColor:backgroundColor];

  v31 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [v29 setFont:v31];

  if ([SKUIRedeemViewControllerLegacy redeemRequiresNationalId:clientContext])
  {
    v32 = @"REDEEM_PROMPT_CN";
  }

  else
  {
    v32 = @"REDEEM_PROMPT";
  }

  if (clientContext)
  {
    [clientContext localizedStringForKey:v32 inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:v32 inBundles:0 inTable:@"Redeem"];
  }
  v33 = ;
  [v29 setText:v33];

  [v29 setTextAlignment:1];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v29 setTextColor:blackColor];

  [v29 setNumberOfLines:0];
  [v29 frame];
  [view frame];
  v36 = v35 + -20.0;
  [view frame];
  [v29 sizeThatFits:{v37 + -20.0, 1.79769313e308}];
  v39 = v38;
  v104.origin.x = v28;
  v104.origin.y = v14;
  v104.size.width = v24;
  v104.size.height = v25;
  v40 = CGRectGetMaxY(v104) + 15.0;
  [view frame];
  v42 = (v41 - v36) * 0.5;
  [v29 setFrame:{roundf(v42), v40, v36, v39}];
  [view addSubview:v29];
  v43 = [(SKUIRedeemInputViewController *)self _newTextFieldWithClientContext:clientContext];
  field = self->_field;
  self->_field = v43;

  [(SKUIRedeemTextField *)self->_field setDelegate:self];
  [(SKUIRedeemTextField *)self->_field setText:self->_initialCode];
  [(SKUIRedeemTextField *)self->_field frame];
  [v29 frame];
  MaxY = CGRectGetMaxY(v105);
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v48 = 6.0;
  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v48 = 30.0;
  }

  v49 = MaxY + v48;
  [view frame];
  v51 = v50;
  v52 = 0.0;
  v53 = 44.0;
  [(SKUIRedeemTextField *)self->_field setFrame:0.0, v49];
  [view addSubview:self->_field];
  [defaultCenter addObserver:self selector:sel__textFieldTextDidChange_ name:*MEMORY[0x277D770B0] object:self->_field];
  v54 = [[SKUILinkButton alloc] initWithArrowStyle:0];
  [(SKUILinkButton *)v54 setAutoresizingMask:5];
  v100 = view;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_TERMS_LINK" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_TERMS_LINK" inBundles:0 inTable:@"Redeem"];
  }
  v55 = ;
  [(SKUILinkButton *)v54 setTitle:v55 forState:0];

  titleLabel = [(SKUILinkButton *)v54 titleLabel];
  v57 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [titleLabel setFont:v57];

  v58 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  [(SKUILinkButton *)v54 setTitleColor:v58 forState:0];

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  [(SKUILinkButton *)v54 setTitleColor:blackColor2 forState:1];

  [(SKUILinkButton *)v54 addTarget:self action:sel__termsButtonAction_ forControlEvents:64];
  v60 = v100;
  backgroundColor2 = [v100 backgroundColor];
  [(SKUILinkButton *)v54 setBackgroundColor:backgroundColor2];

  if ([(SKUIRedeemStepViewController *)self shouldShowPassbookLearnMore])
  {
    passbookLockup = self->_passbookLockup;
    if (!passbookLockup)
    {
      v63 = [SKUIRedeemITunesPassLockup alloc];
      configuration3 = [(SKUIRedeemStepViewController *)self configuration];
      iTunesPassConfiguration = [configuration3 ITunesPassConfiguration];
      clientContext2 = [(SKUIRedeemStepViewController *)self clientContext];
      v67 = [(SKUIRedeemITunesPassLockup *)v63 initWithITunesPassConfiguration:iTunesPassConfiguration clientContext:clientContext2];
      v68 = self->_passbookLockup;
      self->_passbookLockup = v67;

      v60 = v100;
      [(SKUIRedeemITunesPassLockup *)self->_passbookLockup addTarget:self action:sel__passbookLockupAction_ forControlEvents:64];
      [(SKUIRedeemITunesPassLockup *)self->_passbookLockup setAutoresizingMask:5];
      passbookLockup = self->_passbookLockup;
    }

    [(SKUIRedeemITunesPassLockup *)passbookLockup frame];
    [(SKUIRedeemITunesPassLockup *)self->_passbookLockup sizeThatFits:v8 + -60.0, 1.79769313e308];
    v70 = v69;
    v72 = v71;
    [v60 bounds];
    v74 = (v73 - v70) * 0.5;
    v75 = floorf(v74);
    v106.origin.x = 0.0;
    v106.origin.y = v49;
    v106.size.width = v51;
    v106.size.height = 44.0;
    [(SKUIRedeemITunesPassLockup *)self->_passbookLockup setFrame:v75, CGRectGetMaxY(v106) + 30.0, v70, v72];
    [v60 addSubview:self->_passbookLockup];
  }

  [(SKUILinkButton *)v54 sizeToFit];
  [(SKUILinkButton *)v54 frame];
  v77 = v76;
  v79 = v78;
  [v60 bounds];
  v81 = v80;
  v82 = self->_passbookLockup;
  if (v82)
  {
    [(SKUIRedeemITunesPassLockup *)v82 frame];
    v52 = v83;
    v49 = v84;
    v51 = v85;
    v53 = v86;
    v87 = 30.0;
  }

  else
  {
    v87 = 26.0;
  }

  v107.origin.x = v52;
  v107.origin.y = v49;
  v107.size.width = v51;
  v107.size.height = v53;
  v88 = CGRectGetMaxY(v107) + v87;
  v89 = (v81 - v77) * 0.5;
  [(SKUILinkButton *)v54 setFrame:floorf(v89), v88, v77, v79];
  [v60 addSubview:v54];
  navigationItem = [(SKUIRedeemInputViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v91 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v91 setAction:sel__cancelAction_];
  [v91 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_CANCEL_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_CANCEL_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v92 = ;
  [v91 setTitle:v92];

  [navigationItem setLeftBarButtonItem:v91];
  v93 = objc_alloc_init(MEMORY[0x277D751E0]);
  redeemButton = self->_redeemButton;
  self->_redeemButton = v93;

  [(UIBarButtonItem *)self->_redeemButton setAction:sel__redeemAction_];
  [(UIBarButtonItem *)self->_redeemButton setTarget:self];
  v95 = self->_redeemButton;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_REDEEM_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_REDEEM_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v96 = ;
  [(UIBarButtonItem *)v95 setTitle:v96];

  [(UIBarButtonItem *)self->_redeemButton setStyle:2];
  v97 = self->_redeemButton;
  text = [(SKUIRedeemTextField *)self->_field text];
  -[UIBarButtonItem setEnabled:](v97, "setEnabled:", [text length] != 0);

  v103[0] = self->_redeemButton;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
  [navigationItem setRightBarButtonItems:v99];
}

- (void)_redeemConfigurationImagesDidLoad:(id)load
{
  imageView = self->_imageView;
  configuration = [(SKUIRedeemStepViewController *)self configuration];
  inputImage = [configuration inputImage];
  [(UIImageView *)imageView setImage:inputImage];
}

- (void)_textFieldTextDidChange:(id)change
{
  redeemButton = self->_redeemButton;
  text = [(SKUIRedeemTextField *)self->_field text];
  -[UIBarButtonItem setEnabled:](redeemButton, "setEnabled:", [text length] != 0);
}

- (void)_cancelAction:(id)action
{
  selfCopy = [(SKUIRedeemInputViewController *)self parentViewController];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_passbookLockupAction:(id)action
{
  v8 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreViewController);
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemStepViewController *)v8 setClientContext:clientContext];

  configuration = [(SKUIRedeemStepViewController *)self configuration];
  [(SKUIRedeemStepViewController *)v8 setConfiguration:configuration];

  operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
  [(SKUIRedeemStepViewController *)v8 setOperationQueue:operationQueue];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(SKUIRedeemInputViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_redeemAction:(id)action
{
  [(SKUIRedeemTextField *)self->_field resignFirstResponder];
  UIKeyboardOrderOutAutomatic();
  [(SKUIRedeemInputViewController *)self _toggleActivityIndicatorBarButtonItem:1];
  v4 = [SKUIRedeemOperation alloc];
  text = [(SKUIRedeemTextField *)self->_field text];
  v6 = [(SKUIRedeemOperation *)v4 initWithCode:text];

  [(SKUIRedeemOperation *)v6 setCameraRecognized:0];
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemOperation *)v6 setClientContext:clientContext];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUIRedeemInputViewController__redeemAction___block_invoke;
  v9[3] = &unk_2781FBD10;
  v9[4] = self;
  [(SKUIRedeemOperation *)v6 setResultBlock:v9];
  operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
  [operationQueue addOperation:v6];
}

void __47__SKUIRedeemInputViewController__redeemAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [[SKUIRedeemResultsViewController alloc] initWithRedeem:v5];
    v9 = [*(a1 + 32) clientContext];
    [(SKUIRedeemStepViewController *)v8 setClientContext:v9];

    v10 = [*(a1 + 32) configuration];
    [(SKUIRedeemStepViewController *)v8 setConfiguration:v10];

    v11 = [*(a1 + 32) operationQueue];
    [(SKUIRedeemStepViewController *)v8 setOperationQueue:v11];

    [(SKUIRedeemResultsViewController *)v8 setRedeemCategory:*(*(a1 + 32) + 1024)];
    v12 = [*(a1 + 32) navigationController];
    [v12 pushViewController:v8 animated:1];

    UIKeyboardOrderOutAutomatic();
LABEL_3:

    goto LABEL_4;
  }

  if (v6)
  {
    v13 = [v6 userInfo];
    v14 = [v13 valueForKey:@"hideError"];

    if (!v14)
    {
      v15 = [*(a1 + 32) clientContext];
      v8 = v15;
      v16 = MEMORY[0x277D75110];
      if (v15)
      {
        [(SKUIRedeemResultsViewController *)v15 localizedStringForKey:@"REDEEM_FAILURE_TITLE" inTable:@"Redeem"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REDEEM_FAILURE_TITLE" inBundles:0 inTable:@"Redeem"];
      }
      v17 = ;
      v18 = [v7 localizedDescription];
      v19 = [v16 alertControllerWithTitle:v17 message:v18 preferredStyle:1];

      if ([v7 code] == 9518)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __47__SKUIRedeemInputViewController__redeemAction___block_invoke_2;
        aBlock[3] = &unk_2781FBCE8;
        aBlock[4] = *(a1 + 32);
        v20 = _Block_copy(aBlock);
      }

      else
      {
        v20 = 0;
      }

      v21 = MEMORY[0x277D750F8];
      if (v8)
      {
        [(SKUIRedeemResultsViewController *)v8 localizedStringForKey:@"REDEEM_OK_BUTTON" inTable:@"Redeem"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REDEEM_OK_BUTTON" inBundles:0 inTable:@"Redeem"];
      }
      v22 = ;
      v23 = [v21 actionWithTitle:v22 style:0 handler:v20];
      [v19 addAction:v23];

      [*(a1 + 32) presentViewController:v19 animated:1 completion:0];
      goto LABEL_3;
    }
  }

LABEL_4:
  [*(a1 + 32) _toggleActivityIndicatorBarButtonItem:0];
}

void __47__SKUIRedeemInputViewController__redeemAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) redeemStepDelegate];
  [v2 redeemStepViewControllerShouldValidateNationalID:*(a1 + 32)];
}

- (void)_termsButtonAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SKUIMetricsOpenURL(termsAndConditionsURL);
}

- (id)_newTextFieldWithClientContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(SKUIRedeemTextField);
  [(SKUIRedeemTextField *)v5 setAutocapitalizationType:3];
  [(SKUIRedeemTextField *)v5 setAutocorrectionType:1];
  [(SKUIRedeemTextField *)v5 setAutoresizingMask:2];
  [(SKUIRedeemTextField *)v5 setEnablesReturnKeyAutomatically:1];
  [(SKUIRedeemTextField *)v5 setReturnKeyType:9];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [(SKUIRedeemTextField *)v5 setFont:v6];
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = *MEMORY[0x277D740A8];
  view = [(SKUIRedeemInputViewController *)self view];
  tintColor = [view tintColor];
  v11 = tintColor;
  if (tintColor)
  {
    v12 = [v7 initWithObjectsAndKeys:{v6, v8, tintColor, *MEMORY[0x277D740C0], 0}];
  }

  else
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
    v12 = [v7 initWithObjectsAndKeys:{v6, v8, v13, *MEMORY[0x277D740C0], 0}];
  }

  v14 = objc_alloc(MEMORY[0x277CCA898]);
  if (contextCopy)
  {
    [contextCopy localizedStringForKey:@"REDEEM_CODE_PLACEHOLDER" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_CODE_PLACEHOLDER" inBundles:0 inTable:@"Redeem"];
  }
  v15 = ;
  v16 = [v14 initWithString:v15 attributes:v12];

  [(SKUIRedeemTextField *)v5 setAttributedPlaceholder:v16];
  return v5;
}

- (void)_toggleActivityIndicatorBarButtonItem:(BOOL)item
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (item)
  {
    navigationItem2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    [navigationItem2 startAnimating];
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:navigationItem2];
    navigationItem = [(SKUIRedeemInputViewController *)self navigationItem];
    v9[0] = self->_redeemButton;
    v9[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    [navigationItem setRightBarButtonItems:v7];
  }

  else
  {
    navigationItem2 = [(SKUIRedeemInputViewController *)self navigationItem];
    redeemButton = self->_redeemButton;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&redeemButton count:1];
    [navigationItem2 setRightBarButtonItems:v5];
  }
}

- (void)initWithRedeemCategory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemInputViewController initWithRedeemCategory:]";
}

@end