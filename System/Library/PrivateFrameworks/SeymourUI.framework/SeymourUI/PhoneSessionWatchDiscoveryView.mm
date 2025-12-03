@interface PhoneSessionWatchDiscoveryView
- (_TtC9SeymourUI30PhoneSessionWatchDiscoveryView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didTapStartStandaloneButton:(id)button;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PhoneSessionWatchDiscoveryView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20B5E2E94(change);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_20B5E2FF0(event, x, y);

  return v10;
}

- (void)didTapStartStandaloneButton:(id)button
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  v5 = (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_presenter))[2];
  if (v5)
  {

    v5(v6);
    sub_20B583ECC(v5);
  }

  [(PhoneSessionWatchDiscoveryView *)selfCopy removeFromSuperview];

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC9SeymourUI30PhoneSessionWatchDiscoveryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end