@interface _UIViewServiceSessionManagerQueuedAuxiliaryConnection
- (_UIViewServiceSessionManagerQueuedAuxiliaryConnection)initWithConnection:(id)connection context:(id)context;
@end

@implementation _UIViewServiceSessionManagerQueuedAuxiliaryConnection

- (_UIViewServiceSessionManagerQueuedAuxiliaryConnection)initWithConnection:(id)connection context:(id)context
{
  connectionCopy = connection;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _UIViewServiceSessionManagerQueuedAuxiliaryConnection;
  v9 = [(_UIViewServiceSessionManagerQueuedAuxiliaryConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

@end