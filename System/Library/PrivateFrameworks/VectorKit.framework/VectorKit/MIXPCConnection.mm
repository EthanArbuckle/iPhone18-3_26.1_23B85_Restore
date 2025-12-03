@interface MIXPCConnection
- (MIXPCConnection)initWithXPCConnection:(id)connection;
- (void)handleEvent:(id)event;
- (void)sendData:(id)data;
@end

@implementation MIXPCConnection

- (MIXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = MIXPCConnection;
  v6 = [(MIConnection *)&v12 initWithType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
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

- (void)handleEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_dictionary)
  {
    delegate2 = _CFXPCCreateCFObjectFromXPCMessage();
    delegate = [(MIConnection *)self delegate];
    [delegate connection:self didRecieveData:delegate2];

    CFRelease(delegate2);
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

    delegate2 = [(MIConnection *)self delegate];
    [delegate2 connection:self didCloseConnection:0];
  }

LABEL_6:
}

- (void)sendData:(id)data
{
  if (self->_connection)
  {
    dataCopy = data;
    dataCopy2 = data;
    bytes = [dataCopy2 bytes];
    v8 = [dataCopy2 length];

    v9 = CFDataCreate(0, bytes, v8);
    v10 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_connection_send_message(self->_connection, v10);

    CFRelease(v9);
  }
}

@end