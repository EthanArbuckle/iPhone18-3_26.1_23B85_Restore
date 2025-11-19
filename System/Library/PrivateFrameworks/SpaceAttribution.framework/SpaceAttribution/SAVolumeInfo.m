@interface SAVolumeInfo
+ (id)newForPath:(id)a3;
- (id)getBundleIDForTagHash:(id)a3;
- (id)getDirCacheElementForDirKey:(id)a3;
- (id)getPurgeableTaggedCloneSize:(id)a3;
- (id)getSUPurgeableCloneSize:(id)a3;
- (void)addDirCacheElement:(id)a3 dirKey:(id)a4;
- (void)addPurgeableTaggedClone:(id)a3 size:(id)a4;
- (void)addSUPurgeableClone:(id)a3 size:(id)a4;
- (void)dealloc;
- (void)insertTagHash:(id)a3 bundleID:(id)a4;
@end

@implementation SAVolumeInfo

- (void)dealloc
{
  if (self->_volStat)
  {
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000407B4(v3);
    }

    free(self->_volStat);
  }

  v4.receiver = self;
  v4.super_class = SAVolumeInfo;
  [(SAVolumeInfo *)&v4 dealloc];
}

+ (id)newForPath:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  bzero(&v15, 0x878uLL);
  v5 = statfs([v3 fileSystemRepresentation], &v15);
  v6 = SALog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040838(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000408DC();
    }

    [v4 setVolStat:{malloc_type_malloc(0x878uLL, 0x100004087E0324AuLL)}];
    if ([v4 volStat])
    {
      v9 = [v4 volStat];
      memcpy(v9, &v15, 0x878uLL);
      v10 = objc_opt_new();
      [v4 setDirKeyCache:v10];

      v11 = objc_opt_new();
      [v4 setTagsMap:v11];

      v12 = objc_opt_new();
      [v4 setPurgeableTaggedCloneSize:v12];

      v13 = objc_opt_new();
      [v4 setPurgeableSUCloneSize:v13];

      v8 = v4;
      goto LABEL_9;
    }

    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004095C();
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)getDirCacheElementForDirKey:(id)a3
{
  v4 = a3;
  v5 = self->_dirKeyCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_dirKeyCache objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)addDirCacheElement:(id)a3 dirKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_dirKeyCache;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_dirKeyCache objectForKey:v6];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_dirKeyCache setObject:v9 forKey:v6];
  }

  objc_sync_exit(v7);
}

- (void)insertTagHash:(id)a3 bundleID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_tagsMap;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_tagsMap objectForKey:v9];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_tagsMap setObject:v6 forKey:v9];
  }

  objc_sync_exit(v7);
}

- (id)getBundleIDForTagHash:(id)a3
{
  v4 = a3;
  v5 = self->_tagsMap;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_tagsMap objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)addPurgeableTaggedClone:(id)a3 size:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self->_purgeableTaggedCloneSize;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_purgeableTaggedCloneSize objectForKey:v11];
  v9 = v8;
  if (v8)
  {
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 unsignedLongLongValue] + objc_msgSend(v6, "unsignedLongLongValue"));
  }

  else
  {
    v10 = v6;
  }

  [(NSMutableDictionary *)self->_purgeableTaggedCloneSize setObject:v10 forKey:v11];

  objc_sync_exit(v7);
}

- (id)getPurgeableTaggedCloneSize:(id)a3
{
  v4 = a3;
  v5 = self->_purgeableTaggedCloneSize;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_purgeableTaggedCloneSize objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)addSUPurgeableClone:(id)a3 size:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self->_purgeableSUCloneSize;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_purgeableSUCloneSize objectForKey:v11];
  v9 = v8;
  if (v8)
  {
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 unsignedLongLongValue] + objc_msgSend(v6, "unsignedLongLongValue"));
  }

  else
  {
    v10 = v6;
  }

  [(NSMutableDictionary *)self->_purgeableSUCloneSize setObject:v10 forKey:v11];

  objc_sync_exit(v7);
}

- (id)getSUPurgeableCloneSize:(id)a3
{
  v4 = a3;
  v5 = self->_purgeableSUCloneSize;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_purgeableSUCloneSize objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

@end