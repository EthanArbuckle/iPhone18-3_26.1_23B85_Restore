@interface ProvisioningReaderModeReadCardFlowItem
- (_TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem)init;
- (id)provisionedPass;
- (void)provisionWithFieldModel:(id)model paymentCredential:(id)credential;
- (void)viewControllerDidCancel:(id)cancel;
- (void)viewControllerDidComplete:(id)complete;
- (void)viewControllerDidFailIngestion:(id)ingestion;
@end

@implementation ProvisioningReaderModeReadCardFlowItem

- (_TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)provisionWithFieldModel:(id)model paymentCredential:(id)credential
{
  modelCopy = model;
  credentialCopy = credential;
  selfCopy = self;
  sub_1BD881DD4(modelCopy, credentialCopy);
}

- (void)viewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1BD882248();
}

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  sub_1BD8822D8();
}

- (void)viewControllerDidFailIngestion:(id)ingestion
{
  ingestionCopy = ingestion;
  selfCopy = self;
  sub_1BD882488();
}

- (id)provisionedPass
{
  selfCopy = self;
  v3 = sub_1BD882194();

  return v3;
}

@end