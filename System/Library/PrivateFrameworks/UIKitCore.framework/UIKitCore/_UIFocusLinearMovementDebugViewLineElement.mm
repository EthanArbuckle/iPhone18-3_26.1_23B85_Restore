@interface _UIFocusLinearMovementDebugViewLineElement
+ (id)elementWithCGPathElement:(const CGPathElement *)a3;
- (CGPoint)cp1;
- (CGPoint)cp2;
- (CGPoint)point;
- (_UIFocusLinearMovementDebugViewLineElement)initWithType:(int)a3 point:(CGPoint)a4 cp1:(CGPoint)a5 cp2:(CGPoint)a6;
@end

@implementation _UIFocusLinearMovementDebugViewLineElement

+ (id)elementWithCGPathElement:(const CGPathElement *)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  type = a3->type;
  if (a3->type > kCGPathElementAddLineToPoint)
  {
    if (type == kCGPathElementAddQuadCurveToPoint)
    {
      points = a3->points;
      v6 = *points;
      v5 = points[1];
    }

    else
    {
      v5 = *MEMORY[0x1E695EFF8];
      v6 = *MEMORY[0x1E695EFF8];
      if (type == kCGPathElementAddCurveToPoint)
      {
        v7 = a3->points;
        v3 = v7[1];
        v5 = v7[2];
        v6 = *v7;
      }
    }
  }

  else
  {
    if (type > kCGPathElementAddLineToPoint)
    {
      v5 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v5 = *a3->points;
    }

    v6 = *MEMORY[0x1E695EFF8];
  }

  v9 = [[a1 alloc] initWithType:a3->type point:v5 cp1:v6 cp2:v3];

  return v9;
}

- (_UIFocusLinearMovementDebugViewLineElement)initWithType:(int)a3 point:(CGPoint)a4 cp1:(CGPoint)a5 cp2:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v14.receiver = self;
  v14.super_class = _UIFocusLinearMovementDebugViewLineElement;
  result = [(_UIFocusLinearMovementDebugViewLineElement *)&v14 init];
  if (result)
  {
    result->_type = a3;
    result->_point.x = v11;
    result->_point.y = v10;
    result->_cp1.x = v9;
    result->_cp1.y = v8;
    result->_cp2.x = x;
    result->_cp2.y = y;
  }

  return result;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp1
{
  x = self->_cp1.x;
  y = self->_cp1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp2
{
  x = self->_cp2.x;
  y = self->_cp2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end