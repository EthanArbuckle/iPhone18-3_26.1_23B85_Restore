@interface PXChangeAssetLocationAction
- (PXChangeAssetLocationAction)initWithAssets:(id)assets annotatedLocation:(id)location sourceType:(int64_t)type;
- (id)analyticsActionString;
- (id)analyticsPlaceLevelString;
- (id)locationForAsset:(id)asset shifted:(BOOL *)shifted;
@end

@implementation PXChangeAssetLocationAction

- (id)locationForAsset:(id)asset shifted:(BOOL *)shifted
{
  if (shifted)
  {
    *shifted = self->_shifted;
  }

  return self->_preciseLocation;
}

- (id)analyticsPlaceLevelString
{
  placeAnnotation = [(PXAnnotatedLocation *)self->_annotatedLocation placeAnnotation];
  placeLevelAsString = [placeAnnotation placeLevelAsString];

  return placeLevelAsString;
}

- (id)analyticsActionString
{
  sourceType = [(PXChangeAssetLocationAction *)self sourceType];
  if (sourceType > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E772EB28 + sourceType);
  }
}

- (PXChangeAssetLocationAction)initWithAssets:(id)assets annotatedLocation:(id)location sourceType:(int64_t)type
{
  assetsCopy = assets;
  locationCopy = location;
  if (!locationCopy)
  {
    PXFilter();
  }

  v10 = assetsCopy;
  v30.receiver = self;
  v30.super_class = PXChangeAssetLocationAction;
  v11 = [(PXAssetsAction *)&v30 initWithAssets:v10];
  v12 = v11;
  if (v11)
  {
    v11->_sourceType = type;
    objc_storeStrong(&v11->_annotatedLocation, location);
    location = [locationCopy location];
    v14 = location;
    if (location && ([location horizontalAccuracy], v15 == 0.0))
    {
      v16 = objc_alloc(MEMORY[0x1E6985C40]);
      [v14 coordinate];
      v18 = v17;
      v20 = v19;
      [v14 altitude];
      v22 = v21;
      [v14 verticalAccuracy];
      v24 = v23;
      timestamp = [v14 timestamp];
      v26 = [v16 initWithCoordinate:timestamp altitude:v18 horizontalAccuracy:v20 verticalAccuracy:v22 timestamp:{1.0, v24}];
    }

    else
    {
      v26 = v14;
    }

    preciseLocation = v12->_preciseLocation;
    v12->_preciseLocation = v26;

    if (v12->_preciseLocation)
    {
      location2 = [locationCopy location];
      [location2 coordinate];
      v12->_shifted = [MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:?];
    }

    else
    {
      v12->_shifted = 0;
    }
  }

  return v12;
}

BOOL __75__PXChangeAssetLocationAction_initWithAssets_annotatedLocation_sourceType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 location];
  v3 = v2 != 0;

  return v3;
}

@end