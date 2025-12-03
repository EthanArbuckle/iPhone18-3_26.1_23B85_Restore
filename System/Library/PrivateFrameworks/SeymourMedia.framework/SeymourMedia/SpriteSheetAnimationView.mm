@interface SpriteSheetAnimationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithCoder:(id)coder;
- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SpriteSheetAnimationView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C4A7FC8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SpriteSheetAnimationView *)self bounds:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithCoder:(id)coder
{
  result = sub_20C5A0D1C();
  __break(1u);
  return result;
}

- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end