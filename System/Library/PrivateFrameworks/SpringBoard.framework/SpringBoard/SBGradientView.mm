@interface SBGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation SBGradientView

- (NSArray)colors
{
  layer = [(SBGradientView *)self layer];
  colors = [layer colors];

  return colors;
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  layer = [(SBGradientView *)self layer];
  [layer setColors:colorsCopy];
}

- (NSArray)locations
{
  layer = [(SBGradientView *)self layer];
  locations = [layer locations];

  return locations;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  layer = [(SBGradientView *)self layer];
  [layer setLocations:locationsCopy];
}

- (CGPoint)startPoint
{
  layer = [(SBGradientView *)self layer];
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
  layer = [(SBGradientView *)self layer];
  [layer setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  layer = [(SBGradientView *)self layer];
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
  layer = [(SBGradientView *)self layer];
  [layer setEndPoint:{x, y}];
}

@end