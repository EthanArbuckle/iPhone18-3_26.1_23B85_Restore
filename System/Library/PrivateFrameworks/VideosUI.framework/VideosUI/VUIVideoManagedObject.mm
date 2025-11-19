@interface VUIVideoManagedObject
- (NSArray)playbackModes;
- (NSDate)expirationDate;
- (NSDictionary)additionalFPSRequestParams;
- (NSDictionary)mediaMetrics;
- (NSDictionary)redownloadProductResponseDictionary;
- (NSURL)localPlaybackURL;
- (int64_t)triggerType;
- (void)setLocalPlaybackURL:(id)a3;
- (void)setRedownloadProductResponseDictionary:(id)a3;
- (void)setTriggerType:(int64_t)a3;
@end

@implementation VUIVideoManagedObject

- (NSURL)localPlaybackURL
{
  v2 = [(VUIVideoManagedObject *)self localPlaybackRelativeFilePath];
  if ([v2 length])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = NSHomeDirectory();
    v5 = [v3 fileURLWithPath:v4];
    v6 = [v3 fileURLWithPath:v2 relativeToURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalPlaybackURL:(id)a3
{
  v4 = [a3 relativeString];
  v5 = [v4 stringByRemovingPercentEncoding];

  [(VUIVideoManagedObject *)self setLocalPlaybackRelativeFilePath:v5];
}

- (NSDictionary)additionalFPSRequestParams
{
  v2 = [(VUIVideoManagedObject *)self additionalFPSRequestParamsJSONData];
  if (![v2 length])
  {
    v5 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:&v15];
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
  v2 = [(VUIVideoManagedObject *)self mediaMetricsJSONData];
  if (![v2 length])
  {
    v4 = 0;
    goto LABEL_12;
  }

  v22 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:&v22];
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
  v2 = [(VUIVideoManagedObject *)self playbackModesJSONData];
  if (![v2 length])
  {
    v4 = 0;
    goto LABEL_12;
  }

  v22 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:&v22];
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
  v3 = [(VUIVideoManagedObject *)self fpsKeyInfo];
  v4 = [v3 count];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(VUIVideoManagedObject *)self fpsKeyInfo];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) expirationDate];
          v12 = v11;
          if (v11)
          {
            if (v8)
            {
              v13 = [v8 earlierDate:v11];

              v8 = v13;
            }

            else
            {
              v8 = v11;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else if ([(VUIVideoManagedObject *)self hasExpirationDate])
  {
    v8 = [MEMORY[0x1E695DF00] distantPast];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRedownloadProductResponseDictionary:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [MEMORY[0x1E696AE40] propertyList:v4 isValidForFormat:200])
  {
    v7 = 0;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v7];
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
  v2 = [(VUIVideoManagedObject *)self redownloadProductResponse];
  if (![v2 length])
  {
    v5 = 0;
    goto LABEL_12;
  }

  v23 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:&v23];
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
  v3 = [(VUIVideoManagedObject *)self downloadTriggerType];

  if (!v3)
  {
    return 0;
  }

  v4 = [(VUIVideoManagedObject *)self downloadTriggerType];
  v5 = [v4 integerValue];

  return v5;
}

- (void)setTriggerType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(VUIVideoManagedObject *)self setDownloadTriggerType:v4];
}

@end