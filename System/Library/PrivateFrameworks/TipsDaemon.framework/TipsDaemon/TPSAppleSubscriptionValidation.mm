@interface TPSAppleSubscriptionValidation
- (TPSAppleSubscriptionValidation)init;
- (TPSAppleSubscriptionValidation)initWithTargetContext:(id)context;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAppleSubscriptionValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_232DDEC50(sub_232DDF68C, v5);
}

- (TPSAppleSubscriptionValidation)initWithTargetContext:(id)context
{
  sub_232E01470();
  v4 = OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements;
  *(&self->super.super.isa + v4) = [objc_opt_self() sharedInstance];
  *(&self->super.super.isa + OBJC_IVAR___TPSAppleSubscriptionValidation_segment) = 1;
  v5 = sub_232E01450();

  v8.receiver = self;
  v8.super_class = type metadata accessor for AppleSubscriptionValidation();
  v6 = [(TPSTargetingValidation *)&v8 initWithTargetContext:v5];

  return v6;
}

- (TPSAppleSubscriptionValidation)init
{
  v3 = OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements;
  *(&self->super.super.isa + v3) = [objc_opt_self() sharedInstance];
  *(&self->super.super.isa + OBJC_IVAR___TPSAppleSubscriptionValidation_segment) = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppleSubscriptionValidation();
  return [(TPSAppleSubscriptionValidation *)&v5 init];
}

@end