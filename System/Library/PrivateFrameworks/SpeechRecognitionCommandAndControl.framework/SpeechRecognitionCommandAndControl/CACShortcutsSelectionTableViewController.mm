@interface CACShortcutsSelectionTableViewController
- (CACShortcutsSelectionTableViewController)initWithPreviouslySelectedShortcut:(id)shortcut;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelButtonAction;
- (void)setCachedShortcuts:(id)shortcuts;
- (void)shortcutsDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CACShortcutsSelectionTableViewController

- (CACShortcutsSelectionTableViewController)initWithPreviouslySelectedShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v9.receiver = self;
  v9.super_class = CACShortcutsSelectionTableViewController;
  v6 = [(CACShortcutsSelectionTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previouslySelectedShortcut, shortcut);
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CACShortcutsSelectionTableViewController;
  [(CACShortcutsSelectionTableViewController *)&v10 viewDidLoad];
  tableView = [(CACShortcutsSelectionTableViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(CACShortcutsSelectionTableViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(CACShortcutsSelectionTableViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"ShortcutsCell"];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonAction];
  navigationItem = [(CACShortcutsSelectionTableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
  shortcuts = [mEMORY[0x277CE7E38] shortcuts];
  [(CACShortcutsSelectionTableViewController *)self setCachedShortcuts:shortcuts];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CACShortcutsSelectionTableViewController;
  [(CACShortcutsSelectionTableViewController *)&v10 viewWillAppear:appear];
  objc_initWeak(&location, self);
  mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CACShortcutsSelectionTableViewController_viewWillAppear___block_invoke;
  v7[3] = &unk_279CEB640;
  objc_copyWeak(&v8, &location);
  v5 = [mEMORY[0x277CE7E38] registerShortcutsDidChangeBlock:v7];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
  shortcutsToken = [(CACShortcutsSelectionTableViewController *)self shortcutsToken];
  [mEMORY[0x277CE7E38] unregisterShortcutsDidChangeBlock:shortcutsToken];

  [(CACShortcutsSelectionTableViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_6];
  v7.receiver = self;
  v7.super_class = CACShortcutsSelectionTableViewController;
  [(CACShortcutsSelectionTableViewController *)&v7 viewWillDisappear:disappearCopy];
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

- (void)setCachedShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedShortcuts = selfCopy->_cachedShortcuts;
  selfCopy->_cachedShortcuts = shortcutsCopy;
  v7 = shortcutsCopy;

  objc_sync_exit(selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CACShortcutsSelectionTableViewController_setCachedShortcuts___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__CACShortcutsSelectionTableViewController_setCachedShortcuts___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)shortcutsDidChange:(id)change
{
  v8 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = CACLogShortcuts();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&dword_26B354000, v5, OS_LOG_TYPE_DEFAULT, "New shortcuts %@", &v6, 0xCu);
  }

  [(CACShortcutsSelectionTableViewController *)self setCachedShortcuts:changeCopy];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CACShortcutsSelectionTableViewController *)self cachedShortcuts:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ShortcutsCell" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"ShortcutsCell"];
  }

  cachedShortcuts = [(CACShortcutsSelectionTableViewController *)self cachedShortcuts];
  v9 = [cachedShortcuts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  shortcutName = [v9 shortcutName];
  textLabel = [v7 textLabel];
  [textLabel setText:shortcutName];

  v12 = MEMORY[0x277CCACA8];
  shortcutName2 = [v9 shortcutName];
  v14 = [v12 stringWithFormat:@"%@", shortcutName2];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v14];

  identifier = [v9 identifier];
  previouslySelectedShortcut = [(CACShortcutsSelectionTableViewController *)self previouslySelectedShortcut];
  identifier2 = [previouslySelectedShortcut identifier];

  if (identifier == identifier2)
  {
    [v7 setAccessoryType:3];
    [(CACShortcutsSelectionTableViewController *)self setPreviouslySelectedIndex:pathCopy];
  }

  else
  {
    [v7 setAccessoryType:0];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  previouslySelectedIndex = [(CACShortcutsSelectionTableViewController *)self previouslySelectedIndex];
  v9 = [viewCopy cellForRowAtIndexPath:previouslySelectedIndex];

  [v9 setAccessoryType:0];
  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v10 setAccessoryType:3];
  cachedShortcuts = [(CACShortcutsSelectionTableViewController *)self cachedShortcuts];
  v12 = [pathCopy row];

  v13 = [cachedShortcuts objectAtIndexedSubscript:v12];

  shortcutsSelectionDelegate = [(CACShortcutsSelectionTableViewController *)self shortcutsSelectionDelegate];
  [shortcutsSelectionDelegate didSelectShortcut:v13];

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