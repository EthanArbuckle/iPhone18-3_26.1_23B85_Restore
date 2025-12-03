@interface PKPerformActionPurchaseNewView
- (PKPerformActionPurchaseNewView)initWithPass:(id)pass action:(id)action paymentDataProvider:(id)provider;
- (PKPerformActionViewDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)transactionAmount;
- (id)transactionCurrency;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addSubviews;
- (void)fetchServiceProviderDataWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PKPerformActionPurchaseNewView

- (PKPerformActionPurchaseNewView)initWithPass:(id)pass action:(id)action paymentDataProvider:(id)provider
{
  passCopy = pass;
  actionCopy = action;
  v18.receiver = self;
  v18.super_class = PKPerformActionPurchaseNewView;
  v10 = [(PKPerformActionPurchaseNewView *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pass, pass);
    objc_storeStrong(&v11->_action, action);
    _shouldReverseLayoutDirection = [(PKPerformActionPurchaseNewView *)v11 _shouldReverseLayoutDirection];
    v13 = 2;
    if (!_shouldReverseLayoutDirection)
    {
      v13 = 0;
    }

    v11->_textAlignment = v13;
    purchaseNewActionItems = [actionCopy purchaseNewActionItems];
    firstObject = [purchaseNewActionItems firstObject];
    purchaseNewItem = v11->_purchaseNewItem;
    v11->_purchaseNewItem = firstObject;

    [(PKPerformActionPurchaseNewView *)v11 setClipsToBounds:0];
    [(PKPerformActionPurchaseNewView *)v11 _addSubviews];
  }

  return v11;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPerformActionPurchaseNewView;
  [(PKPerformActionPurchaseNewView *)&v4 layoutSubviews];
  tableView = self->_tableView;
  [(PKPerformActionPurchaseNewView *)self bounds];
  [(UITableView *)tableView setFrame:?];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  [delegateCopy setRightBarButtonEnabled:self->_purchaseNewItem != 0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PKPaymentPassAction *)self->_action purchaseNewActionItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPerformActionPurchaseNewCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPerformActionPurchaseNewCellIdentifier"];
  }

  purchaseNewActionItems = [(PKPaymentPassAction *)self->_action purchaseNewActionItems];
  v9 = [pathCopy row];

  v10 = [purchaseNewActionItems objectAtIndex:v9];

  amount = [(PKPurchaseNewActionItem *)v10 amount];
  currency = [(PKPurchaseNewActionItem *)v10 currency];
  v13 = PKFormattedCurrencyStringFromNumber();

  textLabel = [v7 textLabel];
  detailTextLabel = [v7 detailTextLabel];
  [textLabel setTextAlignment:self->_textAlignment];
  title = [(PKPurchaseNewActionItem *)v10 title];
  [textLabel setText:title];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  [textLabel setLineBreakMode:4];
  [detailTextLabel setTextAlignment:self->_textAlignment];
  [detailTextLabel setText:v13];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel setTextColor:secondaryLabelColor];

  [v7 setSelectionStyle:3];
  if (v10 == self->_purchaseNewItem)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  [v7 setAccessoryType:v19];
  v20 = PKProvisioningSecondaryBackgroundColor();
  [v7 setBackgroundColor:v20];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v7 = self->_purchaseNewItem;
  purchaseNewActionItems = [(PKPaymentPassAction *)self->_action purchaseNewActionItems];
  v9 = [purchaseNewActionItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if (v7 != v9)
  {
    objc_storeStrong(&self->_purchaseNewItem, v9);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setRightBarButtonEnabled:self->_purchaseNewItem != 0];

    v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [viewCopy reloadSections:v11 withRowAnimation:5];

    purchaseNewActionItems2 = [(PKPaymentPassAction *)self->_action purchaseNewActionItems];
    v13 = [purchaseNewActionItems2 indexOfObject:v7];

    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:{objc_msgSend(pathCopy, "section")}];
    v15 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
    [v15 setAccessoryType:0];
    v16 = [(UITableView *)self->_tableView cellForRowAtIndexPath:pathCopy];
    [v16 setAccessoryType:3];
  }
}

- (id)transactionAmount
{
  purchaseNewItem = self->_purchaseNewItem;
  if (purchaseNewItem)
  {
    [(PKPurchaseNewActionItem *)purchaseNewItem amount];
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
  purchaseNewItem = self->_purchaseNewItem;
  if (purchaseNewItem)
  {
    purchaseNewItem = [purchaseNewItem currency];
    v2 = vars8;
  }

  return purchaseNewItem;
}

- (void)fetchServiceProviderDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  purchaseNewItem = self->_purchaseNewItem;
  if (purchaseNewItem)
  {
    secureElementPass = [(PKPass *)self->_pass secureElementPass];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PKPerformActionPurchaseNewView_fetchServiceProviderDataWithCompletion___block_invoke;
    v8[3] = &unk_1E8012A48;
    v9 = v5;
    [(PKPurchaseNewActionItem *)purchaseNewItem serviceProviderDataWithItemForPass:secureElementPass completion:v8];
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

  [(PKPerformActionPurchaseNewView *)self addSubview:v8];
}

- (PKPerformActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end