@interface PXChangeAssetLocationAction
- (PXChangeAssetLocationAction)initWithAssets:(id)a3 annotatedLocation:(id)a4 sourceType:(int64_t)a5;
- (id)analyticsActionString;
- (id)analyticsPlaceLevelString;
- (id)locationForAsset:(id)a3 shifted:(BOOL *)a4;
@end

@implementation PXChangeAssetLocationAction

- (id)locationForAsset:(id)a3 shifted:(BOOL *)a4
{
  if (a4)
  {
    *a4 = self->_shifted;
  }

  return self->_preciseLocation;
}

- (id)analyticsPlaceLevelString
{
  v2 = [(PXAnnotatedLocation *)self->_annotatedLocation placeAnnotation];
  v3 = [v2 placeLevelAsString];

  return v3;
}

- (id)analyticsActionString
{
  v2 = [(PXChangeAssetLocationAction *)self sourceType];
  if (v2 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E772EB28 + v2);
  }
}

- (PXChangeAssetLocationAction)initWithAssets:(id)a3 annotatedLocation:(id)a4 sourceType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    PXFilter();
  }

  v10 = v8;
  v30.receiver = self;
  v30.super_class = PXChangeAssetLocationAction;
  v11 = [(PXAssetsAction *)&v30 initWithAssets:v10];
  v12 = v11;
  if (v11)
  {
    v11->_sourceType = a5;
    objc_storeStrong(&v11->_annotatedLocation, a4);
    v13 = [v9 location];
    v14 = v13;
    if (v13 && ([v13 horizontalAccuracy], v15 == 0.0))
    {
      v16 = objc_alloc(MEMORY[0x1E6985C40]);
      [v14 coordinate];
      v18 = v17;
      v20 = v19;
      [v14 altitude];
      v22 = v21;
      [v14 verticalAccuracy];
      v24 = v23;
      v25 = [v14 timestamp];
      v26 = [v16 initWithCoordinate:v25 altitude:v18 horizontalAccuracy:v20 verticalAccuracy:v22 timestamp:{1.0, v24}];
    }

    else
    {
      v26 = v14;
    }

    preciseLocation = v12->_preciseLocation;
    v12->_preciseLocation = v26;

    if (v12->_preciseLocation)
    {
      v28 = [v9 location];
      [v28 coordinate];
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