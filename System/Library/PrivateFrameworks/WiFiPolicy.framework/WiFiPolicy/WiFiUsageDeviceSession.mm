@interface WiFiUsageDeviceSession
- (WiFiUsageDeviceSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
- (void)displayStateDidChange:(BOOL)a3;
- (void)linkQualityDidChange:(id)a3;
@end

@implementation WiFiUsageDeviceSession

- (WiFiUsageDeviceSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v5.receiver = self;
  v5.super_class = WiFiUsageDeviceSession;
  result = [(WiFiUsageSession *)&v5 initWithSessionType:1 andInterfaceName:a3 andCapabilities:a4];
  result->_firstDisplayOn = 1;
  return result;
}

- (void)displayStateDidChange:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = WiFiUsageDeviceSession;
  [(WiFiUsageSession *)&v9 displayStateDidChange:?];
  if (v3)
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
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(WiFiUsageSession *)self sessionStartTime];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 > 86400.0)
    {
      [(WiFiUsageSession *)self sessionDidEnd];
    }
  }
}

- (void)linkQualityDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = WiFiUsageDeviceSession;
  [(WiFiUsageSession *)&v9 linkQualityDidChange:a3];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(WiFiUsageSession *)self sessionStartTime];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 > 86400.0)
  {
    v8 = [(WiFiUsageSession *)self sessionStartTime];
    NSLog(&cfstr_SSessionStarte.isa, "[WiFiUsageDeviceSession linkQualityDidChange:]", v8, *&v7);

    [(WiFiUsageSession *)self sessionDidEnd];
    [(WiFiUsageSession *)self sessionDidStart];
  }
}

@end