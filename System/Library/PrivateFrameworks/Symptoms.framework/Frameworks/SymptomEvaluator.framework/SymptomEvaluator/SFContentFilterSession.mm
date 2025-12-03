@interface SFContentFilterSession
- (SFContentFilterSession)initWithQueue:(id)queue configID:(id)d;
@end

@implementation SFContentFilterSession

- (SFContentFilterSession)initWithQueue:(id)queue configID:(id)d
{
  v5.receiver = self;
  v5.super_class = SFContentFilterSession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:queue configID:d neSessionType:4 statusChangedCallback:0];
}

@end