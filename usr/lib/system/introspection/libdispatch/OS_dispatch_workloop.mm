@interface OS_dispatch_workloop
- (OS_dispatch_workloop)init;
@end

@implementation OS_dispatch_workloop

- (OS_dispatch_workloop)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end