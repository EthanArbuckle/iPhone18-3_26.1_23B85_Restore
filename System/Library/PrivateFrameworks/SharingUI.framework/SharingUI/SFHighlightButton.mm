@interface SFHighlightButton
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFHighlightButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = SFHighlightButton;
  [(SFHighlightButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    v5 = 0.5;
  }

  [(SFHighlightButton *)self setAlpha:v5];
}

@end