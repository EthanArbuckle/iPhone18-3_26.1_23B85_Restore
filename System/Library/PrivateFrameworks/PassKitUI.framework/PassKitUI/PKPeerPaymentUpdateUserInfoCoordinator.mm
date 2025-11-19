@interface PKPeerPaymentUpdateUserInfoCoordinator
- (PKPeerPaymentUpdateUserInfoCoordinator)init;
- (void)addressSearcherViewController:(id)a3 requestsNextViewControllerWithCompletion:(id)a4;
- (void)addressSearcherViewController:(id)a3 selectedContact:(id)a4;
- (void)presentUpdateUserInfoFlowFromPresentingViewController:(id)a3 completion:(id)a4;
@end

@implementation PKPeerPaymentUpdateUserInfoCoordinator

- (void)presentUpdateUserInfoFlowFromPresentingViewController:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1BD988D1C;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1BD0D44B8(v6);
  v9 = a3;
  sub_1BD987FC0(v8, v8, v6, v7, v9);
  sub_1BD0D4744(v6);

  sub_1BD0D4744(v6);
}

- (void)addressSearcherViewController:(id)a3 selectedContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD988A2C(v7);
}

- (void)addressSearcherViewController:(id)a3 requestsNextViewControllerWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1BD988BD8(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (PKPeerPaymentUpdateUserInfoCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end