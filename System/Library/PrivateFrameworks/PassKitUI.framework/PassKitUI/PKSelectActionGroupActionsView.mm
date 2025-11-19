@interface PKSelectActionGroupActionsView
- (PKSelectActionGroupActionsView)initWithPass:(id)a3 actionGroup:(id)a4;
- (PKSelectActionGroupActionsViewDelegate)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addSubviews;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PKSelectActionGroupActionsView

- (PKSelectActionGroupActionsView)initWithPass:(id)a3 actionGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PKSelectActionGroupActionsView;
  v9 = [(PKSelectActionGroupActionsView *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, a3);
    selectedAction = v10->_selectedAction;
    v10->_selectedAction = 0;

    objc_storeStrong(&v10->_actionGroup, a4);
    v12 = [v8 actions];
    actions = v10->_actions;
    v10->_actions = v12;

    v14 = [PKSelectActionGroupActionsHeader alloc];
    v15 = PKLocalizedPaymentString(&cfstr_ActionGroupCho.isa);
    v16 = PKLocalizedPaymentString(&cfstr_ActionGroupCho_0.isa);
    v17 = [(PKSelectActionGroupActionsHeader *)v14 initWithPass:v7 title:v15 subtitle:v16];
    actionGroupActionsHeader = v10->_actionGroupActionsHeader;
    v10->_actionGroupActionsHeader = v17;

    [(PKSelectActionGroupActionsView *)v10 _addSubviews];
  }

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKSelectActionGroupActionsView;
  [(PKSelectActionGroupActionsView *)&v4 layoutSubviews];
  tableView = self->_tableView;
  [(PKSelectActionGroupActionsView *)self bounds];
  [(UITableView *)tableView setFrame:?];
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_delegate, v5);
  [v5 setRightBarButtonEnabled:self->_selectedAction != 0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKSelectActionGroupActionCellIdentifier"];
  if (!v7)
  {
    v7 = [[PKCommutePlanDetailsTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"PKSelectActionGroupActionCellIdentifier"];
  }

  v8 = v7;
  v9 = -[NSArray objectAtIndexedSubscript:](self->_actions, "objectAtIndexedSubscript:", [v6 row]);
  v10 = [(PKPaymentPassAction *)v9 title];
  v18 = [(PKPaymentPassAction *)v9 actionDescription];
  PKCommutePlanFormatTitleFromLabelAndValue();
  v11 = v10;

  v12 = v18;
  [(PKCommutePlanDetailsTableViewCell *)v8 setPrimaryText:v11];
  [(PKCommutePlanDetailsTableViewCell *)v8 setSecondaryText:v12];
  [(PKCommutePlanDetailsTableViewCell *)v8 setSelectionStyle:0];
  selectedAction = self->_selectedAction;

  if (selectedAction != v9 || selectedAction == 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  [(PKCommutePlanDetailsTableViewCell *)v8 setAccessoryType:v15, v18];
  v16 = PKProvisioningSecondaryBackgroundColor();
  [(PKCommutePlanDetailsTableViewCell *)v8 setBackgroundColor:v16];

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if ([(PKSelectActionGroupActionsHeader *)self->_actionGroupActionsHeader isLoading:a3])
  {
    [(PKSelectActionGroupActionsView *)self bounds];
    return v5;
  }

  else
  {
    actionGroupActionsHeader = self->_actionGroupActionsHeader;
    [(PKSelectActionGroupActionsView *)self bounds];
    [(PKSelectActionGroupActionsHeader *)actionGroupActionsHeader sizeThatFits:v8, 1.79769313e308];
    return v9;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_selectedAction;
  v9 = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [v7 row]);
  if (v8 != v9)
  {
    objc_storeStrong(&self->_selectedAction, v9);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setRightBarButtonEnabled:self->_selectedAction != 0];

    if (v8)
    {
      v11 = [(NSArray *)self->_actions indexOfObject:v8];
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:{objc_msgSend(v7, "section")}];
      v17[0] = v12;
      v17[1] = v7;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [v6 reloadRowsAtIndexPaths:v13 withRowAnimation:5];
    }

    else
    {
      v18[0] = v7;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v6 reloadRowsAtIndexPaths:v12 withRowAnimation:5];
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 selectActionGroupActionsViewDidSelectActionGroupAction:self->_selectedAction];
    }
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

  [(PKSelectActionGroupActionsView *)self addSubview:v8];
}

- (PKSelectActionGroupActionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end