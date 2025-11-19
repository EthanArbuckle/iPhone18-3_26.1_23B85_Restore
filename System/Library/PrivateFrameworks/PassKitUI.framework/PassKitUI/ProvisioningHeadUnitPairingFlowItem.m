@interface ProvisioningHeadUnitPairingFlowItem
- (_TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem)init;
- (void)headUnitPairingPrompt:(id)a3 didFinishWithResult:(BOOL)a4;
@end

@implementation ProvisioningHeadUnitPairingFlowItem

- (_TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)headUnitPairingPrompt:(id)a3 didFinishWithResult:(BOOL)a4
{
  v5 = self + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = self;
    sub_1BD8659A4(v8, &off_1F3B9C550, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end