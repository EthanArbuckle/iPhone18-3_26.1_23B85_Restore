@interface PKPassSharePredefinedEntitlementSelectionViewController
- (PKPassSharePredefinedEntitlementSelectionViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer pass:(id)pass;
- (void)_createAdvancedEntitlementSelection;
- (void)createPredefinedSelectionViewController:(id)controller didCreatePredefinedSelection:(id)selection;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassSharePredefinedEntitlementSelectionViewController

- (PKPassSharePredefinedEntitlementSelectionViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer pass:(id)pass
{
  v18[1] = *MEMORY[0x1E69E9840];
  composerCopy = composer;
  passCopy = pass;
  v17.receiver = self;
  v17.super_class = PKPassSharePredefinedEntitlementSelectionViewController;
  v11 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:0];
  v12 = v11;
  if (v11)
  {
    v11->_mode = mode;
    objc_storeStrong(&v11->_entitlementComposer, composer);
    objc_storeStrong(&v12->_pass, pass);
    v13 = [[PKPassSharePredefinedEntitlementSectionController alloc] initWithMode:mode entitlementComposer:v12->_entitlementComposer delegate:v12];
    predefinedSelectionSectionController = v12->_predefinedSelectionSectionController;
    v12->_predefinedSelectionSectionController = v13;

    [(PKDynamicCollectionViewController *)v12 setUseItemIdentityWhenUpdating:1];
    [(PKPassSharePredefinedEntitlementSelectionViewController *)v12 setModalPresentationStyle:6];
    v18[0] = v12->_predefinedSelectionSectionController;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(PKPaymentSetupOptionsViewController *)v12 setSections:v15 animated:0];
  }

  return v12;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = PKPassSharePredefinedEntitlementSelectionViewController;
  [(PKDynamicCollectionViewController *)&v11 loadView];
  [(PKPaymentSetupOptionsViewController *)self setHeaderMode:0];
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setTitleAccessoriesEnabled:0];

  v4 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_3.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

  v5 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_0.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];

  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  footerView = [dockView footerView];
  [dockView setPrimaryButton:0];
  [dockView setButtonsEnabled:1];
  [footerView setSetUpLaterButton:0];
  if (PKSharingAllowAdvancedCapabilitySelection())
  {
    secondaryActionButton = [footerView secondaryActionButton];
    v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_1.isa);
    [secondaryActionButton setTitle:v9 forState:0];

    [secondaryActionButton addTarget:self action:sel__createAdvancedEntitlementSelection forControlEvents:0x2000];
    [secondaryActionButton setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:systemBackgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPassSharePredefinedEntitlementSelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:appear];
  [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
}

- (void)_createAdvancedEntitlementSelection
{
  v4 = [[PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer pass:self->_pass delegate:self];
  navigationController = [(PKPassSharePredefinedEntitlementSelectionViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)createPredefinedSelectionViewController:(id)controller didCreatePredefinedSelection:(id)selection
{
  v20 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = selectionCopy;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Creating custom predefined selection: %@", &v18, 0xCu);
  }

  globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [globalView setEnabled:0];

  v8 = [(PKPassEntitlementsComposer *)self->_entitlementComposer addPredefinedSharedEntitlementSelection:selectionCopy];
  v9 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewForPredefined:v8];
  [v9 setEnabled:1];

  [(PKDynamicCollectionViewController *)self reloadDataAnimated:0];
  navigationController = [(PKPassSharePredefinedEntitlementSelectionViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v12 = [viewControllers indexOfObject:self];

  v13 = v12 - 1;
  viewControllers2 = [navigationController viewControllers];
  v15 = [viewControllers2 objectAtIndexedSubscript:v13];

  navigationController2 = [(PKPassSharePredefinedEntitlementSelectionViewController *)self navigationController];
  v17 = [navigationController2 popToViewController:v15 animated:1];
}

@end