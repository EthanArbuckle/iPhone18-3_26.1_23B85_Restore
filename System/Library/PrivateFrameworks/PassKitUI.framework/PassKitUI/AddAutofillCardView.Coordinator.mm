@interface AddAutofillCardView.Coordinator
- (_TtCV9PassKitUI19AddAutofillCardView11Coordinator)init;
- (void)addAutoFillCardCancelled:(id)cancelled;
- (void)addAutoFillCardFinishedWith:(id)with credential:(id)credential viewController:(id)controller;
@end

@implementation AddAutofillCardView.Coordinator

- (void)addAutoFillCardFinishedWith:(id)with credential:(id)credential viewController:(id)controller
{
  withCopy = with;
  credentialCopy = credential;
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD8A8B64(withCopy, credentialCopy, controllerCopy);
}

- (void)addAutoFillCardCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  [cancelledCopy dismissViewControllerAnimated:1 completion:0];
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_didComplete);
  sub_1BE048964();
  v5(0);
}

- (_TtCV9PassKitUI19AddAutofillCardView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end