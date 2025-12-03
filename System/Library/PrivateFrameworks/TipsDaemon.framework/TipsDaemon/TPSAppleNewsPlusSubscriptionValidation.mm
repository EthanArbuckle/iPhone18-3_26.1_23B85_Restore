@interface TPSAppleNewsPlusSubscriptionValidation
- (TPSAppleNewsPlusSubscriptionValidation)init;
- (TPSAppleNewsPlusSubscriptionValidation)initWithTargetContext:(id)context;
@end

@implementation TPSAppleNewsPlusSubscriptionValidation

- (TPSAppleNewsPlusSubscriptionValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TPSAppleNewsPlusSubscriptionValidation();
  result = [(TPSAppleSubscriptionValidation *)&v3 init];
  *(&result->super.super.super.isa + OBJC_IVAR___TPSAppleSubscriptionValidation_segment) = 0;
  return result;
}

- (TPSAppleNewsPlusSubscriptionValidation)initWithTargetContext:(id)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end