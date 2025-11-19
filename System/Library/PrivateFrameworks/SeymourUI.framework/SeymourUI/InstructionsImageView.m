@interface InstructionsImageView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI21InstructionsImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation InstructionsImageView

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for InstructionsImageView();
  v2 = v10.receiver;
  [(InstructionsImageView *)&v10 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v5, v6, v7, 20.0}];
  v9 = [v8 CGPath];

  [v3 setShadowPath_];
}

- (CGSize)intrinsicContentSize
{
  v2 = 410.0;
  v3 = 231.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9SeymourUI21InstructionsImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end