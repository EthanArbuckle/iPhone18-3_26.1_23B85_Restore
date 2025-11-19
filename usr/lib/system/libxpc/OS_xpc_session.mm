@interface OS_xpc_session
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_xpc_session

- (void)_xref_dispose
{
  _xpc_session_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_session;
  [(OS_object *)&v3 _xref_dispose];
}

- (void)dealloc
{
  _xpc_session_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_session;
  [(OS_xpc_session *)&v3 dealloc];
}

@end