@interface ProvisioningHeroFlowItem
- (_TtC9PassKitUI24ProvisioningHeroFlowItem)init;
- (void)heroViewControllerDidSelectContinue:(id)a3 didSelectMethod:(id)a4;
- (void)heroViewControllerDidSelectSetupLater:(id)a3;
@end

@implementation ProvisioningHeroFlowItem

- (_TtC9PassKitUI24ProvisioningHeroFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)heroViewControllerDidSelectContinue:(id)a3 didSelectMethod:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a4;
  v11[4] = sub_1BD467EB4;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BD126964;
  v11[3] = &block_descriptor_22_2;
  v7 = _Block_copy(v11);
  v8 = a4;
  v9 = self;
  v10 = v8;

  PKRequestContactAccessWithCompletion();

  _Block_release(v7);
}

- (void)heroViewControllerDidSelectSetupLater:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD467E04();
}

@end