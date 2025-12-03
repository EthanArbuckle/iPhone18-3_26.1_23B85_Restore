@interface MDARSession
+ (BOOL)isSupported;
+ (id)newGeoTrackingSession;
+ (id)newPositionalTrackingSession;
+ (id)stringWithARGeoTrackingAccuracy:(int64_t)accuracy;
+ (id)stringWithARGeoTrackingState:(int64_t)state;
+ (id)stringWithARGeoTrackingStateReason:(int64_t)reason;
+ (id)stringWithARTrackingState:(int64_t)state;
+ (id)stringWithARTrackingStateReason:(int64_t)reason;
@end

@implementation MDARSession

+ (id)stringWithARGeoTrackingAccuracy:(int64_t)accuracy
{
  if ((accuracy - 1) > 2)
  {
    return @"Undetermined";
  }

  else
  {
    return *(&off_1E7B3C118 + accuracy - 1);
  }
}

+ (id)stringWithARGeoTrackingStateReason:(int64_t)reason
{
  if ((reason - 1) > 7)
  {
    return @"None";
  }

  else
  {
    return *(&off_1E7B3C0D8 + reason - 1);
  }
}

+ (id)stringWithARGeoTrackingState:(int64_t)state
{
  if ((state - 1) > 2)
  {
    return @"NotAvailable";
  }

  else
  {
    return *(&off_1E7B3C0C0 + state - 1);
  }
}

+ (id)stringWithARTrackingStateReason:(int64_t)reason
{
  if ((reason - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return *(&off_1E7B3C0A0 + reason - 1);
  }
}

+ (id)stringWithARTrackingState:(int64_t)state
{
  v3 = @"NotAvailable";
  if (state == 1)
  {
    v3 = @"Limited";
  }

  if (state == 2)
  {
    return @"Normal";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)isSupported
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_38603);
  }

  ARGeoTrackingConfigurationClass = getARGeoTrackingConfigurationClass();

  return [ARGeoTrackingConfigurationClass isSupported];
}

+ (id)newPositionalTrackingSession
{
  if (+[MDARSession isSupported])
  {
    if ([getARWorldTrackingConfigurationClass() isSupported])
    {
      getARWorldTrackingConfigurationClass();
      v2 = objc_opt_new();
      [v2 setPlaneDetection:0];
      [v2 setWorldAlignment:0];
      [v2 setLightEstimationEnabled:0];
      v3 = +[VKDebugSettings sharedSettings];
      arEnableEnvironmentMap = [v3 arEnableEnvironmentMap];

      if (arEnableEnvironmentMap)
      {
        [v2 setEnvironmentTexturing:1];
      }

      if (v2)
      {
        v5 = objc_alloc_init(getARSessionClass[0]());
        [v5 runWithConfiguration:v2 options:1];
LABEL_10:

        return v5;
      }
    }

    else
    {
      v2 = 0;
    }

    v5 = 0;
    goto LABEL_10;
  }

  return 0;
}

+ (id)newGeoTrackingSession
{
  if (!+[MDARSession isSupported]|| ![(objc_class *)getARGeoTrackingConfigurationClass() isSupported])
  {
    return 0;
  }

  getARGeoTrackingConfigurationClass();
  v2 = objc_opt_new();
  [v2 setSupportEnablementOptions:4];
  [v2 setVisualLocalizationCallInterval:0.0];
  [v2 setPlaneDetection:0];
  [v2 setLightEstimationEnabled:0];
  v3 = +[VKDebugSettings sharedSettings];
  arEnableEnvironmentMap = [v3 arEnableEnvironmentMap];

  if (arEnableEnvironmentMap)
  {
    [v2 setEnvironmentTexturing:1];
  }

  v5 = objc_alloc_init(getARSessionClass[0]());
  [v5 runWithConfiguration:v2 options:1];

  return v5;
}

@end