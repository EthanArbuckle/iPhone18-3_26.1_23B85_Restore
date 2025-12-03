@interface AVOutputDeviceDiscoverySession(PHAirPlayRouteAvailability)
- (uint64_t)_pu_routeAvailability;
@end

@implementation AVOutputDeviceDiscoverySession(PHAirPlayRouteAvailability)

- (uint64_t)_pu_routeAvailability
{
  result = [self discoveryMode];
  if (result)
  {
    if ([self devicePresenceDetected])
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