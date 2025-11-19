@interface ProvisioningReaderModeReadCardFlowItem
- (_TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem)init;
- (id)provisionedPass;
- (void)provisionWithFieldModel:(id)a3 paymentCredential:(id)a4;
- (void)viewControllerDidCancel:(id)a3;
- (void)viewControllerDidComplete:(id)a3;
- (void)viewControllerDidFailIngestion:(id)a3;
@end

@implementation ProvisioningReaderModeReadCardFlowItem

- (_TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)provisionWithFieldModel:(id)a3 paymentCredential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD881DD4(v6, v7);
}

- (void)viewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD882248();
}

- (void)viewControllerDidComplete:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD8822D8();
}

- (void)viewControllerDidFailIngestion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD882488();
}

- (id)provisionedPass
{
  v2 = self;
  v3 = sub_1BD882194();

  return v3;
}

@end