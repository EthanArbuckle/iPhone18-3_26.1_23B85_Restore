@interface SBGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (void)setColors:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setLocations:(id)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation SBGradientView

- (NSArray)colors
{
  v2 = [(SBGradientView *)self layer];
  v3 = [v2 colors];

  return v3;
}

- (void)setColors:(id)a3
{
  v4 = a3;
  v5 = [(SBGradientView *)self layer];
  [v5 setColors:v4];
}

- (NSArray)locations
{
  v2 = [(SBGradientView *)self layer];
  v3 = [v2 locations];

  return v3;
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [(SBGradientView *)self layer];
  [v5 setLocations:v4];
}

- (CGPoint)startPoint
{
  v2 = [(SBGradientView *)self layer];
  [v2 startPoint];
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
  v5 = [(SBGradientView *)self layer];
  [v5 setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  v2 = [(SBGradientView *)self layer];
  [v2 endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SBGradientView *)self layer];
  [v5 setEndPoint:{x, y}];
}

@end