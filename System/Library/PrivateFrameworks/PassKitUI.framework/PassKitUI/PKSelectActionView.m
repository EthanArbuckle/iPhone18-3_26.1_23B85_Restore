@interface PKSelectActionView
- (PKSelectActionView)initWithPass:(id)a3 actions:(id)a4 actionType:(unint64_t)a5 balanceDictionary:(id)a6;
- (PKSelectActionViewDelegate)delegate;
- (id)_balanceForTopUpAction:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addSubviews;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PKSelectActionView

- (PKSelectActionView)initWithPass:(id)a3 actions:(id)a4 actionType:(unint64_t)a5 balanceDictionary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = PKSelectActionView;
  v14 = [(PKSelectActionView *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, a3);
    selectedAction = v15->_selectedAction;
    v15->_selectedAction = 0;

    v15->_actionType = a5;
    objc_storeStrong(&v15->_balances, a6);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __72__PKSelectActionView_initWithPass_actions_actionType_balanceDictionary___block_invoke;
    v26[3] = &__block_descriptor_40_e36_B32__0__PKPaymentPassAction_8Q16_B24l;
    v26[4] = a5;
    v17 = [v12 pk_objectsPassingTest:v26];
    actions = v15->_actions;
    v15->_actions = v17;

    v19 = PKLocalizedPaymentString(&cfstr_MultipleBalanc.isa);
    v20 = PKLocalizedPaymentString(&cfstr_MultipleBalanc_0.isa);
    if (v15->_actionType == 2)
    {
      v21 = PKPassLocalizedStringWithFormat();

      v22 = PKPassLocalizedStringWithFormat();

      v19 = v21;
      v20 = v22;
    }

    v23 = [[PKSelectActionHeader alloc] initWithTitle:v19 subtitle:v20];
    actionHeader = v15->_actionHeader;
    v15->_actionHeader = v23;

    [(PKSelectActionView *)v15 _addSubviews];
  }

  return v15;
}

- (id)_balanceForTopUpAction:(id)a3
{
  v4 = a3;
  if ([v4 type] != 1)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v5 = [v4 associatedEnteredValueIdentifier];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v5, 0}];
    v7 = [(NSDictionary *)self->_balances objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 relevantPropertyIdentifier];
  v9 = v8;
  if (v7 || !v8)
  {
    if (v5 || v7 || v8)
    {
      goto LABEL_14;
    }

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = [v11 initWithObjects:{*MEMORY[0x1E69BC060], 0}];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
  }

  v12 = v10;
  v7 = [(NSDictionary *)self->_balances objectForKeyedSubscript:v10];

LABEL_14:
LABEL_15:

  return v7;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKSelectActionView;
  [(PKSelectActionView *)&v4 layoutSubviews];
  tableView = self->_tableView;
  [(PKSelectActionView *)self bounds];
  [(UITableView *)tableView setFrame:?];
}

- (void)setDelegate:(id)a3
{
  v8 = a3;
  v4 = objc_storeWeak(&self->_delegate, v8);
  [v8 setRightBarButtonEnabled:self->_selectedAction != 0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (self->_selectedAction)
  {
    [WeakRetained selectActionViewDidSelectAction:?];
  }

  else
  {
    v7 = [(NSArray *)self->_actions objectAtIndexedSubscript:?];
    [v6 selectActionViewDidSelectAction:v7];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKSelectActionCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKSelectActionCellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_actions, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [(PKPaymentPassAction *)v8 title];
  v10 = [(PKPaymentPassAction *)v8 actionDescription];
  actionType = self->_actionType;
  if (actionType == 1)
  {
    v17 = [(PKSelectActionView *)self _balanceForTopUpAction:v8];
    v13 = v17;
    if (v17)
    {
      v18 = [v17 localizedTitle];

      v19 = [v13 formattedValue];

      v10 = v19;
      v9 = v18;
    }
  }

  else
  {
    if (actionType != 2)
    {
      goto LABEL_9;
    }

    v12 = [(PKPaymentPassAction *)v8 associatedPlan];
    v13 = [v12 title];

    v14 = [v13 label];

    v15 = [v13 value];

    PKCommutePlanFieldEitherLabelOrValueIsEmpty();
    v16 = [(PKPass *)self->_pass paymentPass];
    v31 = v15;
    PKCommutePlanFormatTitleFromLabelAndValue();
    v9 = v14;

    v10 = v15;
  }

LABEL_9:
  v20 = [v7 textLabel];
  [v20 setText:v9];
  v21 = [MEMORY[0x1E69DC888] labelColor];
  [v20 setTextColor:v21];

  v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v20 setFont:v22];

  v23 = [v7 detailTextLabel];
  [v23 setText:v10];
  v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v23 setFont:v24];

  v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v23 setTextColor:v25];

  [v7 setSelectionStyle:0];
  selectedAction = self->_selectedAction;
  if (selectedAction != v8 || selectedAction == 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = 3;
  }

  [v7 setAccessoryType:v28];
  v29 = PKProvisioningSecondaryBackgroundColor();
  [v7 setBackgroundColor:v29];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = self->_selectedAction;
  v9 = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [v7 row]);
  if (v8 != v9)
  {
    objc_storeStrong(&self->_selectedAction, v9);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setRightBarButtonEnabled:self->_selectedAction != 0];

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 selectActionViewDidSelectAction:self->_selectedAction];
    }

    v14 = [(NSArray *)self->_actions indexOfObject:v8];
    v15 = [MEMORY[0x1E696AC88] indexPathForRow:v14 inSection:{objc_msgSend(v7, "section")}];
    v17[0] = v15;
    v17[1] = v7;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v6 reloadRowsAtIndexPaths:v16 withRowAnimation:5];
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

  [(PKSelectActionView *)self addSubview:v8];
}

- (PKSelectActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end