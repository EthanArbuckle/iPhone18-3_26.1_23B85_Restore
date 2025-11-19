@interface PKSpendNotificationLimitViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (PKSpendNotificationLimitViewController)initWithTitle:(id)a3 footerText:(id)a4 provider:(id)a5;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_deleteOptionAtIndexPath:(id)a3;
- (void)_doneButtonTapped:(id)a3;
- (void)_updateNavigationItemsIsEditing:(BOOL)a3;
- (void)_updateSnapshotAnimated:(BOOL)a3 completion:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSpendNotificationLimitViewController

- (PKSpendNotificationLimitViewController)initWithTitle:(id)a3 footerText:(id)a4 provider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = PKSpendNotificationLimitViewController;
  v11 = -[PKSpendNotificationLimitViewController initWithStyle:](&v27, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  if (v11)
  {
    v12 = [v9 copy];
    footerText = v11->_footerText;
    v11->_footerText = v12;

    objc_storeStrong(&v11->_provider, a5);
    v14 = [PKCurrencyAmountSelectorCustomEntryItem alloc];
    v15 = [(PKCurrencyAmountSelectorOptionProvider *)v11->_provider currencyCode];
    v16 = [(PKCurrencyAmountSelectorCustomEntryItem *)v14 initWithCurrencyCode:v15];
    customEntryItem = v11->_customEntryItem;
    v11->_customEntryItem = v16;

    objc_initWeak(&location, v11);
    v18 = v11->_customEntryItem;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__PKSpendNotificationLimitViewController_initWithTitle_footerText_provider___block_invoke;
    v24[3] = &unk_1E8011180;
    objc_copyWeak(&v25, &location);
    [(PKCurrencyAmountSelectorCustomEntryItem *)v18 setEditingChangedHandler:v24];
    v19 = v11->_customEntryItem;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__PKSpendNotificationLimitViewController_initWithTitle_footerText_provider___block_invoke_2;
    v22[3] = &unk_1E8011180;
    objc_copyWeak(&v23, &location);
    [(PKCurrencyAmountSelectorCustomEntryItem *)v19 setInputValueChangedHandler:v22];
    [(PKSpendNotificationLimitViewController *)v11 setTitle:v8];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v20 = [(PKSpendNotificationLimitViewController *)v11 navigationItem];
      [v20 pkui_setupScrollEdgeChromelessAppearance];
      [v20 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    [(PKSpendNotificationLimitViewController *)v11 _updateNavigationItemsIsEditing:0];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __76__PKSpendNotificationLimitViewController_initWithTitle_footerText_provider___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNavigationItemsIsEditing:a2];
}

void __76__PKSpendNotificationLimitViewController_initWithTitle_footerText_provider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationItem];
  v4 = [v3 rightBarButtonItem];
  [v4 setEnabled:a2];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKSpendNotificationLimitViewController;
  [(PKSpendNotificationLimitViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKSpendNotificationLimitViewController *)self tableView];
    v4 = [(PKSpendNotificationLimitViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PKSpendNotificationLimitViewController;
  [(PKSpendNotificationLimitViewController *)&v17 viewDidLoad];
  v3 = [(PKSpendNotificationLimitViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[PKCurrencyAmountSelectorOption cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[PKCurrencyAmountSelectorCustomEntryItem cellReuseIdentifier];
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(UITableViewDiffableDataSource *)[PKTableViewDiffableDataSource alloc] initWithTableView:v3 cellProvider:&__block_literal_global_271];
  dataSource = self->_dataSource;
  self->_dataSource = v8;

  [(PKTableViewDiffableDataSource *)self->_dataSource setSectionHeaderProvider:&__block_literal_global_274_0];
  [(PKTableViewDiffableDataSource *)self->_dataSource setSectionFooterProvider:&__block_literal_global_276];
  objc_initWeak(&location, self);
  v10 = self->_dataSource;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__PKSpendNotificationLimitViewController_viewDidLoad__block_invoke_4;
  v14[3] = &unk_1E801C3B0;
  objc_copyWeak(&v15, &location);
  [(PKTableViewDiffableDataSource *)v10 setCommitEditingHandler:v14];
  provider = self->_provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__PKSpendNotificationLimitViewController_viewDidLoad__block_invoke_5;
  v12[3] = &unk_1E8011158;
  objc_copyWeak(&v13, &location);
  [(PKCurrencyAmountSelectorOptionProvider *)provider setOptionsUpdateHandler:v12];
  [(PKSpendNotificationLimitViewController *)self _updateSnapshotAnimated:0 completion:0];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9D58]];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __53__PKSpendNotificationLimitViewController_viewDidLoad__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a3 == 1 && WeakRetained)
  {
    [WeakRetained _deleteOptionAtIndexPath:v8];
  }
}

void __53__PKSpendNotificationLimitViewController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __53__PKSpendNotificationLimitViewController_viewDidLoad__block_invoke_6;
    v3[3] = &unk_1E8010970;
    v3[4] = WeakRetained;
    [WeakRetained _updateSnapshotAnimated:0 completion:v3];
  }
}

void __53__PKSpendNotificationLimitViewController_viewDidLoad__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 1072))
  {
    v3 = [*(v1 + 1048) selectedOption];
    (*(*(*(a1 + 32) + 1072) + 16))();
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a4;
  [a3 deselectRowAtIndexPath:v17 animated:1];
  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem clear];
  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem endEditing];
  v6 = [v17 section];
  v7 = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
  v8 = [v7 sectionIdentifiers];
  v9 = [v8 objectAtIndexedSubscript:v6];
  v10 = [v9 identifier];

  v11 = v10;
  v12 = v11;
  if (v11 == @"SpendLimitOptionsSectionIdentifier" || v11 && (v13 = [(__CFString *)v11 isEqualToString:@"SpendLimitOptionsSectionIdentifier"], v12, v13))
  {
    v14 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v17];
    v15 = [v14 currencyAmount];
    v16 = [v15 amount];

    [(PKCurrencyAmountSelectorOptionProvider *)self->_provider selectAmount:v16];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a4];
  v5 = [v4 shouldHighlight];

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a4];
  v5 = [v4 editingStyle];

  return v5;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v5 = [a4 section];
  v6 = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 objectAtIndexedSubscript:v5];
  v9 = [v8 identifier];

  v10 = v9;
  v11 = v10;
  if (v10 == @"SpendLimitOptionsSectionIdentifier")
  {
    v12 = 1;
  }

  else if (v10)
  {
    v12 = [(__CFString *)v10 isEqualToString:@"SpendLimitOptionsSectionIdentifier"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_deleteOptionAtIndexPath:(id)a3
{
  v7 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a3];
  provider = self->_provider;
  v5 = [v7 currencyAmount];
  v6 = [v5 amount];
  [(PKCurrencyAmountSelectorOptionProvider *)provider removeCustomAmount:v6];
}

- (void)_updateNavigationItemsIsEditing:(BOOL)a3
{
  if (a3)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
    [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9740]];
    v4 = [(PKSpendNotificationLimitViewController *)self navigationItem];
    v5 = v4;
    v6 = v7;
  }

  else
  {
    v7 = [(PKSpendNotificationLimitViewController *)self navigationItem];
    v5 = [(PKSpendNotificationLimitViewController *)self editButtonItem];
    v4 = v7;
    v6 = v5;
  }

  [v4 setRightBarButtonItem:v6];
}

- (void)_doneButtonTapped:(id)a3
{
  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem endEditing];
  v4 = [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem decimalNumberValue];
  if (v4)
  {
    [(PKCurrencyAmountSelectorOptionProvider *)self->_provider insertCustomAmount:v4];
  }

  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem clear];
}

- (void)_updateSnapshotAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v8 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"SpendLimitOptionsSectionIdentifier"];
  v9 = v8;
  if (!self->_customEntryItem)
  {
    [(PKTableViewDiffableDataSourceSection *)v8 setFooter:self->_footerText];
  }

  v17[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v7 appendSectionsWithIdentifiers:v10];

  v11 = [(PKCurrencyAmountSelectorOptionProvider *)self->_provider options];
  [v7 appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:v9];

  if (self->_customEntryItem)
  {
    v12 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"CustomOptionEntrySectionIdentifier"];
    [(PKTableViewDiffableDataSourceSection *)v12 setFooter:self->_footerText];
    v16 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v7 appendSectionsWithIdentifiers:v13];

    customEntryItem = self->_customEntryItem;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&customEntryItem count:1];
    [v7 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:v12];
  }

  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v7 animatingDifferences:v4 completion:v6];
}

@end