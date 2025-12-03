@interface PNScoreConfiguration
+ (id)plistPathForPhotoLibrary:(id)library dataType:(int64_t)type;
+ (id)scoreConfigurationNameForDataType:(int64_t)type withThemeType:(int64_t)themeType;
+ (id)scoreConfigurationNamePrefixForDataType:(int64_t)type;
+ (id)scoreConfigurationNameSuffixForThemeType:(int64_t)type;
- (PNScoreConfiguration)initWithScoreConfigurationDataType:(int64_t)type scoreConfigurationThemeType:(int64_t)themeType;
@end

@implementation PNScoreConfiguration

- (PNScoreConfiguration)initWithScoreConfigurationDataType:(int64_t)type scoreConfigurationThemeType:(int64_t)themeType
{
  v11.receiver = self;
  v11.super_class = PNScoreConfiguration;
  v6 = [(PNScoreConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_dataType = type;
    v6->_themeType = themeType;
    v8 = [PNScoreConfiguration scoreConfigurationNameForDataType:type withThemeType:themeType];
    name = v7->_name;
    v7->_name = v8;
  }

  return v7;
}

+ (id)plistPathForPhotoLibrary:(id)library dataType:(int64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v6 = [PNScoreConfiguration scoreConfigurationNamePrefixForDataType:type];
  v13 = 0;
  v7 = [libraryCopy urlForApplicationDataFolderIdentifier:1 error:&v13];

  v8 = v13;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v6];
    v10 = [v7 URLByAppendingPathComponent:v9];

    path = [v10 path];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to access the graph service URL. Error: %@", buf, 0xCu);
    }

    path = 0;
  }

  return path;
}

+ (id)scoreConfigurationNameForDataType:(int64_t)type withThemeType:(int64_t)themeType
{
  v5 = [PNScoreConfiguration scoreConfigurationNamePrefixForDataType:type];
  v6 = [PNScoreConfiguration scoreConfigurationNameSuffixForThemeType:themeType];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v5, v6];

  return v7;
}

+ (id)scoreConfigurationNameSuffixForThemeType:(int64_t)type
{
  v3 = @"??";
  if (type == 1)
  {
    v3 = @"Grouped By GeoHash";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"Grouped By People";
  }
}

+ (id)scoreConfigurationNamePrefixForDataType:(int64_t)type
{
  v3 = @"??";
  if (type == 1)
  {
    v3 = @"IconicScore";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"WallpaperScore";
  }
}

@end