@interface PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController
- (PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 pass:(id)a5 delegate:(id)a6;
- (void)_nextButtonPressed;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController

- (PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 pass:(id)a5 delegate:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v25 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = a3;
    objc_storeStrong(&v14->_entitlementComposer, a4);
    objc_storeStrong(&v15->_pass, a5);
    objc_storeStrong(&v15->_delegate, a6);
    v16 = [(PKPassEntitlementsComposer *)v15->_entitlementComposer viewForEnabledEntitlements];
    [v16 setIsManagingEntitlementConfiguration:1];
    [v16 setShareability:0];
    [v16 setVisibility:1];
    [v16 setManageability:1];
    [v16 setIntraAccountSharingEnabled:{objc_msgSend(v16, "possibleIntraAccountSharing")}];
    [v16 setEnabled:1];
    v17 = [[PKPassEntitlementCapabilitySectionController alloc] initWithMode:v15->_mode entitlementComposer:v15->_entitlementComposer composerView:v16 isDisabled:0 delegate:v15];
    capabilitySectionController = v15->_capabilitySectionController;
    v15->_capabilitySectionController = v17;

    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    [(PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController *)v15 setModalPresentationStyle:6];
    v26[0] = v15->_capabilitySectionController;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(PKPaymentSetupOptionsViewController *)v15 setSections:v19 animated:0];

    v20 = [(PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController *)v15 navigationItem];
    v21 = objc_alloc(MEMORY[0x1E69DC708]);
    v22 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v23 = [v21 initWithTitle:v22 style:0 target:v15 action:sel__nextButtonPressed];

    [v20 setRightBarButtonItem:v23];
  }

  return v15;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController;
  [(PKDynamicCollectionViewController *)&v9 loadView];
  [(PKPaymentSetupOptionsViewController *)self setHeaderMode:0];
  v3 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_2.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];

  v4 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_3.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v4];

  v5 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v5 setTitleAccessoriesEnabled:0];

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
  v4.super_class = PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:a3];
  [(PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController *)self _reloadSections:0];
}

- (void)_nextButtonPressed
{
  v3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  v4 = [v3 firstObject];
  v5 = [v4 entitlementIdentifier];

  v6 = [(PKPassEntitlementsComposer *)self->_entitlementComposer entitlementEntries];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController__nextButtonPressed__block_invoke;
  v13[3] = &unk_1E8021098;
  v14 = v5;
  v7 = v5;
  v8 = [v6 pk_firstObjectPassingTest:v13];

  v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_2.isa);
  v10 = [v8 displayableEntitlement];
  v11 = [v10 localizedTitle];

  v12 = [objc_alloc(MEMORY[0x1E69B9090]) initWithTitle:v9 preshareDescription:v11 postshareDescription:v11 sharedEntitlements:v3];
  [(PKPassShareCreateEntitlementSetTemplateDelegate *)self->_delegate createPredefinedSelectionViewController:self didCreatePredefinedSelection:v12];
}

uint64_t __94__PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController__nextButtonPressed__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayableEntitlement];
  v4 = [v3 entitlementIdentifier];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  return v9;
}

@end