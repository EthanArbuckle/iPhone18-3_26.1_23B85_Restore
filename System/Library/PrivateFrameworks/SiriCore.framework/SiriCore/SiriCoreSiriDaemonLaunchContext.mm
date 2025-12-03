@interface SiriCoreSiriDaemonLaunchContext
- (SiriCoreSiriDaemonLaunchContext)initWithLaunchArguments:(id)arguments;
@end

@implementation SiriCoreSiriDaemonLaunchContext

- (SiriCoreSiriDaemonLaunchContext)initWithLaunchArguments:(id)arguments
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