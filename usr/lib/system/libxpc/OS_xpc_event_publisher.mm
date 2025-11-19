@interface OS_xpc_event_publisher
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_xpc_event_publisher

- (void)_xref_dispose
{
  _xpc_event_publisher_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_event_publisher;
  [(OS_object *)&v3 _xref_dispose];
}

- (void)dealloc
{
  _xpc_event_publisher_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_event_publisher;
  [(OS_xpc_event_publisher *)&v3 dealloc];
}

@end