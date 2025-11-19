@interface PKAccountSupportTopicExplanationViewController
- (BOOL)shouldShowSupportLink:(id)a3;
- (PKAccountSupportTopicExplanationViewController)initWithAccount:(id)a3 topic:(id)a4 delegate:(id)a5;
- (void)_openSupportLinkURL:(id)a3;
- (void)_performPrimaryAction;
- (void)_showMerchantDetails;
- (void)deselectCells;
- (void)openSupportLink:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKAccountSupportTopicExplanationViewController

- (PKAccountSupportTopicExplanationViewController)initWithAccount:(id)a3 topic:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = PKAccountSupportTopicExplanationViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v27 initWithContext:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topic, a4);
    objc_storeStrong(&v13->_account, a3);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = [PKAccountSupportTopicExplanationContentSectionController alloc];
    v15 = [v10 explanation];
    v16 = [v15 content];
    v17 = [(PKAccountSupportTopicExplanationContentSectionController *)v14 initWithContent:v16];
    contentSectionController = v13->_contentSectionController;
    v13->_contentSectionController = v17;

    v19 = [PKAccountSupportTopicExplanationLinkSectionController alloc];
    v20 = [v10 explanation];
    v21 = [v20 link];
    v22 = [(PKAccountSupportTopicExplanationLinkSectionController *)v19 initWithLink:v21 delegate:v13];
    linkSectionController = v13->_linkSectionController;
    v13->_linkSectionController = v22;

    v24 = [(PKAccountSupportTopicExplanationViewController *)v13 navigationItem];
    [(PKAccount *)v13->_account feature];
    v25 = PKLocalizedFeatureString();
    [v24 setTitle:v25];
  }

  return v13;
}

- (void)viewDidLoad
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKAccountSupportTopicExplanationViewController;
  [(PKPaymentSetupOptionsViewController *)&v17 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v3];

  v4 = [(PKAccountSupportTopic *)self->_topic explanation];
  v5 = [v4 headerTitle];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v5];

  v6 = [v4 headerSubtitle];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v6];

  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC30], 2, 0);
  [(PKPaymentSetupOptionsViewController *)self setTitleFont:v7];

  v8 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v9 = [v4 primaryActionTitle];
  if (v9)
  {
    v10 = [v8 primaryButton];
    [v10 setTitle:v9 forState:0];
    [v10 addTarget:self action:sel__performPrimaryAction forControlEvents:0x2000];
  }

  else
  {
    [v8 setPrimaryButton:0];
  }

  v11 = [v8 footerView];
  v12 = [v4 secondaryActionTitle];
  if (v12)
  {
    v13 = [v11 manualEntryButton];
    [v13 setTitle:v12 forState:0];
    [v13 addTarget:self action:sel__cancelTapped forControlEvents:64];
  }

  else
  {
    [v11 setManualEntryButton:0];
  }

  v14 = [(PKAccountSupportTopicExplanationViewController *)self view];
  [v14 setAccessibilityIdentifier:*MEMORY[0x1E69B9CE8]];

  linkSectionController = self->_linkSectionController;
  v18[0] = self->_contentSectionController;
  v18[1] = linkSectionController;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(PKPaymentSetupOptionsViewController *)self setSections:v16 animated:0];
}

- (BOOL)shouldShowSupportLink:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained shouldShowSupportLink:v4];

  return v6;
}

- (void)openSupportLink:(id)a3
{
  v5 = a3;
  v4 = [v5 action];
  if (v4 == 1)
  {
    [(PKAccountSupportTopicExplanationViewController *)self _showMerchantDetails];
  }

  else if (!v4)
  {
    [(PKAccountSupportTopicExplanationViewController *)self _openSupportLinkURL:v5];
  }
}

- (void)_openSupportLinkURL:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [v4 confirmationTitle];
  v7 = [v5 host];
  if (PKIsURLHttpScheme() && ([v7 containsString:*MEMORY[0x1E69BC6E8]] & 1) == 0)
  {
    v14 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v5];
    [v14 setModalPresentationStyle:2];
    [(PKAccountSupportTopicExplanationViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v8 = [v5 scheme];
    v9 = [v8 containsString:@"tel"];

    if (v9)
    {
      v10 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v7];
      v11 = v7;
      if (v10)
      {
        v12 = [v10 pkFormattedStringValue];

        v11 = v12;
      }

      v24 = v10;
      if ([v6 length])
      {
        v13 = v6;
      }

      else
      {
        [(PKAccount *)self->_account feature];
        v13 = PKLocalizedFeatureString();
      }

      v23 = v13;
      v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:0 preferredStyle:0];
      v16 = MEMORY[0x1E69DC648];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__PKAccountSupportTopicExplanationViewController__openSupportLinkURL___block_invoke;
      v25[3] = &unk_1E80112E8;
      v26 = v5;
      v17 = [v16 actionWithTitle:v11 style:0 handler:v25];
      [v15 addAction:v17];

      v18 = MEMORY[0x1E69DC648];
      [(PKAccount *)self->_account feature];
      v19 = PKLocalizedFeatureString();
      v20 = [v18 actionWithTitle:v19 style:1 handler:0];
      [v15 addAction:v20];

      v21 = [(PKDynamicCollectionViewController *)self cellForItem:v4];
      v22 = [v15 popoverPresentationController];
      [v22 setSourceItem:v21];

      [(PKAccountSupportTopicExplanationViewController *)self presentViewController:v15 animated:1 completion:0];
    }

    else
    {
      PKOpenURL();
    }
  }
}

- (void)_showMerchantDetails
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 showMerchantDetailsForTransaction];
  }
}

- (void)deselectCells
{
  v2.receiver = self;
  v2.super_class = PKAccountSupportTopicExplanationViewController;
  [(PKDynamicCollectionViewController *)&v2 deselectCells];
}

- (void)_performPrimaryAction
{
  if ([(PKAccountSupportTopic *)self->_topic issueType]<= 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained openBusinessChatForTopic:self->_topic];
  }
}

@end