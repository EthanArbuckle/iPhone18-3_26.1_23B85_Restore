@interface PSGraphState_v2
- (PSGraphState_v2)init;
- (id)description;
@end

@implementation PSGraphState_v2

- (PSGraphState_v2)init
{
  v5.receiver = self;
  v5.super_class = PSGraphState_v2;
  v2 = [(PSGraphState_v2 *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSGraphState_v2 *)v2 setCurrentStride:&off_1000299E8];
    [(PSGraphState_v2 *)v3 setTargetStride:&off_1000299E8];
    [(PSGraphState_v2 *)v3 setRequestedStride:&off_1000299E8];
    [(PSGraphState_v2 *)v3 setCurrentFrequency:&off_1000299E8];
    [(PSGraphState_v2 *)v3 setTargetFrequency:&off_1000299E8];
    [(PSGraphState_v2 *)v3 setFrequencyChangeFrameID:&off_1000299E8];
    [(PSGraphState_v2 *)v3 setDomain:0];
    [(PSGraphState_v2 *)v3 setLowerBoundStride:0];
    [(PSGraphState_v2 *)v3 setUpperBoundStride:0];
  }

  return v3;
}

- (id)description
{
  currentStride = [(PSGraphState_v2 *)self currentStride];
  targetStride = [(PSGraphState_v2 *)self targetStride];
  requestedStride = [(PSGraphState_v2 *)self requestedStride];
  currentFrequency = [(PSGraphState_v2 *)self currentFrequency];
  targetFrequency = [(PSGraphState_v2 *)self targetFrequency];
  lowerBoundStride = [(PSGraphState_v2 *)self lowerBoundStride];
  upperBoundStride = [(PSGraphState_v2 *)self upperBoundStride];
  domain = [(PSGraphState_v2 *)self domain];
  v11 = [NSString stringWithFormat:@"Strides current:%@ target:%@ requested:%@ Frequency current:%@ target:%@ Bounds lower:%@ upper:%@ domain:%@", currentStride, targetStride, requestedStride, currentFrequency, targetFrequency, lowerBoundStride, upperBoundStride, domain];

  return v11;
}

@end