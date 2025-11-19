@interface STAllowanceItemSearchResultsController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation STAllowanceItemSearchResultsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = STAllowanceItemSearchResultsController;
  [(STAllowanceItemSearchResultsController *)&v6 viewDidLoad];
  v3 = [(STAllowanceItemSearchResultsController *)self tableView];
  [v3 setEditing:1];
  v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v3 setTableHeaderView:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSearchResultsController.viewDidLoad", v5, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = STAllowanceItemSearchResultsController;
  [(STAllowanceItemSearchResultsController *)&v7 viewWillAppear:a3];
  v4 = [(STAllowanceItemSearchResultsController *)self selectedWebDomains];
  [(STAllowanceItemSearchResultsController *)self setInitialWebDomains:v4];

  v5 = [(STAllowanceItemSearchResultsController *)self selectedBundleIdentifiers];
  [(STAllowanceItemSearchResultsController *)self setInitalBundleIdentifiers:v5];

  [(STAllowanceItemSearchResultsController *)self setHasNewSelection:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSearchResultsController.viewWillAppear", v6, 2u);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AllowanceItem"];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  [v7 setSelectedBackgroundView:v8];
  v10 = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  [v7 setUserInteractionEnabled:v15];
  v16 = [v7 iconImageView];
  v17 = v16;
  v18 = 0.5;
  if (v15)
  {
    v18 = 1.0;
  }

  [v16 setAlpha:v18];
  v19 = [MEMORY[0x277D4BD98] sharedCache];
  v20 = [v12 objectForKeyedSubscript:@"CategoryIdentifier"];
  v21 = *MEMORY[0x277D4BCD8];
  v56 = v20;
  v57 = v14;
  v58 = v8;
  if ([v20 isEqualToString:*MEMORY[0x277D4BCD8]])
  {
    v55 = [MEMORY[0x277D75C80] currentTraitCollection];
    v54 = [v55 userInterfaceStyle];
    v22 = [v12 name];
    if ([v22 length])
    {
      v51 = v21;
      v52 = v19;
      v53 = v17;
      v23 = objc_opt_new();
      [v23 setScheme:@"https"];
      [v23 setHost:v22];
      v50 = [v23 URL];
      v24 = [v50 _lp_highLevelDomain];
      v25 = [v23 host];
      v26 = [v23 URL];
      v27 = v24;
      v28 = v25;
      v29 = v26;
      if ([v27 length])
      {
        v30 = [v27 substringToIndex:1];
        v31 = [v30 uppercaseString];
      }

      else
      {
        v36 = [v28 substringToIndex:1];
        v31 = [v36 uppercaseString];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STAllowanceItemSearchResultsController tableView:v29 cellForRowAtIndexPath:v28];
        }
      }

      v21 = v51;

      v19 = v52;
      v17 = v53;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STAllowanceItemSearchResultsController tableView:v22 cellForRowAtIndexPath:?];
      }

      v31 = 0;
    }

    v37 = [v19 monogramImageForInitial:v31 useDarkColors:v54 == 2];
    [v17 setImage:v37];
  }

  else
  {
    v32 = [v12 identifier];
    v33 = [v19 imageForBundleIdentifier:v32];
    if (v33)
    {
      [v17 setImage:v33];
    }

    else
    {
      [v19 imageForBlankApplicationIcon];
      v35 = v34 = v17;
      [v34 setImage:v35];

      v17 = v34;
    }
  }

  v38 = [v7 nameLabel];
  v39 = [v12 name];
  [v38 setText:v39];

  [v38 setEnabled:v15];
  v40 = [v7 dashLabel];
  [v40 setEnabled:v15];

  v41 = [v7 categoryLabel];
  v42 = v56;
  if ([v42 isEqualToString:v21])
  {
    +[STScreenTimeSettingsUIBundle bundle];
    v43 = v12;
    v44 = v19;
    v46 = v45 = v17;
    v47 = [v46 localizedStringForKey:@"MostUsedWebsites" value:&stru_28766E5A8 table:0];

    v17 = v45;
    v19 = v44;
    v12 = v43;
  }

  else
  {
    if (([v42 isEqualToString:*MEMORY[0x277CF9610]] & 1) != 0 || (objc_msgSend(v42, "isEqualToString:", *MEMORY[0x277CF9620]) & 1) != 0 || objc_msgSend(v42, "isEqualToString:", *MEMORY[0x277CF9618]))
    {
      v48 = [MEMORY[0x277CF9658] shortLocalizedNameForIdentifier:v42];
    }

    else
    {
      v48 = STCategoryNameWithIdentifier();
    }

    v47 = v48;
  }

  [v41 setText:v47];
  [v41 setEnabled:v15];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  if (([v7 isUserInteractionEnabled] & 1) == 0 && (objc_msgSend(v7, "isSelected") & 1) == 0)
  {
    [v7 setUserInteractionEnabled:1];
    [v19 selectRowAtIndexPath:v8 animated:0 scrollPosition:0];
    [v7 setUserInteractionEnabled:0];
  }

  [v7 separatorInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v7 contentView];
  [v15 frame];
  MinX = CGRectGetMinX(v21);
  v17 = [v7 nameLabel];
  [v17 frame];
  v18 = MinX + CGRectGetMinX(v22);

  [v7 setSeparatorInset:{v10, v18, v12, v14}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers];
  v7 = [v5 row];

  v16 = [v6 objectAtIndexedSubscript:v7];

  v8 = [v16 objectForKeyedSubscript:@"CategoryIdentifier"];
  v9 = [(STAllowanceItemSearchResultsController *)self selectedWebDomains];
  v10 = [(STAllowanceItemSearchResultsController *)self selectedBundleIdentifiers];
  v11 = [v8 isEqualToString:*MEMORY[0x277D4BCD8]];
  v12 = [v16 identifier];
  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  [v13 addObject:v12];

  v14 = [(STAllowanceItemSearchResultsController *)self initialWebDomains];
  if ([v9 isSubsetOfOrderedSet:v14])
  {
    v15 = [(STAllowanceItemSearchResultsController *)self initalBundleIdentifiers];
    -[STAllowanceItemSearchResultsController setHasNewSelection:](self, "setHasNewSelection:", [v10 isSubsetOfOrderedSet:v15] ^ 1);
  }

  else
  {
    [(STAllowanceItemSearchResultsController *)self setHasNewSelection:1];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers];
  v7 = [v5 row];

  v16 = [v6 objectAtIndexedSubscript:v7];

  v8 = [v16 objectForKeyedSubscript:@"CategoryIdentifier"];
  v9 = [(STAllowanceItemSearchResultsController *)self selectedWebDomains];
  v10 = [(STAllowanceItemSearchResultsController *)self selectedBundleIdentifiers];
  v11 = [v8 isEqualToString:*MEMORY[0x277D4BCD8]];
  v12 = [v16 identifier];
  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  [v13 removeObject:v12];

  v14 = [(STAllowanceItemSearchResultsController *)self initialWebDomains];
  if ([v9 isSubsetOfOrderedSet:v14])
  {
    v15 = [(STAllowanceItemSearchResultsController *)self initalBundleIdentifiers];
    -[STAllowanceItemSearchResultsController setHasNewSelection:](self, "setHasNewSelection:", [v10 isSubsetOfOrderedSet:v15] ^ 1);
  }

  else
  {
    [(STAllowanceItemSearchResultsController *)self setHasNewSelection:1];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v30 = v4;
  v6 = [v4 searchBar];
  v7 = [v6 text];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = self;
  v8 = [(STAllowanceItemSearchResultsController *)self allowanceItemSpecifiers];
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    v12 = *MEMORY[0x277D4BCD8];
    v33 = *MEMORY[0x277CF9610];
    v32 = *MEMORY[0x277CF9620];
    v31 = *MEMORY[0x277CF9618];
    do
    {
      v13 = 0;
      v34 = v10;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = [v14 name];
        v16 = [v15 localizedCaseInsensitiveContainsString:v7];

        if (v16)
        {
          [v5 addObject:v14];
        }

        else
        {
          v17 = [v14 objectForKeyedSubscript:@"CategoryIdentifier"];
          if ([v17 isEqualToString:v12])
          {
            +[STScreenTimeSettingsUIBundle bundle];
            v18 = v7;
            v19 = v11;
            v20 = v5;
            v21 = v12;
            v23 = v22 = v8;
            v24 = [v23 localizedStringForKey:@"MostUsedWebsites" value:&stru_28766E5A8 table:0];

            v8 = v22;
            v12 = v21;
            v5 = v20;
            v11 = v19;
            v7 = v18;
            v10 = v34;
          }

          else
          {
            if (([v17 isEqualToString:v33] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v32) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v31))
            {
              v25 = [MEMORY[0x277CF9658] shortLocalizedNameForIdentifier:v17];
            }

            else
            {
              v25 = STCategoryNameWithIdentifier();
            }

            v24 = v25;
          }

          if ([v24 localizedCaseInsensitiveContainsString:v7])
          {
            [v5 addObject:v14];
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v26 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v10 = v26;
    }

    while (v26);
  }

  [(STAllowanceItemSearchResultsController *)v29 setFilteredAllowanceItemSpecifiers:v5];
  v27 = [(STAllowanceItemSearchResultsController *)v29 tableView];
  [v27 reloadData];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __81__STAllowanceItemSearchResultsController_updateSearchResultsForSearchController___block_invoke;
  v35[3] = &unk_279B7C9C8;
  v35[4] = v29;
  v36 = v27;
  v28 = v27;
  [v5 enumerateObjectsUsingBlock:v35];
}

void __81__STAllowanceItemSearchResultsController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v15 = [v5 objectForKeyedSubscript:@"CategoryIdentifier"];
  v6 = [v15 isEqualToString:*MEMORY[0x277D4BCD8]];
  v7 = *(a1 + 32);
  if (!v6)
  {
    v11 = [v7 selectedBundleIdentifiers];
    v12 = [v5 identifier];

    v13 = [v11 containsObject:v12];
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [v7 selectedWebDomains];
  v9 = [v5 identifier];

  v10 = [v8 containsObject:v9];
  if (v10)
  {
LABEL_5:
    v14 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
    [*(a1 + 40) selectRowAtIndexPath:v14 animated:0 scrollPosition:0];
  }

LABEL_6:
}

- (void)tableView:(uint64_t)a1 cellForRowAtIndexPath:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to extract high level domain for URL: %@. Creating initial for host instead: %@", &v2, 0x16u);
}

- (void)tableView:(uint64_t)a1 cellForRowAtIndexPath:.cold.2(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Web domain name must have at least one character for monogram: %@", &v1, 0xCu);
}

@end