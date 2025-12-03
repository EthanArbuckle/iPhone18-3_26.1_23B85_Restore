@interface STUIStatusBarIndicatorSatelliteItem
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation STUIStatusBarIndicatorSatelliteItem

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  satelliteEntry = [data satelliteEntry];
  connectionStatus = [satelliteEntry connectionStatus];

  if (connectionStatus == 1)
  {
    v6 = @"satellite.wave.2.fill";
  }

  else
  {
    v6 = @"satellite.fill";
  }

  return v6;
}

@end