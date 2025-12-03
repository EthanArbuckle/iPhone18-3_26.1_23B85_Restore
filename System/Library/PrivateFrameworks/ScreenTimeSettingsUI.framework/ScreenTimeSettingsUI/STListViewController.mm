@interface STListViewController
- (STListViewController)init;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)visibleSpecifierProviders;
- (void)addObserversForSpecifierProvider:(id)provider;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserversForSpecifierProvider:(id)provider;
- (void)setSpecifierProviders:(id)providers;
- (void)specifierProvider:(id)provider reloadSectionHeaderFootersWithAnimation:(int64_t)animation;
- (void)specifierProvider:(id)provider reloadSpecifier:(id)specifier animated:(BOOL)animated;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [STListViewController init];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  specifierProviders = [(STListViewController *)self specifierProviders];
  v4 = [specifierProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(specifierProviders);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(STListViewController *)self removeObserversForSpecifierProvider:v8];
        [v8 invalidate];
      }

      v5 = [specifierProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = STListViewController;
  [(STListViewController *)&v9 dealloc];
}

- (void)setSpecifierProviders:(id)providers
{
  v17 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [providersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(providersCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(STListViewController *)self addObserversForSpecifierProvider:v9];
        [v9 setDelegate:self];
      }

      v6 = [providersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [providersCopy copy];
  specifierProviders = self->_specifierProviders;
  self->_specifierProviders = v10;
}

- (id)visibleSpecifierProviders
{
  specifierProviders = [(STListViewController *)self specifierProviders];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"isHidden", MEMORY[0x277CBEC28]];
  v4 = [specifierProviders filteredArrayUsingPredicate:v3];

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
    specifierProviders = [(STListViewController *)self specifierProviders];
    v7 = [specifierProviders countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(specifierProviders);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (([v11 isHidden] & 1) == 0)
          {
            groupSpecifier = [v11 groupSpecifier];
            [v5 addObject:groupSpecifier];

            specifiers = [v11 specifiers];
            [v5 addObjectsFromArray:specifiers];
          }
        }

        v8 = [specifierProviders countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)addObserversForSpecifierProvider:(id)provider
{
  providerCopy = provider;
  [providerCopy addObserver:self forKeyPath:@"isHidden" options:0 context:"STListViewControllerObservationContext"];
  [providerCopy addObserver:self forKeyPath:@"specifiers" options:3 context:"STListViewControllerObservationContext"];
}

- (void)removeObserversForSpecifierProvider:(id)provider
{
  providerCopy = provider;
  [providerCopy removeObserver:self forKeyPath:@"specifiers" context:"STListViewControllerObservationContext"];
  [providerCopy removeObserver:self forKeyPath:@"isHidden" context:"STListViewControllerObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v57[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context != "STListViewControllerObservationContext")
  {
    v55.receiver = self;
    v55.super_class = STListViewController;
    [(STListViewController *)&v55 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_37;
  }

  if ([pathCopy isEqualToString:@"isHidden"])
  {
    v14 = objectCopy;
    groupSpecifier = [v14 groupSpecifier];
    v57[0] = groupSpecifier;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    specifiers = [v14 specifiers];
    v18 = [v16 arrayByAddingObjectsFromArray:specifiers];

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
      specifierProviders = [(STListViewController *)self specifierProviders];
      v31 = [specifierProviders indexOfObject:v14];
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
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"STListViewController.m" lineNumber:115 description:{@"Unknown specifierProvider: %@ is not in: %@", v14, specifierProviders}];
      }

      v33 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, v32}];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __71__STListViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v48[3] = &unk_279B7DAF8;
      v48[4] = &v49;
      [specifierProviders enumerateObjectsAtIndexes:v33 options:2 usingBlock:v48];

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

  if (![pathCopy isEqualToString:@"specifiers"])
  {
    goto LABEL_37;
  }

  v23 = objectCopy;
  if ([v23 isHidden])
  {
LABEL_31:

    goto LABEL_37;
  }

  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    specifiers2 = [(STListViewController *)self specifiers];
    goto LABEL_31;
  }

  specifiers3 = [v23 specifiers];
  groupSpecifier2 = [v23 groupSpecifier];
  v26 = [(STListViewController *)self indexOfSpecifier:groupSpecifier2];

  v27 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2E8]];
  unsignedIntegerValue = [v27 unsignedIntegerValue];

  v29 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2E0]];
  switch(unsignedIntegerValue)
  {
    case 4:
      v36 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v37 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
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
      v41 = specifiers3;
      selfCopy = self;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = STListViewController;
  v5 = [(STListViewController *)&v7 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setParentViewController:self];
  }

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v20 = [(STListViewController *)self specifierAtIndexPath:path];
  v8 = MEMORY[0x277CCABB0];
  [cellCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  v17 = [v8 numberWithDouble:CGRectGetHeight(v22)];
  cellHeightBySpecifierIdentifier = [(STListViewController *)self cellHeightBySpecifierIdentifier];
  identifier = [v20 identifier];
  [cellHeightBySpecifierIdentifier setObject:v17 forKeyedSubscript:identifier];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = STListViewController;
  [(STListViewController *)&v17 tableView:view estimatedHeightForRowAtIndexPath:pathCopy];
  v8 = v7;
  v9 = *MEMORY[0x277D76F30];
  if (v7 == *MEMORY[0x277D76F30])
  {
    v10 = [(STListViewController *)self specifierAtIndexPath:pathCopy];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      cellHeightBySpecifierIdentifier = [(STListViewController *)self cellHeightBySpecifierIdentifier];
      identifier = [v10 identifier];
      v14 = [cellHeightBySpecifierIdentifier objectForKeyedSubscript:identifier];

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

- (void)specifierProvider:(id)provider reloadSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  specifierCopy = specifier;
  v8 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40148]];
  contentView = [v8 contentView];
  [contentView frame];
  v11 = ceil(v10);
  v13 = ceil(v12);

  [(STListViewController *)self reloadSpecifier:specifierCopy animated:animatedCopy];
  contentView2 = [v8 contentView];
  [contentView2 systemLayoutSizeFittingSize:{v11, *(MEMORY[0x277D76C78] + 8)}];
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
    cellHeightBySpecifierIdentifier = [(STListViewController *)self cellHeightBySpecifierIdentifier];
    identifier = [specifierCopy identifier];
    [cellHeightBySpecifierIdentifier setObject:v18 forKeyedSubscript:identifier];

    if (animatedCopy)
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

- (void)specifierProvider:(id)provider reloadSectionHeaderFootersWithAnimation:(int64_t)animation
{
  v11 = 0;
  groupSpecifier = [provider groupSpecifier];
  v7 = [(STListViewController *)self getGroup:&v11 row:0 ofSpecifier:groupSpecifier];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAA78]);
    v9 = [v8 initWithIndex:v11];
    table = [(STListViewController *)self table];
    [table _reloadSectionHeaderFooters:v9 withRowAnimation:animation];
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