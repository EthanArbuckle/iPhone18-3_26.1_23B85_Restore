@interface OS_dispatch_queue_serial_executor
- (OS_dispatch_queue_serial_executor)init;
@end

@implementation OS_dispatch_queue_serial_executor

- (OS_dispatch_queue_serial_executor)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end