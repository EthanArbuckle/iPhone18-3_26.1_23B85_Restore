@interface _UIMainMenuCommandState
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuCommandState)initWithCoder:(id)coder;
- (id)_initWithValidatedMenuLeaf:(id)leaf localizedKeyCombination:(id)combination isPerformable:(BOOL)performable;
- (id)_resolvedAttributedTitleWithPasteVariant:(id)variant;
- (id)_resolvedImageWithPasteVariant:(id)variant;
- (id)_resolvedSelectedImageWithPasteVariant:(id)variant;
- (id)_resolvedTitleWithPasteVariant:(id)variant;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuCommandState

- (id)_initWithValidatedMenuLeaf:(id)leaf localizedKeyCombination:(id)combination isPerformable:(BOOL)performable
{
  leafCopy = leaf;
  combinationCopy = combination;
  v14.receiver = self;
  v14.super_class = _UIMainMenuCommandState;
  v11 = [(_UIMainMenuCommandState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_validatedMenuLeaf, leaf);
    objc_storeStrong(&v12->_localizedKeyCombination, combination);
    v12->_performable = performable;
  }

  return v12;
}

- (id)_resolvedTitleWithPasteVariant:(id)variant
{
  v4 = [variant localizedStringForLocalization:0];
  if ([v4 length])
  {
    title2 = v4;
LABEL_7:
    v11 = title2;
    goto LABEL_8;
  }

  title = [(_UIMenuLeaf *)self->_validatedMenuLeaf title];
  v7 = [title length];

  validatedMenuLeaf = self->_validatedMenuLeaf;
  if (v7)
  {
    title2 = [(_UIMenuLeaf *)validatedMenuLeaf title];
    goto LABEL_7;
  }

  discoverabilityTitle = [(_UIMenuLeaf *)validatedMenuLeaf discoverabilityTitle];
  v10 = [discoverabilityTitle length];

  if (v10)
  {
    title2 = [(_UIMenuLeaf *)self->_validatedMenuLeaf discoverabilityTitle];
    goto LABEL_7;
  }

  v11 = &stru_1EFB14550;
LABEL_8:

  return v11;
}

- (id)_resolvedAttributedTitleWithPasteVariant:(id)variant
{
  if (variant)
  {
    attributedTitle = 0;
  }

  else
  {
    attributedTitle = [(_UIMenuLeaf *)self->_validatedMenuLeaf attributedTitle];
  }

  return attributedTitle;
}

- (id)_resolvedImageWithPasteVariant:(id)variant
{
  glyph = [variant glyph];
  if ([glyph length])
  {
    [UIImage _systemImageNamed:glyph];
  }

  else
  {
    [(_UIMenuLeaf *)self->_validatedMenuLeaf image];
  }
  v5 = ;

  return v5;
}

- (id)_resolvedSelectedImageWithPasteVariant:(id)variant
{
  if (variant)
  {
    selectedImage = 0;
  }

  else
  {
    selectedImage = [(_UIMenuLeaf *)self->_validatedMenuLeaf selectedImage];
  }

  return selectedImage;
}

- (void)encodeWithCoder:(id)coder
{
  validatedMenuLeaf = self->_validatedMenuLeaf;
  coderCopy = coder;
  [coderCopy encodeObject:validatedMenuLeaf forKey:@"ValidatedMenuLeaf"];
  [coderCopy encodeObject:self->_localizedKeyCombination forKey:@"LocalizedKeyCombination"];
  [coderCopy encodeBool:self->_performable forKey:@"Performable"];
}

- (_UIMainMenuCommandState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommandState *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"ValidatedMenuLeaf"];
    validatedMenuLeaf = v5->_validatedMenuLeaf;
    v5->_validatedMenuLeaf = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"LocalizedKeyCombination"];
    localizedKeyCombination = v5->_localizedKeyCombination;
    v5->_localizedKeyCombination = v10;

    v5->_performable = [coderCopy decodeBoolForKey:@"Performable"];
    v12 = objc_opt_self();
    LOBYTE(v9) = objc_opt_isKindOfClass();

    if (v9)
    {
      v13 = v5->_validatedMenuLeaf;
      _hardwareKeyboard = [UIApp _hardwareKeyboard];
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

      [(_UIMenuLeaf *)v13 _localizeWithGSKeyboard:_hardwareKeyboard automatically:v17 force:0];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  build = [v3 build];

  return build;
}

@end