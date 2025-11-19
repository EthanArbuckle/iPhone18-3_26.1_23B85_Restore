@interface STUIStatusBarVPNItem
- (STUIStatusBarStringView)vpnView;
- (void)_create_vpnView;
@end

@implementation STUIStatusBarVPNItem

- (STUIStatusBarStringView)vpnView
{
  vpnView = self->_vpnView;
  if (!vpnView)
  {
    [(STUIStatusBarVPNItem *)self _create_vpnView];
    vpnView = self->_vpnView;
  }

  return vpnView;
}

- (void)_create_vpnView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  vpnView = self->_vpnView;
  self->_vpnView = v4;

  [(STUIStatusBarStringView *)self->_vpnView setText:@"VPN"];
  v6 = self->_vpnView;

  [(STUIStatusBarStringView *)v6 setEncapsulated:1];
}

@end