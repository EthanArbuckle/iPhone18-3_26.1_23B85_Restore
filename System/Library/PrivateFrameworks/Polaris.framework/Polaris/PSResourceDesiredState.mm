@interface PSResourceDesiredState
- (BOOL)isEqual:(id)equal;
@end

@implementation PSResourceDesiredState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  wantedByConsumers = [(PSResourceDesiredState *)self wantedByConsumers];
  if (wantedByConsumers == [equalCopy wantedByConsumers])
  {
    desiredStride = [(PSResourceDesiredState *)self desiredStride];
    desiredStride2 = [equalCopy desiredStride];
    if (desiredStride == desiredStride2)
    {
      resourceName = [(PSResourceDesiredState *)self resourceName];
      resourceName2 = [equalCopy resourceName];
      v6 = resourceName == resourceName2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end