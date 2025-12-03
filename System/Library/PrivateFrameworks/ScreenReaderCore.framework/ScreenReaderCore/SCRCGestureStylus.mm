@interface SCRCGestureStylus
- (SCRCGestureStylus)initWithIdentifier:(unint64_t)identifier location:(CGPoint)location pressure:(double)pressure altitude:(double)altitude azimuth:(double)azimuth;
@end

@implementation SCRCGestureStylus

- (SCRCGestureStylus)initWithIdentifier:(unint64_t)identifier location:(CGPoint)location pressure:(double)pressure altitude:(double)altitude azimuth:(double)azimuth
{
  v10.receiver = self;
  v10.super_class = SCRCGestureStylus;
  result = [(SCRCGestureFinger *)&v10 initWithIdentifier:identifier location:location.x pressure:location.y, pressure];
  if (result)
  {
    result->_altitude = altitude;
    result->_azimuth = azimuth;
  }

  return result;
}

@end