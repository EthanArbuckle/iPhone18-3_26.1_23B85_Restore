@interface PlaybackControl
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI15PlaybackControl)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PlaybackControl

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaybackControl();
  v4 = v7.receiver;
  [(PlaybackControl *)&v7 setEnabled:enabledCopy];
  isEnabled = [v4 isEnabled];
  v6 = 0.5;
  if (isEnabled)
  {
    v6 = 1.0;
  }

  [v4 setAlpha_];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_20B83A544(highlighted);
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_width);
  [*(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_transitionView) + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint) constant];
  if (v2 > v3)
  {
    v3 = v2;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9SeymourUI15PlaybackControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end