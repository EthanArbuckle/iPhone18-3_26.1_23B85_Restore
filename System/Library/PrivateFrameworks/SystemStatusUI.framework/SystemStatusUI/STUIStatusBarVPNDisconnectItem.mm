@interface STUIStatusBarVPNDisconnectItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (STUIStatusBarVPNDisconnectView)disconnectView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_create_disconnectView;
@end

@implementation STUIStatusBarVPNDisconnectItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v4 = [a4 valueForKey:*MEMORY[0x277D6BE78]];
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

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVPNDisconnectItem;
  v7 = a4;
  v8 = [(STUIStatusBarItem *)&v13 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 isEnabled];

  if (v9 && [v6 dataChanged])
  {
    v10 = [(STUIStatusBarVPNDisconnectItem *)self disconnectView];
    [v10 resetSlashForUpdate:v6];

    v11 = [(STUIStatusBarVPNDisconnectItem *)self disconnectView];
    [v11 animateSlashForUpdate:v6];
  }

  return v8;
}

@end