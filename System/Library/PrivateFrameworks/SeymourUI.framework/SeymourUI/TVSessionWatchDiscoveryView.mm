@interface TVSessionWatchDiscoveryView
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI27TVSessionWatchDiscoveryView)initWithFrame:(CGRect)frame;
- (void)didTapStartStandaloneButton;
@end

@implementation TVSessionWatchDiscoveryView

- (void)didTapStartStandaloneButton
{
  v2 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_presenter))[2];
  selfCopy = self;
  if (v2)
  {
    v4 = sub_20B584050(v2);
    v2(v4);
    sub_20B583ECC(v2);
  }

  [(TVSessionWatchDiscoveryView *)self removeFromSuperview];
}

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (_TtC9SeymourUI27TVSessionWatchDiscoveryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end