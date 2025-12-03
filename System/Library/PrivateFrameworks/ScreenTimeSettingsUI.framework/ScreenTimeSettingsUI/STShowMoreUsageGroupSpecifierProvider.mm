@interface STShowMoreUsageGroupSpecifierProvider
- (STShowMoreUsageGroupSpecifierProvider)init;
- (id)newSpecifierWithUsageItem:(id)item;
- (void)refreshUsageSpecifiersWithUpdates:(BOOL)updates;
- (void)setSummarySpecifier:(id)specifier;
- (void)setUsageItems:(id)items;
- (void)showMoreItems:(id)items;
- (void)updateSpecifier:(id)specifier usageItem:(id)item;
@end

@implementation STShowMoreUsageGroupSpecifierProvider

- (STShowMoreUsageGroupSpecifierProvider)init
{
  v11.receiver = self;
  v11.super_class = STShowMoreUsageGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfItemsToShow = 5;
    v2->_totalNumberOfItemsToShow = 5;
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"ShowMoreButton" value:&stru_28766E5A8 table:0];

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:v3 set:0 get:0 detail:0 cell:13 edit:0];
    showMoreSpecifier = v3->_showMoreSpecifier;
    v3->_showMoreSpecifier = v6;

    [(PSSpecifier *)v3->_showMoreSpecifier setButtonAction:sel_showMoreItems_];
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    v9 = [mEMORY[0x277D4BD98] blankSpaceImageWithSize:{29.0, 29.0}];

    [(PSSpecifier *)v3->_showMoreSpecifier setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  return v3;
}

- (void)setSummarySpecifier:(id)specifier
{
  specifierCopy = specifier;
  summarySpecifier = self->_summarySpecifier;
  if (summarySpecifier != specifierCopy)
  {
    v9 = specifierCopy;
    summarySpecifier = [(PSSpecifier *)summarySpecifier isEqualToSpecifier:specifierCopy];
    specifierCopy = v9;
    if ((summarySpecifier & 1) == 0)
    {
      mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      v8 = mutableSpecifiers;
      if (self->_summarySpecifier)
      {
        if (v9)
        {
          [mutableSpecifiers setObject:v9 atIndexedSubscript:0];
        }

        else
        {
          [mutableSpecifiers removeObjectAtIndex:?];
        }
      }

      else
      {
        [mutableSpecifiers insertObject:v9 atIndex:0];
      }

      objc_storeStrong(&self->_summarySpecifier, specifier);

      specifierCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](summarySpecifier, specifierCopy);
}

- (void)setUsageItems:(id)items
{
  itemsCopy = items;
  usageItems = self->_usageItems;
  if (usageItems != itemsCopy)
  {
    v7 = itemsCopy;
    usageItems = [usageItems isEqualToArray:itemsCopy];
    itemsCopy = v7;
    if ((usageItems & 1) == 0)
    {
      objc_storeStrong(&self->_usageItems, items);
      usageItems = [(STShowMoreUsageGroupSpecifierProvider *)self refreshUsageSpecifiersWithUpdates:1];
      itemsCopy = v7;
    }
  }

  MEMORY[0x2821F96F8](usageItems, itemsCopy);
}

- (void)refreshUsageSpecifiersWithUpdates:(BOOL)updates
{
  updatesCopy = updates;
  usageItems = [(STShowMoreUsageGroupSpecifierProvider *)self usageItems];
  totalNumberOfItemsToShow = [(STShowMoreUsageGroupSpecifierProvider *)self totalNumberOfItemsToShow];
  summarySpecifier = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];

  mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  v9 = [mutableSpecifiers count];
  v10 = objc_opt_new();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (updatesCopy)
  {
    [(STGroupSpecifierProvider *)self beginUpdates];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__STShowMoreUsageGroupSpecifierProvider_refreshUsageSpecifiersWithUpdates___block_invoke;
  v17[3] = &unk_279B7E240;
  v21 = &v25;
  v22 = totalNumberOfItemsToShow;
  v24 = summarySpecifier != 0;
  v23 = v9;
  v11 = mutableSpecifiers;
  v18 = v11;
  selfCopy = self;
  v12 = v10;
  v20 = v12;
  [usageItems enumerateObjectsUsingBlock:v17];
  v13 = [usageItems count];
  if (totalNumberOfItemsToShow >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = totalNumberOfItemsToShow;
  }

  if (summarySpecifier)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9 <= v15)
  {
    showMoreSpecifier = [(STShowMoreUsageGroupSpecifierProvider *)self showMoreSpecifier];
    if (*(v26 + 24) == 1 && ([v11 containsObject:showMoreSpecifier] & 1) == 0)
    {
      [v12 addObject:showMoreSpecifier];
    }

    if ([v12 count])
    {
      [v11 addObjectsFromArray:v12];
    }
  }

  else
  {
    showMoreSpecifier = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v15, v9 - v15}];
    [v11 removeObjectsAtIndexes:showMoreSpecifier];
  }

  if (updatesCopy)
  {
    [(STGroupSpecifierProvider *)self endUpdates];
  }

  _Block_object_dispose(&v25, 8);
}

uint64_t __75__STShowMoreUsageGroupSpecifierProvider_refreshUsageSpecifiersWithUpdates___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(a1 + 64) - 1 == a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v9 = *(a1 + 80) + a3;
    v15 = v7;
    if (v9 >= *(a1 + 72))
    {
      v10 = [*(a1 + 40) newSpecifierWithUsageItem:v7];
      [*(a1 + 48) addObject:v10];
    }

    else
    {
      v10 = [*(a1 + 32) objectAtIndexedSubscript:v9];
      v11 = [v10 cellType];
      v12 = *(a1 + 40);
      if (v11 == 13)
      {
        v13 = [v12 newSpecifierWithUsageItem:v15];

        [*(a1 + 32) setObject:v13 atIndexedSubscript:v9];
        v10 = v13;
      }

      else
      {
        [v12 updateSpecifier:v10 usageItem:v15];
        [*(a1 + 40) reloadSpecifier:v10 animated:1];
      }
    }

    v8 = v15;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

- (id)newSpecifierWithUsageItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STShowMoreUsageGroupSpecifierProvider.m" lineNumber:142 description:@"Subclasses must override."];

  return objc_opt_new();
}

- (void)updateSpecifier:(id)specifier usageItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STShowMoreUsageGroupSpecifierProvider.m" lineNumber:147 description:@"Subclasses must override."];
}

- (void)showMoreItems:(id)items
{
  [(STShowMoreUsageGroupSpecifierProvider *)self setTotalNumberOfItemsToShow:[(STShowMoreUsageGroupSpecifierProvider *)self totalNumberOfItemsToShow]+ [(STShowMoreUsageGroupSpecifierProvider *)self numberOfItemsToShow]];

  [(STShowMoreUsageGroupSpecifierProvider *)self refreshUsageSpecifiersWithUpdates:1];
}

@end