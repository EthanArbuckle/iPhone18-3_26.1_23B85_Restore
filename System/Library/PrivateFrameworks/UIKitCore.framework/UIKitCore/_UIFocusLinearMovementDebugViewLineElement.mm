@interface _UIFocusLinearMovementDebugViewLineElement
+ (id)elementWithCGPathElement:(const CGPathElement *)element;
- (CGPoint)cp1;
- (CGPoint)cp2;
- (CGPoint)point;
- (_UIFocusLinearMovementDebugViewLineElement)initWithType:(int)type point:(CGPoint)point cp1:(CGPoint)cp1 cp2:(CGPoint)cp2;
@end

@implementation _UIFocusLinearMovementDebugViewLineElement

+ (id)elementWithCGPathElement:(const CGPathElement *)element
{
  v3 = *MEMORY[0x1E695EFF8];
  type = element->type;
  if (element->type > kCGPathElementAddLineToPoint)
  {
    if (type == kCGPathElementAddQuadCurveToPoint)
    {
      points = element->points;
      v6 = *points;
      v5 = points[1];
    }

    else
    {
      v5 = *MEMORY[0x1E695EFF8];
      v6 = *MEMORY[0x1E695EFF8];
      if (type == kCGPathElementAddCurveToPoint)
      {
        v7 = element->points;
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
      v5 = *element->points;
    }

    v6 = *MEMORY[0x1E695EFF8];
  }

  v9 = [[self alloc] initWithType:element->type point:v5 cp1:v6 cp2:v3];

  return v9;
}

- (_UIFocusLinearMovementDebugViewLineElement)initWithType:(int)type point:(CGPoint)point cp1:(CGPoint)cp1 cp2:(CGPoint)cp2
{
  y = cp2.y;
  x = cp2.x;
  v8 = cp1.y;
  v9 = cp1.x;
  v10 = point.y;
  v11 = point.x;
  v14.receiver = self;
  v14.super_class = _UIFocusLinearMovementDebugViewLineElement;
  result = [(_UIFocusLinearMovementDebugViewLineElement *)&v14 init];
  if (result)
  {
    result->_type = type;
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