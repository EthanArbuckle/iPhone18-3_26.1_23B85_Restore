@interface VUIVideoManagedObject
- (NSArray)playbackModes;
- (NSDate)expirationDate;
- (NSDictionary)additionalFPSRequestParams;
- (NSDictionary)mediaMetrics;
- (NSDictionary)redownloadProductResponseDictionary;
- (NSURL)localPlaybackURL;
- (int64_t)triggerType;
- (void)setLocalPlaybackURL:(id)l;
- (void)setRedownloadProductResponseDictionary:(id)dictionary;
- (void)setTriggerType:(int64_t)type;
@end

@implementation VUIVideoManagedObject

- (NSURL)localPlaybackURL
{
  localPlaybackRelativeFilePath = [(VUIVideoManagedObject *)self localPlaybackRelativeFilePath];
  if ([localPlaybackRelativeFilePath length])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = NSHomeDirectory();
    v5 = [v3 fileURLWithPath:v4];
    v6 = [v3 fileURLWithPath:localPlaybackRelativeFilePath relativeToURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalPlaybackURL:(id)l
{
  relativeString = [l relativeString];
  stringByRemovingPercentEncoding = [relativeString stringByRemovingPercentEncoding];

  [(VUIVideoManagedObject *)self setLocalPlaybackRelativeFilePath:stringByRemovingPercentEncoding];
}

- (NSDictionary)additionalFPSRequestParams
{
  additionalFPSRequestParamsJSONData = [(VUIVideoManagedObject *)self additionalFPSRequestParamsJSONData];
  if (![additionalFPSRequestParamsJSONData length])
  {
    v5 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:additionalFPSRequestParamsJSONData options:0 error:&v15];
  v4 = v15;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v4 additionalFPSRequestParams];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v6 additionalFPSRequestParams:v7];
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = v3;
LABEL_11:

LABEL_12:

  return v5;
}

- (NSDictionary)mediaMetrics
{
  mediaMetricsJSONData = [(VUIVideoManagedObject *)self mediaMetricsJSONData];
  if (![mediaMetricsJSONData length])
  {
    v4 = 0;
    goto LABEL_12;
  }

  v22 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:mediaMetricsJSONData options:0 error:&v22];
  if (!v3)
  {
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v5 mediaMetrics:v6];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v13 mediaMetrics:v14];
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = v3;
LABEL_11:

LABEL_12:

  return v4;
}

- (NSArray)playbackModes
{
  playbackModesJSONData = [(VUIVideoManagedObject *)self playbackModesJSONData];
  if (![playbackModesJSONData length])
  {
    v4 = 0;
    goto LABEL_12;
  }

  v22 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:playbackModesJSONData options:0 error:&v22];
  if (!v3)
  {
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v5 playbackModes:v6];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v13 playbackModes:v14];
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = v3;
LABEL_11:

LABEL_12:

  return v4;
}

- (NSDate)expirationDate
{
  v20 = *MEMORY[0x1E69E9840];
  fpsKeyInfo = [(VUIVideoManagedObject *)self fpsKeyInfo];
  v4 = [fpsKeyInfo count];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    fpsKeyInfo2 = [(VUIVideoManagedObject *)self fpsKeyInfo];
    v6 = [fpsKeyInfo2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      distantPast = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(fpsKeyInfo2);
          }

          expirationDate = [*(*(&v15 + 1) + 8 * i) expirationDate];
          v12 = expirationDate;
          if (expirationDate)
          {
            if (distantPast)
            {
              v13 = [distantPast earlierDate:expirationDate];

              distantPast = v13;
            }

            else
            {
              distantPast = expirationDate;
            }
          }
        }

        v7 = [fpsKeyInfo2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      distantPast = 0;
    }
  }

  else if ([(VUIVideoManagedObject *)self hasExpirationDate])
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  else
  {
    distantPast = 0;
  }

  return distantPast;
}

- (void)setRedownloadProductResponseDictionary:(id)dictionary
{
  v10 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy && [MEMORY[0x1E696AE40] propertyList:dictionaryCopy isValidForFormat:200])
  {
    v7 = 0;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v7];
    v6 = v7;
    if ([v5 length])
    {
      [(VUIVideoManagedObject *)self setRedownloadProductResponse:v5];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1E323F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to serialize redownloadProductResponseDictionary data: %@", buf, 0xCu);
    }
  }
}

- (NSDictionary)redownloadProductResponseDictionary
{
  redownloadProductResponse = [(VUIVideoManagedObject *)self redownloadProductResponse];
  if (![redownloadProductResponse length])
  {
    v5 = 0;
    goto LABEL_12;
  }

  v23 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:redownloadProductResponse options:0 format:0 error:&v23];
  v4 = v23;
  if (!v3)
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v6 redownloadProductResponseDictionary:v7];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(VUIVideoManagedObject(VideosUIDerivedProperties) *)v14 redownloadProductResponseDictionary:v15];
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = v3;
LABEL_11:

LABEL_12:

  return v5;
}

- (int64_t)triggerType
{
  downloadTriggerType = [(VUIVideoManagedObject *)self downloadTriggerType];

  if (!downloadTriggerType)
  {
    return 0;
  }

  downloadTriggerType2 = [(VUIVideoManagedObject *)self downloadTriggerType];
  integerValue = [downloadTriggerType2 integerValue];

  return integerValue;
}

- (void)setTriggerType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(VUIVideoManagedObject *)self setDownloadTriggerType:v4];
}

@end