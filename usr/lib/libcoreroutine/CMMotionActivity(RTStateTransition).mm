@interface CMMotionActivity(RTStateTransition)
- (BOOL)isEqual:()RTStateTransition;
@end

@implementation CMMotionActivity(RTStateTransition)

- (BOOL)isEqual:()RTStateTransition
{
  v4 = a3;
  unknown = [self unknown];
  v10 = 0;
  if (unknown == [v4 unknown])
  {
    stationary = [self stationary];
    if (stationary == [v4 stationary])
    {
      walking = [self walking];
      if (walking == [v4 walking])
      {
        running = [self running];
        if (running == [v4 running])
        {
          automotive = [self automotive];
          if (automotive == [v4 automotive])
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