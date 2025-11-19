@interface STShowMoreUsageGroupSpecifierProvider
- (STShowMoreUsageGroupSpecifierProvider)init;
- (id)newSpecifierWithUsageItem:(id)a3;
- (void)refreshUsageSpecifiersWithUpdates:(BOOL)a3;
- (void)setSummarySpecifier:(id)a3;
- (void)setUsageItems:(id)a3;
- (void)showMoreItems:(id)a3;
- (void)updateSpecifier:(id)a3 usageItem:(id)a4;
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
    v8 = [MEMORY[0x277D4BD98] sharedCache];
    v9 = [v8 blankSpaceImageWithSize:{29.0, 29.0}];

    [(PSSpecifier *)v3->_showMoreSpecifier setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  return v3;
}

- (void)setSummarySpecifier:(id)a3
{
  v5 = a3;
  summarySpecifier = self->_summarySpecifier;
  if (summarySpecifier != v5)
  {
    v9 = v5;
    summarySpecifier = [(PSSpecifier *)summarySpecifier isEqualToSpecifier:v5];
    v5 = v9;
    if ((summarySpecifier & 1) == 0)
    {
      v7 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      v8 = v7;
      if (self->_summarySpecifier)
      {
        if (v9)
        {
          [v7 setObject:v9 atIndexedSubscript:0];
        }

        else
        {
          [v7 removeObjectAtIndex:?];
        }
      }

      else
      {
        [v7 insertObject:v9 atIndex:0];
      }

      objc_storeStrong(&self->_summarySpecifier, a3);

      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](summarySpecifier, v5);
}

- (void)setUsageItems:(id)a3
{
  v5 = a3;
  usageItems = self->_usageItems;
  if (usageItems != v5)
  {
    v7 = v5;
    usageItems = [usageItems isEqualToArray:v5];
    v5 = v7;
    if ((usageItems & 1) == 0)
    {
      objc_storeStrong(&self->_usageItems, a3);
      usageItems = [(STShowMoreUsageGroupSpecifierProvider *)self refreshUsageSpecifiersWithUpdates:1];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](usageItems, v5);
}

- (void)refreshUsageSpecifiersWithUpdates:(BOOL)a3
{
  v3 = a3;
  v5 = [(STShowMoreUsageGroupSpecifierProvider *)self usageItems];
  v6 = [(STShowMoreUsageGroupSpecifierProvider *)self totalNumberOfItemsToShow];
  v7 = [(STShowMoreUsageGroupSpecifierProvider *)self summarySpecifier];

  v8 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  v9 = [v8 count];
  v10 = objc_opt_new();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (v3)
  {
    [(STGroupSpecifierProvider *)self beginUpdates];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__STShowMoreUsageGroupSpecifierProvider_refreshUsageSpecifiersWithUpdates___block_invoke;
  v17[3] = &unk_279B7E240;
  v21 = &v25;
  v22 = v6;
  v24 = v7 != 0;
  v23 = v9;
  v11 = v8;
  v18 = v11;
  v19 = self;
  v12 = v10;
  v20 = v12;
  [v5 enumerateObjectsUsingBlock:v17];
  v13 = [v5 count];
  if (v6 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  if (v7)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9 <= v15)
  {
    v16 = [(STShowMoreUsageGroupSpecifierProvider *)self showMoreSpecifier];
    if (*(v26 + 24) == 1 && ([v11 containsObject:v16] & 1) == 0)
    {
      [v12 addObject:v16];
    }

    if ([v12 count])
    {
      [v11 addObjectsFromArray:v12];
    }
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v15, v9 - v15}];
    [v11 removeObjectsAtIndexes:v16];
  }

  if (v3)
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

- (id)newSpecifierWithUsageItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"STShowMoreUsageGroupSpecifierProvider.m" lineNumber:142 description:@"Subclasses must override."];

  return objc_opt_new();
}

- (void)updateSpecifier:(id)a3 usageItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"STShowMoreUsageGroupSpecifierProvider.m" lineNumber:147 description:@"Subclasses must override."];
}

- (void)showMoreItems:(id)a3
{
  [(STShowMoreUsageGroupSpecifierProvider *)self setTotalNumberOfItemsToShow:[(STShowMoreUsageGroupSpecifierProvider *)self totalNumberOfItemsToShow]+ [(STShowMoreUsageGroupSpecifierProvider *)self numberOfItemsToShow]];

  [(STShowMoreUsageGroupSpecifierProvider *)self refreshUsageSpecifiersWithUpdates:1];
}

@end