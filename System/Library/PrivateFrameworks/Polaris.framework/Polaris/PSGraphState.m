@interface PSGraphState
- (PSGraphState)init;
@end

@implementation PSGraphState

- (PSGraphState)init
{
  v5.receiver = self;
  v5.super_class = PSGraphState;
  v2 = [(PSGraphState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSGraphState *)v2 setCurrentStride:&off_100029910];
    [(PSGraphState *)v3 setTargetStride:&off_100029910];
    [(PSGraphState *)v3 setRequestedStride:&off_100029910];
    [(PSGraphState *)v3 setDomain:0];
    [(PSGraphState *)v3 setLowerBoundStride:0];
    [(PSGraphState *)v3 setUpperBoundStride:0];
  }

  return v3;
}

@end