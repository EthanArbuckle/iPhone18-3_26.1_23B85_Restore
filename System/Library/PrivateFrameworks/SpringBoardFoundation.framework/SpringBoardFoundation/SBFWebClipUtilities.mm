@interface SBFWebClipUtilities
+ (id)sanitizeWebClip:(id)clip;
+ (id)sanitizeWebClips:(id)clips;
+ (id)sanitizeWebClipsIfNeeded;
@end

@implementation SBFWebClipUtilities

+ (id)sanitizeWebClipsIfNeeded
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = _CFCopySystemVersionDictionaryValue();
  v5 = v4;
  v6 = @"Invalid Build Version";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [standardUserDefaults objectForKey:@"SBFWebClipUtilitiesLastSanitizedBuildVersionUserDefaultsKey"];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = SBLogWebClip();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "Webclips already sanitized for this build; skipping...", v14, 2u);
    }

    v11 = 0;
  }

  else
  {
    webClips = [MEMORY[0x1E69DD2B8] webClips];
    v11 = [self sanitizeWebClips:webClips];

    [standardUserDefaults setObject:v7 forKey:@"SBFWebClipUtilitiesLastSanitizedBuildVersionUserDefaultsKey"];
  }

  return v11;
}

+ (id)sanitizeWebClips:(id)clips
{
  v21 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [clipsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    strongToStrongObjectsMapTable = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(clipsCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [self sanitizeWebClip:v10];
        error = [v11 error];
        result = [v11 result];
        if (error)
        {
          v14 = 1;
        }

        else
        {
          v14 = result == 0;
        }

        if (v14)
        {
          if (!strongToStrongObjectsMapTable)
          {
            strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
          }

          [strongToStrongObjectsMapTable setObject:v11 forKey:v10];
        }
      }

      v6 = [clipsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    strongToStrongObjectsMapTable = 0;
  }

  return strongToStrongObjectsMapTable;
}

+ (id)sanitizeWebClip:(id)clip
{
  v65[1] = *MEMORY[0x1E69E9840];
  clipCopy = clip;
  v4 = clipCopy;
  if (!clipCopy || ([clipCopy pageURL], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    iconImagePath = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:0 userInfo:0];
    v25 = [SBFWebClipSanitationReport alloc];
    v26 = v4;
    v27 = 0;
    v28 = iconImagePath;
LABEL_15:
    v24 = [(SBFWebClipSanitationReport *)v25 initWithWebClip:v26 result:v27 error:v28];
    goto LABEL_16;
  }

  v6 = SBLogWebClip();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v4 identifier];
    *buf = 138412290;
    v59 = identifier;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "Sanitizing webclip '%@'", buf, 0xCu);
  }

  iconImagePath = [v4 iconImagePath];
  if (![iconImagePath length])
  {
    v25 = [SBFWebClipSanitationReport alloc];
    v26 = v4;
    v27 = 1;
    v28 = 0;
    goto LABEL_15;
  }

  v9 = CGDataProviderCreateWithFilename([iconImagePath fileSystemRepresentation]);
  v10 = CGImageSourceCreateWithDataProvider(v9, 0);
  v12 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  v64 = *MEMORY[0x1E696E0A8];
  v65[0] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  v14 = CGImageSourceCopyPropertiesAtIndex(v10, 0, v13);

  v15 = v11;
  v16 = v12;
  if (v14)
  {
    v17 = [(__CFDictionary *)v14 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v17 floatValue];
    v16 = v18;

    v19 = [(__CFDictionary *)v14 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v19 floatValue];
    v15 = v20;

    CFRelease(v14);
  }

  v21 = SBLogWebClip();
  v22 = v21;
  if (v12 == v16 && v11 == v15)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SBFWebClipUtilities sanitizeWebClip:v4];
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:1 userInfo:0];
    v24 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:0 error:v23];

    if (!v10)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      identifier2 = [v4 identifier];
      v67.width = v16;
      v67.height = v15;
      v31 = NSStringFromCGSize(v67);
      *buf = 138412546;
      v59 = identifier2;
      v60 = 2112;
      v61 = v31;
      _os_log_impl(&dword_1BEA11000, v22, OS_LOG_TYPE_INFO, "Webclip '%@' is of size %@; checking if sanitization is needed...", buf, 0x16u);
    }

    if (v16 > 400.0 || v15 > 400.0)
    {
      v36 = SBLogWebClip();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        identifier3 = [v4 identifier];
        v68.width = v16;
        v68.height = v15;
        v38 = NSStringFromCGSize(v68);
        v69.width = 400.0;
        v69.height = 400.0;
        v39 = NSStringFromCGSize(v69);
        *buf = 138412802;
        v59 = identifier3;
        v60 = 2112;
        v61 = v38;
        v62 = 2112;
        v63 = v39;
        _os_log_impl(&dword_1BEA11000, v36, OS_LOG_TYPE_INFO, "Webclip '%@' needs to be sanitized; resizing icon from %@ -> %@", buf, 0x20u);
      }

      v40 = objc_autoreleasePoolPush();
      v41 = *MEMORY[0x1E696E100];
      v56[0] = *MEMORY[0x1E696DFE8];
      v56[1] = v41;
      v57[0] = MEMORY[0x1E695E118];
      v42 = [MEMORY[0x1E696AD98] numberWithDouble:400.0];
      v57[1] = v42;
      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v10, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2]);

      if (ThumbnailAtIndex)
      {
        v44 = [MEMORY[0x1E695DFF8] fileURLWithPath:iconImagePath];
        v45 = CGImageDestinationCreateWithURL(v44, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);

        CGImageDestinationAddImage(v45, ThumbnailAtIndex, 0);
        v46 = CGImageDestinationFinalize(v45);
        v47 = SBLogWebClip();
        v48 = v47;
        if (v46)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            identifier4 = [v4 identifier];
            *buf = 138412290;
            v59 = identifier4;
            _os_log_impl(&dword_1BEA11000, v48, OS_LOG_TYPE_DEFAULT, "Sanitized webclip '%@'", buf, 0xCu);
          }

          v24 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:2 error:0];
        }

        else
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [SBFWebClipUtilities sanitizeWebClip:v4];
          }

          v52 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:2 userInfo:0];
          v24 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:0 error:v52];
        }

        if (v45)
        {
          CFRelease(v45);
        }

        CFRelease(ThumbnailAtIndex);
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v54 = *MEMORY[0x1E696A3A0];
        v55 = *MEMORY[0x1E696A3A8];
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        [defaultManager setAttributes:v53 ofItemAtPath:iconImagePath error:0];
      }

      else
      {
        v50 = SBLogWebClip();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [SBFWebClipUtilities sanitizeWebClip:v4];
        }

        defaultManager = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:2 userInfo:0];
        v24 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:0 error:defaultManager];
      }

      objc_autoreleasePoolPop(v40);
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if ([v4 sb_markIconImageFileProtectionTypeAsNone])
      {
        v32 = SBLogWebClip();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          identifier5 = [v4 identifier];
          *buf = 138412290;
          v59 = identifier5;
          _os_log_impl(&dword_1BEA11000, v32, OS_LOG_TYPE_DEFAULT, "Sanitized webclip '%@' needed File Protection Class repair", buf, 0xCu);
        }
      }

      v34 = SBLogWebClip();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        identifier6 = [v4 identifier];
        *buf = 138412290;
        v59 = identifier6;
        _os_log_impl(&dword_1BEA11000, v34, OS_LOG_TYPE_DEFAULT, "Sanitized webclip '%@' didn't need sanitizing", buf, 0xCu);
      }

      v24 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:1 error:0];
      if (!v10)
      {
        goto LABEL_50;
      }
    }
  }

  CFRelease(v10);
LABEL_50:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_16:

  return v24;
}

+ (void)sanitizeWebClip:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_8(&dword_1BEA11000, v2, v3, "Webclip '%@' icon cannot be resized.", v4, v5, v6, v7, 2u);
}

+ (void)sanitizeWebClip:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_8(&dword_1BEA11000, v2, v3, "Webclip '%@' cannot be resized; Failed to create CGImageSource; Bailing.", v4, v5, v6, v7, 2u);
}

+ (void)sanitizeWebClip:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_8(&dword_1BEA11000, v2, v3, "Webclip '%@' cannot be resized; Icon is of size 0,0; Bailing.", v4, v5, v6, v7, 2u);
}

@end