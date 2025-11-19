@interface RTIInputSystemServiceUISession
+ (id)sessionWithConnection:(id)a3 remoteProcess:(id)a4;
- (RTIInputSystemServiceUISession)initWithConnection:(id)a3 remoteProcess:(id)a4;
@end

@implementation RTIInputSystemServiceUISession

- (RTIInputSystemServiceUISession)initWithConnection:(id)a3 remoteProcess:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RTIInputSystemServiceUISession;
  v8 = [(RTIInputSystemServiceSession *)&v11 initWithConnection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_remoteProcess, a4);
  }

  return v9;
}

+ (id)sessionWithConnection:(id)a3 remoteProcess:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithConnection:v7 remoteProcess:v6];

  return v8;
}

@end