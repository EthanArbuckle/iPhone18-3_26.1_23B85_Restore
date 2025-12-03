@interface PXStoryAutoEditConfigurationFactory
+ (id)autoEditConfiguration;
@end

@implementation PXStoryAutoEditConfigurationFactory

+ (id)autoEditConfiguration
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = &lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;
  if ((autoEditConfiguration_shouldCheckDefaultConfigurationFile & 1) != 0 || !PFOSVariantHasInternalUI())
  {
    goto LABEL_13;
  }

  defaultSystemPhotoDataDirectory = [MEMORY[0x1E69BF238] defaultSystemPhotoDataDirectory];
  v4 = [defaultSystemPhotoDataDirectory stringByAppendingPathComponent:@"Configuration"];

  v5 = MEMORY[0x1E695DFF8];
  v6 = [v4 stringByAppendingPathComponent:@"PFStoryAutoEditDefaultConfig.plist"];
  v7 = [v5 fileURLWithPath:v6];

  v8 = objc_opt_new();
  path = [v7 path];
  if ([v8 isReadableFileAtPath:path])
  {
    v2 = [objc_alloc(MEMORY[0x1E69C08A0]) initWithConfigurationFileAtURL:v7];
    v10 = PLStoryGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "PXStoryAutoEditConfigurationFactory loaded from on-device file at %@", &v14, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "PXStoryAutoEditConfigurationFactory failed to load from on-device file at %@", &v14, 0xCu);
      }

      v2 = 0;
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
    autoEditConfiguration_shouldCheckDefaultConfigurationFile = 1;
  }

  if (v12)
  {
LABEL_13:
    if (autoEditConfiguration_onceToken != -1)
    {
      dispatch_once(&autoEditConfiguration_onceToken, &__block_literal_global_83265);
    }

    v2 = autoEditConfiguration_sharedConfiguration;
  }

  return v2;
}

void __60__PXStoryAutoEditConfigurationFactory_autoEditConfiguration__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = [v0 fileURLForFactorName:@"com.apple.photos.autoedit.configuration"];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = [objc_alloc(MEMORY[0x1E69C08A0]) initWithConfigurationFileAtURL:v1];
  v3 = autoEditConfiguration_sharedConfiguration;
  autoEditConfiguration_sharedConfiguration = v2;

  if (autoEditConfiguration_sharedConfiguration)
  {
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "PXStoryAutoEditConfigurationFactory loaded from Turi at %@", &v8, 0xCu);
    }

LABEL_6:
    if (autoEditConfiguration_sharedConfiguration)
    {
      goto LABEL_10;
    }
  }

  v5 = PLStoryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "PXStoryAutoEditConfigurationFactory standardConfiguration", &v8, 2u);
  }

  v6 = [MEMORY[0x1E69C08A0] standardConfiguration];
  v7 = autoEditConfiguration_sharedConfiguration;
  autoEditConfiguration_sharedConfiguration = v6;

LABEL_10:
}

@end