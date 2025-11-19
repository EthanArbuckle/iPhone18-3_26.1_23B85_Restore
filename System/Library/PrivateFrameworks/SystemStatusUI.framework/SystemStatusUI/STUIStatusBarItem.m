@interface STUIStatusBarItem
+ (id)createItemForIdentifier:(id)a3 statusBar:(id)a4;
+ (id)displayItemIdentifierFromString:(id)a3;
+ (id)itemIdentifierFromString:(id)a3;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (STUIStatusBar)statusBar;
- (STUIStatusBarItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (id)_applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayItemForIdentifier:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STUIStatusBarItem

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

+ (id)itemIdentifierFromString:(id)a3
{
  v3 = a3;
  v4 = [STUIStatusBarIdentifier identifierForObject:objc_opt_class() string:v3];

  return v4;
}

+ (id)displayItemIdentifierFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 identifier];
  v6 = [a1 displayItemIdentifierFromIdentifier:v5 string:v4];

  return v6;
}

+ (id)createItemForIdentifier:(id)a3 statusBar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_msgSend(a1 itemClassForIdentifier:{v7)), "initWithIdentifier:statusBar:", v7, v6}];

  return v8;
}

- (STUIStatusBarItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = STUIStatusBarItem;
  v7 = a4;
  v8 = [(STUIStatusBarItem *)&v14 init];
  identifier = v8->_identifier;
  v8->_identifier = v6;
  v10 = v6;

  objc_storeWeak(&v8->_statusBar, v7);
  v11 = [MEMORY[0x277CBEB38] dictionary];
  displayItems = v8->_displayItems;
  v8->_displayItems = v11;

  return v8;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(STUIStatusBarItem *)self dependentEntryKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v5 valueForKey:*(*(&v13 + 1) + 8 * i)];
        v11 = [v10 isEnabled];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 enablementChanged])
  {
    [v7 setEnabled:{objc_msgSend(v6, "enabled")}];
  }

  v8 = [(STUIStatusBarItem *)self applyUpdate:v6 toDisplayItem:v7];
  if ([v6 styleAttributesChanged] && objc_msgSend(v7, "isEnabled"))
  {
    v9 = [v6 styleAttributes];
    [(STUIStatusBarItem *)self applyStyleAttributes:v9 toDisplayItem:v7];
  }

  if ([v6 enablementChanged] && (objc_msgSend(v6, "enabled") & 1) == 0)
  {
    [v7 setEnabled:0];
  }

  return v8;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[STUIStatusBarDisplayItem alloc] initWithIdentifier:v4 item:self];

  return v5;
}

- (id)displayItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_displayItems objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(STUIStatusBarItem *)self createDisplayItemForIdentifier:v4];
    [(NSMutableDictionary *)self->_displayItems setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(STUIStatusBarItem *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarItem *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarItem *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  return v7;
}

@end