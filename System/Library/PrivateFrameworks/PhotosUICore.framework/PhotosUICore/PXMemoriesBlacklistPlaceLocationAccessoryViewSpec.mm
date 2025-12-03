@interface PXMemoriesBlacklistPlaceLocationAccessoryViewSpec
+ (id)specWithLocation:(id)location regionRadius:(double)radius;
- (PXMemoriesBlacklistPlaceLocationAccessoryViewSpec)initWithLocation:(id)location regionRadius:(double)radius;
@end

@implementation PXMemoriesBlacklistPlaceLocationAccessoryViewSpec

- (PXMemoriesBlacklistPlaceLocationAccessoryViewSpec)initWithLocation:(id)location regionRadius:(double)radius
{
  locationCopy = location;
  v12.receiver = self;
  v12.super_class = PXMemoriesBlacklistPlaceLocationAccessoryViewSpec;
  v8 = [(PXMemoriesBlacklistAccessoryViewSpec *)&v12 initWithContentViewFrame:0.0, 0.0, 294.0, 100.0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, location);
    radiusCopy = 5000.0;
    if (radius >= 0.0)
    {
      radiusCopy = radius;
    }

    v9->_regionRadius = radiusCopy;
    [(PXMemoriesBlacklistAccessoryViewSpec *)v9 setType:1];
  }

  return v9;
}

+ (id)specWithLocation:(id)location regionRadius:(double)radius
{
  locationCopy = location;
  v6 = [[PXMemoriesBlacklistPlaceLocationAccessoryViewSpec alloc] initWithLocation:locationCopy regionRadius:radius];

  return v6;
}

@end