@interface ISOXpcSubscriptionClientRequest
- (ISOXpcSubscriptionClientRequest)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISOXpcSubscriptionClientRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = OBJC_IVAR___ISOXpcSubscriptionClientRequest_proto;
  v5 = a3;
  v6 = self;
  sub_275AE3564(self + v4, v5, type metadata accessor for SubscriptionClientRequest, qword_281411C70, type metadata accessor for SubscriptionClientRequest);
}

- (ISOXpcSubscriptionClientRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end