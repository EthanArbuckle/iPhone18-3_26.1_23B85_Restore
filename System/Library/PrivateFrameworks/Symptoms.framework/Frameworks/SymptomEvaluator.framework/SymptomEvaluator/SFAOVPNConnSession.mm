@interface SFAOVPNConnSession
- (SFAOVPNConnSession)initWithQueue:(id)a3 configID:(id)a4;
@end

@implementation SFAOVPNConnSession

- (SFAOVPNConnSession)initWithQueue:(id)a3 configID:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFAOVPNConnSession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:a3 configID:a4 neSessionType:3 statusChangedCallback:0];
}

@end