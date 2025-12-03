@interface PKSelectActionView
- (PKSelectActionView)initWithPass:(id)pass actions:(id)actions actionType:(unint64_t)type balanceDictionary:(id)dictionary;
- (PKSelectActionViewDelegate)delegate;
- (id)_balanceForTopUpAction:(id)action;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addSubviews;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PKSelectActionView

- (PKSelectActionView)initWithPass:(id)pass actions:(id)actions actionType:(unint64_t)type balanceDictionary:(id)dictionary
{
  passCopy = pass;
  actionsCopy = actions;
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = PKSelectActionView;
  v14 = [(PKSelectActionView *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, pass);
    selectedAction = v15->_selectedAction;
    v15->_selectedAction = 0;

    v15->_actionType = type;
    objc_storeStrong(&v15->_balances, dictionary);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __72__PKSelectActionView_initWithPass_actions_actionType_balanceDictionary___block_invoke;
    v26[3] = &__block_descriptor_40_e36_B32__0__PKPaymentPassAction_8Q16_B24l;
    v26[4] = type;
    v17 = [actionsCopy pk_objectsPassingTest:v26];
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

- (id)_balanceForTopUpAction:(id)action
{
  actionCopy = action;
  if ([actionCopy type] != 1)
  {
    v7 = 0;
    goto LABEL_15;
  }

  associatedEnteredValueIdentifier = [actionCopy associatedEnteredValueIdentifier];
  if (associatedEnteredValueIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{associatedEnteredValueIdentifier, 0}];
    v7 = [(NSDictionary *)self->_balances objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  relevantPropertyIdentifier = [actionCopy relevantPropertyIdentifier];
  v9 = relevantPropertyIdentifier;
  if (v7 || !relevantPropertyIdentifier)
  {
    if (associatedEnteredValueIdentifier || v7 || relevantPropertyIdentifier)
    {
      goto LABEL_14;
    }

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = [v11 initWithObjects:{*MEMORY[0x1E69BC060], 0}];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{relevantPropertyIdentifier, 0}];
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  [delegateCopy setRightBarButtonEnabled:self->_selectedAction != 0];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKSelectActionCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKSelectActionCellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_actions, "objectAtIndexedSubscript:", [pathCopy row]);
  title = [(PKPaymentPassAction *)v8 title];
  actionDescription = [(PKPaymentPassAction *)v8 actionDescription];
  actionType = self->_actionType;
  if (actionType == 1)
  {
    v17 = [(PKSelectActionView *)self _balanceForTopUpAction:v8];
    title2 = v17;
    if (v17)
    {
      localizedTitle = [v17 localizedTitle];

      formattedValue = [title2 formattedValue];

      actionDescription = formattedValue;
      title = localizedTitle;
    }
  }

  else
  {
    if (actionType != 2)
    {
      goto LABEL_9;
    }

    associatedPlan = [(PKPaymentPassAction *)v8 associatedPlan];
    title2 = [associatedPlan title];

    label = [title2 label];

    value = [title2 value];

    PKCommutePlanFieldEitherLabelOrValueIsEmpty();
    paymentPass = [(PKPass *)self->_pass paymentPass];
    v31 = value;
    PKCommutePlanFormatTitleFromLabelAndValue();
    title = label;

    actionDescription = value;
  }

LABEL_9:
  textLabel = [v7 textLabel];
  [textLabel setText:title];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textLabel setFont:v22];

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:actionDescription];
  v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [detailTextLabel setFont:v24];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel setTextColor:secondaryLabelColor];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = self->_selectedAction;
  v9 = -[NSArray objectAtIndex:](self->_actions, "objectAtIndex:", [pathCopy row]);
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
    v15 = [MEMORY[0x1E696AC88] indexPathForRow:v14 inSection:{objc_msgSend(pathCopy, "section")}];
    v17[0] = v15;
    v17[1] = pathCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [viewCopy reloadRowsAtIndexPaths:v16 withRowAnimation:5];
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