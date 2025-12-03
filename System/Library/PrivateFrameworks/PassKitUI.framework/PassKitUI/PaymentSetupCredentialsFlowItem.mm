@interface PaymentSetupCredentialsFlowItem
- (_TtC9PassKitUI31PaymentSetupCredentialsFlowItem)init;
- (void)credentialsViewController:(id)controller didSelectCredentials:(id)credentials;
- (void)credentialsViewControllerDidSelectManualEntry:(id)entry;
- (void)credentialsViewControllerDidTerminate:(id)terminate;
@end

@implementation PaymentSetupCredentialsFlowItem

- (_TtC9PassKitUI31PaymentSetupCredentialsFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)credentialsViewControllerDidTerminate:(id)terminate
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BCA500, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)credentialsViewControllerDidSelectManualEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1BD9C1638();
}

- (void)credentialsViewController:(id)controller didSelectCredentials:(id)credentials
{
  sub_1BD71D990();
  v5 = sub_1BE052744();
  selfCopy = self;
  sub_1BD9C0B40(v5);
}

@end