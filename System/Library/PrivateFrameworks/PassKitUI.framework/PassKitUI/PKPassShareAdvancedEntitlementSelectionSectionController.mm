@interface PKPassShareAdvancedEntitlementSelectionSectionController
- (PKPassShareAdvancedEntitlementSelectionSectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer delegate:(id)delegate;
- (id)decorateListCell:(id)cell forRowItem:(id)item;
- (id)footerAttributedStringForIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
@end

@implementation PKPassShareAdvancedEntitlementSelectionSectionController

- (PKPassShareAdvancedEntitlementSelectionSectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer delegate:(id)delegate
{
  v24[1] = *MEMORY[0x1E69E9840];
  composerCopy = composer;
  delegateCopy = delegate;
  v24[0] = @"AdvancedEntitlementSelection";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v23.receiver = self;
  v23.super_class = PKPassShareAdvancedEntitlementSelectionSectionController;
  v12 = [(PKPassShareSectionController *)&v23 initWithIdentifiers:v11];

  if (v12)
  {
    v12->_mode = mode;
    objc_storeStrong(&v12->_entitlementComposer, composer);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_initWeak(&location, v12);
    v13 = MEMORY[0x1E69DC800];
    v14 = objc_opt_class();
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __102__PKPassShareAdvancedEntitlementSelectionSectionController_initWithMode_entitlementComposer_delegate___block_invoke;
    v20 = &unk_1E8012088;
    objc_copyWeak(&v21, &location);
    v15 = [v13 registrationWithCellClass:v14 configurationHandler:&v17];
    [(PKPaymentSetupListSectionController *)v12 setCellRegistration:v15, v17, v18, v19, v20];

    [(PKPassShareAdvancedEntitlementSelectionSectionController *)v12 reloadItemsAnimated:0];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __102__PKPassShareAdvancedEntitlementSelectionSectionController_initWithMode_entitlementComposer_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forRowItem:v6];
  }
}

- (void)reloadItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = @"AdvancedEntitlementSelection";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(PKPaymentSetupListSectionController *)self setIdentifiers:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"SelectAdvanced"];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape.2.fill" withConfiguration:0];
  [(PKSharePreviewRowItem *)v7 setIcon:v8];

  v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_3.isa);
  [(PKSharePreviewRowItem *)v7 setTitle:v9];

  [(PKSharePreviewRowItem *)v7 setDisplayChevron:1];
  [v6 addObject:v7];
  [(PKPaymentSetupListSectionController *)self setItems:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:animatedCopy];
}

- (id)decorateListCell:(id)cell forRowItem:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  title = [itemCopy title];
  [valueCellConfiguration setText:title];

  subtitle = [itemCopy subtitle];
  [valueCellConfiguration setSecondaryText:subtitle];

  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [valueCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  icon = [itemCopy icon];

  if (icon)
  {
    icon2 = [itemCopy icon];
    [valueCellConfiguration setImage:icon2];

    imageProperties = [valueCellConfiguration imageProperties];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [imageProperties setTintColor:systemBlueColor];
  }

  [cellCopy setContentConfiguration:valueCellConfiguration];
  [cellCopy setConfigurationUpdateHandler:&__block_literal_global_234];
  if ([itemCopy displayChevron] && (v16 = objc_alloc_init(MEMORY[0x1E69DC7A8])) != 0)
  {
    v17 = v16;
    v20[0] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [cellCopy setAccessories:v18];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }

  return valueCellConfiguration;
}

void __88__PKPassShareAdvancedEntitlementSelectionSectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (id)footerAttributedStringForIdentifier:(id)identifier
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_4.isa);
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10[0] = *MEMORY[0x1E69DB648];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
  v11[0] = v5;
  v10[1] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11[1] = secondaryLabelColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 initWithString:v3 attributes:v7];

  return v8;
}

- (void)didSelectItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapAdvancedEntitlementSelectionSectionController:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 deselectCells];
}

@end