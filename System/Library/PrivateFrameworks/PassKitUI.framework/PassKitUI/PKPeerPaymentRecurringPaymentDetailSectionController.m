@interface PKPeerPaymentRecurringPaymentDetailSectionController
- (BOOL)shouldHighlightItem:(id)a3;
- (PKPeerPaymentRecurringPaymentDetailSectionController)initWithRecurringPayment:(id)a3 productTimeZone:(id)a4 mode:(unint64_t)a5 delegate:(id)a6;
- (PKPeerPaymentRecurringPaymentDetailSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_decorateAmountListCell:(id)a3 forItem:(id)a4;
- (void)_decorateDateListCell:(id)a3 forItem:(id)a4;
- (void)_decorateDateSelectorListCell:(id)a3 forItem:(id)a4;
- (void)_handleFrequencyChanged:(unint64_t)a3;
- (void)_toggleShowStartDateSelector;
- (void)amountDidChange:(id)a3;
- (void)dateSelectorCollectionViewCell:(id)a3 didUpdateDate:(id)a4;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
- (void)setHideAmount:(BOOL)a3;
- (void)setIsEditable:(BOOL)a3;
- (void)setStatus:(unint64_t)a3;
- (void)setTitleColor:(id)a3;
- (void)updateWithRecurringPayment:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentDetailSectionController

- (PKPeerPaymentRecurringPaymentDetailSectionController)initWithRecurringPayment:(id)a3 productTimeZone:(id)a4 mode:(unint64_t)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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

    [(NSCalendar *)v14->_productCalendar setTimeZone:v11];
    v14->_mode = a5;
    objc_storeWeak(&v14->_delegate, v12);
    v18 = [MEMORY[0x1E69DC888] labelColor];
    titleColor = v14->_titleColor;
    v14->_titleColor = v18;

    [(PKPeerPaymentRecurringPaymentDetailSectionController *)v14 updateWithRecurringPayment:v10];
  }

  return v14;
}

- (void)reloadItemsAnimated:(BOOL)a3
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
        v11 = [MEMORY[0x1E695DF00] date];
        v12 = [MEMORY[0x1E695DEE8] currentCalendar];
        v13 = [v12 dateByAddingUnit:4 value:1 toDate:v11 options:0];

        if (self->_mode == 2)
        {
          v14 = [MEMORY[0x1E695DEE8] currentCalendar];
          v15 = [v14 dateByAddingUnit:16 value:1 toDate:v11 options:0];
        }

        else
        {
          v15 = v11;
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
  v20 = a3;
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

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_rowItems];

  return v5;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
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

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [(PKDynamicListSectionController *)self headerText];
  if (v8)
  {
  }

  else
  {
    v9 = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [v6 setHeaderMode:1];
LABEL_5:
  v10 = [(PKDynamicListSectionController *)self footerText];
  if (v10)
  {
  }

  else
  {
    v11 = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  [v6 setFooterMode:1];
LABEL_9:
  v12 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];

  return v12;
}

- (void)didSelectItem:(id)a3
{
  v4 = [a3 identifier];
  if (v4 == @"startDate" || (v5 = v4) != 0 && (v6 = [(__CFString *)v4 isEqualToString:@"startDate"], v5, v5, v6))
  {
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self _toggleShowStartDateSelector];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];
}

- (BOOL)shouldHighlightItem:(id)a3
{
  if (self->_isEditable)
  {
    v3 = [a3 identifier];
    v4 = v3;
    if (v3 == @"frequency")
    {
      LOBYTE(v5) = 0;
    }

    else if (v3)
    {
      v5 = [(__CFString *)v3 isEqualToString:@"frequency"]^ 1;
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

- (void)setIsEditable:(BOOL)a3
{
  if (self->_isEditable != a3)
  {
    self->_isEditable = a3;
    if (!a3)
    {
      self->_showStartDateSelector = 0;
    }

    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setStatus:(unint64_t)a3
{
  if (self->_status != a3)
  {
    self->_status = a3;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setHideAmount:(BOOL)a3
{
  if (self->_hideAmount != a3)
  {
    self->_hideAmount = a3;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setTitleColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_titleColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, a3);
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)updateWithRecurringPayment:(id)a3
{
  v15 = a3;
  v4 = [v15 amount];
  v5 = [v15 currency];
  v6 = PKCurrencyAmountMake();
  amount = self->_amount;
  self->_amount = v6;

  v8 = [v15 startDate];
  startDate = self->_startDate;
  self->_startDate = v8;

  self->_frequency = [v15 frequency];
  self->_status = [v15 status];
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

  v13 = [v15 upcomingPaymentDates];
  v14 = [v13 firstObject];

  if (v14)
  {
    objc_storeStrong(&self->_startDate, v14);
  }

  [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
}

- (void)_decorateAmountListCell:(id)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 title];
  [v7 setTitle:v8];

  v9 = [v6 currencyAmount];
  [v7 setCurrencyAmount:v9];

  [v7 setIsEditable:{objc_msgSend(v6, "isEditable")}];
  [v7 setDelegate:self];
  v10 = [v6 titleColor];

  [v7 setTitleColor:v10];
}

- (void)_decorateDateListCell:(id)a3 forItem:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v8 textProperties];
  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v10 setColor:v11];

  v12 = [v7 date];
  if ([v7 isEditable])
  {
    v23 = 0x401C000000000000;
    v24 = vdupq_n_s64(1uLL);
    v25 = vdupq_n_s64(2uLL);
    v13 = [[PKContinuousButton alloc] initWithConfiguration:&v23];
    v14 = v12;
    if (!v12)
    {
      v14 = [MEMORY[0x1E695DF00] date];
    }

    v15 = PKMediumDateString();
    [(PKContinuousButton *)v13 setTitle:v15 forState:0];

    if (v12)
    {
      if ([(NSCalendar *)self->_productCalendar isDateInToday:v12])
      {
        PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsStartDa_0.isa);
      }

      else
      {
        PKMediumDateString();
      }
      v16 = ;
      [(PKContinuousButton *)v13 setTitle:v16 forState:0];
    }

    else
    {

      v16 = [MEMORY[0x1E695DF00] date];
      v17 = PKMediumDateString();
      [(PKContinuousButton *)v13 setTitle:v17 forState:0];
    }

    if ([v7 isSelected])
    {
      [MEMORY[0x1E69DC888] linkColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v18 = ;
    [(PKContinuousButton *)v13 updateTitleColorWithColor:v18];

    v19 = [MEMORY[0x1E69DC740] pkui_createPlainButtonConfiguration];
    [v19 setContentInsets:{6.0, 12.0, 6.0, 12.0}];
    [v19 setTitleAlignment:2];
    [(PKContinuousButton *)v13 setConfiguration:v19];
    [(PKContinuousButton *)v13 addTarget:self action:sel__didTapDateButton_ forControlEvents:64];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v13 placement:1];
    v26[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v6 setAccessories:v21];
  }

  else if (v12)
  {
    if ([(NSCalendar *)self->_productCalendar isDateInToday:v12])
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsStartDa_0.isa);
    }

    else
    {
      PKMediumDateString();
    }
    v22 = ;
    [v8 setSecondaryText:v22];
    [v6 setAccessories:MEMORY[0x1E695E0F0]];
  }

  [v6 setContentConfiguration:v8];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9698]];
}

- (void)_decorateDateSelectorListCell:(id)a3 forItem:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 date];
  if (v7)
  {
    [v11 setDate:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v11 setDate:v8];
  }

  v9 = [v6 minimumDate];
  [v11 setMinimumDate:v9];

  v10 = [v6 maximumDate];

  [v11 setMaximumDate:v10];
  [v11 setDelegate:self];
  [v11 setContentAlignment:*MEMORY[0x1E69BB7F8]];
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

- (void)_handleFrequencyChanged:(unint64_t)a3
{
  if (self->_frequency != a3)
  {
    self->_frequency = a3;
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)amountDidChange:(id)a3
{
  v4 = a3;
  amount = self->_amount;
  v9 = v4;
  if (amount)
  {
    v6 = [(PKCurrencyAmount *)amount amount];
    v7 = [v6 pk_isEqualToDecimalNumber:v9];

    if (v7)
    {
      goto LABEL_5;
    }

    amount = self->_amount;
    v4 = v9;
  }

  [(PKCurrencyAmount *)amount setAmount:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained amountDidChange];

LABEL_5:
}

- (void)dateSelectorCollectionViewCell:(id)a3 didUpdateDate:(id)a4
{
  v6 = a4;
  if (self->_startDate != v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_startDate, a4);
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self reloadItemsAnimated:0];
    v6 = v7;
  }
}

- (PKPeerPaymentRecurringPaymentDetailSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end