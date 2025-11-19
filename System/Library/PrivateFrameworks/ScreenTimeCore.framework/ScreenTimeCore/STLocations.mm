@interface STLocations
+ (NSURL)applicationSupportDirectory;
+ (NSURL)cachesDirectory;
+ (NSURL)familyPhotosCacheDirectory;
+ (void)applicationSupportDirectory;
+ (void)cachesDirectory;
@end

@implementation STLocations

+ (NSURL)applicationSupportDirectory
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [v4 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"com.apple.remotemanagementd" isDirectory:1];
  }

  else
  {
    v8 = +[STLog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(STLocations *)v6];
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"STLocations.m" lineNumber:28 description:@"applicationSupportDirectory must not be nil"];

    v7 = 0;
  }

  return v7;
}

+ (NSURL)cachesDirectory
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"com.apple.ScreenTimeAgent" isDirectory:1];
  }

  else
  {
    v8 = +[STLog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(STLocations *)v6];
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"STLocations.m" lineNumber:41 description:@"cachesDirectory must not be nil"];

    v7 = 0;
  }

  return v7;
}

+ (NSURL)familyPhotosCacheDirectory
{
  v2 = [a1 cachesDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"FamilyPhotos" isDirectory:1];

  return v3;
}

+ (void)applicationSupportDirectory
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Unable to determine data directory: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)cachesDirectory
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Unable to determine caches directory: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end