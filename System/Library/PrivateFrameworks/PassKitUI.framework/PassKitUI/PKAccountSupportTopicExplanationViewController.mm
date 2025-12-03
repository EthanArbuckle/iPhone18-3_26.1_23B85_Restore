@interface PKAccountSupportTopicExplanationViewController
- (BOOL)shouldShowSupportLink:(id)link;
- (PKAccountSupportTopicExplanationViewController)initWithAccount:(id)account topic:(id)topic delegate:(id)delegate;
- (void)_openSupportLinkURL:(id)l;
- (void)_performPrimaryAction;
- (void)_showMerchantDetails;
- (void)deselectCells;
- (void)openSupportLink:(id)link;
- (void)viewDidLoad;
@end

@implementation PKAccountSupportTopicExplanationViewController

- (PKAccountSupportTopicExplanationViewController)initWithAccount:(id)account topic:(id)topic delegate:(id)delegate
{
  accountCopy = account;
  topicCopy = topic;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = PKAccountSupportTopicExplanationViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v27 initWithContext:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topic, topic);
    objc_storeStrong(&v13->_account, account);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [PKAccountSupportTopicExplanationContentSectionController alloc];
    explanation = [topicCopy explanation];
    content = [explanation content];
    v17 = [(PKAccountSupportTopicExplanationContentSectionController *)v14 initWithContent:content];
    contentSectionController = v13->_contentSectionController;
    v13->_contentSectionController = v17;

    v19 = [PKAccountSupportTopicExplanationLinkSectionController alloc];
    explanation2 = [topicCopy explanation];
    link = [explanation2 link];
    v22 = [(PKAccountSupportTopicExplanationLinkSectionController *)v19 initWithLink:link delegate:v13];
    linkSectionController = v13->_linkSectionController;
    v13->_linkSectionController = v22;

    navigationItem = [(PKAccountSupportTopicExplanationViewController *)v13 navigationItem];
    [(PKAccount *)v13->_account feature];
    v25 = PKLocalizedFeatureString();
    [navigationItem setTitle:v25];
  }

  return v13;
}

- (void)viewDidLoad
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKAccountSupportTopicExplanationViewController;
  [(PKPaymentSetupOptionsViewController *)&v17 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:systemGroupedBackgroundColor];

  explanation = [(PKAccountSupportTopic *)self->_topic explanation];
  headerTitle = [explanation headerTitle];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:headerTitle];

  headerSubtitle = [explanation headerSubtitle];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:headerSubtitle];

  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC30], 2, 0);
  [(PKPaymentSetupOptionsViewController *)self setTitleFont:v7];

  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  primaryActionTitle = [explanation primaryActionTitle];
  if (primaryActionTitle)
  {
    primaryButton = [dockView primaryButton];
    [primaryButton setTitle:primaryActionTitle forState:0];
    [primaryButton addTarget:self action:sel__performPrimaryAction forControlEvents:0x2000];
  }

  else
  {
    [dockView setPrimaryButton:0];
  }

  footerView = [dockView footerView];
  secondaryActionTitle = [explanation secondaryActionTitle];
  if (secondaryActionTitle)
  {
    manualEntryButton = [footerView manualEntryButton];
    [manualEntryButton setTitle:secondaryActionTitle forState:0];
    [manualEntryButton addTarget:self action:sel__cancelTapped forControlEvents:64];
  }

  else
  {
    [footerView setManualEntryButton:0];
  }

  view = [(PKAccountSupportTopicExplanationViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9CE8]];

  linkSectionController = self->_linkSectionController;
  v18[0] = self->_contentSectionController;
  v18[1] = linkSectionController;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(PKPaymentSetupOptionsViewController *)self setSections:v16 animated:0];
}

- (BOOL)shouldShowSupportLink:(id)link
{
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained shouldShowSupportLink:linkCopy];

  return v6;
}

- (void)openSupportLink:(id)link
{
  linkCopy = link;
  action = [linkCopy action];
  if (action == 1)
  {
    [(PKAccountSupportTopicExplanationViewController *)self _showMerchantDetails];
  }

  else if (!action)
  {
    [(PKAccountSupportTopicExplanationViewController *)self _openSupportLinkURL:linkCopy];
  }
}

- (void)_openSupportLinkURL:(id)l
{
  lCopy = l;
  v5 = [lCopy url];
  confirmationTitle = [lCopy confirmationTitle];
  host = [v5 host];
  if (PKIsURLHttpScheme() && ([host containsString:*MEMORY[0x1E69BC6E8]] & 1) == 0)
  {
    v14 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v5];
    [v14 setModalPresentationStyle:2];
    [(PKAccountSupportTopicExplanationViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    scheme = [v5 scheme];
    v9 = [scheme containsString:@"tel"];

    if (v9)
    {
      v10 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:host];
      v11 = host;
      if (v10)
      {
        pkFormattedStringValue = [v10 pkFormattedStringValue];

        v11 = pkFormattedStringValue;
      }

      v24 = v10;
      if ([confirmationTitle length])
      {
        v13 = confirmationTitle;
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

      v21 = [(PKDynamicCollectionViewController *)self cellForItem:lCopy];
      popoverPresentationController = [v15 popoverPresentationController];
      [popoverPresentationController setSourceItem:v21];

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