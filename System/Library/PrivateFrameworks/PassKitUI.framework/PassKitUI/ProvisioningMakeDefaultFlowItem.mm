@interface ProvisioningMakeDefaultFlowItem
- (_TtC9PassKitUI31ProvisioningMakeDefaultFlowItem)init;
- (void)paymentPassMakeDefaultViewControllerDidFinish:(id)finish;
@end

@implementation ProvisioningMakeDefaultFlowItem

- (_TtC9PassKitUI31ProvisioningMakeDefaultFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentPassMakeDefaultViewControllerDidFinish:(id)finish
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3B94768, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end