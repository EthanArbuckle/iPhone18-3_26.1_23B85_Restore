@interface ProvisioningAMPEnrollmentFlowItem
- (_TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem)init;
- (void)ampEnrollmentViewControllerDidFinish:(id)a3;
@end

@implementation ProvisioningAMPEnrollmentFlowItem

- (_TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)ampEnrollmentViewControllerDidFinish:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI33ProvisioningAMPEnrollmentFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BC6DE0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end