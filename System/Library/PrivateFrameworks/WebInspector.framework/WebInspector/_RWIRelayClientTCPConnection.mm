@interface _RWIRelayClientTCPConnection
+ (id)connectionFromLockdownCheckinWithInfo:(void *)info delegate:(id)delegate;
+ (id)connectionFromTCPConnection:(id)connection delegate:(id)delegate;
- (_RWIRelayClientTCPConnection)initWithTCPConnection:(id)connection delegate:(id)delegate;
- (void)closeInternal;
- (void)sendMessage:(id)message;
- (void)tcpConnection:(id)connection didReceiveMessage:(id)message;
@end

@implementation _RWIRelayClientTCPConnection

+ (id)connectionFromTCPConnection:(id)connection delegate:(id)delegate
{
  delegateCopy = delegate;
  connectionCopy = connection;
  v7 = [[_RWIRelayClientTCPConnection alloc] initWithTCPConnection:connectionCopy delegate:delegateCopy];

  return v7;
}

+ (id)connectionFromLockdownCheckinWithInfo:(void *)info delegate:(id)delegate
{
  delegateCopy = delegate;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D829F8], info);
  secure_lockdown_checkin();
  CFRelease(Mutable);
  NSLog(&cfstr_UnableToCheckI.isa);

  return 0;
}

- (_RWIRelayClientTCPConnection)initWithTCPConnection:(id)connection delegate:(id)delegate
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = _RWIRelayClientTCPConnection;
  v8 = [(_RWIRelayClientConnection *)&v12 initWithDelegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    [(_RWITCPConnection *)v9->_connection setDelegate:v9];
    [(_RWITCPConnection *)v9->_connection startReceiving];
    v10 = v9;
  }

  return v9;
}

- (void)closeInternal
{
  connection = self->_connection;
  if (connection)
  {
    [(_RWITCPConnection *)connection setDelegate:0];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (void)tcpConnection:(id)connection didReceiveMessage:(id)message
{
  v7 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:message options:0 format:0 error:&v7];
  v6 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v6)
  {
    [(_RWIRelayClientConnection *)self dispatchRelayMessage:v5];
  }
}

- (void)sendMessage:(id)message
{
  if (self->_connection)
  {
    v6 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:message format:200 options:0 error:&v6];
    if (v4)
    {
      v5 = v6 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      [(_RWITCPConnection *)self->_connection sendMessage:v4];
    }

    else
    {
      [(_RWIRelayClientConnection *)self closeFromConnection];
    }
  }
}

@end