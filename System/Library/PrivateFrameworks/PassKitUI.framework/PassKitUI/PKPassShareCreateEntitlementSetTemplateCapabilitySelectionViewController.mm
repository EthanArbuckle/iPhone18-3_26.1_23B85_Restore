@interface PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController
- (PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer pass:(id)pass delegate:(id)delegate;
- (void)_nextButtonPressed;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController

- (PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer pass:(id)pass delegate:(id)delegate
{
  v26[1] = *MEMORY[0x1E69E9840];
  composerCopy = composer;
  passCopy = pass;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v25 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = mode;
    objc_storeStrong(&v14->_entitlementComposer, composer);
    objc_storeStrong(&v15->_pass, pass);
    objc_storeStrong(&v15->_delegate, delegate);
    viewForEnabledEntitlements = [(PKPassEntitlementsComposer *)v15->_entitlementComposer viewForEnabledEntitlements];
    [viewForEnabledEntitlements setIsManagingEntitlementConfiguration:1];
    [viewForEnabledEntitlements setShareability:0];
    [viewForEnabledEntitlements setVisibility:1];
    [viewForEnabledEntitlements setManageability:1];
    [viewForEnabledEntitlements setIntraAccountSharingEnabled:{objc_msgSend(viewForEnabledEntitlements, "possibleIntraAccountSharing")}];
    [viewForEnabledEntitlements setEnabled:1];
    v17 = [[PKPassEntitlementCapabilitySectionController alloc] initWithMode:v15->_mode entitlementComposer:v15->_entitlementComposer composerView:viewForEnabledEntitlements isDisabled:0 delegate:v15];
    capabilitySectionController = v15->_capabilitySectionController;
    v15->_capabilitySectionController = v17;

    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    [(PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController *)v15 setModalPresentationStyle:6];
    v26[0] = v15->_capabilitySectionController;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(PKPaymentSetupOptionsViewController *)v15 setSections:v19 animated:0];

    navigationItem = [(PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController *)v15 navigationItem];
    v21 = objc_alloc(MEMORY[0x1E69DC708]);
    v22 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v23 = [v21 initWithTitle:v22 style:0 target:v15 action:sel__nextButtonPressed];

    [navigationItem setRightBarButtonItem:v23];
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

  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setTitleAccessoriesEnabled:0];

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
  v4.super_class = PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:appear];
  [(PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController *)self _reloadSections:0];
}

- (void)_nextButtonPressed
{
  composeSharedEntitlements = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  firstObject = [composeSharedEntitlements firstObject];
  entitlementIdentifier = [firstObject entitlementIdentifier];

  entitlementEntries = [(PKPassEntitlementsComposer *)self->_entitlementComposer entitlementEntries];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKPassShareCreateEntitlementSetTemplateCapabilitySelectionViewController__nextButtonPressed__block_invoke;
  v13[3] = &unk_1E8021098;
  v14 = entitlementIdentifier;
  v7 = entitlementIdentifier;
  v8 = [entitlementEntries pk_firstObjectPassingTest:v13];

  v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_2.isa);
  displayableEntitlement = [v8 displayableEntitlement];
  localizedTitle = [displayableEntitlement localizedTitle];

  v12 = [objc_alloc(MEMORY[0x1E69B9090]) initWithTitle:v9 preshareDescription:localizedTitle postshareDescription:localizedTitle sharedEntitlements:composeSharedEntitlements];
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