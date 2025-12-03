@interface _UIMainMenuCommandKeyboardShortcut
+ (_UIMainMenuCommandKeyboardShortcut)shortcutWithModifierFlags:(int64_t)flags keyEquivalent:(id)equivalent;
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuCommandKeyboardShortcut)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuCommandKeyboardShortcut

+ (_UIMainMenuCommandKeyboardShortcut)shortcutWithModifierFlags:(int64_t)flags keyEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v6 = objc_opt_new();
  v7 = v6[2];
  v6[1] = flags;
  v6[2] = equivalentCopy;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  modifierFlags = self->_modifierFlags;
  coderCopy = coder;
  [coderCopy encodeInteger:modifierFlags forKey:@"ModifierFlags"];
  [coderCopy encodeObject:self->_keyEquivalent forKey:@"KeyEquivalent"];
}

- (_UIMainMenuCommandKeyboardShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommandKeyboardShortcut *)self init];
  if (v5)
  {
    v5->_modifierFlags = [coderCopy decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"KeyEquivalent"];
    keyEquivalent = v5->_keyEquivalent;
    v5->_keyEquivalent = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  build = [v3 build];

  return build;
}

@end