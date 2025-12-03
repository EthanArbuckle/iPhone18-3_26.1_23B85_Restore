@interface SHRegion
- (SHRegion)initWithGeohash:(id)geohash;
- (SHRegion)initWithLocation:(id)location;
@end

@implementation SHRegion

- (SHRegion)initWithGeohash:(id)geohash
{
  geohashCopy = geohash;
  v9.receiver = self;
  v9.super_class = SHRegion;
  v6 = [(SHRegion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geohash, geohash);
  }

  return v7;
}

- (SHRegion)initWithLocation:(id)location
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = SHRegion;
  v6 = [(SHRegion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_location, location);
  }

  return v7;
}

@end