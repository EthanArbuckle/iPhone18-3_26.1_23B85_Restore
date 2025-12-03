@interface PSListItemsController
- (id)identifierForValue:(id)value;
- (id)itemsFromDataSource;
- (id)itemsFromParent;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addStaticText:(id)text;
- (void)dealloc;
- (void)listItemSelected:(id)selected;
- (void)prepareSpecifiersMetadata;
- (void)saveChangesIfNeeded;
- (void)scrollToSelectedCell;
- (void)setRowToSelect;
- (void)setValueForSpecifier:(id)specifier defaultValue:(id)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PSListItemsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSListItemsController;
  [(PSListController *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = PSListItemsController;
  [(PSListController *)&v9 viewWillAppear:appear];
  [(PSListController *)self setSpecifier:self->super.super._specifier];
  [(PSListItemsController *)self scrollToSelectedCell];
  v4 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"deferItemSelection"];
  self->_deferItemSelection = [v4 BOOLValue];

  if (self->_deferItemSelection)
  {
    target = [(PSSpecifier *)self->super.super._specifier target];
    retainedTarget = self->_retainedTarget;
    self->_retainedTarget = target;
  }

  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  specifier = [(PSListController *)self specifier];
  [specifier setObject:v7 forKeyedSubscript:@"PSListItemsControllerSpecifierKey"];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  hasValidGetter = [(PSSpecifier *)self->super.super._specifier hasValidGetter];
  specifier = self->super.super._specifier;
  if (hasValidGetter)
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

- (void)setValueForSpecifier:(id)specifier defaultValue:(id)value
{
  specifierCopy = specifier;
  valueCopy = value;
  if ([(PSSpecifier *)self->super.super._specifier hasValidSetter])
  {
    values = [specifierCopy values];
    specifier = self->super.super._specifier;
    if ([values count])
    {
      firstObject = [values firstObject];
      [(PSSpecifier *)specifier performSetterWithValue:firstObject];
    }

    else
    {
      [(PSSpecifier *)specifier performSetterWithValue:valueCopy];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  lastSelectedSpecifier = self->_lastSelectedSpecifier;
  if (lastSelectedSpecifier)
  {
    if (self->_deferItemSelection)
    {
      v6 = [(PSSpecifier *)lastSelectedSpecifier propertyForKey:@"cellObject"];
      v7 = self->_lastSelectedSpecifier;
      title = [v6 title];
      [(PSListItemsController *)self setValueForSpecifier:v7 defaultValue:title];
    }

    objc_opt_class();
    navigationController = [(PSListItemsController *)self navigationController];
    topViewController = [navigationController topViewController];
    if (objc_opt_isKindOfClass())
    {
      v11 = topViewController;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    objc_opt_class();
    parentController = [(PSViewController *)self parentController];
    if (objc_opt_isKindOfClass())
    {
      v14 = parentController;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    objc_opt_class();
    v16 = objc_opt_self();
    specifier = [v16 specifier];
    target = [specifier target];
    if (objc_opt_isKindOfClass())
    {
      v19 = target;
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
  [(PSListController *)&v24 viewWillDisappear:disappearCopy];
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
      title = [v7 title];
      [(PSListItemsController *)self setValueForSpecifier:v4 defaultValue:title];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(PSListController *)self indexForIndexPath:pathCopy];
  v13.receiver = self;
  v13.super_class = PSListItemsController;
  v9 = [(PSListController *)&v13 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  LOBYTE(pathCopy) = self->_restrictionList;
  v10 = [v9 tag];
  if ((pathCopy & 1) == 0)
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

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
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

    v9 = [(UITableView *)self->super._table cellForRowAtIndexPath:selectedCopy];
    v10 = [(NSArray *)self->super._specifiers objectAtIndex:v5];
    [v9 setChecked:1];
    self->_rowToSelect = v5;
    if (self->_lastSelectedSpecifier != v10)
    {
      objc_storeStrong(&self->_lastSelectedSpecifier, v10);
    }

    if (!self->_deferItemSelection)
    {
      title = [v9 title];
      [(PSListItemsController *)self setValueForSpecifier:v10 defaultValue:title];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(PSListItemsController *)self listItemSelected:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_addStaticText:(id)text
{
  textCopy = text;
  v4 = [(PSSpecifier *)self->super.super._specifier propertyForKey:@"staticTextMessage"];
  if (v4)
  {
    [textCopy setProperty:v4 forKey:@"footerText"];
  }

  else
  {
    [textCopy removePropertyForKey:@"footerText"];
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

  [textCopy setName:v6];
}

- (id)itemsFromParent
{
  values = [(PSSpecifier *)self->super.super._specifier values];
  v3 = [values count];
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
      v7 = [values objectAtIndex:v6];
      titleDictionary = [(PSSpecifier *)self->super.super._specifier titleDictionary];
      v9 = [titleDictionary objectForKey:v7];

      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, 0}];
      target = [(PSSpecifier *)self->super.super._specifier target];
      v13 = [PSSpecifier preferenceSpecifierNamed:v9 target:target set:0 get:0 detail:0 cell:3 edit:0];

      v14 = [(PSListItemsController *)self identifierForValue:v7];
      [v13 setIdentifier:v14];

      [v13 setValues:v10 titles:v11];
      specifier = [(PSListController *)self specifier];
      v16 = [specifier objectForKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];

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
    target = [(PSSpecifier *)self->super.super._specifier target];
    v9 = SFPerformSelector();

    v27 = v6;
    NSSelectorFromString(v6);
    target2 = [(PSSpecifier *)self->super.super._specifier target];
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
        specifier = [(PSListController *)self specifier];
        v24 = [specifier objectForKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];

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
    values = [(PSSpecifier *)self->super.super._specifier values];
    if (values && (v4 = values, [(PSSpecifier *)self->super.super._specifier titleDictionary], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
    {
      itemsFromParent = [(PSListItemsController *)self itemsFromParent];
    }

    else
    {
      itemsFromParent = [(PSListItemsController *)self itemsFromDataSource];
    }

    specifiers = self->super._specifiers;
    self->super._specifiers = itemsFromParent;
  }

  v8 = self->super._specifiers;

  return v8;
}

- (id)identifierForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [valueCopy stringValue];
    }

    else
    {
      [valueCopy description];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

@end