@interface SCRCGestureFinger
- (CGPoint)location;
- (SCRCGestureFinger)initWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5;
@end

@implementation SCRCGestureFinger

- (SCRCGestureFinger)initWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5
{
  y = a4.y;
  x = a4.x;
  v10.receiver = self;
  v10.super_class = SCRCGestureFinger;
  result = [(SCRCGestureFinger *)&v10 init];
  if (result)
  {
    result->_identifier = a3;
    result->_location.x = x;
    result->_location.y = y;
    result->_pressure = a5;
  }

  return result;
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