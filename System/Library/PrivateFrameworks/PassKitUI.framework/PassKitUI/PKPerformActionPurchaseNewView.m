@interface PKPerformActionPurchaseNewView
- (PKPerformActionPurchaseNewView)initWithPass:(id)a3 action:(id)a4 paymentDataProvider:(id)a5;
- (PKPerformActionViewDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)transactionAmount;
- (id)transactionCurrency;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addSubviews;
- (void)fetchServiceProviderDataWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PKPerformActionPurchaseNewView

- (PKPerformActionPurchaseNewView)initWithPass:(id)a3 action:(id)a4 paymentDataProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = PKPerformActionPurchaseNewView;
  v10 = [(PKPerformActionPurchaseNewView *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pass, a3);
    objc_storeStrong(&v11->_action, a4);
    v12 = [(PKPerformActionPurchaseNewView *)v11 _shouldReverseLayoutDirection];
    v13 = 2;
    if (!v12)
    {
      v13 = 0;
    }

    v11->_textAlignment = v13;
    v14 = [v9 purchaseNewActionItems];
    v15 = [v14 firstObject];
    purchaseNewItem = v11->_purchaseNewItem;
    v11->_purchaseNewItem = v15;

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

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_delegate, v5);
  [v5 setRightBarButtonEnabled:self->_purchaseNewItem != 0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PKPaymentPassAction *)self->_action purchaseNewActionItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPerformActionPurchaseNewCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPerformActionPurchaseNewCellIdentifier"];
  }

  v8 = [(PKPaymentPassAction *)self->_action purchaseNewActionItems];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [(PKPurchaseNewActionItem *)v10 amount];
  v12 = [(PKPurchaseNewActionItem *)v10 currency];
  v13 = PKFormattedCurrencyStringFromNumber();

  v14 = [v7 textLabel];
  v15 = [v7 detailTextLabel];
  [v14 setTextAlignment:self->_textAlignment];
  v16 = [(PKPurchaseNewActionItem *)v10 title];
  [v14 setText:v16];

  v17 = [MEMORY[0x1E69DC888] labelColor];
  [v14 setTextColor:v17];

  [v14 setLineBreakMode:4];
  [v15 setTextAlignment:self->_textAlignment];
  [v15 setText:v13];
  v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v15 setTextColor:v18];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  [v17 deselectRowAtIndexPath:v6 animated:1];
  v7 = self->_purchaseNewItem;
  v8 = [(PKPaymentPassAction *)self->_action purchaseNewActionItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  if (v7 != v9)
  {
    objc_storeStrong(&self->_purchaseNewItem, v9);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setRightBarButtonEnabled:self->_purchaseNewItem != 0];

    v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [v17 reloadSections:v11 withRowAnimation:5];

    v12 = [(PKPaymentPassAction *)self->_action purchaseNewActionItems];
    v13 = [v12 indexOfObject:v7];

    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:{objc_msgSend(v6, "section")}];
    v15 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
    [v15 setAccessoryType:0];
    v16 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v6];
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

- (void)fetchServiceProviderDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  purchaseNewItem = self->_purchaseNewItem;
  if (purchaseNewItem)
  {
    v7 = [(PKPass *)self->_pass secureElementPass];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PKPerformActionPurchaseNewView_fetchServiceProviderDataWithCompletion___block_invoke;
    v8[3] = &unk_1E8012A48;
    v9 = v5;
    [(PKPurchaseNewActionItem *)purchaseNewItem serviceProviderDataWithItemForPass:v7 completion:v8];
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

  [(PKPerformActionPurchaseNewView *)self addSubview:v8];
}

- (PKPerformActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end