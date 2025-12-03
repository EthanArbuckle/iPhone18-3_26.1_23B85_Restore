@interface UIKeyboardSplitControlMenu_Dock
- (BOOL)visible;
- (void)actionForMenu:(id)menu;
@end

@implementation UIKeyboardSplitControlMenu_Dock

- (BOOL)visible
{
  if (+[UIKeyboardImpl isSplit])
  {
    return 0;
  }

  v3 = +[UIPeripheralHost sharedInstance];
  isUndocked = [v3 isUndocked];

  return isUndocked;
}

- (void)actionForMenu:(id)menu
{
  menuCopy = menu;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__UIKeyboardSplitControlMenu_Dock_actionForMenu___block_invoke;
  v5[3] = &unk_1E70F5AC0;
  v6 = menuCopy;
  v4 = menuCopy;
  [UIPeripheralHost setFloating:0 onCompletion:v5];
}

@end