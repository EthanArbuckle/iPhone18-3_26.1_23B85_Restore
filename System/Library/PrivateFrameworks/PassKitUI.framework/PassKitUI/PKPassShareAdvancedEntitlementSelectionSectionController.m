@interface PKPassShareAdvancedEntitlementSelectionSectionController
- (PKPassShareAdvancedEntitlementSelectionSectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 delegate:(id)a5;
- (id)decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)footerAttributedStringForIdentifier:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
@end

@implementation PKPassShareAdvancedEntitlementSelectionSectionController

- (PKPassShareAdvancedEntitlementSelectionSectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 delegate:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v24[0] = @"AdvancedEntitlementSelection";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v23.receiver = self;
  v23.super_class = PKPassShareAdvancedEntitlementSelectionSectionController;
  v12 = [(PKPassShareSectionController *)&v23 initWithIdentifiers:v11];

  if (v12)
  {
    v12->_mode = a3;
    objc_storeStrong(&v12->_entitlementComposer, a4);
    objc_storeWeak(&v12->_delegate, v10);
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

- (void)reloadItemsAnimated:(BOOL)a3
{
  v3 = a3;
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
  [WeakRetained reloadDataAnimated:v3];
}

- (id)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v8 = [v6 title];
  [v7 setText:v8];

  v9 = [v6 subtitle];
  [v7 setSecondaryText:v9];

  v10 = [v7 secondaryTextProperties];
  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v10 setColor:v11];

  [v7 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  v12 = [v6 icon];

  if (v12)
  {
    v13 = [v6 icon];
    [v7 setImage:v13];

    v14 = [v7 imageProperties];
    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v14 setTintColor:v15];
  }

  [v5 setContentConfiguration:v7];
  [v5 setConfigurationUpdateHandler:&__block_literal_global_234];
  if ([v6 displayChevron] && (v16 = objc_alloc_init(MEMORY[0x1E69DC7A8])) != 0)
  {
    v17 = v16;
    v20[0] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v5 setAccessories:v18];
  }

  else
  {
    [v5 setAccessories:MEMORY[0x1E695E0F0]];
  }

  return v7;
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

- (id)footerAttributedStringForIdentifier:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP_4.isa);
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10[0] = *MEMORY[0x1E69DB648];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
  v11[0] = v5;
  v10[1] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 initWithString:v3 attributes:v7];

  return v8;
}

- (void)didSelectItem:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapAdvancedEntitlementSelectionSectionController:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 deselectCells];
}

@end