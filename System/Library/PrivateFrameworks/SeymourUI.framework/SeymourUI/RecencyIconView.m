@interface RecencyIconView
- (CGSize)intrinsicContentSize;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (_TtC9SeymourUI15RecencyIconView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation RecencyIconView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label) firstBaselineAnchor];

  return v2;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label) lastBaselineAnchor];

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label);
  v3 = self;
  [v2 intrinsicContentSize];
  v5 = *(&v3->super._cachedTraitCollection + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout);
  v6 = v4 + *(&v3->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout) + *(&v3->super._swiftAnimationInfo + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout);
  v8 = v7 + *(&v3->super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout);

  v9 = v8 + v5;
  v10 = v6;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B7220C8();
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_20B72224C();
}

- (_TtC9SeymourUI15RecencyIconView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end