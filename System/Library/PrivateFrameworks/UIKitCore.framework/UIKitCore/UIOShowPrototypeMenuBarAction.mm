@interface UIOShowPrototypeMenuBarAction
@end

@implementation UIOShowPrototypeMenuBarAction

void __64___UIOShowPrototypeMenuBarAction_initWithConfiguration_handler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v5 accepted];
  }

  (*(*(a1 + 32) + 16))();
}

void __62___UIOShowPrototypeMenuBarAction_performActionFromConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) canSendResponse])
  {
    v4 = *(a1 + 32);
    v5 = [_UIOShowPrototypeMenuBarActionResponse _responseWithAccepted:a2];
    [v4 sendResponse:v5];
  }
}

void __62___UIOShowPrototypeMenuBarAction_performActionFromConnection___block_invoke_2(uint64_t a1, void *a2)
{
  if (_menuBarWindow)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [a2 windowScene];
    v5 = [[_UIKeyShortcutHUDWindow alloc] initWithWindowScene:v4];
    v6 = _menuBarWindow;
    _menuBarWindow = v5;

    v7 = [_UIOPrototypeMenuBarViewController alloc];
    v8 = [*(a1 + 32) configuration];
    v9 = [(_UIOPrototypeMenuBarViewController *)v7 initWithConfiguration:v8 serviceConnection:*(a1 + 40)];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62___UIOShowPrototypeMenuBarAction_performActionFromConnection___block_invoke_3;
    v10[3] = &unk_1E70F5AC0;
    v11 = *(a1 + 40);
    [(_UIOPrototypeMenuBarViewController *)v9 setDismissalHandler:v10];
    [_menuBarWindow setRootViewController:v9];
    [_menuBarWindow makeKeyAndVisible];
    (*(*(a1 + 48) + 16))();
  }
}

void __62___UIOShowPrototypeMenuBarAction_performActionFromConnection___block_invoke_3(uint64_t a1, int a2)
{
  if (_menuBarWindow)
  {
    [_menuBarWindow setHidden:1];
    [_menuBarWindow setWindowScene:0];
    v4 = _menuBarWindow;
    _menuBarWindow = 0;

    if (a2)
    {
      v5 = +[_UIOPrototypeMenuBarDismissedAction action];
      [*(a1 + 32) sendAction:v5];
    }
  }
}

@end