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
+ (void)setCoreDataChecksum:(id)checksum;
+ (void)setCoreDataVersion:(int64_t)version;
+ (void)setLibraryDataVersion:(int64_t)version;
+ (void)setMigrationToDeltaFeedUpdatesComplete;
+ (void)setSharedInstance:(id)instance;
+ (void)setStoreBothFreeAndPaidUrlsPreviousBootup;
- (MTDB)init;
- (MTDB)initWithCoreDataContainer:(id)container config:(id)config;
- (id)carPlayContext;
- (id)contextForName:(id)name;
- (id)createSingleUsePrivateContext:(id)context;
- (id)importContext;
- (id)loggingContext;
- (id)mainOrPrivateContext;
- (id)mainQueueContext;
- (id)managedObjectIDForURI:(id)i error:(id *)error;
- (id)managedObjectModel;
- (id)persistentStoreUuid;
- (id)playbackContext;
- (id)privateQueueContext;
- (id)resetableImportContext;
- (id)storeContext;
- (void)addChangeNotifier:(id)notifier;
- (void)removeChangeNotifier:(id)notifier;
@end

@implementation MTDB

+ (BOOL)quickCheckForNeedsContainerMigration
{
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults BOOLForKey:@"MTLibraryPerformedSharedContainerMigration"];

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
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults integerForKey:@"MTLibraryMigrationVersion"];

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
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults stringForKey:@"MTCoreDataChecksum"];

  return v3;
}

+ (BOOL)isCorrupt
{
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults BOOLForKey:@"MTDetectedCorruptDB"];

  return v3;
}

+ (BOOL)serpentIdMigrationComplete
{
  [self isPodcastsAppCheck];
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults BOOLForKey:@"MTSerpentIdFeatureFlagWasEnabledLastTime"];

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
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults BOOLForKey:@"StoreBothFreeAndPaidUrlsFeatureFlagWasEnabledLastTime"];

  return v3 ^ 1;
}

+ (BOOL)needsMigrationToDeltaFeedUpdates
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"FeedManagerSystemMigrator.currentSystem"];

  LOBYTE(standardUserDefaults) = [@"deltaSystem" isEqual:v3];
  return standardUserDefaults ^ 1;
}

+ (id)sharedInstance
{
  if (+[PFClientUtil supportsLocalLibrary])
  {
    os_unfair_lock_lock(&_lock);
    if (!_instance)
    {
      v3 = objc_alloc_init(self);
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
  coreDataContainer = [(MTDB *)self coreDataContainer];
  privateQueueContext = [coreDataContainer privateQueueContext];

  return privateQueueContext;
}

- (id)importContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  importContext = [coreDataContainer importContext];

  return importContext;
}

- (id)storeContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  storeContext = [coreDataContainer storeContext];

  return storeContext;
}

- (id)mainOrPrivateContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  mainOrPrivateContext = [coreDataContainer mainOrPrivateContext];

  return mainOrPrivateContext;
}

- (id)loggingContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  loggingContext = [coreDataContainer loggingContext];

  return loggingContext;
}

+ (void)setSharedInstance:(id)instance
{
  instanceCopy = instance;
  os_unfair_lock_lock(&_lock);
  v4 = _instance;
  _instance = instanceCopy;

  os_unfair_lock_unlock(&_lock);
}

- (MTDB)initWithCoreDataContainer:(id)container config:(id)config
{
  containerCopy = container;
  configCopy = config;
  v11.receiver = self;
  v11.super_class = MTDB;
  v8 = [(MTDB *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTDB *)v8 setCoreDataContainer:containerCopy];
    [(MTDB *)v9 setConfig:configCopy];
  }

  return v9;
}

- (void)addChangeNotifier:(id)notifier
{
  notifierCopy = notifier;
  coreDataContainer = [(MTDB *)self coreDataContainer];
  [coreDataContainer addChangeNotifier:notifierCopy];
}

- (void)removeChangeNotifier:(id)notifier
{
  notifierCopy = notifier;
  coreDataContainer = [(MTDB *)self coreDataContainer];
  [coreDataContainer addChangeNotifier:notifierCopy];
}

+ (BOOL)createDatabaseIfNeeded
{
  if (!+[MTLibraryMigrationUtil isNewInstall])
  {
    return 0;
  }

  managedObjectModel = [self managedObjectModel];
  if (managedObjectModel)
  {
    v4 = [MTLibraryMigrationUtil createPersistentStoreForModel:managedObjectModel attemptMigration:0];
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

- (id)managedObjectIDForURI:(id)i error:(id *)error
{
  iCopy = i;
  coreDataContainer = [(MTDB *)self coreDataContainer];
  v8 = [coreDataContainer managedObjectIDForURI:iCopy error:error];

  return v8;
}

- (id)createSingleUsePrivateContext:(id)context
{
  contextCopy = context;
  coreDataContainer = [(MTDB *)self coreDataContainer];
  v6 = [coreDataContainer createSingleUsePrivateContext:contextCopy];

  return v6;
}

- (id)carPlayContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  carPlayContext = [coreDataContainer carPlayContext];

  return carPlayContext;
}

- (id)mainQueueContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  mainQueueContext = [coreDataContainer mainQueueContext];

  return mainQueueContext;
}

- (id)resetableImportContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  resetableImportContext = [coreDataContainer resetableImportContext];

  return resetableImportContext;
}

- (id)playbackContext
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  playbackContext = [coreDataContainer playbackContext];

  return playbackContext;
}

- (id)contextForName:(id)name
{
  nameCopy = name;
  coreDataContainer = [(MTDB *)self coreDataContainer];
  v6 = [coreDataContainer contextForName:nameCopy];

  return v6;
}

- (id)persistentStoreUuid
{
  coreDataContainer = [(MTDB *)self coreDataContainer];
  persistentStoreUuid = [coreDataContainer persistentStoreUuid];

  return persistentStoreUuid;
}

- (id)managedObjectModel
{
  config = [(MTDB *)self config];
  managedObjectModel = [config managedObjectModel];

  return managedObjectModel;
}

+ (int64_t)coreDataVersion_deprecated
{
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults integerForKey:@"MTCoreDataMigrationVersion"];

  return v3;
}

+ (void)setLibraryDataVersion:(int64_t)version
{
  [self isPodcastsAppCheck];
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults setInteger:version forKey:@"MTLibraryMigrationVersion"];

  _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults2 synchronize];
}

+ (void)setCoreDataVersion:(int64_t)version
{
  [self isPodcastsAppCheck];
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults setInteger:version forKey:@"MTCoreDataMigrationVersion"];

  _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults2 synchronize];
}

+ (void)setCoreDataChecksum:(id)checksum
{
  v3 = MEMORY[0x1E695E000];
  checksumCopy = checksum;
  _applePodcastsFoundationSharedUserDefaults = [v3 _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults setObject:checksumCopy forKey:@"MTCoreDataChecksum"];
}

+ (void)setStoreBothFreeAndPaidUrlsPreviousBootup
{
  [self isPodcastsAppCheck];
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults setBool:1 forKey:@"StoreBothFreeAndPaidUrlsFeatureFlagWasEnabledLastTime"];
}

+ (void)setMigrationToDeltaFeedUpdatesComplete
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:@"deltaSystem" forKey:@"FeedManagerSystemMigrator.currentSystem"];
}

@end