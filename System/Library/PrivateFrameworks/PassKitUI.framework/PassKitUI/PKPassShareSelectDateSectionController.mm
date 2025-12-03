@interface PKPassShareSelectDateSectionController
- (PKPassShareSelectDateSectionController)initWithDate:(id)date minimumDate:(id)minimumDate maximumDate:(id)maximumDate delegate:(id)delegate;
- (PKPassShareSelectDateSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)item;
- (id)decorateListCell:(id)cell forScheduleRowItem:(id)item;
- (void)_setDate:(id)date;
- (void)_setSelected:(id)selected;
- (void)decorateCalendarCell:(id)cell;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
@end

@implementation PKPassShareSelectDateSectionController

- (PKPassShareSelectDateSectionController)initWithDate:(id)date minimumDate:(id)minimumDate maximumDate:(id)maximumDate delegate:(id)delegate
{
  dateCopy = date;
  minimumDateCopy = minimumDate;
  maximumDateCopy = maximumDate;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PKPassShareSelectDateSectionController;
  v15 = [(PKPassShareSectionController *)&v18 initWithIdentifiers:&unk_1F3CC8420];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_date, date);
    objc_storeStrong(&v16->_minimumDate, minimumDate);
    objc_storeStrong(&v16->_maximumDate, maximumDate);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v16->_selected = v16->_date != 0;
    [(PKPassShareSelectDateSectionController *)v16 reloadItemsAnimated:0];
  }

  return v16;
}

- (void)reloadItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
  [WeakRetained reloadDataAnimated:animatedCopy];
}

- (void)_setDate:(id)date
{
  dateCopy = date;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_date, date);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didUpdateDate:self->_date];
  }
}

- (void)_setSelected:(id)selected
{
  identifier = [selected identifier];
  v7 = identifier;
  if (identifier == @"StartDateRow" || identifier && (v5 = [(__CFString *)identifier isEqualToString:@"StartDateRow"], v7, v5))
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

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  identifier = [itemCopy identifier];
  if (identifier == @"CalendarRow" || (v6 = identifier) != 0 && (v7 = [(__CFString *)identifier isEqualToString:@"CalendarRow"], v6, v6, v7))
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

- (void)didSelectItem:(id)item
{
  [(PKPassShareSelectDateSectionController *)self _setSelected:item];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];
}

- (void)decorateCalendarCell:(id)cell
{
  v4 = MEMORY[0x1E69DC888];
  cellCopy = cell;
  secondarySystemBackgroundColor = [v4 secondarySystemBackgroundColor];
  [cellCopy setBackgroundColor:secondarySystemBackgroundColor];

  [cellCopy setDate:self->_date];
  [cellCopy setMinimumDate:self->_minimumDate];
  [cellCopy setMaximumDate:self->_maximumDate];
}

- (id)decorateListCell:(id)cell forScheduleRowItem:(id)item
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  itemCopy = item;
  cellCopy = cell;
  subtitleCellConfiguration = [v5 subtitleCellConfiguration];
  title = [itemCopy title];
  [subtitleCellConfiguration setText:title];

  v10 = objc_alloc_init(MEMORY[0x1E69DC788]);
  [v10 setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
  isOn = [itemCopy isOn];

  if ((isOn & 1) == 0)
  {
    [v10 setHidden:1];
  }

  v14[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [cellCopy setAccessories:v12];

  [cellCopy setConfigurationUpdateHandler:&__block_literal_global_107];
  [cellCopy setContentConfiguration:subtitleCellConfiguration];

  return subtitleCellConfiguration;
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