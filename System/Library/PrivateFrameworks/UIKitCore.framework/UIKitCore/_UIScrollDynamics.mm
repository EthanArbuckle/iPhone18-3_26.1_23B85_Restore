@interface _UIScrollDynamics
- (CGPoint)contentOrigin;
- (CGPoint)decelerationTarget;
- (CGPoint)initialContentOffset;
- (CGPoint)positionAfterDuration:(double)duration;
- (CGRect)contentFrame;
- (CGSize)tolerance;
- (CGSize)viewSize;
- (CGVector)initialVelocity;
- (CGVector)velocityAfterDuration:(double)duration;
- (_UIScrollDynamics)init;
- (_UIScrollDynamics)initWithInitialContentOffset:(CGPoint)offset velocity:(CGVector)velocity contentFrame:(CGRect)frame viewSize:(CGSize)size screenScale:(double)scale;
- (void)recalculateForDecelerationTarget:(CGPoint)target;
@end

@implementation _UIScrollDynamics

- (_UIScrollDynamics)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v5 = objc_opt_new();

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIScrollDynamics;
    return [(_UIScrollDynamics *)&v6 init];
  }
}

- (_UIScrollDynamics)initWithInitialContentOffset:(CGPoint)offset velocity:(CGVector)velocity contentFrame:(CGRect)frame viewSize:(CGSize)size screenScale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dy = velocity.dy;
  dx = velocity.dx;
  v13 = offset.y;
  v14 = offset.x;
  v15 = [(_UIScrollDynamics *)self init:*&size.width];
  v16 = v15;
  if (v15)
  {
    [(_UIScrollDynamics *)v15 setInitialContentOffset:v14, v13];
    [(_UIScrollDynamics *)v16 setInitialVelocity:dx, dy];
    [(_UIScrollDynamics *)v16 setContentFrame:x, y, width, height];
    [(_UIScrollDynamics *)v16 setContentOrigin:x, y];
    [(_UIScrollDynamics *)v16 setViewSize:scale, v18];
    v16->_tolerance.width = v19;
    v16->_tolerance.height = v19;
    [(_UIScrollDynamics *)v16 setShouldRoundCalculations:1];
    [(_UIScrollDynamics *)v16 calculateDecelerationTarget];
  }

  return v16;
}

- (CGVector)velocityAfterDuration:(double)duration
{
  v3 = 0.0;
  v4 = 0.0;
  result.dy = v4;
  result.dx = v3;
  return result;
}

- (CGPoint)positionAfterDuration:(double)duration
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)recalculateForDecelerationTarget:(CGPoint)target
{
  [(_UIScrollDynamics *)self setDecelerationTarget:target.x, target.y];

  [(_UIScrollDynamics *)self calculateToReachDecelerationTarget];
}

- (CGSize)tolerance
{
  width = self->_tolerance.width;
  height = self->_tolerance.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)decelerationTarget
{
  x = self->_decelerationTarget.x;
  y = self->_decelerationTarget.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialContentOffset
{
  x = self->_initialContentOffset.x;
  y = self->_initialContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGVector)initialVelocity
{
  dx = self->_initialVelocity.dx;
  dy = self->_initialVelocity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)contentOrigin
{
  x = self->_contentOrigin.x;
  y = self->_contentOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end