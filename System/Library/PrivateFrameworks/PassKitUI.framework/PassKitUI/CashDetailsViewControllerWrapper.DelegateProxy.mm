@interface CashDetailsViewControllerWrapper.DelegateProxy
- (_TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy)init;
- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token;
@end

@implementation CashDetailsViewControllerWrapper.DelegateProxy

- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy_didRevokeMerchantToken);
  controllerCopy = controller;
  tokenCopy = token;
  selfCopy = self;
  v6(controllerCopy, tokenCopy);
}

- (_TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end