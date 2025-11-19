@interface SCRCGestureStylus
- (SCRCGestureStylus)initWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5 altitude:(double)a6 azimuth:(double)a7;
@end

@implementation SCRCGestureStylus

- (SCRCGestureStylus)initWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5 altitude:(double)a6 azimuth:(double)a7
{
  v10.receiver = self;
  v10.super_class = SCRCGestureStylus;
  result = [(SCRCGestureFinger *)&v10 initWithIdentifier:a3 location:a4.x pressure:a4.y, a5];
  if (result)
  {
    result->_altitude = a6;
    result->_azimuth = a7;
  }

  return result;
}

@end