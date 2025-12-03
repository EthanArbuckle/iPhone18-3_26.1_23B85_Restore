@interface UIView.AlphaOverrideAssertionSubject
- (_TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject)init;
- (void)_outermostLayerDidChange:(id)change;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(int64_t)type;
@end

@implementation UIView.AlphaOverrideAssertionSubject

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(int64_t)type
{
  selfCopy = self;
  sub_1890179C8(type);
}

- (void)_outermostLayerDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_18901770C(changeCopy);
}

- (_TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end