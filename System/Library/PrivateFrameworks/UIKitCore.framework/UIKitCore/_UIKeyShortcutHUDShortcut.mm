@interface _UIKeyShortcutHUDShortcut
+ (id)shortcutWithUIKeyCommand:(id)command;
- (BOOL)_isEquivalentToPasteAndMatchStyleShortcut;
- (BOOL)_isEquivalentToPasteShortcut;
- (BOOL)isPasteShortcut;
- (NSArray)shortcutAlternates;
- (NSString)discoverabilityTitle;
- (NSString)hudTitle;
- (NSString)input;
- (_UIKeyShortcutHUDShortcut)baseShortcutForAlternate;
- (_UIKeyShortcutHUDShortcut)init;
- (_UIKeyShortcutHUDShortcut)initWithCoder:(id)coder;
- (_UIMenuLeafAlternate)alternateForBaseShortcut;
- (id)originalTarget;
- (id)shortcutToDisplayForModifierFlags:(int64_t)flags;
- (int64_t)modifierFlags;
- (unint64_t)attributes;
- (void)_acceptMenuVisit:(id)visit shortcutVisit:(id)shortcutVisit;
- (void)_updateOverrideTitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDShortcut

+ (id)shortcutWithUIKeyCommand:(id)command
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIKeyShortcutHUDShortcut;
  v3 = objc_msgSendSuper2(&v5, sel_elementWithUIMenuElement_, command);
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
    array = [MEMORY[0x1E695DF70] array];
    displayableAlternates = v2->_displayableAlternates;
    v2->_displayableAlternates = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    alternatesMap = v2->_alternatesMap;
    v2->_alternatesMap = dictionary;
  }

  return v2;
}

- (NSString)discoverabilityTitle
{
  uiKeyCommand = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  discoverabilityTitle = [uiKeyCommand discoverabilityTitle];

  return discoverabilityTitle;
}

- (NSString)hudTitle
{
  if ([(NSString *)self->_overrideTitle length])
  {
    discoverabilityTitle2 = self->_overrideTitle;
  }

  else
  {
    discoverabilityTitle = [(_UIKeyShortcutHUDShortcut *)self discoverabilityTitle];
    v5 = [discoverabilityTitle length];

    if (v5)
    {
      discoverabilityTitle2 = [(_UIKeyShortcutHUDShortcut *)self discoverabilityTitle];
    }

    else
    {
      title = [(_UIKeyShortcutHUDMenuElement *)self title];
      v7 = [title length];

      if (v7)
      {
        discoverabilityTitle2 = [(_UIKeyShortcutHUDMenuElement *)self title];
      }

      else
      {
        discoverabilityTitle2 = @"No Title";
      }
    }
  }

  return discoverabilityTitle2;
}

- (void)_updateOverrideTitle
{
  if ([(_UIKeyShortcutHUDShortcut *)self _isEquivalentToPasteShortcut])
  {
    v3 = sel_paste_;
LABEL_5:
    v7 = [(UICommand *)UIKeyCommand _originalCommandForAction:v3];
    title = [v7 title];
    overrideTitle = self->_overrideTitle;
    self->_overrideTitle = title;

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
  discoverabilityUIKeyCommand = [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  if (discoverabilityUIKeyCommand)
  {
    [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  }

  else
  {
    [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  }
  v4 = ;
  _layoutAwareModifierFlags = [v4 _layoutAwareModifierFlags];

  return _layoutAwareModifierFlags;
}

- (NSString)input
{
  discoverabilityUIKeyCommand = [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  if (discoverabilityUIKeyCommand)
  {
    [(_UIKeyShortcutHUDShortcut *)self discoverabilityUIKeyCommand];
  }

  else
  {
    [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  }
  v4 = ;
  _layoutAwareInput = [v4 _layoutAwareInput];

  return _layoutAwareInput;
}

- (unint64_t)attributes
{
  uiKeyCommand = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  attributes = [uiKeyCommand attributes];

  return attributes;
}

- (NSArray)shortcutAlternates
{
  alternatesMap = [(_UIKeyShortcutHUDShortcut *)self alternatesMap];
  allValues = [alternatesMap allValues];

  return allValues;
}

- (id)shortcutToDisplayForModifierFlags:(int64_t)flags
{
  selfCopy = self;
  uiKeyCommand = [(_UIKeyShortcutHUDShortcut *)selfCopy uiKeyCommand];
  v6 = _UIMenuLeafAlternateForModifierFlagsUsingAlternates(uiKeyCommand, selfCopy->_displayableAlternates, flags);

  if (v6)
  {
    v7 = [(NSMutableDictionary *)selfCopy->_alternatesMap objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;

      selfCopy = v9;
    }
  }

  return selfCopy;
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
  uiKeyCommand = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  v3 = [uiKeyCommand action] == sel_paste_;

  return v3;
}

- (BOOL)_isEquivalentToPasteAndMatchStyleShortcut
{
  uiKeyCommand = [(_UIKeyShortcutHUDShortcut *)self uiKeyCommand];
  v3 = [uiKeyCommand action] == sel_pasteAndMatchStyle_;

  return v3;
}

- (void)_acceptMenuVisit:(id)visit shortcutVisit:(id)shortcutVisit
{
  if (shortcutVisit)
  {
    (*(shortcutVisit + 2))(shortcutVisit, self);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDShortcut;
  coderCopy = coder;
  [(_UIKeyShortcutHUDMenuElement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_displayableAlternates forKey:{@"displayableAlternates", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_alternatesMap forKey:@"alternatesMap"];
}

- (_UIKeyShortcutHUDShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = _UIKeyShortcutHUDShortcut;
  v5 = [(_UIKeyShortcutHUDMenuElement *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"displayableAlternates"];
    displayableAlternates = v5->_displayableAlternates;
    v5->_displayableAlternates = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = [v12 setWithObjects:{v13, v14, v15, 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"alternatesMap"];
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