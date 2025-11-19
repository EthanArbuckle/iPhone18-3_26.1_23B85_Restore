@interface PNScoreConfiguration
+ (id)plistPathForPhotoLibrary:(id)a3 dataType:(int64_t)a4;
+ (id)scoreConfigurationNameForDataType:(int64_t)a3 withThemeType:(int64_t)a4;
+ (id)scoreConfigurationNamePrefixForDataType:(int64_t)a3;
+ (id)scoreConfigurationNameSuffixForThemeType:(int64_t)a3;
- (PNScoreConfiguration)initWithScoreConfigurationDataType:(int64_t)a3 scoreConfigurationThemeType:(int64_t)a4;
@end

@implementation PNScoreConfiguration

- (PNScoreConfiguration)initWithScoreConfigurationDataType:(int64_t)a3 scoreConfigurationThemeType:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = PNScoreConfiguration;
  v6 = [(PNScoreConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_dataType = a3;
    v6->_themeType = a4;
    v8 = [PNScoreConfiguration scoreConfigurationNameForDataType:a3 withThemeType:a4];
    name = v7->_name;
    v7->_name = v8;
  }

  return v7;
}

+ (id)plistPathForPhotoLibrary:(id)a3 dataType:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [PNScoreConfiguration scoreConfigurationNamePrefixForDataType:a4];
  v13 = 0;
  v7 = [v5 urlForApplicationDataFolderIdentifier:1 error:&v13];

  v8 = v13;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v6];
    v10 = [v7 URLByAppendingPathComponent:v9];

    v11 = [v10 path];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to access the graph service URL. Error: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)scoreConfigurationNameForDataType:(int64_t)a3 withThemeType:(int64_t)a4
{
  v5 = [PNScoreConfiguration scoreConfigurationNamePrefixForDataType:a3];
  v6 = [PNScoreConfiguration scoreConfigurationNameSuffixForThemeType:a4];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v5, v6];

  return v7;
}

+ (id)scoreConfigurationNameSuffixForThemeType:(int64_t)a3
{
  v3 = @"??";
  if (a3 == 1)
  {
    v3 = @"Grouped By GeoHash";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Grouped By People";
  }
}

+ (id)scoreConfigurationNamePrefixForDataType:(int64_t)a3
{
  v3 = @"??";
  if (a3 == 1)
  {
    v3 = @"IconicScore";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"WallpaperScore";
  }
}

@end