@interface _UIGravityWellEffectBody
- (CAPoint3D)positionInPrimaryContainer;
- (id)description;
@end

@implementation _UIGravityWellEffectBody

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(_UIGravityWellEffectBody *)self distanceFromPrimaryBody];
  return [v3 stringWithFormat:@"<_UIGravityWellEffectBody: %p; distanceFromPrimaryBody: %.2f>", self, v4];
}

- (CAPoint3D)positionInPrimaryContainer
{
  x = self->_positionInPrimaryContainer.x;
  y = self->_positionInPrimaryContainer.y;
  z = self->_positionInPrimaryContainer.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end