@interface _UIMenuLeafKeyboardShortcut
+ (_UIMenuLeafKeyboardShortcut)shortcutWithBaseKeyCombination:(id)combination;
- (BOOL)_isKeyEquivalentOrKeyCodeSpecialKey;
- (BOOL)isEqual:(id)equal;
- (_UIMenuLeafKeyCombination)currentLocalizedKeyCombination;
- (_UIMenuLeafKeyboardShortcut)initWithBaseKeyCombination:(id)combination;
- (_UIMenuLeafKeyboardShortcut)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortcutAddingModifierFlags:(int64_t)flags;
- (void)_clearLocalizedKeyCombination;
- (void)_localizeWithGSKeyboard:(__GSKeyboard *)keyboard automatically:(BOOL)automatically force:(BOOL)force forDefaultShortcut:(BOOL)shortcut action:(SEL)action;
- (void)encodeWithCoder:(id)coder;
- (void)setAutomaticLocalizationEnabled:(BOOL)enabled;
- (void)setAutomaticMirroringEnabled:(BOOL)enabled;
@end

@implementation _UIMenuLeafKeyboardShortcut

+ (_UIMenuLeafKeyboardShortcut)shortcutWithBaseKeyCombination:(id)combination
{
  combinationCopy = combination;
  v5 = [[self alloc] initWithBaseKeyCombination:combinationCopy];

  return v5;
}

- (_UIMenuLeafKeyboardShortcut)initWithBaseKeyCombination:(id)combination
{
  combinationCopy = combination;
  v11.receiver = self;
  v11.super_class = _UIMenuLeafKeyboardShortcut;
  v5 = [(_UIMenuLeafKeyboardShortcut *)&v11 init];
  if (v5)
  {
    v6 = [combinationCopy copy];
    baseKeyCombination = v5->_baseKeyCombination;
    v5->_baseKeyCombination = v6;

    localizedKeyCombination = v5->_localizedKeyCombination;
    v5->_localizedKeyCombination = 0;

    lastLayout = v5->_lastLayout;
    v5->_lastLayout = 0;

    v5->_automaticLocalizationEnabled = dyld_program_sdk_at_least();
    v5->_automaticMirroringEnabled = dyld_program_sdk_at_least();
  }

  return v5;
}

- (id)shortcutAddingModifierFlags:(int64_t)flags
{
  v4 = [(_UIMenuLeafKeyCombination *)self->_baseKeyCombination combinationAddingModifierFlags:flags];
  if (self->_baseKeyCombination == v4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(_UIMenuLeafKeyboardShortcut *)self copy];
    objc_storeStrong(&selfCopy->_baseKeyCombination, v4);
    [(_UIMenuLeafKeyboardShortcut *)selfCopy _clearLocalizedKeyCombination];
  }

  return selfCopy;
}

- (_UIMenuLeafKeyCombination)currentLocalizedKeyCombination
{
  localizedKeyCombination = self->_localizedKeyCombination;
  if (!localizedKeyCombination)
  {
    localizedKeyCombination = self->_baseKeyCombination;
  }

  return localizedKeyCombination;
}

- (void)setAutomaticLocalizationEnabled:(BOOL)enabled
{
  if (self->_automaticLocalizationEnabled != enabled)
  {
    self->_automaticLocalizationEnabled = enabled;
    if (!enabled)
    {
      [(_UIMenuLeafKeyboardShortcut *)self _clearLocalizedKeyCombination];
    }
  }
}

- (void)setAutomaticMirroringEnabled:(BOOL)enabled
{
  if (self->_automaticMirroringEnabled != enabled)
  {
    self->_automaticMirroringEnabled = enabled;
    if (!enabled)
    {
      [(_UIMenuLeafKeyboardShortcut *)self _clearLocalizedKeyCombination];
    }
  }
}

- (void)_clearLocalizedKeyCombination
{
  localizedKeyCombination = self->_localizedKeyCombination;
  self->_localizedKeyCombination = 0;

  lastLayout = self->_lastLayout;
  self->_lastLayout = 0;

  self->_lastKeyboardType = 0;
}

- (void)_localizeWithGSKeyboard:(__GSKeyboard *)keyboard automatically:(BOOL)automatically force:(BOOL)force forDefaultShortcut:(BOOL)shortcut action:(SEL)action
{
  v58 = *MEMORY[0x1E69E9840];
  if (keyboard)
  {
    shortcutCopy = shortcut;
    automaticallyCopy = automatically;
    Layout = GSKeyboardGetLayout();
    v13 = GSKeyboardGetHWKeyboardType() - 202;
    v14 = v13 > 5 ? -1 : dword_18A679980[v13];
    if (![(NSString *)self->_lastLayout isEqualToString:Layout]|| force || self->_lastKeyboardType != v14)
    {
      keyEquivalent = [(_UIMenuLeafKeyCombination *)self->_baseKeyCombination keyEquivalent];
      v16 = [keyEquivalent length];

      if (v16)
      {
        if (((_UIMenuLeafShouldAutomaticallyLocalizeKeyboardShortcuts | shortcutCopy) & 1) != 0 && [(_UIMenuLeafKeyboardShortcut *)self isAutomaticLocalizationEnabled])
        {
          v17 = [Layout copy];
          lastLayout = self->_lastLayout;
          self->_lastLayout = v17;

          self->_lastKeyboardType = v14;
          baseKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self baseKeyCombination];
          keyEquivalent2 = [baseKeyCombination keyEquivalent];

          baseKeyCombination2 = [(_UIMenuLeafKeyboardShortcut *)self baseKeyCombination];
          modifierFlags = [baseKeyCombination2 modifierFlags];

          baseKeyCombination3 = [(_UIMenuLeafKeyboardShortcut *)self baseKeyCombination];
          keyCodes = [baseKeyCombination3 keyCodes];

          localizedKeyCombination = self->_localizedKeyCombination;
          self->_localizedKeyCombination = 0;

          v26 = keyEquivalent2;
          v54 = keyCodes;
          if (!automaticallyCopy)
          {
            v30 = [MEMORY[0x1E69D9658] shortcutWithKeyEquivalent:v26 modifierFlags:modifierFlags];
            if (action)
            {
              v31 = NSStringFromSelector(action);
            }

            else
            {
              v31 = &stru_1EFB14550;
            }

            v32 = [UIApp userInterfaceLayoutDirection] == 1 && -[_UIMenuLeafKeyboardShortcut isAutomaticMirroringEnabled](self, "isAutomaticMirroringEnabled");
            v33 = MEMORY[0x1E69D9658];
            v34 = self->_lastLayout;
            v55[0] = @"isRTL";
            v35 = [MEMORY[0x1E696AD98] numberWithBool:v32];
            v56[0] = v35;
            v56[1] = v31;
            v52 = v31;
            v55[1] = @"sel";
            v55[2] = @"keyboardType";
            v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lastKeyboardType];
            v56[2] = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
            v38 = [v33 localizedKeyboardShortcut:v30 forKeyboardLayout:v34 withAttributes:v37];

            if ([v30 isEqual:v38])
            {
              v27 = 0;
              v29 = v54;
              modifierFlags2 = modifierFlags;
              v39 = v26;
            }

            else
            {
              modifierFlags2 = [v38 modifierFlags];
              keyEquivalent3 = [v38 keyEquivalent];
              v39 = [keyEquivalent3 copy];

              v29 = v54;
              if (v54)
              {
                v41 = _UIHIDUsageFromSpecialKeyEquivalent(v39);
                if (v41)
                {
                  v29 = [MEMORY[0x1E696AC90] indexSetWithIndex:v41];
                }
              }

              displayStringOverride = [v38 displayStringOverride];
              v27 = [displayStringOverride copy];
            }

LABEL_45:
            v44 = v26;
            v45 = v39;
            v43 = v45;
            if (v44 == v45)
            {
              v46 = 1;
              v28 = v54;
            }

            else
            {
              v28 = v54;
              if (!v44 || !v45)
              {
                v48 = v45;
                goto LABEL_58;
              }

              v46 = [v44 isEqual:v45];
            }

            if (!v46 || modifierFlags != modifierFlags2)
            {
              goto LABEL_61;
            }

            v44 = v28;
            v47 = v29;
            v48 = v47;
            if (v44 == v47)
            {

              goto LABEL_60;
            }

            if (v44 && v47)
            {
              v49 = [v44 isEqual:v47];

              if (!v49)
              {
                goto LABEL_61;
              }

LABEL_60:
              if (![v27 length])
              {
                v29 = v48;
                goto LABEL_62;
              }

              goto LABEL_61;
            }

LABEL_58:

LABEL_61:
            v50 = [[_UIMenuLeafKeyCombination alloc] initWithModifierFlags:modifierFlags2 keyEquivalent:v43 keyCodes:v29 displayKeyEquivalentOverride:v27];
            v51 = self->_localizedKeyCombination;
            self->_localizedKeyCombination = v50;

            goto LABEL_62;
          }

          [v26 characterAtIndex:0];
          if (GSKeyboardGetKeyCodeForChar() == -1 && ((modifierFlags & 0x20000) != 0 || GSKeyboardGetKeyCodeForChar() == -1) && ((modifierFlags & 0xFFFFFFFFFFFDFFFFLL) == 0 || GSKeyboardGetKeyCodeForChar() == -1))
          {
            GSKeyboardGetHWKeyboardType();
            v28 = v54;
            if (GSKeyboardCreate())
            {
LABEL_25:
              if (GSKeyboardGetKeyCodeForChar() != -1)
              {
                modifierFlags2 = modifierFlags;
LABEL_42:
                GSKeyboardTranslateKeyWithModifiers();
                v39 = [MEMORY[0x1E696AEC0] stringWithCharacters:v57 length:0];

LABEL_44:
                GSKeyboardRelease();
                v27 = 0;
                v29 = v54;
                goto LABEL_45;
              }

              if (GSKeyboardGetKeyCodeForChar() != -1)
              {
                modifierFlags2 = modifierFlags | 0x20000;
                goto LABEL_42;
              }

LABEL_43:
              v39 = v26;
              modifierFlags2 = modifierFlags;
              goto LABEL_44;
            }
          }

          else
          {
            if ([@"US" isEqualToString:Layout])
            {
              v27 = 0;
              v28 = v54;
              v29 = v54;
LABEL_39:
              v43 = v26;
LABEL_62:

              return;
            }

            GSKeyboardGetHWKeyboardType();
            v28 = v54;
            if (GSKeyboardCreate())
            {
              if (GSKeyboardGetKeyCodeForChar() == -1)
              {
                goto LABEL_43;
              }

              goto LABEL_25;
            }
          }

          v27 = 0;
          v29 = v28;
          goto LABEL_39;
        }
      }
    }
  }
}

- (BOOL)_isKeyEquivalentOrKeyCodeSpecialKey
{
  currentLocalizedKeyCombination = [(_UIMenuLeafKeyboardShortcut *)self currentLocalizedKeyCombination];
  keyEquivalent = [currentLocalizedKeyCombination keyEquivalent];

  currentLocalizedKeyCombination2 = [(_UIMenuLeafKeyboardShortcut *)self currentLocalizedKeyCombination];
  keyCodes = [currentLocalizedKeyCombination2 keyCodes];

  if (!keyEquivalent || keyCodes)
  {
    if (keyEquivalent || [keyCodes count] != 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = _UISpecialKeyEquivalentFromHIDUsage([keyCodes firstIndex]);
      v7 = v8 != 0;
    }
  }

  else
  {
    v7 = _UIHIDUsageFromSpecialKeyEquivalent(keyEquivalent) != 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  baseKeyCombination = self->_baseKeyCombination;
  coderCopy = coder;
  [coderCopy encodeObject:baseKeyCombination forKey:@"BaseKeyCombination"];
  [coderCopy encodeBool:self->_automaticLocalizationEnabled forKey:@"AutomaticLocalizationEnabled"];
  [coderCopy encodeBool:self->_automaticMirroringEnabled forKey:@"AutomaticMirroringEnabled"];
}

- (_UIMenuLeafKeyboardShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _UIMenuLeafKeyboardShortcut;
  v5 = [(_UIMenuLeafKeyboardShortcut *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"BaseKeyCombination"];
    baseKeyCombination = v5->_baseKeyCombination;
    v5->_baseKeyCombination = v7;

    v5->_automaticLocalizationEnabled = [coderCopy decodeBoolForKey:@"AutomaticLocalizationEnabled"];
    v5->_automaticMirroringEnabled = [coderCopy decodeBoolForKey:@"AutomaticMirroringEnabled"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      baseKeyCombination = v7->_baseKeyCombination;
      v9 = self->_baseKeyCombination;
      v10 = baseKeyCombination;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [(_UIMenuLeafKeyCombination *)v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIMenuLeafKeyboardShortcut alloc] initWithBaseKeyCombination:self->_baseKeyCombination];
  objc_storeStrong(&v4->_localizedKeyCombination, self->_localizedKeyCombination);
  objc_storeStrong(&v4->_lastLayout, self->_lastLayout);
  v4->_lastKeyboardType = self->_lastKeyboardType;
  v4->_automaticLocalizationEnabled = self->_automaticLocalizationEnabled;
  v4->_automaticMirroringEnabled = self->_automaticMirroringEnabled;
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_baseKeyCombination withName:@"baseKeyCombination"];
  v5 = [v3 appendBool:self->_automaticLocalizationEnabled withName:@"automaticLocalizationEnabled"];
  v6 = [v3 appendBool:self->_automaticMirroringEnabled withName:@"automaticMirroringEnabled"];
  build = [v3 build];

  return build;
}

@end