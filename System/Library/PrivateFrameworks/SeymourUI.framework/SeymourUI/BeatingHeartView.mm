@interface BeatingHeartView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation BeatingHeartView

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI16BeatingHeartView_imageView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(BeatingHeartView *)self sizeThatFits:0.0, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BeatingHeartView();
  v2 = v5.receiver;
  [(BeatingHeartView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI16BeatingHeartView_imageView;
  [*&v2[OBJC_IVAR____TtC9SeymourUI16BeatingHeartView_imageView] sizeToFit];
  v4 = *&v2[v3];
  [v4 bounds];
  [v4 setFrame_];
}

@end