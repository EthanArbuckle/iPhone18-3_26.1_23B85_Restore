@interface PHMoment(PLMomentProcessingProtocol)
- (double)pl_coordinate;
@end

@implementation PHMoment(PLMomentProcessingProtocol)

- (double)pl_coordinate
{
  pl_location = [self pl_location];
  v2 = pl_location;
  if (pl_location)
  {
    [pl_location coordinate];
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