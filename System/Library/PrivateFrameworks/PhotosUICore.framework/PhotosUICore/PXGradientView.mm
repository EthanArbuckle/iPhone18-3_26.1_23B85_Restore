@interface PXGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)locations;
- (void)_updateGradientLayerColors;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXGradientView

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXGradientView;
  changeCopy = change;
  [(PXGradientView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXGradientView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXGradientView *)self _updateGradientLayerColors];
  }
}

- (void)setEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(PXGradientView *)self gradientLayer];
  [gradientLayer setEndPoint:{x, y}];
}

- (CGPoint)endPoint
{
  gradientLayer = [(PXGradientView *)self gradientLayer];
  [gradientLayer endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(PXGradientView *)self gradientLayer];
  [gradientLayer setStartPoint:{x, y}];
}

- (CGPoint)startPoint
{
  gradientLayer = [(PXGradientView *)self gradientLayer];
  [gradientLayer startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  gradientLayer = [(PXGradientView *)self gradientLayer];
  [gradientLayer setLocations:locationsCopy];
}

- (NSArray)locations
{
  gradientLayer = [(PXGradientView *)self gradientLayer];
  locations = [gradientLayer locations];

  return locations;
}

- (void)_updateGradientLayerColors
{
  colors = [(PXGradientView *)self colors];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(colors, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PXGradientView__updateGradientLayerColors__block_invoke;
  v7[3] = &unk_1E7745708;
  v8 = v4;
  v5 = v4;
  [colors enumerateObjectsUsingBlock:v7];
  gradientLayer = [(PXGradientView *)self gradientLayer];
  [gradientLayer setColors:v5];
}

uint64_t __44__PXGradientView__updateGradientLayerColors__block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 CGColor];
  v6 = *(a1 + 32);

  return [v6 addObject:v5];
}

- (void)setColors:(id)colors
{
  v4 = [colors copy];
  colors = self->_colors;
  self->_colors = v4;

  [(PXGradientView *)self _updateGradientLayerColors];
}

@end