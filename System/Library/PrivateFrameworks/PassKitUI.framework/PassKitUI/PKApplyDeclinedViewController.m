@interface PKApplyDeclinedViewController
- (void)_auxiliaryAction;
- (void)_cancelAction;
- (void)_continueAction;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKApplyDeclinedViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PKApplyDeclinedViewController;
  [(PKApplyExplanationViewController *)&v14 viewDidLoad];
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4 = [v3 featureApplication];
  if ([v4 applicationStateReason] == 7)
  {
    [(PKExplanationViewController *)self setShowCancelButton:1];
  }

  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = PKFeatureApplicationHeaderImageWithImage([v3 featureIdentifier], 0);
  [v5 setImage:v6];
  if (v6)
  {
    [v5 setTopMargin:30.0];
  }

  [v5 setBodyButtonNumberOfLines:2];
  [v5 setBodyDataDetectorTypes:1];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__PKApplyDeclinedViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E80131F8;
  objc_copyWeak(&v12, &location);
  [(PKApplyExplanationViewController *)self setContinueAction:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PKApplyDeclinedViewController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_1E8010998;
  objc_copyWeak(&v10, &location);
  [(PKDynamicProvisioningPageViewController *)self setCancelButtonAction:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PKApplyDeclinedViewController_viewDidLoad__block_invoke_3;
  v7[3] = &unk_1E80131F8;
  objc_copyWeak(&v8, &location);
  [(PKApplyExplanationViewController *)self setAuxiliaryAction:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __44__PKApplyDeclinedViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _continueAction];
  }

  return 0;
}

void __44__PKApplyDeclinedViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancelAction];
    WeakRetained = v2;
  }
}

uint64_t __44__PKApplyDeclinedViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _auxiliaryAction];
  }

  return 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKApplyDeclinedViewController;
  [(PKApplyExplanationViewController *)&v8 viewDidAppear:a3];
  v4 = [(PKApplyExplanationViewController *)self controller];
  v5 = [v4 featureApplication];
  v6 = [v5 declineDetails];
  v7 = [v6 declinedTermsIdentifier];
  [v4 termsShownWithIdentifier:v7];
}

- (void)_continueAction
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PKApplyDeclinedViewController__continueAction__block_invoke;
  aBlock[3] = &unk_1E8011338;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  v4 = [(PKApplyExplanationViewController *)self controller];
  v5 = [v4 featureApplication];

  if ([v5 applicationStateReason] == 7)
  {
    if (+[PKBusinessChatController deviceSupportsBusinessChat])
    {
      if (!self->_businessChatController)
      {
        v6 = objc_alloc_init(PKBusinessChatController);
        businessChatController = self->_businessChatController;
        self->_businessChatController = v6;
      }

      v8 = [PKBuinessChatApplyContext alloc];
      v9 = [v5 businessChatIdentifier];
      v10 = [(PKBuinessChatApplyContext *)v8 initWithIdentifier:v9 intent:1];

      v11 = self->_businessChatController;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__PKApplyDeclinedViewController__continueAction__block_invoke_2;
      v12[3] = &unk_1E8012C28;
      v13 = v3;
      [(PKBusinessChatController *)v11 openBusinessChatWithContext:v10 completion:v12];
    }
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __48__PKApplyDeclinedViewController__continueAction__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
      [WeakRetained presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v5 = [WeakRetained controller];
      [v5 endApplyFlow];

      [WeakRetained handleNextStep];
    }
  }
}

void __48__PKApplyDeclinedViewController__continueAction__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PKApplyDeclinedViewController__continueAction__block_invoke_3;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_cancelAction
{
  v3 = [(PKApplyExplanationViewController *)self controller];
  [v3 endApplyFlow];

  [(PKApplyExplanationViewController *)self handleNextStep];
}

- (void)_auxiliaryAction
{
  v3 = [(PKApplyExplanationViewController *)self controller];
  [v3 endApplyFlow];

  [(PKApplyExplanationViewController *)self handleNextStep];
}

@end