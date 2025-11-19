@interface _UIMainMenuCommandState
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuCommandState)initWithCoder:(id)a3;
- (id)_initWithValidatedMenuLeaf:(id)a3 localizedKeyCombination:(id)a4 isPerformable:(BOOL)a5;
- (id)_resolvedAttributedTitleWithPasteVariant:(id)a3;
- (id)_resolvedImageWithPasteVariant:(id)a3;
- (id)_resolvedSelectedImageWithPasteVariant:(id)a3;
- (id)_resolvedTitleWithPasteVariant:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuCommandState

- (id)_initWithValidatedMenuLeaf:(id)a3 localizedKeyCombination:(id)a4 isPerformable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _UIMainMenuCommandState;
  v11 = [(_UIMainMenuCommandState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_validatedMenuLeaf, a3);
    objc_storeStrong(&v12->_localizedKeyCombination, a4);
    v12->_performable = a5;
  }

  return v12;
}

- (id)_resolvedTitleWithPasteVariant:(id)a3
{
  v4 = [a3 localizedStringForLocalization:0];
  if ([v4 length])
  {
    v5 = v4;
LABEL_7:
    v11 = v5;
    goto LABEL_8;
  }

  v6 = [(_UIMenuLeaf *)self->_validatedMenuLeaf title];
  v7 = [v6 length];

  validatedMenuLeaf = self->_validatedMenuLeaf;
  if (v7)
  {
    v5 = [(_UIMenuLeaf *)validatedMenuLeaf title];
    goto LABEL_7;
  }

  v9 = [(_UIMenuLeaf *)validatedMenuLeaf discoverabilityTitle];
  v10 = [v9 length];

  if (v10)
  {
    v5 = [(_UIMenuLeaf *)self->_validatedMenuLeaf discoverabilityTitle];
    goto LABEL_7;
  }

  v11 = &stru_1EFB14550;
LABEL_8:

  return v11;
}

- (id)_resolvedAttributedTitleWithPasteVariant:(id)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_UIMenuLeaf *)self->_validatedMenuLeaf attributedTitle];
  }

  return v5;
}

- (id)_resolvedImageWithPasteVariant:(id)a3
{
  v4 = [a3 glyph];
  if ([v4 length])
  {
    [UIImage _systemImageNamed:v4];
  }

  else
  {
    [(_UIMenuLeaf *)self->_validatedMenuLeaf image];
  }
  v5 = ;

  return v5;
}

- (id)_resolvedSelectedImageWithPasteVariant:(id)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_UIMenuLeaf *)self->_validatedMenuLeaf selectedImage];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  validatedMenuLeaf = self->_validatedMenuLeaf;
  v5 = a3;
  [v5 encodeObject:validatedMenuLeaf forKey:@"ValidatedMenuLeaf"];
  [v5 encodeObject:self->_localizedKeyCombination forKey:@"LocalizedKeyCombination"];
  [v5 encodeBool:self->_performable forKey:@"Performable"];
}

- (_UIMainMenuCommandState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuCommandState *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"ValidatedMenuLeaf"];
    validatedMenuLeaf = v5->_validatedMenuLeaf;
    v5->_validatedMenuLeaf = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"LocalizedKeyCombination"];
    localizedKeyCombination = v5->_localizedKeyCombination;
    v5->_localizedKeyCombination = v10;

    v5->_performable = [v4 decodeBoolForKey:@"Performable"];
    v12 = objc_opt_self();
    LOBYTE(v9) = objc_opt_isKindOfClass();

    if (v9)
    {
      v13 = v5->_validatedMenuLeaf;
      v14 = [UIApp _hardwareKeyboard];
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v15 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar < 1 || (v19 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, _UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic))
      {
        v16 = 0;
      }

      else
      {
        do
        {
          v16 = v15 < v19;
          if (v15 < v19)
          {
            break;
          }

          _UIInternalPreferenceSync(v15, &_UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, @"EnableLayoutAwareShortcutsAutomatic", _UIInternalPreferenceUpdateBool);
          v19 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic;
        }

        while (v15 != _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic);
      }

      if (byte_1ED48B2A4)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      [(_UIMenuLeaf *)v13 _localizeWithGSKeyboard:v14 automatically:v17 force:0];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      validatedMenuLeaf = v7->_validatedMenuLeaf;
      v9 = self->_validatedMenuLeaf;
      v10 = validatedMenuLeaf;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {
          goto LABEL_16;
        }

        v12 = [(_UIMenuLeaf *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      localizedKeyCombination = v7->_localizedKeyCombination;
      v9 = self->_localizedKeyCombination;
      v15 = localizedKeyCombination;
      v11 = v15;
      if (v9 == v15)
      {

LABEL_19:
        v13 = self->_performable == v7->_performable;
        goto LABEL_20;
      }

      if (v9 && v15)
      {
        v16 = [(_UIMenuLeaf *)v9 isEqual:v15];

        if (v16)
        {
          goto LABEL_19;
        }

LABEL_17:
        v13 = 0;
LABEL_20:

        goto LABEL_21;
      }

LABEL_16:

      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_21:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_validatedMenuLeaf withName:@"_validatedMenuLeaf"];
  v5 = [v3 appendObject:self->_localizedKeyCombination withName:@"_localizedKeyCombination" skipIfNil:1];
  v6 = [v3 appendBool:self->_performable withName:@"_performable"];
  v7 = [v3 build];

  return v7;
}

@end