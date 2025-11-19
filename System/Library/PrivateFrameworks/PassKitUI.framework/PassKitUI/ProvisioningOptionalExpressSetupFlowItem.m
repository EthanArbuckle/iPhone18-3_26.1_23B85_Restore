@interface ProvisioningOptionalExpressSetupFlowItem
- (_TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem)init;
- (void)optionalExpressModeViewControllerDidFinish:(id)a3;
@end

@implementation ProvisioningOptionalExpressSetupFlowItem

- (_TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)optionalExpressModeViewControllerDidFinish:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BBF9F0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end