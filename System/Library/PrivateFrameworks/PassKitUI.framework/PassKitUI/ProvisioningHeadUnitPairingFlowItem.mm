@interface ProvisioningHeadUnitPairingFlowItem
- (_TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem)init;
- (void)headUnitPairingPrompt:(id)prompt didFinishWithResult:(BOOL)result;
@end

@implementation ProvisioningHeadUnitPairingFlowItem

- (_TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)headUnitPairingPrompt:(id)prompt didFinishWithResult:(BOOL)result
{
  v5 = self + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3B9C550, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end