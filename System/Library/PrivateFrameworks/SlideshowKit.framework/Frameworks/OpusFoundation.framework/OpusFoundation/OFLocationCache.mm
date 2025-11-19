@interface OFLocationCache
+ (id)defaultCache;
- (BOOL)_save;
- (BOOL)save;
- (NSManagedObjectContext)managedObjectContext;
- (NSManagedObjectModel)managedObjectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (OFLocationCache)init;
- (OFLocationCache)initWithDiskCacheFilepath:(id)a3;
- (id)placemarksForLocationCoordinate:(CLLocationCoordinate2D)a3;
- (id)placemarksForLocationCoordinate:(CLLocationCoordinate2D)a3 andAccuracy:(double)a4 closestResultDistance:(double *)a5 numberOfResults:(unint64_t *)a6;
- (void)_didEnterBackgroundNotification;
- (void)_willTerminateNotification;
- (void)dealloc;
- (void)invalidateCacheForLocationCoordinate:(CLLocationCoordinate2D)a3;
- (void)invalidateDiskCaches;
- (void)invalidateMemoryCaches;
- (void)setPlacemarks:(id)a3 forLocationCoordinate:(CLLocationCoordinate2D)a4;
@end

@implementation OFLocationCache

+ (id)defaultCache
{
  if (defaultCache_onceToken != -1)
  {
    +[OFLocationCache defaultCache];
  }

  return defaultCache_defaultCache;
}

OFLocationCache *__31__OFLocationCache_defaultCache__block_invoke()
{
  result = -[OFLocationCache initWithDiskCacheFilepath:]([OFLocationCache alloc], "initWithDiskCacheFilepath:", [objc_msgSend(-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 1uLL]);
  defaultCache_defaultCache = result;
  return result;
}

- (OFLocationCache)init
{
  v5.receiver = self;
  v5.super_class = OFLocationCache;
  v2 = [(OFLocationCache *)&v5 init];
  if (v2)
  {
    v2->_predicateEntryTemplate = [MEMORY[0x277CCAC30] predicateWithFormat:@"(latitude = $latitude) && (longitude = $longitude)"];
    v2->_predicateEntryWithLocalRegionTemplate = [MEMORY[0x277CCAC30] predicateWithFormat:@"(($latitude2 <= latitude) && (latitude <= $latitude1)) && (($longitude1 <= longitude) && (longitude <= $longitude2))"];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__didEnterBackgroundNotification name:*MEMORY[0x277D76660] object:0];
    [v3 addObserver:v2 selector:sel__willTerminateNotification name:*MEMORY[0x277D76770] object:0];
  }

  return v2;
}

- (OFLocationCache)initWithDiskCacheFilepath:(id)a3
{
  v4 = [(OFLocationCache *)self init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v10 = 0;
    v4->_diskCacheFilepath = [a3 copy];
    if ([v5 fileExistsAtPath:a3 isDirectory:&v10])
    {
      if (v10)
      {
LABEL_10:

        v7 = v4;
        return 0;
      }
    }

    else
    {
      v9 = 0;
      if (([v5 createDirectoryAtPath:objc_msgSend(a3 withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, &v9}] & 1) == 0)
      {
        if (OFLoggerLevel >= 4)
        {
          v6 = [a3 stringByDeletingLastPathComponent];
          +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 92, @"Failed to create intermediate cache directories %@: %@", v6, [v9 localizedDescription]);
        }

        goto LABEL_10;
      }

      v10 = 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76770] object:0];
  diskCacheFilepath = self->_diskCacheFilepath;
  if (diskCacheFilepath)
  {

    self->_diskCacheFilepath = 0;
  }

  managedObjectContext = self->_managedObjectContext;
  if (managedObjectContext)
  {

    self->_managedObjectContext = 0;
  }

  parentManagedObjectContext = self->_parentManagedObjectContext;
  if (parentManagedObjectContext)
  {

    self->_parentManagedObjectContext = 0;
  }

  managedObjectModel = self->_managedObjectModel;
  if (managedObjectModel)
  {

    self->_managedObjectModel = 0;
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {

    self->_persistentStoreCoordinator = 0;
  }

  predicateEntryTemplate = self->_predicateEntryTemplate;
  if (predicateEntryTemplate)
  {

    self->_predicateEntryTemplate = 0;
  }

  predicateEntryWithLocalRegionTemplate = self->_predicateEntryWithLocalRegionTemplate;
  if (predicateEntryWithLocalRegionTemplate)
  {

    self->_predicateEntryWithLocalRegionTemplate = 0;
  }

  v11.receiver = self;
  v11.super_class = OFLocationCache;
  [(OFLocationCache *)&v11 dealloc];
}

- (NSManagedObjectContext)managedObjectContext
{
  objc_sync_enter(self);
  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
    v4 = [(OFLocationCache *)self persistentStoreCoordinator];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      self->_parentManagedObjectContext = v5;
      [(NSManagedObjectContext *)v5 setUndoManager:0];
      [(NSManagedObjectContext *)self->_parentManagedObjectContext setPersistentStoreCoordinator:v4];
      v6 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      self->_managedObjectContext = v6;
      [(NSManagedObjectContext *)v6 setUndoManager:0];
      [(NSManagedObjectContext *)self->_managedObjectContext setParentContext:self->_parentManagedObjectContext];
    }

    managedObjectContext = self->_managedObjectContext;
  }

  objc_sync_exit(self);
  return managedObjectContext;
}

- (NSManagedObjectModel)managedObjectModel
{
  objc_sync_enter(self);
  managedObjectModel = self->_managedObjectModel;
  if (!managedObjectModel)
  {
    v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"OFLocationCacheModel", @"momd"}];
    v5 = objc_alloc(MEMORY[0x277CBE450]);
    managedObjectModel = [v5 initWithContentsOfURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v4)}];
    self->_managedObjectModel = managedObjectModel;
  }

  objc_sync_exit(self);
  return managedObjectModel;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  objc_sync_enter(self);
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  if (!persistentStoreCoordinator)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_diskCacheFilepath];
    v5 = MEMORY[0x277CBEAC0];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v8 = [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x277CBE1D8], v7, *MEMORY[0x277CBE178], 0}];
    v12 = 0;
    v9 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:{-[OFLocationCache managedObjectModel](self, "managedObjectModel")}];
    self->_persistentStoreCoordinator = v9;
    if ([(NSPersistentStoreCoordinator *)v9 addPersistentStoreWithType:*MEMORY[0x277CBE2E8] configuration:0 URL:v4 options:v8 error:&v12])
    {
      persistentStoreCoordinator = self->_persistentStoreCoordinator;
    }

    else
    {
      if (OFLoggerLevel >= 2)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 218, @"An error occured creating database store: %@", [v12 localizedDescription]);
      }

      v10 = self->_persistentStoreCoordinator;
      if (v10)
      {

        persistentStoreCoordinator = 0;
        self->_persistentStoreCoordinator = 0;
      }

      else
      {
        persistentStoreCoordinator = 0;
      }
    }
  }

  objc_sync_exit(self);
  return persistentStoreCoordinator;
}

- (BOOL)_save
{
  v7 = 0;
  v3 = [(NSManagedObjectContext *)[(OFLocationCache *)self managedObjectContext] save:&v7];
  if (v3)
  {
    parentManagedObjectContext = self->_parentManagedObjectContext;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __24__OFLocationCache__save__block_invoke;
    v6[3] = &unk_279C89F90;
    v6[4] = self;
    [(NSManagedObjectContext *)parentManagedObjectContext performBlock:v6];
  }

  else if (OFLoggerLevel >= 2)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 236, @"An error occured saving child context to the parent context: %@", [v7 localizedDescription]);
  }

  return v3;
}

uint64_t __24__OFLocationCache__save__block_invoke(uint64_t a1)
{
  v2 = 0;
  result = [*(*(a1 + 32) + 32) save:&v2];
  if ((result & 1) == 0 && OFLoggerLevel >= 2)
  {
    return +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 245, @"An error occured saving parent context to the database: %@", [v2 localizedDescription]);
  }

  return result;
}

- (BOOL)save
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(OFLocationCache *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__OFLocationCache_save__block_invoke;
  v5[3] = &unk_279C89EA0;
  v5[4] = v2;
  v5[5] = &v6;
  [(NSManagedObjectContext *)v3 performBlockAndWait:v5];
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __23__OFLocationCache_save__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "managedObjectContext")];
  if (result)
  {
    result = [*(a1 + 32) _save];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)_didEnterBackgroundNotification
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__OFLocationCache__didEnterBackgroundNotification__block_invoke;
  v7[3] = &unk_279C8A090;
  v7[4] = &v8;
  v4 = [v3 beginBackgroundTaskWithExpirationHandler:v7];
  v9[3] = v4;
  if (v4 != *MEMORY[0x277D767B0])
  {
    v5 = [(OFLocationCache *)self managedObjectContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__OFLocationCache__didEnterBackgroundNotification__block_invoke_2;
    v6[3] = &unk_279C89EA0;
    v6[4] = self;
    v6[5] = &v8;
    [(NSManagedObjectContext *)v5 performBlock:v6];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __50__OFLocationCache__didEnterBackgroundNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

uint64_t __50__OFLocationCache__didEnterBackgroundNotification__block_invoke_2(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "managedObjectContext")])
  {
    v8 = 0;
    if ([objc_msgSend(*(a1 + 32) "managedObjectContext")])
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __50__OFLocationCache__didEnterBackgroundNotification__block_invoke_3;
      v6[3] = &unk_279C89EA0;
      v2 = *(*(a1 + 32) + 32);
      v7 = *(a1 + 32);
      return [v2 performBlock:v6];
    }

    else
    {
      if (OFLoggerLevel >= 2)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 286, @"An error occured saving child context to the parent context: %@", [v8 localizedDescription]);
      }

      return [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = *(*(*(a1 + 40) + 8) + 24);

    return [v4 endBackgroundTask:v5];
  }
}

uint64_t __50__OFLocationCache__didEnterBackgroundNotification__block_invoke_3(uint64_t a1)
{
  v3 = 0;
  if (([*(*(a1 + 32) + 32) save:&v3] & 1) == 0 && OFLoggerLevel >= 2)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 297, @"An error occured saving parent context to the database: %@", [v3 localizedDescription]);
  }

  return [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
}

- (void)_willTerminateNotification
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__OFLocationCache__willTerminateNotification__block_invoke;
  v7[3] = &unk_279C8A090;
  v7[4] = &v8;
  v4 = [v3 beginBackgroundTaskWithExpirationHandler:v7];
  v9[3] = v4;
  if (v4 != *MEMORY[0x277D767B0])
  {
    v5 = [(OFLocationCache *)self managedObjectContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__OFLocationCache__willTerminateNotification__block_invoke_2;
    v6[3] = &unk_279C89EA0;
    v6[4] = self;
    v6[5] = &v8;
    [(NSManagedObjectContext *)v5 performBlock:v6];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __45__OFLocationCache__willTerminateNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

uint64_t __45__OFLocationCache__willTerminateNotification__block_invoke_2(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "managedObjectContext")])
  {
    v8 = 0;
    if ([objc_msgSend(*(a1 + 32) "managedObjectContext")])
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __45__OFLocationCache__willTerminateNotification__block_invoke_3;
      v6[3] = &unk_279C89EA0;
      v2 = *(*(a1 + 32) + 32);
      v7 = *(a1 + 32);
      return [v2 performBlock:v6];
    }

    else
    {
      if (OFLoggerLevel >= 2)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 327, @"An error occured saving child context to the parent context: %@", [v8 localizedDescription]);
      }

      return [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = *(*(*(a1 + 40) + 8) + 24);

    return [v4 endBackgroundTask:v5];
  }
}

uint64_t __45__OFLocationCache__willTerminateNotification__block_invoke_3(uint64_t a1)
{
  v3 = 0;
  if (([*(*(a1 + 32) + 32) save:&v3] & 1) == 0 && OFLoggerLevel >= 2)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 338, @"An error occured saving parent context to the database: %@", [v3 localizedDescription]);
  }

  return [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
}

- (void)invalidateDiskCaches
{
  v3 = [(OFLocationCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__OFLocationCache_invalidateDiskCaches__block_invoke;
  v4[3] = &unk_279C89F90;
  v4[4] = self;
  [(NSManagedObjectContext *)v3 performBlockAndWait:v4];
}

uint64_t __39__OFLocationCache_invalidateDiskCaches__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__OFLocationCache_invalidateDiskCaches__block_invoke_2;
  v4[3] = &unk_279C89F90;
  v4[4] = v1;
  return [v2 performBlockAndWait:v4];
}

uint64_t __39__OFLocationCache_invalidateDiskCaches__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        [objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
        [v2 removeItemAtURL:objc_msgSend(v8 error:{"URL"), 0}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(a1 + 32) + 8)];
  v10 = MEMORY[0x277CBEAC0];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v12 = *MEMORY[0x277CBE1D8];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v14 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, v13, *MEMORY[0x277CBE178], 0}];
  v16 = 0;
  result = [*(*(a1 + 32) + 40) addPersistentStoreWithType:*MEMORY[0x277CBE2E8] configuration:0 URL:v9 options:v14 error:&v16];
  if (!result && OFLoggerLevel >= 2)
  {
    return +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 2, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m", 429, @"An error occured creating database store: %@", [v16 localizedDescription]);
  }

  return result;
}

- (void)invalidateMemoryCaches
{
  v3 = [(OFLocationCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__OFLocationCache_invalidateMemoryCaches__block_invoke;
  v4[3] = &unk_279C89F90;
  v4[4] = self;
  [(NSManagedObjectContext *)v3 performBlockAndWait:v4];
}

uint64_t __41__OFLocationCache_invalidateMemoryCaches__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "managedObjectContext")];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__OFLocationCache_invalidateMemoryCaches__block_invoke_2;
  v5[3] = &unk_279C89F90;
  v5[4] = v2;
  return [v3 performBlockAndWait:v5];
}

- (void)invalidateCacheForLocationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = [(OFLocationCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__OFLocationCache_invalidateCacheForLocationCoordinate___block_invoke;
  v7[3] = &unk_279C8A100;
  v7[4] = self;
  *&v7[5] = latitude;
  *&v7[6] = longitude;
  [(NSManagedObjectContext *)v6 performBlockAndWait:v7];
}

void *__56__OFLocationCache_invalidateCacheForLocationCoordinate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Entry"];
  v3 = *(*(a1 + 32) + 48);
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v6 = [v3 predicateWithSubstitutionVariables:{objc_msgSend(v4, "dictionaryWithObjectsAndKeys:", v5, @"latitude", objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 48)), @"longitude", 0)}];
  [v2 setFetchLimit:1];
  [v2 setPredicate:v6];
  v9 = 0;
  result = [objc_msgSend(*(a1 + 32) "managedObjectContext")];
  if (result)
  {
    v8 = result;
    result = [result count];
    if (result == 1)
    {
      [objc_msgSend(*(a1 + 32) "managedObjectContext")];
      return [*(a1 + 32) _save];
    }
  }

  return result;
}

- (void)setPlacemarks:(id)a3 forLocationCoordinate:(CLLocationCoordinate2D)a4
{
  if (a3)
  {
    longitude = a4.longitude;
    latitude = a4.latitude;
    if ([a3 count])
    {
      v8 = [(OFLocationCache *)self managedObjectContext];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __55__OFLocationCache_setPlacemarks_forLocationCoordinate___block_invoke;
      v9[3] = &unk_279C8A0D8;
      *&v9[6] = latitude;
      *&v9[7] = longitude;
      v9[4] = self;
      v9[5] = a3;
      [(NSManagedObjectContext *)v8 performBlockAndWait:v9];
    }
  }
}

uint64_t __55__OFLocationCache_setPlacemarks_forLocationCoordinate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Entry"];
  v3 = *(*(a1 + 32) + 48);
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v6 = [v3 predicateWithSubstitutionVariables:{objc_msgSend(v4, "dictionaryWithObjectsAndKeys:", v5, @"latitude", objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 56)), @"longitude", 0)}];
  [v2 setFetchLimit:1];
  [v2 setPredicate:v6];
  v16 = 0;
  v7 = [objc_msgSend(*(a1 + 32) "managedObjectContext")];
  if (v7 && (v8 = v7, [v7 count] == 1))
  {
    v9 = [objc_msgSend(v8 objectAtIndex:{0), "valueForKeyPath:", @"placemarksBlob"}];
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:1 error:0];
    v11 = @"bytes";
    v12 = v9;
  }

  else
  {
    v13 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"Entry" inManagedObjectContext:{objc_msgSend(*(a1 + 32), "managedObjectContext")}];
    [v13 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKeyPath:{"numberWithDouble:", *(a1 + 48)), @"latitude"}];
    [v13 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKeyPath:{"numberWithDouble:", *(a1 + 56)), @"longitude"}];
    v14 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"PlacemarksBlob" inManagedObjectContext:{objc_msgSend(*(a1 + 32), "managedObjectContext")}];
    [v14 setValue:objc_msgSend(MEMORY[0x277CCAAB0] forKey:{"archivedDataWithRootObject:requiringSecureCoding:error:", *(a1 + 40), 1, 0), @"bytes"}];
    v11 = @"placemarksBlob";
    v12 = v13;
    v10 = v14;
  }

  [v12 setValue:v10 forKeyPath:v11];
  return [*(a1 + 32) _save];
}

- (id)placemarksForLocationCoordinate:(CLLocationCoordinate2D)a3 andAccuracy:(double)a4 closestResultDistance:(double *)a5 numberOfResults:(unint64_t *)a6
{
  v8 = *MEMORY[0x277CE4208];
  v9 = *MEMORY[0x277CE4210];
  if (a4 == 0.0 || v8 == a4 || v9 == a4)
  {

    return [(OFLocationCache *)self placemarksForLocationCoordinate:a5, a6, a3.latitude, a3.longitude, v9, v8];
  }

  else
  {
    latitude = a3.latitude;
    longitude = a3.longitude;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v16 = [(OFLocationCache *)self managedObjectContext];
    v17.f64[0] = latitude;
    v17.f64[1] = longitude;
    v18 = vdupq_n_s64(0x4066800000000000uLL);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __101__OFLocationCache_placemarksForLocationCoordinate_andAccuracy_closestResultDistance_numberOfResults___block_invoke;
    v27[3] = &unk_279C8A128;
    v19 = vdupq_n_s64(0x400921FB54442D18uLL);
    v20 = vmulq_f64(vdivq_f64(v17, v18), v19);
    v21 = vdupq_lane_s64(COERCE__INT64(a4 / 6378137.0), 0);
    v22 = vaddq_f64(v20, v21);
    v23 = vsubq_f64(v20, v21);
    v21.f64[0] = v22.f64[0];
    v21.f64[1] = v23.f64[1];
    v23.f64[1] = v22.f64[1];
    v28 = vdivq_f64(vmulq_f64(v21, v18), v19);
    v29 = vdivq_f64(vmulq_f64(v23, v18), v19);
    v30 = latitude;
    v31 = longitude;
    v27[6] = &v32;
    v27[7] = &v36;
    v27[4] = self;
    v27[5] = v15;
    [(NSManagedObjectContext *)v16 performBlockAndWait:v27];
    if (a5)
    {
      *a5 = v37[3];
    }

    if (a6)
    {
      *a6 = v33[3];
    }

    v24 = v15;
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    return v24;
  }
}

void __101__OFLocationCache_placemarksForLocationCoordinate_andAccuracy_closestResultDistance_numberOfResults___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Entry"];
  v3 = *(*(a1 + 32) + 56);
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  [v2 setPredicate:{objc_msgSend(v3, "predicateWithSubstitutionVariables:", objc_msgSend(v4, "dictionaryWithObjectsAndKeys:", v5, @"latitude1", v6, @"longitude1", v7, @"latitude2", objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 88)), @"longitude2", 0))}];
  v34 = 0;
  v28 = a1;
  v8 = [objc_msgSend(*(a1 + 32) "managedObjectContext")];
  if (v8)
  {
    v9 = v8;
    if ([v8 count])
    {
      *(*(*(v28 + 48) + 8) + 24) = [v9 count];
      v10 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:*(v28 + 96) longitude:*(v28 + 104)];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v31;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            [objc_msgSend(v16 valueForKeyPath:{@"latitude", "doubleValue"}];
            v18 = v17;
            [objc_msgSend(v16 valueForKeyPath:{@"longitude", "doubleValue"}];
            v20 = CLLocationCoordinate2DMake(v18, v19);
            v21 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v20.latitude longitude:v20.longitude];
            [v10 distanceFromLocation:v21];
            v23 = *(*(v28 + 56) + 8);
            if (!v13 || v22 < *(v23 + 24))
            {
              *(v23 + 24) = v22;
              v13 = v16;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v12);

        if (v13)
        {
          v24 = [objc_msgSend(v13 valueForKeyPath:{@"placemarksBlob", "valueForKeyPath:", @"bytes"}];
          v25 = MEMORY[0x277CBEB98];
          v35[0] = objc_opt_class();
          v35[1] = objc_opt_class();
          v26 = [v25 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v35, 2)}];
          v29 = 0;
          v27 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v26 fromData:v24 error:&v29];
          if (v27)
          {
            [*(v28 + 40) addObjectsFromArray:v27];
          }

          else if (OFLoggerLevel >= 2)
          {
            [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLocationCache.m" line:593 andFormat:@"Unable to decode the placemarks: %@", v29];
          }
        }
      }

      else
      {
      }
    }
  }
}

- (id)placemarksForLocationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v6 = [(OFLocationCache *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__OFLocationCache_placemarksForLocationCoordinate___block_invoke;
  v9[3] = &unk_279C8A150;
  *&v9[6] = latitude;
  *&v9[7] = longitude;
  v9[4] = self;
  v9[5] = &v10;
  [(NSManagedObjectContext *)v6 performBlockAndWait:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

id __51__OFLocationCache_placemarksForLocationCoordinate___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Entry"];
  v3 = *(*(a1 + 32) + 48);
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v6 = [v3 predicateWithSubstitutionVariables:{objc_msgSend(v4, "dictionaryWithObjectsAndKeys:", v5, @"latitude", objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 56)), @"longitude", 0)}];
  [v2 setFetchLimit:1];
  [v2 setPredicate:v6];
  v12 = 0;
  result = [objc_msgSend(*(a1 + 32) "managedObjectContext")];
  if (result)
  {
    v8 = result;
    result = [result count];
    if (result == 1)
    {
      v9 = [objc_msgSend(objc_msgSend(v8 objectAtIndex:{0), "valueForKeyPath:", @"placemarksBlob", "valueForKeyPath:", @"bytes"}];
      v10 = MEMORY[0x277CBEB98];
      v13[0] = objc_opt_class();
      v13[1] = objc_opt_class();
      v11 = [v10 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v13, 2)}];
      result = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v9 error:0];
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  return result;
}

@end