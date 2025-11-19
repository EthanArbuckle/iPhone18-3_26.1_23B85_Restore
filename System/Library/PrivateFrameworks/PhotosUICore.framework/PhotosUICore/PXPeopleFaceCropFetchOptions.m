@interface PXPeopleFaceCropFetchOptions
+ (id)_cornerStyleStringForCornerStyle:(int64_t)a3;
+ (id)_cropFactorStringForCropFactor:(int64_t)a3;
+ (id)_deliveryModeStringForDeliveryMode:(int64_t)a3;
+ (int64_t)recommendedCornerStyleForCurrentAppConfiguration;
- (BOOL)areFetchParametersEqualtoFetchParametersOfOptions:(id)a3;
- (CGSize)clientTargetSize;
- (CGSize)targetPixelSize;
- (NSString)cacheKey;
- (PHPhotoLibrary)photoLibrary;
- (PXPeopleFaceCropFetchOptions)initWithFace:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5;
- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)a3 face:(id)a4 targetSize:(CGSize)a5 displayScale:(double)a6;
- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_commonInitWithPerson:(id)a3 face:(id)a4 targetSize:(CGSize)a5 displayScale:(double)a6;
@end

@implementation PXPeopleFaceCropFetchOptions

- (CGSize)clientTargetSize
{
  width = self->_clientTargetSize.width;
  height = self->_clientTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)targetPixelSize
{
  width = self->_targetPixelSize.width;
  height = self->_targetPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v27.receiver = self;
  v27.super_class = PXPeopleFaceCropFetchOptions;
  v3 = [(PXPeopleFaceCropFetchOptions *)&v27 description];
  v4 = [v3 mutableCopy];

  v5 = [(PXPeopleFaceCropFetchOptions *)self person];
  v6 = [v5 localIdentifier];
  [v4 appendFormat:@":\nperson: %@, \n", v6];

  v7 = [(PXPeopleFaceCropFetchOptions *)self face];
  v8 = [v7 localIdentifier];
  [v4 appendFormat:@"face: %@, \n", v8];

  [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
  v9 = NSStringFromCGSize(v29);
  [v4 appendFormat:@"targetSize: %@, \n", v9];
  [(PXPeopleFaceCropFetchOptions *)self displayScale];
  [v4 appendFormat:@"displayScale: %f, \n", v10];
  if ([(PXPeopleFaceCropFetchOptions *)self wantsFlippedContentsRect])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  [v4 appendFormat:@"wantsFlippedContentsRect: %@\n", v12];

  v13 = [(PXPeopleFaceCropFetchOptions *)self asset];
  v14 = [v13 localIdentifier];
  [v4 appendFormat:@"asset: %@, \n", v14];

  v15 = [PXPeopleFaceCropFetchOptions _cropFactorStringForCropFactor:[(PXPeopleFaceCropFetchOptions *)self cropFactor]];
  [v4 appendFormat:@"cropFactor: %@, \n", v15];

  v16 = [PXPeopleFaceCropFetchOptions _cornerStyleStringForCornerStyle:[(PXPeopleFaceCropFetchOptions *)self cornerStyle]];
  [v4 appendFormat:@"cornerStyle: %@, \n", v16];

  v17 = [PXPeopleFaceCropFetchOptions _deliveryModeStringForDeliveryMode:[(PXPeopleFaceCropFetchOptions *)self deliveryMode]];
  [v4 appendFormat:@"deliveryMode: %@, \n", v17];

  if ([(PXPeopleFaceCropFetchOptions *)self isSynchronous])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  [v4 appendFormat:@"isSynchronous: %@, \n", v19];

  if ([(PXPeopleFaceCropFetchOptions *)self shouldCacheResult])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = v20;
  [v4 appendFormat:@"cacheResult: %@\n", v21];

  if ([(PXPeopleFaceCropFetchOptions *)self wantsSmallFaceRect])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v23 = v22;
  [v4 appendFormat:@"wantsSmallFaceRect: %@\n", v23];

  if ([(PXPeopleFaceCropFetchOptions *)self useLowMemoryMode])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = v24;
  [v4 appendFormat:@"useLowMemoryMode: %@\n", v25];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = [(PXPeopleFaceCropFetchOptions *)self person];
  if (v6 && (v7 = v6, [(PXPeopleFaceCropFetchOptions *)self face], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [PXPeopleFaceCropFetchOptions allocWithZone:a3];
    v10 = [(PXPeopleFaceCropFetchOptions *)self person];
    v11 = [(PXPeopleFaceCropFetchOptions *)self face];
    [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
    v13 = v12;
    v15 = v14;
    [(PXPeopleFaceCropFetchOptions *)self displayScale];
    v17 = [(PXPeopleFaceCropFetchOptions *)v9 initWithPerson:v10 face:v11 targetSize:v13 displayScale:v15, v16];
  }

  else
  {
    v18 = [(PXPeopleFaceCropFetchOptions *)self person];

    if (v18)
    {
      v19 = [PXPeopleFaceCropFetchOptions allocWithZone:a3];
      v10 = [(PXPeopleFaceCropFetchOptions *)self person];
      [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
      v21 = v20;
      v23 = v22;
      [(PXPeopleFaceCropFetchOptions *)self displayScale];
      v25 = [(PXPeopleFaceCropFetchOptions *)v19 initWithPerson:v10 targetSize:v21 displayScale:v23, v24];
    }

    else
    {
      v26 = [(PXPeopleFaceCropFetchOptions *)self face];

      if (!v26)
      {
        v35 = [MEMORY[0x1E696AAA8] currentHandler];
        [v35 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:130 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v27 = [PXPeopleFaceCropFetchOptions allocWithZone:a3];
      v10 = [(PXPeopleFaceCropFetchOptions *)self face];
      [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
      v29 = v28;
      v31 = v30;
      [(PXPeopleFaceCropFetchOptions *)self displayScale];
      v25 = [(PXPeopleFaceCropFetchOptions *)v27 initWithFace:v10 targetSize:v29 displayScale:v31, v32];
    }

    v17 = v25;
  }

  [(PXPeopleFaceCropFetchOptions *)v17 setCropFactor:[(PXPeopleFaceCropFetchOptions *)self cropFactor]];
  [(PXPeopleFaceCropFetchOptions *)v17 setCornerStyle:[(PXPeopleFaceCropFetchOptions *)self cornerStyle]];
  [(PXPeopleFaceCropFetchOptions *)v17 setWantsFlippedContentsRect:[(PXPeopleFaceCropFetchOptions *)self wantsFlippedContentsRect]];
  v33 = [(PXPeopleFaceCropFetchOptions *)self asset];
  [(PXPeopleFaceCropFetchOptions *)v17 setAsset:v33];

  [(PXPeopleFaceCropFetchOptions *)v17 setDeliveryMode:[(PXPeopleFaceCropFetchOptions *)self deliveryMode]];
  [(PXPeopleFaceCropFetchOptions *)v17 setIsSynchronous:[(PXPeopleFaceCropFetchOptions *)self isSynchronous]];
  [(PXPeopleFaceCropFetchOptions *)v17 setShouldCacheResult:[(PXPeopleFaceCropFetchOptions *)self shouldCacheResult]];
  [(PXPeopleFaceCropFetchOptions *)v17 setWantsSmallFaceRect:[(PXPeopleFaceCropFetchOptions *)self wantsSmallFaceRect]];
  [(PXPeopleFaceCropFetchOptions *)v17 setUseLowMemoryMode:[(PXPeopleFaceCropFetchOptions *)self useLowMemoryMode]];
  return v17;
}

- (NSString)cacheKey
{
  v4 = [(PXPeopleFaceCropFetchOptions *)self person];
  v5 = [(PXPeopleFaceCropFetchOptions *)self face];
  if (!(v4 | v5))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"person || face"}];
  }

  v6 = [v4 localIdentifier];
  if (![v6 length])
  {
    v7 = [v5 localIdentifier];

    v6 = v7;
  }

  return v6;
}

- (PHPhotoLibrary)photoLibrary
{
  v3 = [(PXPeopleFaceCropFetchOptions *)self person];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 photoLibrary];
  }

  else
  {
    v6 = [(PXPeopleFaceCropFetchOptions *)self face];
    v5 = [v6 photoLibrary];
  }

  return v5;
}

- (BOOL)areFetchParametersEqualtoFetchParametersOfOptions:(id)a3
{
  v4 = a3;
  [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
  v6 = v5;
  v8 = v7;
  [v4 clientTargetSize];
  if (v6 != v10 || v8 != v9)
  {
    goto LABEL_19;
  }

  [(PXPeopleFaceCropFetchOptions *)self displayScale];
  v13 = v12;
  [v4 displayScale];
  if (v13 != v14)
  {
    goto LABEL_19;
  }

  v15 = [(PXPeopleFaceCropFetchOptions *)self cropFactor];
  if (v15 != [v4 cropFactor])
  {
    goto LABEL_19;
  }

  v16 = [(PXPeopleFaceCropFetchOptions *)self cornerStyle];
  if (v16 != [v4 cornerStyle])
  {
    goto LABEL_19;
  }

  v17 = [(PXPeopleFaceCropFetchOptions *)self person];
  v18 = [v4 person];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [v17 isEqual:v18];

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v21 = [(PXPeopleFaceCropFetchOptions *)self face];
  v22 = [v4 face];
  v23 = v22;
  if (v21 == v22)
  {
  }

  else
  {
    v24 = [v21 isEqual:v22];

    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v25 = [(PXPeopleFaceCropFetchOptions *)self asset];
  v26 = [v4 asset];
  v27 = v26;
  if (v25 == v26)
  {

    goto LABEL_22;
  }

  v28 = [v25 isEqual:v26];

  if (v28)
  {
LABEL_22:
    v31 = [(PXPeopleFaceCropFetchOptions *)self wantsFlippedContentsRect];
    v29 = v31 ^ [v4 wantsFlippedContentsRect] ^ 1;
    goto LABEL_20;
  }

LABEL_19:
  LOBYTE(v29) = 0;
LABEL_20:

  return v29;
}

- (void)_commonInitWithPerson:(id)a3 face:(id)a4 targetSize:(CGSize)a5 displayScale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  if (height <= 0.0)
  {
    PXAssertGetLog();
  }

  if (width <= 0.0)
  {
    PXAssertGetLog();
  }

  if (a6 < 1.0)
  {
    PXAssertGetLog();
  }

  self->_clientTargetSize.width = width;
  self->_clientTargetSize.height = height;
  self->_displayScale = a6;
  self->_targetPixelSize.width = width * a6;
  self->_targetPixelSize.height = height * a6;
  self->_cropFactor = 0;
  self->_cornerStyle = +[PXPeopleFaceCropFetchOptions recommendedCornerStyleForCurrentAppConfiguration];
  self->_wantsFlippedContentsRect = 0;
  person = self->_person;
  self->_person = v11;
  v14 = v11;

  face = self->_face;
  self->_face = v12;

  self->_deliveryMode = 0;
  self->_shouldCacheResult = 1;
}

- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)a3 face:(id)a4 targetSize:(CGSize)a5 displayScale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"face"}];

LABEL_3:
  v15 = [v12 photoLibrary];
  v16 = [v14 photoLibrary];
  v17 = v16;
  if (v15 == v16)
  {
  }

  else
  {
    v18 = [v15 isEqual:v16];

    if ((v18 & 1) == 0)
    {
      PXAssertGetLog();
    }
  }

  v24.receiver = self;
  v24.super_class = PXPeopleFaceCropFetchOptions;
  v19 = [(PXPeopleFaceCropFetchOptions *)&v24 init];
  v20 = v19;
  if (v19)
  {
    [(PXPeopleFaceCropFetchOptions *)v19 _commonInitWithPerson:v12 face:v14 targetSize:width displayScale:height, a6];
  }

  return v20;
}

- (PXPeopleFaceCropFetchOptions)initWithFace:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v15.receiver = self;
  v15.super_class = PXPeopleFaceCropFetchOptions;
  v11 = [(PXPeopleFaceCropFetchOptions *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PXPeopleFaceCropFetchOptions *)v11 _commonInitWithPerson:0 face:v10 targetSize:width displayScale:height, a5];
  }

  return v12;
}

- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v15.receiver = self;
  v15.super_class = PXPeopleFaceCropFetchOptions;
  v11 = [(PXPeopleFaceCropFetchOptions *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PXPeopleFaceCropFetchOptions *)v11 _commonInitWithPerson:v10 face:0 targetSize:width displayScale:height, a5];
  }

  return v12;
}

+ (id)_deliveryModeStringForDeliveryMode:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77359F0[a3];
  }
}

+ (id)_cornerStyleStringForCornerStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77359D8[a3];
  }
}

+ (id)_cropFactorStringForCropFactor:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E77359B8[a3];
  }
}

+ (int64_t)recommendedCornerStyleForCurrentAppConfiguration
{
  if (+[PXPeopleFaceCropFetchOptions shouldUseLemonadeRoundedCorners])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end