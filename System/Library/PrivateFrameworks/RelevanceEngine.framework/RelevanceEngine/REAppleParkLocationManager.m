@interface REAppleParkLocationManager
@end

@implementation REAppleParkLocationManager

uint64_t __46___REAppleParkLocationManager_currentLocation__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:37.3353672 longitude:-122.011737];
  v1 = currentLocation_AppleParkLocation;
  currentLocation_AppleParkLocation = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __63___REAppleParkLocationManager_startLocationUpdatesWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) currentLocation];
  (*(v1 + 16))(v1, v2, 0);
}

@end