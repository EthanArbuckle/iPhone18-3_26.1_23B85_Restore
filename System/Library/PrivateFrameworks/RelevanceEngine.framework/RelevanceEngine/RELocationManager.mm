@interface RELocationManager
+ (RELocationManager)locationManager;
+ (RELocationManager)locationManagerWithAuthorizationBundlePath:(id)a3;
+ (RELocationManager)simulatedLocationManager;
@end

@implementation RELocationManager

+ (RELocationManager)simulatedLocationManager
{
  if (simulatedLocationManager_onceToken != -1)
  {
    +[RELocationManager simulatedLocationManager];
  }

  v3 = simulatedLocationManager_SimulatedManager;

  return v3;
}

uint64_t __45__RELocationManager_simulatedLocationManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = simulatedLocationManager_SimulatedManager;
  simulatedLocationManager_SimulatedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (RELocationManager)locationManager
{
  v2 = objc_opt_new();

  return v2;
}

+ (RELocationManager)locationManagerWithAuthorizationBundlePath:(id)a3
{
  v3 = a3;
  v4 = [[_RECoreLocationLocationManager alloc] initWithEffectiveBundlePath:v3];

  return v4;
}

@end