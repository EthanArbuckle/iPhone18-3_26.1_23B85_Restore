@interface _SBFloatingDockPlatterMetrics
- (CGRect)bounds;
- (_SBFloatingDockPlatterMetrics)initWithBounds:(CGRect)a3 continuousCornerRadius:(double)a4 shadowRadius:(double)a5 shadowYOffset:(double)a6;
@end

@implementation _SBFloatingDockPlatterMetrics

- (_SBFloatingDockPlatterMetrics)initWithBounds:(CGRect)a3 continuousCornerRadius:(double)a4 shadowRadius:(double)a5 shadowYOffset:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = _SBFloatingDockPlatterMetrics;
  result = [(_SBFloatingDockPlatterMetrics *)&v14 init];
  if (result)
  {
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
    result->_continuousCornerRadius = a4;
    result->_shadowRadius = a5;
    result->_shadowYOffset = a6;
    result->_bounds.origin.x = x;
  }

  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end