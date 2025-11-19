@interface SpriteSheetAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithCoder:(id)a3;
- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SpriteSheetAnimationView

- (void)layoutSubviews
{
  v2 = self;
  sub_20C4A7FC8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SpriteSheetAnimationView *)self bounds:a3.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithCoder:(id)a3
{
  result = sub_20C5A0D1C();
  __break(1u);
  return result;
}

- (_TtC12SeymourMedia24SpriteSheetAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end