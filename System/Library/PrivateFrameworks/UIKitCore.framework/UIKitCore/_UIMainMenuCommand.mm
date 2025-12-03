@interface _UIMainMenuCommand
- (BOOL)_isHiddenForState:(id)state;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIMainMenuCommand)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier uiMenuLeaf:(id)leaf keyboardShortcut:(id)shortcut alternates:(id)alternates;
- (id)_initWithUIMenuLeaf:(id)leaf allowingKeyboardShortcuts:(BOOL)shortcuts;
- (id)_uiActionForSelfOnlyForSession:(id)session commandState:(id)state primaryActionHandler:(id)handler;
- (id)_uiActionForSelfOnlyForSession:(id)session parentState:(id)state primaryActionHandler:(id)handler;
- (id)uiMenuLeafForCommandAndAlternatesForSession:(id)session parentState:(id)state primaryActionHandler:(id)handler;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuCommand

- (id)_initWithIdentifier:(id)identifier uiMenuLeaf:(id)leaf keyboardShortcut:(id)shortcut alternates:(id)alternates
{
  identifierCopy = identifier;
  leafCopy = leaf;
  shortcutCopy = shortcut;
  alternatesCopy = alternates;
  v20.receiver = self;
  v20.super_class = _UIMainMenuCommand;
  v15 = [(_UIMainMenuCommand *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_localClientMenuLeaf, leaf);
    objc_storeStrong(&v16->_keyboardShortcut, shortcut);
    v17 = [alternatesCopy copy];
    alternates = v16->_alternates;
    v16->_alternates = v17;
  }

  return v16;
}

- (id)_initWithUIMenuLeaf:(id)leaf allowingKeyboardShortcuts:(BOOL)shortcuts
{
  shortcutsCopy = shortcuts;
  leafCopy = leaf;
  v7 = [_UIMainMenuCommandIdentifier alloc];
  ++_UIMainMenuElementIdentifierNumberGenerate_lastMenuElementIdentifier;
  v8 = [(_UIMainMenuCommandIdentifier *)v7 _initWithIdentifierNumber:?];
  if (shortcutsCopy)
  {
    _keyboardShortcut = [leafCopy _keyboardShortcut];
    v10 = _keyboardShortcut;
    if (_keyboardShortcut)
    {
      baseKeyCombination = [_keyboardShortcut baseKeyCombination];
      modifierFlags = [baseKeyCombination modifierFlags];
      baseKeyCombination2 = [v10 baseKeyCombination];
      keyEquivalent = [baseKeyCombination2 keyEquivalent];
      v15 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:modifierFlags keyEquivalent:keyEquivalent];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  _leafAlternates = [leafCopy _leafAlternates];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __68___UIMainMenuCommand__initWithUIMenuLeaf_allowingKeyboardShortcuts___block_invoke;
  v26 = &unk_1E7124960;
  v27 = leafCopy;
  v28 = shortcutsCopy;
  v17 = leafCopy;
  v18 = [_leafAlternates bs_map:&v23];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v21 = [(_UIMainMenuCommand *)self _initWithIdentifier:v8 uiMenuLeaf:v17 keyboardShortcut:v15 alternates:v20, v23, v24, v25, v26];

  return v21;
}

- (id)uiMenuLeafForCommandAndAlternatesForSession:(id)session parentState:(id)state primaryActionHandler:(id)handler
{
  sessionCopy = session;
  stateCopy = state;
  handlerCopy = handler;
  v11 = [(_UIMainMenuCommand *)self _uiActionForSelfOnlyForSession:sessionCopy parentState:stateCopy primaryActionHandler:handlerCopy];
  alternates = self->_alternates;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99___UIMainMenuCommand_uiMenuLeafForCommandAndAlternatesForSession_parentState_primaryActionHandler___block_invoke;
  v18[3] = &unk_1E7124988;
  v19 = sessionCopy;
  v20 = stateCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = stateCopy;
  v15 = sessionCopy;
  v16 = [(NSArray *)alternates bs_map:v18];
  [v11 _setLeafAlternates:v16];

  return v11;
}

- (id)_uiActionForSelfOnlyForSession:(id)session parentState:(id)state primaryActionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  commandStates = [state commandStates];
  v11 = [commandStates objectForKeyedSubscript:self->_identifier];

  if (v11)
  {
    v12 = [(_UIMainMenuCommand *)self _uiActionForSelfOnlyForSession:sessionCopy commandState:v11 primaryActionHandler:handlerCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_uiActionForSelfOnlyForSession:(id)session commandState:(id)state primaryActionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  sessionCopy = session;
  _validatedMenuLeaf = [stateCopy _validatedMenuLeaf];
  _pasteVariant = [_validatedMenuLeaf _pasteVariant];
  v13 = [_validatedMenuLeaf attributes] & 0xFFFFFFFFFFFFFFF7;
  v14 = v13 | [stateCopy _isPerformable] ^ 1;
  if ([(_UIMainMenuCommand *)self _isHiddenForState:stateCopy])
  {
    v15 = v14 | 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = [[_UIMainMenuCommandPrimaryActionContext alloc] _initWithCommand:self needsAuthenticationMessage:_pasteVariant != 0];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __87___UIMainMenuCommand__uiActionForSelfOnlyForSession_commandState_primaryActionHandler___block_invoke;
  v32 = &unk_1E71249B0;
  v17 = handlerCopy;
  v34 = v17;
  v18 = v16;
  v33 = v18;
  v19 = [UIAction actionWithHandler:&v29];
  v20 = [stateCopy _resolvedTitleWithPasteVariant:{_pasteVariant, v29, v30, v31, v32}];
  [v19 setTitle:v20];

  v21 = [stateCopy _resolvedAttributedTitleWithPasteVariant:_pasteVariant];
  [v19 setAttributedTitle:v21];

  subtitle = [_validatedMenuLeaf subtitle];
  [v19 setSubtitle:subtitle];

  v23 = [stateCopy _resolvedImageWithPasteVariant:_pasteVariant];
  [v19 setImage:v23];

  v24 = [stateCopy _resolvedSelectedImageWithPasteVariant:_pasteVariant];
  [v19 setSelectedImage:v24];

  [v19 setAttributes:v15];
  [v19 setState:{objc_msgSend(_validatedMenuLeaf, "state")}];
  v25 = [sessionCopy _isKeyboardShortcutVisibleForCommand:self];

  if (v25)
  {
    _localizedKeyCombination = [stateCopy _localizedKeyCombination];
    v27 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:_localizedKeyCombination];

    [v27 setAutomaticMirroringEnabled:0];
    [v27 setAutomaticLocalizationEnabled:0];
    [v19 _setKeyboardShortcut:v27];
  }

  return v19;
}

- (BOOL)_isHiddenForState:(id)state
{
  stateCopy = state;
  _validatedMenuLeaf = [stateCopy _validatedMenuLeaf];
  attributes = [_validatedMenuLeaf attributes];

  if ((attributes & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    _validatedMenuLeaf2 = [stateCopy _validatedMenuLeaf];
    _pasteVariant = [_validatedMenuLeaf2 _pasteVariant];

    if (self->_keyboardShortcut)
    {
      v9 = [stateCopy _resolvedTitleWithPasteVariant:_pasteVariant];
      if ([v9 length])
      {
        v10 = 0;
      }

      else
      {
        v11 = [stateCopy _resolvedAttributedTitleWithPasteVariant:_pasteVariant];
        v10 = [v11 length] == 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"CommandIdentifier"];
  [coderCopy encodeObject:self->_keyboardShortcut forKey:@"KeyboardShortcut"];
  [coderCopy encodeObject:self->_alternates forKey:@"Alternates"];
}

- (_UIMainMenuCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommand *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"CommandIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"KeyboardShortcut"];
    keyboardShortcut = v5->_keyboardShortcut;
    v5->_keyboardShortcut = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = [v12 setWithObjects:{v13, v14, 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"Alternates"];
    alternates = v5->_alternates;
    v5->_alternates = v16;

    localClientMenuLeaf = v5->_localClientMenuLeaf;
    v5->_localClientMenuLeaf = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      identifier = v7->_identifier;
      v9 = self->_identifier;
      v10 = identifier;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_22;
        }

        v12 = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      keyboardShortcut = v7->_keyboardShortcut;
      v9 = self->_keyboardShortcut;
      v14 = keyboardShortcut;
      v11 = v14;
      if (v9 == v14)
      {

LABEL_17:
        alternates = self->_alternates;
        v16 = v7->_alternates;
        v9 = alternates;
        v17 = v16;
        v11 = v17;
        if (v9 == v17)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v17)
          {
            LOBYTE(v12) = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v17];
          }
        }

        goto LABEL_22;
      }

      LOBYTE(v12) = 0;
      if (v9 && v14)
      {
        v12 = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    LOBYTE(v12) = 0;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_UIMainMenuCommandIdentifier *)self->_identifier hash];
  v4 = [(_UIMainMenuCommandKeyboardShortcut *)self->_keyboardShortcut hash]^ v3;
  return v4 ^ [(NSArray *)self->_alternates hash];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_localClientMenuLeaf withName:@"_localClientMenuLeaf" skipIfNil:1];
  v6 = [v3 appendObject:self->_keyboardShortcut withName:@"_keyboardShortcut" skipIfNil:1];
  [v3 appendArraySection:self->_alternates withName:@"alternates" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end