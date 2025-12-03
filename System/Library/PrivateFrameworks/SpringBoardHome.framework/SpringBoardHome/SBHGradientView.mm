@interface SBHGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (id)layer;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation SBHGradientView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBHGradientView;
  layer = [(SBHGradientView *)&v4 layer];

  return layer;
}

- (NSArray)colors
{
  layer = [(SBHGradientView *)self layer];
  colors = [layer colors];
  v4 = [colors bs_compactMap:&__block_literal_global_37];

  return v4;
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  layer = [(SBHGradientView *)self layer];
  v5 = [colorsCopy bs_compactMap:&__block_literal_global_4_0];

  [layer setColors:v5];
}

uint64_t __29__SBHGradientView_setColors___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (NSArray)locations
{
  layer = [(SBHGradientView *)self layer];
  locations = [layer locations];

  return locations;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  layer = [(SBHGradientView *)self layer];
  [layer setLocations:locationsCopy];
}

- (CGPoint)startPoint
{
  layer = [(SBHGradientView *)self layer];
  [layer startPoint];
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
  layer = [(SBHGradientView *)self layer];
  [layer setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  layer = [(SBHGradientView *)self layer];
  [layer endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(SBHGradientView *)self layer];
  [layer setEndPoint:{x, y}];
}

@end