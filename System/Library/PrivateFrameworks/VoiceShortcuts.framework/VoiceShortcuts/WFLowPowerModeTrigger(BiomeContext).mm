@interface WFLowPowerModeTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFLowPowerModeTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v13 = a5;
  v7 = [a3 eventBody];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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

  v10 = [v9 starting];
  if (v10 == [a1 onEnable])
  {
    v12 = 1;
  }

  else
  {
    v11 = [v9 starting];
    v12 = v11 ^ [a1 onDisable];
  }

  v13[2](v13, v12);
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 Device];
  v6 = [v5 Power];
  v7 = [v6 LowPowerMode];

  v8 = [v7 DSLPublisher];
  v9 = [v8 subscribeOn:v3];

  return v9;
}

@end