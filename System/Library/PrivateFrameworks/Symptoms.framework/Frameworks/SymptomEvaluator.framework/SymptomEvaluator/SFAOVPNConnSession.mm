@interface SFAOVPNConnSession
- (SFAOVPNConnSession)initWithQueue:(id)queue configID:(id)d;
@end

@implementation SFAOVPNConnSession

- (SFAOVPNConnSession)initWithQueue:(id)queue configID:(id)d
{
  v5.receiver = self;
  v5.super_class = SFAOVPNConnSession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:queue configID:d neSessionType:3 statusChangedCallback:0];
}

@end