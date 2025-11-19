@interface TPSAppleTVPlusSubscriptionValidation
- (TPSAppleTVPlusSubscriptionValidation)init;
- (TPSAppleTVPlusSubscriptionValidation)initWithTargetContext:(id)a3;
@end

@implementation TPSAppleTVPlusSubscriptionValidation

- (TPSAppleTVPlusSubscriptionValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TPSAppleTVPlusSubscriptionValidation();
  result = [(TPSAppleSubscriptionValidation *)&v3 init];
  *(&result->super.super.super.isa + OBJC_IVAR___TPSAppleSubscriptionValidation_segment) = 4;
  return result;
}

- (TPSAppleTVPlusSubscriptionValidation)initWithTargetContext:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end