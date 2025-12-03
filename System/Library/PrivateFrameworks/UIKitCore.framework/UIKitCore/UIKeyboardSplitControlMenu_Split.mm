@interface UIKeyboardSplitControlMenu_Split
- (BOOL)visible;
- (void)actionForMenu:(id)menu;
@end

@implementation UIKeyboardSplitControlMenu_Split

- (BOOL)visible
{
  v2 = +[UIKeyboardImpl rivenPreference];
  if (v2)
  {
    LOBYTE(v2) = !+[UIKeyboardImpl isSplit];
  }

  return v2;
}

- (void)actionForMenu:(id)menu
{
  menuCopy = menu;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__UIKeyboardSplitControlMenu_Split_actionForMenu___block_invoke;
  v5[3] = &unk_1E70F5AC0;
  v6 = menuCopy;
  v4 = menuCopy;
  [UIPeripheralHost setFloating:0 onCompletion:v5];
}

@end