@interface PFMetadataSyndication
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)videoComplementDuration;
- (BOOL)configureWithMetadataPlist:(id)a3;
- (BOOL)flashFired;
- (BOOL)hasHDRGainMap;
- (BOOL)hasISOGainMap;
- (BOOL)hasSmartStyle;
- (BOOL)hasSpatialAudio;
- (BOOL)isAlchemist;
- (BOOL)isAnimatedImage;
- (BOOL)isCinematicVideo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFrontFacingCamera;
- (BOOL)isHDR;
- (BOOL)isImage;
- (BOOL)isMovie;
- (BOOL)isPhotoBooth;
- (BOOL)isProRes;
- (BOOL)isThreeImageStereoHEIC;
- (BOOL)isTimelapse;
- (PFMetadataSyndication)initWithSyndicationProperties:(id)a3;
- (id)_makeDateTimeProperties;
- (id)_timeZoneOffsetStringFromTimeZoneOffsetSeconds:(id)a3;
- (id)burstUuid;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PFMetadataSyndication;
  if (![(PFMetadata *)&v8 isEqual:v4]|| (syndicationProperties = self->_syndicationProperties, (syndicationProperties != 0) == (v4[22] == 0)))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSDictionary *)syndicationProperties isEqual:?];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PFMetadataSyndication;
  v4 = [(PFMetadata *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 22, self->_syndicationProperties);
  return v4;
}

- (id)plistForEncoding
{
  v6.receiver = self;
  v6.super_class = PFMetadataSyndication;
  v3 = [(PFMetadata *)&v6 plistForEncoding];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_syndicationProperties forKeyedSubscript:PFMetadataPlistSyndicationProperties];

  return v4;
}

- (id)_timeZoneOffsetStringFromTimeZoneOffsetSeconds:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
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
      [v3 setObject:v6 forKeyedSubscript:?];
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
    [v3 setObject:v9 forKeyedSubscript:?];
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
      [v3 setObject:v17 forKeyedSubscript:v11];
    }
  }

  v20 = *MEMORY[0x1E696D9B0];
  v21[0] = v3;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v18;
}

- (BOOL)isThreeImageStereoHEIC
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isThreeImageStereoHEIC"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAlchemist
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isAlchemist"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasSpatialAudio
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasSpatialAudio"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (signed)smartStyleVideoCastValue
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"smartStyleVideoCastValue"];
  v3 = [v2 shortValue];

  return v3;
}

- (BOOL)hasSmartStyle
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasSmartStyle"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (signed)smartStyleCast
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"smartStyleCast"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isFrontFacingCamera
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"kPFImagePropertyFrontFacingCamera"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAnimatedImage
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isAnimatedImage"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasISOGainMap
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasISOGainMap"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasHDRGainMap
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"hasHDRGainMap"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPhotoBooth
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isPhotoBooth"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)fileSize
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (BOOL)isProRes
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"isProRes"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isTimelapse
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"Time-lapse"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unsigned)firstVideoTrackCodec
{
  v2 = [(PFMetadataSyndication *)self firstVideoTrackCodecString];
  v3 = [PFMediaUtilities fourCharCodeFromString:v2];

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
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)burstUuid
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"burstUuid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 UUIDString];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

- (BOOL)flashFired
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"flashFired"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)customRendered
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696D988]];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)cameraUsedForCapture
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"cameraUsedForCapture"];
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)photoCaptureFlags
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"stillImageCaptureFlags"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)photoProcessingFlags
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:@"photoProcessingFlags"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (int64_t)orientation
{
  v2 = [(NSDictionary *)self->_syndicationProperties objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isMovie
{
  v2 = [(PFMetadata *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982EE8]];

  return v3;
}

- (BOOL)isImage
{
  v2 = [(PFMetadata *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982E30]];

  return v3;
}

- (BOOL)configureWithMetadataPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFMetadataSyndication;
  v5 = [(PFMetadata *)&v9 configureWithMetadataPlist:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:PFMetadataPlistSyndicationProperties];
    syndicationProperties = self->_syndicationProperties;
    self->_syndicationProperties = v6;
  }

  return v5;
}

- (PFMetadataSyndication)initWithSyndicationProperties:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"uti"];
    v8 = [PFUniformTypeUtilities typeWithIdentifier:v7];
    v9 = objc_alloc_init(PFTimeZoneLookup);
    v13.receiver = self;
    v13.super_class = PFMetadataSyndication;
    v10 = [(PFMetadata *)&v13 initWithContentType:v8 options:12 timeZoneLookup:v9];

    if (v10)
    {
      objc_storeStrong(&v10->_syndicationProperties, a3);
      [(PFMetadata *)v10 setSourceType:10];
    }

    self = v10;

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end