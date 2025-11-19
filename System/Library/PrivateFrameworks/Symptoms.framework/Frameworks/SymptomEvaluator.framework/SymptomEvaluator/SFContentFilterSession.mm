@interface SFContentFilterSession
- (SFContentFilterSession)initWithQueue:(id)a3 configID:(id)a4;
@end

@implementation SFContentFilterSession

- (SFContentFilterSession)initWithQueue:(id)a3 configID:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFContentFilterSession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:a3 configID:a4 neSessionType:4 statusChangedCallback:0];
}

@end