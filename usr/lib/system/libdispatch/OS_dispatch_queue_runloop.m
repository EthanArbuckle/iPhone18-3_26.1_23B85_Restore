@interface OS_dispatch_queue_runloop
- (OS_dispatch_queue_runloop)init;
- (void)_xref_dispose;
@end

@implementation OS_dispatch_queue_runloop

- (OS_dispatch_queue_runloop)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (void)_xref_dispose
{
  _dispatch_queue_xref_dispose(self);
  _dispatch_runloop_queue_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_dispatch_queue_runloop;
  [(OS_dispatch_queue *)&v3 _xref_dispose];
}

@end