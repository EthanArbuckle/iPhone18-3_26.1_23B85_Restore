@interface _TUIPathPoint
- (CGPoint)point;
- (id)description;
@end

@implementation _TUIPathPoint

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(_TUIPathPoint *)self point];
  v4 = NSStringFromCGPoint(v8);
  v5 = [v3 stringWithFormat:@"<_PathPoint: 0x%p: %@>", self, v4];

  return v5;
}

@end