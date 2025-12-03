@interface WiFiUsageDeviceSession
- (WiFiUsageDeviceSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (void)displayStateDidChange:(BOOL)change;
- (void)linkQualityDidChange:(id)change;
@end

@implementation WiFiUsageDeviceSession

- (WiFiUsageDeviceSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageDeviceSession;
  result = [(WiFiUsageSession *)&v5 initWithSessionType:1 andInterfaceName:name andCapabilities:capabilities];
  result->_firstDisplayOn = 1;
  return result;
}

- (void)displayStateDidChange:(BOOL)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WiFiUsageDeviceSession;
  [(WiFiUsageSession *)&v9 displayStateDidChange:?];
  if (changeCopy)
  {
    if (self->_firstDisplayOn)
    {
      if (![(WiFiUsageSession *)self isSessionActive])
      {
        NSLog(&cfstr_SDeviceSession.isa, "[WiFiUsageDeviceSession displayStateDidChange:]");
        [(WiFiUsageSession *)self sessionDidStart];
      }

      self->_firstDisplayOn = 0;
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    sessionStartTime = [(WiFiUsageSession *)self sessionStartTime];
    [date timeIntervalSinceDate:sessionStartTime];
    v8 = v7;

    if (v8 > 86400.0)
    {
      [(WiFiUsageSession *)self sessionDidEnd];
    }
  }
}

- (void)linkQualityDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = WiFiUsageDeviceSession;
  [(WiFiUsageSession *)&v9 linkQualityDidChange:change];
  date = [MEMORY[0x277CBEAA8] date];
  sessionStartTime = [(WiFiUsageSession *)self sessionStartTime];
  [date timeIntervalSinceDate:sessionStartTime];
  v7 = v6;

  if (v7 > 86400.0)
  {
    sessionStartTime2 = [(WiFiUsageSession *)self sessionStartTime];
    NSLog(&cfstr_SSessionStarte.isa, "[WiFiUsageDeviceSession linkQualityDidChange:]", sessionStartTime2, *&v7);

    [(WiFiUsageSession *)self sessionDidEnd];
    [(WiFiUsageSession *)self sessionDidStart];
  }
}

@end