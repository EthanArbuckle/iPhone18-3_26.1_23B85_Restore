@interface PXPeopleFaceCropFetchOptions
+ (id)_cornerStyleStringForCornerStyle:(int64_t)style;
+ (id)_cropFactorStringForCropFactor:(int64_t)factor;
+ (id)_deliveryModeStringForDeliveryMode:(int64_t)mode;
+ (int64_t)recommendedCornerStyleForCurrentAppConfiguration;
- (BOOL)areFetchParametersEqualtoFetchParametersOfOptions:(id)options;
- (CGSize)clientTargetSize;
- (CGSize)targetPixelSize;
- (NSString)cacheKey;
- (PHPhotoLibrary)photoLibrary;
- (PXPeopleFaceCropFetchOptions)initWithFace:(id)face targetSize:(CGSize)size displayScale:(double)scale;
- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)person face:(id)face targetSize:(CGSize)size displayScale:(double)scale;
- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)person targetSize:(CGSize)size displayScale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_commonInitWithPerson:(id)person face:(id)face targetSize:(CGSize)size displayScale:(double)scale;
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

  person = [(PXPeopleFaceCropFetchOptions *)self person];
  localIdentifier = [person localIdentifier];
  [v4 appendFormat:@":\nperson: %@, \n", localIdentifier];

  face = [(PXPeopleFaceCropFetchOptions *)self face];
  localIdentifier2 = [face localIdentifier];
  [v4 appendFormat:@"face: %@, \n", localIdentifier2];

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

  asset = [(PXPeopleFaceCropFetchOptions *)self asset];
  localIdentifier3 = [asset localIdentifier];
  [v4 appendFormat:@"asset: %@, \n", localIdentifier3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  person = [(PXPeopleFaceCropFetchOptions *)self person];
  if (person && (v7 = person, [(PXPeopleFaceCropFetchOptions *)self face], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [PXPeopleFaceCropFetchOptions allocWithZone:zone];
    person2 = [(PXPeopleFaceCropFetchOptions *)self person];
    face = [(PXPeopleFaceCropFetchOptions *)self face];
    [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
    v13 = v12;
    v15 = v14;
    [(PXPeopleFaceCropFetchOptions *)self displayScale];
    v17 = [(PXPeopleFaceCropFetchOptions *)v9 initWithPerson:person2 face:face targetSize:v13 displayScale:v15, v16];
  }

  else
  {
    person3 = [(PXPeopleFaceCropFetchOptions *)self person];

    if (person3)
    {
      v19 = [PXPeopleFaceCropFetchOptions allocWithZone:zone];
      person2 = [(PXPeopleFaceCropFetchOptions *)self person];
      [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
      v21 = v20;
      v23 = v22;
      [(PXPeopleFaceCropFetchOptions *)self displayScale];
      v25 = [(PXPeopleFaceCropFetchOptions *)v19 initWithPerson:person2 targetSize:v21 displayScale:v23, v24];
    }

    else
    {
      face2 = [(PXPeopleFaceCropFetchOptions *)self face];

      if (!face2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:130 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v27 = [PXPeopleFaceCropFetchOptions allocWithZone:zone];
      person2 = [(PXPeopleFaceCropFetchOptions *)self face];
      [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
      v29 = v28;
      v31 = v30;
      [(PXPeopleFaceCropFetchOptions *)self displayScale];
      v25 = [(PXPeopleFaceCropFetchOptions *)v27 initWithFace:person2 targetSize:v29 displayScale:v31, v32];
    }

    v17 = v25;
  }

  [(PXPeopleFaceCropFetchOptions *)v17 setCropFactor:[(PXPeopleFaceCropFetchOptions *)self cropFactor]];
  [(PXPeopleFaceCropFetchOptions *)v17 setCornerStyle:[(PXPeopleFaceCropFetchOptions *)self cornerStyle]];
  [(PXPeopleFaceCropFetchOptions *)v17 setWantsFlippedContentsRect:[(PXPeopleFaceCropFetchOptions *)self wantsFlippedContentsRect]];
  asset = [(PXPeopleFaceCropFetchOptions *)self asset];
  [(PXPeopleFaceCropFetchOptions *)v17 setAsset:asset];

  [(PXPeopleFaceCropFetchOptions *)v17 setDeliveryMode:[(PXPeopleFaceCropFetchOptions *)self deliveryMode]];
  [(PXPeopleFaceCropFetchOptions *)v17 setIsSynchronous:[(PXPeopleFaceCropFetchOptions *)self isSynchronous]];
  [(PXPeopleFaceCropFetchOptions *)v17 setShouldCacheResult:[(PXPeopleFaceCropFetchOptions *)self shouldCacheResult]];
  [(PXPeopleFaceCropFetchOptions *)v17 setWantsSmallFaceRect:[(PXPeopleFaceCropFetchOptions *)self wantsSmallFaceRect]];
  [(PXPeopleFaceCropFetchOptions *)v17 setUseLowMemoryMode:[(PXPeopleFaceCropFetchOptions *)self useLowMemoryMode]];
  return v17;
}

- (NSString)cacheKey
{
  person = [(PXPeopleFaceCropFetchOptions *)self person];
  face = [(PXPeopleFaceCropFetchOptions *)self face];
  if (!(person | face))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"person || face"}];
  }

  localIdentifier = [person localIdentifier];
  if (![localIdentifier length])
  {
    localIdentifier2 = [face localIdentifier];

    localIdentifier = localIdentifier2;
  }

  return localIdentifier;
}

- (PHPhotoLibrary)photoLibrary
{
  person = [(PXPeopleFaceCropFetchOptions *)self person];
  v4 = person;
  if (person)
  {
    photoLibrary = [person photoLibrary];
  }

  else
  {
    face = [(PXPeopleFaceCropFetchOptions *)self face];
    photoLibrary = [face photoLibrary];
  }

  return photoLibrary;
}

- (BOOL)areFetchParametersEqualtoFetchParametersOfOptions:(id)options
{
  optionsCopy = options;
  [(PXPeopleFaceCropFetchOptions *)self clientTargetSize];
  v6 = v5;
  v8 = v7;
  [optionsCopy clientTargetSize];
  if (v6 != v10 || v8 != v9)
  {
    goto LABEL_19;
  }

  [(PXPeopleFaceCropFetchOptions *)self displayScale];
  v13 = v12;
  [optionsCopy displayScale];
  if (v13 != v14)
  {
    goto LABEL_19;
  }

  cropFactor = [(PXPeopleFaceCropFetchOptions *)self cropFactor];
  if (cropFactor != [optionsCopy cropFactor])
  {
    goto LABEL_19;
  }

  cornerStyle = [(PXPeopleFaceCropFetchOptions *)self cornerStyle];
  if (cornerStyle != [optionsCopy cornerStyle])
  {
    goto LABEL_19;
  }

  person = [(PXPeopleFaceCropFetchOptions *)self person];
  person2 = [optionsCopy person];
  v19 = person2;
  if (person == person2)
  {
  }

  else
  {
    v20 = [person isEqual:person2];

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  face = [(PXPeopleFaceCropFetchOptions *)self face];
  face2 = [optionsCopy face];
  v23 = face2;
  if (face == face2)
  {
  }

  else
  {
    v24 = [face isEqual:face2];

    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  asset = [(PXPeopleFaceCropFetchOptions *)self asset];
  asset2 = [optionsCopy asset];
  v27 = asset2;
  if (asset == asset2)
  {

    goto LABEL_22;
  }

  v28 = [asset isEqual:asset2];

  if (v28)
  {
LABEL_22:
    wantsFlippedContentsRect = [(PXPeopleFaceCropFetchOptions *)self wantsFlippedContentsRect];
    v29 = wantsFlippedContentsRect ^ [optionsCopy wantsFlippedContentsRect] ^ 1;
    goto LABEL_20;
  }

LABEL_19:
  LOBYTE(v29) = 0;
LABEL_20:

  return v29;
}

- (void)_commonInitWithPerson:(id)person face:(id)face targetSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  personCopy = person;
  faceCopy = face;
  if (height <= 0.0)
  {
    PXAssertGetLog();
  }

  if (width <= 0.0)
  {
    PXAssertGetLog();
  }

  if (scale < 1.0)
  {
    PXAssertGetLog();
  }

  self->_clientTargetSize.width = width;
  self->_clientTargetSize.height = height;
  self->_displayScale = scale;
  self->_targetPixelSize.width = width * scale;
  self->_targetPixelSize.height = height * scale;
  self->_cropFactor = 0;
  self->_cornerStyle = +[PXPeopleFaceCropFetchOptions recommendedCornerStyleForCurrentAppConfiguration];
  self->_wantsFlippedContentsRect = 0;
  person = self->_person;
  self->_person = personCopy;
  v14 = personCopy;

  face = self->_face;
  self->_face = faceCopy;

  self->_deliveryMode = 0;
  self->_shouldCacheResult = 1;
}

- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)person face:(id)face targetSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  personCopy = person;
  faceCopy = face;
  v14 = faceCopy;
  if (personCopy)
  {
    if (faceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"face"}];

LABEL_3:
  photoLibrary = [personCopy photoLibrary];
  photoLibrary2 = [v14 photoLibrary];
  v17 = photoLibrary2;
  if (photoLibrary == photoLibrary2)
  {
  }

  else
  {
    v18 = [photoLibrary isEqual:photoLibrary2];

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
    [(PXPeopleFaceCropFetchOptions *)v19 _commonInitWithPerson:personCopy face:v14 targetSize:width displayScale:height, scale];
  }

  return v20;
}

- (PXPeopleFaceCropFetchOptions)initWithFace:(id)face targetSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  faceCopy = face;
  if (!faceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v15.receiver = self;
  v15.super_class = PXPeopleFaceCropFetchOptions;
  v11 = [(PXPeopleFaceCropFetchOptions *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PXPeopleFaceCropFetchOptions *)v11 _commonInitWithPerson:0 face:faceCopy targetSize:width displayScale:height, scale];
  }

  return v12;
}

- (PXPeopleFaceCropFetchOptions)initWithPerson:(id)person targetSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropFetchOptions.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v15.receiver = self;
  v15.super_class = PXPeopleFaceCropFetchOptions;
  v11 = [(PXPeopleFaceCropFetchOptions *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PXPeopleFaceCropFetchOptions *)v11 _commonInitWithPerson:personCopy face:0 targetSize:width displayScale:height, scale];
  }

  return v12;
}

+ (id)_deliveryModeStringForDeliveryMode:(int64_t)mode
{
  if (mode > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77359F0[mode];
  }
}

+ (id)_cornerStyleStringForCornerStyle:(int64_t)style
{
  if (style > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77359D8[style];
  }
}

+ (id)_cropFactorStringForCropFactor:(int64_t)factor
{
  if (factor > 3)
  {
    return 0;
  }

  else
  {
    return off_1E77359B8[factor];
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