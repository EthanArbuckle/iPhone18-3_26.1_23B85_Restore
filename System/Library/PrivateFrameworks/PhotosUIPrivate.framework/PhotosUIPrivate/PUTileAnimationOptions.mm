@interface PUTileAnimationOptions
- (PUDisplayVelocity)initialVelocity;
@end

@implementation PUTileAnimationOptions

- (PUDisplayVelocity)initialVelocity
{
  x = self->_initialVelocity.x;
  y = self->_initialVelocity.y;
  scale = self->_initialVelocity.scale;
  rotation = self->_initialVelocity.rotation;
  result.rotation = rotation;
  result.scale = scale;
  result.y = y;
  result.x = x;
  return result;
}

@end