@interface PXOneUpSharePlayAsset
- (BOOL)isEqual:(id)a3;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (Class)defaultImageProviderClass;
- (NSString)debugDescription;
- (PXOneUpSharePlayAsset)initWithUUID:(id)a3 mediaType:(int64_t)a4 mediaSubtypes:(unint64_t)a5 spatialMediaType:(signed __int16)a6 isSpatialPresentation:(BOOL)a7 playbackStyle:(int64_t)a8 pixelWidth:(unint64_t)a9 pixelHeight:(unint64_t)a10 duration:(double)a11 hdrGain:(id)a12 focalLength:(id)a13 focalLengthIn35mm:(id)a14 photoIrisStillDisplayTime:(id *)a15 photoIrisVideoDuration:(id *)a16 localizedGeoDescription:(id)a17 creationDate:(id)a18;
- (double)aspectRatio;
- (void)setPhotoIrisStillDisplayTime:(id *)a3;
- (void)setPhotoIrisVideoDuration:(id *)a3;
@end

@implementation PXOneUpSharePlayAsset

- (void)setPhotoIrisVideoDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_photoIrisVideoDuration.epoch = a3->var3;
  *&self->_photoIrisVideoDuration.value = v3;
}

- (void)setPhotoIrisStillDisplayTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_photoIrisStillDisplayTime.epoch = a3->var3;
  *&self->_photoIrisStillDisplayTime.value = v3;
}

- (double)aspectRatio
{
  v3 = [(PXOneUpSharePlayAsset *)self pixelWidth];
  v4 = [(PXOneUpSharePlayAsset *)self pixelHeight];
  if (v3 && v4 && ((v5 = v4, *MEMORY[0x1E69BDDB0] == v3) ? (v6 = *(MEMORY[0x1E69BDDB0] + 8) == v5) : (v6 = 0), !v6))
  {
    return fabs(v3 / v5);
  }

  else
  {
    return 1.0;
  }
}

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E69BDDA8];
  v3 = *(MEMORY[0x1E69BDDA8] + 8);
  v4 = *(MEMORY[0x1E69BDDA8] + 16);
  v5 = *(MEMORY[0x1E69BDDA8] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)faceAreaRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E69BDDA8];
  v3 = *(MEMORY[0x1E69BDDA8] + 8);
  v4 = *(MEMORY[0x1E69BDDA8] + 16);
  v5 = *(MEMORY[0x1E69BDDA8] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (Class)defaultImageProviderClass
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXOneUpSharePlayAsset.m" lineNumber:116 description:@"Not Supported"];

  return 0;
}

- (NSString)debugDescription
{
  v2 = [(PXOneUpSharePlayAsset *)self uuid];
  v3 = [v2 debugDescription];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXOneUpSharePlayAsset *)self uuid];
      v6 = [(PXOneUpSharePlayAsset *)v4 uuid];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXOneUpSharePlayAsset)initWithUUID:(id)a3 mediaType:(int64_t)a4 mediaSubtypes:(unint64_t)a5 spatialMediaType:(signed __int16)a6 isSpatialPresentation:(BOOL)a7 playbackStyle:(int64_t)a8 pixelWidth:(unint64_t)a9 pixelHeight:(unint64_t)a10 duration:(double)a11 hdrGain:(id)a12 focalLength:(id)a13 focalLengthIn35mm:(id)a14 photoIrisStillDisplayTime:(id *)a15 photoIrisVideoDuration:(id *)a16 localizedGeoDescription:(id)a17 creationDate:(id)a18
{
  v32 = a6;
  v33 = a7;
  v21 = a3;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a17;
  v26 = a18;
  v35.receiver = self;
  v35.super_class = PXOneUpSharePlayAsset;
  v27 = [(PXOneUpSharePlayAsset *)&v35 init];
  v28 = v27;
  if (v27)
  {
    [(PXOneUpSharePlayAsset *)v27 setUuid:v21];
    [(PXOneUpSharePlayAsset *)v28 setMediaType:a4];
    [(PXOneUpSharePlayAsset *)v28 setMediaSubtypes:a5];
    [(PXOneUpSharePlayAsset *)v28 setSpatialMediaType:v32];
    [(PXOneUpSharePlayAsset *)v28 setIsSpatialPresentation:v33];
    [(PXOneUpSharePlayAsset *)v28 setPlaybackStyle:a8];
    [(PXOneUpSharePlayAsset *)v28 setPixelWidth:a9];
    [(PXOneUpSharePlayAsset *)v28 setPixelHeight:a10];
    [(PXOneUpSharePlayAsset *)v28 setDuration:a11];
    [(PXOneUpSharePlayAsset *)v28 setHdrGain:v22];
    [(PXOneUpSharePlayAsset *)v28 setFocalLength:v23];
    [(PXOneUpSharePlayAsset *)v28 setFocalLengthIn35mm:v24];
    v34 = *a15;
    [(PXOneUpSharePlayAsset *)v28 setPhotoIrisStillDisplayTime:&v34];
    v34 = *a16;
    [(PXOneUpSharePlayAsset *)v28 setPhotoIrisVideoDuration:&v34];
    [(PXOneUpSharePlayAsset *)v28 setLocalizedGeoDescription:v25];
    [(PXOneUpSharePlayAsset *)v28 setCreationDate:v26];
  }

  return v28;
}

@end