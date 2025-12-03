@interface PKSelectActionGroupView
- (PKSelectActionGroupView)initWithPass:(id)pass actionGroups:(id)groups;
- (PKSelectActionGroupViewDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addSubviews;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PKSelectActionGroupView

- (PKSelectActionGroupView)initWithPass:(id)pass actionGroups:(id)groups
{
  passCopy = pass;
  groupsCopy = groups;
  v17.receiver = self;
  v17.super_class = PKSelectActionGroupView;
  v9 = [(PKSelectActionGroupView *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, pass);
    selectedActionGroup = v10->_selectedActionGroup;
    v10->_selectedActionGroup = 0;

    v12 = [groupsCopy copy];
    actionGroups = v10->_actionGroups;
    v10->_actionGroups = v12;

    v14 = [[PKSelectActionGroupHeader alloc] initWithTitle:@"Choose Group" subtitle:@"Choose an action group for which to see actions."];
    actionGroupHeader = v10->_actionGroupHeader;
    v10->_actionGroupHeader = v14;

    [(PKSelectActionGroupView *)v10 _addSubviews];
  }

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKSelectActionGroupView;
  [(PKSelectActionGroupView *)&v4 layoutSubviews];
  tableView = self->_tableView;
  [(PKSelectActionGroupView *)self bounds];
  [(UITableView *)tableView setFrame:?];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  [delegateCopy setRightBarButtonEnabled:self->_selectedActionGroup != 0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKSelectActionGroupCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKSelectActionGroupCellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_actionGroups, "objectAtIndexedSubscript:", [pathCopy row]);
  title = [(PKPaymentPassActionGroup *)v8 title];
  actionGroupDescription = [(PKPaymentPassActionGroup *)v8 actionGroupDescription];
  textLabel = [v7 textLabel];
  [textLabel setText:title];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textLabel setFont:v13];

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:actionGroupDescription];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [detailTextLabel setFont:v15];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel setTextColor:secondaryLabelColor];

  [v7 setSelectionStyle:0];
  selectedActionGroup = self->_selectedActionGroup;
  if (selectedActionGroup != v8 || selectedActionGroup == 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = 3;
  }

  [v7 setAccessoryType:v19];
  v20 = PKProvisioningSecondaryBackgroundColor();
  [v7 setBackgroundColor:v20];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = self->_selectedActionGroup;
  v9 = -[NSArray objectAtIndex:](self->_actionGroups, "objectAtIndex:", [pathCopy row]);
  if (v8 != v9)
  {
    objc_storeStrong(&self->_selectedActionGroup, v9);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setRightBarButtonEnabled:self->_selectedActionGroup != 0];

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 selectActionGroupViewDidSelectActionGroup:self->_selectedActionGroup];
    }

    v14 = [(NSArray *)self->_actionGroups indexOfObject:v8];
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

  [(PKSelectActionGroupView *)self addSubview:v8];
}

- (PKSelectActionGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end