@interface OS_xpc_connection
- (void)_xref_dispose;
@end

@implementation OS_xpc_connection

- (void)_xref_dispose
{
  _xpc_connection_last_xref_cancel(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_connection;
  [(OS_object *)&v3 _xref_dispose];
}

@end