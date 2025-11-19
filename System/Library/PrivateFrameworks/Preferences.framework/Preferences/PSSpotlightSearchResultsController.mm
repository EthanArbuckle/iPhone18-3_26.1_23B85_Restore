@interface PSSpotlightSearchResultsController
- (PSSpotlightSearchResultsController)init;
- (PSSpotlightSearchResultsControllerDelegate)delegate;
- (double)iconWidth;
- (id)_itemForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_removeIconViewForSection:(id)a3;
- (void)_selectIndexPath:(id)a3;
- (void)_updateIconViews:(BOOL)a3;
- (void)searchQueryCompleted;
- (void)searchQueryFoundItems:(id)a3;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)setResults:(id)a3;
- (void)showSelectedSearchResult;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v2->_deviceOrientation = [v7 orientation];

    v8 = [(PSSpotlightSearchResultsController *)v2 view];
    [v8 directionalLayoutMargins];
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
  v4 = [(PSSpotlightSearchResultsController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = [(PSSpotlightSearchResultsController *)self tableView];
  [v5 setKeyboardDismissMode:1];

  v6 = [(PSSpotlightSearchResultsController *)self tableView];
  [v6 setAutoresizingMask:18];

  v7 = +[PSListController appearance];
  v8 = [v7 usesDarkTheme];

  v9 = [(PSSpotlightSearchResultsController *)self tableView];
  v10 = v9;
  if (v8)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  [v9 setIndicatorStyle:v11];

  v13 = [(PSSpotlightSearchResultsController *)self tableView];
  [v13 _accessibilitySetInterfaceStyleIntent:v12];
}

- (void)setResults:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_results, a3);
  if ([v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v5;
    v7 = v5;
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
          v13 = [v12 attributeSet];
          v14 = [v13 theme];

          if (v14)
          {
            v15 = v14;
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
    v20 = [v6 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = [v6 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * j), v28}];
          v26 = [(PSSpotlightSearchResultsController *)self tableData];
          [v26 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
    }

    v27 = [(PSSpotlightSearchResultsController *)self tableData];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __49__PSSpotlightSearchResultsController_setResults___block_invoke;
    v29[3] = &unk_1E71DEBC0;
    v29[4] = self;
    [v27 sortUsingComparator:v29];

    v5 = v28;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x1E69DC938];
  v8 = a4;
  v9 = [v7 currentDevice];
  [v9 orientation];

  v10.receiver = self;
  v10.super_class = PSSpotlightSearchResultsController;
  [(PSSpotlightSearchResultsController *)&v10 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PSSpotlightSearchResultsController *)self tableData];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PSSpotlightSearchResultsController *)self tableData];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(PSSpotlightSearchResultsController *)self _itemForIndexPath:a4];
  v8 = objc_opt_class();
  v9 = [v8 reuseIdentifier];
  v10 = [v6 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [[v8 alloc] initWithStyle:3 reuseIdentifier:v9];
  }

  v11 = [v7 attributeSet];
  v12 = [v11 subject];
  v13 = [v10 textLabel];
  [v13 setText:v12];

  v14 = [v7 attributeSet];
  v15 = [v14 contentDescription];
  v16 = [v10 detailTextLabel];
  [v16 setText:v15];

  [v10 setShouldIndentSeparator:1];
  [v10 setShouldIndentContent:0];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PSSpotlightSearchResultsController *)self _itemForIndexPath:v6];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E695DFF8];
    v10 = [v7 uniqueIdentifier];
    v11 = [v9 URLWithString:v10];

    v12 = [(PSSpotlightSearchResultsController *)self delegate];
    [v12 searchResultsController:self didSelectURL:v11];
  }

  [v13 deselectRowAtIndexPath:v6 animated:0];
}

- (id)_itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PSSpotlightSearchResultsController *)self tableData];

  if (v5)
  {
    v6 = [(PSSpotlightSearchResultsController *)self tableData];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
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
  v3 = [(PSSpotlightSearchResultsController *)self view];
  [v3 directionalLayoutMargins];
  v5 = v4;
  [(PSSpotlightSearchResultsController *)self iconWidth];
  v7 = v5 + v6;

  v8 = [(PSSpotlightSearchResultsController *)self tableView];
  [v8 separatorInset];
  v10 = v9;

  if (v10 != v7)
  {
    v11 = [(PSSpotlightSearchResultsController *)self tableView];
    [v11 setSeparatorInset:{0.0, v7, 0.0, 0.0}];
  }
}

- (void)_removeIconViewForSection:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_iconViewMap objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableArray *)self->_reusableIconViews addObject:v4];
    [v4 removeFromSuperview];
    [(NSMutableDictionary *)self->_iconViewMap removeObjectForKey:v5];
  }
}

- (void)_updateIconViews:(BOOL)a3
{
  v105 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_iconViewMap allKeys];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v97 objects:v104 count:16];
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
            objc_enumerationMutation(v4);
          }

          [(PSSpotlightSearchResultsController *)self _removeIconViewForSection:*(*(&v97 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v97 objects:v104 count:16];
      }

      while (v6);
    }
  }

  v9 = [(PSSpotlightSearchResultsController *)self tableView];
  [v9 contentOffset];
  v11 = v10;
  v12 = [(PSSpotlightSearchResultsController *)self tableView];
  [v12 adjustedContentInset];
  v14 = v13;

  v15 = [(PSSpotlightSearchResultsController *)self tableView];
  v16 = [v15 indexPathsForVisibleRows];

  v17 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v16, "count")}];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v18 = v16;
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
        v27 = [v26 unsignedIntegerValue];
        v28 = [(PSSpotlightSearchResultsController *)self view];
        [v28 directionalLayoutMargins];
        v30 = v29;

        [(PSSpotlightSearchResultsController *)self iconWidth];
        v32 = v31;
        v33 = [(NSMutableDictionary *)self->_iconViewMap objectForKeyedSubscript:v26];
        v34 = [(PSSpotlightSearchResultsController *)self tableView];
        v35 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v27];
        [v34 rectForRowAtIndexPath:v35];
        v37 = v36;
        v39 = v38;
        v41 = v40;

        if (v33)
        {
          goto LABEL_23;
        }

        v63 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v27];
        v33 = [(PSSpotlightSearchResultsController *)self _itemForIndexPath:v63];

        v64 = [(PSSpotlightSearchResultsController *)self delegate];
        v65 = [v33 attributeSet];
        v66 = [v65 theme];
        v67 = [v64 searchResultsController:self iconForCategory:v66];

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
        v69 = [(PSSpotlightSearchResultsController *)self tableView];
        [v69 addSubview:v68];

        [(NSMutableDictionary *)self->_iconViewMap setObject:v68 forKeyedSubscript:v26];
        v33 = v68;
        if (v68)
        {
LABEL_23:
          v42 = [(PSSpotlightSearchResultsController *)self tableView];
          [v42 rectForSection:v27];
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

          v59 = [MEMORY[0x1E69DC668] sharedApplication];
          v60 = [v59 userInterfaceLayoutDirection];

          if (v60 == 1)
          {
            v61 = [(PSSpotlightSearchResultsController *)self tableView];
            [v61 frame];
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
  if (!a3)
  {
    v72 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_iconViewMap];
    v73 = [v24 allObjects];
    [v72 removeObjectsForKeys:v73];

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

- (void)searchQueryFoundItems:(id)a3
{
  v4 = a3;
  v5 = [(PSSpotlightSearchResultsController *)self results];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  [(PSSpotlightSearchResultsController *)self setResults:v6];
  v7 = [(PSSpotlightSearchResultsController *)self tableView];
  [v7 reloadData];
}

- (void)searchQueryCompleted
{
  v2 = [(PSSpotlightSearchResultsController *)self tableView];
  [v2 reloadData];
}

- (void)selectPreviousSearchResult
{
  v3 = [(PSSpotlightSearchResultsController *)self tableView];
  v13 = [v3 indexPathForSelectedRow];

  v4 = v13;
  if (v13)
  {
    v5 = [v13 section];
    v6 = [v13 row];
    v7 = v6 - 1;
    if (v6 < 1)
    {
      v9 = v5-- < 1;
      v4 = v13;
      if (v9)
      {
        goto LABEL_7;
      }

      v10 = [(PSSpotlightSearchResultsController *)self tableView];
      v11 = [v10 numberOfRowsInSection:v5] - 1;

      v8 = MEMORY[0x1E696AC88];
      v7 = v11;
    }

    else
    {
      v8 = MEMORY[0x1E696AC88];
    }

    v12 = [v8 indexPathForRow:v7 inSection:v5];
    [(PSSpotlightSearchResultsController *)self _selectIndexPath:v12];

    v4 = v13;
  }

LABEL_7:
}

- (void)selectNextSearchResult
{
  v3 = [(PSSpotlightSearchResultsController *)self tableView];
  v14 = [v3 indexPathForSelectedRow];

  if (v14)
  {
    v4 = [v14 section];
    v5 = [v14 row];
    v6 = [(PSSpotlightSearchResultsController *)self tableView];
    v7 = [v6 numberOfRowsInSection:v4] - 1;

    if (v5 >= v7)
    {
      v11 = [(PSSpotlightSearchResultsController *)self tableView];
      v12 = [v11 numberOfSections] - 1;

      if (v4 >= v12)
      {
        goto LABEL_8;
      }

      v8 = MEMORY[0x1E696AC88];
      v10 = v4 + 1;
      v9 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696AC88];
      v9 = v5 + 1;
      v10 = v4;
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

- (void)_selectIndexPath:(id)a3
{
  v14 = a3;
  v4 = [(PSSpotlightSearchResultsController *)self tableView];
  v5 = [v4 indexPathsForVisibleRows];

  v6 = [v5 firstObject];
  v7 = [v6 compare:v14];

  if (v7 == 1)
  {
    v8 = [(PSSpotlightSearchResultsController *)self tableView];
    v9 = v8;
    v10 = v14;
    v11 = 1;
  }

  else
  {
    v12 = [v5 lastObject];
    v13 = [v12 compare:v14];

    v8 = [(PSSpotlightSearchResultsController *)self tableView];
    v9 = v8;
    v10 = v14;
    if (v13 == -1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }
  }

  [v8 selectRowAtIndexPath:v10 animated:1 scrollPosition:v11];
}

- (void)showSelectedSearchResult
{
  v3 = [(PSSpotlightSearchResultsController *)self tableView];
  v5 = [v3 indexPathForSelectedRow];

  if (v5)
  {
    v4 = [(PSSpotlightSearchResultsController *)self tableView];
    [(PSSpotlightSearchResultsController *)self tableView:v4 didSelectRowAtIndexPath:v5];

    [(PSSpotlightSearchResultsController *)self _selectIndexPath:v5];
  }
}

- (PSSpotlightSearchResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end