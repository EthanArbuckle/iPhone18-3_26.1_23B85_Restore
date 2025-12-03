@interface CSSPUPressure
- (CSSPUPressure)initWithTimestamp:(unint64_t)timestamp pressure:(float)pressure temperature:(float)temperature;
@end

@implementation CSSPUPressure

- (CSSPUPressure)initWithTimestamp:(unint64_t)timestamp pressure:(float)pressure temperature:(float)temperature
{
  v9.receiver = self;
  v9.super_class = CSSPUPressure;
  result = [(CSSPUPressure *)&v9 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.pressure = pressure;
    result->_c_struct.temperature = temperature;
  }

  return result;
}

@end