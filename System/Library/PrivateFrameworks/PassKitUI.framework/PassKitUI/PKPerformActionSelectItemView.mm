@interface PKPerformActionSelectItemView
- (BOOL)_showsExpirationSection;
- (PKPerformActionSelectItemView)initWithPass:(id)a3 action:(id)a4 paymentDataProvider:(id)a5;
- (PKPerformActionViewDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)transactionAmount;
- (id)transactionCurrency;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addSubviews;
- (void)fetchServiceProviderDataWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PKPerformActionSelectItemView

- (PKPerformActionSelectItemView)initWithPass:(id)a3 action:(id)a4 paymentDataProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = PKPerformActionSelectItemView;
  v10 = [(PKPerformActionSelectItemView *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pass, a3);
    objc_storeStrong(&v11->_action, a4);
    v12 = [v9 selectedActionItems];
    v13 = [v12 firstObject];
    selectedItem = v11->_selectedItem;
    v11->_selectedItem = v13;

    v15 = [(PKPerformActionSelectItemView *)v11 _shouldReverseLayoutDirection];
    v16 = 2;
    if (!v15)
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

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_delegate, v5);
  [v5 setRightBarButtonEnabled:self->_selectedItem != 0];
}

- (BOOL)_showsExpirationSection
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKPass *)self->_pass paymentPass];
  if ([v3 isSuicaPass] && objc_msgSend(v3, "transitCommutePlanType") == 1)
  {
    v4 = PKPaymentPassCommuteRouteIsValid() != 0;
  }

  else
  {
    v5 = [(PKPaymentPassAction *)self->_action associatedPlan];
    if (([v5 properties] & 3) == 1)
    {
      v6 = [v5 passFieldForKey:@"expiryDate"];

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
  v7 = [(PKPaymentPassAction *)self->_action selectedActionItems];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if (v4)
        {
          v12 = [*(*(&v14 + 1) + 8 * i) newExpirationDate];
          v4 = v12 != 0;
        }

        else
        {
          v4 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = [(PKPaymentPassAction *)self->_action selectedActionItems];
    v7 = [v8 count];
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(PKPerformActionSelectItemView *)self _showsExpirationSection];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = [v7 dequeueReusableCellWithIdentifier:@"PKPerformActionSelectItemOptionsCellIdentifier"];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKPerformActionSelectItemOptionsCellIdentifier"];
    }

    v9 = [(PKPaymentPassAction *)self->_action selectedActionItems];
    v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

    v11 = [(PKSelectedItemActionItem *)v10 amount];
    v12 = [(PKSelectedItemActionItem *)v10 currency];
    v13 = PKFormattedCurrencyStringFromNumber();

    v14 = [v8 textLabel];
    v15 = [v8 detailTextLabel];
    [v14 setTextAlignment:self->_textAlignment];
    v16 = [(PKSelectedItemActionItem *)v10 title];
    [v14 setText:v16];

    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v14 setTextColor:v17];

    [v14 setLineBreakMode:4];
    [v15 setTextAlignment:self->_textAlignment];
    [v15 setText:v13];
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v15 setFont:v18];

    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v15 setTextColor:v19];

    [v8 setSelectionStyle:3];
    if (v10 == self->_selectedItem)
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
    v35 = v6;
    v8 = [v7 dequeueReusableCellWithIdentifier:@"PKPerformActionSelectItemExpiresCellIdentifier"];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPerformActionSelectItemExpiresCellIdentifier"];
    }

    v10 = [(PKPaymentPassAction *)self->_action associatedPlan];
    v34 = [(PKSelectedItemActionItem *)v10 passFieldForKey:@"expiryDate"];
    -[NSDateFormatter setDateStyle:](self->_dateFormatter, "setDateStyle:", [v34 dateStyle]);
    v14 = [v8 textLabel];
    v15 = [v8 detailTextLabel];
    dateFormatter = self->_dateFormatter;
    v22 = [(PKSelectedItemActionItem *)v10 expiryDate];
    v23 = [(NSDateFormatter *)dateFormatter stringFromDate:v22];
    [v14 setText:v23];

    v24 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTextColor:v24];

    v25 = *MEMORY[0x1E69DDCF8];
    v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v14 setFont:v26];

    [v14 setTextAlignment:self->_textAlignment];
    v27 = self->_dateFormatter;
    v28 = [(PKSelectedItemActionItem *)self->_selectedItem newExpirationDate];
    v29 = [(NSDateFormatter *)v27 stringFromDate:v28];
    [v15 setText:v29];

    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v25];
    [v15 setFont:v30];

    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v15 setTextColor:v31];

    v13 = v34;
    [v15 setTextAlignment:self->_textAlignment];
    [v8 setSelectionStyle:0];
    [v8 setAccessoryType:0];
    v6 = v35;
  }

  v32 = PKProvisioningSecondaryBackgroundColor();
  [v8 setBackgroundColor:v32];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(PKPerformActionSelectItemView *)self tableView:a3 numberOfRowsInSection:?];
  v7 = 0;
  if (a4 == 1 && v6 >= 1)
  {
    v7 = [(PKPerformActionSelectItemView *)self _optionsSectionHeaderText];
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(PKPerformActionSelectItemView *)self tableView:a3 numberOfRowsInSection:?];
  v7 = 0;
  if (a4 == 1 && v6 >= 1)
  {
    v7 = [(PKPerformActionSelectItemView *)self _optionsSectionFooterText];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  if ([v7 section])
  {
    v8 = self->_selectedItem;
    v9 = [(PKPaymentPassAction *)self->_action selectedActionItems];
    v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

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
        [v6 reloadRowsAtIndexPaths:v13 withRowAnimation:5];
      }

      v14 = [(PKPaymentPassAction *)self->_action selectedActionItems];
      v15 = [v14 indexOfObject:v8];

      v16 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:{objc_msgSend(v7, "section")}];
      v17 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v16];
      [v17 setAccessoryType:0];
      v18 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v7];
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

- (void)fetchServiceProviderDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B88B0] passPropertiesForPass:self->_pass];
  v6 = [v5 balance];
  selectedItem = self->_selectedItem;
  if (selectedItem)
  {
    v8 = [(PKPass *)self->_pass secureElementPass];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PKPerformActionSelectItemView_fetchServiceProviderDataWithCompletion___block_invoke;
    v9[3] = &unk_1E8012A48;
    v10 = v4;
    [(PKSelectedItemActionItem *)selectedItem serviceProviderDataWithPass:v8 currentLocalBalance:v6 completion:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
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