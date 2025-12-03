@interface UIPointerRegionRequest
- (BOOL)_isPencilInitiated;
- (CGPoint)location;
- (id)description;
@end

@implementation UIPointerRegionRequest

- (BOOL)_isPencilInitiated
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPointerInteraction.m" lineNumber:741 description:@"This may only be used in Springboard!"];
  }

  return [(UIPointerRegionRequest *)self _pointerType]== 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(UIPointerRegionRequest *)self location];
  v5 = NSStringFromCGPoint(v9);
  v6 = [v3 stringWithFormat:@"<%@: %p location = %@>", v4, self, v5];;

  return v6;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end