@interface _UIMainMenuCommandKeyboardShortcut
+ (_UIMainMenuCommandKeyboardShortcut)shortcutWithModifierFlags:(int64_t)a3 keyEquivalent:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuCommandKeyboardShortcut)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuCommandKeyboardShortcut

+ (_UIMainMenuCommandKeyboardShortcut)shortcutWithModifierFlags:(int64_t)a3 keyEquivalent:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6[2];
  v6[1] = a3;
  v6[2] = v5;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  modifierFlags = self->_modifierFlags;
  v5 = a3;
  [v5 encodeInteger:modifierFlags forKey:@"ModifierFlags"];
  [v5 encodeObject:self->_keyEquivalent forKey:@"KeyEquivalent"];
}

- (_UIMainMenuCommandKeyboardShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuCommandKeyboardShortcut *)self init];
  if (v5)
  {
    v5->_modifierFlags = [v4 decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"KeyEquivalent"];
    keyEquivalent = v5->_keyEquivalent;
    v5->_keyEquivalent = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      if (self->_modifierFlags == v7->_modifierFlags)
      {
        keyEquivalent = self->_keyEquivalent;
        v10 = v7->_keyEquivalent;
        v11 = keyEquivalent;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0;
          if (v11 && v12)
          {
            v14 = [(NSString *)v11 isEqual:v12];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIKeyModiferFlagsDescription(self->_modifierFlags);
  [v3 appendString:v4 withName:@"modifierFlags"];

  [v3 appendString:self->_keyEquivalent withName:@"keyEquivalent"];
  v5 = [v3 build];

  return v5;
}

@end