@interface SFDNSProxySession
- (SFDNSProxySession)initWithQueue:(id)a3 configID:(id)a4;
@end

@implementation SFDNSProxySession

- (SFDNSProxySession)initWithQueue:(id)a3 configID:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFDNSProxySession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:a3 configID:a4 neSessionType:6 statusChangedCallback:0];
}

@end