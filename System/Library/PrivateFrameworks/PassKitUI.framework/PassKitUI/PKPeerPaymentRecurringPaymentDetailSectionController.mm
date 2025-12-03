@interface PKPeerPaymentRecurringPaymentDetailSectionController
- (BOOL)shouldHighlightItem:(id)item;
- (PKPeerPaymentRecurringPaymentDetailSectionController)initWithRecurringPayment:(id)payment productTimeZone:(id)zone mode:(unint64_t)mode delegate:(id)delegate;
- (PKPeerPaymentRecurringPaymentDetailSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_decorateAmountListCell:(id)cell forItem:(id)item;
- (void)_decorateDateListCell:(id)cell forItem:(id)item;
- (void)_decorateDateSelectorListCell:(id)cell forItem:(id)item;
- (void)_handleFrequencyChanged:(unint64_t)changed;
- (void)_toggleShowStartDateSelector;
- (void)amountDidChange:(id)change;
- (void)dateSelectorCollectionViewCell:(id)cell didUpdateDate:(id)date;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
- (void)setHideAmount:(BOOL)amount;
- (void)setIsEditable:(BOOL)editable;
- (void)setStatus:(unint64_t)status;
- (void)setTitleColor:(id)color;
- (void)updateWithRecurringPayment:(id)payment;
@end

@implementation PKPeerPaymentRecurringPaymentDetailSectionController

- (PKPeerPaymentRecurringPaymentDetailSectionController)initWithRecurringPayment:(id)payment productTimeZone:(id)zone mode:(unint64_t)mode delegate:(id)delegate
{
  paymentCopy = payment;
  zoneCopy = zone;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentRecurringPaymentDetailSectionController;
  v13 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    v13->_showStartDateSelector = 0;
    v15 = objc_alloc(MEMORY[0x1E695DEE8]);
    v16 = [v15 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    productCalendar = v14->_productCalendar;
    v14->_productCalendar = v16;

    [(NSCalendar *)v14->_productCalendar setTimeZone:zoneCopy];
    v14->_mode = mode;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleColor = v14->_titleColor;
    v14->_titleColor = labelColor;

    [(PKPeerPaymentRecurringPaymentDetailSectionController *)v14 updateWithRecurringPayment:paymentCopy];
  }

  return v14;
}

- (void)reloadItemsAnimated:(BOOL)animated
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!self->_hideAmount)
  {
    v6 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentAmountDetailRowItem alloc] initWithIdentifier:@"amount" isEditable:self->_isEditable titleColor:self->_titleColor];
    v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsAmount.isa);
    [(PKPeerPaymentRecurringPaymentAmountDetailRowItem *)v6 setTitle:v7];

    [(PKPeerPaymentRecurringPaymentAmountDetailRowItem *)v6 setCurrencyAmount:self->_amount];
    [(PKPeerPaymentRecurringPaymentDetailRowItem *)v6 setAxID:*MEMORY[0x1E69B9448]];
    [v5 addObject:v6];
  }

  mode = self->_mode;
  if (mode == 1 || mode == 2 && (self->_status | 2) == 3)
  {
    v9 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentDateDetailRowItem alloc] initWithIdentifier:@"startDate" isEditable:self->_isEditable titleColor:self->_titleColor];
    [(PKPeerPaymentRecurringPaymentDateDetailRowItem *)v9 setTitle:self->_startDateTitle];
    [(PKPeerPaymentRecurringPaymentDateDetailRowItem *)v9 setDate:self->_startDate];
    [(PKPeerPaymentRecurringPaymentDateDetailRowItem *)v9 setIsSelected:self->_showStartDateSelector];
    [(PKPeerPaymentRecurringPaymentDetailRowItem *)v9 setAxID:*MEMORY[0x1E69B9CA0]];
    [v5 addObject:v9];
    if (self->_showStartDateSelector)
    {
      v10 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem alloc] initWithIdentifier:@"startDateSelector" isEditable:self->_isEditable titleColor:self->_titleColor];
      [(PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem *)v10 setDate:self->_startDate];
      if ((PKPeerPaymentDisableRecurringDateRestrictions() & 1) == 0)
      {
        date = [MEMORY[0x1E695DF00] date];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v13 = [currentCalendar dateByAddingUnit:4 value:1 toDate:date options:0];

        if (self->_mode == 2)
        {
          currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
          v15 = [currentCalendar2 dateByAddingUnit:16 value:1 toDate:date options:0];
        }

        else
        {
          v15 = date;
        }

        [(PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem *)v10 setMinimumDate:v15];
        [(PKPeerPaymentRecurringPaymentDateSelectorDetailRowItem *)v10 setMaximumDate:v13];
      }

      [(PKPeerPaymentRecurringPaymentDetailRowItem *)v10 setAxID:*MEMORY[0x1E69B9698]];
      [v5 addObject:v10];
    }
  }

  v16 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentFrequencyDetailRowItem alloc] initWithIdentifier:@"frequency" isEditable:self->_isEditable titleColor:self->_titleColor];
  [(PKPeerPaymentRecurringPaymentFrequencyDetailRowItem *)v16 setFrequency:self->_frequency];
  [(PKPeerPaymentRecurringPaymentFrequencyDetailRowItem *)v16 setDate:self->_startDate];
  [(PKPeerPaymentRecurringPaymentDetailRowItem *)v16 setAxID:*MEMORY[0x1E69B9828]];
  [v5 addObject:v16];
  v17 = [v5 copy];
  rowItems = self->_rowItems;
  self->_rowItems = v17;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__PKPeerPaymentRecurringPaymentDetailSectionController_reloadItemsAnimated___block_invoke;
  v19[3] = &unk_1E8013F80;
  v19[4] = self;
  animatedCopy = animated;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

void __76__PKPeerPaymentRecurringPaymentDetailSectionController_reloadItemsAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained updateFooterForSectionIdentifier:@"detail"];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 152));
  [v3 reloadDataAnimated:*(a1 + 40)];
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"detail";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_rowItems];

  return v5;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69DC800];
    v6 = objc_opt_class();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke;
    v23[3] = &unk_1E801F690;
    v7 = &v24;
    objc_copyWeak(&v24, &location);
    v8 = [v5 registrationWithCellClass:v6 configurationHandler:v23];
LABEL_9:
    v15 = v8;
    objc_destroyWeak(v7);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E69DC800];
    v10 = objc_opt_class();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_2;
    v21[3] = &unk_1E801F6B8;
    v7 = &v22;
    objc_copyWeak(&v22, &location);
    v8 = [v9 registrationWithCellClass:v10 configurationHandler:v21];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x1E69DC800];
    v12 = objc_opt_class();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_3;
    v19[3] = &unk_1E801F6E0;
    v7 = &v20;
    objc_copyWeak(&v20, &location);
    v8 = [v11 registrationWithCellClass:v12 configurationHandler:v19];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = MEMORY[0x1E69DC800];
    v14 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_4;
    v17[3] = &unk_1E801F708;
    v7 = &v18;
    objc_copyWeak(&v18, &location);
    v17[4] = self;
    v8 = [v13 registrationWithCellClass:v14 configurationHandler:v17];
    goto LABEL_9;
  }

  v15 = 0;
LABEL_10:
  objc_destroyWeak(&location);

  return v15;
}

void __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decorateAmountListCell:v7 forItem:v6];
}

void __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decorateDateListCell:v7 forItem:v6];
}

void __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decorateDateSelectorListCell:v7 forItem:v6];
}

void __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = [v9 date];

    if (v11)
    {
      v16 = WeakRetained[15];
      v12 = [v9 frequency];
      v13 = [v9 date];
      v14 = [v9 isEditable];
      v15 = *(*(a1 + 32) + 160);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_5;
      v17[3] = &unk_1E801F530;
      objc_copyWeak(&v18, (a1 + 40));
      [v7 configureWithOptions:v16 selectedFrequency:v12 selectedDate:v13 isEditable:v14 titleColor:v15 changeHandler:v17];

      objc_destroyWeak(&v18);
    }
  }
}

void __80__PKPeerPaymentRecurringPaymentDetailSectionController_cellRegistrationForItem___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = PKPeerPaymentRecurringPaymentFrequencyFromString();

  [WeakRetained _handleFrequencyChanged:v4];
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  headerText = [(PKDynamicListSectionController *)self headerText];
  if (headerText)
  {
  }

  else
  {
    attributedHeaderText = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!attributedHeaderText)
    {
      goto LABEL_5;
    }
  }

  [v6 setHeaderMode:1];
LABEL_5:
  footerText = [(PKDynamicListSectionController *)self footerText];
  if (footerText)
  {
  }

  else
  {
    attributedFooterText = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!attributedFooterText)
    {
      goto LABEL_9;
    }
  }

  [v6 setFooterMode:1];
LABEL_9:
  v12 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:environmentCopy];

  return v12;
}

- (void)didSelectItem:(id)item
{
  identifier = [item identifier];
  if (identifier == @"startDate" || (v5 = identifier) != 0 && (v6 = [(__CFString *)identifier isEqualToString:@"startDate"], v5, v5, v6))
  {
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self _toggleShowStartDateSelector];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];
}

- (BOOL)shouldHighlightItem:(id)item
{
  if (self->_isEditable)
  {
    identifier = [item identifier];
    v4 = identifier;
    if (identifier == @"frequency")
    {
      LOBYTE(v5) = 0;
    }

    else if (identifier)
    {
      v5 = [(__CFString *)identifier isEqualToString:@"frequency"]^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setIsEditable:(BOOL)editable
{
  if (self->_isEditable != editable)
  {
    self->_isEditable = editable;
    if (!editable)
    {
      self->_showStartDateSelector = 0;
    }

    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setStatus:(unint64_t)status
{
  if (self->_status != status)
  {
    self->_status = status;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setHideAmount:(BOOL)amount
{
  if (self->_hideAmount != amount)
  {
    self->_hideAmount = amount;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_titleColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, color);
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)updateWithRecurringPayment:(id)payment
{
  paymentCopy = payment;
  amount = [paymentCopy amount];
  currency = [paymentCopy currency];
  v6 = PKCurrencyAmountMake();
  amount = self->_amount;
  self->_amount = v6;

  startDate = [paymentCopy startDate];
  startDate = self->_startDate;
  self->_startDate = startDate;

  self->_frequency = [paymentCopy frequency];
  self->_status = [paymentCopy status];
  if (self->_mode == 2)
  {
    v10 = @"DETAILS_NEXT_PAYMENT";
  }

  else
  {
    v10 = @"DETAILS_START_DATE";
  }

  v11 = PKLocalizedPeerPaymentRecurringString(&v10->isa);
  startDateTitle = self->_startDateTitle;
  self->_startDateTitle = v11;

  upcomingPaymentDates = [paymentCopy upcomingPaymentDates];
  firstObject = [upcomingPaymentDates firstObject];

  if (firstObject)
  {
    objc_storeStrong(&self->_startDate, firstObject);
  }

  [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
}

- (void)_decorateAmountListCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  title = [itemCopy title];
  [cellCopy setTitle:title];

  currencyAmount = [itemCopy currencyAmount];
  [cellCopy setCurrencyAmount:currencyAmount];

  [cellCopy setIsEditable:{objc_msgSend(itemCopy, "isEditable")}];
  [cellCopy setDelegate:self];
  titleColor = [itemCopy titleColor];

  [cellCopy setTitleColor:titleColor];
}

- (void)_decorateDateListCell:(id)cell forItem:(id)item
{
  v26[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  title = [itemCopy title];
  [valueCellConfiguration setText:title];

  textProperties = [valueCellConfiguration textProperties];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textProperties setColor:labelColor];

  date = [itemCopy date];
  if ([itemCopy isEditable])
  {
    v23 = 0x401C000000000000;
    v24 = vdupq_n_s64(1uLL);
    v25 = vdupq_n_s64(2uLL);
    v13 = [[PKContinuousButton alloc] initWithConfiguration:&v23];
    date2 = date;
    if (!date)
    {
      date2 = [MEMORY[0x1E695DF00] date];
    }

    v15 = PKMediumDateString();
    [(PKContinuousButton *)v13 setTitle:v15 forState:0];

    if (date)
    {
      if ([(NSCalendar *)self->_productCalendar isDateInToday:date])
      {
        PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsStartDa_0.isa);
      }

      else
      {
        PKMediumDateString();
      }
      date3 = ;
      [(PKContinuousButton *)v13 setTitle:date3 forState:0];
    }

    else
    {

      date3 = [MEMORY[0x1E695DF00] date];
      v17 = PKMediumDateString();
      [(PKContinuousButton *)v13 setTitle:v17 forState:0];
    }

    if ([itemCopy isSelected])
    {
      [MEMORY[0x1E69DC888] linkColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v18 = ;
    [(PKContinuousButton *)v13 updateTitleColorWithColor:v18];

    pkui_createPlainButtonConfiguration = [MEMORY[0x1E69DC740] pkui_createPlainButtonConfiguration];
    [pkui_createPlainButtonConfiguration setContentInsets:{6.0, 12.0, 6.0, 12.0}];
    [pkui_createPlainButtonConfiguration setTitleAlignment:2];
    [(PKContinuousButton *)v13 setConfiguration:pkui_createPlainButtonConfiguration];
    [(PKContinuousButton *)v13 addTarget:self action:sel__didTapDateButton_ forControlEvents:64];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v13 placement:1];
    v26[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [cellCopy setAccessories:v21];
  }

  else if (date)
  {
    if ([(NSCalendar *)self->_productCalendar isDateInToday:date])
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsStartDa_0.isa);
    }

    else
    {
      PKMediumDateString();
    }
    v22 = ;
    [valueCellConfiguration setSecondaryText:v22];
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }

  [cellCopy setContentConfiguration:valueCellConfiguration];
  [cellCopy setAccessibilityIdentifier:*MEMORY[0x1E69B9698]];
}

- (void)_decorateDateSelectorListCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  date = [itemCopy date];
  if (date)
  {
    [cellCopy setDate:date];
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [cellCopy setDate:date2];
  }

  minimumDate = [itemCopy minimumDate];
  [cellCopy setMinimumDate:minimumDate];

  maximumDate = [itemCopy maximumDate];

  [cellCopy setMaximumDate:maximumDate];
  [cellCopy setDelegate:self];
  [cellCopy setContentAlignment:*MEMORY[0x1E69BB7F8]];
}

- (void)_toggleShowStartDateSelector
{
  if (self->_isEditable)
  {
    block[7] = v2;
    block[8] = v3;
    self->_showStartDateSelector ^= 1u;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
    if (self->_showStartDateSelector)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__PKPeerPaymentRecurringPaymentDetailSectionController__toggleShowStartDateSelector__block_invoke;
      block[3] = &unk_1E8010970;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __84__PKPeerPaymentRecurringPaymentDetailSectionController__toggleShowStartDateSelector__block_invoke(uint64_t a1)
{
  v3 = [[PKPeerPaymentRecurringPaymentDetailRowItem alloc] initWithIdentifier:@"startDateSelector" isEditable:*(*(a1 + 32) + 104) titleColor:*(*(a1 + 32) + 160)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained makeCellFirstResponderWithItem:v3];
}

- (void)_handleFrequencyChanged:(unint64_t)changed
{
  if (self->_frequency != changed)
  {
    self->_frequency = changed;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)amountDidChange:(id)change
{
  changeCopy = change;
  amount = self->_amount;
  v9 = changeCopy;
  if (amount)
  {
    amount = [(PKCurrencyAmount *)amount amount];
    v7 = [amount pk_isEqualToDecimalNumber:v9];

    if (v7)
    {
      goto LABEL_5;
    }

    amount = self->_amount;
    changeCopy = v9;
  }

  [(PKCurrencyAmount *)amount setAmount:changeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained amountDidChange];

LABEL_5:
}

- (void)dateSelectorCollectionViewCell:(id)cell didUpdateDate:(id)date
{
  dateCopy = date;
  if (self->_startDate != dateCopy)
  {
    v7 = dateCopy;
    objc_storeStrong(&self->_startDate, date);
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:0];
    dateCopy = v7;
  }
}

- (PKPeerPaymentRecurringPaymentDetailSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end