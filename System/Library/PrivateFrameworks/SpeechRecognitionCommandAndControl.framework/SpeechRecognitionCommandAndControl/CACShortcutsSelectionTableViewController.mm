@interface CACShortcutsSelectionTableViewController
- (CACShortcutsSelectionTableViewController)initWithPreviouslySelectedShortcut:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelButtonAction;
- (void)setCachedShortcuts:(id)a3;
- (void)shortcutsDidChange:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CACShortcutsSelectionTableViewController

- (CACShortcutsSelectionTableViewController)initWithPreviouslySelectedShortcut:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CACShortcutsSelectionTableViewController;
  v6 = [(CACShortcutsSelectionTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previouslySelectedShortcut, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CACShortcutsSelectionTableViewController;
  [(CACShortcutsSelectionTableViewController *)&v10 viewDidLoad];
  v3 = [(CACShortcutsSelectionTableViewController *)self tableView];
  [v3 setDelegate:self];

  v4 = [(CACShortcutsSelectionTableViewController *)self tableView];
  [v4 setDataSource:self];

  v5 = [(CACShortcutsSelectionTableViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"ShortcutsCell"];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonAction];
  v7 = [(CACShortcutsSelectionTableViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  v8 = [MEMORY[0x277CE7E38] sharedManager];
  v9 = [v8 shortcuts];
  [(CACShortcutsSelectionTableViewController *)self setCachedShortcuts:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CACShortcutsSelectionTableViewController;
  [(CACShortcutsSelectionTableViewController *)&v10 viewWillAppear:a3];
  objc_initWeak(&location, self);
  v4 = [MEMORY[0x277CE7E38] sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CACShortcutsSelectionTableViewController_viewWillAppear___block_invoke;
  v7[3] = &unk_279CEB640;
  objc_copyWeak(&v8, &location);
  v5 = [v4 registerShortcutsDidChangeBlock:v7];
  shortcutsToken = self->_shortcutsToken;
  self->_shortcutsToken = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__CACShortcutsSelectionTableViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [WeakRetained shortcutsDidChange:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CE7E38] sharedManager];
  v6 = [(CACShortcutsSelectionTableViewController *)self shortcutsToken];
  [v5 unregisterShortcutsDidChangeBlock:v6];

  [(CACShortcutsSelectionTableViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_6];
  v7.receiver = self;
  v7.super_class = CACShortcutsSelectionTableViewController;
  [(CACShortcutsSelectionTableViewController *)&v7 viewWillDisappear:v3];
}

void __62__CACShortcutsSelectionTableViewController_viewWillDisappear___block_invoke()
{
  v0 = CACLogShortcuts();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26B354000, v0, OS_LOG_TYPE_DEFAULT, "View disappeared. Dismissing.", v1, 2u);
  }
}

- (void)cancelButtonAction
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__CACShortcutsSelectionTableViewController_cancelButtonAction__block_invoke;
  v2[3] = &unk_279CEB2D0;
  v2[4] = self;
  [(CACShortcutsSelectionTableViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __62__CACShortcutsSelectionTableViewController_cancelButtonAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) shortcutsSelectionDelegate];
  [v1 didSelectShortcut:0];

  v2 = CACLogShortcuts();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26B354000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling selection of shortcut", v3, 2u);
  }
}

- (void)setCachedShortcuts:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  cachedShortcuts = v5->_cachedShortcuts;
  v5->_cachedShortcuts = v4;
  v7 = v4;

  objc_sync_exit(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CACShortcutsSelectionTableViewController_setCachedShortcuts___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__CACShortcutsSelectionTableViewController_setCachedShortcuts___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)shortcutsDidChange:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CACLogShortcuts();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_26B354000, v5, OS_LOG_TYPE_DEFAULT, "New shortcuts %@", &v6, 0xCu);
  }

  [(CACShortcutsSelectionTableViewController *)self setCachedShortcuts:v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CACShortcutsSelectionTableViewController *)self cachedShortcuts:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ShortcutsCell" forIndexPath:v6];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"ShortcutsCell"];
  }

  v8 = [(CACShortcutsSelectionTableViewController *)self cachedShortcuts];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v10 = [v9 shortcutName];
  v11 = [v7 textLabel];
  [v11 setText:v10];

  v12 = MEMORY[0x277CCACA8];
  v13 = [v9 shortcutName];
  v14 = [v12 stringWithFormat:@"%@", v13];
  v15 = [v7 detailTextLabel];
  [v15 setText:v14];

  v16 = [v9 identifier];
  v17 = [(CACShortcutsSelectionTableViewController *)self previouslySelectedShortcut];
  v18 = [v17 identifier];

  if (v16 == v18)
  {
    [v7 setAccessoryType:3];
    [(CACShortcutsSelectionTableViewController *)self setPreviouslySelectedIndex:v6];
  }

  else
  {
    [v7 setAccessoryType:0];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CACShortcutsSelectionTableViewController *)self previouslySelectedIndex];
  v9 = [v7 cellForRowAtIndexPath:v8];

  [v9 setAccessoryType:0];
  v10 = [v7 cellForRowAtIndexPath:v6];

  [v10 setAccessoryType:3];
  v11 = [(CACShortcutsSelectionTableViewController *)self cachedShortcuts];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  v14 = [(CACShortcutsSelectionTableViewController *)self shortcutsSelectionDelegate];
  [v14 didSelectShortcut:v13];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__CACShortcutsSelectionTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v16[3] = &unk_279CEB2D0;
  v17 = v13;
  v15 = v13;
  [(CACShortcutsSelectionTableViewController *)self dismissViewControllerAnimated:1 completion:v16];
}

void __78__CACShortcutsSelectionTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = CACLogShortcuts();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_26B354000, v2, OS_LOG_TYPE_DEFAULT, "Selected shortcut %@", &v4, 0xCu);
  }
}

@end