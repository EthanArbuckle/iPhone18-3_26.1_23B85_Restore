@interface OFLinearGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (void)dealloc;
- (void)setColors:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setLocations:(id)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation OFLinearGradientView

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFLinearGradientView;
  [(OFUIView *)&v2 dealloc];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if ([a3 isEqualToString:@"startPoint"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"endPoint") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"colors") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"locations"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = OFLinearGradientView;
  return [(OFLinearGradientView *)&v6 _shouldAnimatePropertyWithKey:a3];
}

- (NSArray)locations
{
  v2 = [(OFLinearGradientView *)self gradientLayer];

  return [v2 locations];
}

- (void)setLocations:(id)a3
{
  v4 = [(OFLinearGradientView *)self gradientLayer];

  [v4 setLocations:a3];
}

- (NSArray)colors
{
  v2 = [(OFLinearGradientView *)self gradientLayer];

  return [v2 colors];
}

- (void)setColors:(id)a3
{
  v4 = [(OFLinearGradientView *)self gradientLayer];

  [v4 setColors:a3];
}

- (CGPoint)startPoint
{
  v2 = [(OFLinearGradientView *)self gradientLayer];

  [v2 startPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setStartPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(OFLinearGradientView *)self gradientLayer];

  [v5 setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  v2 = [(OFLinearGradientView *)self gradientLayer];

  [v2 endPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(OFLinearGradientView *)self gradientLayer];

  [v5 setEndPoint:{x, y}];
}

@end