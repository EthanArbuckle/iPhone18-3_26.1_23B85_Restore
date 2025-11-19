@interface STUIStatusBarIndicatorSatelliteItem
- (id)systemImageNameForUpdate:(id)a3;
@end

@implementation STUIStatusBarIndicatorSatelliteItem

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 satelliteEntry];
  v5 = [v4 connectionStatus];

  if (v5 == 1)
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