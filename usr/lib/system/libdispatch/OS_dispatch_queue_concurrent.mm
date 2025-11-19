@interface OS_dispatch_queue_concurrent
- (OS_dispatch_queue_concurrent)init;
@end

@implementation OS_dispatch_queue_concurrent

- (OS_dispatch_queue_concurrent)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end