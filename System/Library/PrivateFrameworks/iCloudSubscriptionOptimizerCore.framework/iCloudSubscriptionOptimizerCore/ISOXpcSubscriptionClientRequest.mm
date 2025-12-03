@interface ISOXpcSubscriptionClientRequest
- (ISOXpcSubscriptionClientRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISOXpcSubscriptionClientRequest

- (void)encodeWithCoder:(id)coder
{
  v4 = OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto;
  coderCopy = coder;
  selfCopy = self;
  sub_275AE3564(self + v4, coderCopy, type metadata accessor for SubscriptionClientRequest, qword_281411C70, type metadata accessor for SubscriptionClientRequest);
}

- (ISOXpcSubscriptionClientRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end