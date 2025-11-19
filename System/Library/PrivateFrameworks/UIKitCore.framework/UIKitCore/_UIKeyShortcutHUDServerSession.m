@interface _UIKeyShortcutHUDServerSession
- (UIWindow)keyWindow;
- (_UIOServiceConnection)connection;
@end

@implementation _UIKeyShortcutHUDServerSession

- (UIWindow)keyWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_keyWindow);

  return WeakRetained;
}

- (_UIOServiceConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end