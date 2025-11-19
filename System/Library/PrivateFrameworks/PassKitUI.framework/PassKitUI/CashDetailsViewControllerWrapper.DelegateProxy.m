@interface CashDetailsViewControllerWrapper.DelegateProxy
- (_TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy)init;
- (void)merchantTokenDetailViewController:(id)a3 didDeleteMerchantToken:(id)a4;
@end

@implementation CashDetailsViewControllerWrapper.DelegateProxy

- (void)merchantTokenDetailViewController:(id)a3 didDeleteMerchantToken:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy_didRevokeMerchantToken);
  v7 = a3;
  v9 = a4;
  v8 = self;
  v6(v7, v9);
}

- (_TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end