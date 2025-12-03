@interface WFStageManagerTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFStageManagerTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v11 = a5;
  eventBody = [a3 eventBody];
  starting = [eventBody starting];
  if (starting == [self onEnable])
  {
    v10 = 1;
  }

  else
  {
    starting2 = [eventBody starting];
    v10 = starting2 ^ [self onDisable];
  }

  v11[2](v11, v10);
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  springBoard = [v4 SpringBoard];
  windowManagement = [springBoard WindowManagement];
  stageManagerMode = [windowManagement StageManagerMode];

  dSLPublisher = [stageManagerMode DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v3];

  return v9;
}

@end