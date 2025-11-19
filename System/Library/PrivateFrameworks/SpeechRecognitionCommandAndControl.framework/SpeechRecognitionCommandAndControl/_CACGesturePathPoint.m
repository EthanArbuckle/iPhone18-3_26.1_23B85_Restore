@interface _CACGesturePathPoint
- (CGPoint)point;
- (id)description;
@end

@implementation _CACGesturePathPoint

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(_CACGesturePathPoint *)self point];
  v4 = NSStringFromCGPoint(v8);
  v5 = [v3 stringWithFormat:@"<_PathPoint: 0x%p: %@>", self, v4];

  return v5;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

@end