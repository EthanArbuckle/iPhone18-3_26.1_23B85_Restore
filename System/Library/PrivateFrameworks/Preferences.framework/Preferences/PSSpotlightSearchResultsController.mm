@interface PSSpotlightSearchResultsController
- (PSSpotlightSearchResultsController)init;
- (PSSpotlightSearchResultsControllerDelegate)delegate;
- (double)iconWidth;
- (id)_itemForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_removeIconViewForSection:(id)section;
- (void)_selectIndexPath:(id)path;
- (void)_updateIconViews:(BOOL)views;
- (void)searchQueryCompleted;
- (void)searchQueryFoundItems:(id)items;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)setResults:(id)results;
- (void)showSelectedSearchResult;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PSSpotlightSearchResultsController

- (PSSpotlightSearchResultsController)init
{
  v11.receiver = self;
  v11.super_class = PSSpotlightSearchResultsController;
  v2 = [(PSSpotlightSearchResultsController *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    iconViewMap = v2->_iconViewMap;
    v2->_iconViewMap = v3;

    v5 = objc_opt_new();
    reusableIconViews = v2->_reusableIconViews;
    v2->_reusableIconViews = v5;

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2->_deviceOrientation = [currentDevice orientation];

    view = [(PSSpotlightSearchResultsController *)v2 view];
    [view directionalLayoutMargins];
    v2->originalInset = v9;
  }

  return v2;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PSSpotlightSearchResultsController;
  [(PSSpotlightSearchResultsController *)&v14 viewDidLoad];
  v3 = objc_opt_new();
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView setTableFooterView:v3];

  tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView2 setKeyboardDismissMode:1];

  tableView3 = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView3 setAutoresizingMask:18];

  v7 = +[PSListController appearance];
  usesDarkTheme = [v7 usesDarkTheme];

  tableView4 = [(PSSpotlightSearchResultsController *)self tableView];
  v10 = tableView4;
  if (usesDarkTheme)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  if (usesDarkTheme)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  [tableView4 setIndicatorStyle:v11];

  tableView5 = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView5 _accessibilitySetInterfaceStyleIntent:v12];
}

- (void)setResults:(id)results
{
  v40 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  objc_storeStrong(&self->_results, results);
  if ([resultsCopy count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = resultsCopy;
    v7 = resultsCopy;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          attributeSet = [v12 attributeSet];
          theme = [attributeSet theme];

          if (theme)
          {
            v15 = theme;
          }

          else
          {
            v15 = &stru_1EFE45030;
          }

          v16 = [v6 objectForKeyedSubscript:v15];

          if (!v16)
          {
            v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v6 setObject:v17 forKeyedSubscript:v15];
          }

          v18 = [v6 objectForKeyedSubscript:v15];
          [v18 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PSSpotlightSearchResultsController *)self setTableData:v19];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allKeys = [v6 allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = [v6 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * j), v28}];
          tableData = [(PSSpotlightSearchResultsController *)self tableData];
          [tableData addObject:v25];
        }

        v22 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
    }

    tableData2 = [(PSSpotlightSearchResultsController *)self tableData];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __49__PSSpotlightSearchResultsController_setResults___block_invoke;
    v29[3] = &unk_1E71DEBC0;
    v29[4] = self;
    [tableData2 sortUsingComparator:v29];

    resultsCopy = v28;
  }
}

uint64_t __49__PSSpotlightSearchResultsController_setResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  v7 = [v6 attributeSet];
  v8 = [v7 theme];

  v9 = [v5 objectAtIndexedSubscript:0];

  v10 = [v9 attributeSet];
  v11 = [v10 theme];

  v12 = [*(a1 + 32) delegate];
  v13 = [v12 searchResultsController:*(a1 + 32) sortCategory1:v8 sortCategory2:v11];

  return v13;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E69DC938];
  coordinatorCopy = coordinator;
  currentDevice = [v7 currentDevice];
  [currentDevice orientation];

  v10.receiver = self;
  v10.super_class = PSSpotlightSearchResultsController;
  [(PSSpotlightSearchResultsController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  tableData = [(PSSpotlightSearchResultsController *)self tableData];
  v4 = [tableData count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableData = [(PSSpotlightSearchResultsController *)self tableData];
  v6 = [tableData objectAtIndexedSubscript:section];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(PSSpotlightSearchResultsController *)self _itemForIndexPath:path];
  v8 = objc_opt_class();
  reuseIdentifier = [v8 reuseIdentifier];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier];

  if (!v10)
  {
    v10 = [[v8 alloc] initWithStyle:3 reuseIdentifier:reuseIdentifier];
  }

  attributeSet = [v7 attributeSet];
  subject = [attributeSet subject];
  textLabel = [v10 textLabel];
  [textLabel setText:subject];

  attributeSet2 = [v7 attributeSet];
  contentDescription = [attributeSet2 contentDescription];
  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setText:contentDescription];

  [v10 setShouldIndentSeparator:1];
  [v10 setShouldIndentContent:0];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PSSpotlightSearchResultsController *)self _itemForIndexPath:pathCopy];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E695DFF8];
    uniqueIdentifier = [v7 uniqueIdentifier];
    v11 = [v9 URLWithString:uniqueIdentifier];

    delegate = [(PSSpotlightSearchResultsController *)self delegate];
    [delegate searchResultsController:self didSelectURL:v11];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
}

- (id)_itemForIndexPath:(id)path
{
  pathCopy = path;
  tableData = [(PSSpotlightSearchResultsController *)self tableData];

  if (tableData)
  {
    tableData2 = [(PSSpotlightSearchResultsController *)self tableData];
    v7 = [tableData2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)iconWidth
{
  if (iconWidth_onceToken_0 != -1)
  {
    [PSSpotlightSearchResultsController iconWidth];
  }

  return *&iconWidth_iconWidth_0;
}

void __47__PSSpotlightSearchResultsController_iconWidth__block_invoke()
{
  v1 = PSBlankIconImage();
  [v1 size];
  *&iconWidth_iconWidth_0 = v0 + 15.0;
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = PSSpotlightSearchResultsController;
  [(PSSpotlightSearchResultsController *)&v12 viewDidLayoutSubviews];
  view = [(PSSpotlightSearchResultsController *)self view];
  [view directionalLayoutMargins];
  v5 = v4;
  [(PSSpotlightSearchResultsController *)self iconWidth];
  v7 = v5 + v6;

  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView separatorInset];
  v10 = v9;

  if (v10 != v7)
  {
    tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
    [tableView2 setSeparatorInset:{0.0, v7, 0.0, 0.0}];
  }
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
  v105 = *MEMORY[0x1E69E9840];
  if (views)
  {
    allKeys = [(NSMutableDictionary *)self->_iconViewMap allKeys];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v5 = [allKeys countByEnumeratingWithState:&v97 objects:v104 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v98;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v98 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          [(PSSpotlightSearchResultsController *)self _removeIconViewForSection:*(*(&v97 + 1) + 8 * i)];
        }

        v6 = [allKeys countByEnumeratingWithState:&v97 objects:v104 count:16];
      }

      while (v6);
    }
  }

  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView contentOffset];
  v11 = v10;
  tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView2 adjustedContentInset];
  v14 = v13;

  tableView3 = [(PSSpotlightSearchResultsController *)self tableView];
  indexPathsForVisibleRows = [tableView3 indexPathsForVisibleRows];

  v17 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(indexPathsForVisibleRows, "count")}];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v18 = indexPathsForVisibleRows;
  v19 = [v18 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v94;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v94 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v93 + 1) + 8 * j), "section")}];
        [v17 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v20);
  }

  v79 = v18;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v24 = v17;
  obj = v24;
  v84 = [v24 countByEnumeratingWithState:&v89 objects:v102 count:16];
  if (v84)
  {
    v82 = v11 + v14;
    v83 = *v90;
    do
    {
      v25 = 0;
      do
      {
        if (*v90 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v89 + 1) + 8 * v25);
        unsignedIntegerValue = [v26 unsignedIntegerValue];
        view = [(PSSpotlightSearchResultsController *)self view];
        [view directionalLayoutMargins];
        v30 = v29;

        [(PSSpotlightSearchResultsController *)self iconWidth];
        v32 = v31;
        v33 = [(NSMutableDictionary *)self->_iconViewMap objectForKeyedSubscript:v26];
        tableView4 = [(PSSpotlightSearchResultsController *)self tableView];
        v35 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:unsignedIntegerValue];
        [tableView4 rectForRowAtIndexPath:v35];
        v37 = v36;
        v39 = v38;
        v41 = v40;

        if (v33)
        {
          goto LABEL_23;
        }

        v63 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:unsignedIntegerValue];
        v33 = [(PSSpotlightSearchResultsController *)self _itemForIndexPath:v63];

        delegate = [(PSSpotlightSearchResultsController *)self delegate];
        attributeSet = [v33 attributeSet];
        theme = [attributeSet theme];
        v67 = [delegate searchResultsController:self iconForCategory:theme];

        if (!v67)
        {
          goto LABEL_31;
        }

        if ([(NSMutableArray *)self->_reusableIconViews count])
        {
          v68 = [(NSMutableArray *)self->_reusableIconViews objectAtIndexedSubscript:0];
          [(NSMutableArray *)self->_reusableIconViews removeObjectAtIndex:0];
        }

        else
        {
          v68 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v37, v39, v32, v41}];
          [v68 setContentMode:4];
        }

        [v68 setImage:v67];
        tableView5 = [(PSSpotlightSearchResultsController *)self tableView];
        [tableView5 addSubview:v68];

        [(NSMutableDictionary *)self->_iconViewMap setObject:v68 forKeyedSubscript:v26];
        v33 = v68;
        if (v68)
        {
LABEL_23:
          tableView6 = [(PSSpotlightSearchResultsController *)self tableView];
          [tableView6 rectForSection:unsignedIntegerValue];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;

          [v33 frame];
          v52 = v51;
          v54 = v53;
          v106.origin.x = v44;
          v106.origin.y = v46;
          v106.size.width = v48;
          v106.size.height = v50;
          MaxY = CGRectGetMaxY(v106);
          v107.origin.x = v30;
          v107.origin.y = v52;
          v107.size.width = v54;
          v107.size.height = v41;
          v56 = (MaxY - CGRectGetHeight(v107));
          v57 = v82;
          if (v82 < v46)
          {
            v57 = v46;
          }

          if (v56 >= v57)
          {
            v58 = v57;
          }

          else
          {
            v58 = v56;
          }

          mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection == 1)
          {
            tableView7 = [(PSSpotlightSearchResultsController *)self tableView];
            [tableView7 frame];
            v30 = v62 - (v30 + v54);
          }

          [v33 setFrame:{v30, v58, v54, v41}];
LABEL_31:
        }

        ++v25;
      }

      while (v84 != v25);
      v24 = obj;
      v70 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
      v84 = v70;
    }

    while (v70);
  }

  v71 = v79;
  if (!views)
  {
    v72 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_iconViewMap];
    allObjects = [v24 allObjects];
    [v72 removeObjectsForKeys:allObjects];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v74 = v72;
    v75 = [v74 countByEnumeratingWithState:&v85 objects:v101 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v86;
      do
      {
        for (k = 0; k != v76; ++k)
        {
          if (*v86 != v77)
          {
            objc_enumerationMutation(v74);
          }

          [(PSSpotlightSearchResultsController *)self _removeIconViewForSection:*(*(&v85 + 1) + 8 * k), v79];
        }

        v76 = [v74 countByEnumeratingWithState:&v85 objects:v101 count:16];
      }

      while (v76);
    }

    v24 = obj;
  }
}

- (void)searchQueryFoundItems:(id)items
{
  itemsCopy = items;
  results = [(PSSpotlightSearchResultsController *)self results];
  v6 = [itemsCopy arrayByAddingObjectsFromArray:results];

  [(PSSpotlightSearchResultsController *)self setResults:v6];
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView reloadData];
}

- (void)searchQueryCompleted
{
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  [tableView reloadData];
}

- (void)selectPreviousSearchResult
{
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  v4 = indexPathForSelectedRow;
  if (indexPathForSelectedRow)
  {
    section = [indexPathForSelectedRow section];
    v6 = [indexPathForSelectedRow row];
    v7 = v6 - 1;
    if (v6 < 1)
    {
      v9 = section-- < 1;
      v4 = indexPathForSelectedRow;
      if (v9)
      {
        goto LABEL_7;
      }

      tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
      v11 = [tableView2 numberOfRowsInSection:section] - 1;

      v8 = MEMORY[0x1E696AC88];
      v7 = v11;
    }

    else
    {
      v8 = MEMORY[0x1E696AC88];
    }

    v12 = [v8 indexPathForRow:v7 inSection:section];
    [(PSSpotlightSearchResultsController *)self _selectIndexPath:v12];

    v4 = indexPathForSelectedRow;
  }

LABEL_7:
}

- (void)selectNextSearchResult
{
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    section = [indexPathForSelectedRow section];
    v5 = [indexPathForSelectedRow row];
    tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
    v7 = [tableView2 numberOfRowsInSection:section] - 1;

    if (v5 >= v7)
    {
      tableView3 = [(PSSpotlightSearchResultsController *)self tableView];
      v12 = [tableView3 numberOfSections] - 1;

      if (section >= v12)
      {
        goto LABEL_8;
      }

      v8 = MEMORY[0x1E696AC88];
      v10 = section + 1;
      v9 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696AC88];
      v9 = v5 + 1;
      v10 = section;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696AC88];
    v9 = 0;
    v10 = 0;
  }

  v13 = [v8 indexPathForRow:v9 inSection:v10];
  [(PSSpotlightSearchResultsController *)self _selectIndexPath:v13];

LABEL_8:
}

- (void)_selectIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  firstObject = [indexPathsForVisibleRows firstObject];
  v7 = [firstObject compare:pathCopy];

  if (v7 == 1)
  {
    tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
    v9 = tableView2;
    v10 = pathCopy;
    v11 = 1;
  }

  else
  {
    lastObject = [indexPathsForVisibleRows lastObject];
    v13 = [lastObject compare:pathCopy];

    tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
    v9 = tableView2;
    v10 = pathCopy;
    if (v13 == -1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }
  }

  [tableView2 selectRowAtIndexPath:v10 animated:1 scrollPosition:v11];
}

- (void)showSelectedSearchResult
{
  tableView = [(PSSpotlightSearchResultsController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(PSSpotlightSearchResultsController *)self tableView];
    [(PSSpotlightSearchResultsController *)self tableView:tableView2 didSelectRowAtIndexPath:indexPathForSelectedRow];

    [(PSSpotlightSearchResultsController *)self _selectIndexPath:indexPathForSelectedRow];
  }
}

- (PSSpotlightSearchResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end