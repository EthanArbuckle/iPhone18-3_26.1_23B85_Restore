@interface CMMotionActivity(RTStateTransition)
- (BOOL)isEqual:()RTStateTransition;
@end

@implementation CMMotionActivity(RTStateTransition)

- (BOOL)isEqual:()RTStateTransition
{
  v4 = a3;
  v5 = [a1 unknown];
  v10 = 0;
  if (v5 == [v4 unknown])
  {
    v6 = [a1 stationary];
    if (v6 == [v4 stationary])
    {
      v7 = [a1 walking];
      if (v7 == [v4 walking])
      {
        v8 = [a1 running];
        if (v8 == [v4 running])
        {
          v9 = [a1 automotive];
          if (v9 == [v4 automotive])
          {
            v10 = 1;
          }
        }
      }
    }
  }

  return v10;
}

@end