@interface WFWalletMerchantSelectionTableViewController
- (UITableView)tableView;
- (WFWalletMerchantSelectionTableViewController)initWithTransactionIdentifiers:(id)a3 selectedMerchants:(id)a4;
- (WFWalletMerchantSelectionTableViewControllerDelegate)delegate;
- (id)filteredMerchants;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)clear:(id)a3;
- (void)done:(id)a3;
- (void)fetchTransactions;
- (void)loadView;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFWalletMerchantSelectionTableViewController

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (WFWalletMerchantSelectionTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v4 = [(WFWalletMerchantSelectionTableViewController *)self tableView:a3];
  [v4 reloadData];
}

- (void)done:(id)a3
{
  v4 = [(WFWalletMerchantSelectionTableViewController *)self merchants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WFWalletMerchantSelectionTableViewController_done___block_invoke;
  v7[3] = &unk_279EE8C08;
  v7[4] = self;
  v5 = [v4 if_objectsPassingTest:v7];

  v6 = [(WFWalletMerchantSelectionTableViewController *)self delegate];
  [v6 walletMerchantViewController:self didFinishWithMerchants:v5];
}

uint64_t __53__WFWalletMerchantSelectionTableViewController_done___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedMerchantIdentifiers];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)clear:(id)a3
{
  v4 = objc_opt_new();
  [(WFWalletMerchantSelectionTableViewController *)self setSelectedMerchantIdentifiers:v4];

  v5 = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  [v5 reloadData];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  [v6 deselectRowAtIndexPath:v5 animated:1];

  v7 = [(WFWalletMerchantSelectionTableViewController *)self filteredMerchants];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v9 = [(WFWalletMerchantSelectionTableViewController *)self selectedMerchantIdentifiers];
  v10 = [v8 uniqueIdentifier];
  v11 = [v9 containsObject:v10];

  v12 = [(WFWalletMerchantSelectionTableViewController *)self selectedMerchantIdentifiers];
  v13 = [v8 uniqueIdentifier];
  if (v11)
  {
    [v12 removeObject:v13];
  }

  else
  {
    [v12 addObject:v13];
  }

  v14 = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  v16[0] = v5;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v14 reloadRowsAtIndexPaths:v15 withRowAnimation:100];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v7];
  v9 = [v8 imageView];
  [v9 setClipsToBounds:1];

  v10 = [v8 imageView];
  v11 = [v10 layer];
  [v11 setMasksToBounds:1];

  v12 = [v8 imageView];
  [v12 _setContinuousCornerRadius:6.0];

  v13 = [(WFWalletMerchantSelectionTableViewController *)self filteredMerchants];
  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v15 = [v14 displayName];
  v16 = [v8 textLabel];
  [v16 setText:v15];

  v17 = [(WFWalletMerchantSelectionTableViewController *)self selectedMerchantIdentifiers];
  v18 = [v14 uniqueIdentifier];
  v19 = [v17 containsObject:v18];

  if (v19)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v8 setAccessoryType:v20];
  v21 = [(WFWalletMerchantSelectionTableViewController *)self generator];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __80__WFWalletMerchantSelectionTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v31 = &unk_279EE8CD0;
  v32 = v6;
  v33 = v7;
  v22 = v7;
  v23 = v6;
  v24 = [v21 iconForMerchant:v14 size:0 ignoreLogoURL:0 requestType:&v28 iconHandler:{29.0, 29.0}];

  if (v24)
  {
    v25 = WFScaledImage(v24);
    v26 = [v8 imageView];
    [v26 setImage:v25];
  }

  return v8;
}

void __80__WFWalletMerchantSelectionTableViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WFWalletMerchantSelectionTableViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_279EE8CA8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__WFWalletMerchantSelectionTableViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v2 = WFScaledImage(*(a1 + 48));
  v3 = [v4 imageView];
  [v3 setImage:v2];

  [v4 setNeedsLayout];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFWalletMerchantSelectionTableViewController *)self filteredMerchants:a3];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFWalletMerchantSelectionTableViewController;
  [(WFWalletMerchantSelectionTableViewController *)&v4 viewDidLoad];
  v3 = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];

  [(WFWalletMerchantSelectionTableViewController *)self fetchTransactions];
}

- (void)fetchTransactions
{
  v3 = objc_alloc_init(MEMORY[0x277D380F0]);
  v4 = [(WFWalletMerchantSelectionTableViewController *)self cardIdentifiers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke;
  v5[3] = &unk_279EE8C80;
  v5[4] = self;
  [v3 transactionsForTransactionSourceIdentifiers:v4 withTransactionSource:0 withBackingData:0 limit:100 completion:v5];
}

void __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke_2;
  v6[3] = &unk_279EE8C58;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke_3;
  v15 = &unk_279EE8C30;
  v16 = v2;
  v17 = v3;
  v5 = v3;
  v6 = v2;
  [v4 enumerateObjectsUsingBlock:&v12];
  v7 = [v5 allObjects];
  v8 = [v7 copy];
  v9 = *(a1 + 40);
  v10 = *(v9 + 1008);
  *(v9 + 1008) = v8;

  v11 = [*(a1 + 40) tableView];
  [v11 reloadData];
}

void __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = [a2 merchant];
  v3 = [v8 uniqueIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v8 uniqueIdentifier];
    LOBYTE(v4) = [v4 containsObject:v5];

    if ((v4 & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = [v8 uniqueIdentifier];
      [v6 addObject:v7];

      [*(a1 + 40) addObject:v8];
    }
  }
}

- (id)filteredMerchants
{
  v3 = [(WFWalletMerchantSelectionTableViewController *)self navigationItem];
  v4 = [v3 searchController];
  v5 = [v4 searchBar];

  v6 = [v5 text];
  v7 = [v6 length];
  v8 = [(WFWalletMerchantSelectionTableViewController *)self merchants];
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__WFWalletMerchantSelectionTableViewController_filteredMerchants__block_invoke;
    v11[3] = &unk_279EE8C08;
    v12 = v6;
    v9 = [v8 if_objectsPassingTest:v11];

    v8 = v9;
  }

  return v8;
}

uint64_t __65__WFWalletMerchantSelectionTableViewController_filteredMerchants__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayName];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  return v4;
}

- (void)loadView
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WFWalletMerchantSelectionTableViewController;
  [(WFWalletMerchantSelectionTableViewController *)&v33 loadView];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setAllowsMultipleSelection:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTableHeaderView:v5];

  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTableFooterView:v6];

  v7 = [(WFWalletMerchantSelectionTableViewController *)self view];
  [v7 addSubview:v4];

  [(WFWalletMerchantSelectionTableViewController *)self setTableView:v4];
  v8 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v8 setObscuresBackgroundDuringPresentation:0];
  v9 = [v8 searchBar];
  [v9 setAutocorrectionType:1];

  [v8 setHidesNavigationBarDuringPresentation:0];
  v32 = v8;
  v10 = [v8 searchBar];
  [v10 setDelegate:self];

  v11 = [(WFWalletMerchantSelectionTableViewController *)self navigationItem];
  [v11 setSearchController:v8];

  v12 = [(WFWalletMerchantSelectionTableViewController *)self navigationItem];
  [v12 setHidesSearchBarWhenScrolling:0];

  v13 = WFLocalizedString(@"Merchants");
  [(WFWalletMerchantSelectionTableViewController *)self setTitle:v13];

  v24 = MEMORY[0x277CCAAD0];
  v30 = [v4 topAnchor];
  v31 = [(WFWalletMerchantSelectionTableViewController *)self view];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v34[0] = v28;
  v26 = [v4 leadingAnchor];
  v27 = [(WFWalletMerchantSelectionTableViewController *)self view];
  v25 = [v27 leadingAnchor];
  v23 = [v26 constraintEqualToAnchor:v25];
  v34[1] = v23;
  v14 = [v4 bottomAnchor];
  v15 = [(WFWalletMerchantSelectionTableViewController *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v34[2] = v17;
  v18 = [v4 trailingAnchor];
  v19 = [(WFWalletMerchantSelectionTableViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v34[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v24 activateConstraints:v22];
}

- (WFWalletMerchantSelectionTableViewController)initWithTransactionIdentifiers:(id)a3 selectedMerchants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = WFWalletMerchantSelectionTableViewController;
  v8 = [(WFWalletMerchantSelectionTableViewController *)&v27 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [v6 copy];
    cardIdentifiers = v8->_cardIdentifiers;
    v8->_cardIdentifiers = v9;

    v11 = [(WFWalletMerchantSelectionTableViewController *)v8 navigationItem];
    v12 = objc_alloc(MEMORY[0x277D751E0]);
    v13 = WFLocalizedString(@"Clear");
    v14 = [v12 initWithTitle:v13 style:0 target:v8 action:sel_clear_];
    [v11 setLeftBarButtonItem:v14];

    v15 = [(WFWalletMerchantSelectionTableViewController *)v8 navigationItem];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v8 action:sel_done_];
    [v15 setRightBarButtonItem:v16];

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v17 = getPKPaymentTransactionIconGeneratorClass_softClass;
    v32 = getPKPaymentTransactionIconGeneratorClass_softClass;
    if (!getPKPaymentTransactionIconGeneratorClass_softClass)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __getPKPaymentTransactionIconGeneratorClass_block_invoke;
      v28[3] = &unk_279EE8CF8;
      v28[4] = &v29;
      __getPKPaymentTransactionIconGeneratorClass_block_invoke(v28);
      v17 = v30[3];
    }

    v18 = v17;
    _Block_object_dispose(&v29, 8);
    v19 = [v17 alloc];
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 scale];
    v21 = [v19 initWithCache:1 scale:?];
    generator = v8->_generator;
    v8->_generator = v21;

    v23 = objc_opt_new();
    selectedMerchantIdentifiers = v8->_selectedMerchantIdentifiers;
    v8->_selectedMerchantIdentifiers = v23;

    v25 = v8;
  }

  return v8;
}

@end