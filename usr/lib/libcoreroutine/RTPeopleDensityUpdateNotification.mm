@interface RTPeopleDensityUpdateNotification
- (RTPeopleDensityUpdateNotification)initWithPeopleDensityBundles:(id)bundles;
@end

@implementation RTPeopleDensityUpdateNotification

- (RTPeopleDensityUpdateNotification)initWithPeopleDensityBundles:(id)bundles
{
  bundlesCopy = bundles;
  v9.receiver = self;
  v9.super_class = RTPeopleDensityUpdateNotification;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_densityBundles, bundles);
  }

  return v7;
}

@end