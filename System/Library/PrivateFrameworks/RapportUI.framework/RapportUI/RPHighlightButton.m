@interface RPHighlightButton
- (void)setHighlighted:(BOOL)a3;
@end

@implementation RPHighlightButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = RPHighlightButton;
  [(RPHighlightButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (v3)
  {
    v5 = 0.5;
  }

  [(RPHighlightButton *)self setAlpha:v5];
}

@end