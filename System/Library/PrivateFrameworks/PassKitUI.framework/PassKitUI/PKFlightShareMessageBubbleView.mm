@interface PKFlightShareMessageBubbleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKFlightShareMessageBubbleView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (void)followTapped;
- (void)layoutSubviews;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setIsFromMe:(BOOL)a3;
- (void)updateViewWithProperties:(id)a3;
@end

@implementation PKFlightShareMessageBubbleView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [objc_opt_self() defaultMetrics];
  [v4 scaledValueForValue_];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updateViewWithProperties:(id)a3
{
  v4 = a3;
  v5 = self;
  FlightShareMessageBubbleView.updateView(properties:)(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  FlightShareMessageBubbleView.layoutSubviews()();
}

- (UIEdgeInsets)contentInsets
{
  v2 = (self + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = (self + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets);
  swift_beginAccess();
  *v8 = top;
  v8[1] = left;
  v8[2] = bottom;
  v8[3] = right;
  [(PKFlightShareMessageBubbleView *)self setNeedsLayout];
}

- (void)setIsFromMe:(BOOL)a3
{
  v3 = a3;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton);
  v5 = self;
  [v4 setHidden_];
  [(PKFlightShareMessageBubbleView *)v5 setNeedsLayout];
}

- (void)followTapped
{
  v2 = self;
  sub_1BD1ED670();
}

- (PKFlightShareMessageBubbleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end