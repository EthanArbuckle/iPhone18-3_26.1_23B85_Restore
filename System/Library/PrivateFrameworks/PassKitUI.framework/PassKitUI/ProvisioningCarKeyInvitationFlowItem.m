@interface ProvisioningCarKeyInvitationFlowItem
- (_TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem)init;
- (void)carKeyInvitationViewController:(id)a3 didEnterActivationCode:(id)a4;
- (void)carKeyInvitationViewControllerDidCancel:(id)a3;
- (void)carKeyInvitationViewControllerDidRequestStart:(id)a3;
@end

@implementation ProvisioningCarKeyInvitationFlowItem

- (_TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carKeyInvitationViewControllerDidRequestStart:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
  if (v3)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v8 = self;
    v6 = v3;
    v7 = [v5 init];
    sub_1BD317B18(v7);
  }
}

- (void)carKeyInvitationViewControllerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
  if (v3)
  {
    v5 = self;
    v4 = v3;
    sub_1BD3188FC();
  }
}

- (void)carKeyInvitationViewController:(id)a3 didEnterActivationCode:(id)a4
{
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
  if (v8)
  {
    v9 = v5;
    v10 = self;
    v11 = v8;
    sub_1BD318C1C(v9, v7);
  }
}

@end