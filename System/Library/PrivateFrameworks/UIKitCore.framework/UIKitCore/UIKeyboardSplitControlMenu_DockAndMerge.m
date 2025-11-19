@interface UIKeyboardSplitControlMenu_DockAndMerge
- (BOOL)visible;
- (void)actionForMenu:(id)a3;
@end

@implementation UIKeyboardSplitControlMenu_DockAndMerge

- (BOOL)visible
{
  v2 = +[UIKeyboardImpl rivenPreference];
  if (v2)
  {

    LOBYTE(v2) = +[UIKeyboardImpl isSplit];
  }

  return v2;
}

- (void)actionForMenu:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__UIKeyboardSplitControlMenu_DockAndMerge_actionForMenu___block_invoke;
  v5[3] = &unk_1E70F5AC0;
  v6 = v3;
  v4 = v3;
  [UIPeripheralHost setFloating:0 onCompletion:v5];
}

@end