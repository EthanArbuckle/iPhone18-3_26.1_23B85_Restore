@interface VSIdentityProviderTableViewDataSource
- (BOOL)hasStorefrontOrIdentityProviderAtIndexPath:(id)a3;
- (VSIdentityProviderTableViewDataSource)init;
- (id)_additionalProvidersRowTitle;
- (id)_cellReuseIdentifierForRowAtIndexPath:(id)a3;
- (id)_textColorForRowAtIndexPath:(id)a3;
- (id)_titleForRowAtIndexPath:(id)a3;
- (id)identityProviderForRowAtIndexPath:(id)a3;
- (id)preferredIndexPathForIdentityProviderWithName:(id)a3;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)storefrontAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 indexPathForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (int64_t)_cellStyleForRowAtIndexPath:(id)a3;
- (int64_t)_textAlignmentForRowAtIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_scrollToTableHeaderView;
- (void)setAdditionalProvidersMode:(unint64_t)a3;
- (void)setIdentityProviders:(id)a3;
- (void)setNumberOfLinesForCell:(id)a3 atIndexPath:(id)a4;
- (void)setTableView:(id)a3;
- (void)setTvProviderSupportedStorefronts:(id)a3;
@end

@implementation VSIdentityProviderTableViewDataSource

- (VSIdentityProviderTableViewDataSource)init
{
  v10.receiver = self;
  v10.super_class = VSIdentityProviderTableViewDataSource;
  v2 = [(VSIdentityProviderTableViewDataSource *)&v10 init];
  v3 = v2;
  if (v2)
  {
    providerSections = v2->_providerSections;
    v5 = MEMORY[0x277CBEBF8];
    v2->_providerSections = MEMORY[0x277CBEBF8];

    storefrontSections = v3->_storefrontSections;
    v3->_storefrontSections = v5;

    identityProviders = v3->_identityProviders;
    v3->_identityProviders = v5;

    destinationsBySectionIndexTitle = v3->_destinationsBySectionIndexTitle;
    v3->_destinationsBySectionIndexTitle = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (void)setIdentityProviders:(id)a3
{
  v87[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v61 = self;
  objc_storeStrong(&self->_identityProviders, a3);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 mutableCopy];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"rankForSorting" ascending:1];
  v9 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"rankForSorting"];
  v55 = [MEMORY[0x277CCA9C0] expressionForConstantValue:0];
  v56 = v9;
  v54 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v9 rightExpression:? modifier:? type:? options:?];
  [v7 filterUsingPredicate:?];
  v57 = v8;
  v87[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
  [v7 sortUsingDescriptors:v10];

  if ([v7 count])
  {
    v11 = objc_alloc_init(VSIdentityProviderSection);
    [(VSIdentityProviderSection *)v11 setIdentityProviders:v7];
    [v6 addObject:v11];
  }

  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    *buf = 138412546;
    v84 = v13;
    v85 = 2112;
    v86 = v7;
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Found %@ featured providers: %@", buf, 0x16u);
  }

  v60 = v5;
  v14 = [v5 mutableCopy];
  v15 = [v14 count];
  if (v15 < [(VSIdentityProviderTableViewDataSource *)self _minimumProviderCountForIndexes])
  {
    [v14 removeObjectsInArray:v7];
  }

  v58 = v7;
  v59 = v6;
  v53 = [v14 count];
  v16 = [MEMORY[0x277D75700] currentCollation];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = [v16 sectionIndexTitles];
  v19 = [v18 count];

  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v17 addObject:v21];

      ++v20;
      v22 = [v16 sectionIndexTitles];
      v23 = [v22 count];
    }

    while (v20 < v23);
  }

  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v77;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v77 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v76 + 1) + 8 * i);
        v30 = [v17 objectAtIndex:{objc_msgSend(v16, "sectionForObject:collationStringSelector:", v29, sel_nameForSorting)}];
        [v30 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v26);
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v32 = v17;
  v33 = [v32 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v73;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v73 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [v16 sortedArrayFromArray:*(*(&v72 + 1) + 8 * j) collationStringSelector:sel_nameForSorting];
        [v31 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v34);
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = [v59 count];
  v40 = [v16 sectionIndexTitles];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __62__VSIdentityProviderTableViewDataSource_setIdentityProviders___block_invoke;
  v66[3] = &unk_279E1AA40;
  v41 = v16;
  v67 = v41;
  v42 = v31;
  v68 = v42;
  v70 = v53;
  v71 = v39;
  v43 = v38;
  v69 = v43;
  [v40 enumerateObjectsUsingBlock:v66];

  [(VSIdentityProviderTableViewDataSource *)self setDestinationsBySectionIndexTitle:v43];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v45 = v42;
  v46 = [v45 countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v63;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [v44 addObjectsFromArray:*(*(&v62 + 1) + 8 * k)];
      }

      v47 = [v45 countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v47);
  }

  v50 = objc_alloc_init(VSIdentityProviderSection);
  [(VSIdentityProviderSection *)v50 setIdentityProviders:v44];
  [v59 addObject:v50];
  [(VSIdentityProviderTableViewDataSource *)v61 setProviderSections:v59];
  v51 = [(VSIdentityProviderTableViewDataSource *)v61 tableView];
  [v51 reloadData];

  v52 = *MEMORY[0x277D85DE8];
}

void __62__VSIdentityProviderTableViewDataSource_setIdentityProviders___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) sectionForSectionIndexTitleAtIndex:a3];
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = [*(a1 + 40) objectAtIndex:i];
      v7 += [v9 count];
    }
  }

  if (v7 >= *(a1 + 56) - 1)
  {
    v10 = *(a1 + 56) - 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:*(a1 + 64)];
  [*(a1 + 48) setObject:v11 forKey:v12];
}

- (void)setTvProviderSupportedStorefronts:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_tvProviderSupportedStorefronts, a3);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 isFeatured])
        {
          v15 = v6;
        }

        else
        {
          v15 = v7;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v16 = objc_alloc_init(VSStorefrontSection);
    [(VSStorefrontSection *)v16 setStorefronts:v6];
    [v8 addObject:v16];
  }

  v17 = objc_alloc_init(VSStorefrontSection);
  [(VSStorefrontSection *)v17 setStorefronts:v7];
  [v8 addObject:v17];
  [(VSIdentityProviderTableViewDataSource *)self setStorefrontSections:v8];
  v18 = [(VSIdentityProviderTableViewDataSource *)self tableView];
  [v18 reloadData];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setTableView:(id)a3
{
  v5 = a3;
  tableView = self->_tableView;
  if (tableView != v5)
  {
    v7 = v5;
    [(UITableView *)tableView setDataSource:0];
    objc_storeStrong(&self->_tableView, a3);
    [(UITableView *)self->_tableView setDataSource:self];
    tableView = [(UITableView *)self->_tableView setSectionIndexMinimumDisplayRowCount:[(VSIdentityProviderTableViewDataSource *)self _minimumProviderCountForIndexes]];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](tableView, v5);
}

- (void)setAdditionalProvidersMode:(unint64_t)a3
{
  if (self->_additionalProvidersMode != a3)
  {
    self->_additionalProvidersMode = a3;
    v5 = [(VSIdentityProviderTableViewDataSource *)self tableView];
    [v5 reloadData];

    if (a3 - 5 <= 1)
    {
      v6 = [(VSIdentityProviderTableViewDataSource *)self tableView];
      [v6 vs_scrollToTopAnimated:0];

      v7 = [(VSIdentityProviderTableViewDataSource *)self tableView];
      [v7 setNeedsFocusUpdate];
    }
  }
}

- (id)identityProviderForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  if (v5 >= [v6 count])
  {
    v10 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:v5];
    v8 = [v4 row];
    v9 = [v7 identityProviders];
    if (v8 >= [v9 count])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v9 objectAtIndex:v8];
    }
  }

  return v10;
}

- (id)preferredIndexPathForIdentityProviderWithName:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v23)
  {
    v5 = 0;
    v22 = *v31;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        v25 = v5;
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 identityProviders];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v27;
LABEL_8:
          v13 = 0;
          v24 = v11 + v10;
          while (1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [*(*(&v26 + 1) + 8 * v13) displayName];
            v15 = [v14 object];
            v16 = [v15 isEqualToString:v4];

            if (v16)
            {
              break;
            }

            ++v11;
            if (v10 == ++v13)
            {
              v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
              v11 = v24;
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v17 = v25;
          v18 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:v25];

          if (v18)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:

          v17 = v25;
        }

        v5 = v17 + 1;
      }

      v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  v18 = 0;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)storefrontAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];

  v7 = [(VSIdentityProviderTableViewDataSource *)self storefrontSections];
  v8 = [v7 objectAtIndex:v5];

  v9 = [v8 storefronts];
  v10 = [v9 objectAtIndex:v6];

  return v10;
}

- (BOOL)hasStorefrontOrIdentityProviderAtIndexPath:(id)a3
{
  v4 = a3;
  additionalProvidersMode = self->_additionalProvidersMode;
  if (additionalProvidersMode == 5)
  {
    v6 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:v4];
  }

  else
  {
    if (additionalProvidersMode != 6)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [(VSIdentityProviderTableViewDataSource *)self storefrontAtIndexPath:v4];
  }

  v7 = v6 != 0;

LABEL_7:
  return v7;
}

- (id)_additionalProvidersRowTitle
{
  v2 = [(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode];
  switch(v2)
  {
    case 1uLL:
      v3 = @"IDENTITY_PROVIDER_PICKER_OTHER_PROVIDERS_ROW_TITLE";
      goto LABEL_7;
    case 5uLL:
      v3 = @"REGIONS_PICKER_OTHER_REGIONS_ROW_TITLE";
      goto LABEL_7;
    case 3uLL:
      v3 = @"IDENTITY_PROVIDER_PICKER_OTHER_PROVIDERS_ROW_TITLE_DEVELOPER";
LABEL_7:
      v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v5 = [v4 localizedStringForKey:v3 value:0 table:0];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_cellReuseIdentifierForRowAtIndexPath:(id)a3
{
  v3 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:a3];

  if (v3)
  {
    return @"IdentityProviderCell";
  }

  else
  {
    return @"AdditionalProvidersCell";
  }
}

- (int64_t)_cellStyleForRowAtIndexPath:(id)a3
{
  v3 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:a3];

  return v3 != 0;
}

- (id)_titleForRowAtIndexPath:(id)a3
{
  v4 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 displayName];
    v7 = [v6 forceUnwrapObject];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [(VSIdentityProviderTableViewDataSource *)self _additionalProvidersRowTitle];
  if (!v7)
  {
LABEL_3:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The title parameter must not be nil."];
  }

LABEL_4:

  return v7;
}

- (int64_t)_textAlignmentForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6 || ([(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_textColorForRowAtIndexPath:(id)a3
{
  v4 = MEMORY[0x277D75348];
  v5 = a3;
  v6 = [v4 vsa_primaryLabelColor];
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6)
  {
    [(VSIdentityProviderTableViewDataSource *)self storefrontAtIndexPath:v5];
  }

  else
  {
    [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:v5];
  }
  v7 = ;

  if (v7)
  {
    v8 = [MEMORY[0x277D75348] vsa_primaryLabelColor];

    v6 = v8;
  }

  return v6;
}

- (void)_scrollToTableHeaderView
{
  v3 = [(VSIdentityProviderTableViewDataSource *)self tableView];
  v2 = [v3 tableHeaderView];
  [v2 bounds];
  [v3 convertRect:v2 fromView:?];
  [v3 scrollRectToVisible:0 animated:?];
}

- (void)setNumberOfLinesForCell:(id)a3 atIndexPath:(id)a4
{
  v4 = [a3 textLabel];
  [v4 setNumberOfLines:0];
}

- (id)tableView:(id)a3 indexPathForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Requesting index path for title %@ at index %@", &v15, 0x16u);
  }

  if ([v7 isEqualToString:*MEMORY[0x277D76F40]])
  {
    [(VSIdentityProviderTableViewDataSource *)self performSelector:sel__scrollToTableHeaderView withObject:0 afterDelay:0.0];
    v10 = 0;
  }

  else
  {
    v11 = [(VSIdentityProviderTableViewDataSource *)self destinationsBySectionIndexTitle];
    v10 = [v11 objectForKey:v7];
  }

  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Returning index path %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v3 addObject:*MEMORY[0x277D76F40]];
  v4 = [MEMORY[0x277D75700] currentCollation];
  v5 = [v4 sectionIndexTitles];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  v5 = [v4 count];

  v6 = [(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode];
  if (v6 <= 4)
  {
    if (v6 != 1 && v6 != 3)
    {
      return v5;
    }

    return ++v5;
  }

  if (v6 != 6)
  {
    if (v6 != 5)
    {
      return v5;
    }

    return ++v5;
  }

  v8 = [(VSIdentityProviderTableViewDataSource *)self storefrontSections];
  v9 = [v8 count];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6)
  {
    v6 = [(VSIdentityProviderTableViewDataSource *)self storefrontSections];
    v7 = [v6 objectAtIndex:a4];

    v8 = [v7 storefronts];
    v9 = [v8 count];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  v10 = [v7 count];
  if (v10 > a4)
  {
    v8 = [v7 objectAtIndex:a4];
    v11 = [v8 identityProviders];
    v9 = [v11 count];

    goto LABEL_5;
  }

  if (v10 == a4)
  {
    v13 = [(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode];
    v9 = v13 <= 5 && ((1 << v13) & 0x2A) != 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_6:

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"IdentityProviderCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"IdentityProviderCell"];
    }

    v9 = [(VSIdentityProviderTableViewDataSource *)self storefrontAtIndexPath:v7];
    v10 = [v9 displayName];
    [v8 setAccessoryType:{-[VSIdentityProviderTableViewDataSource cellAccessoryType](self, "cellAccessoryType")}];
    v11 = [v8 textLabel];
    [v11 setText:v10];
  }

  else
  {
    v9 = [(VSIdentityProviderTableViewDataSource *)self _cellReuseIdentifierForRowAtIndexPath:v7];
    v8 = [v6 dequeueReusableCellWithIdentifier:v9];
    if (!v8)
    {
      v12 = [(VSIdentityProviderTableViewDataSource *)self _cellStyleForRowAtIndexPath:v7];
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:v12 reuseIdentifier:v9];
    }

    v10 = [(VSIdentityProviderTableViewDataSource *)self _titleForRowAtIndexPath:v7];
    v13 = [v8 textLabel];
    [v13 setText:v10];

    [(VSIdentityProviderTableViewDataSource *)self setNumberOfLinesForCell:v8 atIndexPath:v7];
    [v8 setAccessoryType:{-[VSIdentityProviderTableViewDataSource cellAccessoryType](self, "cellAccessoryType")}];
    v11 = [v8 textLabel];
  }

  [v11 setTextAlignment:{-[VSIdentityProviderTableViewDataSource _textAlignmentForRowAtIndexPath:](self, "_textAlignmentForRowAtIndexPath:", v7)}];
  v14 = [(VSIdentityProviderTableViewDataSource *)self _textColorForRowAtIndexPath:v7];
  [v11 setTextColor:v14];
  [v11 setLineBreakMode:0];
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The cell parameter must not be nil."];
  }

  return v8;
}

@end