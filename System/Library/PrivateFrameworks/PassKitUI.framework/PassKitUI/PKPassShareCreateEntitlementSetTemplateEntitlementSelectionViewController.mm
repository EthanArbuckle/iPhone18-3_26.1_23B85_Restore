@interface PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController
- (PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer pass:(id)pass delegate:(id)delegate;
- (void)_nextButtonPressed;
- (void)entitlementSelectionDidChange;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController

- (PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer pass:(id)pass delegate:(id)delegate
{
  v26[1] = *MEMORY[0x1E69E9840];
  composerCopy = composer;
  passCopy = pass;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v25 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = mode;
    objc_storeStrong(&v14->_entitlementComposer, composer);
    objc_storeStrong(&v15->_pass, pass);
    objc_storeStrong(&v15->_delegate, delegate);
    globalView = [(PKPassEntitlementsComposer *)v15->_entitlementComposer globalView];
    [globalView setIsManagingEntitlementConfiguration:1];
    [globalView setIsManagingTimeConfiguration:1];
    [globalView setEnabled:0];
    v17 = [[PKPassEntitlementSelectionSectionController alloc] initWithMode:mode entitlementComposer:v15->_entitlementComposer delegate:v15];
    entitlementSectionController = v15->_entitlementSectionController;
    v15->_entitlementSectionController = v17;

    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)v15 setModalPresentationStyle:6];
    v26[0] = v15->_entitlementSectionController;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(PKPaymentSetupOptionsViewController *)v15 setSections:v19 animated:0];

    navigationItem = [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)v15 navigationItem];
    v21 = objc_alloc(MEMORY[0x1E69DC708]);
    v22 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v23 = [v21 initWithTitle:v22 style:0 target:v15 action:sel__nextButtonPressed];

    [v23 setEnabled:0];
    [navigationItem setRightBarButtonItem:v23];
  }

  return v15;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController;
  [(PKDynamicCollectionViewController *)&v9 loadView];
  [(PKPaymentSetupOptionsViewController *)self setHeaderMode:0];
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setTitleAccessoriesEnabled:0];

  if ([(PKSecureElementPass *)self->_pass accessType]== 4)
  {
    v4 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio.isa);
    [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

    v5 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_0.isa);
    [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];
  }

  else
  {
    v5 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_1.isa);
    [(PKPaymentSetupOptionsViewController *)self setTitleText:v5];
  }

  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  footerView = [dockView footerView];
  [dockView setPrimaryButton:0];
  [dockView setButtonsEnabled:1];
  [footerView setSetUpLaterButton:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:systemBackgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:appear];
  [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)self _reloadSections:0];
}

- (void)_nextButtonPressed
{
  v4 = [[PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer pass:self->_pass delegate:self->_delegate];
  navigationController = [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)entitlementSelectionDidChange
{
  composeSharedEntitlements = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  v4 = [composeSharedEntitlements count] != 0;

  navigationItem = [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

@end