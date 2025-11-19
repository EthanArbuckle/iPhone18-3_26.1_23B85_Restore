@interface PaymentSetupIdentityFlowItem
- (_TtC9PassKitUI28PaymentSetupIdentityFlowItem)init;
- (void)proofingFlowManager:(id)a3 completedProofingWithError:(id)a4;
- (void)proofingFlowManager:(id)a3 didChangeActiveConfigurations:(id)a4;
@end

@implementation PaymentSetupIdentityFlowItem

- (_TtC9PassKitUI28PaymentSetupIdentityFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proofingFlowManager:(id)a3 completedProofingWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1BD966040(a4);
}

- (void)proofingFlowManager:(id)a3 didChangeActiveConfigurations:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD59BE8);
    v4 = sub_1BE052744();
  }

  v7 = a3;
  v8 = self;
  sub_1BD966294(v4);
}

@end