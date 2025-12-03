@interface InstructionsImageView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI21InstructionsImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation InstructionsImageView

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for InstructionsImageView();
  v2 = v10.receiver;
  [(InstructionsImageView *)&v10 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v5, v6, v7, 20.0}];
  cGPath = [v8 CGPath];

  [layer setShadowPath_];
}

- (CGSize)intrinsicContentSize
{
  v2 = 410.0;
  v3 = 231.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9SeymourUI21InstructionsImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end