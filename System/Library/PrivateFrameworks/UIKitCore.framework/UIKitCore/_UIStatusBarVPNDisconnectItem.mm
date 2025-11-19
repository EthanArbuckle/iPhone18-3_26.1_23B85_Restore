@interface _UIStatusBarVPNDisconnectItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (_UIStatusBarVPNDisconnectView)disconnectView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_create_disconnectView;
@end

@implementation _UIStatusBarVPNDisconnectItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v4 = [a4 valueForKey:@"vpnEntry"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (_UIStatusBarVPNDisconnectView)disconnectView
{
  disconnectView = self->_disconnectView;
  if (!disconnectView)
  {
    [(_UIStatusBarVPNDisconnectItem *)self _create_disconnectView];
    disconnectView = self->_disconnectView;
  }

  return disconnectView;
}

- (void)_create_disconnectView
{
  v3 = [_UIStatusBarVPNDisconnectView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  disconnectView = self->_disconnectView;
  self->_disconnectView = v4;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = _UIStatusBarVPNDisconnectItem;
  v7 = a4;
  v8 = [(_UIStatusBarItem *)&v13 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 isEnabled];

  if (v9 && [v6 dataChanged])
  {
    v10 = [(_UIStatusBarVPNDisconnectItem *)self disconnectView];
    [v10 resetSlashForUpdate:v6];

    v11 = [(_UIStatusBarVPNDisconnectItem *)self disconnectView];
    [v11 animateSlashForUpdate:v6];
  }

  return v8;
}

@end