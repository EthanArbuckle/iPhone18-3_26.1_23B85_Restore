@interface SFDNSProxySession
- (SFDNSProxySession)initWithQueue:(id)queue configID:(id)d;
@end

@implementation SFDNSProxySession

- (SFDNSProxySession)initWithQueue:(id)queue configID:(id)d
{
  v5.receiver = self;
  v5.super_class = SFDNSProxySession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:queue configID:d neSessionType:6 statusChangedCallback:0];
}

@end