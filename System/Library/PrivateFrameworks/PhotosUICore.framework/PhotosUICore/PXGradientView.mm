@interface PXGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)locations;
- (void)_updateGradientLayerColors;
- (void)setColors:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setLocations:(id)a3;
- (void)setStartPoint:(CGPoint)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXGradientView

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXGradientView;
  v4 = a3;
  [(PXGradientView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXGradientView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PXGradientView *)self _updateGradientLayerColors];
  }
}

- (void)setEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXGradientView *)self gradientLayer];
  [v5 setEndPoint:{x, y}];
}

- (CGPoint)endPoint
{
  v2 = [(PXGradientView *)self gradientLayer];
  [v2 endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setStartPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXGradientView *)self gradientLayer];
  [v5 setStartPoint:{x, y}];
}

- (CGPoint)startPoint
{
  v2 = [(PXGradientView *)self gradientLayer];
  [v2 startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [(PXGradientView *)self gradientLayer];
  [v5 setLocations:v4];
}

- (NSArray)locations
{
  v2 = [(PXGradientView *)self gradientLayer];
  v3 = [v2 locations];

  return v3;
}

- (void)_updateGradientLayerColors
{
  v3 = [(PXGradientView *)self colors];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PXGradientView__updateGradientLayerColors__block_invoke;
  v7[3] = &unk_1E7745708;
  v8 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:v7];
  v6 = [(PXGradientView *)self gradientLayer];
  [v6 setColors:v5];
}

uint64_t __44__PXGradientView__updateGradientLayerColors__block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 CGColor];
  v6 = *(a1 + 32);

  return [v6 addObject:v5];
}

- (void)setColors:(id)a3
{
  v4 = [a3 copy];
  colors = self->_colors;
  self->_colors = v4;

  [(PXGradientView *)self _updateGradientLayerColors];
}

@end