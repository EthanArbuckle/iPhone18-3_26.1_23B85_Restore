@interface STListViewController
- (STListViewController)init;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)visibleSpecifierProviders;
- (void)addObserversForSpecifierProvider:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserversForSpecifierProvider:(id)a3;
- (void)setSpecifierProviders:(id)a3;
- (void)specifierProvider:(id)a3 reloadSectionHeaderFootersWithAnimation:(int64_t)a4;
- (void)specifierProvider:(id)a3 reloadSpecifier:(id)a4 animated:(BOOL)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation STListViewController

- (STListViewController)init
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v8.receiver = self;
    v8.super_class = STListViewController;
    v3 = [(STListViewController *)&v8 init];
    if (v3)
    {
      v4 = objc_opt_new();
      cellHeightBySpecifierIdentifier = v3->_cellHeightBySpecifierIdentifier;
      v3->_cellHeightBySpecifierIdentifier = v4;
    }

    self = v3;
    v6 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [STListViewController init];
    }

    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(STListViewController *)self specifierProviders];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(STListViewController *)self removeObserversForSpecifierProvider:v8];
        [v8 invalidate];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = STListViewController;
  [(STListViewController *)&v9 dealloc];
}

- (void)setSpecifierProviders:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(STListViewController *)self addObserversForSpecifierProvider:v9];
        [v9 setDelegate:self];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v4 copy];
  specifierProviders = self->_specifierProviders;
  self->_specifierProviders = v10;
}

- (id)visibleSpecifierProviders
{
  v2 = [(STListViewController *)self specifierProviders];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"isHidden", MEMORY[0x277CBEC28]];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)specifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(STListViewController *)self specifierProviders];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (([v11 isHidden] & 1) == 0)
          {
            v12 = [v11 groupSpecifier];
            [v5 addObject:v12];

            v13 = [v11 specifiers];
            [v5 addObjectsFromArray:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)addObserversForSpecifierProvider:(id)a3
{
  v4 = a3;
  [v4 addObserver:self forKeyPath:@"isHidden" options:0 context:"STListViewControllerObservationContext"];
  [v4 addObserver:self forKeyPath:@"specifiers" options:3 context:"STListViewControllerObservationContext"];
}

- (void)removeObserversForSpecifierProvider:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self forKeyPath:@"specifiers" context:"STListViewControllerObservationContext"];
  [v4 removeObserver:self forKeyPath:@"isHidden" context:"STListViewControllerObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v57[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a6 != "STListViewControllerObservationContext")
  {
    v55.receiver = self;
    v55.super_class = STListViewController;
    [(STListViewController *)&v55 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
    goto LABEL_37;
  }

  if ([v11 isEqualToString:@"isHidden"])
  {
    v14 = v12;
    v15 = [v14 groupSpecifier];
    v57[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    v17 = [v14 specifiers];
    v18 = [v16 arrayByAddingObjectsFromArray:v17];

    if ([v14 isHidden])
    {
      [(STListViewController *)self beginUpdates];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v20)
      {
        v21 = *v45;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v45 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [(STListViewController *)self removeSpecifier:*(*(&v44 + 1) + 8 * i) animated:1];
          }

          v20 = [v19 countByEnumeratingWithState:&v44 objects:v56 count:16];
        }

        while (v20);
      }

      [(STListViewController *)self endUpdates];
    }

    else
    {
      v30 = [(STListViewController *)self specifierProviders];
      v31 = [v30 indexOfObject:v14];
      v32 = v31;
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = __Block_byref_object_copy__3;
      v53 = __Block_byref_object_dispose__3;
      v54 = 0;
      if (!v31)
      {
        goto LABEL_27;
      }

      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = [MEMORY[0x277CCA890] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"STListViewController.m" lineNumber:115 description:{@"Unknown specifierProvider: %@ is not in: %@", v14, v30}];
      }

      v33 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, v32}];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v48[3] = &unk_279B7DAF8;
      v48[4] = &v49;
      [v30 enumerateObjectsAtIndexes:v33 options:2 usingBlock:v48];

      v34 = v50[5];
      if (v34)
      {
        [(STListViewController *)self insertContiguousSpecifiers:v18 afterSpecifier:v34 animated:1];
      }

      else
      {
LABEL_27:
        [(STListViewController *)self insertContiguousSpecifiers:v18 atIndex:0 animated:1];
      }

      _Block_object_dispose(&v49, 8);
    }

    goto LABEL_37;
  }

  if (![v11 isEqualToString:@"specifiers"])
  {
    goto LABEL_37;
  }

  v23 = v12;
  if ([v23 isHidden])
  {
LABEL_31:

    goto LABEL_37;
  }

  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v35 = [(STListViewController *)self specifiers];
    goto LABEL_31;
  }

  v24 = [v23 specifiers];
  v25 = [v23 groupSpecifier];
  v26 = [(STListViewController *)self indexOfSpecifier:v25];

  v27 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2E8]];
  v28 = [v27 unsignedIntegerValue];

  v29 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2E0]];
  switch(v28)
  {
    case 4:
      v36 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v37 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      [(STListViewController *)self replaceContiguousSpecifiers:v36 withSpecifiers:v37 animated:1];

      break;
    case 3:
      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [STListViewController observeValueForKeyPath:v23 ofObject:self change:a2 context:?];
      }

      [(STListViewController *)self beginUpdates];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
      v39[3] = &unk_279B7DB48;
      v39[4] = self;
      v39[5] = v26 + 1;
      [v29 enumerateRangesWithOptions:2 usingBlock:v39];
      [(STListViewController *)self endUpdates];
      break;
    case 2:
      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [STListViewController observeValueForKeyPath:v23 ofObject:self change:a2 context:?];
      }

      [(STListViewController *)self beginUpdates];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v40[3] = &unk_279B7DB20;
      v41 = v24;
      v42 = self;
      v43 = v26 + 1;
      [v29 enumerateRangesUsingBlock:v40];
      [(STListViewController *)self endUpdates];

      break;
  }

LABEL_37:
}

uint64_t __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 isHidden];
  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v8 = [v12 specifiers];
    v9 = [v8 lastObject];
    v10 = v9;
    if (!v9)
    {
      v10 = [v12 groupSpecifier];
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v10);
    if (!v9)
    {
    }

    *a4 = 1;
    v7 = v12;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

void __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{a2, a3}];
  v5 = [*(a1 + 32) objectsAtIndexes:v6];
  [*(a1 + 40) insertContiguousSpecifiers:v5 atIndex:*(a1 + 48) + a2 animated:1];
}

void __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{*(a1 + 40) + a2, a3}];
  v4 = [*(a1 + 32) specifiers];
  v5 = [v4 objectsAtIndexes:v6];

  [*(a1 + 32) removeContiguousSpecifiers:v5 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = STListViewController;
  v5 = [(STListViewController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setParentViewController:self];
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v20 = [(STListViewController *)self specifierAtIndexPath:a5];
  v8 = MEMORY[0x277CCABB0];
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  v17 = [v8 numberWithDouble:CGRectGetHeight(v22)];
  v18 = [(STListViewController *)self cellHeightBySpecifierIdentifier];
  v19 = [v20 identifier];
  [v18 setObject:v17 forKeyedSubscript:v19];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = STListViewController;
  [(STListViewController *)&v17 tableView:a3 estimatedHeightForRowAtIndexPath:v6];
  v8 = v7;
  v9 = *MEMORY[0x277D76F30];
  if (v7 == *MEMORY[0x277D76F30])
  {
    v10 = [(STListViewController *)self specifierAtIndexPath:v6];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [(STListViewController *)self cellHeightBySpecifierIdentifier];
      v13 = [v10 identifier];
      v14 = [v12 objectForKeyedSubscript:v13];

      if (v14)
      {
        [v14 doubleValue];
        v9 = v15;
      }
    }

    v8 = v9;
  }

  return v8;
}

- (void)specifierProvider:(id)a3 reloadSpecifier:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D40148]];
  v9 = [v8 contentView];
  [v9 frame];
  v11 = ceil(v10);
  v13 = ceil(v12);

  [(STListViewController *)self reloadSpecifier:v7 animated:v5];
  v14 = [v8 contentView];
  [v14 systemLayoutSizeFittingSize:{v11, *(MEMORY[0x277D76C78] + 8)}];
  v16 = ceil(v15);

  if (v8)
  {
    v17 = v13 == v16;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v19 = [(STListViewController *)self cellHeightBySpecifierIdentifier];
    v20 = [v7 identifier];
    [v19 setObject:v18 forKeyedSubscript:v20];

    if (v5)
    {
      [(STListViewController *)self beginUpdates];
      [(STListViewController *)self endUpdates];
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __67__STListViewController_specifierProvider_reloadSpecifier_animated___block_invoke;
      v21[3] = &unk_279B7C998;
      v21[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v21];
    }
  }
}

uint64_t __67__STListViewController_specifierProvider_reloadSpecifier_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginUpdates];
  v2 = *(a1 + 32);

  return [v2 endUpdates];
}

- (void)specifierProvider:(id)a3 reloadSectionHeaderFootersWithAnimation:(int64_t)a4
{
  v11 = 0;
  v6 = [a3 groupSpecifier];
  v7 = [(STListViewController *)self getGroup:&v11 row:0 ofSpecifier:v6];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAA78]);
    v9 = [v8 initWithIndex:v11];
    v10 = [(STListViewController *)self table];
    [v10 _reloadSectionHeaderFooters:v9 withRowAnimation:a4];
  }
}

- (void)observeValueForKeyPath:(uint64_t)a3 ofObject:change:context:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [a1 groupSpecifier];
  v7 = [a2 specifiers];
  [v8 handleFailureInMethod:a3 object:a2 file:@"STListViewController.m" lineNumber:173 description:{@"Unknown removed provider: %@ whose group specifier: %@ is not in: %@", a1, v6, v7}];
}

- (void)observeValueForKeyPath:(uint64_t)a3 ofObject:change:context:.cold.2(void *a1, void *a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [a1 groupSpecifier];
  v7 = [a2 specifiers];
  [v8 handleFailureInMethod:a3 object:a2 file:@"STListViewController.m" lineNumber:160 description:{@"Unknown added provider: %@ whose group specifier: %@ is not in: %@", a1, v6, v7}];
}

@end