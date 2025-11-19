@interface PSListItemsController
- (id)identifierForValue:(id)a3;
- (id)itemsFromDataSource;
- (id)itemsFromParent;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addStaticText:(id)a3;
- (void)dealloc;
- (void)listItemSelected:(id)a3;
- (void)prepareSpecifiersMetadata;
- (void)saveChangesIfNeeded;
- (void)scrollToSelectedCell;
- (void)setRowToSelect;
- (void)setValueForSpecifier:(id)a3 defaultValue:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PSListItemsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSListItemsController;
  [(PSListController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PSListItemsController;
  [(PSListController *)&v9 viewWillAppear:a3];
  [(PSListController *)self setSpecifier:self->super.super._specifier];
  [(PSListItemsController *)self scrollToSelectedCell];
  v4 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"deferItemSelection"];
  self->_deferItemSelection = [v4 BOOLValue];

  if (self->_deferItemSelection)
  {
    v5 = [(PSSpecifier *)self->super.super._specifier target];
    retainedTarget = self->_retainedTarget;
    self->_retainedTarget = v5;
  }

  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  v8 = [(PSListController *)self specifier];
  [v8 setObject:v7 forKeyedSubscript:@"PSListItemsControllerSpecifierKey"];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSListItemsController;
  [(PSListController *)&v4 dealloc];
}

- (void)scrollToSelectedCell
{
  if (self->_rowToSelect != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PSListController *)self indexPathForIndex:?];
    [(UITableView *)self->super._table scrollToRowAtIndexPath:v4 atScrollPosition:2 animated:0];
  }
}

- (void)setRowToSelect
{
  self->_rowToSelect = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [(PSSpecifier *)self->super.super._specifier hasValidGetter];
  specifier = self->super.super._specifier;
  if (v3)
  {
    [(PSSpecifier *)specifier performGetter];
  }

  else
  {
    [(PSSpecifier *)specifier propertyForKey:@"value"];
  }
  v5 = ;
  v7 = [(PSListItemsController *)self identifierForValue:v5];

  v6 = [(PSListController *)self specifierForID:v7];
  if (v6)
  {
    self->_rowToSelect = [(PSListController *)self indexOfSpecifier:v6];
  }
}

- (void)setValueForSpecifier:(id)a3 defaultValue:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(PSSpecifier *)self->super.super._specifier hasValidSetter])
  {
    v7 = [v10 values];
    specifier = self->super.super._specifier;
    if ([v7 count])
    {
      v9 = [v7 firstObject];
      [(PSSpecifier *)specifier performSetterWithValue:v9];
    }

    else
    {
      [(PSSpecifier *)specifier performSetterWithValue:v6];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  lastSelectedSpecifier = self->_lastSelectedSpecifier;
  if (lastSelectedSpecifier)
  {
    if (self->_deferItemSelection)
    {
      v6 = [(PSSpecifier *)lastSelectedSpecifier propertyForKey:@"cellObject"];
      v7 = self->_lastSelectedSpecifier;
      v8 = [v6 title];
      [(PSListItemsController *)self setValueForSpecifier:v7 defaultValue:v8];
    }

    objc_opt_class();
    v9 = [(PSListItemsController *)self navigationController];
    v10 = [v9 topViewController];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    objc_opt_class();
    v13 = [(PSViewController *)self parentController];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    objc_opt_class();
    v16 = objc_opt_self();
    v17 = [v16 specifier];
    v18 = [v17 target];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = v12;
    if (v12 || (v21 = v15) != 0 || (v21 = v20) != 0)
    {
      [v21 reloadSpecifier:self->super.super._specifier];
    }

    v22 = self->_lastSelectedSpecifier;
    self->_lastSelectedSpecifier = 0;
  }

  if (self->_deferItemSelection)
  {
    retainedTarget = self->_retainedTarget;
    self->_retainedTarget = 0;
  }

  v24.receiver = self;
  v24.super_class = PSListItemsController;
  [(PSListController *)&v24 viewWillDisappear:v3];
}

- (void)saveChangesIfNeeded
{
  if (self->_deferItemSelection)
  {
    lastSelectedSpecifier = self->_lastSelectedSpecifier;
    if (lastSelectedSpecifier)
    {
      v7 = [(PSSpecifier *)lastSelectedSpecifier propertyForKey:@"cellObject"];
      v4 = self->_lastSelectedSpecifier;
      v5 = [v7 title];
      [(PSListItemsController *)self setValueForSpecifier:v4 defaultValue:v5];

      v6 = self->_lastSelectedSpecifier;
      self->_lastSelectedSpecifier = 0;
    }
  }
}

- (void)prepareSpecifiersMetadata
{
  v3.receiver = self;
  v3.super_class = PSListItemsController;
  [(PSListController *)&v3 prepareSpecifiersMetadata];
  [(PSListItemsController *)self setRowToSelect];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PSListController *)self indexForIndexPath:v6];
  v13.receiver = self;
  v13.super_class = PSListItemsController;
  v9 = [(PSListController *)&v13 tableView:v7 cellForRowAtIndexPath:v6];

  LOBYTE(v6) = self->_restrictionList;
  v10 = [v9 tag];
  if ((v6 & 1) == 0)
  {
    if (v10 != 3)
    {
      goto LABEL_8;
    }

    rowToSelect = self->_rowToSelect;
    goto LABEL_7;
  }

  if (v10 == 3)
  {
    rowToSelect = self->_rowToSelect;
    if (v8 > rowToSelect)
    {
LABEL_7:
      [v9 setChecked:v8 == rowToSelect];
    }
  }

LABEL_8:

  return v9;
}

- (void)listItemSelected:(id)a3
{
  v12 = a3;
  v4 = [(PSListController *)self indexForIndexPath:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (self->_rowToSelect != 0x7FFFFFFFFFFFFFFFLL)
    {
      table = self->super._table;
      v7 = [(PSListController *)self indexPathForIndex:?];
      v8 = [(UITableView *)table cellForRowAtIndexPath:v7];

      [v8 setChecked:0];
    }

    v9 = [(UITableView *)self->super._table cellForRowAtIndexPath:v12];
    v10 = [(NSArray *)self->super._specifiers objectAtIndex:v5];
    [v9 setChecked:1];
    self->_rowToSelect = v5;
    if (self->_lastSelectedSpecifier != v10)
    {
      objc_storeStrong(&self->_lastSelectedSpecifier, v10);
    }

    if (!self->_deferItemSelection)
    {
      v11 = [v9 title];
      [(PSListItemsController *)self setValueForSpecifier:v10 defaultValue:v11];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PSListItemsController *)self listItemSelected:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)_addStaticText:(id)a3
{
  v7 = a3;
  v4 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"staticTextMessage"];
  if (v4)
  {
    [v7 setProperty:v4 forKey:@"footerText"];
  }

  else
  {
    [v7 removePropertyForKey:@"footerText"];
  }

  v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"staticHeaderText"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v7 setName:v6];
}

- (id)itemsFromParent
{
  v21 = [(PSSpecifier *)self->super.super._specifier values];
  v3 = [v21 count];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v5 = [PSSpecifier groupSpecifierWithID:@"LIST_ITEMS_GROUP_SPECIFIER"];
  v20 = v4;
  [v4 addObject:v5];
  v18 = v5;
  [(PSListItemsController *)self _addStaticText:v5];
  v19 = v3;
  if (v3)
  {
    v6 = 0;
    do
    {
      v7 = [v21 objectAtIndex:v6];
      v8 = [(PSSpecifier *)self->super.super._specifier titleDictionary];
      v9 = [v8 objectForKey:v7];

      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, 0}];
      v12 = [(PSSpecifier *)self->super.super._specifier target];
      v13 = [PSSpecifier preferenceSpecifierNamed:v9 target:v12 set:0 get:0 detail:0 cell:3 edit:0];

      v14 = [(PSListItemsController *)self identifierForValue:v7];
      [v13 setIdentifier:v14];

      [v13 setValues:v10 titles:v11];
      v15 = [(PSListController *)self specifier];
      v16 = [v15 objectForKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];

      if (v16)
      {
        [v13 setProperty:v7 forKey:@"appIDForLazyIcon"];
        [v13 setProperty:MEMORY[0x1E695E118] forKey:@"useLazyIcons"];
      }

      [v20 addObject:v13];

      ++v6;
    }

    while (v19 != v6);
  }

  return v20;
}

- (id)itemsFromDataSource
{
  v3 = 1008;
  v4 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"valuesDataSource"];
  v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"titlesDataSource"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v28 = v4;
    NSSelectorFromString(v4);
    v8 = [(PSSpecifier *)self->super.super._specifier target];
    v9 = SFPerformSelector();

    v27 = v6;
    NSSelectorFromString(v6);
    v10 = [(PSSpecifier *)self->super.super._specifier target];
    v32 = SFPerformSelector();

    v33 = v9;
    v11 = [v9 count];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    v13 = [PSSpecifier groupSpecifierWithID:@"LIST_ITEMS_GROUP_SPECIFIER"];
    [v12 addObject:v13];
    v26 = v13;
    [(PSListItemsController *)self _addStaticText:v13];
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
    v31 = v11;
    if (v11)
    {
      v14 = 0;
      v30 = v12;
      do
      {
        v15 = [v33 objectAtIndex:v14];
        v16 = [v32 objectAtIndex:v14];
        v17 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v15, 0}];
        v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v16, 0}];
        v19 = v3;
        WeakRetained = objc_loadWeakRetained(*(&self->super.super.super.super.super.isa + v3) + 1);
        v21 = [PSSpecifier preferenceSpecifierNamed:v16 target:WeakRetained set:0 get:0 detail:0 cell:3 edit:0];

        v22 = [(PSListItemsController *)self identifierForValue:v15];
        [v21 setIdentifier:v22];

        [v21 setValues:v17 titles:v18];
        v23 = [(PSListController *)self specifier];
        v24 = [v23 objectForKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];

        if (v24)
        {
          [v21 setProperty:v15 forKey:@"appIDForLazyIcon"];
          [v21 setProperty:MEMORY[0x1E695E118] forKey:@"useLazyIcons"];
        }

        v12 = v30;
        [v30 addObject:v21];
        if (v16 && v15)
        {
          [v29 setObject:v16 forKey:v15];
        }

        ++v14;
        v3 = v19;
      }

      while (v31 != v14);
    }

    [*(&self->super.super.super.super.super.isa + v3) setTitleDictionary:v29];

    v6 = v27;
    v4 = v28;
  }

  return v12;
}

- (id)specifiers
{
  if (!self->super._specifiers)
  {
    v3 = [(PSSpecifier *)self->super.super._specifier values];
    if (v3 && (v4 = v3, [(PSSpecifier *)self->super.super._specifier titleDictionary], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
    {
      v6 = [(PSListItemsController *)self itemsFromParent];
    }

    else
    {
      v6 = [(PSListItemsController *)self itemsFromDataSource];
    }

    specifiers = self->super._specifiers;
    self->super._specifiers = v6;
  }

  v8 = self->super._specifiers;

  return v8;
}

- (id)identifierForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 stringValue];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

@end