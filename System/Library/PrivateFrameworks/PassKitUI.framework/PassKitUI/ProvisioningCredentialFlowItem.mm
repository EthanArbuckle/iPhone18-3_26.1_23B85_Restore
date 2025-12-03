@interface ProvisioningCredentialFlowItem
- (_TtC9PassKitUI30ProvisioningCredentialFlowItem)init;
- (void)provisioningViewController:(id)controller didFinishWithSuccess:(BOOL)success;
- (void)provisioningViewControllerDidSelectManualEntry:(id)entry;
@end

@implementation ProvisioningCredentialFlowItem

- (_TtC9PassKitUI30ProvisioningCredentialFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)provisioningViewController:(id)controller didFinishWithSuccess:(BOOL)success
{
  v5 = self + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BC6990, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)provisioningViewControllerDidSelectManualEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1BD949D28();
}

@end