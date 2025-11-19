@interface CSSPUSteps
- (CSSPUSteps)initWithTimestamp:(unint64_t)a3 stepCount:(unsigned int)a4 deltaSteps:(int)a5 currentCadence:(float)a6 pedometerArmConstrainedState:(unsigned __int8)a7;
@end

@implementation CSSPUSteps

- (CSSPUSteps)initWithTimestamp:(unint64_t)a3 stepCount:(unsigned int)a4 deltaSteps:(int)a5 currentCadence:(float)a6 pedometerArmConstrainedState:(unsigned __int8)a7
{
  v13.receiver = self;
  v13.super_class = CSSPUSteps;
  result = [(CSSPUSteps *)&v13 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.stepCount = a4;
    result->_c_struct.deltaSteps = a5;
    result->_c_struct.currentCadence = a6;
    result->_c_struct.pedometerArmConstrainedState = a7;
  }

  return result;
}

@end