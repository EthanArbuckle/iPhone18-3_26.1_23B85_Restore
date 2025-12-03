@interface CSSPUSteps
- (CSSPUSteps)initWithTimestamp:(unint64_t)timestamp stepCount:(unsigned int)count deltaSteps:(int)steps currentCadence:(float)cadence pedometerArmConstrainedState:(unsigned __int8)state;
@end

@implementation CSSPUSteps

- (CSSPUSteps)initWithTimestamp:(unint64_t)timestamp stepCount:(unsigned int)count deltaSteps:(int)steps currentCadence:(float)cadence pedometerArmConstrainedState:(unsigned __int8)state
{
  v13.receiver = self;
  v13.super_class = CSSPUSteps;
  result = [(CSSPUSteps *)&v13 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.stepCount = count;
    result->_c_struct.deltaSteps = steps;
    result->_c_struct.currentCadence = cadence;
    result->_c_struct.pedometerArmConstrainedState = state;
  }

  return result;
}

@end