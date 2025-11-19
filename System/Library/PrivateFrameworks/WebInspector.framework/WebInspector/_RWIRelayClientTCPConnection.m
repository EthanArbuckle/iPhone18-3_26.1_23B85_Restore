@interface _RWIRelayClientTCPConnection
+ (id)connectionFromLockdownCheckinWithInfo:(void *)a3 delegate:(id)a4;
+ (id)connectionFromTCPConnection:(id)a3 delegate:(id)a4;
- (_RWIRelayClientTCPConnection)initWithTCPConnection:(id)a3 delegate:(id)a4;
- (void)closeInternal;
- (void)sendMessage:(id)a3;
- (void)tcpConnection:(id)a3 didReceiveMessage:(id)a4;
@end

@implementation _RWIRelayClientTCPConnection

+ (id)connectionFromTCPConnection:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_RWIRelayClientTCPConnection alloc] initWithTCPConnection:v6 delegate:v5];

  return v7;
}

+ (id)connectionFromLockdownCheckinWithInfo:(void *)a3 delegate:(id)a4
{
  v5 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D829F8], a3);
  secure_lockdown_checkin();
  CFRelease(Mutable);
  NSLog(&cfstr_UnableToCheckI.isa);

  return 0;
}

- (_RWIRelayClientTCPConnection)initWithTCPConnection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _RWIRelayClientTCPConnection;
  v8 = [(_RWIRelayClientConnection *)&v12 initWithDelegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
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

- (void)tcpConnection:(id)a3 didReceiveMessage:(id)a4
{
  v7 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:a4 options:0 format:0 error:&v7];
  v6 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v6)
  {
    [(_RWIRelayClientConnection *)self dispatchRelayMessage:v5];
  }
}

- (void)sendMessage:(id)a3
{
  if (self->_connection)
  {
    v6 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v6];
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