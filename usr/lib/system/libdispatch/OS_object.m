@interface OS_object
- (OS_object)init;
@end

@implementation OS_object

- (OS_object)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

@end