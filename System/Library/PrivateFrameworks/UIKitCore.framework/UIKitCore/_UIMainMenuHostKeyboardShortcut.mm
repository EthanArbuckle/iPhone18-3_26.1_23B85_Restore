@interface _UIMainMenuHostKeyboardShortcut
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuHostKeyboardShortcut)initWithKeyboardShortcut:(id)shortcut;
- (id)description;
@end

@implementation _UIMainMenuHostKeyboardShortcut

- (_UIMainMenuHostKeyboardShortcut)initWithKeyboardShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v6 = [(_UIMainMenuHostKeyboardShortcut *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardShortcut, shortcut);
  }

  return v7;
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
      keyboardShortcut = v7->_keyboardShortcut;
      v9 = self->_keyboardShortcut;
      v10 = keyboardShortcut;
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
          v12 = [(_UIMainMenuCommandKeyboardShortcut *)v9 isEqual:v10];
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

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_keyboardShortcut withName:@"keyboardShortcut"];
  build = [v3 build];

  return build;
}

@end