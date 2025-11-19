@interface ProvisioningDeviceFullFlowItem
- (_TtC9PassKitUI30ProvisioningDeviceFullFlowItem)init;
- (void)selectPassesViewController:(id)a3 didSelectPasses:(id)a4 completion:(id)a5;
- (void)selectPassesViewControllerDidTapBackButton:(id)a3;
@end

@implementation ProvisioningDeviceFullFlowItem

- (_TtC9PassKitUI30ProvisioningDeviceFullFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)selectPassesViewController:(id)a3 didSelectPasses:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD456C0);
    a4 = sub_1BE052744();
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1BD166E88;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_1BD89215C(a4, v8, v9);
  sub_1BD0D4744(v8);
}

- (void)selectPassesViewControllerDidTapBackButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD8925C0();
}

@end