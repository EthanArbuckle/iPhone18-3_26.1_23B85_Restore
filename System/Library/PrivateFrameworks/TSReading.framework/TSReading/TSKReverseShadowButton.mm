@interface TSKReverseShadowButton
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation TSKReverseShadowButton

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  titleLabel = [(TSKReverseShadowButton *)self titleLabel];
  v6 = -1.0;
  if (!selectedCopy)
  {
    v6 = 1.0;
  }

  [titleLabel setShadowOffset:{0.0, v6}];
  [(TSKReverseShadowButton *)self setNeedsDisplay];
  v7.receiver = self;
  v7.super_class = TSKReverseShadowButton;
  [(TSKReverseShadowButton *)&v7 setSelected:selectedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (highlighted)
  {
    [-[TSKReverseShadowButton titleLabel](self "titleLabel")];
  }

  [(TSKReverseShadowButton *)self setNeedsDisplay];
  v5.receiver = self;
  v5.super_class = TSKReverseShadowButton;
  [(TSKReverseShadowButton *)&v5 setHighlighted:highlightedCopy];
}

@end