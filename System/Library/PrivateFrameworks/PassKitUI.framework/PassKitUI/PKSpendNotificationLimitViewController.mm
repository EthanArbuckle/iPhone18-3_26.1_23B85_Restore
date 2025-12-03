@interface PKSpendNotificationLimitViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (PKSpendNotificationLimitViewController)initWithTitle:(id)title footerText:(id)text provider:(id)provider;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_deleteOptionAtIndexPath:(id)path;
- (void)_doneButtonTapped:(id)tapped;
- (void)_updateNavigationItemsIsEditing:(BOOL)editing;
- (void)_updateSnapshotAnimated:(BOOL)animated completion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSpendNotificationLimitViewController

- (PKSpendNotificationLimitViewController)initWithTitle:(id)title footerText:(id)text provider:(id)provider
{
  titleCopy = title;
  textCopy = text;
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = PKSpendNotificationLimitViewController;
  v11 = -[PKSpendNotificationLimitViewController initWithStyle:](&v27, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  if (v11)
  {
    v12 = [textCopy copy];
    footerText = v11->_footerText;
    v11->_footerText = v12;

    objc_storeStrong(&v11->_provider, provider);
    v14 = [PKCurrencyAmountSelectorCustomEntryItem alloc];
    currencyCode = [(PKCurrencyAmountSelectorOptionProvider *)v11->_provider currencyCode];
    v16 = [(PKCurrencyAmountSelectorCustomEntryItem *)v14 initWithCurrencyCode:currencyCode];
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
    [(PKSpendNotificationLimitViewController *)v11 setTitle:titleCopy];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKSpendNotificationLimitViewController *)v11 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
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
    tableView = [(PKSpendNotificationLimitViewController *)self tableView];
    navigationItem = [(PKSpendNotificationLimitViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PKSpendNotificationLimitViewController;
  [(PKSpendNotificationLimitViewController *)&v17 viewDidLoad];
  tableView = [(PKSpendNotificationLimitViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[PKCurrencyAmountSelectorOption cellReuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[PKCurrencyAmountSelectorCustomEntryItem cellReuseIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(UITableViewDiffableDataSource *)[PKTableViewDiffableDataSource alloc] initWithTableView:tableView cellProvider:&__block_literal_global_271];
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
  [tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9D58]];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem clear];
  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem endEditing];
  section = [pathCopy section];
  snapshot = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v9 = [sectionIdentifiers objectAtIndexedSubscript:section];
  identifier = [v9 identifier];

  v11 = identifier;
  v12 = v11;
  if (v11 == @"SpendLimitOptionsSectionIdentifier" || v11 && (v13 = [(__CFString *)v11 isEqualToString:@"SpendLimitOptionsSectionIdentifier"], v12, v13))
  {
    v14 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    currencyAmount = [v14 currencyAmount];
    amount = [currencyAmount amount];

    [(PKCurrencyAmountSelectorOptionProvider *)self->_provider selectAmount:amount];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  shouldHighlight = [v4 shouldHighlight];

  return shouldHighlight;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  editingStyle = [v4 editingStyle];

  return editingStyle;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  section = [path section];
  snapshot = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers objectAtIndexedSubscript:section];
  identifier = [v8 identifier];

  v10 = identifier;
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

- (void)_deleteOptionAtIndexPath:(id)path
{
  v7 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  provider = self->_provider;
  currencyAmount = [v7 currencyAmount];
  amount = [currencyAmount amount];
  [(PKCurrencyAmountSelectorOptionProvider *)provider removeCustomAmount:amount];
}

- (void)_updateNavigationItemsIsEditing:(BOOL)editing
{
  if (editing)
  {
    navigationItem2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
    [navigationItem2 setAccessibilityIdentifier:*MEMORY[0x1E69B9740]];
    navigationItem = [(PKSpendNotificationLimitViewController *)self navigationItem];
    editButtonItem = navigationItem;
    v6 = navigationItem2;
  }

  else
  {
    navigationItem2 = [(PKSpendNotificationLimitViewController *)self navigationItem];
    editButtonItem = [(PKSpendNotificationLimitViewController *)self editButtonItem];
    navigationItem = navigationItem2;
    v6 = editButtonItem;
  }

  [navigationItem setRightBarButtonItem:v6];
}

- (void)_doneButtonTapped:(id)tapped
{
  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem endEditing];
  decimalNumberValue = [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem decimalNumberValue];
  if (decimalNumberValue)
  {
    [(PKCurrencyAmountSelectorOptionProvider *)self->_provider insertCustomAmount:decimalNumberValue];
  }

  [(PKCurrencyAmountSelectorCustomEntryItem *)self->_customEntryItem clear];
}

- (void)_updateSnapshotAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v17[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
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

  options = [(PKCurrencyAmountSelectorOptionProvider *)self->_provider options];
  [v7 appendItemsWithIdentifiers:options intoSectionWithIdentifier:v9];

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

  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v7 animatingDifferences:animatedCopy completion:completionCopy];
}

@end