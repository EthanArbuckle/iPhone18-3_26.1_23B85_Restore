@interface OS_xpc_payload
- (void)dealloc;
@end

@implementation OS_xpc_payload

- (void)dealloc
{
  _xpc_payload_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_payload;
  [(OS_xpc_payload *)&v3 dealloc];
}

@end