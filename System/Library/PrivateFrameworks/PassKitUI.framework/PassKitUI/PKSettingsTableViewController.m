@interface PKSettingsTableViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)indexPathForItemWithIdentifier:(id)a3;
- (int64_t)indexOfSectionWithIdentifier:(id)a3;
- (void)applyConfiguration:(id)a3 reconfigureItems:(BOOL)a4 animated:(BOOL)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKSettingsTableViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PKSettingsTableViewController;
  [(PKSettingsTableViewController *)&v19 viewDidLoad];
  v3 = [(PKSettingsTableViewController *)self tableView];
  [v3 pkui_setupForReadableContentGuide];
  objc_initWeak(&location, self);
  v4 = [PKTableViewDiffableDataSource alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__PKSettingsTableViewController_viewDidLoad__block_invoke;
  v16[3] = &unk_1E8010C38;
  objc_copyWeak(&v17, &location);
  v5 = [(UITableViewDiffableDataSource *)v4 initWithTableView:v3 cellProvider:v16];
  dataSource = self->_dataSource;
  self->_dataSource = v5;

  v7 = self->_dataSource;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__PKSettingsTableViewController_viewDidLoad__block_invoke_2;
  v14[3] = &unk_1E8010C60;
  objc_copyWeak(&v15, &location);
  [(PKTableViewDiffableDataSource *)v7 setSectionHeaderProvider:v14];
  v8 = self->_dataSource;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__PKSettingsTableViewController_viewDidLoad__block_invoke_3;
  v12 = &unk_1E8010C60;
  objc_copyWeak(&v13, &location);
  [(PKTableViewDiffableDataSource *)v8 setSectionFooterProvider:&v9];
  [(UITableViewDiffableDataSource *)self->_dataSource setDefaultRowAnimation:0, v9, v10, v11, v12];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9C38]];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

id __44__PKSettingsTableViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained[131] rowForItemIdentifier:v9];
    v13 = [v12 tableViewCellForTableView:v7 atIndexPath:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __44__PKSettingsTableViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[131] sectionForSectionIdentifier:v4];
    v8 = [v7 title];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __44__PKSettingsTableViewController_viewDidLoad__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[131] sectionForSectionIdentifier:v4];
    v8 = [v7 footer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)applyConfiguration:(id)a3 reconfigureItems:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = [v9 snapshot];
  if (v10)
  {
    if (v6)
    {
      currentConfiguration = self->_currentConfiguration;
      if (currentConfiguration)
      {
        v14 = 0;
        [(PKSettingsTableViewConfiguration *)currentConfiguration diff:v9 updatedIdentifiers:&v14];
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&self->_currentConfiguration, a3);
      if ([v12 count])
      {
        v13 = [v12 allObjects];
        [v10 reconfigureItemsWithIdentifiers:v13];
      }
    }

    else
    {
      objc_storeStrong(&self->_currentConfiguration, a3);
    }

    [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v10 animatingDifferences:v5];
  }
}

- (int64_t)indexOfSectionWithIdentifier:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  dataSource = self->_dataSource;
  v4 = a3;
  v5 = [(UITableViewDiffableDataSource *)dataSource snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (id)indexPathForItemWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(UITableViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  currentConfiguration = self->_currentConfiguration;
  v5 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:a4];
  v6 = [(PKSettingsTableViewConfiguration *)currentConfiguration rowForItemIdentifier:v5];

  LOBYTE(v5) = [v6 shouldHighlight];
  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  currentConfiguration = self->_currentConfiguration;
  v8 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v6];
  v9 = [(PKSettingsTableViewConfiguration *)currentConfiguration rowForItemIdentifier:v8];

  if (objc_opt_respondsToSelector())
  {
    [v9 handleCellSelection];
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

@end