@interface WFWalletMerchantSelectionTableViewController
- (UITableView)tableView;
- (WFWalletMerchantSelectionTableViewController)initWithTransactionIdentifiers:(id)identifiers selectedMerchants:(id)merchants;
- (WFWalletMerchantSelectionTableViewControllerDelegate)delegate;
- (id)filteredMerchants;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)clear:(id)clear;
- (void)done:(id)done;
- (void)fetchTransactions;
- (void)loadView;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v4 = [(WFWalletMerchantSelectionTableViewController *)self tableView:bar];
  [v4 reloadData];
}

- (void)done:(id)done
{
  merchants = [(WFWalletMerchantSelectionTableViewController *)self merchants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WFWalletMerchantSelectionTableViewController_done___block_invoke;
  v7[3] = &unk_279EE8C08;
  v7[4] = self;
  v5 = [merchants if_objectsPassingTest:v7];

  delegate = [(WFWalletMerchantSelectionTableViewController *)self delegate];
  [delegate walletMerchantViewController:self didFinishWithMerchants:v5];
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

- (void)clear:(id)clear
{
  v4 = objc_opt_new();
  [(WFWalletMerchantSelectionTableViewController *)self setSelectedMerchantIdentifiers:v4];

  tableView = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tableView = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  filteredMerchants = [(WFWalletMerchantSelectionTableViewController *)self filteredMerchants];
  v8 = [filteredMerchants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  selectedMerchantIdentifiers = [(WFWalletMerchantSelectionTableViewController *)self selectedMerchantIdentifiers];
  uniqueIdentifier = [v8 uniqueIdentifier];
  v11 = [selectedMerchantIdentifiers containsObject:uniqueIdentifier];

  selectedMerchantIdentifiers2 = [(WFWalletMerchantSelectionTableViewController *)self selectedMerchantIdentifiers];
  uniqueIdentifier2 = [v8 uniqueIdentifier];
  if (v11)
  {
    [selectedMerchantIdentifiers2 removeObject:uniqueIdentifier2];
  }

  else
  {
    [selectedMerchantIdentifiers2 addObject:uniqueIdentifier2];
  }

  tableView2 = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  v16[0] = pathCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [tableView2 reloadRowsAtIndexPaths:v15 withRowAnimation:100];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
  imageView = [v8 imageView];
  [imageView setClipsToBounds:1];

  imageView2 = [v8 imageView];
  layer = [imageView2 layer];
  [layer setMasksToBounds:1];

  imageView3 = [v8 imageView];
  [imageView3 _setContinuousCornerRadius:6.0];

  filteredMerchants = [(WFWalletMerchantSelectionTableViewController *)self filteredMerchants];
  v14 = [filteredMerchants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  displayName = [v14 displayName];
  textLabel = [v8 textLabel];
  [textLabel setText:displayName];

  selectedMerchantIdentifiers = [(WFWalletMerchantSelectionTableViewController *)self selectedMerchantIdentifiers];
  uniqueIdentifier = [v14 uniqueIdentifier];
  v19 = [selectedMerchantIdentifiers containsObject:uniqueIdentifier];

  if (v19)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v8 setAccessoryType:v20];
  generator = [(WFWalletMerchantSelectionTableViewController *)self generator];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __80__WFWalletMerchantSelectionTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v31 = &unk_279EE8CD0;
  v32 = viewCopy;
  v33 = pathCopy;
  v22 = pathCopy;
  v23 = viewCopy;
  v24 = [generator iconForMerchant:v14 size:0 ignoreLogoURL:0 requestType:&v28 iconHandler:{29.0, 29.0}];

  if (v24)
  {
    v25 = WFScaledImage(v24);
    imageView4 = [v8 imageView];
    [imageView4 setImage:v25];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFWalletMerchantSelectionTableViewController *)self filteredMerchants:view];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFWalletMerchantSelectionTableViewController;
  [(WFWalletMerchantSelectionTableViewController *)&v4 viewDidLoad];
  tableView = [(WFWalletMerchantSelectionTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];

  [(WFWalletMerchantSelectionTableViewController *)self fetchTransactions];
}

- (void)fetchTransactions
{
  v3 = objc_alloc_init(MEMORY[0x277D380F0]);
  cardIdentifiers = [(WFWalletMerchantSelectionTableViewController *)self cardIdentifiers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__WFWalletMerchantSelectionTableViewController_fetchTransactions__block_invoke;
  v5[3] = &unk_279EE8C80;
  v5[4] = self;
  [v3 transactionsForTransactionSourceIdentifiers:cardIdentifiers withTransactionSource:0 withBackingData:0 limit:100 completion:v5];
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
  navigationItem = [(WFWalletMerchantSelectionTableViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];

  text = [searchBar text];
  v7 = [text length];
  merchants = [(WFWalletMerchantSelectionTableViewController *)self merchants];
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__WFWalletMerchantSelectionTableViewController_filteredMerchants__block_invoke;
    v11[3] = &unk_279EE8C08;
    v12 = text;
    v9 = [merchants if_objectsPassingTest:v11];

    merchants = v9;
  }

  return merchants;
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

  view = [(WFWalletMerchantSelectionTableViewController *)self view];
  [view addSubview:v4];

  [(WFWalletMerchantSelectionTableViewController *)self setTableView:v4];
  v8 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v8 setObscuresBackgroundDuringPresentation:0];
  searchBar = [v8 searchBar];
  [searchBar setAutocorrectionType:1];

  [v8 setHidesNavigationBarDuringPresentation:0];
  v32 = v8;
  searchBar2 = [v8 searchBar];
  [searchBar2 setDelegate:self];

  navigationItem = [(WFWalletMerchantSelectionTableViewController *)self navigationItem];
  [navigationItem setSearchController:v8];

  navigationItem2 = [(WFWalletMerchantSelectionTableViewController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  v13 = WFLocalizedString(@"Merchants");
  [(WFWalletMerchantSelectionTableViewController *)self setTitle:v13];

  v24 = MEMORY[0x277CCAAD0];
  topAnchor = [v4 topAnchor];
  view2 = [(WFWalletMerchantSelectionTableViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v28;
  leadingAnchor = [v4 leadingAnchor];
  view3 = [(WFWalletMerchantSelectionTableViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[1] = v23;
  bottomAnchor = [v4 bottomAnchor];
  view4 = [(WFWalletMerchantSelectionTableViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[2] = v17;
  trailingAnchor = [v4 trailingAnchor];
  view5 = [(WFWalletMerchantSelectionTableViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v24 activateConstraints:v22];
}

- (WFWalletMerchantSelectionTableViewController)initWithTransactionIdentifiers:(id)identifiers selectedMerchants:(id)merchants
{
  identifiersCopy = identifiers;
  merchantsCopy = merchants;
  v27.receiver = self;
  v27.super_class = WFWalletMerchantSelectionTableViewController;
  v8 = [(WFWalletMerchantSelectionTableViewController *)&v27 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    cardIdentifiers = v8->_cardIdentifiers;
    v8->_cardIdentifiers = v9;

    navigationItem = [(WFWalletMerchantSelectionTableViewController *)v8 navigationItem];
    v12 = objc_alloc(MEMORY[0x277D751E0]);
    v13 = WFLocalizedString(@"Clear");
    v14 = [v12 initWithTitle:v13 style:0 target:v8 action:sel_clear_];
    [navigationItem setLeftBarButtonItem:v14];

    navigationItem2 = [(WFWalletMerchantSelectionTableViewController *)v8 navigationItem];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v8 action:sel_done_];
    [navigationItem2 setRightBarButtonItem:v16];

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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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