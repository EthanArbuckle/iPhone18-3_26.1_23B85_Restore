@interface _UIKeyShortcutHUDShortcut
+ (id)shortcutWithUIKeyCommand:(id)a3;
- (BOOL)_isEquivalentToPasteAndMatchStyleShortcut;
- (BOOL)_isEquivalentToPasteShortcut;
- (BOOL)isPasteShortcut;
- (NSArray)shortcutAlternates;
- (NSString)discoverabilityTitle;
- (NSString)hudTitle;
- (NSString)input;
- (_UIKeyShortcutHUDShortcut)baseShortcutForAlternate;
- (_UIKeyShortcutHUDShortcut)init;
- (_UIKeyShortcutHUDShortcut)initWithCoder:(id)a3;
- (_UIMenuLeafAlternate)alternateForBaseShortcut;
- (id)originalTarget;
- (id)shortcutToDisplayForModifierFlags:(int64_t)a3;
- (int64_t)modifierFlags;
- (unint64_t)attributes;
- (void)_acceptMenuVisit:(id)a3 shortcutVisit:(id)a4;
- (void)_updateOverrideTitle;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIKeyShortcutHUDShortcut

+ (id)shortcutWithUIKeyCommand:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UIKeyShortcutHUDShortcut;
  v3 = objc_msgSendSuper2(&v5, sel_elementWithUIMenuElement_, a3);
  [v3 _updateOverrideTitle];

  return v3;
}

- (_UIKeyShortcutHUDShortcut)init
{
  v8.receiver = self;
  v8.super_class = _UIKeyShortcutHUDShortcut;
  v2 = [(_UIKeyShortcutHUDShortcut *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    displayableAlternates = v2->_displayableAlternates;
    v2->_displayableAlternates = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    alternatesMap = v2->_alternatesMap;
    v2->_alternatesMap = v5;
  }

  return v2;
}

- (NSString)discoverabilityTitle
{
  v2 = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  v3 = [v2 discoverabilityTitle];

  return v3;
}

- (NSString)hudTitle
{
  if ([(NSString *)self->_overrideTitle length])
  {
    v3 = self->_overrideTitle;
  }

  else
  {
    v4 = [(_UIKeyShortcutHUDShortcut *)self discoverabilityTitle];
    v5 = [v4 length];

    if (v5)
    {
      v3 = [(_UIKeyShortcutHUDShortcut *)self discoverabilityTitle];
    }

    else
    {
      v6 = [(_UIKeyShortcutHUDMenuElement *)self title];
      v7 = [v6 length];

      if (v7)
      {
        v3 = [(_UIKeyShortcutHUDMenuElement *)self title];
      }

      else
      {
        v3 = @"No Title";
      }
    }
  }

  return v3;
}

- (void)_updateOverrideTitle
{
  if ([(_UIKeyShortcutHUDShortcut *)self _isEquivalentToPasteShortcut])
  {
    v3 = sel_paste_;
LABEL_5:
    v7 = [(UICommand *)UIKeyCommand _originalCommandForAction:v3];
    v4 = [v7 title];
    overrideTitle = self->_overrideTitle;
    self->_overrideTitle = v4;

    v6 = v7;
    goto LABEL_7;
  }

  if ([(_UIKeyShortcutHUDShortcut *)self _isEquivalentToPasteAndMatchStyleShortcut])
  {
    v3 = sel_pasteAndMatchStyle_;
    goto LABEL_5;
  }

  v6 = self->_overrideTitle;
  self->_overrideTitle = 0;
LABEL_7:
}

- (int64_t)modifierFlags
{
  v3 = [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  if (v3)
  {
    [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  }

  else
  {
    [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  }
  v4 = ;
  v5 = [v4 _layoutAwareModifierFlags];

  return v5;
}

- (NSString)input
{
  v3 = [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  if (v3)
  {
    [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  }

  else
  {
    [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  }
  v4 = ;
  v5 = [v4 _layoutAwareInput];

  return v5;
}

- (unint64_t)attributes
{
  v2 = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  v3 = [v2 attributes];

  return v3;
}

- (NSArray)shortcutAlternates
{
  v2 = [(_UIKeyShortcutHUDShortcut *)self alternatesMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)shortcutToDisplayForModifierFlags:(int64_t)a3
{
  v4 = self;
  v5 = [(_UIKeyShortcutHUDShortcut *)v4 uiKeyCommand];
  v6 = _UIMenuLeafAlternateForModifierFlagsUsingAlternates(v5, v4->_displayableAlternates, a3);

  if (v6)
  {
    v7 = [(NSMutableDictionary *)v4->_alternatesMap objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;

      v4 = v9;
    }
  }

  return v4;
}

- (BOOL)isPasteShortcut
{
  if ([(_UIKeyShortcutHUDShortcut *)self _isEquivalentToPasteShortcut])
  {
    return 1;
  }

  return [(_UIKeyShortcutHUDShortcut *)self _isEquivalentToPasteAndMatchStyleShortcut];
}

- (BOOL)_isEquivalentToPasteShortcut
{
  v2 = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  v3 = [v2 action] == sel_paste_;

  return v3;
}

- (BOOL)_isEquivalentToPasteAndMatchStyleShortcut
{
  v2 = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  v3 = [v2 action] == sel_pasteAndMatchStyle_;

  return v3;
}

- (void)_acceptMenuVisit:(id)a3 shortcutVisit:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDShortcut;
  v4 = a3;
  [(_UIKeyShortcutHUDMenuElement *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_displayableAlternates forKey:{@"displayableAlternates", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_alternatesMap forKey:@"alternatesMap"];
}

- (_UIKeyShortcutHUDShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _UIKeyShortcutHUDShortcut;
  v5 = [(_UIKeyShortcutHUDMenuElement *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"displayableAlternates"];
    displayableAlternates = v5->_displayableAlternates;
    v5->_displayableAlternates = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = [v12 setWithObjects:{v13, v14, v15, 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"alternatesMap"];
    alternatesMap = v5->_alternatesMap;
    v5->_alternatesMap = v17;

    objc_storeWeak(&v5->_baseShortcutForAlternate, v5);
    v19 = v5->_alternatesMap;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43___UIKeyShortcutHUDShortcut_initWithCoder___block_invoke;
    v22[3] = &unk_1E7123380;
    v20 = v5;
    v23 = v20;
    [(NSMutableDictionary *)v19 enumerateKeysAndObjectsUsingBlock:v22];
    [(_UIKeyShortcutHUDShortcut *)v20 _updateOverrideTitle];
  }

  return v5;
}

- (_UIKeyShortcutHUDShortcut)baseShortcutForAlternate
{
  WeakRetained = objc_loadWeakRetained(&self->_baseShortcutForAlternate);

  return WeakRetained;
}

- (_UIMenuLeafAlternate)alternateForBaseShortcut
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateForBaseShortcut);

  return WeakRetained;
}

- (id)originalTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_originalTarget);

  return WeakRetained;
}

@end