@interface PlaybackControl
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI15PlaybackControl)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PlaybackControl

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaybackControl();
  v4 = v7.receiver;
  [(PlaybackControl *)&v7 setEnabled:v3];
  v5 = [v4 isEnabled];
  v6 = 0.5;
  if (v5)
  {
    v6 = 1.0;
  }

  [v4 setAlpha_];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_20B83A544(a3);
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

- (_TtC9SeymourUI15PlaybackControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end