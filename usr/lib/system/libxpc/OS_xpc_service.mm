@interface OS_xpc_service
- (void)_xref_dispose;
@end

@implementation OS_xpc_service

- (void)_xref_dispose
{
  _xpc_service_last_xref_cancel(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_service;
  [(OS_object *)&v3 _xref_dispose];
}

@end