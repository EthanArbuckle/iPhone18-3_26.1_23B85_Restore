@interface PKCombinedSelectActionViewControllerListSectionController
- (PKCombinedSelectActionViewControllerListSectionController)initWithIdentifier:(id)identifier pass:(id)pass actions:(id)actions;
- (PKCombinedSelectActionViewControllerListSectionControllerDelegate)delegate;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKCombinedSelectActionViewControllerListSectionController

- (PKCombinedSelectActionViewControllerListSectionController)initWithIdentifier:(id)identifier pass:(id)pass actions:(id)actions
{
  v36[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  passCopy = pass;
  actionsCopy = actions;
  v34.receiver = self;
  v34.super_class = PKCombinedSelectActionViewControllerListSectionController;
  v11 = [(PKCombinedSelectActionViewControllerListSectionController *)&v34 init];
  if (v11)
  {
    v27 = identifierCopy;
    v36[0] = identifierCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [(PKDynamicListSectionController *)v11 setIdentifiers:v12];

    [(PKDynamicListSectionController *)v11 setHeaderText:@" "];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = actionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[PKPaymentPassActionViewModel alloc] initWithAction:*(*(&v30 + 1) + 8 * i)];
          [v13 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    actionViewModels = v11->_actionViewModels;
    v11->_actionViewModels = v20;

    objc_storeStrong(&v11->_pass, pass);
    v22 = MEMORY[0x1E69DC800];
    v23 = objc_opt_class();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __93__PKCombinedSelectActionViewControllerListSectionController_initWithIdentifier_pass_actions___block_invoke;
    v28[3] = &unk_1E80210C0;
    v24 = v11;
    v29 = v24;
    v25 = [v22 registrationWithCellClass:v23 configurationHandler:v28];
    [(PKCombinedSelectActionViewControllerListSectionController *)v24 setCellRegistration:v25];

    identifierCopy = v27;
  }

  return v11;
}

void __93__PKCombinedSelectActionViewControllerListSectionController_initWithIdentifier_pass_actions___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v22 = [v6 action];
  v7 = [v22 associatedPlan];
  v8 = [v7 title];
  v9 = [v8 label];
  v23 = [v8 value];
  PKCommutePlanFormatTitleFromLabelAndValue();
  v10 = v9;

  v11 = v23;
  v12 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  [v12 setText:v10];
  [v12 setSecondaryText:v11];
  v13 = [v12 textProperties];
  v14 = [MEMORY[0x1E69DC888] labelColor];
  [v13 setColor:v14];

  v15 = [v12 secondaryTextProperties];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v15 setColor:v16];

  [v12 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [v5 setContentConfiguration:v12];
  v17 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v18 = PKProvisioningSecondaryBackgroundColor();
  [v17 setBackgroundColor:v18];

  [v5 setBackgroundConfiguration:v17];
  LODWORD(v18) = [v6 isInPreflight];

  if (v18)
  {
    v19 = +[PKCellAccessoryLoadingIndicator accessory];
    v25[0] = v19;
    v20 = v25;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v24 = v19;
    v20 = &v24;
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v5 setAccessories:v21];
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_actionViewModels];

  return v5;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  [itemCopy setIsInPreflight:1];
  delegate = [(PKCombinedSelectActionViewControllerListSectionController *)self delegate];
  [delegate reloadItem:itemCopy animated:1];
  action = [itemCopy action];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKCombinedSelectActionViewControllerListSectionController_didSelectItem___block_invoke;
  v9[3] = &unk_1E8010A10;
  v10 = itemCopy;
  v11 = delegate;
  v7 = delegate;
  v8 = itemCopy;
  [v7 didSelectAction:action completion:v9];
}

uint64_t __75__PKCombinedSelectActionViewControllerListSectionController_didSelectItem___block_invoke(uint64_t a1)
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
  defaultListLayout = [(PKCombinedSelectActionViewControllerListSectionController *)self defaultListLayout];
  [defaultListLayout setHeaderMode:1];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];

  [v7 contentInsets];
  [v7 setContentInsets:PKSetupViewConstantsListSectionInset(v8)];

  return v7;
}

- (PKCombinedSelectActionViewControllerListSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end