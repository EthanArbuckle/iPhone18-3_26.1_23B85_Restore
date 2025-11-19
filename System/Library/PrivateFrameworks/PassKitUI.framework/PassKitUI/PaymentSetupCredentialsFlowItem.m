@interface PaymentSetupCredentialsFlowItem
- (_TtC9PassKitUI31PaymentSetupCredentialsFlowItem)init;
- (void)credentialsViewController:(id)a3 didSelectCredentials:(id)a4;
- (void)credentialsViewControllerDidSelectManualEntry:(id)a3;
- (void)credentialsViewControllerDidTerminate:(id)a3;
@end

@implementation PaymentSetupCredentialsFlowItem

- (_TtC9PassKitUI31PaymentSetupCredentialsFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)credentialsViewControllerDidTerminate:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BCA500, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)credentialsViewControllerDidSelectManualEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD9C1638();
}

- (void)credentialsViewController:(id)a3 didSelectCredentials:(id)a4
{
  sub_1BD71D990();
  v5 = sub_1BE052744();
  v6 = self;
  sub_1BD9C0B40(v5);
}

@end