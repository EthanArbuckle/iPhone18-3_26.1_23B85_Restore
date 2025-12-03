@interface RPHighlightButton
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation RPHighlightButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = RPHighlightButton;
  [(RPHighlightButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    v5 = 0.5;
  }

  [(RPHighlightButton *)self setAlpha:v5];
}

@end