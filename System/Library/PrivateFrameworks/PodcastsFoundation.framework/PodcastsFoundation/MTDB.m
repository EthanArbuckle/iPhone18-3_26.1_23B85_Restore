@interface MTDB
+ (BOOL)canExtensionOpenDatabase;
+ (BOOL)createDatabaseIfNeeded;
+ (BOOL)isCorrupt;
+ (BOOL)needsCacheBustForFreeAndPaidUrlStorage;
+ (BOOL)needsMigrationToDeltaFeedUpdates;
+ (BOOL)quickCheckForNeedsContainerMigration;
+ (BOOL)serpentIdMigrationComplete;
+ (id)coreDataChecksum;
+ (id)libraryPath;
+ (id)libraryShmPath;
+ (id)libraryWalPath;
+ (id)managedObjectModel;
+ (id)sharedInstance;
+ (int64_t)coreDataVersion_deprecated;
+ (int64_t)libraryDataVersion;
+ (void)isPodcastsAppCheck;
+ (void)setCoreDataChecksum:(id)a3;
+ (void)setCoreDataVersion:(int64_t)a3;
+ (void)setLibraryDataVersion:(int64_t)a3;
+ (void)setMigrationToDeltaFeedUpdatesComplete;
+ (void)setSharedInstance:(id)a3;
+ (void)setStoreBothFreeAndPaidUrlsPreviousBootup;
- (MTDB)init;
- (MTDB)initWithCoreDataContainer:(id)a3 config:(id)a4;
- (id)carPlayContext;
- (id)contextForName:(id)a3;
- (id)createSingleUsePrivateContext:(id)a3;
- (id)importContext;
- (id)loggingContext;
- (id)mainOrPrivateContext;
- (id)mainQueueContext;
- (id)managedObjectIDForURI:(id)a3 error:(id *)a4;
- (id)managedObjectModel;
- (id)persistentStoreUuid;
- (id)playbackContext;
- (id)privateQueueContext;
- (id)resetableImportContext;
- (id)storeContext;
- (void)addChangeNotifier:(id)a3;
- (void)removeChangeNotifier:(id)a3;
@end

@implementation MTDB

+ (BOOL)quickCheckForNeedsContainerMigration
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:@"MTLibraryPerformedSharedContainerMigration"];

  return v3;
}

+ (id)libraryPath
{
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"MTLibrary.sqlite" isDirectory:0];

  return v3;
}

+ (int64_t)libraryDataVersion
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 integerForKey:@"MTLibraryMigrationVersion"];

  return v3;
}

+ (id)managedObjectModel
{
  v2 = +[MTConstants managedObjectModelDefinitionURL];
  v3 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v2];
  v4 = [MEMORY[0x1E695D638] addFeatureFlaggedPropertiesToModel:v3];

  return v4;
}

+ (id)coreDataChecksum
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 stringForKey:@"MTCoreDataChecksum"];

  return v3;
}

+ (BOOL)isCorrupt
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:@"MTDetectedCorruptDB"];

  return v3;
}

+ (BOOL)serpentIdMigrationComplete
{
  [a1 isPodcastsAppCheck];
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:@"MTSerpentIdFeatureFlagWasEnabledLastTime"];

  return v3;
}

+ (void)isPodcastsAppCheck
{
  if (!+[PFClientUtil isPodcastsApp])
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D920];

    [v2 raise:v3 format:@"Calling the previous method is only allowed from the Podcasts.app process"];
  }
}

+ (BOOL)needsCacheBustForFreeAndPaidUrlStorage
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:@"StoreBothFreeAndPaidUrlsFeatureFlagWasEnabledLastTime"];

  return v3 ^ 1;
}

+ (BOOL)needsMigrationToDeltaFeedUpdates
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 stringForKey:@"FeedManagerSystemMigrator.currentSystem"];

  LOBYTE(v2) = [@"deltaSystem" isEqual:v3];
  return v2 ^ 1;
}

+ (id)sharedInstance
{
  if (+[PFClientUtil supportsLocalLibrary])
  {
    os_unfair_lock_lock(&_lock);
    if (!_instance)
    {
      v3 = objc_alloc_init(a1);
      v4 = _instance;
      _instance = v3;

      if (!+[PFClientUtil isPodcastsApp](PFClientUtil, "isPodcastsApp") && ([objc_opt_class() canExtensionOpenDatabase] & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@ %s:%@", @"The Podcasts database is unavailable, corrupt, or requires migration. Please contact podcasts-app@group.apple.com if you need to use PodcastsKit.", "+[MTDB sharedInstance]", objc_opt_class()}];
        v5 = _instance;
        _instance = 0;
      }
    }

    os_unfair_lock_unlock(&_lock);
    v6 = _instance;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ %s:%@", @"This is a thin client and should not create a local database. Please file a radar if you hit this.", "+[MTDB sharedInstance]", objc_opt_class()}];
    v6 = 0;
  }

  return v6;
}

- (MTDB)init
{
  v3 = objc_alloc_init(MTDBConfig);
  v4 = [[MTCoreDataContainer alloc] initWithConfig:v3];
  v5 = [(MTDB *)self initWithCoreDataContainer:v4 config:v3];

  return v5;
}

- (id)privateQueueContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 privateQueueContext];

  return v3;
}

- (id)importContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 importContext];

  return v3;
}

- (id)storeContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 storeContext];

  return v3;
}

- (id)mainOrPrivateContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 mainOrPrivateContext];

  return v3;
}

- (id)loggingContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 loggingContext];

  return v3;
}

+ (void)setSharedInstance:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_lock);
  v4 = _instance;
  _instance = v3;

  os_unfair_lock_unlock(&_lock);
}

- (MTDB)initWithCoreDataContainer:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTDB;
  v8 = [(MTDB *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTDB *)v8 setCoreDataContainer:v6];
    [(MTDB *)v9 setConfig:v7];
  }

  return v9;
}

- (void)addChangeNotifier:(id)a3
{
  v4 = a3;
  v5 = [(MTDB *)self coreDataContainer];
  [v5 addChangeNotifier:v4];
}

- (void)removeChangeNotifier:(id)a3
{
  v4 = a3;
  v5 = [(MTDB *)self coreDataContainer];
  [v5 addChangeNotifier:v4];
}

+ (BOOL)createDatabaseIfNeeded
{
  if (!+[MTLibraryMigrationUtil isNewInstall])
  {
    return 0;
  }

  v3 = [a1 managedObjectModel];
  if (v3)
  {
    v4 = [MTLibraryMigrationUtil createPersistentStoreForModel:v3 attemptMigration:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)canExtensionOpenDatabase
{
  if (+[MTLibraryMigrationUtil isNewInstall])
  {
    v2 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v3 = "Extension cannot open DB because no DB file exists";
      v4 = &v9;
LABEL_13:
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
    }
  }

  else if (+[MTDB isCorrupt])
  {
    v2 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v3 = "Extension cannot open DB because the DB is corrupt";
      v4 = &v8;
      goto LABEL_13;
    }
  }

  else if (+[MTLibraryMigrationUtil needsCoreDataMigration])
  {
    v2 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v3 = "Extension cannot open DB because the DB needs a Core Data migration";
      v4 = &v7;
      goto LABEL_13;
    }
  }

  else
  {
    if (!+[MTLibraryMigrationUtil needsDataMigration])
    {
      return 1;
    }

    v2 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 0;
      v3 = "Extension cannot open DB because the DB needs a data migration";
      v4 = &v6;
      goto LABEL_13;
    }
  }

  return 0;
}

+ (id)libraryShmPath
{
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"MTLibrary.sqlite-shm" isDirectory:0];

  return v3;
}

+ (id)libraryWalPath
{
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"MTLibrary.sqlite-wal" isDirectory:0];

  return v3;
}

- (id)managedObjectIDForURI:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MTDB *)self coreDataContainer];
  v8 = [v7 managedObjectIDForURI:v6 error:a4];

  return v8;
}

- (id)createSingleUsePrivateContext:(id)a3
{
  v4 = a3;
  v5 = [(MTDB *)self coreDataContainer];
  v6 = [v5 createSingleUsePrivateContext:v4];

  return v6;
}

- (id)carPlayContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 carPlayContext];

  return v3;
}

- (id)mainQueueContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 mainQueueContext];

  return v3;
}

- (id)resetableImportContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 resetableImportContext];

  return v3;
}

- (id)playbackContext
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 playbackContext];

  return v3;
}

- (id)contextForName:(id)a3
{
  v4 = a3;
  v5 = [(MTDB *)self coreDataContainer];
  v6 = [v5 contextForName:v4];

  return v6;
}

- (id)persistentStoreUuid
{
  v2 = [(MTDB *)self coreDataContainer];
  v3 = [v2 persistentStoreUuid];

  return v3;
}

- (id)managedObjectModel
{
  v2 = [(MTDB *)self config];
  v3 = [v2 managedObjectModel];

  return v3;
}

+ (int64_t)coreDataVersion_deprecated
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 integerForKey:@"MTCoreDataMigrationVersion"];

  return v3;
}

+ (void)setLibraryDataVersion:(int64_t)a3
{
  [a1 isPodcastsAppCheck];
  v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v4 setInteger:a3 forKey:@"MTLibraryMigrationVersion"];

  v5 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v5 synchronize];
}

+ (void)setCoreDataVersion:(int64_t)a3
{
  [a1 isPodcastsAppCheck];
  v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v4 setInteger:a3 forKey:@"MTCoreDataMigrationVersion"];

  v5 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v5 synchronize];
}

+ (void)setCoreDataChecksum:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 _applePodcastsFoundationSharedUserDefaults];
  [v5 setObject:v4 forKey:@"MTCoreDataChecksum"];
}

+ (void)setStoreBothFreeAndPaidUrlsPreviousBootup
{
  [a1 isPodcastsAppCheck];
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v2 setBool:1 forKey:@"StoreBothFreeAndPaidUrlsFeatureFlagWasEnabledLastTime"];
}

+ (void)setMigrationToDeltaFeedUpdatesComplete
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setObject:@"deltaSystem" forKey:@"FeedManagerSystemMigrator.currentSystem"];
}

@end