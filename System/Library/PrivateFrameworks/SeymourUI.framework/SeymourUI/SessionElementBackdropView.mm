@interface SessionElementBackdropView
- (_TtC9SeymourUI26SessionElementBackdropView)initWithCoder:(id)coder;
- (_TtC9SeymourUI26SessionElementBackdropView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SessionElementBackdropView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SessionElementBackdropView();
  v2 = v6.receiver;
  [(SessionElementBackdropView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView;
  layer = [*&v2[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView] layer];
  [*&v2[v3] bounds];
  v5 = CGRectGetHeight(v7) * 0.5;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_cornerRadius] < v5)
  {
    v5 = *&v2[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_cornerRadius];
  }

  [layer setCornerRadius_];
}

- (_TtC9SeymourUI26SessionElementBackdropView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_guideConstraints) = MEMORY[0x277D84F90];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI26SessionElementBackdropView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end