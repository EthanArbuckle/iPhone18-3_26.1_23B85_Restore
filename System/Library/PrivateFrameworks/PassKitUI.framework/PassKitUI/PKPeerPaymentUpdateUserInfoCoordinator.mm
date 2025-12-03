@interface PKPeerPaymentUpdateUserInfoCoordinator
- (PKPeerPaymentUpdateUserInfoCoordinator)init;
- (void)addressSearcherViewController:(id)controller requestsNextViewControllerWithCompletion:(id)completion;
- (void)addressSearcherViewController:(id)controller selectedContact:(id)contact;
- (void)presentUpdateUserInfoFlowFromPresentingViewController:(id)controller completion:(id)completion;
@end

@implementation PKPeerPaymentUpdateUserInfoCoordinator

- (void)presentUpdateUserInfoFlowFromPresentingViewController:(id)controller completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1BD0D44B8(v6);
  controllerCopy = controller;
  sub_1BD987FC0(selfCopy, selfCopy, v6, v7, controllerCopy);
  sub_1BD0D4744(v6);

  sub_1BD0D4744(v6);
}

- (void)addressSearcherViewController:(id)controller selectedContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  sub_1BD988A2C(contactCopy);
}

- (void)addressSearcherViewController:(id)controller requestsNextViewControllerWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD988BD8(selfCopy, v6);
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