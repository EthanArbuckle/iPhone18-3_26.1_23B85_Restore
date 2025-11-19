@interface CSSPUPressure
- (CSSPUPressure)initWithTimestamp:(unint64_t)a3 pressure:(float)a4 temperature:(float)a5;
@end

@implementation CSSPUPressure

- (CSSPUPressure)initWithTimestamp:(unint64_t)a3 pressure:(float)a4 temperature:(float)a5
{
  v9.receiver = self;
  v9.super_class = CSSPUPressure;
  result = [(CSSPUPressure *)&v9 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.pressure = a4;
    result->_c_struct.temperature = a5;
  }

  return result;
}

@end