@interface PKPerformActionSelectItemView
- (BOOL)_showsExpirationSection;
- (PKPerformActionSelectItemView)initWithPass:(id)pass action:(id)action paymentDataProvider:(id)provider;
- (PKPerformActionViewDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)transactionAmount;
- (id)transactionCurrency;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addSubviews;
- (void)fetchServiceProviderDataWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PKPerformActionSelectItemView

- (PKPerformActionSelectItemView)initWithPass:(id)pass action:(id)action paymentDataProvider:(id)provider
{
  passCopy = pass;
  actionCopy = action;
  v20.receiver = self;
  v20.super_class = PKPerformActionSelectItemView;
  v10 = [(PKPerformActionSelectItemView *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pass, pass);
    objc_storeStrong(&v11->_action, action);
    selectedActionItems = [actionCopy selectedActionItems];
    firstObject = [selectedActionItems firstObject];
    selectedItem = v11->_selectedItem;
    v11->_selectedItem = firstObject;

    _shouldReverseLayoutDirection = [(PKPerformActionSelectItemView *)v11 _shouldReverseLayoutDirection];
    v16 = 2;
    if (!_shouldReverseLayoutDirection)
    {
      v16 = 0;
    }

    v11->_textAlignment = v16;
    [(PKPerformActionSelectItemView *)v11 setClipsToBounds:0];
    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v11->_dateFormatter;
    v11->_dateFormatter = v17;

    [(NSDateFormatter *)v11->_dateFormatter setDateStyle:3];
    [(NSDateFormatter *)v11->_dateFormatter setTimeStyle:0];
    [(PKPerformActionSelectItemView *)v11 _addSubviews];
  }

  return v11;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPerformActionSelectItemView;
  [(PKPerformActionSelectItemView *)&v4 layoutSubviews];
  tableView = self->_tableView;
  [(PKPerformActionSelectItemView *)self bounds];
  [(UITableView *)tableView setFrame:?];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  [delegateCopy setRightBarButtonEnabled:self->_selectedItem != 0];
}

- (BOOL)_showsExpirationSection
{
  v19 = *MEMORY[0x1E69E9840];
  paymentPass = [(PKPass *)self->_pass paymentPass];
  if ([paymentPass isSuicaPass] && objc_msgSend(paymentPass, "transitCommutePlanType") == 1)
  {
    v4 = PKPaymentPassCommuteRouteIsValid() != 0;
  }

  else
  {
    associatedPlan = [(PKPaymentPassAction *)self->_action associatedPlan];
    if (([associatedPlan properties] & 3) == 1)
    {
      v6 = [associatedPlan passFieldForKey:@"expiryDate"];

      v4 = v6 != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selectedActionItems = [(PKPaymentPassAction *)self->_action selectedActionItems];
  v8 = [selectedActionItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selectedActionItems);
        }

        if (v4)
        {
          newExpirationDate = [*(*(&v14 + 1) + 8 * i) newExpirationDate];
          v4 = newExpirationDate != 0;
        }

        else
        {
          v4 = 0;
        }
      }

      v9 = [selectedActionItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    selectedActionItems = [(PKPaymentPassAction *)self->_action selectedActionItems];
    _showsExpirationSection = [selectedActionItems count];
  }

  else if (section)
  {
    _showsExpirationSection = 0;
  }

  else
  {
    _showsExpirationSection = [(PKPerformActionSelectItemView *)self _showsExpirationSection];
  }

  return _showsExpirationSection;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPerformActionSelectItemOptionsCellIdentifier"];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKPerformActionSelectItemOptionsCellIdentifier"];
    }

    selectedActionItems = [(PKPaymentPassAction *)self->_action selectedActionItems];
    associatedPlan = [selectedActionItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    amount = [(PKSelectedItemActionItem *)associatedPlan amount];
    currency = [(PKSelectedItemActionItem *)associatedPlan currency];
    v13 = PKFormattedCurrencyStringFromNumber();

    textLabel = [v8 textLabel];
    detailTextLabel = [v8 detailTextLabel];
    [textLabel setTextAlignment:self->_textAlignment];
    title = [(PKSelectedItemActionItem *)associatedPlan title];
    [textLabel setText:title];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel setTextColor:labelColor];

    [textLabel setLineBreakMode:4];
    [detailTextLabel setTextAlignment:self->_textAlignment];
    [detailTextLabel setText:v13];
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [detailTextLabel setFont:v18];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor];

    [v8 setSelectionStyle:3];
    if (associatedPlan == self->_selectedItem)
    {
      v20 = 3;
    }

    else
    {
      v20 = 0;
    }

    [v8 setAccessoryType:v20];
  }

  else
  {
    v35 = pathCopy;
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPerformActionSelectItemExpiresCellIdentifier"];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPerformActionSelectItemExpiresCellIdentifier"];
    }

    associatedPlan = [(PKPaymentPassAction *)self->_action associatedPlan];
    v34 = [(PKSelectedItemActionItem *)associatedPlan passFieldForKey:@"expiryDate"];
    -[NSDateFormatter setDateStyle:](self->_dateFormatter, "setDateStyle:", [v34 dateStyle]);
    textLabel = [v8 textLabel];
    detailTextLabel = [v8 detailTextLabel];
    dateFormatter = self->_dateFormatter;
    expiryDate = [(PKSelectedItemActionItem *)associatedPlan expiryDate];
    v23 = [(NSDateFormatter *)dateFormatter stringFromDate:expiryDate];
    [textLabel setText:v23];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [textLabel setTextColor:secondaryLabelColor2];

    v25 = *MEMORY[0x1E69DDCF8];
    v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [textLabel setFont:v26];

    [textLabel setTextAlignment:self->_textAlignment];
    v27 = self->_dateFormatter;
    newExpirationDate = [(PKSelectedItemActionItem *)self->_selectedItem newExpirationDate];
    v29 = [(NSDateFormatter *)v27 stringFromDate:newExpirationDate];
    [detailTextLabel setText:v29];

    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v25];
    [detailTextLabel setFont:v30];

    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor3];

    v13 = v34;
    [detailTextLabel setTextAlignment:self->_textAlignment];
    [v8 setSelectionStyle:0];
    [v8 setAccessoryType:0];
    pathCopy = v35;
  }

  v32 = PKProvisioningSecondaryBackgroundColor();
  [v8 setBackgroundColor:v32];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v6 = [(PKPerformActionSelectItemView *)self tableView:view numberOfRowsInSection:?];
  _optionsSectionHeaderText = 0;
  if (section == 1 && v6 >= 1)
  {
    _optionsSectionHeaderText = [(PKPerformActionSelectItemView *)self _optionsSectionHeaderText];
  }

  return _optionsSectionHeaderText;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v5 = 0;
  }

  else
  {
    if ([(PKPerformActionSelectItemView *)self _showsExpirationSection])
    {
      expiresHeader = self->_expiresHeader;
      if (!expiresHeader)
      {
        v9 = objc_alloc_init(PKPerformActionSelectItemExpiresHeader);
        v10 = self->_expiresHeader;
        self->_expiresHeader = v9;

        v11 = self->_expiresHeader;
        v12 = PKLocalizedPaymentString(&cfstr_PerformActionS.isa);
        [(PKPerformActionSelectItemExpiresHeader *)v11 setLeadingString:v12];

        v13 = self->_expiresHeader;
        v14 = PKLocalizedPaymentString(&cfstr_PerformActionS_0.isa);
        [(PKPerformActionSelectItemExpiresHeader *)v13 setTrailingString:v14];

        expiresHeader = self->_expiresHeader;
      }

      v5 = expiresHeader;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v6 = [(PKPerformActionSelectItemView *)self tableView:view numberOfRowsInSection:?];
  _optionsSectionFooterText = 0;
  if (section == 1 && v6 >= 1)
  {
    _optionsSectionFooterText = [(PKPerformActionSelectItemView *)self _optionsSectionFooterText];
  }

  return _optionsSectionFooterText;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v19[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy section])
  {
    v8 = self->_selectedItem;
    selectedActionItems = [(PKPaymentPassAction *)self->_action selectedActionItems];
    v10 = [selectedActionItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    if (v8 != v10)
    {
      objc_storeStrong(&self->_selectedItem, v10);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained setRightBarButtonEnabled:self->_selectedItem != 0];

      if ([(PKPerformActionSelectItemView *)self _showsExpirationSection])
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
        v19[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        [viewCopy reloadRowsAtIndexPaths:v13 withRowAnimation:5];
      }

      selectedActionItems2 = [(PKPaymentPassAction *)self->_action selectedActionItems];
      v15 = [selectedActionItems2 indexOfObject:v8];

      v16 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:{objc_msgSend(pathCopy, "section")}];
      v17 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v16];
      [v17 setAccessoryType:0];
      v18 = [(UITableView *)self->_tableView cellForRowAtIndexPath:pathCopy];
      [v18 setAccessoryType:3];
    }
  }
}

- (id)transactionAmount
{
  selectedItem = self->_selectedItem;
  if (selectedItem)
  {
    [(PKSelectedItemActionItem *)selectedItem amount];
  }

  else
  {
    [MEMORY[0x1E696AB90] zero];
  }
  v3 = ;

  return v3;
}

- (id)transactionCurrency
{
  selectedItem = self->_selectedItem;
  if (selectedItem)
  {
    selectedItem = [selectedItem currency];
    v2 = vars8;
  }

  return selectedItem;
}

- (void)fetchServiceProviderDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x1E69B88B0] passPropertiesForPass:self->_pass];
  balance = [v5 balance];
  selectedItem = self->_selectedItem;
  if (selectedItem)
  {
    secureElementPass = [(PKPass *)self->_pass secureElementPass];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PKPerformActionSelectItemView_fetchServiceProviderDataWithCompletion___block_invoke;
    v9[3] = &unk_1E8012A48;
    v10 = completionCopy;
    [(PKSelectedItemActionItem *)selectedItem serviceProviderDataWithPass:secureElementPass currentLocalBalance:balance completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_addSubviews
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setScrollEnabled:1];
  [(UITableView *)self->_tableView setAlwaysBounceVertical:1];
  v6 = self->_tableView;
  v7 = PKProvisioningBackgroundColor();
  [(UITableView *)v6 setBackgroundColor:v7];

  v8 = self->_tableView;

  [(PKPerformActionSelectItemView *)self addSubview:v8];
}

- (PKPerformActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end