@interface PhoneSessionHeartRateDiscoveryView
- (_TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didTapContinueButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PhoneSessionHeartRateDiscoveryView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20B9644C4(a3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_20B964620(a4, x, y);

  return v10;
}

- (void)didTapContinueButton:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  v5 = (*(&v4->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_presenter))[4];
  if (v5)
  {

    v5(v6);
    sub_20B583ECC(v5);
  }

  [(PhoneSessionHeartRateDiscoveryView *)v4 removeFromSuperview];

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end