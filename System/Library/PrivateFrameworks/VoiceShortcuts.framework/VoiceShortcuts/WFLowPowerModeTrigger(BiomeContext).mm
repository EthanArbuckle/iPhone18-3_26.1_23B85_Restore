@interface WFLowPowerModeTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFLowPowerModeTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v13 = a5;
  eventBody = [a3 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = eventBody;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  starting = [v9 starting];
  if (starting == [self onEnable])
  {
    v12 = 1;
  }

  else
  {
    starting2 = [v9 starting];
    v12 = starting2 ^ [self onDisable];
  }

  v13[2](v13, v12);
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  device = [v4 Device];
  power = [device Power];
  lowPowerMode = [power LowPowerMode];

  dSLPublisher = [lowPowerMode DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v3];

  return v9;
}

@end