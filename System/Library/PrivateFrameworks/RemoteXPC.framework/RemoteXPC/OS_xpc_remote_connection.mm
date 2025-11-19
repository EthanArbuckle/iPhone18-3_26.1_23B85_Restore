@interface OS_xpc_remote_connection
- (void)dealloc;
@end

@implementation OS_xpc_remote_connection

- (void)dealloc
{
  free(self->remote_service_name);
  v3.receiver = self;
  v3.super_class = OS_xpc_remote_connection;
  [(OS_xpc_remote_connection *)&v3 dealloc];
}

@end