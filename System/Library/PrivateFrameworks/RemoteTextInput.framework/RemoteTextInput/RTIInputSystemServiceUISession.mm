@interface RTIInputSystemServiceUISession
+ (id)sessionWithConnection:(id)connection remoteProcess:(id)process;
- (RTIInputSystemServiceUISession)initWithConnection:(id)connection remoteProcess:(id)process;
@end

@implementation RTIInputSystemServiceUISession

- (RTIInputSystemServiceUISession)initWithConnection:(id)connection remoteProcess:(id)process
{
  processCopy = process;
  v11.receiver = self;
  v11.super_class = RTIInputSystemServiceUISession;
  v8 = [(RTIInputSystemServiceSession *)&v11 initWithConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_remoteProcess, process);
  }

  return v9;
}

+ (id)sessionWithConnection:(id)connection remoteProcess:(id)process
{
  processCopy = process;
  connectionCopy = connection;
  v8 = [[self alloc] initWithConnection:connectionCopy remoteProcess:processCopy];

  return v8;
}

@end