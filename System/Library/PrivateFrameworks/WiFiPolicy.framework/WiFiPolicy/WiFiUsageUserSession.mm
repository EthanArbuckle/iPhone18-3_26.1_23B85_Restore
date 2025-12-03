@interface WiFiUsageUserSession
- (WiFiUsageUserSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (void)displayStateDidChange:(BOOL)change;
- (void)lockStateDidChange:(BOOL)change;
@end

@implementation WiFiUsageUserSession

- (WiFiUsageUserSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageUserSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:2 andInterfaceName:name andCapabilities:capabilities];
}

- (void)lockStateDidChange:(BOOL)change
{
  v5.receiver = self;
  v5.super_class = WiFiUsageUserSession;
  [(WiFiUsageSession *)&v5 lockStateDidChange:?];
  if (!change && self->_userInactive)
  {
    NSLog(&cfstr_SUserSessionSt.isa, "[WiFiUsageUserSession lockStateDidChange:]");
    [(WiFiUsageSession *)self sessionDidStart];
    self->_userInactive = 0;
  }

  self->_deviceLocked = change;
}

- (void)displayStateDidChange:(BOOL)change
{
  v5.receiver = self;
  v5.super_class = WiFiUsageUserSession;
  [(WiFiUsageSession *)&v5 displayStateDidChange:?];
  if (change)
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