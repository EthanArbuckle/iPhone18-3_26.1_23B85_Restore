@interface STUIStatusBarItem
+ (id)createItemForIdentifier:(id)identifier statusBar:(id)bar;
+ (id)displayItemIdentifierFromString:(id)string;
+ (id)itemIdentifierFromString:(id)string;
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (STUIStatusBar)statusBar;
- (STUIStatusBarItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (id)_applyUpdate:(id)update toDisplayItem:(id)item;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayItemForIdentifier:(id)identifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STUIStatusBarItem

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

+ (id)itemIdentifierFromString:(id)string
{
  stringCopy = string;
  v4 = [STUIStatusBarIdentifier identifierForObject:objc_opt_class() string:stringCopy];

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
  barCopy = bar;
  identifierCopy = identifier;
  v8 = [objc_alloc(objc_msgSend(self itemClassForIdentifier:{identifierCopy)), "initWithIdentifier:statusBar:", identifierCopy, barCopy}];

  return v8;
}

- (STUIStatusBarItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = STUIStatusBarItem;
  barCopy = bar;
  v8 = [(STUIStatusBarItem *)&v14 init];
  identifier = v8->_identifier;
  v8->_identifier = identifierCopy;
  v10 = identifierCopy;

  objc_storeWeak(&v8->_statusBar, barCopy);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  displayItems = v8->_displayItems;
  v8->_displayItems = dictionary;

  return v8;
}

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dependentEntryKeys = [(STUIStatusBarItem *)self dependentEntryKeys];
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
  if ([updateCopy enablementChanged])
  {
    [itemCopy setEnabled:{objc_msgSend(updateCopy, "enabled")}];
  }

  v8 = [(STUIStatusBarItem *)self applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy styleAttributesChanged] && objc_msgSend(itemCopy, "isEnabled"))
  {
    styleAttributes = [updateCopy styleAttributes];
    [(STUIStatusBarItem *)self applyStyleAttributes:styleAttributes toDisplayItem:itemCopy];
  }

  if ([updateCopy enablementChanged] && (objc_msgSend(updateCopy, "enabled") & 1) == 0)
  {
    [itemCopy setEnabled:0];
  }

  return v8;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[STUIStatusBarDisplayItem alloc] initWithIdentifier:identifierCopy item:self];

  return v5;
}

- (id)displayItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_displayItems objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [(STUIStatusBarItem *)self createDisplayItemForIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_displayItems setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(STUIStatusBarItem *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarItem *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarItem *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  return succinctDescriptionBuilder;
}

@end