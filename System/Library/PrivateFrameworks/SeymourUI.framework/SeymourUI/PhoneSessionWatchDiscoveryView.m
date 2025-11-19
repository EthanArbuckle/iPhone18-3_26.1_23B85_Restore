@interface PhoneSessionWatchDiscoveryView
- (_TtC9SeymourUI30PhoneSessionWatchDiscoveryView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didTapStartStandaloneButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PhoneSessionWatchDiscoveryView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20B5E2E94(a3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_20B5E2FF0(a4, x, y);

  return v10;
}

- (void)didTapStartStandaloneButton:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  v5 = (*(&v4->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_presenter))[2];
  if (v5)
  {

    v5(v6);
    sub_20B583ECC(v5);
  }

  [(PhoneSessionWatchDiscoveryView *)v4 removeFromSuperview];

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC9SeymourUI30PhoneSessionWatchDiscoveryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end