@interface UIView.AlphaOverrideAssertionSubject
- (_TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject)init;
- (void)_outermostLayerDidChange:(id)a3;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(int64_t)a4;
@end

@implementation UIView.AlphaOverrideAssertionSubject

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(int64_t)a4
{
  v5 = self;
  sub_1890179C8(a4);
}

- (void)_outermostLayerDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18901770C(v4);
}

- (_TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end