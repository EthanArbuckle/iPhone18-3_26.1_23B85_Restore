@interface PFMetadataLegacyMovieProperties
- (BOOL)configureWithMetadataPlist:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSloMo;
- (BOOL)isTimelapse;
- (PFMetadataLegacyMovieProperties)initWithAVProxyData:(id)a3 timeZoneLookup:(id)a4;
- (PFMetadataLegacyMovieProperties)initWithMetadataPlist:(id)a3 timeZoneLookup:(id)a4;
- (id)_firstAudioTrack;
- (id)_firstVideoTrack;
- (id)_makeDateTimeProperties;
- (id)_makeGPSProperties;
- (id)_makeGeometryProperties;
- (id)audioDataRate;
- (id)audioSampleRate;
- (id)audioTrackFormat;
- (id)audioTrackFormatFlags;
- (id)cameraMake;
- (id)cameraModel;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nominalFrameRate;
- (id)plistForEncoding;
- (id)software;
- (id)videoCodecName;
- (id)videoDataRate;
- (opaqueCMFormatDescription)_formatDescription;
- (void)_enumerateTracksOfType:(unsigned int)a3 withBlock:(id)a4;
@end

@implementation PFMetadataLegacyMovieProperties

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PFMetadataLegacyMovieProperties;
  if (![(PFMetadata *)&v8 isEqual:v4]|| (audioVideoProperties = self->_audioVideoProperties, (audioVideoProperties != 0) == (v4[22] == 0)))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSDictionary *)audioVideoProperties isEqual:?];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PFMetadataLegacyMovieProperties;
  v4 = [(PFMetadata *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 22, self->_audioVideoProperties);
  return v4;
}

- (id)plistForEncoding
{
  v6.receiver = self;
  v6.super_class = PFMetadataLegacyMovieProperties;
  v3 = [(PFMetadata *)&v6 plistForEncoding];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_audioVideoProperties forKeyedSubscript:PFMetadataPlistAudioVideoProperties];

  return v4;
}

- (id)_makeGPSProperties
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_audioVideoProperties objectForKeyedSubscript:@"commonMetadata"];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6987698]];

  if (v3)
  {
    v8 = 0.0;
    v9 = 0.0;
    v4 = 0;
    if ([PFMetadataMovie parseISO6709String:v3 outLatitude:&v9 outLongitude:&v8])
    {
      v10[0] = *MEMORY[0x1E696DC18];
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v11[0] = v5;
      v10[1] = *MEMORY[0x1E696DC28];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v11[1] = v6;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (opaqueCMFormatDescription)_formatDescription
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstVideoTrack];
  v3 = [v2 formatDescriptions];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_enumerateTracksOfType:(unsigned int)a3 withBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E6987608];
  if (a3 != 1986618469)
  {
    v7 = MEMORY[0x1E69875A0];
  }

  v8 = *v7;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSDictionary *)self->_audioVideoProperties objectForKeyedSubscript:@"tracks", 0];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:@"mediaType"];
        if ([v15 isEqualToString:v8] && (v6[2](v6, v14) & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)_firstAudioTrack
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4152;
  v9 = __Block_byref_object_dispose__4153;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PFMetadataLegacyMovieProperties__firstAudioTrack__block_invoke;
  v4[3] = &unk_1E7B64FF0;
  v4[4] = &v5;
  [(PFMetadataLegacyMovieProperties *)self _enumerateTracksOfType:1936684398 withBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_firstVideoTrack
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4152;
  v9 = __Block_byref_object_dispose__4153;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PFMetadataLegacyMovieProperties__firstVideoTrack__block_invoke;
  v4[3] = &unk_1E7B64FF0;
  v4[4] = &v5;
  [(PFMetadataLegacyMovieProperties *)self _enumerateTracksOfType:1986618469 withBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_makeGeometryProperties
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstVideoTrack];
  v3 = [v2 objectForKeyedSubscript:@"naturalSize"];

  size.width = 0.0;
  size.height = 0.0;
  v4 = 0;
  if (CGSizeMakeWithDictionaryRepresentation(v3, &size))
  {
    v9[0] = *MEMORY[0x1E696DED8];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:size.width];
    v10[0] = v5;
    v9[1] = *MEMORY[0x1E696DEC8];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:size.height];
    v9[2] = *MEMORY[0x1E696DE78];
    v10[1] = v6;
    v10[2] = &unk_1F2AAB3C8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  return v4;
}

- (id)_makeDateTimeProperties
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_audioVideoProperties objectForKeyedSubscript:@"commonMetadata"];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6987688]];

  if (v3)
  {
    v4 = *MEMORY[0x1E696D9B0];
    v9 = v3;
    v10 = v4;
    v8 = *MEMORY[0x1E696D998];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isTimelapse
{
  v2 = [(PFMetadata *)self captureMode];
  v3 = [v2 isEqualToString:@"Time-lapse"];

  return v3;
}

- (BOOL)isSloMo
{
  v2 = [(PFMetadataLegacyMovieProperties *)self nominalFrameRate];
  [v2 doubleValue];
  *&v3 = v3;
  [PFVideoAdjustments defaultSlowMotionRateForNominalFrameRate:v3];
  v5 = v4 < 1.0;

  return v5;
}

- (id)videoCodecName
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstVideoTrack];
  v3 = [v2 objectForKeyedSubscript:@"formatDescriptions"];
  v4 = [v3 firstObject];

  v5 = [v4 objectForKeyedSubscript:@"videoTrackFormatName"];

  return v5;
}

- (id)audioTrackFormatFlags
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstAudioTrack];
  v3 = [v2 objectForKeyedSubscript:@"formatDescriptions"];
  v4 = [v3 objectAtIndex:0];

  v5 = [v4 objectForKeyedSubscript:@"audioTrackFormatFlags"];

  return v5;
}

- (id)audioTrackFormat
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstAudioTrack];
  v3 = [v2 objectForKeyedSubscript:@"formatDescriptions"];
  v4 = [v3 objectAtIndex:0];

  v5 = [v4 objectForKeyedSubscript:@"audioTrackFormat"];

  return v5;
}

- (id)audioSampleRate
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstAudioTrack];
  v3 = [v2 objectForKeyedSubscript:@"formatDescriptions"];
  v4 = [v3 objectAtIndex:0];

  v5 = [v4 objectForKeyedSubscript:@"audioTrackSampleRate"];

  return v5;
}

- (id)audioDataRate
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstAudioTrack];
  v3 = [v2 objectForKeyedSubscript:@"estimatedDataRate"];

  return v3;
}

- (id)videoDataRate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PFMetadataLegacyMovieProperties_videoDataRate__block_invoke;
  v4[3] = &unk_1E7B64FC8;
  v4[4] = &v5;
  [(PFMetadataLegacyMovieProperties *)self _enumerateTracksOfType:1986618469 withBlock:v4];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:v6[3] / 1000.0];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __48__PFMetadataLegacyMovieProperties_videoDataRate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"estimatedDataRate"];
  [v3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);

  return 1;
}

- (id)nominalFrameRate
{
  v2 = [(PFMetadataLegacyMovieProperties *)self _firstVideoTrack];
  v3 = [v2 objectForKeyedSubscript:@"nominalFrameRate"];

  return v3;
}

- (id)software
{
  v2 = [(NSDictionary *)self->_audioVideoProperties objectForKeyedSubscript:@"commonMetadata"];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69876B0]];

  return v3;
}

- (id)cameraModel
{
  v2 = [(NSDictionary *)self->_audioVideoProperties objectForKeyedSubscript:@"commonMetadata"];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69876A8]];

  return v3;
}

- (id)cameraMake
{
  v2 = [(NSDictionary *)self->_audioVideoProperties objectForKeyedSubscript:@"commonMetadata"];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69876A0]];

  return v3;
}

- (BOOL)configureWithMetadataPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFMetadataLegacyMovieProperties;
  v5 = [(PFMetadata *)&v9 configureWithMetadataPlist:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:PFMetadataPlistAudioVideoProperties];
    audioVideoProperties = self->_audioVideoProperties;
    self->_audioVideoProperties = v6;
  }

  return v5;
}

- (PFMetadataLegacyMovieProperties)initWithMetadataPlist:(id)a3 timeZoneLookup:(id)a4
{
  v6 = a3;
  v7 = PFMetadataPlistContentTypeIdentifier;
  v8 = a4;
  v9 = [v6 objectForKeyedSubscript:v7];
  v10 = [PFUniformTypeUtilities typeWithIdentifier:v9];

  v11 = [v6 objectForKeyedSubscript:PFMetadataPlistOptions];
  v12 = -[PFMetadata initWithContentType:options:timeZoneLookup:](self, "initWithContentType:options:timeZoneLookup:", v10, [v11 integerValue], v8);

  if (v12 && ![(PFMetadataLegacyMovieProperties *)v12 configureWithMetadataPlist:v6])
  {

    v12 = 0;
  }

  return v12;
}

- (PFMetadataLegacyMovieProperties)initWithAVProxyData:(id)a3 timeZoneLookup:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v16.receiver = self;
    v16.super_class = PFMetadataLegacyMovieProperties;
    v8 = [(PFMetadata *)&v16 initWithContentType:0 options:12 timeZoneLookup:v7];
    if (v8)
    {
      v15 = 0;
      v9 = [PFMetadata propertyListObjectFromEncodedData:v6 expectedClass:objc_opt_class() options:0 error:&v15];
      v10 = v15;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v8->_audioVideoProperties, v9);
        [(PFMetadata *)v8 setSourceType:8];
      }

      else
      {
        v11 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
        {
          v13 = v11;
          v14 = [v6 length];
          *buf = 134218498;
          v18 = v6;
          v19 = 2048;
          v20 = v14;
          v21 = 2114;
          v22 = v10;
          _os_log_error_impl(&dword_1B35C1000, v13, OS_LOG_TYPE_ERROR, "failed to deserialize a property list object from plist data: %p, length: %lu, error: %{public}@", buf, 0x20u);
        }

        v8 = 0;
      }
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

@end