@interface SiriSharedUIDropletContainerView
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (_TtC12SiriSharedUI32SiriSharedUIDropletContainerView)initWithFrame:(CGRect)a3;
- (double)alpha;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAlpha:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setContentView:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSuggestionFocused:(BOOL)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation SiriSharedUIDropletContainerView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
  if (v2)
  {
    [v2 intrinsicContentSize];
  }

  else
  {
    v3 = *MEMORY[0x277D77260];
    v4 = *MEMORY[0x277D77260];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContentView:(id)a3
{
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView) = a3;
  v4 = a3;
  v5 = self;
  sub_21E4D442C(v6);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  [(SiriSharedUIDropletContainerView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  v4 = self;
  sub_21E4D6DC4(a3);
}

- (CGRect)frame
{
  sub_21E4D7060(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  v7 = v12.receiver;
  [(SiriSharedUIDropletContainerView *)&v12 setFrame:x, y, width, height];
  [v7 frame];
  sub_21E4D6F28(v8, v9, v10, v11);
}

- (CGRect)bounds
{
  sub_21E4D7060(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  v7 = v8.receiver;
  [(SiriSharedUIDropletContainerView *)&v8 setBounds:x, y, width, height];
  sub_21E4D7130();
}

- (CGPoint)center
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  [(SiriSharedUIDropletContainerView *)&v4 center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_21E4D72EC(x, y);
}

- (CGAffineTransform)transform
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  result = [(CGAffineTransform *)&v10 transform];
  v5 = v8;
  v6 = v9;
  *&retstr->a = v7;
  *&retstr->c = v5;
  *&retstr->tx = v6;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v3;
  v5[2] = *&a3->tx;
  v4 = self;
  sub_21E4D7488(v5);
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_21E4D75B8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21E4D76B8();
}

- (void)setSuggestionFocused:(BOOL)a3
{
  v4 = self;
  sub_21E4D9210(a3);
}

- (_TtC12SiriSharedUI32SiriSharedUIDropletContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end