@interface VUIStreamingBookmarkCache
+ (id)sharedInstance;
- (VUIStreamingBookmarkCache)init;
- (void)_activeAccountChangedNotification:(id)notification;
- (void)addBookmarkForReferenceID:(id)d canonicalID:(id)iD absoluteResumeTime:(id)time absoluteBookmarkTimestamp:(id)timestamp relativeResumeTime:(id)resumeTime relativeBookmarkTimestamp:(id)bookmarkTimestamp;
- (void)dealloc;
- (void)removeBookmarkForCanonicalID:(id)d;
- (void)removeBookmarkForReferenceID:(id)d;
- (void)resumeTimeInfoForReferenceID:(id)d outAbsoluteResumeTime:(id *)time outAbsoluteTimestamp:(id *)timestamp outMainContentRelativeResumeTime:(id *)resumeTime outMainContentRelativeTimestamp:(id *)relativeTimestamp;
@end

@implementation VUIStreamingBookmarkCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[VUIStreamingBookmarkCache sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

void __43__VUIStreamingBookmarkCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIStreamingBookmarkCache);
  v1 = sharedInstance_singleton;
  sharedInstance_singleton = v0;
}

- (VUIStreamingBookmarkCache)init
{
  v7.receiver = self;
  v7.super_class = VUIStreamingBookmarkCache;
  v2 = [(VUIStreamingBookmarkCache *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bookmarkCacheStore = v2->_bookmarkCacheStore;
    v2->_bookmarkCacheStore = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__activeAccountChangedNotification_ name:*MEMORY[0x1E69D4A40] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIStreamingBookmarkCache;
  [(VUIStreamingBookmarkCache *)&v4 dealloc];
}

- (void)resumeTimeInfoForReferenceID:(id)d outAbsoluteResumeTime:(id *)time outAbsoluteTimestamp:(id *)timestamp outMainContentRelativeResumeTime:(id *)resumeTime outMainContentRelativeTimestamp:(id *)relativeTimestamp
{
  dCopy = d;
  v13 = dCopy;
  if (time)
  {
    *time = 0;
  }

  if (timestamp)
  {
    *timestamp = 0;
  }

  if (resumeTime)
  {
    *resumeTime = 0;
  }

  if (relativeTimestamp)
  {
    *relativeTimestamp = 0;
  }

  if (dCopy)
  {
    bookmarkCacheStore = self->_bookmarkCacheStore;
    if (bookmarkCacheStore && [(NSMutableDictionary *)bookmarkCacheStore count])
    {
      *buf = 0;
      v29 = buf;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__5;
      v32 = __Block_byref_object_dispose__5;
      v33 = 0;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v16 = self->_bookmarkCacheStore;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __166__VUIStreamingBookmarkCache_resumeTimeInfoForReferenceID_outAbsoluteResumeTime_outAbsoluteTimestamp_outMainContentRelativeResumeTime_outMainContentRelativeTimestamp___block_invoke;
      v25[3] = &unk_1E872FDF8;
      v27 = buf;
      v26 = v13;
      [(NSMutableDictionary *)v16 enumerateKeysAndObjectsUsingBlock:v25];

      objc_sync_exit(selfCopy);
      v17 = *(v29 + 5);
      if (v17)
      {
        if (time)
        {
          absoluteResumeTime = [v17 absoluteResumeTime];
          *time = [absoluteResumeTime copy];
        }

        if (timestamp)
        {
          absoluteBookmarkTimestamp = [*(v29 + 5) absoluteBookmarkTimestamp];
          *timestamp = [absoluteBookmarkTimestamp copy];
        }

        if (resumeTime)
        {
          relativeResumeTime = [*(v29 + 5) relativeResumeTime];
          *resumeTime = [relativeResumeTime copy];
        }

        if (!relativeTimestamp)
        {
          goto LABEL_30;
        }

        relativeBookmarkTimestamp = [*(v29 + 5) relativeBookmarkTimestamp];
        *relativeTimestamp = [relativeBookmarkTimestamp copy];
      }

      else
      {
        relativeBookmarkTimestamp = VUIDefaultLogObject();
        if (os_log_type_enabled(relativeBookmarkTimestamp, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_1E323F000, relativeBookmarkTimestamp, OS_LOG_TYPE_DEFAULT, "VUIStreamingBookmarkCache - Reference ID not found", v24, 2u);
        }
      }

LABEL_30:
      _Block_object_dispose(buf, 8);

      goto LABEL_31;
    }

    v22 = VUIDefaultLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "VUIStreamingBookmarkCache - Empty bookmark cache store";
LABEL_25:
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    }
  }

  else
  {
    v22 = VUIDefaultLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "VUIStreamingBookmarkCache - resumeTimeInfoForReferenceID: referenceID or canonicalID is nil";
      goto LABEL_25;
    }
  }

LABEL_31:
}

void __166__VUIStreamingBookmarkCache_resumeTimeInfoForReferenceID_outAbsoluteResumeTime_outAbsoluteTimestamp_outMainContentRelativeResumeTime_outMainContentRelativeTimestamp___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 objectForKey:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)addBookmarkForReferenceID:(id)d canonicalID:(id)iD absoluteResumeTime:(id)time absoluteBookmarkTimestamp:(id)timestamp relativeResumeTime:(id)resumeTime relativeBookmarkTimestamp:(id)bookmarkTimestamp
{
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  timestampCopy = timestamp;
  resumeTimeCopy = resumeTime;
  bookmarkTimestampCopy = bookmarkTimestamp;
  if (dCopy && iDCopy)
  {
    v20 = [[VUIStreamingBookmark alloc] initWithAbsoluteResumeTime:timeCopy absoluteTimestamp:timestampCopy relativeResumeTime:resumeTimeCopy relativeBookmarkTimestamp:bookmarkTimestampCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v20)
    {
      v22 = [(NSMutableDictionary *)selfCopy->_bookmarkCacheStore objectForKey:iDCopy];
      if (!v22)
      {
        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [v22 setObject:v20 forKey:dCopy];
      [(NSMutableDictionary *)selfCopy->_bookmarkCacheStore setObject:v22 forKey:iDCopy];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, &v20->super, OS_LOG_TYPE_DEFAULT, "VUIStreamingBookmarkCache - Unable to add bookmark because referenceID or canonicalID is nil", v23, 2u);
    }
  }
}

- (void)removeBookmarkForReferenceID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    bookmarkCacheStore = selfCopy->_bookmarkCacheStore;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__VUIStreamingBookmarkCache_removeBookmarkForReferenceID___block_invoke;
    v7[3] = &unk_1E872FE20;
    v8 = dCopy;
    [(NSMutableDictionary *)bookmarkCacheStore enumerateKeysAndObjectsUsingBlock:v7];

    objc_sync_exit(selfCopy);
  }
}

void __58__VUIStreamingBookmarkCache_removeBookmarkForReferenceID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v6 = [v7 objectForKey:*(a1 + 32)];

  if (v6)
  {
    [v7 removeObjectForKey:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)removeBookmarkForCanonicalID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_bookmarkCacheStore removeObjectForKey:v6];
    objc_sync_exit(selfCopy);

    dCopy = v6;
  }
}

- (void)_activeAccountChangedNotification:(id)notification
{
  notificationCopy = notification;
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  if (!activeAccount)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIStreamingBookmarkCache - User signs out. clear cached bookmarks", v8, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_bookmarkCacheStore removeAllObjects];
    objc_sync_exit(selfCopy);
  }
}

@end