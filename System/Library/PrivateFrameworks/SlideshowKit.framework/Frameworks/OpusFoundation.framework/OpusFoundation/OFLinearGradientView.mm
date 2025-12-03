@interface OFLinearGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (void)dealloc;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation OFLinearGradientView

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFLinearGradientView;
  [(OFUIView *)&v2 dealloc];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if ([key isEqualToString:@"startPoint"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"endPoint") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"colors") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"locations"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = OFLinearGradientView;
  return [(OFLinearGradientView *)&v6 _shouldAnimatePropertyWithKey:key];
}

- (NSArray)locations
{
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  return [gradientLayer locations];
}

- (void)setLocations:(id)locations
{
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  [gradientLayer setLocations:locations];
}

- (NSArray)colors
{
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  return [gradientLayer colors];
}

- (void)setColors:(id)colors
{
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  [gradientLayer setColors:colors];
}

- (CGPoint)startPoint
{
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  [gradientLayer startPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  [gradientLayer setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  [gradientLayer endPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(OFLinearGradientView *)self gradientLayer];

  [gradientLayer setEndPoint:{x, y}];
}

@end