@interface POAgentListener
- (POAgentListener)initWithMachServiceName:(id)name;
@end

@implementation POAgentListener

- (POAgentListener)initWithMachServiceName:(id)name
{
  v6.receiver = self;
  v6.super_class = POAgentListener;
  v3 = [(POAgentListener *)&v6 initWithMachServiceName:name];
  v4 = v3;
  if (v3)
  {
    [(POAgentListener *)v3 setDelegate:v3];
  }

  return v4;
}

@end