@interface SKUIRedeemViewControllerLegacy
+ (BOOL)redeemRequiresNationalId:(id)a3;
- (CGSize)preferredContentSize;
- (NSOperationQueue)operationQueue;
- (SKUIRedeemViewCameraOverrideDelegate)cameraDelegate;
- (SKUIRedeemViewControllerLegacy)initWithRedeemCategory:(int64_t)a3;
- (UIBarButtonItem)cancelButtonItem;
- (id)_newInputViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_attemptAutomaticRedeemWithMetadata:(id)a3;
- (void)_cancelButtonAction:(id)a3;
- (void)_executeIdValidationOperationWithFields:(id)a3;
- (void)_executePreflightOperationForcesAuthentication:(BOOL)a3;
- (void)_executeRequiresIdValidationOperation;
- (void)_finishPreflightWithResult:(id)a3;
- (void)_loadInputViewController;
- (void)_performInitialRedeemOperation;
- (void)_showInputViewController;
- (void)_showNationalIdLoadingPage;
- (void)_showNationalIdVerificationPage;
- (void)dismissAnimated:(BOOL)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)redeemAgainAnimated:(BOOL)a3;
- (void)redeemIdViewController:(id)a3 submittedWithFields:(id)a4;
- (void)redeemStepViewControllerShouldValidateNationalID:(id)a3;
- (void)setCameraRedeemVisible:(BOOL)a3;
- (void)setClientContext:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SKUIRedeemViewControllerLegacy

- (SKUIRedeemViewControllerLegacy)initWithRedeemCategory:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemViewControllerLegacy initWithRedeemCategory:];
  }

  v5 = objc_alloc_init(MEMORY[0x277D75D28]);
  v6 = objc_alloc_init(SKUILoadingView);
  [(SKUILoadingView *)v6 setAutoresizingMask:45];
  [(SKUILoadingView *)v6 sizeToFit];
  v7 = [v5 view];
  v8 = [MEMORY[0x277D75348] whiteColor];
  [v7 setBackgroundColor:v8];

  [(SKUILoadingView *)v6 bounds];
  [v7 setFrame:?];
  [v7 bounds];
  [(SKUILoadingView *)v6 setFrame:?];
  [v7 addSubview:v6];
  v12.receiver = self;
  v12.super_class = SKUIRedeemViewControllerLegacy;
  v9 = [(SKUIRedeemViewControllerLegacy *)&v12 initWithRootViewController:v5];
  v10 = v9;
  if (v9)
  {
    v9->_cameraRedeemEnabled = -1;
    v9->_category = a3;
    [(SKUIRedeemViewControllerLegacy *)v9 setModalPresentationStyle:2];
  }

  [(SKUIRedeemViewControllerLegacy *)v10 setShouldPerformInitialOperationOnAppear:1];

  return v10;
}

- (void)setCameraRedeemVisible:(BOOL)a3
{
  if (a3)
  {
    self->_cameraRedeemEnabled = 1;
    self->_cameraRedeemVisible = 1;
  }
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    [(SKUIRedeemStepViewController *)self->_inputViewController setClientContext:self->_clientContext];
    v5 = v6;
  }
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (CGSize)preferredContentSize
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1 || (([MEMORY[0x277D75DA0] keyWindow], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, v5, v30.origin.x = v7, v30.origin.y = v9, v30.size.width = v11, v30.size.height = v13, Width = CGRectGetWidth(v30), v31.origin.x = v7, v31.origin.y = v9, v31.size.width = v11, v31.size.height = v13, v15 = CGRectGetHeight(v31), Width >= 1024.0) ? (v16 = v15 < 1024.0) : (v16 = 1), v16))
  {
    v28.receiver = self;
    v28.super_class = SKUIRedeemViewControllerLegacy;
    [(SKUIRedeemViewControllerLegacy *)&v28 preferredContentSize];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [(SKUIRedeemViewControllerLegacy *)self navigationBar];
    v22 = v21;
    if (v21)
    {
      [v21 frame];
      Height = CGRectGetHeight(v32);
    }

    else
    {
      Height = 0.0;
    }

    v24 = Height + 1045.0;
    v25 = Height + 904.0;
    if (v15 <= Width)
    {
      v20 = v25;
    }

    else
    {
      v20 = v24;
    }

    *&v18 = 784.0;
  }

  v26 = *&v18;
  v27 = v20;
  result.height = v27;
  result.width = v26;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SKUIRedeemViewControllerLegacy;
  [(SKUIRedeemViewControllerLegacy *)&v8 viewDidAppear:a3];
  v4 = [(SKUIRedeemViewControllerLegacy *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    self->_initialBarStyle = [v6 statusBarStyle];

    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 setStatusBarStyle:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIRedeemViewControllerLegacy *)self topViewController];
  v6 = [v5 navigationItem];
  v7 = [(SKUIRedeemViewControllerLegacy *)self cancelButtonItem];
  [v6 setLeftBarButtonItem:v7];

  if ([(SKUIRedeemViewControllerLegacy *)self shouldPerformInitialOperationOnAppear])
  {
    [(SKUIRedeemViewControllerLegacy *)self _performInitialRedeemOperation];
    [(SKUIRedeemViewControllerLegacy *)self setShouldPerformInitialOperationOnAppear:0];
  }

  else if (!self->_inputViewController && self->_redeemConfiguration)
  {
    [(SKUIRedeemViewControllerLegacy *)self _showInputViewController];
  }

  v8.receiver = self;
  v8.super_class = SKUIRedeemViewControllerLegacy;
  [(SKUIRedeemViewControllerLegacy *)&v8 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SKUIRedeemViewControllerLegacy;
  [(SKUIRedeemViewControllerLegacy *)&v7 viewWillDisappear:a3];
  v4 = [(SKUIRedeemViewControllerLegacy *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 setStatusBarStyle:self->_initialBarStyle];
  }
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIRedeemViewControllerLegacy *)self parentViewController];

  if (v5)
  {
    v6 = [(SKUIRedeemViewControllerLegacy *)self parentViewController];
    [v6 dismissAnimated:v3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUIRedeemViewControllerLegacy;
    [(SKUIRedeemViewControllerLegacy *)&v7 dismissAnimated:v3];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SKUIRedeemViewControllerLegacy *)self parentViewController];

  if (v7)
  {
    v8 = [(SKUIRedeemViewControllerLegacy *)self parentViewController];
    [v8 dismissViewControllerAnimated:v4 completion:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SKUIRedeemViewControllerLegacy;
    [(SKUIRedeemViewControllerLegacy *)&v9 dismissViewControllerAnimated:v4 completion:v6];
  }
}

- (void)redeemStepViewControllerShouldValidateNationalID:(id)a3
{
  inputViewController = self->_inputViewController;
  self->_inputViewController = 0;

  [(SKUIRedeemViewControllerLegacy *)self _showNationalIdVerificationPage];
}

- (void)redeemIdViewController:(id)a3 submittedWithFields:(id)a4
{
  v5 = a4;
  [(SKUIRedeemViewControllerLegacy *)self _showNationalIdLoadingPage];
  [(SKUIRedeemViewControllerLegacy *)self _executeIdValidationOperationWithFields:v5];
}

- (void)redeemAgainAnimated:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [(SKUIRedeemViewControllerLegacy *)self _newInputViewController];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SKUIRedeemViewControllerLegacy *)self setViewControllers:v6 animated:v3];
}

- (void)_cancelButtonAction:(id)a3
{
  [(SKUIRedeemViewControllerLegacy *)self dismissViewControllerAnimated:1 completion:0];
  [(SKUIRedeemPreflightOperation *)self->_preflightOperation setOutputBlock:0];
  preflightOperation = self->_preflightOperation;
  self->_preflightOperation = 0;
}

- (void)_performInitialRedeemOperation
{
  v3 = objc_opt_class();
  v4 = [(SKUIRedeemViewControllerLegacy *)self clientContext];
  LODWORD(v3) = [v3 redeemRequiresNationalId:v4];

  if (v3)
  {

    [(SKUIRedeemViewControllerLegacy *)self _executeRequiresIdValidationOperation];
  }

  else
  {

    [(SKUIRedeemViewControllerLegacy *)self _executePreflightOperationForcesAuthentication:1];
  }
}

- (void)_executePreflightOperationForcesAuthentication:(BOOL)a3
{
  if (!self->_preflightOperation)
  {
    v4 = [[SKUIRedeemPreflightOperation alloc] initWithClientContext:self->_clientContext redeemCode:self->_initialCode forcesAuthentication:a3];
    preflightOperation = self->_preflightOperation;
    self->_preflightOperation = v4;

    [(SKUIRedeemPreflightOperation *)self->_preflightOperation setRedeemViewController:self];
    [(SKUIRedeemPreflightOperation *)self->_preflightOperation setLoadsRedeemCodeMetadata:[(SKUIRedeemViewControllerLegacy *)self attempsAutomaticRedeem]];
    v6 = [SKUIRedeemConfiguration alloc];
    v7 = [(SKUIRedeemViewControllerLegacy *)self operationQueue];
    v8 = [(SKUIRedeemConfiguration *)v6 initWithOperationQueue:v7 category:self->_category clientContext:self->_clientContext];

    [(SKUIRedeemPreflightOperation *)self->_preflightOperation setRedeemConfiguration:v8];
    objc_initWeak(&location, self);
    v9 = self->_preflightOperation;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __81__SKUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke;
    v14 = &unk_2781FBA30;
    objc_copyWeak(&v15, &location);
    [(SKUIRedeemPreflightOperation *)v9 setOutputBlock:&v11];
    v10 = [(SKUIRedeemViewControllerLegacy *)self operationQueue:v11];
    [v10 addOperation:self->_preflightOperation];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __81__SKUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__SKUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __81__SKUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPreflightWithResult:*(a1 + 32)];
}

- (void)_attemptAutomaticRedeemWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [SKUIRedeemOperation alloc];
  v6 = [v4 code];
  if (v6)
  {
    v7 = [(SKUIRedeemOperation *)v5 initWithCode:v6];
  }

  else
  {
    v8 = [v4 inputCode];
    v7 = [(SKUIRedeemOperation *)v5 initWithCode:v8];
  }

  v9 = [(SKUIRedeemViewControllerLegacy *)self clientContext];
  [(SKUIRedeemOperation *)v7 setClientContext:v9];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__SKUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke;
  v14 = &unk_2781FBA58;
  objc_copyWeak(&v15, &location);
  [(SKUIRedeemOperation *)v7 setResultBlock:&v11];
  v10 = [(SKUIRedeemViewControllerLegacy *)self operationQueue:v11];
  [v10 addOperation:v7];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __70__SKUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SKUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __70__SKUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    [WeakRetained _loadInputViewController];
  }

  else
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    v6 = WeakRetained;
    v3 = [[SKUIRedeemResultsViewController alloc] initWithRedeem:*(a1 + 40)];
    v4 = [v6 clientContext];
    [(SKUIRedeemStepViewController *)v3 setClientContext:v4];

    [(SKUIRedeemStepViewController *)v3 setConfiguration:v6[190]];
    v5 = [v6 operationQueue];
    [(SKUIRedeemStepViewController *)v3 setOperationQueue:v5];

    -[SKUIRedeemResultsViewController setRedeemCategory:](v3, "setRedeemCategory:", [v6 category]);
    [v6 pushViewController:v3 animated:1];
  }

  WeakRetained = v6;
LABEL_6:
}

- (void)_finishPreflightWithResult:(id)a3
{
  v13 = a3;
  if ([v13 resultType] || (objc_msgSend(v13, "account"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isManagedAppleID"), v4, v5))
  {
    [(SKUIRedeemViewControllerLegacy *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_4;
  }

  v7 = [v13 redeemConfiguration];
  redeemConfiguration = self->_redeemConfiguration;
  self->_redeemConfiguration = v7;

  v9 = [v13 clientContext];
  [(SKUIRedeemViewControllerLegacy *)self setClientContext:v9];

  v10 = [v13 codeMetadata];
  if (![(SKUIRedeemViewControllerLegacy *)self attempsAutomaticRedeem])
  {
    goto LABEL_10;
  }

  v11 = [v10 items];
  if (![v11 count])
  {

    goto LABEL_12;
  }

  v12 = [v10 allowsAutoSubmission];

  if (v12)
  {
LABEL_12:
    [(SKUIRedeemViewControllerLegacy *)self _attemptAutomaticRedeemWithMetadata:v10];
    goto LABEL_13;
  }

LABEL_10:
  [(SKUIRedeemViewControllerLegacy *)self _loadInputViewController];
LABEL_13:

LABEL_4:
  [(SKUIRedeemPreflightOperation *)self->_preflightOperation setOutputBlock:0];
  preflightOperation = self->_preflightOperation;
  self->_preflightOperation = 0;
}

- (void)_loadInputViewController
{
  if (self->_cameraRedeemEnabled == 255)
  {
    objc_initWeak(&location, self);
    v3 = [(SKUIClientContext *)self->_clientContext URLBag];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__SKUIRedeemViewControllerLegacy__loadInputViewController__block_invoke;
    v4[3] = &unk_2781FBA80;
    objc_copyWeak(&v5, &location);
    [v3 loadValueForKey:@"cameraGiftingEnabled" completionBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SKUIRedeemViewControllerLegacy *)self _showInputViewController];
  }
}

void __58__SKUIRedeemViewControllerLegacy__loadInputViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SKUIRedeemViewControllerLegacy__loadInputViewController__block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __58__SKUIRedeemViewControllerLegacy__loadInputViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    WeakRetained[1473] = [*(a1 + 32) BOOLValue];
    [v3 _showInputViewController];
    WeakRetained = v3;
  }
}

- (id)_newInputViewController
{
  if (self->_cameraRedeemEnabled && [MEMORY[0x277D00F70] isCRCodeRedeemerAvailable])
  {
    v3 = [(SKUIRedeemViewControllerLegacy *)self cameraRedeemVisible];
    v4 = [SKUIRedeemCameraViewController alloc];
    category = self->_category;
    if (v3)
    {
      v6 = [(SKUIRedeemCameraViewController *)v4 initWithRedeemCategoryFullscreen:category];
    }

    else
    {
      v6 = [(SKUIRedeemCameraViewController *)v4 initWithRedeemCategory:category];
    }

    v7 = v6;
    v8 = [(SKUIRedeemViewControllerLegacy *)self cameraDelegate];
    [(SKUIRedeemInputViewController *)v7 setCameraOverrideDelegate:v8];

    v9 = [(SKUIRedeemViewControllerLegacy *)self cameraDelegate];
    [(SKUIRedeemInputViewController *)v7 setDelegate:v9];
  }

  else
  {
    v7 = [[SKUIRedeemInputViewController alloc] initWithRedeemCategory:self->_category];
  }

  [(SKUIRedeemStepViewController *)v7 setClientContext:self->_clientContext];
  [(SKUIRedeemStepViewController *)v7 setConfiguration:self->_redeemConfiguration];
  v10 = [(SKUIRedeemViewControllerLegacy *)self operationQueue];
  [(SKUIRedeemStepViewController *)v7 setOperationQueue:v10];

  [(SKUIRedeemStepViewController *)v7 setRedeemStepDelegate:self];
  return v7;
}

- (void)_showInputViewController
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->_inputViewController)
  {
    v3 = [(SKUIRedeemViewControllerLegacy *)self _newInputViewController];
    inputViewController = self->_inputViewController;
    self->_inputViewController = v3;

    [(SKUIRedeemStepViewController *)self->_inputViewController setInitialCode:self->_initialCode];
    v6[0] = self->_inputViewController;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [(SKUIRedeemViewControllerLegacy *)self setViewControllers:v5];
  }
}

- (UIBarButtonItem)cancelButtonItem
{
  cancelButtonItem = self->_cancelButtonItem;
  if (!cancelButtonItem)
  {
    v4 = objc_alloc_init(MEMORY[0x277D751E0]);
    v5 = self->_cancelButtonItem;
    self->_cancelButtonItem = v4;

    [(UIBarButtonItem *)self->_cancelButtonItem setAction:sel__cancelButtonAction_];
    [(UIBarButtonItem *)self->_cancelButtonItem setTarget:self];
    v6 = self->_cancelButtonItem;
    v7 = SKUIBundle();
    v8 = [v7 localizedStringForKey:@"REDEEM_CANCEL_BUTTON" value:&stru_2827FFAC8 table:@"Redeem"];
    [(UIBarButtonItem *)v6 setTitle:v8];

    cancelButtonItem = self->_cancelButtonItem;
  }

  return cancelButtonItem;
}

+ (BOOL)redeemRequiresNationalId:(id)a3
{
  v3 = [a3 URLBag];
  v4 = [v3 valueForKey:@"redeemRequiresNationalId" error:0];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_executeRequiresIdValidationOperation
{
  v3 = objc_alloc_init(SKUIRedeemIdRequiresValidationOperation);
  [(SKUIRedeemIdRequiresValidationOperation *)v3 setRedeemViewController:self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__SKUIRedeemViewControllerLegacy__executeRequiresIdValidationOperation__block_invoke;
  v5[3] = &unk_2781FAF50;
  v5[4] = self;
  [(SKUIRedeemIdRequiresValidationOperation *)v3 setResultBlock:v5];
  v4 = [(SKUIRedeemViewControllerLegacy *)self operationQueue];
  [v4 addOperation:v3];
}

uint64_t __71__SKUIRedeemViewControllerLegacy__executeRequiresIdValidationOperation__block_invoke(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    return [v3 dismissAnimated:1];
  }

  if (a3)
  {
    return [v3 _showNationalIdVerificationPage];
  }

  return [v3 _executePreflightOperationForcesAuthentication:?];
}

- (void)_executeIdValidationOperationWithFields:(id)a3
{
  v4 = a3;
  v5 = [[SKUIRedeemIdValidateOperation alloc] initWithDictionary:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SKUIRedeemViewControllerLegacy__executeIdValidationOperationWithFields___block_invoke;
  v7[3] = &unk_2781F84A0;
  v7[4] = self;
  [(SKUIRedeemIdValidateOperation *)v5 setResultBlock:v7];
  v6 = [(SKUIRedeemViewControllerLegacy *)self operationQueue];
  [v6 addOperation:v5];
}

uint64_t __74__SKUIRedeemViewControllerLegacy__executeIdValidationOperationWithFields___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _executePreflightOperationForcesAuthentication:0];
  }

  else
  {
    return [v2 _showNationalIdVerificationPage];
  }
}

- (void)_showNationalIdVerificationPage
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [SKUIRedeemIdViewController alloc];
  v4 = [(SKUIRedeemViewControllerLegacy *)self clientContext];
  v5 = [(SKUIRedeemIdViewController *)v3 initWithClientContext:v4];

  [(SKUIRedeemIdViewController *)v5 setDelegate:self];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SKUIRedeemViewControllerLegacy *)self setViewControllers:v6];
}

- (void)_showNationalIdLoadingPage
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [SKUILoadingViewController alloc];
  v4 = [(SKUIRedeemViewControllerLegacy *)self clientContext];
  v5 = [(SKUILoadingViewController *)v3 initWithClientContext:v4];

  v6 = [(SKUIRedeemViewControllerLegacy *)self clientContext];
  v7 = v6;
  if (v6)
  {
    [v6 localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v8 = ;
  [(SKUILoadingViewController *)v5 setTitle:v8];

  v9 = [(SKUIRedeemViewControllerLegacy *)self clientContext];
  v10 = v9;
  if (v9)
  {
    [v9 localizedStringForKey:@"REDEEM_NATIONAL_ID_VERIFYING" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_VERIFYING" inBundles:0 inTable:@"Redeem"];
  }
  v11 = ;
  [(SKUILoadingViewController *)v5 setLoadingText:v11];

  v12 = SKUITableViewGroupedBackgroundColor();
  [(SKUILoadingViewController *)v5 setBackgroundColor:v12];

  v13 = [(SKUILoadingViewController *)v5 navigationItem];
  v14 = [(SKUIRedeemViewControllerLegacy *)self cancelButtonItem];
  [v13 setLeftBarButtonItem:v14];

  v16[0] = v5;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [(SKUIRedeemViewControllerLegacy *)self setViewControllers:v15];
}

- (SKUIRedeemViewCameraOverrideDelegate)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

- (void)initWithRedeemCategory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemViewControllerLegacy initWithRedeemCategory:]";
}

@end