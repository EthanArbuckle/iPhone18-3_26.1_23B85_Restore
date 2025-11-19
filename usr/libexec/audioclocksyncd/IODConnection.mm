@interface IODConnection
- (IODConnection)init;
- (void)dealloc;
@end

@implementation IODConnection

- (IODConnection)init
{
  v3 = [NSString stringWithUTF8String:"[IODConnection init]"];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v3];

  return 0;
}

- (void)dealloc
{
  iokConnection = self->_iokConnection;
  self->_iokConnection = 0;

  clientID = self->_clientID;
  if (clientID)
  {
    [qword_1000587F8 closeDaemonClient:dword_100058808 daemonClientID:clientID error:0];
  }

  v5.receiver = self;
  v5.super_class = IODConnection;
  [(IODConnection *)&v5 dealloc];
}

@end