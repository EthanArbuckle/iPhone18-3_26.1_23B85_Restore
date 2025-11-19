@interface MIXPCConnection
- (MIXPCConnection)initWithXPCConnection:(id)a3;
- (void)handleEvent:(id)a3;
- (void)sendData:(id)a3;
@end

@implementation MIXPCConnection

- (MIXPCConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MIXPCConnection;
  v6 = [(MIConnection *)&v12 initWithType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    connection = v7->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001EAC;
    handler[3] = &unk_1000042E0;
    v11 = v7;
    xpc_connection_set_event_handler(connection, handler);
  }

  return v7;
}

- (void)handleEvent:(id)a3
{
  v8 = a3;
  type = xpc_get_type(v8);
  if (type == &_xpc_type_dictionary)
  {
    v6 = _CFXPCCreateCFObjectFromXPCMessage();
    v7 = [(MIConnection *)self delegate];
    [v7 connection:self didRecieveData:v6];

    CFRelease(v6);
  }

  else
  {
    if (type != &_xpc_type_error)
    {
      goto LABEL_6;
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;

    v6 = [(MIConnection *)self delegate];
    [v6 connection:self didCloseConnection:0];
  }

LABEL_6:
}

- (void)sendData:(id)a3
{
  if (self->_connection)
  {
    v5 = a3;
    v6 = a3;
    v7 = [v6 bytes];
    v8 = [v6 length];

    v9 = CFDataCreate(0, v7, v8);
    v10 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_connection_send_message(self->_connection, v10);

    CFRelease(v9);
  }
}

@end