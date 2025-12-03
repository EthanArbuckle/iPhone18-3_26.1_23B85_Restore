@interface _UIMenuLeafKeyCombination
+ (id)combinationWithModifierFlags:(int64_t)flags keyEquivalent:(id)equivalent keyCodes:(id)codes;
- (BOOL)isEqual:(id)equal;
- (NSString)displayKeyEquivalentOverride;
- (_UIMenuLeafKeyCombination)initWithCoder:(id)coder;
- (_UIMenuLeafKeyCombination)initWithModifierFlags:(int64_t)flags keyEquivalent:(id)equivalent keyCodes:(id)codes displayKeyEquivalentOverride:(id)override;
- (__GSKeyboard)_currentGSKeyboard;
- (id)_keyEquivalentStringFromKeyEquivalentOrKeyCodes;
- (id)_readableStringForKeyEquivalentUsingWords:(BOOL)words forHUD:(BOOL)d isSingleCharacterOrKeySymbol:(BOOL *)symbol;
- (id)_readableStringForModifierFlagsUsingWords:(BOOL)words forHUD:(BOOL)d;
- (id)combinationAddingModifierFlags:(int64_t)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_setDisplayKeyEquivalentOverride:(id)override;
- (void)encodeWithCoder:(id)coder;
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

+ (id)combinationWithModifierFlags:(int64_t)flags keyEquivalent:(id)equivalent keyCodes:(id)codes
{
  codesCopy = codes;
  equivalentCopy = equivalent;
  v10 = [[self alloc] initWithModifierFlags:flags keyEquivalent:equivalentCopy keyCodes:codesCopy displayKeyEquivalentOverride:0];

  return v10;
}

- (_UIMenuLeafKeyCombination)initWithModifierFlags:(int64_t)flags keyEquivalent:(id)equivalent keyCodes:(id)codes displayKeyEquivalentOverride:(id)override
{
  equivalentCopy = equivalent;
  codesCopy = codes;
  overrideCopy = override;
  v21.receiver = self;
  v21.super_class = _UIMenuLeafKeyCombination;
  v13 = [(_UIMenuLeafKeyCombination *)&v21 init];
  if (v13)
  {
    if (!equivalentCopy || codesCopy)
    {
      if (!equivalentCopy)
      {
        if ([codesCopy count] == 1)
        {
          equivalentCopy = _UISpecialKeyEquivalentFromHIDUsage([codesCopy firstIndex]);
        }

        else
        {
          equivalentCopy = 0;
        }
      }
    }

    else
    {
      v14 = _UIHIDUsageFromSpecialKeyEquivalent(equivalentCopy);
      if (v14)
      {
        codesCopy = [MEMORY[0x1E696AC90] indexSetWithIndex:v14];
      }

      else
      {
        codesCopy = 0;
      }
    }

    v13->_modifierFlags = flags;
    v15 = [equivalentCopy copy];
    keyEquivalent = v13->_keyEquivalent;
    v13->_keyEquivalent = v15;

    v17 = [codesCopy copy];
    keyCodes = v13->_keyCodes;
    v13->_keyCodes = v17;

    v19 = [overrideCopy copy];
    [(_UIMenuLeafKeyCombination *)v13 _setDisplayKeyEquivalentOverride:v19];
  }

  return v13;
}

- (void)_setDisplayKeyEquivalentOverride:(id)override
{
  if (override || self->_hasDisplayKeyEquivalentOverride)
  {
    v4 = override != 0;
    objc_setAssociatedObject(self, &_UIMenuLeafKeyCombinationDisplayKeyEquivalentOverrideKey, override, 1);
    self->_hasDisplayKeyEquivalentOverride = v4;
  }
}

- (id)_readableStringForModifierFlagsUsingWords:(BOOL)words forHUD:(BOOL)d
{
  dCopy = d;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  modifierFlags = [(_UIMenuLeafKeyCombination *)self modifierFlags];
  if (words)
  {
    if ((modifierFlags & 0x100000) != 0)
    {
      if (dCopy)
      {
        v9 = @"⌘  ";
      }

      else
      {
        v9 = @"command ";
      }

      [v7 appendString:v9];
      if ((modifierFlags & 0x40000) == 0)
      {
LABEL_4:
        if ((modifierFlags & 0x80000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    else if ((modifierFlags & 0x40000) == 0)
    {
      goto LABEL_4;
    }

    [v7 appendString:@"control "];
    if ((modifierFlags & 0x80000) == 0)
    {
LABEL_5:
      if ((modifierFlags & 0x20000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v7 appendString:@"option "];
    if ((modifierFlags & 0x20000) == 0)
    {
LABEL_6:
      if ((modifierFlags & 0x800000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v7 appendString:@"shift "];
    if ((modifierFlags & 0x800000) == 0)
    {
      goto LABEL_28;
    }

LABEL_21:
    v10 = @"globe ";
LABEL_27:
    [v7 appendString:v10];
    goto LABEL_28;
  }

  if ((modifierFlags & 0x40000) != 0)
  {
    [v7 appendString:@"⌃ "];
    if ((modifierFlags & 0x80000) == 0)
    {
LABEL_10:
      if ((modifierFlags & 0x20000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((modifierFlags & 0x80000) == 0)
  {
    goto LABEL_10;
  }

  [v7 appendString:@"⌥ "];
  if ((modifierFlags & 0x20000) == 0)
  {
LABEL_11:
    if ((modifierFlags & 0x100000) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [v7 appendString:@"⌘ "];
    if ((modifierFlags & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_24:
  [v7 appendString:@"⇧ "];
  if ((modifierFlags & 0x100000) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((modifierFlags & 0x800000) != 0)
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
  _hardwareKeyboard = self->_keyEquivalent;
  if (!_hardwareKeyboard)
  {
    _hardwareKeyboard = [UIApp _hardwareKeyboard];
    if (_hardwareKeyboard)
    {
      HIWORD(v5) = 0;
      [(NSIndexSet *)self->_keyCodes firstIndex];
      GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      [(NSIndexSet *)self->_keyCodes firstIndex:&v5 + 2];
      GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      _hardwareKeyboard = 0;
    }
  }

  return _hardwareKeyboard;
}

- (id)_readableStringForKeyEquivalentUsingWords:(BOOL)words forHUD:(BOOL)d isSingleCharacterOrKeySymbol:(BOOL *)symbol
{
  dCopy = d;
  wordsCopy = words;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  _keyEquivalentStringFromKeyEquivalentOrKeyCodes = [(_UIMenuLeafKeyCombination *)self _keyEquivalentStringFromKeyEquivalentOrKeyCodes];
  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes length]== 1)
  {
    displayKeyEquivalentOverride = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];

    if (displayKeyEquivalentOverride)
    {
      displayKeyEquivalentOverride2 = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
    }

    else
    {
      [(_UIMenuLeafKeyCombination *)self _currentGSKeyboard];
      v13 = GSKeyboardGetLocale();
      displayKeyEquivalentOverride2 = [(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes uppercaseStringWithLocale:v13];

      _keyEquivalentStringFromKeyEquivalentOrKeyCodes = v13;
    }

    _keyEquivalentStringFromKeyEquivalentOrKeyCodes = displayKeyEquivalentOverride2;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputUpArrow"])
  {
    v14 = @"↑";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputDownArrow"])
  {
    v14 = @"↓";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputLeftArrow"])
  {
    v14 = @"←";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputRightArrow"])
  {
    v14 = @"→";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputEscape"])
  {
    v14 = @"esc";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputPageUp"])
  {
    v14 = @"page up";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputPageDown"])
  {
    v14 = @"page down";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputHome"])
  {
    v14 = @"home";
    goto LABEL_24;
  }

  if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputEnd"])
  {
    v14 = @"end";
    goto LABEL_24;
  }

  if (![(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@" "])
  {
    if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"\t"])
    {
      if (wordsCopy)
      {
        v14 = @"tab";
      }

      else
      {
        v14 = @"⇥";
      }
    }

    else if (([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"\n"]& 1) != 0 || [(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"\r"])
    {
      if (wordsCopy)
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
      if (![(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"\b"])
      {
        if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF1"])
        {
          v20 = @"f1";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF2"])
        {
          v20 = @"f2";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF3"])
        {
          v20 = @"f3";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF4"])
        {
          v20 = @"f4";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF5"])
        {
          v20 = @"f5";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF6"])
        {
          v20 = @"f6";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF7"])
        {
          v20 = @"f7";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF8"])
        {
          v20 = @"f8";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF9"])
        {
          v20 = @"f9";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF10"])
        {
          v20 = @"f10";
        }

        else if ([(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF11"])
        {
          v20 = @"f11";
        }

        else
        {
          if (![(__CFString *)_keyEquivalentStringFromKeyEquivalentOrKeyCodes isEqualToString:@"UIKeyInputF12"])
          {
            v15 = v9;
            v14 = _keyEquivalentStringFromKeyEquivalentOrKeyCodes;
            goto LABEL_25;
          }

          v20 = @"f12";
        }

        [v9 appendString:v20];
        v16 = 1;
        if (symbol)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      if (wordsCopy)
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

  if (!dCopy)
  {
    v14 = @"Space";
    goto LABEL_24;
  }

  v19 = _UINSLocalizedStringWithDefaultValue(@"Space", @"Space");
  [v9 appendString:v19];

LABEL_26:
  v16 = 0;
  if (symbol)
  {
LABEL_27:
    v17 = (v16 & 1) != 0 || [v9 length] == 1;
    *symbol = v17;
  }

LABEL_31:

  return v9;
}

- (__GSKeyboard)_currentGSKeyboard
{
  v2 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v2 _isHardwareKeyboardAvailable];

  if (!_isHardwareKeyboardAvailable)
  {
    return 0;
  }

  v4 = UIApp;

  return [v4 _hardwareKeyboard:0];
}

- (id)combinationAddingModifierFlags:(int64_t)flags
{
  if ((flags & ~self->_modifierFlags) != 0)
  {
    selfCopy = [(_UIMenuLeafKeyCombination *)self copy];
    selfCopy->_modifierFlags = self->_modifierFlags | flags;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_modifierFlags forKey:@"ModifierFlags"];
  [coderCopy encodeObject:self->_keyEquivalent forKey:@"KeyEquivalent"];
  [coderCopy encodeObject:self->_keyCodes forKey:@"KeyCodes"];
  if (self->_hasDisplayKeyEquivalentOverride)
  {
    displayKeyEquivalentOverride = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
    [coderCopy encodeObject:displayKeyEquivalentOverride forKey:@"DisplayKeyEquivalentOverride"];
  }
}

- (_UIMenuLeafKeyCombination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _UIMenuLeafKeyCombination;
  v5 = [(_UIMenuLeafKeyCombination *)&v15 init];
  if (v5)
  {
    v5->_modifierFlags = [coderCopy decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"KeyEquivalent"];
    keyEquivalent = v5->_keyEquivalent;
    v5->_keyEquivalent = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"KeyCodes"];
    keyCodes = v5->_keyCodes;
    v5->_keyCodes = v10;

    if ([coderCopy containsValueForKey:@"DisplayKeyEquivalentOverride"])
    {
      v12 = objc_opt_self();
      v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"DisplayKeyEquivalentOverride"];
      [(_UIMenuLeafKeyCombination *)v5 _setDisplayKeyEquivalentOverride:v13];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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

        displayKeyEquivalentOverride = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
        displayKeyEquivalentOverride2 = [(_UIMenuLeafKeyCombination *)v8 displayKeyEquivalentOverride];
        v10 = displayKeyEquivalentOverride;
        v18 = displayKeyEquivalentOverride2;
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
  displayKeyEquivalentOverride = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
  v7 = v5 ^ [displayKeyEquivalentOverride hash];

  return v4 ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIMenuLeafKeyCombination alloc];
  modifierFlags = self->_modifierFlags;
  keyEquivalent = self->_keyEquivalent;
  keyCodes = self->_keyCodes;
  displayKeyEquivalentOverride = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
  v9 = [(_UIMenuLeafKeyCombination *)v4 initWithModifierFlags:modifierFlags keyEquivalent:keyEquivalent keyCodes:keyCodes displayKeyEquivalentOverride:displayKeyEquivalentOverride];

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
    displayKeyEquivalentOverride = [(_UIMenuLeafKeyCombination *)self displayKeyEquivalentOverride];
    [v3 appendString:displayKeyEquivalentOverride withName:@"displayKeyEquivalentOverride" skipIfEmpty:1];
  }

  build = [v3 build];

  return build;
}

@end