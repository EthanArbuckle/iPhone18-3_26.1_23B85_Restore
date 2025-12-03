@interface WebDatabaseManager
+ (id)sharedWebDatabaseManager;
+ (void)removeEmptyDatabaseFiles;
+ (void)scheduleEmptyDatabaseRemoval;
- (BOOL)deleteDatabase:(id)database withOrigin:(id)origin;
- (BOOL)deleteOrigin:(id)origin;
- (WebDatabaseManager)init;
- (id)databasesWithOrigin:(id)origin;
- (id)detailsForDatabase:(id)database withOrigin:(id)origin;
- (id)origins;
- (void)deleteAllDatabases;
- (void)deleteAllIndexedDatabases;
@end

@implementation WebDatabaseManager

+ (void)scheduleEmptyDatabaseRemoval
{
  WebCore::DatabaseTracker::emptyDatabaseFilesRemovalTaskWillBeScheduled(self);
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_1);
}

uint64_t __50__WebDatabaseManager_scheduleEmptyDatabaseRemoval__block_invoke()
{
  v0 = +[WebDatabaseManager removeEmptyDatabaseFiles];

  return MEMORY[0x1EEE55DB0](v0);
}

+ (void)removeEmptyDatabaseFiles
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:WebDatabaseDirectoryDefaultsKey];
  if (!v3 || (v4 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = @"~/Library/WebKit/Databases";
  }

  stringByStandardizingPath = [(__CFString *)v4 stringByStandardizingPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager contentsOfDirectoryAtPath:stringByStandardizingPath error:0];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *MEMORY[0x1E696A3F0];
      do
      {
        v13 = [v8 objectAtIndex:v11];
        if ([v13 length])
        {
          if ([v13 characterAtIndex:0] != 46)
          {
            v14 = [stringByStandardizingPath stringByAppendingPathComponent:v13];
            v33 = 0;
            if ([defaultManager fileExistsAtPath:v14 isDirectory:&v33])
            {
              if (v33 == 1 && [objc_msgSend(defaultManager attributesOfItemAtPath:v14 error:{0), "fileType"}] != v12)
              {
                v15 = [defaultManager contentsOfDirectoryAtPath:v14 error:0];
                v16 = [v15 count];
                if (!v16)
                {
                  goto LABEL_7;
                }

                v17 = v16;
                v28 = v12;
                v30 = stringByStandardizingPath;
                v18 = 0;
                v19 = 0;
                for (i = [v15 objectAtIndex:{0, v28, v30}]; ; i = objc_msgSend(v15, "objectAtIndex:", v19, v29, v31))
                {
                  v21 = i;
                  if ([i length])
                  {
                    if ([v21 characterAtIndex:0] != 46)
                    {
                      v22 = [v14 stringByAppendingPathComponent:v21];
                      if ([defaultManager fileExistsAtPath:v22 isDirectory:&v33])
                      {
                        if ((v33 & 1) == 0)
                        {
                          MEMORY[0x1CCA63A40](&v32, v22);
                          v25 = WebCore::DatabaseTracker::deleteDatabaseFileIfEmpty(&v32, v23);
                          v26 = v32;
                          v32 = 0;
                          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v26, v24);
                          }

                          v18 += v25;
                        }
                      }
                    }
                  }

                  if (v17 == ++v19)
                  {
                    break;
                  }
                }

                v27 = v17 == v18;
                v12 = v29;
                stringByStandardizingPath = v31;
                if (v27 || ![objc_msgSend(defaultManager contentsOfDirectoryAtPath:v14 error:{0), "count"}])
                {
LABEL_7:
                  rmdir([v14 fileSystemRepresentation]);
                }
              }
            }
          }
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }
}

+ (id)sharedWebDatabaseManager
{
  if (_MergedGlobals_13 == 1)
  {
    return qword_1ED6A61B0;
  }

  result = objc_alloc_init(WebDatabaseManager);
  qword_1ED6A61B0 = result;
  _MergedGlobals_13 = 1;
  return result;
}

- (WebDatabaseManager)init
{
  v11.receiver = self;
  v11.super_class = WebDatabaseManager;
  result = [(WebDatabaseManager *)&v11 init];
  if (result)
  {
    v3 = result;
    if (!WebPlatformStrategies::initializeIfNecessary(void)::platformStrategies)
    {
      operator new();
    }

    v4 = WebCore::DatabaseManager::singleton(result);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults objectForKey:WebDatabaseDirectoryDefaultsKey];
    if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = @"~/Library/WebKit/Databases";
    }

    MEMORY[0x1CCA63A40](&v10, [(__CFString *)v7 stringByStandardizingPath]);
    WebCore::DatabaseManager::initialize(v4, &v10);
    v9 = v10;
    v10 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    {
      WTF::NeverDestroyed<WebKit::WebDatabaseManagerClient,WTF::AnyThreadsAccessTraits>::NeverDestroyed<>(WebKit::WebDatabaseManagerClient::sharedWebDatabaseManagerClient(void)::sharedClient);
    }

    WebCore::DatabaseManager::setClient();
    return v3;
  }

  return result;
}

- (id)origins
{
  v2 = WebCore::DatabaseTracker::singleton(self);
  WebCore::DatabaseTracker::origins(&v19, v2);
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 initWithCapacity:v21];
  if (v21)
  {
    v6 = v19;
    v7 = 32 * v21;
    while (1)
    {
      v8 = [WebSecurityOrigin alloc];
      WebCore::SecurityOriginData::securityOrigin(&v22, v6);
      v9 = [(WebSecurityOrigin *)v8 _initWithWebCoreSecurityOrigin:v22];
      v10 = v22;
      v22 = 0;
      if (v10)
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          break;
        }
      }

      if (v9)
      {
        goto LABEL_7;
      }

LABEL_3:
      v6 = (v6 + 32);
      v7 -= 32;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    atomic_store(1u, v10);
    WebCore::SecurityOrigin::~SecurityOrigin(v10, v4);
    WTF::fastFree(v11, v12);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v5 addObject:v9];

    goto LABEL_3;
  }

LABEL_10:
  if (v5)
  {
    v13 = v5;
  }

  v14 = v19;
  if (v21)
  {
    v15 = 32 * v21;
    do
    {
      if (!*(v14 + 24))
      {
        v16 = *(v14 + 1);
        *(v14 + 1) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v4);
        }

        v17 = *v14;
        *v14 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v4);
        }
      }

      *(v14 + 24) = -1;
      v14 = (v14 + 32);
      v15 -= 32;
    }

    while (v15);
    v14 = v19;
  }

  if (v14)
  {
    v19 = 0;
    v20 = 0;
    WTF::fastFree(v14, v4);
  }

  return v5;
}

- (id)databasesWithOrigin:(id)origin
{
  originCopy = origin;
  if (origin)
  {
    WebCore::DatabaseTracker::singleton(self);
    [originCopy _core];
    WebCore::DatabaseTracker::databaseNames();
    originCopy = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (v14)
    {
      v5 = v13;
      v6 = 8 * v14;
      do
      {
        WTF::makeNSArrayElement(&v15, v5, v4);
        if (v15)
        {
          [originCopy addObject:?];
          v7 = v15;
          v15 = 0;
          if (v7)
          {
          }
        }

        v5 = (v5 + 8);
        v6 -= 8;
      }

      while (v6);
    }

    if (originCopy)
    {
      v8 = originCopy;
    }

    v9 = v13;
    if (v14)
    {
      v10 = 8 * v14;
      do
      {
        v11 = *v9;
        *v9 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v4);
        }

        v9 = (v9 + 8);
        v10 -= 8;
      }

      while (v10);
      v9 = v13;
    }

    if (v9)
    {
      WTF::fastFree(v9, v4);
    }
  }

  return originCopy;
}

- (id)detailsForDatabase:(id)database withOrigin:(id)origin
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (!origin)
  {
    return 0;
  }

  v6 = WebCore::DatabaseManager::singleton(self);
  MEMORY[0x1CCA63A40](&v17, database);
  WebCore::DatabaseManager::detailsForNameAndOrigin(&v18, v6, &v17, [origin _core]);
  v8 = v17;
  v17 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  if (v18)
  {
    v22[0] = WebDatabaseDisplayNameKey;
    v9 = v19;
    if (v19 && *(v19 + 1))
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v17, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }

      v11 = 0;
      database = v17;
    }

    else
    {
      v11 = 1;
    }

    v23[0] = database;
    v22[1] = WebDatabaseExpectedSizeKey;
    v23[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v20, v17}];
    v22[2] = WebDatabaseUsageKey;
    v23[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v21];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    if ((v11 & 1) == 0)
    {
      v13 = v17;
      v17 = 0;
      if (v13)
      {
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v19;
  v19 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = v18;
  v18 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  return v12;
}

- (void)deleteAllDatabases
{
  v2 = WebCore::DatabaseTracker::singleton(self);
  WebCore::DatabaseTracker::deleteAllDatabasesImmediately(v2);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:WebDatabaseDirectoryDefaultsKey];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = @"~/Library/WebKit/Databases";
  }

  stringByStandardizingPath = [(__CFString *)v6 stringByStandardizingPath];

  [defaultManager removeItemAtPath:stringByStandardizingPath error:0];
}

- (BOOL)deleteOrigin:(id)origin
{
  if (!origin)
  {
    return 0;
  }

  v4 = WebCore::DatabaseTracker::singleton(self);
  v5 = [origin _core] + 8;

  return MEMORY[0x1EEE55D78](v4, v5);
}

- (BOOL)deleteDatabase:(id)database withOrigin:(id)origin
{
  if (!origin)
  {
    return 0;
  }

  WebCore::DatabaseTracker::singleton(self);
  [origin _core];
  MEMORY[0x1CCA63A40](&v10, database);
  result = WebCore::DatabaseTracker::deleteDatabase();
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v9 = result;
      WTF::StringImpl::destroy(v8, v7);
      return v9;
    }
  }

  return result;
}

- (void)deleteAllIndexedDatabases
{
  {
    v3 = WebDatabaseProvider::singleton(void)::databaseProvider;
  }

  else
  {
    v3 = WTF::fastMalloc(0x18);
    *(v3 + 8) = 1;
    *v3 = &unk_1F472D5D8;
    *(v3 + 16) = 0;
    WebDatabaseProvider::singleton(void)::databaseProvider = v3;
  }

  WebDatabaseProvider::deleteAllDatabases(v3);
}

@end