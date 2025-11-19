@interface PKPassEntitlementTimeSectionController
- (PKPassEntitlementTimeSectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 delegate:(id)a5;
- (id)_summaryForTimeConfiguration:(id)a3 isUsingAdvancedSchedules:(BOOL)a4;
- (id)decorateListCell:(id)a3 forRowItem:(id)a4;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
@end

@implementation PKPassEntitlementTimeSectionController

- (PKPassEntitlementTimeSectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 delegate:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v24[0] = @"EntitlementTimeSectionController";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v23.receiver = self;
  v23.super_class = PKPassEntitlementTimeSectionController;
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
    v19 = __84__PKPassEntitlementTimeSectionController_initWithMode_entitlementComposer_delegate___block_invoke;
    v20 = &unk_1E8012088;
    objc_copyWeak(&v21, &location);
    v15 = [v13 registrationWithCellClass:v14 configurationHandler:&v17];
    [(PKPaymentSetupListSectionController *)v12 setCellRegistration:v15, v17, v18, v19, v20];

    [(PKPassEntitlementTimeSectionController *)v12 reloadItemsAnimated:0];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __84__PKPassEntitlementTimeSectionController_initWithMode_entitlementComposer_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  v6 = [v5 timeConfiguration];
  v7 = [v5 isManagingTimeConfiguration] ^ 1;
  if (v6 && ![v6 isEmpty])
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(PKPassEntitlementsComposer *)self->_entitlementComposer editable];
  v10 = [v5 possibleTimeConfiguration];

  if ((v8 & 1) != 0 || ((v10 != 0) & v9) != 0)
  {
    v19[0] = @"EntitlementTimeSectionController";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [(PKPaymentSetupListSectionController *)self setIdentifiers:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"CalendarRow"];
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar" withConfiguration:0];
    [(PKSharePreviewRowItem *)v14 setIcon:v15];

    v16 = PKLocalizedShareableCredentialString(&cfstr_ShareSchedules.isa);
    [(PKSharePreviewRowItem *)v14 setTitle:v16];

    v17 = [(PKPassEntitlementTimeSectionController *)self _summaryForTimeConfiguration:v6 isUsingAdvancedSchedules:v7];
    [(PKSharePreviewRowItem *)v14 setSubtitle:v17];
    [(PKSharePreviewRowItem *)v14 setDisplayChevron:1];
    [v13 addObject:v14];
    [(PKPaymentSetupListSectionController *)self setItems:v13];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:v3];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
    [(PKPaymentSetupListSectionController *)self setItems:MEMORY[0x1E695E0F0]];
    [(PKPaymentSetupListSectionController *)self setIdentifiers:v11];
  }
}

- (id)_summaryForTimeConfiguration:(id)a3 isUsingAdvancedSchedules:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = @"SHARE_SCHEDULES_LIMIT_ADVANCED";
  }

  else if (v5 && ![v5 isEmpty])
  {
    v7 = @"SHARE_SCHEDULES_LIMIT_RESTRICTED";
  }

  else
  {
    v7 = @"SHARE_SCHEDULES_LIMIT_NONE";
  }

  v8 = PKLocalizedShareableCredentialString(&v7->isa);

  return v8;
}

- (id)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v7 subtitle];
  [v8 setSecondaryText:v10];

  v11 = [v8 secondaryTextProperties];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v11 setColor:v12];

  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  v13 = [v7 icon];

  if (v13)
  {
    v14 = [v7 icon];
    [v8 setImage:v14];

    v15 = [v8 imageProperties];
    v16 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v15 setTintColor:v16];
  }

  [v6 setContentConfiguration:v8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__PKPassEntitlementTimeSectionController_decorateListCell_forRowItem___block_invoke;
  v21[3] = &unk_1E8012AC8;
  v21[4] = self;
  [v6 setConfigurationUpdateHandler:v21];
  if ([v7 displayChevron] && (v17 = objc_alloc_init(MEMORY[0x1E69DC7A8])) != 0)
  {
    v18 = v17;
    v22[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v6 setAccessories:v19];
  }

  else
  {
    [v6 setAccessories:MEMORY[0x1E695E0F0]];
  }

  return v8;
}

void __70__PKPassEntitlementTimeSectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x1E69DC6E8];
  v6 = a2;
  v7 = [v5 listCellConfiguration];
  if (*(*(a1 + 32) + 72) == 2)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }
  v8 = ;
  if ([v10 isHighlighted] & 1) != 0 || (objc_msgSend(v10, "isSelected"))
  {
    v9 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v7 setBackgroundColor:v9];
  }

  else
  {
    [v7 setBackgroundColor:v8];
  }

  [v6 setBackgroundConfiguration:v7];
}

- (void)didSelectItem:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapPassEntitlementTimeSectionController:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 deselectCells];
}

@end