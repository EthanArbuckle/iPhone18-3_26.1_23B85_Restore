@interface PKTransactionReceiptDebugViewController
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKTransactionReceiptDebugViewController)initWithPaymentTransaction:(id)transaction;
- (id)_amountCellForTableView:(id)view atIndexPath:(id)path;
- (id)_headerFieldCellForTableView:(id)view atIndexPath:(id)path;
- (id)_infoCellForTableView:(id)view atIndexPath:(id)path;
- (id)_lineItemCellForTableView:(id)view atIndexPath:(id)path;
- (id)_previewCellForTableView:(id)view atIndexPath:(id)path;
- (id)_summaryItemCellForTableView:(id)view atIndexPath:(id)path;
- (id)provideDataForItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_presentReceiptPreview;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt;
- (void)viewDidLoad;
@end

@implementation PKTransactionReceiptDebugViewController

- (PKTransactionReceiptDebugViewController)initWithPaymentTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11.receiver = self;
  v11.super_class = PKTransactionReceiptDebugViewController;
  v6 = [(PKSectionTableViewController *)&v11 initWithStyle:1 numberOfSections:6];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v7->_paymentService;
    v7->_paymentService = paymentService;

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

- (BOOL)shouldMapSection:(unint64_t)section
{
  v4 = 1;
  if (section > 2)
  {
    if (section == 3)
    {
      summaryItems = [(PKTransactionReceipt *)self->_receipt summaryItems];
      goto LABEL_14;
    }

    if (section != 4)
    {
      if (section != 5)
      {
        return 0;
      }

      htmlReceiptData = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];
      if (htmlReceiptData)
      {
        v4 = 1;
      }

      else
      {
        pdfReceiptData = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];
        v4 = pdfReceiptData != 0;
      }
    }
  }

  else if (section)
  {
    if (section == 1)
    {
      summaryItems = [(PKTransactionReceipt *)self->_receipt headerFields];
      goto LABEL_14;
    }

    if (section == 2)
    {
      summaryItems = [(PKTransactionReceipt *)self->_receipt lineItems];
LABEL_14:
      v7 = summaryItems;
      v4 = [summaryItems count] != 0;

      return v4;
    }

    return 0;
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        return 6;
      case 1:
        headerFields = [(PKTransactionReceipt *)self->_receipt headerFields];
        goto LABEL_14;
      case 2:
        headerFields = [(PKTransactionReceipt *)self->_receipt lineItems];
LABEL_14:
        v8 = headerFields;
        v9 = [headerFields count];

        return v9;
    }

    return 0;
  }

  if (v5 == 3)
  {
    headerFields = [(PKTransactionReceipt *)self->_receipt summaryItems];
    goto LABEL_14;
  }

  if (v5 != 4)
  {
    return v5 == 5;
  }

  return 2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v9 = 0;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v10 = [(PKTransactionReceiptDebugViewController *)self _summaryItemCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      case 4:
        v10 = [(PKTransactionReceiptDebugViewController *)self _amountCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      case 5:
        v10 = [(PKTransactionReceiptDebugViewController *)self _previewCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v10 = [(PKTransactionReceiptDebugViewController *)self _headerFieldCellForTableView:viewCopy atIndexPath:pathCopy];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_15;
      }

      v10 = [(PKTransactionReceiptDebugViewController *)self _lineItemCellForTableView:viewCopy atIndexPath:pathCopy];
    }
  }

  else
  {
    v10 = [(PKTransactionReceiptDebugViewController *)self _infoCellForTableView:viewCopy atIndexPath:pathCopy];
  }

  v9 = v10;
LABEL_15:

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]) == 5)
  {
    [(PKTransactionReceiptDebugViewController *)self _presentReceiptPreview];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(PKSectionTableViewController *)self sectionForIndex:section];
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
  tableView = [(PKTransactionReceiptDebugViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CellReuseIdentifier"];
  paymentService = self->_paymentService;
  identifier = [(PKPaymentTransaction *)self->_transaction identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKTransactionReceiptDebugViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E801BC18;
  v6[4] = self;
  [(PKPaymentService *)paymentService transactionReceiptForTransactionWithIdentifier:identifier updateIfNecessary:1 completion:v6];
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

- (id)provideDataForItem:(id)item
{
  pdfReceiptData = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];
  v5 = pdfReceiptData;
  if (pdfReceiptData)
  {
    htmlReceiptData = pdfReceiptData;
  }

  else
  {
    htmlReceiptData = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];
  }

  v7 = htmlReceiptData;

  return v7;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  pdfReceiptData = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];
  if (pdfReceiptData)
  {
    v5 = 1;
  }

  else
  {
    htmlReceiptData = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];
    v5 = htmlReceiptData != 0;
  }

  return v5;
}

- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt
{
  identifierCopy = identifier;
  receiptCopy = receipt;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKTransactionReceiptDebugViewController_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = identifierCopy;
  selfCopy = self;
  v13 = receiptCopy;
  v8 = receiptCopy;
  v9 = identifierCopy;
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
  pdfReceiptData = [(PKTransactionReceipt *)self->_receipt pdfReceiptData];

  if (pdfReceiptData)
  {
    v4 = MEMORY[0x1E6982F10];
  }

  else
  {
    htmlReceiptData = [(PKTransactionReceipt *)self->_receipt htmlReceiptData];

    if (!htmlReceiptData)
    {
      return;
    }

    v4 = MEMORY[0x1E6982E18];
  }

  identifier = [*v4 identifier];
  if (identifier)
  {
    v11 = identifier;
    v7 = [objc_alloc(_MergedGlobals_1_15()) initWithDataProvider:self contentType:identifier previewTitle:@"Receipt"];
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

- (id)_infoCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  v8 = [pathCopy row];

  v9 = 0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      lastUpdatedDate = [(PKTransactionReceipt *)self->_receipt lastUpdatedDate];
      absoluteString = PKW3CDateStringFromDate();

      v9 = @"Last Updated";
    }

    else if (v8 == 4)
    {
      supportURL = [(PKTransactionReceipt *)self->_receipt supportURL];
      absoluteString = [supportURL absoluteString];

      v9 = @"Support URL";
    }

    else
    {
      absoluteString = 0;
      if (v8 == 5)
      {
        state = [(PKTransactionReceipt *)self->_receipt state];
        if (state > 2)
        {
          absoluteString = 0;
        }

        else
        {
          absoluteString = off_1E801BC50[state];
        }

        v9 = @"State";
      }
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      absoluteString = [(PKTransactionReceipt *)self->_receipt receiptProviderIdentifier];
      v9 = @"Provider ID";
    }

    else
    {
      absoluteString = 0;
      if (v8 == 2)
      {
        absoluteString = [(PKTransactionReceipt *)self->_receipt receiptIdentifier];
        v9 = @"Receipt ID";
      }
    }
  }

  else
  {
    absoluteString = [(PKTransactionReceipt *)self->_receipt uniqueID];
    v9 = @"Unique ID";
  }

  keyLabel = [v7 keyLabel];
  [keyLabel setText:v9];

  valueLabel = [v7 valueLabel];
  [valueLabel setText:absoluteString];

  return v7;
}

- (id)_headerFieldCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  headerFields = [(PKTransactionReceipt *)self->_receipt headerFields];
  v9 = [pathCopy row];

  v10 = [headerFields objectAtIndex:v9];

  keyLabel = [v7 keyLabel];
  label = [v10 label];
  [keyLabel setText:label];

  valueLabel = [v7 valueLabel];
  value = [v10 value];
  [valueLabel setText:value];

  return v7;
}

- (id)_lineItemCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  lineItems = [(PKTransactionReceipt *)self->_receipt lineItems];
  v9 = [pathCopy row];

  v10 = [lineItems objectAtIndex:v9];

  keyLabel = [v7 keyLabel];
  title = [v10 title];
  [keyLabel setText:title];

  valueLabel = [v7 valueLabel];
  currencyAmount = [v10 currencyAmount];
  formattedStringValue = [currencyAmount formattedStringValue];
  [valueLabel setText:formattedStringValue];

  imageView = [v7 imageView];
  v17 = MEMORY[0x1E69DCAB8];
  image = [v10 image];
  v19 = [v17 imageWithPKImage:image];
  [imageView setImage:v19];

  return v7;
}

- (id)_summaryItemCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  summaryItems = [(PKTransactionReceipt *)self->_receipt summaryItems];
  v9 = [pathCopy row];

  v10 = [summaryItems objectAtIndex:v9];

  label = [v10 label];
  if (!label)
  {
    type = [v10 type];
    if (type > 4)
    {
      label = 0;
    }

    else
    {
      label = off_1E801BC68[type];
    }
  }

  keyLabel = [v7 keyLabel];
  [keyLabel setText:label];

  valueLabel = [v7 valueLabel];
  currencyAmount = [v10 currencyAmount];
  formattedStringValue = [currencyAmount formattedStringValue];
  [valueLabel setText:formattedStringValue];

  return v7;
}

- (id)_amountCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  v8 = [pathCopy row];

  if (v8 == 1)
  {
    totalCurrencyAmount = [(PKTransactionReceipt *)self->_receipt totalCurrencyAmount];
    v10 = @"Total";
    goto LABEL_5;
  }

  if (!v8)
  {
    totalCurrencyAmount = [(PKTransactionReceipt *)self->_receipt subtotalCurrencyAmount];
    v10 = @"Subtotal";
LABEL_5:
    formattedStringValue = [totalCurrencyAmount formattedStringValue];

    goto LABEL_7;
  }

  v10 = 0;
  formattedStringValue = 0;
LABEL_7:
  keyLabel = [v7 keyLabel];
  [keyLabel setText:v10];

  valueLabel = [v7 valueLabel];
  [valueLabel setText:formattedStringValue];

  return v7;
}

- (id)_previewCellForTableView:(id)view atIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:path];
  keyLabel = [v4 keyLabel];
  [keyLabel setText:@"View Receipt"];

  return v4;
}

@end