@interface _UIMenuLeafKeyboardShortcut
+ (_UIMenuLeafKeyboardShortcut)shortcutWithBaseKeyCombination:(id)a3;
- (BOOL)_isKeyEquivalentOrKeyCodeSpecialKey;
- (BOOL)isEqual:(id)a3;
- (_UIMenuLeafKeyCombination)currentLocalizedKeyCombination;
- (_UIMenuLeafKeyboardShortcut)initWithBaseKeyCombination:(id)a3;
- (_UIMenuLeafKeyboardShortcut)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)shortcutAddingModifierFlags:(int64_t)a3;
- (void)_clearLocalizedKeyCombination;
- (void)_localizeWithGSKeyboard:(__GSKeyboard *)a3 automatically:(BOOL)a4 force:(BOOL)a5 forDefaultShortcut:(BOOL)a6 action:(SEL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setAutomaticLocalizationEnabled:(BOOL)a3;
- (void)setAutomaticMirroringEnabled:(BOOL)a3;
@end

@implementation _UIMenuLeafKeyboardShortcut

+ (_UIMenuLeafKeyboardShortcut)shortcutWithBaseKeyCombination:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBaseKeyCombination:v4];

  return v5;
}

- (_UIMenuLeafKeyboardShortcut)initWithBaseKeyCombination:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIMenuLeafKeyboardShortcut;
  v5 = [(_UIMenuLeafKeyboardShortcut *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (id)shortcutAddingModifierFlags:(int64_t)a3
{
  v4 = [(_UIMenuLeafKeyCombination *)self->_baseKeyCombination combinationAddingModifierFlags:a3];
  if (self->_baseKeyCombination == v4)
  {
    v5 = self;
  }

  else
  {
    v5 = [(_UIMenuLeafKeyboardShortcut *)self copy];
    objc_storeStrong(&v5->_baseKeyCombination, v4);
    [(_UIMenuLeafKeyboardShortcut *)v5 _clearLocalizedKeyCombination];
  }

  return v5;
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

- (void)setAutomaticLocalizationEnabled:(BOOL)a3
{
  if (self->_automaticLocalizationEnabled != a3)
  {
    self->_automaticLocalizationEnabled = a3;
    if (!a3)
    {
      [(_UIMenuLeafKeyboardShortcut *)self _clearLocalizedKeyCombination];
    }
  }
}

- (void)setAutomaticMirroringEnabled:(BOOL)a3
{
  if (self->_automaticMirroringEnabled != a3)
  {
    self->_automaticMirroringEnabled = a3;
    if (!a3)
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

- (void)_localizeWithGSKeyboard:(__GSKeyboard *)a3 automatically:(BOOL)a4 force:(BOOL)a5 forDefaultShortcut:(BOOL)a6 action:(SEL)a7
{
  v58 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = a6;
    v10 = a4;
    Layout = GSKeyboardGetLayout();
    v13 = GSKeyboardGetHWKeyboardType() - 202;
    v14 = v13 > 5 ? -1 : dword_18A679980[v13];
    if (![(NSString *)self->_lastLayout isEqualToString:Layout]|| a5 || self->_lastKeyboardType != v14)
    {
      v15 = [(_UIMenuLeafKeyCombination *)self->_baseKeyCombination keyEquivalent];
      v16 = [v15 length];

      if (v16)
      {
        if (((_UIMenuLeafShouldAutomaticallyLocalizeKeyboardShortcuts | v8) & 1) != 0 && [(_UIMenuLeafKeyboardShortcut *)self isAutomaticLocalizationEnabled])
        {
          v17 = [Layout copy];
          lastLayout = self->_lastLayout;
          self->_lastLayout = v17;

          self->_lastKeyboardType = v14;
          v19 = [(_UIMenuLeafKeyboardShortcut *)self baseKeyCombination];
          v20 = [v19 keyEquivalent];

          v21 = [(_UIMenuLeafKeyboardShortcut *)self baseKeyCombination];
          v22 = [v21 modifierFlags];

          v23 = [(_UIMenuLeafKeyboardShortcut *)self baseKeyCombination];
          v24 = [v23 keyCodes];

          localizedKeyCombination = self->_localizedKeyCombination;
          self->_localizedKeyCombination = 0;

          v26 = v20;
          v54 = v24;
          if (!v10)
          {
            v30 = [MEMORY[0x1E69D9658] shortcutWithKeyEquivalent:v26 modifierFlags:v22];
            if (a7)
            {
              v31 = NSStringFromSelector(a7);
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
              v53 = v22;
              v39 = v26;
            }

            else
            {
              v53 = [v38 modifierFlags];
              v40 = [v38 keyEquivalent];
              v39 = [v40 copy];

              v29 = v54;
              if (v54)
              {
                v41 = _UIHIDUsageFromSpecialKeyEquivalent(v39);
                if (v41)
                {
                  v29 = [MEMORY[0x1E696AC90] indexSetWithIndex:v41];
                }
              }

              v42 = [v38 displayStringOverride];
              v27 = [v42 copy];
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

            if (!v46 || v22 != v53)
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
            v50 = [[_UIMenuLeafKeyCombination alloc] initWithModifierFlags:v53 keyEquivalent:v43 keyCodes:v29 displayKeyEquivalentOverride:v27];
            v51 = self->_localizedKeyCombination;
            self->_localizedKeyCombination = v50;

            goto LABEL_62;
          }

          [v26 characterAtIndex:0];
          if (GSKeyboardGetKeyCodeForChar() == -1 && ((v22 & 0x20000) != 0 || GSKeyboardGetKeyCodeForChar() == -1) && ((v22 & 0xFFFFFFFFFFFDFFFFLL) == 0 || GSKeyboardGetKeyCodeForChar() == -1))
          {
            GSKeyboardGetHWKeyboardType();
            v28 = v54;
            if (GSKeyboardCreate())
            {
LABEL_25:
              if (GSKeyboardGetKeyCodeForChar() != -1)
              {
                v53 = v22;
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
                v53 = v22 | 0x20000;
                goto LABEL_42;
              }

LABEL_43:
              v39 = v26;
              v53 = v22;
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
  v3 = [(_UIMenuLeafKeyboardShortcut *)self currentLocalizedKeyCombination];
  v4 = [v3 keyEquivalent];

  v5 = [(_UIMenuLeafKeyboardShortcut *)self currentLocalizedKeyCombination];
  v6 = [v5 keyCodes];

  if (!v4 || v6)
  {
    if (v4 || [v6 count] != 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = _UISpecialKeyEquivalentFromHIDUsage([v6 firstIndex]);
      v7 = v8 != 0;
    }
  }

  else
  {
    v7 = _UIHIDUsageFromSpecialKeyEquivalent(v4) != 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  baseKeyCombination = self->_baseKeyCombination;
  v5 = a3;
  [v5 encodeObject:baseKeyCombination forKey:@"BaseKeyCombination"];
  [v5 encodeBool:self->_automaticLocalizationEnabled forKey:@"AutomaticLocalizationEnabled"];
  [v5 encodeBool:self->_automaticMirroringEnabled forKey:@"AutomaticMirroringEnabled"];
}

- (_UIMenuLeafKeyboardShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIMenuLeafKeyboardShortcut;
  v5 = [(_UIMenuLeafKeyboardShortcut *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"BaseKeyCombination"];
    baseKeyCombination = v5->_baseKeyCombination;
    v5->_baseKeyCombination = v7;

    v5->_automaticLocalizationEnabled = [v4 decodeBoolForKey:@"AutomaticLocalizationEnabled"];
    v5->_automaticMirroringEnabled = [v4 decodeBoolForKey:@"AutomaticMirroringEnabled"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
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
  v7 = [v3 build];

  return v7;
}

@end