@interface STUIStatusBarVPNDisconnectItem
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (STUIStatusBarVPNDisconnectView)disconnectView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_create_disconnectView;
@end

@implementation STUIStatusBarVPNDisconnectItem

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  v4 = [data valueForKey:*MEMORY[0x277D6BE78]];
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

- (STUIStatusBarVPNDisconnectView)disconnectView
{
  disconnectView = self->_disconnectView;
  if (!disconnectView)
  {
    [(STUIStatusBarVPNDisconnectItem *)self _create_disconnectView];
    disconnectView = self->_disconnectView;
  }

  return disconnectView;
}

- (void)_create_disconnectView
{
  v3 = [STUIStatusBarVPNDisconnectView alloc];
  v4 = [(STUIStatusBarVPNDisconnectView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  disconnectView = self->_disconnectView;
  self->_disconnectView = v4;

  MEMORY[0x2821F96F8](v4, disconnectView);
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVPNDisconnectItem;
  itemCopy = item;
  v8 = [(STUIStatusBarItem *)&v13 applyUpdate:updateCopy toDisplayItem:itemCopy];
  isEnabled = [itemCopy isEnabled];

  if (isEnabled && [updateCopy dataChanged])
  {
    disconnectView = [(STUIStatusBarVPNDisconnectItem *)self disconnectView];
    [disconnectView resetSlashForUpdate:updateCopy];

    disconnectView2 = [(STUIStatusBarVPNDisconnectItem *)self disconnectView];
    [disconnectView2 animateSlashForUpdate:updateCopy];
  }

  return v8;
}

@end