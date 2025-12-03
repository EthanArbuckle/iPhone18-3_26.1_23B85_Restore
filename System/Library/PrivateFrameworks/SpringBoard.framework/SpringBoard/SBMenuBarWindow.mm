@interface SBMenuBarWindow
- (id)_keyboardShortcutMenuLeaves;
@end

@implementation SBMenuBarWindow

- (id)_keyboardShortcutMenuLeaves
{
  v10.receiver = self;
  v10.super_class = SBMenuBarWindow;
  _keyboardShortcutMenuLeaves = [(SBMenuBarWindow *)&v10 _keyboardShortcutMenuLeaves];
  _sbWindowScene = [(UIWindow *)self _sbWindowScene];
  menuBarManager = [_sbWindowScene menuBarManager];
  menuBarViewController = [menuBarManager menuBarViewController];
  additionalKeyboardShortcutActionsForSession = [menuBarViewController additionalKeyboardShortcutActionsForSession];

  if ([_keyboardShortcutMenuLeaves count])
  {
    v8 = [additionalKeyboardShortcutActionsForSession arrayByAddingObjectsFromArray:_keyboardShortcutMenuLeaves];

    additionalKeyboardShortcutActionsForSession = v8;
  }

  return additionalKeyboardShortcutActionsForSession;
}

@end