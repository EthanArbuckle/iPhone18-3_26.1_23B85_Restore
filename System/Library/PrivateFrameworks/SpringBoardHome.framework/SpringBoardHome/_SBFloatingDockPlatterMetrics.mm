@interface _SBFloatingDockPlatterMetrics
- (CGRect)bounds;
- (_SBFloatingDockPlatterMetrics)initWithBounds:(CGRect)bounds continuousCornerRadius:(double)radius shadowRadius:(double)shadowRadius shadowYOffset:(double)offset;
@end

@implementation _SBFloatingDockPlatterMetrics

- (_SBFloatingDockPlatterMetrics)initWithBounds:(CGRect)bounds continuousCornerRadius:(double)radius shadowRadius:(double)shadowRadius shadowYOffset:(double)offset
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14.receiver = self;
  v14.super_class = _SBFloatingDockPlatterMetrics;
  result = [(_SBFloatingDockPlatterMetrics *)&v14 init];
  if (result)
  {
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
    result->_continuousCornerRadius = radius;
    result->_shadowRadius = shadowRadius;
    result->_shadowYOffset = offset;
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