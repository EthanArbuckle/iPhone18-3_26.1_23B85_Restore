@interface OS_object
- (OS_object)init;
@end

@implementation OS_object

- (OS_object)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end