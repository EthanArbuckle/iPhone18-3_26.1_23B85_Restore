@interface PXMemoriesBlacklistPlaceLocationAccessoryViewSpec
+ (id)specWithLocation:(id)a3 regionRadius:(double)a4;
- (PXMemoriesBlacklistPlaceLocationAccessoryViewSpec)initWithLocation:(id)a3 regionRadius:(double)a4;
@end

@implementation PXMemoriesBlacklistPlaceLocationAccessoryViewSpec

- (PXMemoriesBlacklistPlaceLocationAccessoryViewSpec)initWithLocation:(id)a3 regionRadius:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PXMemoriesBlacklistPlaceLocationAccessoryViewSpec;
  v8 = [(PXMemoriesBlacklistAccessoryViewSpec *)&v12 initWithContentViewFrame:0.0, 0.0, 294.0, 100.0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, a3);
    v10 = 5000.0;
    if (a4 >= 0.0)
    {
      v10 = a4;
    }

    v9->_regionRadius = v10;
    [(PXMemoriesBlacklistAccessoryViewSpec *)v9 setType:1];
  }

  return v9;
}

+ (id)specWithLocation:(id)a3 regionRadius:(double)a4
{
  v5 = a3;
  v6 = [[PXMemoriesBlacklistPlaceLocationAccessoryViewSpec alloc] initWithLocation:v5 regionRadius:a4];

  return v6;
}

@end