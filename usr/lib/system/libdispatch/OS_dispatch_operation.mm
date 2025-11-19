@interface OS_dispatch_operation
- (OS_dispatch_operation)init;
@end

@implementation OS_dispatch_operation

- (OS_dispatch_operation)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end