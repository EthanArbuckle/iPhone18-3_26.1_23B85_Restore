@interface SVXClientServiceServerConnectionFactory
- (id)createWithXPCConnection:(id)connection performer:(id)performer delegate:(id)delegate;
@end

@implementation SVXClientServiceServerConnectionFactory

- (id)createWithXPCConnection:(id)connection performer:(id)performer delegate:(id)delegate
{
  delegateCopy = delegate;
  performerCopy = performer;
  connectionCopy = connection;
  v10 = [[SVXClientServiceServerConnection alloc] initWithXPCConnection:connectionCopy performer:performerCopy delegate:delegateCopy];

  return v10;
}

@end