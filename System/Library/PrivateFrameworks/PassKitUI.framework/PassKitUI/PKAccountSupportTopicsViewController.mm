@interface PKAccountSupportTopicsViewController
- (PKAccountSupportTopicsViewController)initWithAccount:(id)a3;
- (void)_fetchCommonSupportTopics;
- (void)_reloadSectionControllerWithTopics:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)deselectCells;
- (void)openBusinessChatForTopic:(id)a3;
- (void)reloadItem:(id)a3 animated:(BOOL)a4;
- (void)showExplanationForTopic:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountSupportTopicsViewController

- (PKAccountSupportTopicsViewController)initWithAccount:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountSupportTopicsViewController;
  v6 = [(PKPaymentSetupOptionsViewController *)&v12 initWithContext:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v7->_loadingTopics = 0;
    v8 = [(PKAccountSupportTopicsViewController *)v7 navigationItem];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v7 action:sel__cancelTapped];
    [v8 setLeftBarButtonItem:v9];

    [v8 setBackButtonDisplayMode:2];
    v10 = PKLocalizedFeatureString();
    [v8 setTitle:v10];
  }

  return v7;
}

- (void)_fetchCommonSupportTopics
{
  self->_loadingTopics = 1;
  [(PKAccountSupportTopicsViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v3 = objc_alloc_init(MEMORY[0x1E69B84D0]);
  v4 = [(PKAccount *)self->_account accountBaseURL];
  [v3 setBaseURL:v4];

  v5 = [(PKAccount *)self->_account accountIdentifier];
  [v3 setAccountIdentifier:v5];

  objc_initWeak(&location, self);
  v6 = [MEMORY[0x1E69B8EF8] sharedService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PKAccountSupportTopicsViewController__fetchCommonSupportTopics__block_invoke;
  v7[3] = &unk_1E8014AD0;
  objc_copyWeak(&v8, &location);
  [v6 supportTopicsWithRequest:v3 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__PKAccountSupportTopicsViewController__fetchCommonSupportTopics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKAccountSupportTopicsViewController__fetchCommonSupportTopics__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __65__PKAccountSupportTopicsViewController__fetchCommonSupportTopics__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1328) = 0;
    [WeakRetained _setNeedsUpdateContentUnavailableConfiguration];
    v4 = [*(a1 + 32) topics];
    [v3 _reloadSectionControllerWithTopics:v4];
    v5 = [v3[167] businessChatTargetDialog];
    v6 = v5;
    if (!*(a1 + 40) && v5 && [v4 count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __65__PKAccountSupportTopicsViewController__fetchCommonSupportTopics__block_invoke_3;
      v8[3] = &unk_1E8014AA8;
      v9 = v6;
      v7 = [v4 pk_firstObjectPassingTest:v8];
      if (v7)
      {
        [v3 showExplanationForTopic:v7];
      }
    }
  }
}

uint64_t __65__PKAccountSupportTopicsViewController__fetchCommonSupportTopics__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 businessChatTargetDialog];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)_reloadSectionControllerWithTopics:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [PKAccountSupportTopicsSectionController alloc];
    account = self->_account;
    [(PKAccount *)account feature];
    v7 = PKLocalizedFeatureString();
    v8 = [v7 uppercaseString];
    v9 = [(PKAccountSupportTopicsSectionController *)v5 initWithAccount:account topics:v4 sectionTitle:v8 delegate:self];
    sectionTopicController = self->_sectionTopicController;
    self->_sectionTopicController = v9;

    v11 = [[PKAccountSupportSectionController alloc] initWithAccount:self->_account];
    sectionAccountController = self->_sectionAccountController;
    self->_sectionAccountController = v11;

    v13 = self->_sectionTopicController;
    v15[0] = self->_sectionAccountController;
    v15[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(PKPaymentSetupOptionsViewController *)self setSections:v14 animated:1];
  }

  else
  {
    [(PKAccountSupportTopicsViewController *)self _continueToChat];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKAccountSupportTopicsViewController;
  [(PKPaymentSetupOptionsViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v3];

  v4 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v5 = [v4 primaryButton];
  v6 = PKLocalizedFeatureString();
  [v5 setTitle:v6 forState:0];

  [v5 addTarget:self action:sel__continueToChat forControlEvents:0x2000];
  [(PKAccountSupportTopicsViewController *)self _fetchCommonSupportTopics];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKAccountSupportTopicsViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKDynamicCollectionViewController *)self collectionView];
    v4 = [(PKAccountSupportTopicsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (self->_loadingTopics)
  {
    v4 = MEMORY[0x1E69DC8C8];
    v5 = a3;
    v6 = [v4 loadingConfiguration];
    v7 = [v6 updatedConfigurationForState:v5];
  }

  else
  {
    v7 = 0;
  }

  [(PKAccountSupportTopicsViewController *)self _setContentUnavailableConfiguration:v7];
}

- (void)openBusinessChatForTopic:(id)a3
{
  v4 = a3;
  businessChatController = self->_businessChatController;
  if (businessChatController)
  {
    v6 = businessChatController;
  }

  else
  {
    v6 = objc_alloc_init(PKBusinessChatController);
  }

  v7 = self->_businessChatController;
  self->_businessChatController = v6;

  objc_initWeak(&location, self);
  if (!v4)
  {
    suggestedTopic = self->_suggestedTopic;
    if (suggestedTopic)
    {
      v9 = suggestedTopic;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E69B8418]) initWithOtherTopicForAccount:self->_account];
    }

    v4 = v9;
  }

  v10 = [[PKBusinessChatAccountContext alloc] initWithAccount:self->_account topic:v4];
  v11 = self->_businessChatController;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKAccountSupportTopicsViewController_openBusinessChatForTopic___block_invoke;
  v12[3] = &unk_1E8011338;
  objc_copyWeak(&v13, &location);
  [(PKBusinessChatController *)v11 openBusinessChatWithContext:v10 completion:v12];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

void __65__PKAccountSupportTopicsViewController_openBusinessChatForTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKAccountSupportTopicsViewController_openBusinessChatForTopic___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __65__PKAccountSupportTopicsViewController_openBusinessChatForTopic___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      if (v4)
      {
        [v5 presentViewController:v4 animated:1 completion:0];
      }

      WeakRetained = v5;
    }
  }
}

- (void)showExplanationForTopic:(id)a3
{
  v4 = a3;
  v6 = [[PKAccountSupportTopicExplanationViewController alloc] initWithAccount:self->_account topic:v4 delegate:self];

  v5 = [(PKAccountSupportTopicsViewController *)self navigationController];
  [v5 pushViewController:v6 animated:1];
}

- (void)deselectCells
{
  v2.receiver = self;
  v2.super_class = PKAccountSupportTopicsViewController;
  [(PKDynamicCollectionViewController *)&v2 deselectCells];
}

- (void)reloadItem:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = PKAccountSupportTopicsViewController;
  [(PKDynamicCollectionViewController *)&v4 reloadItem:a3 animated:a4];
}

@end