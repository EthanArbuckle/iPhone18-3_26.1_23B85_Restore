@interface PKFlightShareMessageBubbleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKFlightShareMessageBubbleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
- (void)followTapped;
- (void)layoutSubviews;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setIsFromMe:(BOOL)me;
- (void)updateViewWithProperties:(id)properties;
@end

@implementation PKFlightShareMessageBubbleView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  defaultMetrics = [objc_opt_self() defaultMetrics];
  [defaultMetrics scaledValueForValue_];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updateViewWithProperties:(id)properties
{
  propertiesCopy = properties;
  selfCopy = self;
  FlightShareMessageBubbleView.updateView(properties:)(propertiesCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)setContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = (self + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets);
  swift_beginAccess();
  *v8 = top;
  v8[1] = left;
  v8[2] = bottom;
  v8[3] = right;
  [(PKFlightShareMessageBubbleView *)self setNeedsLayout];
}

- (void)setIsFromMe:(BOOL)me
{
  meCopy = me;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton);
  selfCopy = self;
  [v4 setHidden_];
  [(PKFlightShareMessageBubbleView *)selfCopy setNeedsLayout];
}

- (void)followTapped
{
  selfCopy = self;
  sub_1BD1ED670();
}

- (PKFlightShareMessageBubbleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end