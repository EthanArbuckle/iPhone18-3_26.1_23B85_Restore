@interface SAVolumeInfo
+ (id)newForPath:(id)path;
- (id)getBundleIDForTagHash:(id)hash;
- (id)getDirCacheElementForDirKey:(id)key;
- (id)getPurgeableTaggedCloneSize:(id)size;
- (id)getSUPurgeableCloneSize:(id)size;
- (void)addDirCacheElement:(id)element dirKey:(id)key;
- (void)addPurgeableTaggedClone:(id)clone size:(id)size;
- (void)addSUPurgeableClone:(id)clone size:(id)size;
- (void)dealloc;
- (void)insertTagHash:(id)hash bundleID:(id)d;
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

+ (id)newForPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_new();
  bzero(&v15, 0x878uLL);
  v5 = statfs([pathCopy fileSystemRepresentation], &v15);
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
      volStat = [v4 volStat];
      memcpy(volStat, &v15, 0x878uLL);
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

- (id)getDirCacheElementForDirKey:(id)key
{
  keyCopy = key;
  v5 = self->_dirKeyCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_dirKeyCache objectForKey:keyCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)addDirCacheElement:(id)element dirKey:(id)key
{
  elementCopy = element;
  keyCopy = key;
  v7 = self->_dirKeyCache;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_dirKeyCache objectForKey:keyCopy];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_dirKeyCache setObject:elementCopy forKey:keyCopy];
  }

  objc_sync_exit(v7);
}

- (void)insertTagHash:(id)hash bundleID:(id)d
{
  hashCopy = hash;
  dCopy = d;
  v7 = self->_tagsMap;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_tagsMap objectForKey:hashCopy];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_tagsMap setObject:dCopy forKey:hashCopy];
  }

  objc_sync_exit(v7);
}

- (id)getBundleIDForTagHash:(id)hash
{
  hashCopy = hash;
  v5 = self->_tagsMap;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_tagsMap objectForKey:hashCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)addPurgeableTaggedClone:(id)clone size:(id)size
{
  cloneCopy = clone;
  sizeCopy = size;
  v7 = self->_purgeableTaggedCloneSize;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_purgeableTaggedCloneSize objectForKey:cloneCopy];
  v9 = v8;
  if (v8)
  {
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 unsignedLongLongValue] + objc_msgSend(sizeCopy, "unsignedLongLongValue"));
  }

  else
  {
    v10 = sizeCopy;
  }

  [(NSMutableDictionary *)self->_purgeableTaggedCloneSize setObject:v10 forKey:cloneCopy];

  objc_sync_exit(v7);
}

- (id)getPurgeableTaggedCloneSize:(id)size
{
  sizeCopy = size;
  v5 = self->_purgeableTaggedCloneSize;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_purgeableTaggedCloneSize objectForKey:sizeCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)addSUPurgeableClone:(id)clone size:(id)size
{
  cloneCopy = clone;
  sizeCopy = size;
  v7 = self->_purgeableSUCloneSize;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_purgeableSUCloneSize objectForKey:cloneCopy];
  v9 = v8;
  if (v8)
  {
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 unsignedLongLongValue] + objc_msgSend(sizeCopy, "unsignedLongLongValue"));
  }

  else
  {
    v10 = sizeCopy;
  }

  [(NSMutableDictionary *)self->_purgeableSUCloneSize setObject:v10 forKey:cloneCopy];

  objc_sync_exit(v7);
}

- (id)getSUPurgeableCloneSize:(id)size
{
  sizeCopy = size;
  v5 = self->_purgeableSUCloneSize;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_purgeableSUCloneSize objectForKey:sizeCopy];
  objc_sync_exit(v5);

  return v6;
}

@end