@interface PHMoment(PLMomentProcessingProtocol)
- (double)pl_coordinate;
@end

@implementation PHMoment(PLMomentProcessingProtocol)

- (double)pl_coordinate
{
  v1 = [a1 pl_location];
  v2 = v1;
  if (v1)
  {
    [v1 coordinate];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x277CE4278];
    v5 = *(MEMORY[0x277CE4278] + 8);
  }

  return v4;
}

@end