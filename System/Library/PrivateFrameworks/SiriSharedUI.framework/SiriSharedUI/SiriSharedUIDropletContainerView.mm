@interface SiriSharedUIDropletContainerView
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (_TtC12SiriSharedUI32SiriSharedUIDropletContainerView)initWithFrame:(CGRect)frame;
- (double)alpha;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAlpha:(double)alpha;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setContentView:(id)view;
- (void)setFrame:(CGRect)frame;
- (void)setSuggestionFocused:(BOOL)focused;
- (void)setTransform:(CGAffineTransform *)transform;
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

- (void)setContentView:(id)view
{
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_21E4D442C(v6);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriSharedUIDropletContainerView();
  [(SiriSharedUIDropletContainerView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)alpha
{
  selfCopy = self;
  sub_21E4D6DC4(alpha);
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  selfCopy = self;
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

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v3;
  v5[2] = *&transform->tx;
  selfCopy = self;
  sub_21E4D7488(v5);
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_21E4D75B8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21E4D76B8();
}

- (void)setSuggestionFocused:(BOOL)focused
{
  selfCopy = self;
  sub_21E4D9210(focused);
}

- (_TtC12SiriSharedUI32SiriSharedUIDropletContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end