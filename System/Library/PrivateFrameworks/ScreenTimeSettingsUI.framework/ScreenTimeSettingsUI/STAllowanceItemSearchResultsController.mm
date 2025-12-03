@interface STAllowanceItemSearchResultsController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STAllowanceItemSearchResultsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = STAllowanceItemSearchResultsController;
  [(STAllowanceItemSearchResultsController *)&v6 viewDidLoad];
  tableView = [(STAllowanceItemSearchResultsController *)self tableView];
  [tableView setEditing:1];
  v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [tableView setTableHeaderView:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSearchResultsController.viewDidLoad", v5, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = STAllowanceItemSearchResultsController;
  [(STAllowanceItemSearchResultsController *)&v7 viewWillAppear:appear];
  selectedWebDomains = [(STAllowanceItemSearchResultsController *)self selectedWebDomains];
  [(STAllowanceItemSearchResultsController *)self setInitialWebDomains:selectedWebDomains];

  selectedBundleIdentifiers = [(STAllowanceItemSearchResultsController *)self selectedBundleIdentifiers];
  [(STAllowanceItemSearchResultsController *)self setInitalBundleIdentifiers:selectedBundleIdentifiers];

  [(STAllowanceItemSearchResultsController *)self setHasNewSelection:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceItemSearchResultsController.viewWillAppear", v6, 2u);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AllowanceItem"];
  v8 = objc_opt_new();
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:clearColor];

  [v7 setSelectedBackgroundView:v8];
  filteredAllowanceItemSpecifiers = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers];
  v11 = [pathCopy row];

  v12 = [filteredAllowanceItemSpecifiers objectAtIndexedSubscript:v11];

  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
  v14 = v13;
  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [v7 setUserInteractionEnabled:bOOLValue];
  iconImageView = [v7 iconImageView];
  v17 = iconImageView;
  v18 = 0.5;
  if (bOOLValue)
  {
    v18 = 1.0;
  }

  [iconImageView setAlpha:v18];
  mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
  v20 = [v12 objectForKeyedSubscript:@"CategoryIdentifier"];
  v21 = *MEMORY[0x277D4BCD8];
  v56 = v20;
  v57 = v14;
  v58 = v8;
  if ([v20 isEqualToString:*MEMORY[0x277D4BCD8]])
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    userInterfaceStyle = [currentTraitCollection userInterfaceStyle];
    name = [v12 name];
    if ([name length])
    {
      v51 = v21;
      v52 = mEMORY[0x277D4BD98];
      v53 = v17;
      v23 = objc_opt_new();
      [v23 setScheme:@"https"];
      [v23 setHost:name];
      v50 = [v23 URL];
      _lp_highLevelDomain = [v50 _lp_highLevelDomain];
      host = [v23 host];
      v26 = [v23 URL];
      v27 = _lp_highLevelDomain;
      v28 = host;
      v29 = v26;
      if ([v27 length])
      {
        v30 = [v27 substringToIndex:1];
        uppercaseString = [v30 uppercaseString];
      }

      else
      {
        v36 = [v28 substringToIndex:1];
        uppercaseString = [v36 uppercaseString];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STAllowanceItemSearchResultsController tableView:v29 cellForRowAtIndexPath:v28];
        }
      }

      v21 = v51;

      mEMORY[0x277D4BD98] = v52;
      v17 = v53;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STAllowanceItemSearchResultsController tableView:name cellForRowAtIndexPath:?];
      }

      uppercaseString = 0;
    }

    v37 = [mEMORY[0x277D4BD98] monogramImageForInitial:uppercaseString useDarkColors:userInterfaceStyle == 2];
    [v17 setImage:v37];
  }

  else
  {
    identifier = [v12 identifier];
    v33 = [mEMORY[0x277D4BD98] imageForBundleIdentifier:identifier];
    if (v33)
    {
      [v17 setImage:v33];
    }

    else
    {
      [mEMORY[0x277D4BD98] imageForBlankApplicationIcon];
      v35 = v34 = v17;
      [v34 setImage:v35];

      v17 = v34;
    }
  }

  nameLabel = [v7 nameLabel];
  name2 = [v12 name];
  [nameLabel setText:name2];

  [nameLabel setEnabled:bOOLValue];
  dashLabel = [v7 dashLabel];
  [dashLabel setEnabled:bOOLValue];

  categoryLabel = [v7 categoryLabel];
  v42 = v56;
  if ([v42 isEqualToString:v21])
  {
    +[STScreenTimeSettingsUIBundle bundle];
    v43 = v12;
    v44 = mEMORY[0x277D4BD98];
    v46 = v45 = v17;
    v47 = [v46 localizedStringForKey:@"MostUsedWebsites" value:&stru_28766E5A8 table:0];

    v17 = v45;
    mEMORY[0x277D4BD98] = v44;
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

  [categoryLabel setText:v47];
  [categoryLabel setEnabled:bOOLValue];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (([cellCopy isUserInteractionEnabled] & 1) == 0 && (objc_msgSend(cellCopy, "isSelected") & 1) == 0)
  {
    [cellCopy setUserInteractionEnabled:1];
    [viewCopy selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
    [cellCopy setUserInteractionEnabled:0];
  }

  [cellCopy separatorInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  contentView = [cellCopy contentView];
  [contentView frame];
  MinX = CGRectGetMinX(v21);
  nameLabel = [cellCopy nameLabel];
  [nameLabel frame];
  v18 = MinX + CGRectGetMinX(v22);

  [cellCopy setSeparatorInset:{v10, v18, v12, v14}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  filteredAllowanceItemSpecifiers = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers];
  v7 = [pathCopy row];

  v16 = [filteredAllowanceItemSpecifiers objectAtIndexedSubscript:v7];

  v8 = [v16 objectForKeyedSubscript:@"CategoryIdentifier"];
  selectedWebDomains = [(STAllowanceItemSearchResultsController *)self selectedWebDomains];
  selectedBundleIdentifiers = [(STAllowanceItemSearchResultsController *)self selectedBundleIdentifiers];
  v11 = [v8 isEqualToString:*MEMORY[0x277D4BCD8]];
  identifier = [v16 identifier];
  if (v11)
  {
    v13 = selectedWebDomains;
  }

  else
  {
    v13 = selectedBundleIdentifiers;
  }

  [v13 addObject:identifier];

  initialWebDomains = [(STAllowanceItemSearchResultsController *)self initialWebDomains];
  if ([selectedWebDomains isSubsetOfOrderedSet:initialWebDomains])
  {
    initalBundleIdentifiers = [(STAllowanceItemSearchResultsController *)self initalBundleIdentifiers];
    -[STAllowanceItemSearchResultsController setHasNewSelection:](self, "setHasNewSelection:", [selectedBundleIdentifiers isSubsetOfOrderedSet:initalBundleIdentifiers] ^ 1);
  }

  else
  {
    [(STAllowanceItemSearchResultsController *)self setHasNewSelection:1];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  filteredAllowanceItemSpecifiers = [(STAllowanceItemSearchResultsController *)self filteredAllowanceItemSpecifiers];
  v7 = [pathCopy row];

  v16 = [filteredAllowanceItemSpecifiers objectAtIndexedSubscript:v7];

  v8 = [v16 objectForKeyedSubscript:@"CategoryIdentifier"];
  selectedWebDomains = [(STAllowanceItemSearchResultsController *)self selectedWebDomains];
  selectedBundleIdentifiers = [(STAllowanceItemSearchResultsController *)self selectedBundleIdentifiers];
  v11 = [v8 isEqualToString:*MEMORY[0x277D4BCD8]];
  identifier = [v16 identifier];
  if (v11)
  {
    v13 = selectedWebDomains;
  }

  else
  {
    v13 = selectedBundleIdentifiers;
  }

  [v13 removeObject:identifier];

  initialWebDomains = [(STAllowanceItemSearchResultsController *)self initialWebDomains];
  if ([selectedWebDomains isSubsetOfOrderedSet:initialWebDomains])
  {
    initalBundleIdentifiers = [(STAllowanceItemSearchResultsController *)self initalBundleIdentifiers];
    -[STAllowanceItemSearchResultsController setHasNewSelection:](self, "setHasNewSelection:", [selectedBundleIdentifiers isSubsetOfOrderedSet:initalBundleIdentifiers] ^ 1);
  }

  else
  {
    [(STAllowanceItemSearchResultsController *)self setHasNewSelection:1];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v42 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = objc_opt_new();
  v30 = controllerCopy;
  searchBar = [controllerCopy searchBar];
  text = [searchBar text];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  allowanceItemSpecifiers = [(STAllowanceItemSearchResultsController *)self allowanceItemSpecifiers];
  v9 = [allowanceItemSpecifiers countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(allowanceItemSpecifiers);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        name = [v14 name];
        v16 = [name localizedCaseInsensitiveContainsString:text];

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
            v18 = text;
            v19 = v11;
            v20 = v5;
            v21 = v12;
            v23 = v22 = allowanceItemSpecifiers;
            v24 = [v23 localizedStringForKey:@"MostUsedWebsites" value:&stru_28766E5A8 table:0];

            allowanceItemSpecifiers = v22;
            v12 = v21;
            v5 = v20;
            v11 = v19;
            text = v18;
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

          if ([v24 localizedCaseInsensitiveContainsString:text])
          {
            [v5 addObject:v14];
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v26 = [allowanceItemSpecifiers countByEnumeratingWithState:&v37 objects:v41 count:16];
      v10 = v26;
    }

    while (v26);
  }

  [(STAllowanceItemSearchResultsController *)selfCopy setFilteredAllowanceItemSpecifiers:v5];
  tableView = [(STAllowanceItemSearchResultsController *)selfCopy tableView];
  [tableView reloadData];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __81__STAllowanceItemSearchResultsController_updateSearchResultsForSearchController___block_invoke;
  v35[3] = &unk_279B7C9C8;
  v35[4] = selfCopy;
  v36 = tableView;
  v28 = tableView;
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