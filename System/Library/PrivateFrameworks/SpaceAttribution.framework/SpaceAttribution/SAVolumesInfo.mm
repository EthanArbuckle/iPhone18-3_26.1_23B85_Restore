@interface SAVolumesInfo
+ (id)newWithVolumesPaths:(id)paths;
- (NSArray)volumesPaths;
- (SAVolumesInfo)initWithVolumesPaths:(id)paths;
- (id)getBundleIDForTagHash:(id)hash volumePath:(id)path;
- (id)getDirCacheElementForDirKey:(id)key volumePath:(id)path climbUpDSHierarchy:(BOOL)hierarchy cacheDiscoveredDirElement:(BOOL)element;
- (id)getPurgeableTaggedCloneSize:(unint64_t)size volumePath:(id)path;
- (id)getSUPurgeableCloneSize:(unint64_t)size volumePath:(id)path;
- (statfs)getVolStatForVolumePath:(id)path;
- (void)addPurgeableTaggedClone:(unint64_t)clone size:(unint64_t)size volumePath:(id)path;
- (void)addSUPurgeableClone:(unint64_t)clone size:(unint64_t)size volumePath:(id)path;
- (void)insertDirCacheElement:(id)element dirKey:(id)key volumePath:(id)path;
- (void)insertTagHash:(id)hash bundleID:(id)d volumePath:(id)path;
@end

@implementation SAVolumesInfo

- (SAVolumesInfo)initWithVolumesPaths:(id)paths
{
  pathsCopy = paths;
  v20.receiver = self;
  v20.super_class = SAVolumesInfo;
  v5 = [(SAVolumesInfo *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_new();
    volumesInfo = v5->_volumesInfo;
    v5->_volumesInfo = v6;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = pathsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [SAVolumeInfo newForPath:v13, v16];
          [(NSMutableDictionary *)v5->_volumesInfo setObject:v14 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

+ (id)newWithVolumesPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [[SAVolumesInfo alloc] initWithVolumesPaths:pathsCopy];

  return v4;
}

- (NSArray)volumesPaths
{
  volumesPaths = self->_volumesPaths;
  if (!volumesPaths)
  {
    allKeys = [(NSMutableDictionary *)self->_volumesInfo allKeys];
    v5 = self->_volumesPaths;
    self->_volumesPaths = allKeys;

    volumesPaths = self->_volumesPaths;
  }

  return volumesPaths;
}

- (id)getDirCacheElementForDirKey:(id)key volumePath:(id)path climbUpDSHierarchy:(BOOL)hierarchy cacheDiscoveredDirElement:(BOOL)element
{
  elementCopy = element;
  hierarchyCopy = hierarchy;
  keyCopy = key;
  pathCopy = path;
  v12 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  v13 = v12;
  if (!v12)
  {
    v16 = SALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100040B94();
    }

    goto LABEL_12;
  }

  v14 = [v12 getDirCacheElementForDirKey:keyCopy];
  if (!v14)
  {
    if (!hierarchyCopy)
    {
      v16 = 0;
LABEL_14:
      v15 = v16;
      goto LABEL_15;
    }

    v31 = keyCopy;
    unsignedLongLongValue = [keyCopy unsignedLongLongValue];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v32 = 1;
    v33 = 33;
    v35 = unsignedLongLongValue;
    if (fsctl([pathCopy fileSystemRepresentation], 0xC1104A71uLL, &v32, 1u))
    {
      v16 = 0;
LABEL_9:
      v18 = SALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100040A48(unsignedLongLongValue, v18);
      }
    }

    else
    {
      v30 = elementCopy;
      v16 = 0;
      v21 = 0;
      v22 = -1024;
      v23 = unsignedLongLongValue;
      while ((v33 & 0x10) == 0)
      {
        v21 |= (v33 >> 3) & 1;
        if ((v33 & 4) != 0)
        {
          v24 = v21;
          v25 = [NSNumber numberWithUnsignedLongLong:v23];
          v26 = [(SAVolumesInfo *)self getDirCacheElementForDirKey:v25 volumePath:pathCopy];

          bundleIDs = [v26 bundleIDs];

          if (bundleIDs)
          {
            bundleIDs2 = [v26 bundleIDs];
            v16 = [SADirCacheElement newWithBundleIDs:bundleIDs2 purgeable:v24 & 1 cacheFolder:0];

            if (v30)
            {
              keyCopy = v31;
              [(SAVolumesInfo *)self insertDirCacheElement:v16 dirKey:v31 volumePath:pathCopy];
              goto LABEL_14;
            }

            goto LABEL_36;
          }

          v16 = v26;
          v21 = v24;
        }

        unsignedLongLongValue = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
          if (v30)
          {
            keyCopy = v31;
            [(SAVolumesInfo *)self insertDirKey:v31 bundleIDs:0 purgeable:0 cache:0 volumePath:pathCopy, 0.0];
            goto LABEL_14;
          }

LABEL_36:
          keyCopy = v31;
          goto LABEL_14;
        }

        if (__CFADD__(v22++, 1))
        {
          v18 = SALog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100040B08(&v35 + 1, v23, v18);
          }

          goto LABEL_11;
        }

        v48 = 0uLL;
        v49 = 0uLL;
        v46 = 0uLL;
        v47 = 0uLL;
        v44 = 0uLL;
        v45 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        v40 = 0uLL;
        v41 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v34 = 0uLL;
        v32 = 1;
        v33 = 33;
        v35 = *(&v35 + 1);
        v23 = unsignedLongLongValue;
        if (fsctl([pathCopy fileSystemRepresentation], 0xC1104A71uLL, &v32, 1u))
        {
          goto LABEL_9;
        }
      }

      v18 = SALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000409D0(v23, v18);
      }
    }

LABEL_11:
    keyCopy = v31;

LABEL_12:
    v19 = 0;
    goto LABEL_16;
  }

  v15 = v14;
LABEL_15:
  v16 = v15;
  v19 = v15;
LABEL_16:

  return v19;
}

- (statfs)getVolStatForVolumePath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  if (!v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040C08();
    }

    v5 = [SAVolumeInfo newForPath:pathCopy];
    [(NSMutableDictionary *)self->_volumesInfo setObject:v5 forKeyedSubscript:pathCopy];
  }

  volStat = [v5 volStat];

  return volStat;
}

- (void)insertDirCacheElement:(id)element dirKey:(id)key volumePath:(id)path
{
  elementCopy = element;
  keyCopy = key;
  pathCopy = path;
  v11 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  v12 = v11;
  if (v11)
  {
    [v11 addDirCacheElement:elementCopy dirKey:keyCopy];
  }

  else
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100040C7C();
    }
  }
}

- (void)insertTagHash:(id)hash bundleID:(id)d volumePath:(id)path
{
  hashCopy = hash;
  dCopy = d;
  pathCopy = path;
  v11 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  v12 = v11;
  if (v11)
  {
    [v11 insertTagHash:hashCopy bundleID:dCopy];
  }

  else
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100040D64();
    }
  }
}

- (id)getBundleIDForTagHash:(id)hash volumePath:(id)path
{
  hashCopy = hash;
  pathCopy = path;
  v8 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 getBundleIDForTagHash:hashCopy];
  }

  else
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100040DD8();
    }

    v10 = 0;
  }

  return v10;
}

- (void)addPurgeableTaggedClone:(unint64_t)clone size:(unint64_t)size volumePath:(id)path
{
  pathCopy = path;
  v9 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:clone];
    v11 = [NSNumber numberWithUnsignedLongLong:size];
    [v9 addPurgeableTaggedClone:v10 size:v11];
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100040E4C();
    }
  }
}

- (id)getPurgeableTaggedCloneSize:(unint64_t)size volumePath:(id)path
{
  pathCopy = path;
  v7 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:size];
    v9 = [v7 getPurgeableTaggedCloneSize:v8];
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100040EC0();
    }

    v9 = 0;
  }

  return v9;
}

- (void)addSUPurgeableClone:(unint64_t)clone size:(unint64_t)size volumePath:(id)path
{
  pathCopy = path;
  v9 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:clone];
    v11 = [NSNumber numberWithUnsignedLongLong:size];
    [v9 addSUPurgeableClone:v10 size:v11];
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100040F34();
    }
  }
}

- (id)getSUPurgeableCloneSize:(unint64_t)size volumePath:(id)path
{
  pathCopy = path;
  v7 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:pathCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:size];
    v9 = [v7 getSUPurgeableCloneSize:v8];
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100040FA8();
    }

    v9 = 0;
  }

  return v9;
}

@end