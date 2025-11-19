@interface AddAutofillCardView.Coordinator
- (_TtCV9PassKitUI19AddAutofillCardView11Coordinator)init;
- (void)addAutoFillCardCancelled:(id)a3;
- (void)addAutoFillCardFinishedWith:(id)a3 credential:(id)a4 viewController:(id)a5;
@end

@implementation AddAutofillCardView.Coordinator

- (void)addAutoFillCardFinishedWith:(id)a3 credential:(id)a4 viewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1BD8A8B64(v8, v9, v10);
}

- (void)addAutoFillCardCancelled:(id)a3
{
  v4 = a3;
  v6 = self;
  [v4 dismissViewControllerAnimated:1 completion:0];
  v5 = *(&v6->super.isa + OBJC_IVAR____TtCV9PassKitUI19AddAutofillCardView11Coordinator_didComplete);
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