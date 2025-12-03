@interface PaymentOfferSetupAuthenticationModel
- (_TtC9PassKitUI36PaymentOfferSetupAuthenticationModel)init;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)didBecomeActiveNotification;
- (void)willEnterForegroundNotification;
- (void)willResignActiveNotification;
@end

@implementation PaymentOfferSetupAuthenticationModel

- (_TtC9PassKitUI36PaymentOfferSetupAuthenticationModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willEnterForegroundNotification
{
  selfCopy = self;
  sub_1BD5FCEEC(sub_1BD5FDE14, &block_descriptor_13_4);
}

- (void)didBecomeActiveNotification
{
  selfCopy = self;
  sub_1BD5FCEEC(sub_1BD5FD774, &block_descriptor_139);
}

- (void)willResignActiveNotification
{
  selfCopy = self;
  sub_1BD5FB5E4();
  if (PKRunningInViewService())
  {
    *(&selfCopy->super.isa + OBJC_IVAR____TtC9PassKitUI36PaymentOfferSetupAuthenticationModel_didStartAuthenticationSession) = 0;
  }
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) init];

  return v3;
}

@end