@interface RecencyIconView
- (CGSize)intrinsicContentSize;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (_TtC9SeymourUI15RecencyIconView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation RecencyIconView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  firstBaselineAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label) firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  lastBaselineAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label) lastBaselineAnchor];

  return lastBaselineAnchor;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label);
  selfCopy = self;
  [v2 intrinsicContentSize];
  v5 = *(&selfCopy->super._cachedTraitCollection + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout);
  v6 = v4 + *(&selfCopy->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout) + *(&selfCopy->super._swiftAnimationInfo + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout);
  v8 = v7 + *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layout);

  v9 = v8 + v5;
  v10 = v6;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B7220C8();
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_20B72224C();
}

- (_TtC9SeymourUI15RecencyIconView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end