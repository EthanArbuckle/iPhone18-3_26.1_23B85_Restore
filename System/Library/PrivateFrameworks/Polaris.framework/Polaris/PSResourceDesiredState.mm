@interface PSResourceDesiredState
- (BOOL)isEqual:(id)a3;
@end

@implementation PSResourceDesiredState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSResourceDesiredState *)self wantedByConsumers];
  if (v5 == [v4 wantedByConsumers])
  {
    v7 = [(PSResourceDesiredState *)self desiredStride];
    v8 = [v4 desiredStride];
    if (v7 == v8)
    {
      v9 = [(PSResourceDesiredState *)self resourceName];
      v10 = [v4 resourceName];
      v6 = v9 == v10;
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