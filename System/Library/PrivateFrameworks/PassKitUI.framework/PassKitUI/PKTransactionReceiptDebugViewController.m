@interface PKTransactionReceiptDebugViewController
- (BOOL)shouldMapSection:(unint64_t)a3;
- (PKTransactionReceiptDebugViewController)initWithPaymentTransaction:(id)a3;
- (id)_amountCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_headerFieldCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_infoCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_lineItemCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_previewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_summaryItemCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)provideDataForItem:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_presentReceiptPreview;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKTransactionReceiptDebugViewController

- (PKTransactionReceiptDebugViewController)initWithPaymentTransaction:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKTransactionReceiptDebugViewController;
  v6 = [(PKSectionTableViewController *)&v11 initWithStyle:1 numberOfSections:6];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
    v8 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v7->_paymentService;
    v7->_paymentService = v8;

    [(PKPaymentService *)v7->_paymentService registerObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKTransactionReceiptDebugViewController;
  [(PKSectionTableViewController *)&v3 dealloc];
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  v4 = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = [(PKTransactionReceipt *)self->_receipt summaryItems];
      goto LABEL_14;
    }

    if (a3 != 4)
    {
      if (a3 != 5)
      {
        return 0;
      }

      v6 = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v8 = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];
        v4 = v8 != 0;
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = [(PKTransactionReceipt *)self->_receipt headerFields];
      goto LABEL_14;
    }

    if (a3 == 2)
    {
      v5 = [(PKTransactionReceipt *)self->_receipt lineItems];
LABEL_14:
      v7 = v5;
      v4 = [v5 count] != 0;

      return v4;
    }

    return 0;
  }

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        return 6;
      case 1:
        v6 = [(PKTransactionReceipt *)self->_receipt headerFields];
        goto LABEL_14;
      case 2:
        v6 = [(PKTransactionReceipt *)self->_receipt lineItems];
LABEL_14:
        v8 = v6;
        v9 = [v6 count];

        return v9;
    }

    return 0;
  }

  if (v5 == 3)
  {
    v6 = [(PKTransactionReceipt *)self->_receipt summaryItems];
    goto LABEL_14;
  }

  if (v5 != 4)
  {
    return v5 == 5;
  }

  return 2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  v9 = 0;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v10 = [(PKTransactionReceiptDebugViewController *)self _summaryItemCellForTableView:v6 atIndexPath:v7];
        break;
      case 4:
        v10 = [(PKTransactionReceiptDebugViewController *)self _amountCellForTableView:v6 atIndexPath:v7];
        break;
      case 5:
        v10 = [(PKTransactionReceiptDebugViewController *)self _previewCellForTableView:v6 atIndexPath:v7];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v10 = [(PKTransactionReceiptDebugViewController *)self _headerFieldCellForTableView:v6 atIndexPath:v7];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_15;
      }

      v10 = [(PKTransactionReceiptDebugViewController *)self _lineItemCellForTableView:v6 atIndexPath:v7];
    }
  }

  else
  {
    v10 = [(PKTransactionReceiptDebugViewController *)self _infoCellForTableView:v6 atIndexPath:v7];
  }

  v9 = v10;
LABEL_15:

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v6 section]) == 5)
  {
    [(PKTransactionReceiptDebugViewController *)self _presentReceiptPreview];
  }

  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v4 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E801BC38[v4 - 1];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKTransactionReceiptDebugViewController;
  [(PKSectionTableViewController *)&v7 viewDidLoad];
  v3 = [(PKTransactionReceiptDebugViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellReuseIdentifier"];
  paymentService = self->_paymentService;
  v5 = [(PKPaymentTransaction *)self->_transaction identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKTransactionReceiptDebugViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E801BC18;
  v6[4] = self;
  [(PKPaymentService *)paymentService transactionReceiptForTransactionWithIdentifier:v5 updateIfNecessary:1 completion:v6];
}

void __54__PKTransactionReceiptDebugViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKTransactionReceiptDebugViewController_viewDidLoad__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __54__PKTransactionReceiptDebugViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1120), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 reloadData];
}

- (id)provideDataForItem:(id)a3
{
  v4 = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];
  }

  v7 = v6;

  return v7;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v4 = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKTransactionReceiptDebugViewController_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PKTransactionReceiptDebugViewController_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1112) identifier];
  v4 = v2;
  v5 = v3;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_12:
    objc_storeStrong((*(a1 + 40) + 1120), *(a1 + 48));
    v8 = *(a1 + 40);

    [v8 reloadData];
    return;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v4 isEqualToString:v5];

    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }
}

- (void)_presentReceiptPreview
{
  v3 = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];

  if (v3)
  {
    v4 = MEMORY[0x1E6982F10];
  }

  else
  {
    v5 = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];

    if (!v5)
    {
      return;
    }

    v4 = MEMORY[0x1E6982E18];
  }

  v6 = [*v4 identifier];
  if (v6)
  {
    v11 = v6;
    v7 = [objc_alloc(_MergedGlobals_1_15()) initWithDataProvider:self contentType:v6 previewTitle:@"Receipt"];
    receiptPreviewItem = self->_receiptPreviewItem;
    self->_receiptPreviewItem = v7;

    v9 = objc_alloc_init(off_1EE989798());
    previewController = self->_previewController;
    self->_previewController = v9;

    [(QLPreviewController *)self->_previewController setDelegate:self];
    [(QLPreviewController *)self->_previewController setDataSource:self];
    [(PKTransactionReceiptDebugViewController *)self presentViewController:self->_previewController animated:1 completion:0];
  }
}

- (id)_infoCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:v6];
  v8 = [v6 row];

  v9 = 0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v12 = [(PKTransactionReceipt *)self->_receipt lastUpdatedDate];
      v10 = PKW3CDateStringFromDate();

      v9 = @"Last Updated";
    }

    else if (v8 == 4)
    {
      v13 = [(PKTransactionReceipt *)self->_receipt supportURL];
      v10 = [v13 absoluteString];

      v9 = @"Support URL";
    }

    else
    {
      v10 = 0;
      if (v8 == 5)
      {
        v11 = [(PKTransactionReceipt *)self->_receipt state];
        if (v11 > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_1E801BC50[v11];
        }

        v9 = @"State";
      }
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v10 = [(PKTransactionReceipt *)self->_receipt receiptProviderIdentifier];
      v9 = @"Provider ID";
    }

    else
    {
      v10 = 0;
      if (v8 == 2)
      {
        v10 = [(PKTransactionReceipt *)self->_receipt receiptIdentifier];
        v9 = @"Receipt ID";
      }
    }
  }

  else
  {
    v10 = [(PKTransactionReceipt *)self->_receipt uniqueID];
    v9 = @"Unique ID";
  }

  v14 = [v7 keyLabel];
  [v14 setText:v9];

  v15 = [v7 valueLabel];
  [v15 setText:v10];

  return v7;
}

- (id)_headerFieldCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:v6];
  v8 = [(PKTransactionReceipt *)self->_receipt headerFields];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v7 keyLabel];
  v12 = [v10 label];
  [v11 setText:v12];

  v13 = [v7 valueLabel];
  v14 = [v10 value];
  [v13 setText:v14];

  return v7;
}

- (id)_lineItemCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:v6];
  v8 = [(PKTransactionReceipt *)self->_receipt lineItems];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v7 keyLabel];
  v12 = [v10 title];
  [v11 setText:v12];

  v13 = [v7 valueLabel];
  v14 = [v10 currencyAmount];
  v15 = [v14 formattedStringValue];
  [v13 setText:v15];

  v16 = [v7 imageView];
  v17 = MEMORY[0x1E69DCAB8];
  v18 = [v10 image];
  v19 = [v17 imageWithPKImage:v18];
  [v16 setImage:v19];

  return v7;
}

- (id)_summaryItemCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:v6];
  v8 = [(PKTransactionReceipt *)self->_receipt summaryItems];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v10 label];
  if (!v11)
  {
    v12 = [v10 type];
    if (v12 > 4)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E801BC68[v12];
    }
  }

  v13 = [v7 keyLabel];
  [v13 setText:v11];

  v14 = [v7 valueLabel];
  v15 = [v10 currencyAmount];
  v16 = [v15 formattedStringValue];
  [v14 setText:v16];

  return v7;
}

- (id)_amountCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:v6];
  v8 = [v6 row];

  if (v8 == 1)
  {
    v9 = [(PKTransactionReceipt *)self->_receipt totalCurrencyAmount];
    v10 = @"Total";
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [(PKTransactionReceipt *)self->_receipt subtotalCurrencyAmount];
    v10 = @"Subtotal";
LABEL_5:
    v11 = [v9 formattedStringValue];

    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0;
LABEL_7:
  v12 = [v7 keyLabel];
  [v12 setText:v10];

  v13 = [v7 valueLabel];
  [v13 setText:v11];

  return v7;
}

- (id)_previewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:a4];
  v5 = [v4 keyLabel];
  [v5 setText:@"View Receipt"];

  return v4;
}

@end