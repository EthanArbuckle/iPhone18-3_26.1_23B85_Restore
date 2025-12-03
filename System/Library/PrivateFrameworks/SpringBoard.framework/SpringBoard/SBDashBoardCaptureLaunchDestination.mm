@interface SBDashBoardCaptureLaunchDestination
+ (id)launchDestinationWithPlacement:(id)placement entity:(id)entity;
+ (id)new;
- (SBDashBoardCaptureLaunchDestination)init;
- (SBDashBoardCaptureLaunchDestination)initWithPlacement:(id)placement entity:(id)entity;
@end

@implementation SBDashBoardCaptureLaunchDestination

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_launchDestinationWithPlacement_entity_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDashBoardCaptureLaunchPolicy.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "+[SBDashBoardCaptureLaunchDestination new]", v5}];

  return 0;
}

- (SBDashBoardCaptureLaunchDestination)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPlacement_entity_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDashBoardCaptureLaunchPolicy.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[SBDashBoardCaptureLaunchDestination init]", v5}];

  return 0;
}

+ (id)launchDestinationWithPlacement:(id)placement entity:(id)entity
{
  entityCopy = entity;
  placementCopy = placement;
  v8 = [[self alloc] initWithPlacement:placementCopy entity:entityCopy];

  return v8;
}

- (SBDashBoardCaptureLaunchDestination)initWithPlacement:(id)placement entity:(id)entity
{
  placementCopy = placement;
  entityCopy = entity;
  v12.receiver = self;
  v12.super_class = SBDashBoardCaptureLaunchDestination;
  v9 = [(SBDashBoardCaptureLaunchDestination *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placement, placement);
    objc_storeStrong(&v10->_entity, entity);
  }

  return v10;
}

@end