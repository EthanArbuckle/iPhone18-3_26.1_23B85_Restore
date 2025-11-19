@interface OS_xpc_listener
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_xpc_listener

- (void)_xref_dispose
{
  _xpc_listener_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_listener;
  [(OS_object *)&v3 _xref_dispose];
}

- (void)dealloc
{
  _xpc_listener_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_listener;
  [(OS_xpc_listener *)&v3 dealloc];
}

@end