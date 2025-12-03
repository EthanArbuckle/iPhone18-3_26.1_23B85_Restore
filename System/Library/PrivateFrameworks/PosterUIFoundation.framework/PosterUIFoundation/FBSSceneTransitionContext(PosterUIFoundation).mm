@interface FBSSceneTransitionContext(PosterUIFoundation)
- (uint64_t)pui_deviceOrientation;
- (uint64_t)pui_significantEvent;
- (void)pui_setDeviceOrientation:()PosterUIFoundation;
- (void)pui_setSignificantEvent:()PosterUIFoundation;
@end

@implementation FBSSceneTransitionContext(PosterUIFoundation)

- (uint64_t)pui_significantEvent
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20512];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)pui_setSignificantEvent:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20512];
}

- (uint64_t)pui_deviceOrientation
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20513];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)pui_setDeviceOrientation:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20513];
}

@end