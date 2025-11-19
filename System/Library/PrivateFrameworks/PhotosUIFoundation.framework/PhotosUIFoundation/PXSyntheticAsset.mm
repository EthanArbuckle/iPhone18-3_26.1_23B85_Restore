@interface PXSyntheticAsset
+ (id)syntheticAssetWithSerializableDescription:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGPoint)positionOffset;
- (CGRect)_cropAssetRectFromCropRect:(CGRect)a3;
- (CGRect)_cropRectFromCropAssetRect:(CGRect)a3;
- (CGRect)acceptableCropAssetRect;
- (CGRect)acceptableCropRect;
- (CGRect)bestCropRectForAspectRatio:(double)a3;
- (CGRect)bestCropRectForAspectRatio:(double)a3 verticalContentMode:(int64_t)a4 cropMode:(int64_t)a5;
- (CGRect)bestCropRectForAspectRatioV2:(double)a3 verticalContentMode:(int64_t)a4 cropMode:(int64_t)a5;
- (CGRect)bestPlaybackAssetRect;
- (CGRect)bestPlaybackRect;
- (CGRect)faceAreaAssetRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropAssetRect;
- (CGRect)preferredCropRect;
- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withFocusRegion:(CGRect)a4;
- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withOcclusionRegion:(CGRect)a4 andOutputCropScore:(double *)a5;
- (CGSize)size;
- (NSDate)localCreationDate;
- (NSString)serializableDescription;
- (PXSyntheticAsset)initWithCoder:(id)a3;
- (PXSyntheticAsset)initWithConfiguration:(id)a3;
- (double)aspectRatio;
- (int64_t)isContentEqualTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAcceptableCropAssetRect:(CGRect)a3;
- (void)setBestPlaybackAssetRect:(CGRect)a3;
- (void)setFaceAreaAssetRect:(CGRect)a3;
- (void)setLabel:(id)a3;
- (void)setLocalCreationDate:(id)a3;
- (void)setLocalizedGeoDescription:(id)a3;
- (void)setPreferredCropAssetRect:(CGRect)a3;
- (void)setSceneClassifications:(id)a3;
- (void)setUuid:(id)a3;
@end

@implementation PXSyntheticAsset

- (CGRect)faceAreaRect
{
  x = self->_faceAreaRect.origin.x;
  y = self->_faceAreaRect.origin.y;
  width = self->_faceAreaRect.size.width;
  height = self->_faceAreaRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bestPlaybackRect
{
  x = self->_bestPlaybackRect.origin.x;
  y = self->_bestPlaybackRect.origin.y;
  width = self->_bestPlaybackRect.size.width;
  height = self->_bestPlaybackRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)acceptableCropRect
{
  if (CGRectIsNull(self->_acceptableCropRect))
  {
    [(PXSyntheticAsset *)self preferredCropRect];
  }

  else
  {
    x = self->_acceptableCropRect.origin.x;
    y = self->_acceptableCropRect.origin.y;
    width = self->_acceptableCropRect.size.width;
    height = self->_acceptableCropRect.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)positionOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withOcclusionRegion:(CGRect)a4 andOutputCropScore:(double *)a5
{
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withFocusRegion:(CGRect)a4
{
  height = a3.height;
  width = a3.width;
  [(PXSyntheticAsset *)self faceAreaRect];
  v45 = v7;
  v9 = v8;
  v11 = v10;
  v13 = 1.0 - (v12 + v10);
  PFCropUtilitiesCoreClass = getPFCropUtilitiesCoreClass();
  PXSizeGetAspectRatio(width, height);
  v16 = v15;
  v17 = [(PXSyntheticAsset *)self pixelWidth];
  v18 = [(PXSyntheticAsset *)self pixelHeight];
  [(PXSyntheticAsset *)self preferredCropRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(PXSyntheticAsset *)self acceptableCropRect];
  [PFCropUtilitiesCoreClass bestCropRectV2ForAspectRatio:v17 withFocusRegion:v18 sourcePixelWidth:0 sourcePixelHeight:v16 sourcePreferredCropRectNormalized:a4.origin.x sourceAcceptableCropRectNormalized:a4.origin.y sourceFaceAreaRectNormalized:a4.size.width outputCropScore:{a4.size.height, v20, v22, v24, v26, v27, v28, v29, v30, v45, *&v13, v9, *&v11}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [(PXSyntheticAsset *)self size];
  v40 = v36 * v39;
  v42 = v38 * v41;
  v43 = *MEMORY[0x1E695EFF8] + v32 * v39;
  v44 = *(MEMORY[0x1E695EFF8] + 8) + v34 * v41;
  result.size.height = v42;
  result.size.width = v40;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)bestCropRectForAspectRatioV2:(double)a3 verticalContentMode:(int64_t)a4 cropMode:(int64_t)a5
{
  [(PXSyntheticAsset *)self faceAreaRect:a4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = 1.0 - (v12 + v10);
  PFCropUtilitiesCoreClass = getPFCropUtilitiesCoreClass();
  v15 = [(PXSyntheticAsset *)self pixelWidth];
  v16 = [(PXSyntheticAsset *)self pixelHeight];
  [(PXSyntheticAsset *)self preferredCropRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(PXSyntheticAsset *)self acceptableCropRect];
  [PFCropUtilitiesCoreClass bestCropRectV2ForAspectRatio:v15 withFocusRegion:v16 sourcePixelWidth:0 sourcePixelHeight:a3 sourcePreferredCropRectNormalized:*MEMORY[0x1E695F050] sourceAcceptableCropRectNormalized:*(MEMORY[0x1E695F050] + 8) sourceFaceAreaRectNormalized:*(MEMORY[0x1E695F050] + 16) outputCropScore:{*(MEMORY[0x1E695F050] + 24), v18, v20, v22, v24, v25, v26, v27, v28, v7, *&v13, v9, *&v11}];
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)bestCropRectForAspectRatio:(double)a3 verticalContentMode:(int64_t)a4 cropMode:(int64_t)a5
{
  [(PXSyntheticAsset *)self faceAreaRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = 1.0 - (v14 + v12);
  PFCropUtilitiesCoreClass = getPFCropUtilitiesCoreClass();
  v17 = [(PXSyntheticAsset *)self pixelWidth];
  v18 = [(PXSyntheticAsset *)self pixelHeight];
  [(PXSyntheticAsset *)self preferredCropRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(PXSyntheticAsset *)self acceptableCropRect];
  [PFCropUtilitiesCoreClass bestCropRectForAspectRatio:a4 verticalContentMode:a5 cropMode:v17 sourcePixelWidth:v18 sourcePixelHeight:a3 sourcePreferredCropRectNormalized:v20 sourceAcceptableCropRectNormalized:v22 sourceFaceAreaRectNormalized:{v24, v26, v27, v28, v29, v30, v9, *&v15, v11, *&v13}];
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)bestCropRectForAspectRatio:(double)a3
{
  [(PXSyntheticAsset *)self bestCropRectForAspectRatio:0 verticalContentMode:3 cropMode:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (int64_t)isContentEqualTo:(id)a3
{
  if ([(PXSyntheticAsset *)self isEqual:a3])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NSDate)localCreationDate
{
  localCreationDate = self->_localCreationDate;
  if (localCreationDate)
  {
    v3 = localCreationDate;
  }

  else
  {
    v3 = [(PXSyntheticAsset *)self creationDate];
  }

  return v3;
}

- (double)aspectRatio
{
  [(PXSyntheticAsset *)self size];
  if (v2 == 0.0 || v3 == 0.0)
  {
    return 1.0;
  }

  if (v2 == *MEMORY[0x1E69BDDB0] && v3 == *(MEMORY[0x1E69BDDB0] + 8))
  {
    return 1.0;
  }

  else
  {
    return fabs(v2 / v3);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXSyntheticAsset *)self uuid];
      v7 = [(PXSyntheticAsset *)v5 uuid];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqualToString:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXSyntheticAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = PXSyntheticAsset;
  v5 = [(PXSyntheticAsset *)&v45 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uuid);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = NSStringFromSelector(sel_size);
    [v4 decodeCGSizeForKey:v10];
    v5->_size.width = v11;
    v5->_size.height = v12;

    v13 = NSStringFromSelector(sel_preferredCropRect);
    [v4 decodeCGRectForKey:v13];
    v5->_preferredCropRect.origin.x = v14;
    v5->_preferredCropRect.origin.y = v15;
    v5->_preferredCropRect.size.width = v16;
    v5->_preferredCropRect.size.height = v17;

    v18 = NSStringFromSelector(sel_acceptableCropRect);
    [v4 decodeCGRectForKey:v18];
    v5->_acceptableCropRect.origin.x = v19;
    v5->_acceptableCropRect.origin.y = v20;
    v5->_acceptableCropRect.size.width = v21;
    v5->_acceptableCropRect.size.height = v22;

    v23 = NSStringFromSelector(sel_bestPlaybackRect);
    [v4 decodeCGRectForKey:v23];
    v5->_bestPlaybackRect.origin.x = v24;
    v5->_bestPlaybackRect.origin.y = v25;
    v5->_bestPlaybackRect.size.width = v26;
    v5->_bestPlaybackRect.size.height = v27;

    v28 = NSStringFromSelector(sel_faceAreaRect);
    [v4 decodeCGRectForKey:v28];
    v5->_faceAreaRect.origin.x = v29;
    v5->_faceAreaRect.origin.y = v30;
    v5->_faceAreaRect.size.width = v31;
    v5->_faceAreaRect.size.height = v32;

    v33 = NSStringFromSelector(sel_playbackStyle);
    v5->_playbackStyle = [v4 decodeIntegerForKey:v33];

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_label);
    v36 = [v4 decodeObjectOfClass:v34 forKey:v35];
    label = v5->_label;
    v5->_label = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_tintColor);
    v40 = [v4 decodeObjectOfClass:v38 forKey:v39];
    tintColor = v5->_tintColor;
    v5->_tintColor = v40;

    v42 = NSStringFromSelector(sel_audioScore);
    [v4 decodeFloatForKey:v42];
    v5->_audioScore = v43;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  v6 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v6];

  v7 = NSStringFromSelector(sel_size);
  [v5 encodeCGSize:v7 forKey:{self->_size.width, self->_size.height}];

  v8 = NSStringFromSelector(sel_preferredCropRect);
  [v5 encodeCGRect:v8 forKey:{self->_preferredCropRect.origin.x, self->_preferredCropRect.origin.y, self->_preferredCropRect.size.width, self->_preferredCropRect.size.height}];

  v9 = NSStringFromSelector(sel_acceptableCropRect);
  [v5 encodeCGRect:v9 forKey:{self->_acceptableCropRect.origin.x, self->_acceptableCropRect.origin.y, self->_acceptableCropRect.size.width, self->_acceptableCropRect.size.height}];

  v10 = NSStringFromSelector(sel_bestPlaybackRect);
  [v5 encodeCGRect:v10 forKey:{self->_bestPlaybackRect.origin.x, self->_bestPlaybackRect.origin.y, self->_bestPlaybackRect.size.width, self->_bestPlaybackRect.size.height}];

  v11 = NSStringFromSelector(sel_faceAreaRect);
  [v5 encodeCGRect:v11 forKey:{self->_faceAreaRect.origin.x, self->_faceAreaRect.origin.y, self->_faceAreaRect.size.width, self->_faceAreaRect.size.height}];

  playbackStyle = self->_playbackStyle;
  v13 = NSStringFromSelector(sel_playbackStyle);
  [v5 encodeInteger:playbackStyle forKey:v13];

  label = self->_label;
  v15 = NSStringFromSelector(sel_label);
  [v5 encodeObject:label forKey:v15];

  tintColor = self->_tintColor;
  v17 = NSStringFromSelector(sel_tintColor);
  [v5 encodeObject:tintColor forKey:v17];

  audioScore = self->_audioScore;
  v20 = NSStringFromSelector(sel_audioScore);
  *&v19 = audioScore;
  [v5 encodeFloat:v20 forKey:v19];
}

- (void)setLocalCreationDate:(id)a3
{
  v4 = [a3 copy];
  localCreationDate = self->_localCreationDate;
  self->_localCreationDate = v4;

  MEMORY[0x1EEE66BB8](v4, localCreationDate);
}

- (void)setLocalizedGeoDescription:(id)a3
{
  v4 = [a3 copy];
  localizedGeoDescription = self->_localizedGeoDescription;
  self->_localizedGeoDescription = v4;

  MEMORY[0x1EEE66BB8](v4, localizedGeoDescription);
}

- (void)setSceneClassifications:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  sceneClassifications = self->_sceneClassifications;
  self->_sceneClassifications = v5;

  v7 = [v4 objectsPassingTest:&__block_literal_global_16];

  self->_hasPeopleSceneMidOrGreaterConfidence = [v7 count] != 0;
}

BOOL __44__PXSyntheticAsset_setSceneClassifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 sceneIdentifier] == 881)
  {
    [v2 confidence];
    v4 = v3 >= 0.5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)serializableDescription
{
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSyntheticAsset.m" lineNumber:187 description:{@"failed to archive data: %@", v5}];
  }

  v6 = [v4 base64EncodedStringWithOptions:0];

  return v6;
}

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8](v4, label);
}

- (CGRect)_cropRectFromCropAssetRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(PXSyntheticAsset *)self size];
    v14 = v13;
    v8 = x - *MEMORY[0x1E695EFF8];
    v11 = 0.0;
    v10 = 0.0;
    if (v14 != 0.0)
    {
      v8 = v8 / v14;
      v10 = width / v14;
    }

    v15 = y - *(MEMORY[0x1E695EFF8] + 8);
    if (v12 != 0.0)
    {
      v15 = v15 / v12;
      v11 = height / v12;
    }

    v9 = 1.0 - (v15 + v11);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_cropAssetRectFromCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(PXSyntheticAsset *)self size];
    v13 = v12;
    v15 = v14;
    v8 = *MEMORY[0x1E695EFF8] + x * v12;
    v9 = *(MEMORY[0x1E695EFF8] + 8) + (1.0 - (y + height)) * v14;
    v10 = width * v13;
    v11 = height * v15;
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setFaceAreaAssetRect:(CGRect)a3
{
  [(PXSyntheticAsset *)self _cropRectFromCropAssetRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(PXSyntheticAsset *)self setFaceAreaRect:?];
}

- (void)setBestPlaybackAssetRect:(CGRect)a3
{
  [(PXSyntheticAsset *)self _cropRectFromCropAssetRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(PXSyntheticAsset *)self setBestPlaybackRect:?];
}

- (void)setAcceptableCropAssetRect:(CGRect)a3
{
  [(PXSyntheticAsset *)self _cropRectFromCropAssetRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(PXSyntheticAsset *)self setAcceptableCropRect:?];
}

- (void)setPreferredCropAssetRect:(CGRect)a3
{
  [(PXSyntheticAsset *)self _cropRectFromCropAssetRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(PXSyntheticAsset *)self setPreferredCropRect:?];
}

- (CGRect)faceAreaAssetRect
{
  [(PXSyntheticAsset *)self faceAreaRect];

  [(PXSyntheticAsset *)self _cropAssetRectFromCropRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)bestPlaybackAssetRect
{
  [(PXSyntheticAsset *)self bestPlaybackRect];

  [(PXSyntheticAsset *)self _cropAssetRectFromCropRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)acceptableCropAssetRect
{
  [(PXSyntheticAsset *)self acceptableCropRect];

  [(PXSyntheticAsset *)self _cropAssetRectFromCropRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)preferredCropAssetRect
{
  [(PXSyntheticAsset *)self preferredCropRect];

  [(PXSyntheticAsset *)self _cropAssetRectFromCropRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setUuid:(id)a3
{
  v4 = [a3 copy];
  uuid = self->_uuid;
  self->_uuid = v4;

  MEMORY[0x1EEE66BB8](v4, uuid);
}

- (PXSyntheticAsset)initWithConfiguration:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXSyntheticAsset;
  v5 = [(PXSyntheticAsset *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    v8 = *(v5 + 2);
    *(v5 + 2) = v7;

    v9 = MEMORY[0x1E695F050];
    *(v5 + 120) = vdupq_n_s64(0x407F400000000000uLL);
    v10 = *v9;
    v11 = v9[1];
    *(v5 + 136) = *v9;
    *(v5 + 152) = v11;
    *(v5 + 168) = v10;
    *(v5 + 184) = v11;
    *(v5 + 200) = v10;
    *(v5 + 216) = v11;
    *(v5 + 232) = v10;
    *(v5 + 248) = v11;
    *(v5 + 3) = 1;
    *(v5 + 3) = xmmword_1B40724C0;
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = *(v5 + 8);
    *(v5 + 8) = v12;

    *(v5 + 3) = 1056964608;
    v14 = [MEMORY[0x1E69DC888] grayColor];
    v15 = *(v5 + 5);
    *(v5 + 5) = v14;

    v4[2](v4, v5);
    v16 = [v5 uuid];
    *(v5 + 14) = [v16 hash];
  }

  return v5;
}

+ (id)syntheticAssetWithSerializableDescription:(id)a3
{
  v5 = MEMORY[0x1E695DEF0];
  v6 = a3;
  v7 = [[v5 alloc] initWithBase64EncodedString:v6 options:0];

  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v12];
  v9 = v12;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXSyntheticAsset.m" lineNumber:180 description:{@"failed to unarchive data: %@", v9}];
  }

  return v8;
}

@end