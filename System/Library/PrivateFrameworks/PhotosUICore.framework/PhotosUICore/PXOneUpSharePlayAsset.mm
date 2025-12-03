@interface PXOneUpSharePlayAsset
- (BOOL)isEqual:(id)equal;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (Class)defaultImageProviderClass;
- (NSString)debugDescription;
- (PXOneUpSharePlayAsset)initWithUUID:(id)d mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes spatialMediaType:(signed __int16)mediaType isSpatialPresentation:(BOOL)presentation playbackStyle:(int64_t)style pixelWidth:(unint64_t)width pixelHeight:(unint64_t)self0 duration:(double)self1 hdrGain:(id)self2 focalLength:(id)self3 focalLengthIn35mm:(id)self4 photoIrisStillDisplayTime:(id *)self5 photoIrisVideoDuration:(id *)self6 localizedGeoDescription:(id)self7 creationDate:(id)self8;
- (double)aspectRatio;
- (void)setPhotoIrisStillDisplayTime:(id *)time;
- (void)setPhotoIrisVideoDuration:(id *)duration;
@end

@implementation PXOneUpSharePlayAsset

- (void)setPhotoIrisVideoDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_photoIrisVideoDuration.epoch = duration->var3;
  *&self->_photoIrisVideoDuration.value = v3;
}

- (void)setPhotoIrisStillDisplayTime:(id *)time
{
  v3 = *&time->var0;
  self->_photoIrisStillDisplayTime.epoch = time->var3;
  *&self->_photoIrisStillDisplayTime.value = v3;
}

- (double)aspectRatio
{
  pixelWidth = [(PXOneUpSharePlayAsset *)self pixelWidth];
  pixelHeight = [(PXOneUpSharePlayAsset *)self pixelHeight];
  if (pixelWidth && pixelHeight && ((v5 = pixelHeight, *MEMORY[0x1E69BDDB0] == pixelWidth) ? (v6 = *(MEMORY[0x1E69BDDB0] + 8) == v5) : (v6 = 0), !v6))
  {
    return fabs(pixelWidth / v5);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXOneUpSharePlayAsset.m" lineNumber:116 description:@"Not Supported"];

  return 0;
}

- (NSString)debugDescription
{
  uuid = [(PXOneUpSharePlayAsset *)self uuid];
  v3 = [uuid debugDescription];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(PXOneUpSharePlayAsset *)self uuid];
      uuid2 = [(PXOneUpSharePlayAsset *)equalCopy uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXOneUpSharePlayAsset)initWithUUID:(id)d mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes spatialMediaType:(signed __int16)mediaType isSpatialPresentation:(BOOL)presentation playbackStyle:(int64_t)style pixelWidth:(unint64_t)width pixelHeight:(unint64_t)self0 duration:(double)self1 hdrGain:(id)self2 focalLength:(id)self3 focalLengthIn35mm:(id)self4 photoIrisStillDisplayTime:(id *)self5 photoIrisVideoDuration:(id *)self6 localizedGeoDescription:(id)self7 creationDate:(id)self8
{
  mediaTypeCopy = mediaType;
  presentationCopy = presentation;
  dCopy = d;
  gainCopy = gain;
  lengthCopy = length;
  in35mmCopy = in35mm;
  descriptionCopy = description;
  dateCopy = date;
  v35.receiver = self;
  v35.super_class = PXOneUpSharePlayAsset;
  v27 = [(PXOneUpSharePlayAsset *)&v35 init];
  v28 = v27;
  if (v27)
  {
    [(PXOneUpSharePlayAsset *)v27 setUuid:dCopy];
    [(PXOneUpSharePlayAsset *)v28 setMediaType:type];
    [(PXOneUpSharePlayAsset *)v28 setMediaSubtypes:subtypes];
    [(PXOneUpSharePlayAsset *)v28 setSpatialMediaType:mediaTypeCopy];
    [(PXOneUpSharePlayAsset *)v28 setIsSpatialPresentation:presentationCopy];
    [(PXOneUpSharePlayAsset *)v28 setPlaybackStyle:style];
    [(PXOneUpSharePlayAsset *)v28 setPixelWidth:width];
    [(PXOneUpSharePlayAsset *)v28 setPixelHeight:height];
    [(PXOneUpSharePlayAsset *)v28 setDuration:duration];
    [(PXOneUpSharePlayAsset *)v28 setHdrGain:gainCopy];
    [(PXOneUpSharePlayAsset *)v28 setFocalLength:lengthCopy];
    [(PXOneUpSharePlayAsset *)v28 setFocalLengthIn35mm:in35mmCopy];
    v34 = *time;
    [(PXOneUpSharePlayAsset *)v28 setPhotoIrisStillDisplayTime:&v34];
    v34 = *videoDuration;
    [(PXOneUpSharePlayAsset *)v28 setPhotoIrisVideoDuration:&v34];
    [(PXOneUpSharePlayAsset *)v28 setLocalizedGeoDescription:descriptionCopy];
    [(PXOneUpSharePlayAsset *)v28 setCreationDate:dateCopy];
  }

  return v28;
}

@end