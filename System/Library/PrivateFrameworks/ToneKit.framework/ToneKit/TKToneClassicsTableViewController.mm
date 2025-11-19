@interface TKToneClassicsTableViewController
- (TKToneClassicsTableViewController)initWithClassicTonesHeaderItem:(id)a3;
- (TKTonePickerTableViewControllerHelper)tonePickerTableViewControllerHelper;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)didReloadTones;
- (void)didUpdateDetailText:(id)a3 ofToneClassicsPickerItem:(id)a4;
- (void)layoutMarginsDidChangeInTonePickerTableView:(id)a3;
- (void)loadView;
- (void)separatorColorDidChangeInTonePickerTableView:(id)a3;
- (void)setTonePickerTableViewControllerHelper:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation TKToneClassicsTableViewController

- (TKToneClassicsTableViewController)initWithClassicTonesHeaderItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TKToneClassicsTableViewController;
  v6 = [(TKToneClassicsTableViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classicTonesHeaderItem, a3);
    v8 = TLLocalizedString();
    [(TKToneClassicsTableViewController *)v7 setTitle:v8];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [v3 tonePickerTableViewControllerWillBeDeallocated:self];

  v4.receiver = self;
  v4.super_class = TKToneClassicsTableViewController;
  [(TKToneClassicsTableViewController *)&v4 dealloc];
}

- (void)setTonePickerTableViewControllerHelper:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tonePickerTableViewControllerHelper);
  objc_storeWeak(&self->_tonePickerTableViewControllerHelper, v4);
  if ([(TKToneClassicsTableViewController *)self isViewLoaded]&& (v4 == 0) == (WeakRetained != 0))
  {
    v6 = TLLogToneManagement();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543874;
      v10 = self;
      v11 = 2114;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_21C599000, v6, OS_LOG_TYPE_DEFAULT, "The tonePickerTableViewControllerHelper property of %{public}@ is being updated from %{public}@ to %{public}@. Reloading table view.", &v9, 0x20u);
    }

    v7 = [(TKToneClassicsTableViewController *)self tableView];
    [v7 reloadData];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didReloadTones
{
  if ([(TKToneClassicsTableViewController *)self isViewLoaded])
  {
    v3 = [(TKToneClassicsTableViewController *)self tableView];
    [v3 reloadData];
  }
}

- (void)didUpdateDetailText:(id)a3 ofToneClassicsPickerItem:(id)a4
{
  v6 = MEMORY[0x277CCAA70];
  v7 = a3;
  v11 = [v6 indexPathForRow:objc_msgSend(a4 inSection:{"classicToneIndex"), 0}];
  v8 = [(TKToneClassicsTableViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v11];

  v10 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [v10 updateCell:v9 withDetailText:v7];
}

- (void)loadView
{
  v3 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [v3 loadViewForTonePickerTableViewController:self];
}

- (void)layoutMarginsDidChangeInTonePickerTableView:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [v4 indexPathsForVisibleRows];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 cellForRowAtIndexPath:v10];
        v12 = -[TKTonePickerItem childItemAtIndex:](self->_classicTonesHeaderItem, "childItemAtIndex:", [v10 row]);
        [v5 tableView:v4 updateCell:v11 withSeparatorForPickerRowItem:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)separatorColorDidChangeInTonePickerTableView:(id)a3
{
  v4 = a3;
  v5 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  [v5 updateDividerContentColorToMatchSeparatorColorInTableView:v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper:a3];
  if (v5)
  {
    v6 = [(TKTonePickerItem *)self->_classicTonesHeaderItem numberOfChildren];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  if (!v8)
  {
    v9 = TLLogGeneral();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/iOS/TKToneClassicsTableViewController.m"];
      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 lastPathComponent];
        v14 = [MEMORY[0x277CCACC8] callStackSymbols];
        v55 = 136381443;
        v56 = "[TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:]";
        v57 = 2113;
        v58 = v13;
        v59 = 2049;
        v60 = 183;
        v61 = 2113;
        v62 = v14;
        _os_log_impl(&dword_21C599000, v12, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v55, 0x2Au);
      }
    }

    else
    {
      v11 = TLLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(TKToneClassicsTableViewController *)v11 tableView:v15 cellForRowAtIndexPath:v16, v17, v18, v19, v20, v21];
      }
    }

    v22 = TLLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:];
    }
  }

  v23 = -[TKTonePickerItem childItemAtIndex:](self->_classicTonesHeaderItem, "childItemAtIndex:", [v7 row]);
  if (!v23)
  {
    v24 = TLLogGeneral();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

    if (v25)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/iOS/TKToneClassicsTableViewController.m"];
      v27 = TLLogGeneral();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v26 lastPathComponent];
        v29 = [MEMORY[0x277CCACC8] callStackSymbols];
        v55 = 136381443;
        v56 = "[TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:]";
        v57 = 2113;
        v58 = v28;
        v59 = 2049;
        v60 = 185;
        v61 = 2113;
        v62 = v29;
        _os_log_impl(&dword_21C599000, v27, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v55, 0x2Au);
      }
    }

    else
    {
      v26 = TLLogGeneral();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(TKToneClassicsTableViewController *)v26 tableView:v30 cellForRowAtIndexPath:v31, v32, v33, v34, v35, v36];
      }
    }

    v37 = TLLogGeneral();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:];
    }
  }

  v38 = [v8 tableView:v6 cellForPickerRowItem:v23];
  if (!v38)
  {
    v39 = TLLogGeneral();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

    if (v40)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/iOS/TKToneClassicsTableViewController.m"];
      v42 = TLLogGeneral();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v41 lastPathComponent];
        v44 = [MEMORY[0x277CCACC8] callStackSymbols];
        v55 = 136381443;
        v56 = "[TKToneClassicsTableViewController tableView:cellForRowAtIndexPath:]";
        v57 = 2113;
        v58 = v43;
        v59 = 2049;
        v60 = 187;
        v61 = 2113;
        v62 = v44;
        _os_log_impl(&dword_21C599000, v42, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v55, 0x2Au);
      }
    }

    else
    {
      v41 = TLLogGeneral();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [(TKToneClassicsTableViewController *)v41 tableView:v45 cellForRowAtIndexPath:v46, v47, v48, v49, v50, v51];
      }
    }

    v52 = TLLogGeneral();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v55 = 138543874;
      v56 = self;
      v57 = 2114;
      v58 = v7;
      v59 = 2114;
      v60 = v23;
      _os_log_error_impl(&dword_21C599000, v52, OS_LOG_TYPE_ERROR, "%{public}@ is about to return a nil cell for row at index path %{public}@ with toneClassicsPickerItem = %{public}@.", &v55, 0x20u);
    }
  }

  v53 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  classicTonesHeaderItem = self->_classicTonesHeaderItem;
  v12 = [v8 row];

  v13 = [(TKTonePickerItem *)classicTonesHeaderItem childItemAtIndex:v12];
  [v14 tableView:v10 willDisplayCell:v9 forPickerRowItem:v13];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TKToneClassicsTableViewController *)self tonePickerTableViewControllerHelper];
  v8 = -[TKTonePickerItem childItemAtIndex:](self->_classicTonesHeaderItem, "childItemAtIndex:", [v6 row]);
  [v9 tableView:v7 didSelectRowAtIndexPath:v6 forPickerRowItem:v8];
}

- (TKTonePickerTableViewControllerHelper)tonePickerTableViewControllerHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_tonePickerTableViewControllerHelper);

  return WeakRetained;
}

- (void)tableView:cellForRowAtIndexPath:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_21C599000, v0, v1, "The tonePickerTableViewControllerHelper of %{public}@ was unexpectedly nil when UITableView requested the cell for row at index path %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)tableView:cellForRowAtIndexPath:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_21C599000, v0, v1, "%{public}@ unexpectedly found a nil toneClassicsPickerItem while generating cell for row at index path %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

@end