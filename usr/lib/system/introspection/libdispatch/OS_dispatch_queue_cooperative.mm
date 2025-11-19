@interface OS_dispatch_queue_cooperative
- (OS_dispatch_queue_cooperative)init;
@end

@implementation OS_dispatch_queue_cooperative

- (OS_dispatch_queue_cooperative)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end