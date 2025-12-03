@interface _REAppleParkLocationManager
- (id)currentLocation;
- (void)startLocationUpdatesWithHandler:(id)handler;
@end

@implementation _REAppleParkLocationManager

- (id)currentLocation
{
  if (currentLocation_onceToken != -1)
  {
    [_REAppleParkLocationManager currentLocation];
  }

  v2 = CFPreferencesCopyAppValue(@"RESimulatedLocationKey", @"com.apple.RelevanceEngine");
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE41F8]);
    v4 = [v2 objectForKeyedSubscript:@"lat"];
    [v4 doubleValue];
    v6 = v5;
    v7 = [v2 objectForKeyedSubscript:@"long"];
    [v7 doubleValue];
    v9 = [v3 initWithLatitude:v6 longitude:v8];
    v10 = currentLocation_AppleParkLocation;
    currentLocation_AppleParkLocation = v9;
  }

  v11 = currentLocation_AppleParkLocation;
  v12 = currentLocation_AppleParkLocation;

  return v11;
}

- (void)startLocationUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63___REAppleParkLocationManager_startLocationUpdatesWithHandler___block_invoke;
  v6[3] = &unk_2785FA150;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

@end