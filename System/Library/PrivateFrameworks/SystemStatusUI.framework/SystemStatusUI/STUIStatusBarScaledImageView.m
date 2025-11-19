@interface STUIStatusBarScaledImageView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarScaledImageView)initWithFrame:(CGRect)a3;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation STUIStatusBarScaledImageView

- (STUIStatusBarScaledImageView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarScaledImageView;
  result = [(STUIStatusBarImageView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result->_pointSize = 1.0;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = STUIStatusBarScaledImageView;
  [(STUIStatusBarImageView *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(STUIStatusBarScaledImageView *)self image];
  if ([v7 isFromStatusBarImageProvider])
  {
  }

  else
  {
    v8 = [(STUIStatusBarScaledImageView *)self image];
    v9 = [v8 _isSymbolImage];

    if ((v9 & 1) == 0)
    {
      v10 = 1.0;
      if (v6 > 0.0)
      {
        v10 = self->_pointSize / v6;
      }

      v4 = v4 * v10;
      v6 = v6 * v10;
    }
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)applyStyleAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarScaledImageView;
  v4 = a3;
  [(STUIStatusBarImageView *)&v6 applyStyleAttributes:v4];
  v5 = [v4 fontForStyle:{-[STUIStatusBarImageView fontStyle](self, "fontStyle", v6.receiver, v6.super_class)}];

  [v5 pointSize];
  [(STUIStatusBarScaledImageView *)self setPointSize:?];
}

@end