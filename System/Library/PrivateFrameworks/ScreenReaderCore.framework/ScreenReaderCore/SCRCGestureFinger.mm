@interface SCRCGestureFinger
- (CGPoint)location;
- (SCRCGestureFinger)initWithIdentifier:(unint64_t)identifier location:(CGPoint)location pressure:(double)pressure;
@end

@implementation SCRCGestureFinger

- (SCRCGestureFinger)initWithIdentifier:(unint64_t)identifier location:(CGPoint)location pressure:(double)pressure
{
  y = location.y;
  x = location.x;
  v10.receiver = self;
  v10.super_class = SCRCGestureFinger;
  result = [(SCRCGestureFinger *)&v10 init];
  if (result)
  {
    result->_identifier = identifier;
    result->_location.x = x;
    result->_location.y = y;
    result->_pressure = pressure;
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