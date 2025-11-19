@interface SiriCoreSiriDaemonLaunchContext
- (SiriCoreSiriDaemonLaunchContext)initWithLaunchArguments:(id)a3;
@end

@implementation SiriCoreSiriDaemonLaunchContext

- (SiriCoreSiriDaemonLaunchContext)initWithLaunchArguments:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriCoreSiriDaemonLaunchContext;
  v3 = [(SiriCoreSiriDaemonLaunchContext *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(SiriCoreSiriDaemonLaunchContext *)v3 setDaemonType:1];
  }

  return v4;
}

@end