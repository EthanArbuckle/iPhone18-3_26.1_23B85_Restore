@interface PKPassEntitlementTimeSectionController
- (PKPassEntitlementTimeSectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer delegate:(id)delegate;
- (id)_summaryForTimeConfiguration:(id)configuration isUsingAdvancedSchedules:(BOOL)schedules;
- (id)decorateListCell:(id)cell forRowItem:(id)item;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
@end

@implementation PKPassEntitlementTimeSectionController

- (PKPassEntitlementTimeSectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer delegate:(id)delegate
{
  v24[1] = *MEMORY[0x1E69E9840];
  composerCopy = composer;
  delegateCopy = delegate;
  v24[0] = @"EntitlementTimeSectionController";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v23.receiver = self;
  v23.super_class = PKPassEntitlementTimeSectionController;
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

- (void)reloadItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v19[1] = *MEMORY[0x1E69E9840];
  globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  timeConfiguration = [globalView timeConfiguration];
  v7 = [globalView isManagingTimeConfiguration] ^ 1;
  if (timeConfiguration && ![timeConfiguration isEmpty])
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  editable = [(PKPassEntitlementsComposer *)self->_entitlementComposer editable];
  possibleTimeConfiguration = [globalView possibleTimeConfiguration];

  if ((v8 & 1) != 0 || ((possibleTimeConfiguration != 0) & editable) != 0)
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

    v17 = [(PKPassEntitlementTimeSectionController *)self _summaryForTimeConfiguration:timeConfiguration isUsingAdvancedSchedules:v7];
    [(PKSharePreviewRowItem *)v14 setSubtitle:v17];
    [(PKSharePreviewRowItem *)v14 setDisplayChevron:1];
    [v13 addObject:v14];
    [(PKPaymentSetupListSectionController *)self setItems:v13];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:animatedCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
    [(PKPaymentSetupListSectionController *)self setItems:MEMORY[0x1E695E0F0]];
    [(PKPaymentSetupListSectionController *)self setIdentifiers:v11];
  }
}

- (id)_summaryForTimeConfiguration:(id)configuration isUsingAdvancedSchedules:(BOOL)schedules
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (schedules)
  {
    v7 = @"SHARE_SCHEDULES_LIMIT_ADVANCED";
  }

  else if (configurationCopy && ![configurationCopy isEmpty])
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

- (id)decorateListCell:(id)cell forRowItem:(id)item
{
  v22[1] = *MEMORY[0x1E69E9840];
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
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__PKPassEntitlementTimeSectionController_decorateListCell_forRowItem___block_invoke;
  v21[3] = &unk_1E8012AC8;
  v21[4] = self;
  [cellCopy setConfigurationUpdateHandler:v21];
  if ([itemCopy displayChevron] && (v17 = objc_alloc_init(MEMORY[0x1E69DC7A8])) != 0)
  {
    v18 = v17;
    v22[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [cellCopy setAccessories:v19];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }

  return valueCellConfiguration;
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

- (void)didSelectItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapPassEntitlementTimeSectionController:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 deselectCells];
}

@end