@interface UIView.BackgroundSuppressionController
- (_TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController)init;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(int64_t)a4;
@end

@implementation UIView.BackgroundSuppressionController

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(int64_t)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_numberOfAssertions);
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(&self->super.isa + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_numberOfAssertions) = (v4 - 1);
    v5 = self;
    sub_189025898(v4);
  }
}

- (_TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end