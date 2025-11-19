@interface ProvisioningExpressPassSelectionFlowItem
- (_TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem)init;
- (void)viewController:(id)a3 didFinishWithPasses:(id)a4 error:(id)a5;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation ProvisioningExpressPassSelectionFlowItem

- (_TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BC5FC0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)viewController:(id)a3 didFinishWithPasses:(id)a4 error:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD456C0);
    v6 = sub_1BE052744();
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_1BD91C894(v6);
}

@end