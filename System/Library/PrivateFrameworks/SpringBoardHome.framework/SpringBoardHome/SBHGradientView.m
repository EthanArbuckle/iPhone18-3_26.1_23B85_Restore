@interface SBHGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (id)layer;
- (void)setColors:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setLocations:(id)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation SBHGradientView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBHGradientView;
  v2 = [(SBHGradientView *)&v4 layer];

  return v2;
}

- (NSArray)colors
{
  v2 = [(SBHGradientView *)self layer];
  v3 = [v2 colors];
  v4 = [v3 bs_compactMap:&__block_literal_global_37];

  return v4;
}

- (void)setColors:(id)a3
{
  v4 = a3;
  v6 = [(SBHGradientView *)self layer];
  v5 = [v4 bs_compactMap:&__block_literal_global_4_0];

  [v6 setColors:v5];
}

uint64_t __29__SBHGradientView_setColors___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (NSArray)locations
{
  v2 = [(SBHGradientView *)self layer];
  v3 = [v2 locations];

  return v3;
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [(SBHGradientView *)self layer];
  [v5 setLocations:v4];
}

- (CGPoint)startPoint
{
  v2 = [(SBHGradientView *)self layer];
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
  v5 = [(SBHGradientView *)self layer];
  [v5 setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  v2 = [(SBHGradientView *)self layer];
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
  v5 = [(SBHGradientView *)self layer];
  [v5 setEndPoint:{x, y}];
}

@end