@interface SAVolumesInfo
+ (id)newWithVolumesPaths:(id)a3;
- (NSArray)volumesPaths;
- (SAVolumesInfo)initWithVolumesPaths:(id)a3;
- (id)getBundleIDForTagHash:(id)a3 volumePath:(id)a4;
- (id)getDirCacheElementForDirKey:(id)a3 volumePath:(id)a4 climbUpDSHierarchy:(BOOL)a5 cacheDiscoveredDirElement:(BOOL)a6;
- (id)getPurgeableTaggedCloneSize:(unint64_t)a3 volumePath:(id)a4;
- (id)getSUPurgeableCloneSize:(unint64_t)a3 volumePath:(id)a4;
- (statfs)getVolStatForVolumePath:(id)a3;
- (void)addPurgeableTaggedClone:(unint64_t)a3 size:(unint64_t)a4 volumePath:(id)a5;
- (void)addSUPurgeableClone:(unint64_t)a3 size:(unint64_t)a4 volumePath:(id)a5;
- (void)insertDirCacheElement:(id)a3 dirKey:(id)a4 volumePath:(id)a5;
- (void)insertTagHash:(id)a3 bundleID:(id)a4 volumePath:(id)a5;
@end

@implementation SAVolumesInfo

- (SAVolumesInfo)initWithVolumesPaths:(id)a3
{
  v4 = a3;
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
    v8 = v4;
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

+ (id)newWithVolumesPaths:(id)a3
{
  v3 = a3;
  v4 = [[SAVolumesInfo alloc] initWithVolumesPaths:v3];

  return v4;
}

- (NSArray)volumesPaths
{
  volumesPaths = self->_volumesPaths;
  if (!volumesPaths)
  {
    v4 = [(NSMutableDictionary *)self->_volumesInfo allKeys];
    v5 = self->_volumesPaths;
    self->_volumesPaths = v4;

    volumesPaths = self->_volumesPaths;
  }

  return volumesPaths;
}

- (id)getDirCacheElementForDirKey:(id)a3 volumePath:(id)a4 climbUpDSHierarchy:(BOOL)a5 cacheDiscoveredDirElement:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v11];
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

  v14 = [v12 getDirCacheElementForDirKey:v10];
  if (!v14)
  {
    if (!v7)
    {
      v16 = 0;
LABEL_14:
      v15 = v16;
      goto LABEL_15;
    }

    v31 = v10;
    v17 = [v10 unsignedLongLongValue];
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
    v35 = v17;
    if (fsctl([v11 fileSystemRepresentation], 0xC1104A71uLL, &v32, 1u))
    {
      v16 = 0;
LABEL_9:
      v18 = SALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100040A48(v17, v18);
      }
    }

    else
    {
      v30 = v6;
      v16 = 0;
      v21 = 0;
      v22 = -1024;
      v23 = v17;
      while ((v33 & 0x10) == 0)
      {
        v21 |= (v33 >> 3) & 1;
        if ((v33 & 4) != 0)
        {
          v24 = v21;
          v25 = [NSNumber numberWithUnsignedLongLong:v23];
          v26 = [(SAVolumesInfo *)self getDirCacheElementForDirKey:v25 volumePath:v11];

          v27 = [v26 bundleIDs];

          if (v27)
          {
            v29 = [v26 bundleIDs];
            v16 = [SADirCacheElement newWithBundleIDs:v29 purgeable:v24 & 1 cacheFolder:0];

            if (v30)
            {
              v10 = v31;
              [(SAVolumesInfo *)self insertDirCacheElement:v16 dirKey:v31 volumePath:v11];
              goto LABEL_14;
            }

            goto LABEL_36;
          }

          v16 = v26;
          v21 = v24;
        }

        v17 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
          if (v30)
          {
            v10 = v31;
            [(SAVolumesInfo *)self insertDirKey:v31 bundleIDs:0 purgeable:0 cache:0 volumePath:v11, 0.0];
            goto LABEL_14;
          }

LABEL_36:
          v10 = v31;
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
        v23 = v17;
        if (fsctl([v11 fileSystemRepresentation], 0xC1104A71uLL, &v32, 1u))
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
    v10 = v31;

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

- (statfs)getVolStatForVolumePath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v4];
  if (!v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040C08();
    }

    v5 = [SAVolumeInfo newForPath:v4];
    [(NSMutableDictionary *)self->_volumesInfo setObject:v5 forKeyedSubscript:v4];
  }

  v7 = [v5 volStat];

  return v7;
}

- (void)insertDirCacheElement:(id)a3 dirKey:(id)a4 volumePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    [v11 addDirCacheElement:v8 dirKey:v9];
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

- (void)insertTagHash:(id)a3 bundleID:(id)a4 volumePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    [v11 insertTagHash:v8 bundleID:v9];
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

- (id)getBundleIDForTagHash:(id)a3 volumePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 getBundleIDForTagHash:v6];
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

- (void)addPurgeableTaggedClone:(unint64_t)a3 size:(unint64_t)a4 volumePath:(id)a5
{
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v8];
  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:a3];
    v11 = [NSNumber numberWithUnsignedLongLong:a4];
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

- (id)getPurgeableTaggedCloneSize:(unint64_t)a3 volumePath:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v6];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:a3];
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

- (void)addSUPurgeableClone:(unint64_t)a3 size:(unint64_t)a4 volumePath:(id)a5
{
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v8];
  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:a3];
    v11 = [NSNumber numberWithUnsignedLongLong:a4];
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

- (id)getSUPurgeableCloneSize:(unint64_t)a3 volumePath:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_volumesInfo objectForKey:v6];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:a3];
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