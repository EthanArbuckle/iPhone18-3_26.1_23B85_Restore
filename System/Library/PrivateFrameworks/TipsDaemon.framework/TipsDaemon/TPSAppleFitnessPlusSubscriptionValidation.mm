@interface TPSAppleFitnessPlusSubscriptionValidation
- (TPSAppleFitnessPlusSubscriptionValidation)init;
- (TPSAppleFitnessPlusSubscriptionValidation)initWithTargetContext:(id)a3;
@end

@implementation TPSAppleFitnessPlusSubscriptionValidation

- (TPSAppleFitnessPlusSubscriptionValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleFitnessPlusSubscriptionValidation();
  result = [(TPSAppleSubscriptionValidation *)&v3 init];
  *(&result->super.super.super.isa + OBJC_IVAR___TPSAppleSubscriptionValidation_segment) = 2;
  return result;
}

- (TPSAppleFitnessPlusSubscriptionValidation)initWithTargetContext:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end