@interface MCTouchInput
- (CGPoint)touchPoint;
- (MCTouchInput)initWithTouchPoint:(CGPoint)point radius:(double)radius timestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortDescriptionWithLeadingString:(id)string;
@end

@implementation MCTouchInput

- (CGPoint)touchPoint
{
  x = self->_touchPoint.x;
  y = self->_touchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)shortDescriptionWithLeadingString:(id)string
{
  v4 = MEMORY[0x277CCACA8];
  [(MCTouchInput *)self touchPoint];
  v6 = v5;
  [(MCTouchInput *)self touchPoint];
  return [v4 stringWithFormat:@"(%.2f, %.2f)", v6, v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(MCTouchInput *)self touchPoint];
  v4 = NSStringFromPoint(v11);
  [(MCTouchInput *)self radius];
  v6 = v5;
  [(MCTouchInput *)self timestamp];
  v8 = [v3 stringWithFormat:@"point=%@, radius=%lf, timestamp=%lf", v4, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = MCTouchInput;
  result = [(MCKeyboardInput *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 3) = self->_touchPoint;
    *(result + 4) = *&self->_radius;
    *(result + 5) = *&self->_timestamp;
  }

  return result;
}

- (MCTouchInput)initWithTouchPoint:(CGPoint)point radius:(double)radius timestamp:(double)timestamp
{
  y = point.y;
  x = point.x;
  v10.receiver = self;
  v10.super_class = MCTouchInput;
  result = [(MCKeyboardInput *)&v10 init];
  if (result)
  {
    result->_touchPoint.x = x;
    result->_touchPoint.y = y;
    result->_radius = radius;
    result->_timestamp = timestamp;
  }

  return result;
}

@end