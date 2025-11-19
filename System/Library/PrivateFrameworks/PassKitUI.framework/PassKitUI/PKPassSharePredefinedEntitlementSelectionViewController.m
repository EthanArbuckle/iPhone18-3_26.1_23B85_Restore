@interface PKPassSharePredefinedEntitlementSelectionViewController
- (PKPassSharePredefinedEntitlementSelectionViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 pass:(id)a5;
- (void)_createAdvancedEntitlementSelection;
- (void)createPredefinedSelectionViewController:(id)a3 didCreatePredefinedSelection:(id)a4;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassSharePredefinedEntitlementSelectionViewController

- (PKPassSharePredefinedEntitlementSelectionViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 pass:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PKPassSharePredefinedEntitlementSelectionViewController;
  v11 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:0];
  v12 = v11;
  if (v11)
  {
    v11->_mode = a3;
    objc_storeStrong(&v11->_entitlementComposer, a4);
    objc_storeStrong(&v12->_pass, a5);
    v13 = [[PKPassSharePredefinedEntitlementSectionController alloc] initWithMode:a3 entitlementComposer:v12->_entitlementComposer delegate:v12];
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
  v3 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v3 setTitleAccessoriesEnabled:0];

  v4 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_3.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

  v5 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_0.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v5];

  v6 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v7 = [v6 footerView];
  [v6 setPrimaryButton:0];
  [v6 setButtonsEnabled:1];
  [v7 setSetUpLaterButton:0];
  if (PKSharingAllowAdvancedCapabilitySelection())
  {
    v8 = [v7 secondaryActionButton];
    v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_1.isa);
    [v8 setTitle:v9 forState:0];

    [v8 addTarget:self action:sel__createAdvancedEntitlementSelection forControlEvents:0x2000];
    [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
  }

  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassSharePredefinedEntitlementSelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:a3];
  [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
}

- (void)_createAdvancedEntitlementSelection
{
  v4 = [[PKPassShareCreateEntitlementSetTemplateEntitlementSelectionViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer pass:self->_pass delegate:self];
  v3 = [(PKPassSharePredefinedEntitlementSelectionViewController *)self navigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)createPredefinedSelectionViewController:(id)a3 didCreatePredefinedSelection:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Creating custom predefined selection: %@", &v18, 0xCu);
  }

  v7 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [v7 setEnabled:0];

  v8 = [(PKPassEntitlementsComposer *)self->_entitlementComposer addPredefinedSharedEntitlementSelection:v5];
  v9 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewForPredefined:v8];
  [v9 setEnabled:1];

  [(PKDynamicCollectionViewController *)self reloadDataAnimated:0];
  v10 = [(PKPassSharePredefinedEntitlementSelectionViewController *)self navigationController];
  v11 = [v10 viewControllers];
  v12 = [v11 indexOfObject:self];

  v13 = v12 - 1;
  v14 = [v10 viewControllers];
  v15 = [v14 objectAtIndexedSubscript:v13];

  v16 = [(PKPassSharePredefinedEntitlementSelectionViewController *)self navigationController];
  v17 = [v16 popToViewController:v15 animated:1];
}

@end