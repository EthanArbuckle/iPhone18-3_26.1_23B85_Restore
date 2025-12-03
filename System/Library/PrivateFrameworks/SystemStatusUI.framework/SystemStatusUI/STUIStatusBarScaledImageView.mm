@interface STUIStatusBarScaledImageView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarScaledImageView)initWithFrame:(CGRect)frame;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation STUIStatusBarScaledImageView

- (STUIStatusBarScaledImageView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarScaledImageView;
  result = [(STUIStatusBarImageView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  image = [(STUIStatusBarScaledImageView *)self image];
  if ([image isFromStatusBarImageProvider])
  {
  }

  else
  {
    image2 = [(STUIStatusBarScaledImageView *)self image];
    _isSymbolImage = [image2 _isSymbolImage];

    if ((_isSymbolImage & 1) == 0)
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

- (void)applyStyleAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarScaledImageView;
  attributesCopy = attributes;
  [(STUIStatusBarImageView *)&v6 applyStyleAttributes:attributesCopy];
  v5 = [attributesCopy fontForStyle:{-[STUIStatusBarImageView fontStyle](self, "fontStyle", v6.receiver, v6.super_class)}];

  [v5 pointSize];
  [(STUIStatusBarScaledImageView *)self setPointSize:?];
}

@end