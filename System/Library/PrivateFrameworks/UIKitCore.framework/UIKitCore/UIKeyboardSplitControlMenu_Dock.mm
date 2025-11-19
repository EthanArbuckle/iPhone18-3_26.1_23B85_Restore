@interface UIKeyboardSplitControlMenu_Dock
- (BOOL)visible;
- (void)actionForMenu:(id)a3;
@end

@implementation UIKeyboardSplitControlMenu_Dock

- (BOOL)visible
{
  if (+[UIKeyboardImpl isSplit])
  {
    return 0;
  }

  v3 = +[UIPeripheralHost sharedInstance];
  v4 = [v3 isUndocked];

  return v4;
}

- (void)actionForMenu:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__UIKeyboardSplitControlMenu_Dock_actionForMenu___block_invoke;
  v5[3] = &unk_1E70F5AC0;
  v6 = v3;
  v4 = v3;
  [UIPeripheralHost setFloating:0 onCompletion:v5];
}

@end