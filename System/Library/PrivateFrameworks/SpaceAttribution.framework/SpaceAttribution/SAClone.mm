@interface SAClone
- (BOOL)isInsidePurgeableCacheDir;
- (BOOL)isInsidePurgeableDir;
- (BOOL)isPurgeable;
- (SAClone)initWithInum:(unint64_t)inum volumePath:(id)path flags:(unsigned int)flags dirStatID:(unint64_t)d attributionTag:(unint64_t)tag physicalSize:(unint64_t)size;
- (id)getDirInfoByDirKey:(unint64_t)key volumesInfo:(id)info volumePath:(id)path;
- (id)getOwnerWithVolumesInfo:(id)info;
- (void)getAttributionSizeWithVolumesInfo:(id)info reply:(id)reply;
- (void)getFixUpSizeAndOwnerWithVolumesInfo:(id)info reply:(id)reply;
@end

@implementation SAClone

- (SAClone)initWithInum:(unint64_t)inum volumePath:(id)path flags:(unsigned int)flags dirStatID:(unint64_t)d attributionTag:(unint64_t)tag physicalSize:(unint64_t)size
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = SAClone;
  v16 = [(SAClone *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_inum = inum;
    objc_storeStrong(&v16->_volPath, path);
    v17->_flags = flags;
    v17->_dirStatID = d;
    v17->_attributionHash = tag;
    v17->_physicalSize = size;
  }

  return v17;
}

- (id)getDirInfoByDirKey:(unint64_t)key volumesInfo:(id)info volumePath:(id)path
{
  pathCopy = path;
  infoCopy = info;
  v9 = [NSNumber numberWithUnsignedLongLong:key];
  v10 = [infoCopy getDirCacheElementForDirKey:v9 volumePath:pathCopy climbUpDSHierarchy:1 cacheDiscoveredDirElement:1];

  return v10;
}

- (id)getOwnerWithVolumesInfo:(id)info
{
  infoCopy = info;
  if (!self->_bundleID)
  {
    if (self->_attributionHash)
    {
      v5 = [NSNumber numberWithUnsignedLongLong:?];
      v6 = [infoCopy getBundleIDForTagHash:v5 volumePath:self->_volPath];
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

      v12 = [(SAClone *)self getDirInfoByDirKey:dirStatID volumesInfo:infoCopy volumePath:self->_volPath];
      v5 = v12;
      if (!v12)
      {
        goto LABEL_5;
      }

      bundleIDs = [(SADirCacheElement *)v12 bundleIDs];
      v14 = self->_bundleID;
      self->_bundleID = bundleIDs;

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
  purgeable = [(SADirCacheElement *)self->_dirCacheElement purgeable];
  if (purgeable)
  {
    LOBYTE(purgeable) = ![(SADirCacheElement *)self->_dirCacheElement cacheFolder];
  }

  return purgeable;
}

- (BOOL)isInsidePurgeableCacheDir
{
  cacheFolder = [(SADirCacheElement *)self->_dirCacheElement cacheFolder];
  if (cacheFolder)
  {
    dirCacheElement = self->_dirCacheElement;

    LOBYTE(cacheFolder) = [(SADirCacheElement *)dirCacheElement purgeable];
  }

  return cacheFolder;
}

- (BOOL)isPurgeable
{
  if ([(SAClone *)self isSUPurgeable])
  {
    return 1;
  }

  return [(SAClone *)self isRegularPurgeable];
}

- (void)getFixUpSizeAndOwnerWithVolumesInfo:(id)info reply:(id)reply
{
  infoCopy = info;
  replyCopy = reply;
  v7 = [(SAClone *)self getOwnerWithVolumesInfo:infoCopy];
  attributionHash = self->_attributionHash;
  isFullClone = [(SAClone *)self isFullClone];
  if (attributionHash)
  {
    isRegularPurgeable = [(SAClone *)self isRegularPurgeable];
    if (isFullClone)
    {
      if (isRegularPurgeable)
      {
        [infoCopy addPurgeableTaggedClone:self->_attributionHash size:self->_physicalSize volumePath:self->_volPath];
      }

      goto LABEL_12;
    }

LABEL_11:
    if ((isRegularPurgeable & 1) == 0)
    {
      physicalSize = -self->_physicalSize;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  isPurgeable = [(SAClone *)self isPurgeable];
  if ((isFullClone & 1) == 0)
  {
    if ((isPurgeable & 1) == 0)
    {
      LOBYTE(isRegularPurgeable) = [(SAClone *)self isInsidePurgeableDir];
      goto LABEL_11;
    }

LABEL_12:
    physicalSize = 0;
    goto LABEL_14;
  }

  if ((isPurgeable & 1) == 0 && ![(SAClone *)self isInsidePurgeableDir])
  {
    goto LABEL_12;
  }

  physicalSize = self->_physicalSize;
LABEL_14:
  isInsideCacheDir = [(SAClone *)self isInsideCacheDir];
  if ([(SAClone *)self isSUPurgeable]&& ![(SAClone *)self isInsidePurgeableCacheDir])
  {
    [infoCopy addSUPurgeableClone:self->_dirStatID size:self->_physicalSize volumePath:self->_volPath];
  }

  if (isInsideCacheDir)
  {
    v14 = physicalSize;
  }

  else
  {
    v14 = 0;
  }

  replyCopy[2](replyCopy, v7, physicalSize, v14);
}

- (void)getAttributionSizeWithVolumesInfo:(id)info reply:(id)reply
{
  replyCopy = reply;
  v7 = [(SAClone *)self getOwnerWithVolumesInfo:info];
  replyCopy[2](replyCopy, v7, self->_physicalSize);
}

@end