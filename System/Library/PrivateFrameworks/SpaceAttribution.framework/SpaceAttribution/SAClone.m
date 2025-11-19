@interface SAClone
- (BOOL)isInsidePurgeableCacheDir;
- (BOOL)isInsidePurgeableDir;
- (BOOL)isPurgeable;
- (SAClone)initWithInum:(unint64_t)a3 volumePath:(id)a4 flags:(unsigned int)a5 dirStatID:(unint64_t)a6 attributionTag:(unint64_t)a7 physicalSize:(unint64_t)a8;
- (id)getDirInfoByDirKey:(unint64_t)a3 volumesInfo:(id)a4 volumePath:(id)a5;
- (id)getOwnerWithVolumesInfo:(id)a3;
- (void)getAttributionSizeWithVolumesInfo:(id)a3 reply:(id)a4;
- (void)getFixUpSizeAndOwnerWithVolumesInfo:(id)a3 reply:(id)a4;
@end

@implementation SAClone

- (SAClone)initWithInum:(unint64_t)a3 volumePath:(id)a4 flags:(unsigned int)a5 dirStatID:(unint64_t)a6 attributionTag:(unint64_t)a7 physicalSize:(unint64_t)a8
{
  v15 = a4;
  v19.receiver = self;
  v19.super_class = SAClone;
  v16 = [(SAClone *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_inum = a3;
    objc_storeStrong(&v16->_volPath, a4);
    v17->_flags = a5;
    v17->_dirStatID = a6;
    v17->_attributionHash = a7;
    v17->_physicalSize = a8;
  }

  return v17;
}

- (id)getDirInfoByDirKey:(unint64_t)a3 volumesInfo:(id)a4 volumePath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v10 = [v8 getDirCacheElementForDirKey:v9 volumePath:v7 climbUpDSHierarchy:1 cacheDiscoveredDirElement:1];

  return v10;
}

- (id)getOwnerWithVolumesInfo:(id)a3
{
  v4 = a3;
  if (!self->_bundleID)
  {
    if (self->_attributionHash)
    {
      v5 = [NSNumber numberWithUnsignedLongLong:?];
      v6 = [v4 getBundleIDForTagHash:v5 volumePath:self->_volPath];
      bundleID = self->_bundleID;
      self->_bundleID = v6;
    }

    else
    {
      dirStatID = self->_dirStatID;
      if (!dirStatID)
      {
        goto LABEL_6;
      }

      v12 = [(SAClone *)self getDirInfoByDirKey:dirStatID volumesInfo:v4 volumePath:self->_volPath];
      v5 = v12;
      if (!v12)
      {
        goto LABEL_5;
      }

      v13 = [(SADirCacheElement *)v12 bundleIDs];
      v14 = self->_bundleID;
      self->_bundleID = v13;

      v5 = v5;
      bundleID = self->_dirCacheElement;
      self->_dirCacheElement = v5;
    }

LABEL_5:
  }

LABEL_6:
  v8 = self->_bundleID;
  v9 = v8;

  return v8;
}

- (BOOL)isInsidePurgeableDir
{
  v3 = [(SADirCacheElement *)self->_dirCacheElement purgeable];
  if (v3)
  {
    LOBYTE(v3) = ![(SADirCacheElement *)self->_dirCacheElement cacheFolder];
  }

  return v3;
}

- (BOOL)isInsidePurgeableCacheDir
{
  v3 = [(SADirCacheElement *)self->_dirCacheElement cacheFolder];
  if (v3)
  {
    dirCacheElement = self->_dirCacheElement;

    LOBYTE(v3) = [(SADirCacheElement *)dirCacheElement purgeable];
  }

  return v3;
}

- (BOOL)isPurgeable
{
  if ([(SAClone *)self isSUPurgeable])
  {
    return 1;
  }

  return [(SAClone *)self isRegularPurgeable];
}

- (void)getFixUpSizeAndOwnerWithVolumesInfo:(id)a3 reply:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(SAClone *)self getOwnerWithVolumesInfo:v15];
  attributionHash = self->_attributionHash;
  v9 = [(SAClone *)self isFullClone];
  if (attributionHash)
  {
    v10 = [(SAClone *)self isRegularPurgeable];
    if (v9)
    {
      if (v10)
      {
        [v15 addPurgeableTaggedClone:self->_attributionHash size:self->_physicalSize volumePath:self->_volPath];
      }

      goto LABEL_12;
    }

LABEL_11:
    if ((v10 & 1) == 0)
    {
      physicalSize = -self->_physicalSize;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = [(SAClone *)self isPurgeable];
  if ((v9 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {
      LOBYTE(v10) = [(SAClone *)self isInsidePurgeableDir];
      goto LABEL_11;
    }

LABEL_12:
    physicalSize = 0;
    goto LABEL_14;
  }

  if ((v11 & 1) == 0 && ![(SAClone *)self isInsidePurgeableDir])
  {
    goto LABEL_12;
  }

  physicalSize = self->_physicalSize;
LABEL_14:
  v13 = [(SAClone *)self isInsideCacheDir];
  if ([(SAClone *)self isSUPurgeable]&& ![(SAClone *)self isInsidePurgeableCacheDir])
  {
    [v15 addSUPurgeableClone:self->_dirStatID size:self->_physicalSize volumePath:self->_volPath];
  }

  if (v13)
  {
    v14 = physicalSize;
  }

  else
  {
    v14 = 0;
  }

  v6[2](v6, v7, physicalSize, v14);
}

- (void)getAttributionSizeWithVolumesInfo:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(SAClone *)self getOwnerWithVolumesInfo:a3];
  v6[2](v6, v7, self->_physicalSize);
}

@end