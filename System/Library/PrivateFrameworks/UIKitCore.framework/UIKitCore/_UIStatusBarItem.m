@interface _UIStatusBarItem
+ (id)createItemForIdentifier:(id)a3 statusBar:(id)a4;
+ (id)displayItemIdentifierFromString:(id)a3;
+ (id)itemIdentifierFromString:(id)a3;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (_UIStatusBar)statusBar;
- (_UIStatusBarItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (id)_applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)description;
- (id)displayItemForIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
@end

@implementation _UIStatusBarItem

+ (id)itemIdentifierFromString:(id)a3
{
  v3 = a3;
  v4 = [_UIStatusBarIdentifier identifierForObject:objc_opt_class() string:v3];

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
  v7 = a3;
  v8 = a4;
  v9 = [a1 itemClassForIdentifier:v7];
  if (!v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarItem.m" lineNumber:63 description:{@"No class found for item with identifier %@", v7}];
  }

  v10 = [[v9 alloc] initWithIdentifier:v7 statusBar:v8];

  return v10;
}

- (_UIStatusBarItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = _UIStatusBarItem;
  v7 = a4;
  v8 = [(_UIStatusBarItem *)&v14 init];
  identifier = v8->_identifier;
  v8->_identifier = v6;
  v10 = v6;

  objc_storeWeak(&v8->_statusBar, v7);
  v11 = [MEMORY[0x1E695DF90] dictionary];
  displayItems = v8->_displayItems;
  v8->_displayItems = v11;

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

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(_UIStatusBarItem *)self dependentEntryKeys];
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
  if ([v6 enabilityChanged])
  {
    [v7 setEnabled:{objc_msgSend(v6, "enabled")}];
  }

  v8 = [(_UIStatusBarItem *)self applyUpdate:v6 toDisplayItem:v7];
  if ([v6 styleAttributesChanged] && objc_msgSend(v7, "isEnabled"))
  {
    v9 = [v6 styleAttributes];
    [(_UIStatusBarItem *)self applyStyleAttributes:v9 toDisplayItem:v7];
  }

  if ([v6 enabilityChanged] && (objc_msgSend(v6, "enabled") & 1) == 0)
  {
    [v7 setEnabled:0];
  }

  return v8;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[_UIStatusBarDisplayItem alloc] initWithIdentifier:v4 item:self];

  return v5;
}

- (id)displayItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_displayItems objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(_UIStatusBarItem *)self createDisplayItemForIdentifier:v4];
    [(NSMutableDictionary *)self->_displayItems setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)viewForIdentifier:(id)a3
{
  v5 = MEMORY[0x1E696AAA8];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"_UIStatusBarItem.m" lineNumber:189 description:{@"%@ has no view for identifier %@", self, v6}];

  return 0;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end