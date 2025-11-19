@interface PFVideoAdjustments
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minFrameDurationForNominalFrameRate:(SEL)a3;
+ ($E33AF59C8D263E738CA17719EFF006B3)defaultSlowMotionTimeRangeForDuration:(SEL)a3;
+ (BOOL)isRecognizedSlowMotionFormatWithIdentifier:(id)a3 version:(id)a4;
+ (float)defaultSlowMotionRateForNominalFrameRate:(float)a3;
+ (id)defaultSlowMotionAdjustmentsForAsset:(id)a3;
+ (id)defaultVideoAdjustmentsURLForVideoURL:(id)a3;
- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampIn;
- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampOut;
- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionTimeRange;
- (BOOL)_isValidSlowMotionTimeRange:(id *)a3 rate:(float)a4;
- (BOOL)_parseAppleVideoDataBlobDictionary:(id)a3 forSlowMotionTimeRange:(id *)a4 rate:(float *)a5;
- (BOOL)_parseLegacySLMDictionary:(id)a3 forSlowMotionTimeRange:(id *)a4 rate:(float *)a5;
- (BOOL)_parseVersionedDataForSlowMotionTimeRange:(id *)a3 rate:(float *)a4;
- (BOOL)hasSlowMotionAdjustments;
- (BOOL)isRecognizedFormat;
- (PFVideoAdjustments)initWithPropertyListDictionary:(id)a3;
- (PFVideoAdjustments)initWithSlowMotionTimeRange:(id *)a3 rate:(float)a4;
- (id)_adjustmentsObjectFromNSKeyedArchiverData:(id)a3;
- (id)_dictionaryFromSlowMotionTimeRange:(id *)a3 rate:(float)a4;
- (id)description;
- (void)_updateDerivedPropertiesFromVersionedData;
- (void)setSlowMotionTimeRange:(id *)a3;
@end

@implementation PFVideoAdjustments

- (void)setSlowMotionTimeRange:(id *)a3
{
  v4 = *&a3->var0.var3;
  v3 = *&a3->var1.var1;
  *(&self->_slowMotionRate + 1) = *&a3->var0.var0;
  *&self->_slowMotionTimeRange.start.flags = v4;
  *(&self->_slowMotionTimeRange.duration.value + 4) = v3;
}

- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionTimeRange
{
  v3 = *(&self->var1.var3 + 4);
  *&retstr->var0.var0 = *(&self->var1.var0 + 4);
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var2;
  return self;
}

- (id)_adjustmentsObjectFromNSKeyedArchiverData:(id)a3
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v11 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [v7 decodeObjectOfClasses:v6 forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Couldn't unarchive data: error %@", buf, 0xCu);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (id)_dictionaryFromSlowMotionTimeRange:(id *)a3 rate:(float)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = *&a3->var0.var3;
  *&v16.start.value = *&a3->var0.var0;
  *&v16.start.epoch = v6;
  *&v16.duration.timescale = *&a3->var1.var1;
  v7 = CMTimeRangeCopyAsDictionary(&v16, v5);
  v8 = v7;
  if (v7)
  {
    v22 = @"timeRange";
    v23[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v21 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    *&v11 = a4;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v19[0] = @"rate";
    v19[1] = @"regions";
    v20[0] = v12;
    v20[1] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17 = @"slowMotion";
    v18 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_parseAppleVideoDataBlobDictionary:(id)a3 forSlowMotionTimeRange:(id *)a4 rate:(float *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E6960C98];
  value = *MEMORY[0x1E6960C98];
  timescale = *(MEMORY[0x1E6960C98] + 8);
  v8 = [a3 objectForKeyedSubscript:@"slowMotion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"rate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      v11 = v10;
      v12 = [v8 objectForKeyedSubscript:@"regions"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count])
      {
        flags = *(v7 + 12);
        v13 = *(v7 + 16);
        v14 = *(v7 + 24);
        v21 = *(v7 + 32);
        v15 = *(v7 + 40);
        v16 = [v12 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          epoch = v13;
          v17 = [v16 objectForKeyedSubscript:@"timeRange"];
          objc_opt_class();
          v18 = 0;
          if ((objc_opt_isKindOfClass() & 1) != 0 && v17)
          {
            CMTimeRangeMakeFromDictionary(&v23, v17);
            value = v23.start.value;
            timescale = v23.start.timescale;
            epoch = v23.start.epoch;
            v15 = v23.duration.epoch;
            flags = v23.start.flags;
            v21 = *&v23.duration.timescale;
            if (v23.start.flags)
            {
              v14 = v23.duration.value;
              if (v23.duration.value >= 0)
              {
                v18 = v23.duration.flags & (v23.duration.epoch == 0);
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v14 = v23.duration.value;
              v18 = 0;
            }
          }

          v13 = epoch;
        }

        else
        {
          v18 = 0;
        }

        a4->var0.var0 = value;
        a4->var0.var1 = timescale;
        a4->var0.var2 = flags;
        a4->var0.var3 = v13;
        a4->var1.var0 = v14;
        *&a4->var1.var1 = v21;
        a4->var1.var3 = v15;
        *a5 = v11;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_parseVersionedDataForSlowMotionTimeRange:(id *)a3 rate:(float *)a4
{
  v7 = *(MEMORY[0x1E6960C98] + 16);
  v21 = *MEMORY[0x1E6960C98];
  v22 = v7;
  v23 = *(MEMORY[0x1E6960C98] + 32);
  v20 = 1065353216;
  v8 = [(PFAssetAdjustments *)self adjustmentFormatVersion];
  v9 = [v8 isEqualToString:@"1.1"];

  v10 = [(PFAssetAdjustments *)self adjustmentFormatVersion];
  v11 = [v10 isEqualToString:@"1.0"];

  v12 = [(PFAssetAdjustments *)self adjustmentFormatIdentifier];
  if (![v12 isEqualToString:@"com.apple.video.slomo"])
  {

    goto LABEL_7;
  }

  if (((v9 | v11) & 1) == 0)
  {
LABEL_7:
    v15 = 0;
    v16 = 1.0;
    goto LABEL_16;
  }

  v13 = [(PFAssetAdjustments *)self adjustmentData];
  if (!v13)
  {
    goto LABEL_11;
  }

  if (!v9)
  {
    if (v11)
    {
      v14 = [(PFVideoAdjustments *)self _adjustmentsObjectFromNSKeyedArchiverData:v13];
      goto LABEL_10;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:0];
LABEL_10:
  v17 = v14;
LABEL_12:
  objc_opt_class();
  v15 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFVideoAdjustments *)self _parseAppleVideoDataBlobDictionary:v17 forSlowMotionTimeRange:&v21 rate:&v20];

  v16 = *&v20;
LABEL_16:
  v18 = v22;
  *&a3->var0.var0 = v21;
  *&a3->var0.var3 = v18;
  *&a3->var1.var1 = v23;
  *a4 = v16;
  return v15;
}

- (BOOL)_parseLegacySLMDictionary:(id)a3 forSlowMotionTimeRange:(id *)a4 rate:(float *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E6960C98];
  value = *MEMORY[0x1E6960C98];
  timescale = *(MEMORY[0x1E6960C98] + 8);
  v9 = [v7 objectForKeyedSubscript:@"version"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass())) && [v9 intValue] <= 1)
  {
    v11 = [v7 objectForKeyedSubscript:@"regions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
    {
      flags = *(v8 + 12);
      v12 = *(v8 + 16);
      v13 = *(v8 + 24);
      v19 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = [v11 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        epoch = v12;
        v16 = [v15 objectForKeyedSubscript:@"timeRange"];
        objc_opt_class();
        v10 = 0;
        if ((objc_opt_isKindOfClass() & 1) != 0 && v16)
        {
          CMTimeRangeMakeFromDictionary(&v21, v16);
          value = v21.start.value;
          timescale = v21.start.timescale;
          epoch = v21.start.epoch;
          v14 = v21.duration.epoch;
          flags = v21.start.flags;
          v19 = *&v21.duration.timescale;
          if (v21.start.flags)
          {
            v13 = v21.duration.value;
            if (v21.duration.value >= 0)
            {
              v10 = v21.duration.flags & (v21.duration.epoch == 0);
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v13 = v21.duration.value;
            v10 = 0;
          }
        }

        v12 = epoch;
      }

      else
      {
        v10 = 0;
      }

      a4->var0.var0 = value;
      a4->var0.var1 = timescale;
      a4->var0.var2 = flags;
      a4->var0.var3 = v12;
      a4->var1.var0 = v13;
      *&a4->var1.var1 = v19;
      a4->var1.var3 = v14;
      *a5 = 0.25;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateDerivedPropertiesFromVersionedData
{
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v6 = *MEMORY[0x1E6960C98];
  v9 = *MEMORY[0x1E6960C98];
  v10 = v5;
  v4 = *(MEMORY[0x1E6960C98] + 32);
  v11 = v4;
  v8 = 1065353216;
  if (![(PFVideoAdjustments *)self _parseVersionedDataForSlowMotionTimeRange:&v9 rate:&v8])
  {
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v8 = 1065353216;
  }

  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  [(PFVideoAdjustments *)self setSlowMotionTimeRange:v7];
  LODWORD(v3) = v8;
  [(PFVideoAdjustments *)self setSlowMotionRate:v3];
}

- (BOOL)isRecognizedFormat
{
  v3 = objc_opt_class();
  v4 = [(PFAssetAdjustments *)self adjustmentFormatIdentifier];
  v5 = [(PFAssetAdjustments *)self adjustmentFormatVersion];
  LOBYTE(v3) = [v3 isRecognizedSlowMotionFormatWithIdentifier:v4 version:v5];

  return v3;
}

- (id)description
{
  if ([(PFVideoAdjustments *)self isRecognizedFormat])
  {
    [(PFVideoAdjustments *)self slowMotionTimeRange];
    time = v12;
    Seconds = CMTimeGetSeconds(&time);
    [(PFVideoAdjustments *)self slowMotionTimeRange];
    time = v11;
    v4 = Seconds + CMTimeGetSeconds(&time);
    v10.receiver = self;
    v10.super_class = PFVideoAdjustments;
    v5 = [(PFAssetAdjustments *)&v10 description];
    [(PFVideoAdjustments *)self slowMotionRate];
    v7 = [v5 stringByAppendingFormat:@" slowMotion (%.2fx from %.2fs to %.2fs)", v6, *&Seconds, *&v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PFVideoAdjustments;
    v7 = [(PFAssetAdjustments *)&v9 description];
  }

  return v7;
}

- (PFVideoAdjustments)initWithPropertyListDictionary:(id)a3
{
  v4 = a3;
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v14 = *MEMORY[0x1E6960C98];
  v15 = v5;
  v16 = *(MEMORY[0x1E6960C98] + 32);
  v13 = 1065353216;
  if ([(PFVideoAdjustments *)self _parseLegacySLMDictionary:v4 forSlowMotionTimeRange:&v14 rate:&v13])
  {
    LODWORD(v6) = v13;
    v12[0] = v14;
    v12[1] = v15;
    v12[2] = v16;
    v7 = [(PFVideoAdjustments *)self initWithSlowMotionTimeRange:v12 rate:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PFVideoAdjustments;
    v8 = [(PFAssetAdjustments *)&v11 initWithPropertyListDictionary:v4];
    v7 = v8;
    if (v8)
    {
      [(PFVideoAdjustments *)v8 _updateDerivedPropertiesFromVersionedData];
    }
  }

  v9 = v7;

  return v9;
}

+ (id)defaultVideoAdjustmentsURLForVideoURL:(id)a3
{
  v3 = a3;
  v4 = [v3 URLByDeletingPathExtension];
  v5 = [v4 URLByAppendingPathExtension:@"SLM"];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [v3 URLByDeletingPathExtension];
    v10 = [v9 URLByAppendingPathExtension:@"plist"];

    v5 = v10;
  }

  return v5;
}

- (BOOL)hasSlowMotionAdjustments
{
  [(PFVideoAdjustments *)self slowMotionTimeRange];
  [(PFVideoAdjustments *)self slowMotionRate];
  return [(PFVideoAdjustments *)self _isValidSlowMotionTimeRange:&v4 rate:?];
}

- (BOOL)_isValidSlowMotionTimeRange:(id *)a3 rate:(float)a4
{
  v4 = (a3->var0.var2 & 1) != 0 && (a3->var1.var2 & 1) != 0 && !a3->var1.var3 && a3->var1.var0 >= 0;
  if (a4 > 1.0)
  {
    v4 = 0;
  }

  return a4 > 0.0 && v4;
}

- (PFVideoAdjustments)initWithSlowMotionTimeRange:(id *)a3 rate:(float)a4
{
  v6 = self;
  v7 = *&a3->var0.var3;
  v14 = *&a3->var0.var0;
  v15 = v7;
  v16 = *&a3->var1.var1;
  v8 = DWORD1(v16);
  if ([(PFVideoAdjustments *)self _isValidSlowMotionTimeRange:&v14 rate:*&a4])
  {
    v9 = *&a3->var0.var3;
    v14 = *&a3->var0.var0;
    v15 = v9;
    v16 = *&a3->var1.var1;
    v10 = [(PFVideoAdjustments *)v6 _dictionaryFromSlowMotionTimeRange:&v14 rate:COERCE_DOUBLE(__PAIR64__(DWORD1(v16), LODWORD(a4)))];
    v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:0];
    v6 = [(PFAssetAdjustments *)v6 initWithFormatIdentifier:@"com.apple.video.slomo" formatVersion:@"1.1" data:v11 baseVersion:0 editorBundleID:0 renderTypes:0];

    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampOut
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampIn
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

+ (BOOL)isRecognizedSlowMotionFormatWithIdentifier:(id)a3 version:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"com.apple.video.slomo"])
  {
    if ([v5 isEqualToString:@"1.0"])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 isEqualToString:@"1.1"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minFrameDurationForNominalFrameRate:(SEL)a3
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  result = CMTimeMake(retstr, 1, 30);
  if (a4 >= 85.0 && a4 < 105.0)
  {
    result = CMTimeMake(&v8, 1, 25);
    *retstr = v8;
  }

  return result;
}

+ (float)defaultSlowMotionRateForNominalFrameRate:(float)a3
{
  v3 = 0.125;
  if (a3 < 210.0)
  {
    v3 = 0.25;
    v4 = 1.0;
    if (a3 >= 85.0)
    {
      v4 = 0.25;
    }

    if (a3 < 105.0)
    {
      return v4;
    }
  }

  return v3;
}

+ ($E33AF59C8D263E738CA17719EFF006B3)defaultSlowMotionTimeRangeForDuration:(SEL)a3
{
  v5 = MEMORY[0x1E6960CA8];
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960CA8];
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *(v5 + 32);
  if ((a4->var2 & 0x1D) == 1 && a4->var0 >= 1 && a4->var1 >= 1)
  {
    memset(&v11, 0, sizeof(v11));
    time = *a4;
    CMTimeMultiplyByFloat64(&v11, &time, 0.15);
    lhs = *a4;
    v8 = v11;
    CMTimeSubtract(&time, &lhs, &v8);
    lhs = v11;
    return CMTimeRangeFromTimeToTime(retstr, &lhs, &time);
  }

  return result;
}

+ (id)defaultSlowMotionAdjustmentsForAsset:(id)a3
{
  v3 = a3;
  v4 = v3;
  v18 = 0uLL;
  v19 = 0;
  if (v3)
  {
    [v3 duration];
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = v18;
  *&v13 = v19;
  [PFVideoAdjustments defaultSlowMotionTimeRangeForDuration:&v12];
  v5 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v4];
  v6 = [v5 firstObject];
  [v6 nominalFrameRate];
  [PFVideoAdjustments defaultSlowMotionRateForNominalFrameRate:?];
  v8 = v7;
  v9 = [PFVideoAdjustments alloc];
  v12 = v15;
  v13 = v16;
  v14 = v17;
  v10 = [(PFVideoAdjustments *)v9 initWithSlowMotionTimeRange:&v12 rate:COERCE_DOUBLE(__PAIR64__(DWORD1(v17), v8))];

  return v10;
}

@end