@interface STUIStatusBarAdditionalEntryItem
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)existingEntryForIdentifier:(id)identifier;
- (id)lazyViewForIdentifier:(id)identifier entry:(id)entry;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_itemViews;
- (void)itemViews;
@end

@implementation STUIStatusBarAdditionalEntryItem

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  itemCopy = item;
  additionalEntries = [data additionalEntries];
  dictionary = [additionalEntries dictionary];

  if (dictionary)
  {
    identifier = [itemCopy identifier];
    string = [identifier string];
    v10 = [dictionary objectForKeyedSubscript:string];

    isEnabled = [v10 isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  return isEnabled;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v36.receiver = self;
  v36.super_class = STUIStatusBarAdditionalEntryItem;
  v8 = [(STUIStatusBarItem *)&v36 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    identifier = [itemCopy identifier];
    string = [identifier string];

    data = [updateCopy data];
    additionalEntries = [data additionalEntries];
    dictionary = [additionalEntries dictionary];
    v14 = [dictionary objectForKeyedSubscript:string];

    if (![v14 isEnabled])
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = [(STUIStatusBarAdditionalEntryItem *)self lazyViewForIdentifier:string entry:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v15;
      stringValue2 = v15;
      v17 = v14;
      v18 = MEMORY[0x277D755B8];
      imageName = [v17 imageName];
      v20 = [v18 _systemImageNamed:imageName];

      [stringValue2 setImage:v20];
      stringValue = [v17 stringValue];
      [stringValue2 setText:stringValue];

LABEL_7:
      bOOLValue = [v17 BOOLValue];
      styleAttributes = [updateCopy styleAttributes];
      v26 = styleAttributes;
      if (bOOLValue)
      {
        [styleAttributes imageTintColor];
      }

      else
      {
        [styleAttributes imageDimmedTintColor];
      }
      v27 = ;

      [stringValue2 setTintColor:v27];
      v15 = v35;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v15;
      stringValue2 = v15;
      v17 = v14;
      v22 = MEMORY[0x277D755B8];
      imageName2 = [v17 imageName];
      v20 = [v22 _systemImageNamed:imageName2];

      [stringValue2 setImage:v20];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = MEMORY[0x277D755B8];
      v30 = v15;
      imageName3 = [v14 imageName];
      v32 = [v29 _systemImageNamed:imageName3];
      [v30 setImage:v32];

      stringValue2 = [v14 stringValue];
      [v30 setText:stringValue2];

LABEL_11:
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = MEMORY[0x277D755B8];
      stringValue2 = [v14 imageName];
      v34 = [v33 _systemImageNamed:stringValue2];
      [v15 setImage:v34];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue2 = [v14 stringValue];
        [v15 setText:stringValue2];
        goto LABEL_11;
      }

      stringValue2 = [(STUIStatusBarItem *)self statusBar];
      v34 = [stringValue2 viewForAdditionalEntryWithIdentifier:string];
      [v15 setView:v34];
    }

    goto LABEL_11;
  }

LABEL_13:

  return v8;
}

- (id)existingEntryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  statusBar = [(STUIStatusBarItem *)self statusBar];
  currentData = [statusBar currentData];
  additionalEntries = [currentData additionalEntries];
  dictionary = [additionalEntries dictionary];
  v9 = [dictionary objectForKeyedSubscript:identifierCopy];

  return v9;
}

- (void)itemViews
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      [self _create_itemViews];
      v3 = selfCopy[5];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_create_itemViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemViews = self->_itemViews;
  self->_itemViews = v3;

  MEMORY[0x2821F96F8](v3, itemViews);
}

- (id)lazyViewForIdentifier:(id)identifier entry:(id)entry
{
  identifierCopy = identifier;
  entryCopy = entry;
  itemViews = [(STUIStatusBarAdditionalEntryItem *)self itemViews];
  v9 = [itemViews objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = off_279D36FD8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10 = off_279D36FE8;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = off_279D370C8;
        if (isKindOfClass)
        {
          v10 = off_279D37188;
        }
      }
    }

    v11 = objc_alloc(*v10);
    v9 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    itemViews2 = [(STUIStatusBarAdditionalEntryItem *)self itemViews];
    [itemViews2 setObject:v9 forKeyedSubscript:identifierCopy];
  }

  return v9;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  string = [identifierCopy string];
  string2 = [identifierCopy string];

  v7 = [(STUIStatusBarAdditionalEntryItem *)self existingEntryForIdentifier:string2];
  v8 = [(STUIStatusBarAdditionalEntryItem *)self lazyViewForIdentifier:string entry:v7];

  return v8;
}

@end