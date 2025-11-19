@interface SBDashBoardCaptureLaunchDestination
+ (id)launchDestinationWithPlacement:(id)a3 entity:(id)a4;
+ (id)new;
- (SBDashBoardCaptureLaunchDestination)init;
- (SBDashBoardCaptureLaunchDestination)initWithPlacement:(id)a3 entity:(id)a4;
@end

@implementation SBDashBoardCaptureLaunchDestination

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_launchDestinationWithPlacement_entity_);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBDashBoardCaptureLaunchPolicy.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "+[SBDashBoardCaptureLaunchDestination new]", v5}];

  return 0;
}

- (SBDashBoardCaptureLaunchDestination)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPlacement_entity_);
  [v4 handleFailureInMethod:a2 object:self file:@"SBDashBoardCaptureLaunchPolicy.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[SBDashBoardCaptureLaunchDestination init]", v5}];

  return 0;
}

+ (id)launchDestinationWithPlacement:(id)a3 entity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPlacement:v7 entity:v6];

  return v8;
}

- (SBDashBoardCaptureLaunchDestination)initWithPlacement:(id)a3 entity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBDashBoardCaptureLaunchDestination;
  v9 = [(SBDashBoardCaptureLaunchDestination *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placement, a3);
    objc_storeStrong(&v10->_entity, a4);
  }

  return v10;
}

@end