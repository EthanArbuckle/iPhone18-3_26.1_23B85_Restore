@interface AVOutputDeviceDiscoverySession(PHAirPlayRouteAvailability)
- (uint64_t)_pu_routeAvailability;
@end

@implementation AVOutputDeviceDiscoverySession(PHAirPlayRouteAvailability)

- (uint64_t)_pu_routeAvailability
{
  result = [a1 discoveryMode];
  if (result)
  {
    if ([a1 devicePresenceDetected])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

@end