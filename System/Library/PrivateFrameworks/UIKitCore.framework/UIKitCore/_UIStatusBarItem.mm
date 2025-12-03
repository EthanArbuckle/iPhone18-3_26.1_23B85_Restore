@interface _UIStatusBarItem
+ (id)createItemForIdentifier:(id)identifier statusBar:(id)bar;
+ (id)displayItemIdentifierFromString:(id)string;
+ (id)itemIdentifierFromString:(id)string;
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (_UIStatusBar)statusBar;
- (_UIStatusBarItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (id)_applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)description;
- (id)displayItemForIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
@end

@implementation _UIStatusBarItem

+ (id)itemIdentifierFromString:(id)string
{
  stringCopy = string;
  v4 = [_UIStatusBarIdentifier identifierForObject:objc_opt_class() string:stringCopy];

  return v4;
}

+ (id)displayItemIdentifierFromString:(id)string
{
  stringCopy = string;
  identifier = [self identifier];
  v6 = [self displayItemIdentifierFromIdentifier:identifier string:stringCopy];

  return v6;
}

+ (id)createItemForIdentifier:(id)identifier statusBar:(id)bar
{
  identifierCopy = identifier;
  barCopy = bar;
  v9 = [self itemClassForIdentifier:identifierCopy];
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarItem.m" lineNumber:63 description:{@"No class found for item with identifier %@", identifierCopy}];
  }

  v10 = [[v9 alloc] initWithIdentifier:identifierCopy statusBar:barCopy];

  return v10;
}

- (_UIStatusBarItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _UIStatusBarItem;
  barCopy = bar;
  v8 = [(_UIStatusBarItem *)&v14 init];
  identifier = v8->_identifier;
  v8->_identifier = identifierCopy;
  v10 = identifierCopy;

  objc_storeWeak(&v8->_statusBar, barCopy);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  displayItems = v8->_displayItems;
  v8->_displayItems = dictionary;

  return v8;
}

- (id)description
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_identifier);
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [UIDescriptionBuilder descriptionForObject:self keys:v4];

  return v5;
}

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dependentEntryKeys = [(_UIStatusBarItem *)self dependentEntryKeys];
  v7 = [dependentEntryKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(dependentEntryKeys);
        }

        v10 = [dataCopy valueForKey:*(*(&v13 + 1) + 8 * i)];
        isEnabled = [v10 isEnabled];

        if (isEnabled)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [dependentEntryKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  if ([updateCopy enabilityChanged])
  {
    [itemCopy setEnabled:{objc_msgSend(updateCopy, "enabled")}];
  }

  v8 = [(_UIStatusBarItem *)self applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy styleAttributesChanged] && objc_msgSend(itemCopy, "isEnabled"))
  {
    styleAttributes = [updateCopy styleAttributes];
    [(_UIStatusBarItem *)self applyStyleAttributes:styleAttributes toDisplayItem:itemCopy];
  }

  if ([updateCopy enabilityChanged] && (objc_msgSend(updateCopy, "enabled") & 1) == 0)
  {
    [itemCopy setEnabled:0];
  }

  return v8;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[_UIStatusBarDisplayItem alloc] initWithIdentifier:identifierCopy item:self];

  return v5;
}

- (id)displayItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_displayItems objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [(_UIStatusBarItem *)self createDisplayItemForIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_displayItems setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

- (id)viewForIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E696AAA8];
  identifierCopy = identifier;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarItem.m" lineNumber:189 description:{@"%@ has no view for identifier %@", self, identifierCopy}];

  return 0;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end