@interface _UIMenuLeafKeyCombination
+ (id)combinationWithModifierFlags:(int64_t)a3 keyEquivalent:(id)a4 keyCodes:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)displayKeyEquivalentOverride;
- (_UIMenuLeafKeyCombination)initWithCoder:(id)a3;
- (_UIMenuLeafKeyCombination)initWithModifierFlags:(int64_t)a3 keyEquivalent:(id)a4 keyCodes:(id)a5 displayKeyEquivalentOverride:(id)a6;
- (__GSKeyboard)_currentGSKeyboard;
- (id)_keyEquivalentStringFromKeyEquivalentOrKeyCodes;
- (id)_readableStringForKeyEquivalentUsingWords:(BOOL)a3 forHUD:(BOOL)a4 isSingleCharacterOrKeySymbol:(BOOL *)a5;
- (id)_readableStringForModifierFlagsUsingWords:(BOOL)a3 forHUD:(BOOL)a4;
- (id)combinationAddingModifierFlags:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setDisplayKeyEquivalentOverride:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMenuLeafKeyCombination

- (NSString)displayKeyEquivalentOverride
{
  if (self->_hasDisplayKeyEquivalentOverride)
  {
    v3 = objc_getAssociatedObject(self, &_UIMenuLeafKeyCombinationDisplayKeyEquivalentOverrideKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)combinationWithModifierFlags:(int64_t)a3 keyEquivalent:(id)a4 keyCodes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithModifierFlags:a3 keyEquivalent:v9 keyCodes:v8 displayKeyEquivalentOverride:0];

  return v10;
}

- (_UIMenuLeafKeyCombination)initWithModifierFlags:(int64_t)a3 keyEquivalent:(id)a4 keyCodes:(id)a5 displayKeyEquivalentOverride:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = _UIMenuLeafKeyCombination;
  v13 = [(_UIMenuLeafKeyCombination *)&v21 init];
  if (v13)
  {
    if (!v10 || v11)
    {
      if (!v10)
      {
        if ([v11 count] == 1)
        {
          v10 = _UISpecialKeyEquivalentFromHIDUsage([v11 firstIndex]);
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v14 = _UIHIDUsageFromSpecialKeyEquivalent(v10);
      if (v14)
      {
        v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:v14];
      }

      else
      {
        v11 = 0;
      }
    }

    v13->_modifierFlags = a3;
    v15 = [v10 copy];
    keyEquivalent = v13->_keyEquivalent;
    v13->_keyEquivalent = v15;

    v17 = [v11 copy];
    keyCodes = v13->_keyCodes;
    v13->_keyCodes = v17;

    v19 = [v12 copy];
    [(_UIMenuLeafKeyCombination *)v13 _setDisplayKeyEquivalentOverride:v19];
  }

  return v13;
}

- (void)_setDisplayKeyEquivalentOverride:(id)a3
{
  if (a3 || self->_hasDisplayKeyEquivalentOverride)
  {
    v4 = a3 != 0;
    objc_setAssociatedObject(self, &_UIMenuLeafKeyCombinationDisplayKeyEquivalentOverrideKey, a3, 1);
    self->_hasDisplayKeyEquivalentOverride = v4;
  }
}

- (id)_readableStringForModifierFlagsUsingWords:(BOOL)a3 forHUD:(BOOL)a4
{
  v4 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [(_UIMenuLeafKeyCombination *)self modifierFlags];
  if (a3)
  {
    if ((v8 & 0x100000) != 0)
    {
      if (v4)
      {
        v9 = @"⌘  ";
      }

      else
      {
        v9 = @"command ";
      }

      [v7 appendString:v9];
      if ((v8 & 0x40000) == 0)
      {
LABEL_4:
        if ((v8 & 0x80000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    else if ((v8 & 0x40000) == 0)
    {
      goto LABEL_4;
    }

    [v7 appendString:@"control "];
    if ((v8 & 0x80000) == 0)
    {
LABEL_5:
      if ((v8 & 0x20000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v7 appendString:@"option "];
    if ((v8 & 0x20000) == 0)
    {
LABEL_6:
      if ((v8 & 0x800000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v7 appendString:@"shift "];
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

LABEL_21:
    v10 = @"globe ";
LABEL_27:
    [v7 appendString:v10];
    goto LABEL_28;
  }

  if ((v8 & 0x40000) != 0)
  {
    [v7 appendString:@"⌃ "];
    if ((v8 & 0x80000) == 0)
    {
LABEL_10:
      if ((v8 & 0x20000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v8 & 0x80000) == 0)
  {
    goto LABEL_10;
  }

  [v7 appendString:@"⌥ "];
  if ((v8 & 0x20000) == 0)
  {
LABEL_11:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [v7 appendString:@"⌘ "];
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_24:
  [v7 appendString:@"⇧ "];
  if ((v8 & 0x100000) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((v8 & 0x800000) != 0)
  {
LABEL_26:
    [v7 appendString:@"globe "];
    v10 = @" ";
    goto LABEL_27;
  }

LABEL_28:
  if ([v7 length] >= 2)
  {
    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 1, 1}];
  }

  return v7;
}

- (id)_keyEquivalentStringFromKeyEquivalentOrKeyCodes
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = self->_keyEquivalent;
  if (!v3)
  {
    v3 = [UIApp _hardwareKeyboard];
    if (v3)
    {
      HIWORD(v5) = 0;
      [(NSIndexSet *)self->_keyCodes firstIndex];
      GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      [(NSIndexSet *)self->_keyCodes firstIndex:&v5 + 2];
      GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      v3 = 0;
    }
  }

  return v3;
}

- (id)_readableStringForKeyEquivalentUsingWords:(BOOL)a3 forHUD:(BOOL)a4 isSingleCharacterOrKeySymbol:(BOOL *)a5
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = [(_UIMenuLeafKeyCombination *)self _keyEquivalentStringFromKeyEquivalentOrKeyCodes];
  if ([(__CFString *)v10 length]== 1)
  {
    v11 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];

    if (v11)
    {
      v12 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
    }

    else
    {
      [(_UIMenuLeafKeyCombination *)self _currentGSKeyboard];
      v13 = GSKeyboardGetLocale();
      v12 = [(__CFString *)v10 uppercaseStringWithLocale:v13];

      v10 = v13;
    }

    v10 = v12;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputUpArrow"])
  {
    v14 = @"↑";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputDownArrow"])
  {
    v14 = @"↓";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputLeftArrow"])
  {
    v14 = @"←";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputRightArrow"])
  {
    v14 = @"→";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputEscape"])
  {
    v14 = @"esc";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputPageUp"])
  {
    v14 = @"page up";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputPageDown"])
  {
    v14 = @"page down";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputHome"])
  {
    v14 = @"home";
    goto LABEL_24;
  }

  if ([(__CFString *)v10 isEqualToString:@"UIKeyInputEnd"])
  {
    v14 = @"end";
    goto LABEL_24;
  }

  if (![(__CFString *)v10 isEqualToString:@" "])
  {
    if ([(__CFString *)v10 isEqualToString:@"\t"])
    {
      if (v7)
      {
        v14 = @"tab";
      }

      else
      {
        v14 = @"⇥";
      }
    }

    else if (([(__CFString *)v10 isEqualToString:@"\n"]& 1) != 0 || [(__CFString *)v10 isEqualToString:@"\r"])
    {
      if (v7)
      {
        v14 = @"return";
      }

      else
      {
        v14 = @"⏎";
      }
    }

    else
    {
      if (![(__CFString *)v10 isEqualToString:@"\b"])
      {
        if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF1"])
        {
          v20 = @"f1";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF2"])
        {
          v20 = @"f2";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF3"])
        {
          v20 = @"f3";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF4"])
        {
          v20 = @"f4";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF5"])
        {
          v20 = @"f5";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF6"])
        {
          v20 = @"f6";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF7"])
        {
          v20 = @"f7";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF8"])
        {
          v20 = @"f8";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF9"])
        {
          v20 = @"f9";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF10"])
        {
          v20 = @"f10";
        }

        else if ([(__CFString *)v10 isEqualToString:@"UIKeyInputF11"])
        {
          v20 = @"f11";
        }

        else
        {
          if (![(__CFString *)v10 isEqualToString:@"UIKeyInputF12"])
          {
            v15 = v9;
            v14 = v10;
            goto LABEL_25;
          }

          v20 = @"f12";
        }

        [v9 appendString:v20];
        v16 = 1;
        if (a5)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      if (v7)
      {
        v14 = @"delete";
      }

      else
      {
        v14 = @"⌫";
      }
    }

LABEL_24:
    v15 = v9;
LABEL_25:
    [v15 appendString:v14];
    goto LABEL_26;
  }

  if (!v6)
  {
    v14 = @"Space";
    goto LABEL_24;
  }

  v19 = _UINSLocalizedStringWithDefaultValue(@"Space", @"Space");
  [v9 appendString:v19];

LABEL_26:
  v16 = 0;
  if (a5)
  {
LABEL_27:
    v17 = (v16 & 1) != 0 || [v9 length] == 1;
    *a5 = v17;
  }

LABEL_31:

  return v9;
}

- (__GSKeyboard)_currentGSKeyboard
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _isHardwareKeyboardAvailable];

  if (!v3)
  {
    return 0;
  }

  v4 = UIApp;

  return [v4 _hardwareKeyboard:0];
}

- (id)combinationAddingModifierFlags:(int64_t)a3
{
  if ((a3 & ~self->_modifierFlags) != 0)
  {
    v4 = [(_UIMenuLeafKeyCombination *)self copy];
    v4->_modifierFlags = self->_modifierFlags | a3;
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_modifierFlags forKey:@"ModifierFlags"];
  [v5 encodeObject:self->_keyEquivalent forKey:@"KeyEquivalent"];
  [v5 encodeObject:self->_keyCodes forKey:@"KeyCodes"];
  if (self->_hasDisplayKeyEquivalentOverride)
  {
    v4 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
    [v5 encodeObject:v4 forKey:@"DisplayKeyEquivalentOverride"];
  }
}

- (_UIMenuLeafKeyCombination)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIMenuLeafKeyCombination;
  v5 = [(_UIMenuLeafKeyCombination *)&v15 init];
  if (v5)
  {
    v5->_modifierFlags = [v4 decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"KeyEquivalent"];
    keyEquivalent = v5->_keyEquivalent;
    v5->_keyEquivalent = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"KeyCodes"];
    keyCodes = v5->_keyCodes;
    v5->_keyCodes = v10;

    if ([v4 containsValueForKey:@"DisplayKeyEquivalentOverride"])
    {
      v12 = objc_opt_self();
      v13 = [v4 decodeObjectOfClass:v12 forKey:@"DisplayKeyEquivalentOverride"];
      [(_UIMenuLeafKeyCombination *)v5 _setDisplayKeyEquivalentOverride:v13];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      if (self->_modifierFlags != v7->_modifierFlags)
      {
        LOBYTE(v13) = 0;
LABEL_28:

        goto LABEL_29;
      }

      keyEquivalent = v7->_keyEquivalent;
      v10 = self->_keyEquivalent;
      v11 = keyEquivalent;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        LOBYTE(v13) = 0;
        if (!v10 || !v11)
        {
          goto LABEL_27;
        }

        v13 = [(NSIndexSet *)v10 isEqual:v11];

        if (!v13)
        {
          goto LABEL_28;
        }
      }

      keyCodes = v8->_keyCodes;
      v10 = self->_keyCodes;
      v15 = keyCodes;
      v12 = v15;
      if (v10 == v15)
      {

LABEL_19:
        if (!self->_hasDisplayKeyEquivalentOverride && !v8->_hasDisplayKeyEquivalentOverride)
        {
          LOBYTE(v13) = 1;
          goto LABEL_28;
        }

        v16 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
        v17 = [(_UIMenuLeafKeyCombination *)v8 displayKeyEquivalentOverride];
        v10 = v16;
        v18 = v17;
        v12 = v18;
        if (v10 == v18)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = 0;
          if (v10 && v18)
          {
            LOBYTE(v13) = [(NSIndexSet *)v10 isEqual:v18];
          }
        }

        goto LABEL_27;
      }

      LOBYTE(v13) = 0;
      if (v10 && v15)
      {
        v13 = [(NSIndexSet *)v10 isEqual:v15];

        if (!v13)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_27:

      goto LABEL_28;
    }

    LOBYTE(v13) = 0;
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  modifierFlags = self->_modifierFlags;
  v4 = [(NSString *)self->_keyEquivalent hash]^ modifierFlags;
  v5 = [(NSIndexSet *)self->_keyCodes hash];
  v6 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
  v7 = v5 ^ [v6 hash];

  return v4 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIMenuLeafKeyCombination alloc];
  modifierFlags = self->_modifierFlags;
  keyEquivalent = self->_keyEquivalent;
  keyCodes = self->_keyCodes;
  v8 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
  v9 = [(_UIMenuLeafKeyCombination *)v4 initWithModifierFlags:modifierFlags keyEquivalent:keyEquivalent keyCodes:keyCodes displayKeyEquivalentOverride:v8];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIKeyModiferFlagsDescription(self->_modifierFlags);
  [v3 appendString:v4 withName:@"modifierFlags"];

  [v3 appendString:self->_keyEquivalent withName:@"keyEquivalent" skipIfEmpty:1];
  v5 = [v3 appendObject:self->_keyCodes withName:@"keyCodes" skipIfNil:1];
  if (self->_hasDisplayKeyEquivalentOverride)
  {
    v6 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
    [v3 appendString:v6 withName:@"displayKeyEquivalentOverride" skipIfEmpty:1];
  }

  v7 = [v3 build];

  return v7;
}

@end