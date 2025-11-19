@interface PKPassShareSelectDateSectionController
- (PKPassShareSelectDateSectionController)initWithDate:(id)a3 minimumDate:(id)a4 maximumDate:(id)a5 delegate:(id)a6;
- (PKPassShareSelectDateSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)a3;
- (id)decorateListCell:(id)a3 forScheduleRowItem:(id)a4;
- (void)_setDate:(id)a3;
- (void)_setSelected:(id)a3;
- (void)decorateCalendarCell:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
@end

@implementation PKPassShareSelectDateSectionController

- (PKPassShareSelectDateSectionController)initWithDate:(id)a3 minimumDate:(id)a4 maximumDate:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PKPassShareSelectDateSectionController;
  v15 = [(PKPassShareSectionController *)&v18 initWithIdentifiers:&unk_1F3CC8420];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_date, a3);
    objc_storeStrong(&v16->_minimumDate, a4);
    objc_storeStrong(&v16->_maximumDate, a5);
    objc_storeWeak(&v16->_delegate, v14);
    v16->_selected = v16->_date != 0;
    [(PKPassShareSelectDateSectionController *)v16 reloadItemsAnimated:0];
  }

  return v16;
}

- (void)reloadItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  date = self->_date;
  v6 = [PKPassShareScheduleRowItem alloc];
  v7 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleD.isa);
  v8 = [(PKPassShareScheduleRowItem *)v6 initWithTitle:v7 icon:0];

  [(PKPassShareScheduleRowItem *)v8 setIdentifier:@"StartDateRow"];
  [(PKPassShareScheduleRowItem *)v8 setIsOn:date == 0];
  [v14 addObject:v8];
  v9 = [PKPassShareScheduleRowItem alloc];
  v10 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleO.isa);
  v11 = [(PKPassShareScheduleRowItem *)v9 initWithTitle:v10 icon:0];

  [(PKPassShareScheduleRowItem *)v11 setIdentifier:@"EndDateRow"];
  [(PKPassShareScheduleRowItem *)v11 setIsOn:date != 0];
  [v14 addObject:v11];
  if (date)
  {
    v12 = [[PKPassShareScheduleRowItem alloc] initWithTitle:0 icon:0];
    [(PKPassShareScheduleRowItem *)v12 setIdentifier:@"CalendarRow"];
    [v14 addObject:v12];
  }

  [(PKPaymentSetupListSectionController *)self setItems:v14];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:v3];
}

- (void)_setDate:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_date, a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didUpdateDate:self->_date];
  }
}

- (void)_setSelected:(id)a3
{
  v4 = [a3 identifier];
  v7 = v4;
  if (v4 == @"StartDateRow" || v4 && (v5 = [(__CFString *)v4 isEqualToString:@"StartDateRow"], v7, v5))
  {
    [(PKPassShareSelectDateSectionController *)self _setDate:0];
  }

  else if (PKEqualObjects() && !self->_date)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [(PKPassShareSelectDateSectionController *)self _setDate:v6];
  }

  [(PKPassShareSelectDateSectionController *)self reloadItemsAnimated:1];
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 identifier];
  if (v5 == @"CalendarRow" || (v6 = v5) != 0 && (v7 = [(__CFString *)v5 isEqualToString:@"CalendarRow"], v6, v6, v7))
  {
    v8 = MEMORY[0x1E69DC800];
    v9 = objc_opt_class();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__PKPassShareSelectDateSectionController_cellRegistrationForItem___block_invoke;
    v18[3] = &unk_1E8019728;
    v10 = &v19;
    objc_copyWeak(&v19, &location);
    v11 = [v8 registrationWithCellClass:v9 configurationHandler:v18];
  }

  else
  {
    v12 = MEMORY[0x1E69DC800];
    v13 = objc_opt_class();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__PKPassShareSelectDateSectionController_cellRegistrationForItem___block_invoke_2;
    v16[3] = &unk_1E8012088;
    v10 = &v17;
    objc_copyWeak(&v17, &location);
    v11 = [v12 registrationWithCellClass:v13 configurationHandler:v16];
  }

  v14 = v11;
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v14;
}

void __66__PKPassShareSelectDateSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v4 setDelegate:WeakRetained];
    [WeakRetained decorateCalendarCell:v4];
  }
}

void __66__PKPassShareSelectDateSectionController_cellRegistrationForItem___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forScheduleRowItem:v6];
  }
}

- (void)didSelectItem:(id)a3
{
  [(PKPassShareSelectDateSectionController *)self _setSelected:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];
}

- (void)decorateCalendarCell:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v6 = a3;
  v5 = [v4 secondarySystemBackgroundColor];
  [v6 setBackgroundColor:v5];

  [v6 setDate:self->_date];
  [v6 setMinimumDate:self->_minimumDate];
  [v6 setMaximumDate:self->_maximumDate];
}

- (id)decorateListCell:(id)a3 forScheduleRowItem:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  v6 = a4;
  v7 = a3;
  v8 = [v5 subtitleCellConfiguration];
  v9 = [v6 title];
  [v8 setText:v9];

  v10 = objc_alloc_init(MEMORY[0x1E69DC788]);
  [v10 setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
  v11 = [v6 isOn];

  if ((v11 & 1) == 0)
  {
    [v10 setHidden:1];
  }

  v14[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v7 setAccessories:v12];

  [v7 setConfigurationUpdateHandler:&__block_literal_global_107];
  [v7 setContentConfiguration:v8];

  return v8;
}

void __78__PKPassShareSelectDateSectionController_decorateListCell_forScheduleRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (PKPassShareSelectDateSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end