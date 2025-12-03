@interface DeviceBadgeView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI15DeviceBadgeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DeviceBadgeView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C088740();
}

- (CGSize)intrinsicContentSize
{
  v2 = 40.0;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize))
  {
    v2 = 92.0;
  }

  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9SeymourUI15DeviceBadgeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end