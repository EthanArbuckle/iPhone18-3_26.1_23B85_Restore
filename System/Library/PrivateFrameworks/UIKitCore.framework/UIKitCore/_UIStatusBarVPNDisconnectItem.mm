@interface _UIStatusBarVPNDisconnectItem
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (_UIStatusBarVPNDisconnectView)disconnectView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_create_disconnectView;
@end

@implementation _UIStatusBarVPNDisconnectItem

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  v4 = [data valueForKey:@"vpnEntry"];
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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  v13.receiver = self;
  v13.super_class = _UIStatusBarVPNDisconnectItem;
  itemCopy = item;
  v8 = [(_UIStatusBarItem *)&v13 applyUpdate:updateCopy toDisplayItem:itemCopy];
  isEnabled = [itemCopy isEnabled];

  if (isEnabled && [updateCopy dataChanged])
  {
    disconnectView = [(_UIStatusBarVPNDisconnectItem *)self disconnectView];
    [disconnectView resetSlashForUpdate:updateCopy];

    disconnectView2 = [(_UIStatusBarVPNDisconnectItem *)self disconnectView];
    [disconnectView2 animateSlashForUpdate:updateCopy];
  }

  return v8;
}

@end