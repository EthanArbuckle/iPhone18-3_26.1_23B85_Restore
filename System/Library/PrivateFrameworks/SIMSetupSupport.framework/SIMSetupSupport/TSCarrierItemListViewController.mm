@interface TSCarrierItemListViewController
- (TSCarrierItemListViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)getCellTextAt:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelButtonTapped;
- (void)_fetchCarrierListWithCompletion:(id)a3;
- (void)prepare:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v6];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v9 = [(OBTableWelcomeController *)self tableView];
  v10 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setDelegate:self];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setScrollEnabled:1];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setAllowsMultipleSelection:0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 reloadData];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 layoutIfNeeded];

  [(TSCarrierItemListViewController *)self updateFooterView];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TSCarrierItemListViewController *)self view];
  [v3 layoutIfNeeded];

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

    v5 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [v5 setFont:v6];

    v7 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    [v7 setLineBreakMode:0];

    v8 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    [v8 setNumberOfLines:0];

    v9 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PRIVACY_FOOTER" value:&stru_28753DF48 table:@"Localizable"];
    [v9 setText:v11];

    v13 = [(UITableViewHeaderFooterView *)self->_footer textLabel];
    v12 = [MEMORY[0x277D75348] systemGrayColor];
    [v13 setTextColor:v12];
  }
}

- (id)getCellTextAt:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (v5 >= [(NSArray *)self->_carrierItems count])
  {
    v7 = &stru_28753DF48;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_carrierItems, "objectAtIndexedSubscript:", [v4 row]);
    v7 = [v6 name];
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TSCarrierItemListViewController *)self getCellTextAt:v6];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 section];

  v12 = [v10 stringWithFormat:@"options%ld", v11];
  v13 = [v7 dequeueReusableCellWithIdentifier:v12];

  [v8 sizeWithFont:v9 constrainedToSize:0 lineBreakMode:{235.0, 3.40282347e38}];
  v15 = fmax(v14, 60.0);

  return v15;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 stringWithFormat:@"options%ld", objc_msgSend(v7, "section")];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v9];
  }

  v11 = [v10 contentView];
  [v11 setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  v12 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v12];

  v13 = [v10 textLabel];
  [v13 setLineBreakMode:0];

  v14 = [v10 textLabel];
  [v14 setNumberOfLines:0];

  v15 = [v10 textLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v17 = [v10 textLabel];
  [v17 setFont:v16];

  v18 = [(TSCarrierItemListViewController *)self getCellTextAt:v7];

  v19 = [v10 textLabel];
  [v19 setText:v18];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 row];
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
    v7 = -[NSArray objectAtIndexedSubscript:](self->_carrierItems, "objectAtIndexedSubscript:", [v5 row]);
    selectedCarrierItem = self->_selectedCarrierItem;
    self->_selectedCarrierItem = v7;

    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_selectedCarrierItem;
      *buf = 138412802;
      v21 = v5;
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
    v14 = [(CTCellularPlanCarrierItem *)v12 name];
    v19 = 0;
    [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"purchase local plan" carrierName:v14 error:&v19];
    v15 = v19;

    v16 = [(TSCarrierItemListViewController *)self delegate];
    [v16 viewControllerDidComplete:self];
  }

  v17 = [(OBTableWelcomeController *)self tableView];
  [v17 deselectRowAtIndexPath:v5 animated:1];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)prepare:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_carrierItems)
  {
    (*(v4 + 2))(v4, 1);
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
  v4 = [(TSCarrierItemListViewController *)self delegate];
  [v4 userDidTapCancel];
}

- (void)_fetchCarrierListWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CF96D8] sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__TSCarrierItemListViewController__fetchCarrierListWithCompletion___block_invoke;
  v7[3] = &unk_279B450D0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 getSupportedFlowTypes:v7];

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