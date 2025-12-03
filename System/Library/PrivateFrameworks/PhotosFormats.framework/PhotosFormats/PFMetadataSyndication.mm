@interface PFMetadataSyndication
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)videoComplementDuration;
- (BOOL)configureWithMetadataPlist:(id)plist;
- (BOOL)flashFired;
- (BOOL)hasHDRGainMap;
- (BOOL)hasISOGainMap;
- (BOOL)hasSmartStyle;
- (BOOL)hasSpatialAudio;
- (BOOL)isAlchemist;
- (BOOL)isAnimatedImage;
- (BOOL)isCinematicVideo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFrontFacingCamera;
- (BOOL)isHDR;
- (BOOL)isImage;
- (BOOL)isMovie;
- (BOOL)isPhotoBooth;
- (BOOL)isProRes;
- (BOOL)isThreeImageStereoHEIC;
- (BOOL)isTimelapse;
- (PFMetadataSyndication)initWithSyndicationProperties:(id)properties;
- (id)_makeDateTimeProperties;
- (id)_timeZoneOffsetStringFromTimeZoneOffsetSeconds:(id)seconds;
- (id)burstUuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hdrGain;
- (id)plistForEncoding;
- (int64_t)cameraUsedForCapture;
- (int64_t)customRendered;
- (int64_t)orientation;
- (signed)smartStyleCast;
- (signed)smartStyleVideoCastValue;
- (unint64_t)fileSize;
- (unint64_t)photoCaptureFlags;
- (unint64_t)photoProcessingFlags;
- (unsigned)firstVideoTrackCodec;
@end

@implementation PFMetadataSyndication

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = PFMetadataSyndication;
  if (![(PFMetadata *)&v8 isEqual:equalCopy]|| (syndicationProperties = self->_syndicationProperties, (syndicationProperties != 0) == (equalCopy[22] == 0)))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSDictionary *)syndicationProperties isEqual:?];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PFMetadataSyndication;
  v4 = [(PFMetadata *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 22, self->_syndicationProperties);
  return v4;
}

- (id)plistForEncoding
{
  v6.receiver = self;
  v6.super_class = PFMetadataSyndication;
  plistForEncoding = [(PFMetadata *)&v6 plistForEncoding];
  v4 = [plistForEncoding mutableCopy];

  [v4 setObject:self->_syndicationProperties forKeyedSubscript:PFMetadataPlistSyndicationProperties];

  return v4;
}

- (id)_timeZoneOffsetStringFromTimeZoneOffsetSeconds:(id)seconds
{
  if (seconds)
  {
    [seconds doubleValue];
    if (v4 <= 0.0)
    {
      v5 = @"-";
    }

    else
    {
      v5 = @"+";
    }

    __y = 0.0;
    v6 = modf(v4 / 3600.0, &__y);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%02lu:%02lu", v5, fabs(__y), (v6 * 60.0)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_makeDateTimeProperties
{
  v21[1] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"creationDate"];
  v5 = v4;
  if (v4)
  {
    v6 = PFStringFromDate(v4);
    if (v6)
    {
      v7 = *MEMORY[0x1E696D998] == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      [dictionary setObject:v6 forKeyedSubscript:?];
    }
  }

  v8 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"timeZoneOffset"];
  v9 = [(PFMetadataSyndication *)self _timeZoneOffsetStringFromTimeZoneOffsetSeconds:v8];
  if (v9)
  {
    v10 = *MEMORY[0x1E696DAA0] == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [dictionary setObject:v9 forKeyedSubscript:?];
  }

  v11 = *MEMORY[0x1E696DB28];
  v12 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696DB28]];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E696AEC0];
    [v12 doubleValue];
    v16 = [v14 stringWithFormat:@"%03g", v15];
    v17 = [v16 substringFromIndex:2];

    if (v11 && v17)
    {
      [dictionary setObject:v17 forKeyedSubscript:v11];
    }
  }

  v20 = *MEMORY[0x1E696D9B0];
  v21[0] = dictionary;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v18;
}

- (BOOL)isThreeImageStereoHEIC
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isThreeImageStereoHEIC"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAlchemist
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isAlchemist"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasSpatialAudio
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasSpatialAudio"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (signed)smartStyleVideoCastValue
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"smartStyleVideoCastValue"];
  shortValue = [v2 shortValue];

  return shortValue;
}

- (BOOL)hasSmartStyle
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasSmartStyle"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (signed)smartStyleCast
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"smartStyleCast"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)isFrontFacingCamera
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"kPFImagePropertyFrontFacingCamera"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAnimatedImage
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isAnimatedImage"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasISOGainMap
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasISOGainMap"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHDRGainMap
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasHDRGainMap"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)hdrGain
{
  v3 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hdrGain"];
  v6.receiver = self;
  v6.super_class = PFMetadataSyndication;
  v4 = [(PFMetadata *)&v6 hdrGainFromValue:v3];

  return v4;
}

- (BOOL)isHDR
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isHDR"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPhotoBooth
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isPhotoBooth"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)fileSize
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)isProRes
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isProRes"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isTimelapse
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"Time-lapse"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unsigned)firstVideoTrackCodec
{
  firstVideoTrackCodecString = [(PFMetadataSyndication *)self firstVideoTrackCodecString];
  v3 = [PFMediaUtilities fourCharCodeFromString:firstVideoTrackCodecString];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  v9 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"videoDurationValue"];
  v5 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"videoDurationTimescale"];
  if (v9)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v7 + 16);
  }

  else
  {
    CMTimeMake(retstr, [v9 longLongValue], objc_msgSend(v5, "intValue"));
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageDisplayTime
{
  v9 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"imageDisplayTime"];
  v5 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"imageDisplayTimescale"];
  if (v9)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v7 + 16);
  }

  else
  {
    CMTimeMake(retstr, [v9 longLongValue], objc_msgSend(v5, "intValue"));
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)videoComplementDuration
{
  v9 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"videoComplementDuration"];
  v5 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"videoComplementTimescale"];
  if (v9)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v7 + 16);
  }

  else
  {
    CMTimeMake(retstr, [v9 longLongValue], objc_msgSend(v5, "intValue"));
  }

  return result;
}

- (BOOL)isCinematicVideo
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"videoContainsCinematicData"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)burstUuid
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"burstUuid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uUIDString = [v2 UUIDString];
  }

  else
  {
    uUIDString = v2;
  }

  v4 = uUIDString;

  return v4;
}

- (BOOL)flashFired
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"flashFired"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)customRendered
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696D988]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)cameraUsedForCapture
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"cameraUsedForCapture"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)photoCaptureFlags
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"stillImageCaptureFlags"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)photoProcessingFlags
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"photoProcessingFlags"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)orientation
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isMovie
{
  contentType = [(PFMetadata *)self contentType];
  v3 = [contentType conformsToType:*MEMORY[0x1E6982EE8]];

  return v3;
}

- (BOOL)isImage
{
  contentType = [(PFMetadata *)self contentType];
  v3 = [contentType conformsToType:*MEMORY[0x1E6982E30]];

  return v3;
}

- (BOOL)configureWithMetadataPlist:(id)plist
{
  plistCopy = plist;
  v9.receiver = self;
  v9.super_class = PFMetadataSyndication;
  v5 = [(PFMetadata *)&v9 configureWithMetadataPlist:plistCopy];
  if (v5)
  {
    v6 = [plistCopy objectForKeyedSubscript:PFMetadataPlistSyndicationProperties];
    syndicationProperties = self->_syndicationProperties;
    self->_syndicationProperties = v6;
  }

  return v5;
}

- (PFMetadataSyndication)initWithSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = propertiesCopy;
  if (propertiesCopy)
  {
    v7 = [propertiesCopy objectForKeyedSubscript:@"uti"];
    v8 = [PFUniformTypeUtilities typeWithIdentifier:v7];
    v9 = objc_alloc_init(PFTimeZoneLookup);
    v13.receiver = self;
    v13.super_class = PFMetadataSyndication;
    v10 = [(PFMetadata *)&v13 initWithContentType:v8 options:12 timeZoneLookup:v9];

    if (v10)
    {
      objc_storeStrong(&v10->_syndicationProperties, properties);
      [(PFMetadata *)v10 setSourceType:10];
    }

    self = v10;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end