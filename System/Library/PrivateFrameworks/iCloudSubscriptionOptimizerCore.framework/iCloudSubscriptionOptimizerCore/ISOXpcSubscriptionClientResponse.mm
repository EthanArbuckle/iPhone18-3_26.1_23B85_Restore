@interface ISOXpcSubscriptionClientResponse
- (ISOXpcSubscriptionClientResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISOXpcSubscriptionClientResponse

- (void)encodeWithCoder:(id)coder
{
  v4 = OBJC_IVAR___ISOXpcSubscriptionClientResponse_proto;
  coderCopy = coder;
  selfCopy = self;
  sub_275AE351C(self + v4, coderCopy);
}

- (ISOXpcSubscriptionClientResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end