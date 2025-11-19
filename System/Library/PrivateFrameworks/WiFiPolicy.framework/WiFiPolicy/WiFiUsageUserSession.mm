@interface WiFiUsageUserSession
- (WiFiUsageUserSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
- (void)displayStateDidChange:(BOOL)a3;
- (void)lockStateDidChange:(BOOL)a3;
@end

@implementation WiFiUsageUserSession

- (WiFiUsageUserSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v5.receiver = self;
  v5.super_class = WiFiUsageUserSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:2 andInterfaceName:a3 andCapabilities:a4];
}

- (void)lockStateDidChange:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WiFiUsageUserSession;
  [(WiFiUsageSession *)&v5 lockStateDidChange:?];
  if (!a3 && self->_userInactive)
  {
    NSLog(&cfstr_SUserSessionSt.isa, "[WiFiUsageUserSession lockStateDidChange:]");
    [(WiFiUsageSession *)self sessionDidStart];
    self->_userInactive = 0;
  }

  self->_deviceLocked = a3;
}

- (void)displayStateDidChange:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WiFiUsageUserSession;
  [(WiFiUsageSession *)&v5 displayStateDidChange:?];
  if (a3)
  {
    if (self->_userInactive && !self->_deviceLocked)
    {
      NSLog(&cfstr_SUserSessionSt.isa, "[WiFiUsageUserSession displayStateDidChange:]");
      [(WiFiUsageSession *)self sessionDidStart];
      self->_userInactive = 0;
    }
  }

  else
  {
    NSLog(&cfstr_SUserSessionEn.isa, "[WiFiUsageUserSession displayStateDidChange:]");
    [(WiFiUsageSession *)self sessionDidEnd];
    self->_userInactive = 1;
  }
}

@end