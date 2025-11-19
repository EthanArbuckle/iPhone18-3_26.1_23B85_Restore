@interface _UIEnumeratedKeyboardShortcut
- (UIKeyCommand)keyCommand;
- (UIResponder)originatingResponder;
- (_UIEnumeratedKeyboardShortcut)initWithKeyboardShortcutLeaf:(id)a3 originatingResponder:(id)a4;
@end

@implementation _UIEnumeratedKeyboardShortcut

- (_UIEnumeratedKeyboardShortcut)initWithKeyboardShortcutLeaf:(id)a3 originatingResponder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIEnumeratedKeyboardShortcut;
  v9 = [(_UIEnumeratedKeyboardShortcut *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyboardShortcutLeaf, a3);
    objc_storeWeak(&v10->_originatingResponder, v8);
  }

  return v10;
}

- (UIKeyCommand)keyCommand
{
  keyboardShortcutLeaf = self->_keyboardShortcutLeaf;
  v3 = objc_opt_class();
  v4 = keyboardShortcutLeaf;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (UIResponder)originatingResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingResponder);

  return WeakRetained;
}

@end