@interface _UIMainMenuHostKeyboardShortcut
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuHostKeyboardShortcut)initWithKeyboardShortcut:(id)a3;
- (id)description;
@end

@implementation _UIMainMenuHostKeyboardShortcut

- (_UIMainMenuHostKeyboardShortcut)initWithKeyboardShortcut:(id)a3
{
  v5 = a3;
  v6 = [(_UIMainMenuHostKeyboardShortcut *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardShortcut, a3);
  }

  return v7;
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
  v5 = [v3 build];

  return v5;
}

@end