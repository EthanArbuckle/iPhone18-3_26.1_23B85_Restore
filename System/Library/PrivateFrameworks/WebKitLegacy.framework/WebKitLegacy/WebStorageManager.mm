@interface WebStorageManager
+ (id)_storageDirectoryPath;
+ (id)sharedWebStorageManager;
- (WebStorageManager)init;
- (id)origins;
- (unint64_t)diskUsageForOrigin:(id)origin;
- (void)deleteAllOrigins;
- (void)deleteOrigin:(id)origin;
- (void)syncFileSystemAndTrackerDatabase;
@end

@implementation WebStorageManager

+ (id)sharedWebStorageManager
{
  if (_MergedGlobals_26 == 1)
  {
    return qword_1ED6A62E8;
  }

  result = objc_alloc_init(WebStorageManager);
  qword_1ED6A62E8 = result;
  _MergedGlobals_26 = 1;
  return result;
}

- (WebStorageManager)init
{
  v4.receiver = self;
  v4.super_class = WebStorageManager;
  result = [(WebStorageManager *)&v4 init];
  if (result)
  {
    v3 = result;
    WebKitInitializeStorageIfNecessary();
    return v3;
  }

  return result;
}

- (id)origins
{
  WebKit::StorageTracker::tracker(self, a2);
  WebKit::StorageTracker::origins(v2, &v19);
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

- (void)deleteAllOrigins
{
  WebKit::StorageTracker::tracker(self, a2);
  WebKit::StorageTracker::deleteAllOrigins(v2);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[WebStorageManager _storageDirectoryPath];

  [defaultManager removeItemAtPath:v4 error:0];
}

- (void)deleteOrigin:(id)origin
{
  v4 = WebKit::StorageTracker::tracker(self, a2);
  v6 = v5;
  v7 = ([origin _core] + 8);

  WebKit::StorageTracker::deleteOrigin(v6, v7);
}

- (unint64_t)diskUsageForOrigin:(id)origin
{
  v4 = WebKit::StorageTracker::tracker(self, a2);
  v6 = v5;
  _core = [origin _core];

  return WebKit::StorageTracker::diskUsageForOrigin(v6, _core);
}

- (void)syncFileSystemAndTrackerDatabase
{
  WebKit::StorageTracker::tracker(self, a2);

  WebKit::StorageTracker::syncFileSystemAndTrackerDatabase(v2);
}

+ (id)_storageDirectoryPath
{
  if (byte_1ED6A62E1)
  {
    if (qword_1ED6A62F8 == -1)
    {
      return qword_1ED6A62F0;
    }
  }

  else
  {
    qword_1ED6A62F0 = 0;
    byte_1ED6A62E1 = 1;
    if (qword_1ED6A62F8 == -1)
    {
      return qword_1ED6A62F0;
    }
  }

  dispatch_once(&qword_1ED6A62F8, &__block_literal_global_5);
  return qword_1ED6A62F0;
}

void __42__WebStorageManager__storageDirectoryPath__block_invoke()
{
  v9 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v9 && (v0 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v9;
  }

  else
  {
    v2 = [-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSLibraryDirectory 1uLL];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    if (v9)
    {
    }

    v1 = v3;
  }

  v10 = v1;
  v5 = [v1 stringByStandardizingPath];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  v8 = qword_1ED6A62F0;
  qword_1ED6A62F0 = v6;
  if (v8)
  {
  }

  if (v10)
  {
  }
}

@end