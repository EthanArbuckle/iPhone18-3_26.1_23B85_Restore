@interface MTLibraryMigrationUtil
+ (BOOL)isMomCompatible:(id)a3;
+ (BOOL)isNewInstall;
+ (BOOL)needsCoreDataMigration;
+ (BOOL)needsDataMigration;
+ (BOOL)needsImageStoreMigration;
+ (id)_fallbackCoreDataChecksumFromLibraryFile;
+ (id)libraryImageStoreType;
+ (void)setLibraryImageStoreType:(id)a3;
@end

@implementation MTLibraryMigrationUtil

+ (BOOL)isNewInstall
{
  v2 = +[MTDB libraryPath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  return v5 ^ 1;
}

+ (BOOL)needsCoreDataMigration
{
  v3 = +[MTDB managedObjectModel];
  v4 = [v3 versionChecksum];
  v5 = +[MTDB coreDataChecksum];
  if (!v5)
  {
    v5 = [a1 _fallbackCoreDataChecksumFromLibraryFile];
  }

  v6 = [v4 isEqualToString:v5];

  return v6 ^ 1;
}

+ (BOOL)needsDataMigration
{
  v2 = +[MTDB libraryDataVersion];
  if (v2)
  {
    LOBYTE(v2) = +[MTDB libraryDataVersion]< 70;
  }

  return v2;
}

+ (BOOL)needsImageStoreMigration
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[MTImageStoreConstants deprecatedImageStoreURL];
  v3 = [v2 path];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  v6 = +[MTLibraryMigrationUtil libraryImageStoreType];
  v7 = +[MTImageStoreConstants fileType];
  v8 = [v6 isEqual:v7];
  v9 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_DEFAULT, "Needs image store migration: oldDirectoryExists:%d currentType: %@ targetType: %@", v12, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5 & 1 | ((v8 & 1) == 0);
}

+ (id)libraryImageStoreType
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 stringForKey:@"MTImageCacheFormatIdentifier"];

  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [v5 BOOLForKey:@"MTHeicImageMigrationHasOccurred"];

    v4 = *MEMORY[0x1E6982E58];
  }

  v6 = v4;

  return v6;
}

+ (id)_fallbackCoreDataChecksumFromLibraryFile
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[MTDB libraryPath];
  v3 = *MEMORY[0x1E695D4A8];
  v10 = 0;
  v4 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v3 URL:v2 options:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Could not manually load checksum for persistent store due to error: %@.", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695D410]];
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Retrieved checksum from persistent store: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)setLibraryImageStoreType:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 _applePodcastsFoundationSharedUserDefaults];
  v6 = [v4 identifier];

  [v5 setObject:v6 forKey:@"MTImageCacheFormatIdentifier"];
  v7 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v7 setBool:0 forKey:@"MTHeicImageMigrationHasOccurred"];
}

+ (BOOL)isMomCompatible:(id)a3
{
  v4 = a3;
  if ([a1 isNewInstall])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 createPersistentStoreForModel:v4 attemptMigration:0];
  }

  return v5;
}

@end