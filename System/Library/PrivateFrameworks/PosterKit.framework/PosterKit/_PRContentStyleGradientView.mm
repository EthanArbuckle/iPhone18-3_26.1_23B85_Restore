@interface _PRContentStyleGradientView
- (_PRContentStyleGradientView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setColors:(id)colors locations:(id)locations type:(id)type;
- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
@end

@implementation _PRContentStyleGradientView

- (_PRContentStyleGradientView)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _PRContentStyleGradientView;
  v3 = [(_PRContentStyleGradientView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_PRContentStyleGradientView *)v3 setClipsToBounds:1];
    layer = [MEMORY[0x1E6979380] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = layer;

    [(CAGradientLayer *)v4->_gradientLayer setStartPoint:0.5, 0.0];
    [(CAGradientLayer *)v4->_gradientLayer setEndPoint:0.5, 1.0];
    v7 = v4->_gradientLayer;
    [(_PRContentStyleGradientView *)v4 bounds];
    [(CAGradientLayer *)v7 setFrame:?];
    layer2 = [(_PRContentStyleGradientView *)v4 layer];
    [layer2 addSublayer:v4->_gradientLayer];

    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v9 setValue:&unk_1F1C6B980 forKey:@"inputRadius"];
    [v9 setName:@"filters.gaussianBlur.inputRadius"];
    v10 = v4->_gradientLayer;
    v14[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(CAGradientLayer *)v10 setFilters:v11];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _PRContentStyleGradientView;
  [(_PRContentStyleGradientView *)&v4 layoutSubviews];
  gradientLayer = self->_gradientLayer;
  [(_PRContentStyleGradientView *)self bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
}

- (void)setColors:(id)colors locations:(id)locations type:(id)type
{
  colorsCopy = colors;
  locationsCopy = locations;
  typeCopy = type;
  if (colorsCopy)
  {
    [(CAGradientLayer *)self->_gradientLayer setColors:colorsCopy];
  }

  if (locationsCopy)
  {
    [(CAGradientLayer *)self->_gradientLayer setLocations:locationsCopy];
  }

  if (typeCopy)
  {
    [(CAGradientLayer *)self->_gradientLayer setType:typeCopy];
  }
}

- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  [(CAGradientLayer *)self->_gradientLayer setStartPoint:point.x, point.y];
  gradientLayer = self->_gradientLayer;

  [(CAGradientLayer *)gradientLayer setEndPoint:x, y];
}

@end