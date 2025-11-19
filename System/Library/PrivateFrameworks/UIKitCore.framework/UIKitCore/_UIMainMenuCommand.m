@interface _UIMainMenuCommand
- (BOOL)_isHiddenForState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIMainMenuCommand)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 uiMenuLeaf:(id)a4 keyboardShortcut:(id)a5 alternates:(id)a6;
- (id)_initWithUIMenuLeaf:(id)a3 allowingKeyboardShortcuts:(BOOL)a4;
- (id)_uiActionForSelfOnlyForSession:(id)a3 commandState:(id)a4 primaryActionHandler:(id)a5;
- (id)_uiActionForSelfOnlyForSession:(id)a3 parentState:(id)a4 primaryActionHandler:(id)a5;
- (id)uiMenuLeafForCommandAndAlternatesForSession:(id)a3 parentState:(id)a4 primaryActionHandler:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuCommand

- (id)_initWithIdentifier:(id)a3 uiMenuLeaf:(id)a4 keyboardShortcut:(id)a5 alternates:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = _UIMainMenuCommand;
  v15 = [(_UIMainMenuCommand *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_localClientMenuLeaf, a4);
    objc_storeStrong(&v16->_keyboardShortcut, a5);
    v17 = [v14 copy];
    alternates = v16->_alternates;
    v16->_alternates = v17;
  }

  return v16;
}

- (id)_initWithUIMenuLeaf:(id)a3 allowingKeyboardShortcuts:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [_UIMainMenuCommandIdentifier alloc];
  ++_UIMainMenuElementIdentifierNumberGenerate_lastMenuElementIdentifier;
  v8 = [(_UIMainMenuCommandIdentifier *)v7 _initWithIdentifierNumber:?];
  if (v4)
  {
    v9 = [v6 _keyboardShortcut];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 baseKeyCombination];
      v12 = [v11 modifierFlags];
      v13 = [v10 baseKeyCombination];
      v14 = [v13 keyEquivalent];
      v15 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:v12 keyEquivalent:v14];
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

  v16 = [v6 _leafAlternates];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __68___UIMainMenuCommand__initWithUIMenuLeaf_allowingKeyboardShortcuts___block_invoke;
  v26 = &unk_1E7124960;
  v27 = v6;
  v28 = v4;
  v17 = v6;
  v18 = [v16 bs_map:&v23];
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

- (id)uiMenuLeafForCommandAndAlternatesForSession:(id)a3 parentState:(id)a4 primaryActionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIMainMenuCommand *)self _uiActionForSelfOnlyForSession:v8 parentState:v9 primaryActionHandler:v10];
  alternates = self->_alternates;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99___UIMainMenuCommand_uiMenuLeafForCommandAndAlternatesForSession_parentState_primaryActionHandler___block_invoke;
  v18[3] = &unk_1E7124988;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [(NSArray *)alternates bs_map:v18];
  [v11 _setLeafAlternates:v16];

  return v11;
}

- (id)_uiActionForSelfOnlyForSession:(id)a3 parentState:(id)a4 primaryActionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 commandStates];
  v11 = [v10 objectForKeyedSubscript:self->_identifier];

  if (v11)
  {
    v12 = [(_UIMainMenuCommand *)self _uiActionForSelfOnlyForSession:v8 commandState:v11 primaryActionHandler:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_uiActionForSelfOnlyForSession:(id)a3 commandState:(id)a4 primaryActionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 _validatedMenuLeaf];
  v12 = [v11 _pasteVariant];
  v13 = [v11 attributes] & 0xFFFFFFFFFFFFFFF7;
  v14 = v13 | [v8 _isPerformable] ^ 1;
  if ([(_UIMainMenuCommand *)self _isHiddenForState:v8])
  {
    v15 = v14 | 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = [[_UIMainMenuCommandPrimaryActionContext alloc] _initWithCommand:self needsAuthenticationMessage:v12 != 0];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __87___UIMainMenuCommand__uiActionForSelfOnlyForSession_commandState_primaryActionHandler___block_invoke;
  v32 = &unk_1E71249B0;
  v17 = v9;
  v34 = v17;
  v18 = v16;
  v33 = v18;
  v19 = [UIAction actionWithHandler:&v29];
  v20 = [v8 _resolvedTitleWithPasteVariant:{v12, v29, v30, v31, v32}];
  [v19 setTitle:v20];

  v21 = [v8 _resolvedAttributedTitleWithPasteVariant:v12];
  [v19 setAttributedTitle:v21];

  v22 = [v11 subtitle];
  [v19 setSubtitle:v22];

  v23 = [v8 _resolvedImageWithPasteVariant:v12];
  [v19 setImage:v23];

  v24 = [v8 _resolvedSelectedImageWithPasteVariant:v12];
  [v19 setSelectedImage:v24];

  [v19 setAttributes:v15];
  [v19 setState:{objc_msgSend(v11, "state")}];
  v25 = [v10 _isKeyboardShortcutVisibleForCommand:self];

  if (v25)
  {
    v26 = [v8 _localizedKeyCombination];
    v27 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v26];

    [v27 setAutomaticMirroringEnabled:0];
    [v27 setAutomaticLocalizationEnabled:0];
    [v19 _setKeyboardShortcut:v27];
  }

  return v19;
}

- (BOOL)_isHiddenForState:(id)a3
{
  v4 = a3;
  v5 = [v4 _validatedMenuLeaf];
  v6 = [v5 attributes];

  if ((v6 & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v7 = [v4 _validatedMenuLeaf];
    v8 = [v7 _pasteVariant];

    if (self->_keyboardShortcut)
    {
      v9 = [v4 _resolvedTitleWithPasteVariant:v8];
      if ([v9 length])
      {
        v10 = 0;
      }

      else
      {
        v11 = [v4 _resolvedAttributedTitleWithPasteVariant:v8];
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"CommandIdentifier"];
  [v5 encodeObject:self->_keyboardShortcut forKey:@"KeyboardShortcut"];
  [v5 encodeObject:self->_alternates forKey:@"Alternates"];
}

- (_UIMainMenuCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuCommand *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"CommandIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"KeyboardShortcut"];
    keyboardShortcut = v5->_keyboardShortcut;
    v5->_keyboardShortcut = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = [v12 setWithObjects:{v13, v14, 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"Alternates"];
    alternates = v5->_alternates;
    v5->_alternates = v16;

    localClientMenuLeaf = v5->_localClientMenuLeaf;
    v5->_localClientMenuLeaf = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v7 = [v3 build];

  return v7;
}

@end