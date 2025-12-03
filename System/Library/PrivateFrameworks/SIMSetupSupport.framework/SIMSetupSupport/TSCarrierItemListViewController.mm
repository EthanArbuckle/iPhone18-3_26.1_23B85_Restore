@interface TSCarrierItemListViewController
- (TSCarrierItemListViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)getCellTextAt:(id)at;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancelButtonTapped;
- (void)_fetchCarrierListWithCompletion:(id)completion;
- (void)prepare:(id)prepare;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFooterView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSCarrierItemListViewController

- (TSCarrierItemListViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRAVEL_PURCHASE_PLAN_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRAVEL_PURCHASE_PLAN_BODY" value:&stru_28753DF48 table:@"Localizable"];
  v12.receiver = self;
  v12.super_class = TSCarrierItemListViewController;
  v7 = [(OBTableWelcomeController *)&v12 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  v8 = dispatch_queue_create(@"Core Analytics", 0);
  v9 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v8];
  client = v7->_client;
  v7->_client = v9;

  return v7;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = TSCarrierItemListViewController;
  [(TSOBTableWelcomeController *)&v17 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v6];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDataSource:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setScrollEnabled:1];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setAllowsMultipleSelection:0];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 reloadData];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 layoutIfNeeded];

  [(TSCarrierItemListViewController *)self updateFooterView];
}

- (void)viewDidLayoutSubviews
{
  view = [(TSCarrierItemListViewController *)self view];
  [view layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = TSCarrierItemListViewController;
  [(TSCarrierItemListViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = TSCarrierItemListViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (void)updateFooterView
{
  if (!self->_footer)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75B70]);
    footer = self->_footer;
    self->_footer = v3;

    textLabel = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [textLabel setFont:v6];

    textLabel2 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    [textLabel2 setLineBreakMode:0];

    textLabel3 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    [textLabel3 setNumberOfLines:0];

    textLabel4 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PRIVACY_FOOTER" value:&stru_28753DF48 table:@"Localizable"];
    [textLabel4 setText:v11];

    textLabel5 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [textLabel5 setTextColor:systemGrayColor];
  }
}

- (id)getCellTextAt:(id)at
{
  atCopy = at;
  v5 = [atCopy row];
  if (v5 >= [(NSArray *)self->_carrierItems count])
  {
    name = &stru_28753DF48;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_carrierItems, "objectAtIndexedSubscript:", [atCopy row]);
    name = [v6 name];
  }

  return name;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(TSCarrierItemListViewController *)self getCellTextAt:pathCopy];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v10 = MEMORY[0x277CCACA8];
  section = [pathCopy section];

  v12 = [v10 stringWithFormat:@"options%ld", section];
  v13 = [viewCopy dequeueReusableCellWithIdentifier:v12];

  [v8 sizeWithFont:v9 constrainedToSize:0 lineBreakMode:{235.0, 3.40282347e38}];
  v15 = fmax(v14, 60.0);

  return v15;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = MEMORY[0x277CCACA8];
  pathCopy = path;
  viewCopy = view;
  v9 = [v6 stringWithFormat:@"options%ld", objc_msgSend(pathCopy, "section")];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v9];
  }

  contentView = [v10 contentView];
  [contentView setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:secondarySystemBackgroundColor];

  textLabel = [v10 textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [v10 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v10 textLabel];
  [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textLabel4 = [v10 textLabel];
  [textLabel4 setFont:v16];

  v18 = [(TSCarrierItemListViewController *)self getCellTextAt:pathCopy];

  textLabel5 = [v10 textLabel];
  [textLabel5 setText:v18];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = [pathCopy row];
  if (v6 >= [(NSArray *)self->_carrierItems count])
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSCarrierItemListViewController tableView:v11 didSelectRowAtIndexPath:?];
    }
  }

  else
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_carrierItems, "objectAtIndexedSubscript:", [pathCopy row]);
    selectedCarrierItem = self->_selectedCarrierItem;
    self->_selectedCarrierItem = v7;

    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_selectedCarrierItem;
      *buf = 138412802;
      v21 = pathCopy;
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = "[TSCarrierItemListViewController tableView:didSelectRowAtIndexPath:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "carrier item at %@: %@ @%s", buf, 0x20u);
    }
  }

  v12 = self->_selectedCarrierItem;
  if (v12)
  {
    client = self->_client;
    name = [(CTCellularPlanCarrierItem *)v12 name];
    v19 = 0;
    [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"purchase local plan" carrierName:name error:&v19];
    v15 = v19;

    delegate = [(TSCarrierItemListViewController *)self delegate];
    [delegate viewControllerDidComplete:self];
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = prepareCopy;
  if (self->_carrierItems)
  {
    (*(prepareCopy + 2))(prepareCopy, 1);
  }

  else
  {
    v6 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v6 assertUserInPurchaseFlowStartOver:0 caller:self];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__TSCarrierItemListViewController_prepare___block_invoke;
    v7[3] = &unk_279B45030;
    objc_copyWeak(&v9, &location);
    v7[4] = self;
    v8 = v5;
    [(TSCarrierItemListViewController *)self _fetchCarrierListWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __43__TSCarrierItemListViewController_prepare___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v5 deassertUserInPurchaseFlowWithForce:0 caller:*(a1 + 32)];

  if (WeakRetained)
  {
    v6 = v7 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    objc_storeStrong(WeakRetained + 160, a2);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_cancelButtonTapped
{
  client = self->_client;
  v5 = 0;
  [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"purchase local plan_Cancel" carrierName:&stru_28753DF48 error:&v5];
  delegate = [(TSCarrierItemListViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)_fetchCarrierListWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke;
  v7[3] = &unk_279B450D0;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [mEMORY[0x277CF96D8] getSupportedFlowTypes:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_2;
  block[3] = &unk_279B450A8;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v6);
}

void __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((*(a1 + 48) & 0x20) != 0)
  {
    v4 = [MEMORY[0x277CF96D8] sharedManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_3;
    v5[3] = &unk_279B45080;
    v6 = *(a1 + 32);
    [v4 carrierItemsShouldUpdate:0 completion:v5];
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_2_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_4;
  v6[3] = &unk_279B45058;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(os_log_t)log didSelectRowAtIndexPath:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCarrierItemListViewController tableView:didSelectRowAtIndexPath:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid row selection @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCarrierItemListViewController _fetchCarrierListWithCompletion:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]CarrierPlanItemFlow is unsupprted @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end