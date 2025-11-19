@interface SHRegion
- (SHRegion)initWithGeohash:(id)a3;
- (SHRegion)initWithLocation:(id)a3;
@end

@implementation SHRegion

- (SHRegion)initWithGeohash:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHRegion;
  v6 = [(SHRegion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geohash, a3);
  }

  return v7;
}

- (SHRegion)initWithLocation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHRegion;
  v6 = [(SHRegion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_location, a3);
  }

  return v7;
}

@end