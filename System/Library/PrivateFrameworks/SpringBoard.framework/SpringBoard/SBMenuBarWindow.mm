@interface SBMenuBarWindow
- (id)_keyboardShortcutMenuLeaves;
@end

@implementation SBMenuBarWindow

- (id)_keyboardShortcutMenuLeaves
{
  v10.receiver = self;
  v10.super_class = SBMenuBarWindow;
  v3 = [(SBMenuBarWindow *)&v10 _keyboardShortcutMenuLeaves];
  v4 = [(UIWindow *)self _sbWindowScene];
  v5 = [v4 menuBarManager];
  v6 = [v5 menuBarViewController];
  v7 = [v6 additionalKeyboardShortcutActionsForSession];

  if ([v3 count])
  {
    v8 = [v7 arrayByAddingObjectsFromArray:v3];

    v7 = v8;
  }

  return v7;
}

@end