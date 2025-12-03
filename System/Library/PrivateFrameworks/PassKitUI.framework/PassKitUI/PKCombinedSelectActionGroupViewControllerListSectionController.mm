@interface PKCombinedSelectActionGroupViewControllerListSectionController
- (PKCombinedSelectActionGroupViewControllerListSectionController)initWithIdentifier:(id)identifier pass:(id)pass actionGroups:(id)groups;
- (PKCombinedSelectActionGroupViewControllerListSectionControllerDelegate)delegate;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKCombinedSelectActionGroupViewControllerListSectionController

- (PKCombinedSelectActionGroupViewControllerListSectionController)initWithIdentifier:(id)identifier pass:(id)pass actionGroups:(id)groups
{
  v36[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  passCopy = pass;
  groupsCopy = groups;
  v34.receiver = self;
  v34.super_class = PKCombinedSelectActionGroupViewControllerListSectionController;
  v11 = [(PKCombinedSelectActionGroupViewControllerListSectionController *)&v34 init];
  if (v11)
  {
    v27 = passCopy;
    v36[0] = identifierCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [(PKDynamicListSectionController *)v11 setIdentifiers:v12];

    [(PKDynamicListSectionController *)v11 setHeaderText:@" "];
    objc_storeStrong(&v11->_pass, pass);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = groupsCopy;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[PKPaymentPassActionGroupViewModel alloc] initWithActionGroup:*(*(&v30 + 1) + 8 * v18)];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    actionGroupViewModels = v11->_actionGroupViewModels;
    v11->_actionGroupViewModels = v20;

    v22 = MEMORY[0x1E69DC800];
    v23 = objc_opt_class();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __103__PKCombinedSelectActionGroupViewControllerListSectionController_initWithIdentifier_pass_actionGroups___block_invoke;
    v28[3] = &unk_1E801A0A8;
    v24 = v11;
    v29 = v24;
    v25 = [v22 registrationWithCellClass:v23 configurationHandler:v28];
    [(PKCombinedSelectActionGroupViewControllerListSectionController *)v24 setCellRegistration:v25];

    passCopy = v27;
  }

  return v11;
}

void __103__PKCombinedSelectActionGroupViewControllerListSectionController_initWithIdentifier_pass_actionGroups___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E69DCC28];
  v7 = a4;
  v8 = [v6 subtitleCellConfiguration];
  v9 = [v7 actionGroup];
  v10 = [v9 title];
  v22 = [v9 actionGroupDescription];
  PKCommutePlanFormatTitleFromLabelAndValue();
  v11 = v10;

  v12 = v22;
  [v8 setText:v11];
  [v8 setSecondaryText:v12];
  v13 = [v8 textProperties];
  v14 = [MEMORY[0x1E69DC888] labelColor];
  [v13 setColor:v14];

  v15 = [v8 secondaryTextProperties];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v15 setColor:v16];

  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [v5 setContentConfiguration:v8];
  v17 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v18 = PKProvisioningSecondaryBackgroundColor();
  [v17 setBackgroundColor:v18];

  [v5 setBackgroundConfiguration:v17];
  LODWORD(v18) = [v7 isInPreflight];

  if (v18)
  {
    v19 = +[PKCellAccessoryLoadingIndicator accessory];
    v24[0] = v19;
    v20 = v24;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v23 = v19;
    v20 = &v23;
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v5 setAccessories:v21];
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_actionGroupViewModels];

  return v5;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  [itemCopy setIsInPreflight:1];
  delegate = [(PKCombinedSelectActionGroupViewControllerListSectionController *)self delegate];
  [delegate reloadItem:itemCopy animated:1];
  actionGroup = [itemCopy actionGroup];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKCombinedSelectActionGroupViewControllerListSectionController_didSelectItem___block_invoke;
  v9[3] = &unk_1E8010A10;
  v10 = itemCopy;
  v11 = delegate;
  v7 = delegate;
  v8 = itemCopy;
  [v7 didSelectActionGroup:actionGroup completion:v9];
}

uint64_t __80__PKCombinedSelectActionGroupViewControllerListSectionController_didSelectItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsInPreflight:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 reloadItem:v3 animated:1];
}

- (id)defaultListLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = PKProvisioningBackgroundColor();
  [v2 setBackgroundColor:v3];

  return v2;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  defaultListLayout = [(PKCombinedSelectActionGroupViewControllerListSectionController *)self defaultListLayout];
  [defaultListLayout setHeaderMode:1];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];

  [v7 contentInsets];
  [v7 setContentInsets:PKSetupViewConstantsListSectionInset(v8)];

  return v7;
}

- (PKCombinedSelectActionGroupViewControllerListSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end