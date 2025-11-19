@interface VUIStreamingBookmarkCache
+ (id)sharedInstance;
- (VUIStreamingBookmarkCache)init;
- (void)_activeAccountChangedNotification:(id)a3;
- (void)addBookmarkForReferenceID:(id)a3 canonicalID:(id)a4 absoluteResumeTime:(id)a5 absoluteBookmarkTimestamp:(id)a6 relativeResumeTime:(id)a7 relativeBookmarkTimestamp:(id)a8;
- (void)dealloc;
- (void)removeBookmarkForCanonicalID:(id)a3;
- (void)removeBookmarkForReferenceID:(id)a3;
- (void)resumeTimeInfoForReferenceID:(id)a3 outAbsoluteResumeTime:(id *)a4 outAbsoluteTimestamp:(id *)a5 outMainContentRelativeResumeTime:(id *)a6 outMainContentRelativeTimestamp:(id *)a7;
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

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__activeAccountChangedNotification_ name:*MEMORY[0x1E69D4A40] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIStreamingBookmarkCache;
  [(VUIStreamingBookmarkCache *)&v4 dealloc];
}

- (void)resumeTimeInfoForReferenceID:(id)a3 outAbsoluteResumeTime:(id *)a4 outAbsoluteTimestamp:(id *)a5 outMainContentRelativeResumeTime:(id *)a6 outMainContentRelativeTimestamp:(id *)a7
{
  v12 = a3;
  v13 = v12;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (v12)
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
      v15 = self;
      objc_sync_enter(v15);
      v16 = self->_bookmarkCacheStore;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __166__VUIStreamingBookmarkCache_resumeTimeInfoForReferenceID_outAbsoluteResumeTime_outAbsoluteTimestamp_outMainContentRelativeResumeTime_outMainContentRelativeTimestamp___block_invoke;
      v25[3] = &unk_1E872FDF8;
      v27 = buf;
      v26 = v13;
      [(NSMutableDictionary *)v16 enumerateKeysAndObjectsUsingBlock:v25];

      objc_sync_exit(v15);
      v17 = *(v29 + 5);
      if (v17)
      {
        if (a4)
        {
          v18 = [v17 absoluteResumeTime];
          *a4 = [v18 copy];
        }

        if (a5)
        {
          v19 = [*(v29 + 5) absoluteBookmarkTimestamp];
          *a5 = [v19 copy];
        }

        if (a6)
        {
          v20 = [*(v29 + 5) relativeResumeTime];
          *a6 = [v20 copy];
        }

        if (!a7)
        {
          goto LABEL_30;
        }

        v21 = [*(v29 + 5) relativeBookmarkTimestamp];
        *a7 = [v21 copy];
      }

      else
      {
        v21 = VUIDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIStreamingBookmarkCache - Reference ID not found", v24, 2u);
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

- (void)addBookmarkForReferenceID:(id)a3 canonicalID:(id)a4 absoluteResumeTime:(id)a5 absoluteBookmarkTimestamp:(id)a6 relativeResumeTime:(id)a7 relativeBookmarkTimestamp:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14 && v15)
  {
    v20 = [[VUIStreamingBookmark alloc] initWithAbsoluteResumeTime:v16 absoluteTimestamp:v17 relativeResumeTime:v18 relativeBookmarkTimestamp:v19];
    v21 = self;
    objc_sync_enter(v21);
    if (v20)
    {
      v22 = [(NSMutableDictionary *)v21->_bookmarkCacheStore objectForKey:v15];
      if (!v22)
      {
        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [v22 setObject:v20 forKey:v14];
      [(NSMutableDictionary *)v21->_bookmarkCacheStore setObject:v22 forKey:v15];
    }

    objc_sync_exit(v21);
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

- (void)removeBookmarkForReferenceID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    bookmarkCacheStore = v5->_bookmarkCacheStore;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__VUIStreamingBookmarkCache_removeBookmarkForReferenceID___block_invoke;
    v7[3] = &unk_1E872FE20;
    v8 = v4;
    [(NSMutableDictionary *)bookmarkCacheStore enumerateKeysAndObjectsUsingBlock:v7];

    objc_sync_exit(v5);
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

- (void)removeBookmarkForCanonicalID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableDictionary *)v5->_bookmarkCacheStore removeObjectForKey:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)_activeAccountChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69D5920] activeAccount];
  if (!v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIStreamingBookmarkCache - User signs out. clear cached bookmarks", v8, 2u);
    }

    v7 = self;
    objc_sync_enter(v7);
    [(NSMutableDictionary *)v7->_bookmarkCacheStore removeAllObjects];
    objc_sync_exit(v7);
  }
}

@end