@interface FBSDisplayConfiguration
@end

@implementation FBSDisplayConfiguration

id __81__FBSDisplayConfiguration_SBDisplayManagerCallbackLogging___sbLoggingDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) hardwareIdentifier];
  [v2 appendString:v3 withName:@"hardwareIdentifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identity];
  v6 = [v4 appendObject:v5 withName:@"identity"];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) name];
  [v7 appendString:v8 withName:@"name"];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) deviceName];
  [v9 appendString:v10 withName:@"deviceName"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) CADisplay];
  v13 = [v11 appendObject:v12 withName:@"CADisplay"];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) immutableCADisplay];
  v16 = [v14 appendObject:v15 withName:@"immutableCADisplay"];

  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) currentMode];
  v19 = [v17 appendObject:v18 withName:@"currentMode"];

  v20 = *(a1 + 32);
  [*(a1 + 40) bounds];
  v21 = [v20 appendRect:@"bounds" withName:?];
  v22 = *(a1 + 32);
  [*(a1 + 40) pixelSize];
  return [v22 appendSize:@"pixelSize" withName:?];
}

@end