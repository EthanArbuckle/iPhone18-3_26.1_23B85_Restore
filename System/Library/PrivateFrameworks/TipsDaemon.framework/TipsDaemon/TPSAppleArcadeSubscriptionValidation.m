@interface TPSAppleArcadeSubscriptionValidation
- (TPSAppleArcadeSubscriptionValidation)init;
- (TPSAppleArcadeSubscriptionValidation)initWithTargetContext:(id)a3;
@end

@implementation TPSAppleArcadeSubscriptionValidation

- (TPSAppleArcadeSubscriptionValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleArcadeSubscriptionValidation();
  result = [(TPSAppleSubscriptionValidation *)&v3 init];
  *(&result->super.super.super.isa + OBJC_IVAR___TPSAppleSubscriptionValidation_segment) = 1;
  return result;
}

- (TPSAppleArcadeSubscriptionValidation)initWithTargetContext:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end