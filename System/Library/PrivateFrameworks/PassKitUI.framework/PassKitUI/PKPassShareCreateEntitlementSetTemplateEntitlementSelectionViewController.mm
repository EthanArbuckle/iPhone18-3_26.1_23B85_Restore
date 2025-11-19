@interface PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController
- (PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 pass:(id)a5 delegate:(id)a6;
- (void)_nextButtonPressed;
- (void)entitlementSelectionDidChange;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController

- (PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 pass:(id)a5 delegate:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v25 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = a3;
    objc_storeStrong(&v14->_entitlementComposer, a4);
    objc_storeStrong(&v15->_pass, a5);
    objc_storeStrong(&v15->_delegate, a6);
    v16 = [(PKPassEntitlementsComposer *)v15->_entitlementComposer globalView];
    [v16 setIsManagingEntitlementConfiguration:1];
    [v16 setIsManagingTimeConfiguration:1];
    [v16 setEnabled:0];
    v17 = [[PKPassEntitlementSelectionSectionController alloc] initWithMode:a3 entitlementComposer:v15->_entitlementComposer delegate:v15];
    entitlementSectionController = v15->_entitlementSectionController;
    v15->_entitlementSectionController = v17;

    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)v15 setModalPresentationStyle:6];
    v26[0] = v15->_entitlementSectionController;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(PKPaymentSetupOptionsViewController *)v15 setSections:v19 animated:0];

    v20 = [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)v15 navigationItem];
    v21 = objc_alloc(MEMORY[0x1E69DC708]);
    v22 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v23 = [v21 initWithTitle:v22 style:0 target:v15 action:sel__nextButtonPressed];

    [v23 setEnabled:0];
    [v20 setRightBarButtonItem:v23];
  }

  return v15;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController;
  [(PKDynamicCollectionViewController *)&v9 loadView];
  [(PKPaymentSetupOptionsViewController *)self setHeaderMode:0];
  v3 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v3 setTitleAccessoriesEnabled:0];

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

  v6 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v7 = [v6 footerView];
  [v6 setPrimaryButton:0];
  [v6 setButtonsEnabled:1];
  [v7 setSetUpLaterButton:0];
  v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:a3];
  [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)self _reloadSections:0];
}

- (void)_nextButtonPressed
{
  v4 = [[PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer pass:self->_pass delegate:self->_delegate];
  v3 = [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)self navigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)entitlementSelectionDidChange
{
  v3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  v4 = [v3 count] != 0;

  v6 = [(PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController *)self navigationItem];
  v5 = [v6 rightBarButtonItem];
  [v5 setEnabled:v4];
}

@end