@interface ProvisioningPushProvAddPassFlowItem
- (_TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem)init;
- (void)cancel;
- (void)continueProvisioning;
- (void)pushableViewController:(id)a3 didFailWithError:(id)a4;
- (void)startProvisioningWithConfiguration:(id)a3;
- (void)startProvisioningWithCredentials:(id)a3;
@end

@implementation ProvisioningPushProvAddPassFlowItem

- (_TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)startProvisioningWithConfiguration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BD898DBC(a3);
  swift_unknownObjectRelease();
}

- (void)startProvisioningWithCredentials:(id)a3
{
  sub_1BD0E5E8C(0, &unk_1EBD56E00);
  v4 = sub_1BE052744();
  v5 = self;
  sub_1BD89945C(v4);
}

- (void)continueProvisioning
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
  if (v2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v7 = self;
    v5 = v2;
    v6 = [v4 init];
    sub_1BD8145A8(v6);
  }
}

- (void)cancel
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
  if (v2)
  {
    v4 = self;
    v3 = v2;
    sub_1BD81521C();
  }
}

- (void)pushableViewController:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = a4;
  sub_1BD89A4B8(a4);
  swift_unknownObjectRelease();
}

@end