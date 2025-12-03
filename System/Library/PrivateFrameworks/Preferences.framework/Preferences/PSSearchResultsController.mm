@interface PSSearchResultsController
- (PSSearchResultsController)init;
- (PSSearchResultsControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_removeIconViewForSection:(id)section;
- (void)_updateIconViews:(BOOL)views;
- (void)loadView;
- (void)setSearchResults:(id)results;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillLayoutSubviews;
@end

@implementation PSSearchResultsController

- (PSSearchResultsController)init
{
  v8.receiver = self;
  v8.super_class = PSSearchResultsController;
  v2 = [(PSSearchResultsController *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    iconViewMap = v2->_iconViewMap;
    v2->_iconViewMap = v3;

    v5 = objc_opt_new();
    reusableIconViews = v2->_reusableIconViews;
    v2->_reusableIconViews = v5;
  }

  return v2;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v6 = objc_opt_new();
  [(UITableView *)self->_tableView setTableFooterView:v6];

  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setLayoutMarginsFollowReadableWidth:0];
  [(UITableView *)self->_tableView setAutoresizingMask:18];
  v7 = +[PSListController appearance];
  if ([v7 usesDarkTheme])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  [(UITableView *)self->_tableView setIndicatorStyle:v8];

  v9 = self->_tableView;

  [(PSSearchResultsController *)self setView:v9];
}

- (void)viewWillLayoutSubviews
{
  presentingViewController = [(PSSearchResultsController *)self presentingViewController];
  tabBarController = [presentingViewController tabBarController];

  if (tabBarController)
  {
    presentingViewController2 = [(PSSearchResultsController *)self presentingViewController];
    presentingViewController3 = [(PSSearchResultsController *)self presentingViewController];
    view = [presentingViewController3 view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v9 = v8;

    navigationBar = [presentingViewController2 navigationBar];
    [navigationBar frame];
    v11 = v9 + CGRectGetHeight(v15);

    [(UITableView *)self->_tableView setContentInset:v11, 0.0, v11, 0.0];
    tabBar = [tabBarController tabBar];
    [tabBar frame];
    [(UITableView *)self->_tableView setScrollIndicatorInsets:v11, 0.0, CGRectGetHeight(v16), 0.0];
  }
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  if (self->_searchResults != resultsCopy)
  {
    v6 = resultsCopy;
    objc_storeStrong(&self->_searchResults, results);
    [(PSSearchResultsController *)self reloadData];
    resultsCopy = v6;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  searchResults = self->_searchResults;
  viewCopy = view;
  v7 = [(PSSearchResults *)searchResults entryAtIndexPath:path];
  v8 = objc_opt_class();
  reuseIdentifier = [v8 reuseIdentifier];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier];

  if (!v10)
  {
    v10 = [[v8 alloc] initWithStyle:3 reuseIdentifier:reuseIdentifier];
  }

  v16 = 0;
  v11 = [v7 detailTextWithEffectiveTitle:&v16];
  v12 = v16;
  textLabel = [v10 textLabel];
  [textLabel setText:v12];

  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setText:v11];

  [v10 setShouldIndentSeparator:1];
  [v10 setShouldIndentContent:0];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  searchResults = self->_searchResults;
  pathCopy = path;
  viewCopy = view;
  v10 = [(PSSearchResults *)searchResults entryAtIndexPath:pathCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchResultsController:self didSelectSearchEntry:v10];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
}

- (void)_removeIconViewForSection:(id)section
{
  sectionCopy = section;
  v4 = [(NSMutableDictionary *)self->_iconViewMap objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableArray *)self->_reusableIconViews addObject:v4];
    [v4 removeFromSuperview];
    [(NSMutableDictionary *)self->_iconViewMap removeObjectForKey:sectionCopy];
  }
}

- (void)_updateIconViews:(BOOL)views
{
  v95 = *MEMORY[0x1E69E9840];
  if (views)
  {
    allKeys = [(NSMutableDictionary *)self->_iconViewMap allKeys];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v5 = [allKeys countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v88;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v88 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          [(PSSearchResultsController *)self _removeIconViewForSection:*(*(&v87 + 1) + 8 * i)];
        }

        v6 = [allKeys countByEnumeratingWithState:&v87 objects:v94 count:16];
      }

      while (v6);
    }
  }

  [(UITableView *)self->_tableView contentOffset];
  v10 = v9;
  [(UITableView *)self->_tableView contentInset];
  v12 = v11;
  indexPathsForVisibleRows = [(UITableView *)self->_tableView indexPathsForVisibleRows];
  v14 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(indexPathsForVisibleRows, "count")}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v15 = indexPathsForVisibleRows;
  v16 = [v15 countByEnumeratingWithState:&v83 objects:v93 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v84;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v84 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v83 + 1) + 8 * j), "section")}];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v83 objects:v93 count:16];
    }

    while (v17);
  }

  v69 = v15;

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v21 = v14;
  v22 = 0x1EA9B0000uLL;
  obj = v21;
  v74 = [v21 countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v74)
  {
    v72 = v10 + v12;
    v73 = *v80;
    do
    {
      v23 = 0;
      do
      {
        if (*v80 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v79 + 1) + 8 * v23);
        unsignedIntegerValue = [v24 unsignedIntegerValue];
        v26 = *(v22 + 2032);
        v27 = [*(&self->super.super.super.isa + v26) objectForKeyedSubscript:v24];
        tableView = self->_tableView;
        v29 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:unsignedIntegerValue];
        [(UITableView *)tableView rectForRowAtIndexPath:v29];
        v31 = v30;
        v33 = v32;
        v35 = v34;

        if (v27)
        {
          goto LABEL_23;
        }

        v27 = [(PSSearchResults *)self->_searchResults sectionEntryAtIndex:unsignedIntegerValue];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v58 = [WeakRetained searchResultsController:self iconForSearchEntry:v27];

        if (!v58)
        {
          goto LABEL_31;
        }

        if ([(NSMutableArray *)self->_reusableIconViews count])
        {
          v59 = [(NSMutableArray *)self->_reusableIconViews objectAtIndexedSubscript:0];
          [(NSMutableArray *)self->_reusableIconViews removeObjectAtIndex:0];
        }

        else
        {
          v59 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v31, v33, 60.0, v35}];
          [v59 setContentMode:4];
        }

        v22 = 0x1EA9B0000;
        [v59 setImage:v58];
        [(UITableView *)self->_tableView addSubview:v59];
        [*(&self->super.super.super.isa + v26) setObject:v59 forKeyedSubscript:v24];

        v27 = v59;
        if (v59)
        {
LABEL_23:
          [(UITableView *)self->_tableView rectForSection:unsignedIntegerValue];
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;
          [v27 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v96.origin.x = v37;
          v96.origin.y = v39;
          v96.size.width = v41;
          v96.size.height = v43;
          MaxY = CGRectGetMaxY(v96);
          v97.origin.x = v45;
          v97.origin.y = v47;
          v97.size.width = v49;
          v97.size.height = v35;
          v51 = (MaxY - CGRectGetHeight(v97));
          v52 = v72;
          if (v72 < v39)
          {
            v52 = v39;
          }

          if (v51 >= v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = v51;
          }

          mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection == 1)
          {
            [(UITableView *)self->_tableView frame];
            v45 = v56 - v49;
          }

          [v27 setFrame:{v45, v53, v49, v35}];
LABEL_31:
        }

        ++v23;
      }

      while (v74 != v23);
      v21 = obj;
      v60 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
      v74 = v60;
    }

    while (v60);
  }

  v61 = v69;
  if (!views)
  {
    v62 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(&self->super.super.super.isa + *(v22 + 2032))];
    allObjects = [v21 allObjects];
    [v62 removeObjectsForKeys:allObjects];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v75 objects:v91 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v76;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v76 != v67)
          {
            objc_enumerationMutation(v64);
          }

          [(PSSearchResultsController *)self _removeIconViewForSection:*(*(&v75 + 1) + 8 * k), v69];
        }

        v66 = [v64 countByEnumeratingWithState:&v75 objects:v91 count:16];
      }

      while (v66);
    }

    v21 = obj;
  }
}

- (PSSearchResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end