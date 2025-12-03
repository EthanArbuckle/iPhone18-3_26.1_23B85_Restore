@interface PLPrimaryResourceDataStoreReferenceFileKey
+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d;
- (PLPrimaryResourceDataStoreReferenceFileKey)initWithKeyStruct:(const void *)struct;
- (PLPrimaryResourceDataStoreReferenceFileKey)initWithResourceType:(unsigned int)type;
- (id)fileURLForAssetID:(id)d inContext:(id)context;
- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset;
@end

@implementation PLPrimaryResourceDataStoreReferenceFileKey

- (PLPrimaryResourceDataStoreReferenceFileKey)initWithKeyStruct:(const void *)struct
{
  v5.receiver = self;
  v5.super_class = PLPrimaryResourceDataStoreReferenceFileKey;
  result = [(PLPrimaryResourceDataStoreKey *)&v5 _initWithKeyStruct:?];
  if (result)
  {
    *&result->_keyStruct = *struct;
  }

  return result;
}

- (id)fileURLForAssetID:(id)d inContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  os_unfair_lock_lock(&fileURLForAssetID_inContext__cacheUrlLock);
  if (!self->_cachedUrl)
  {
    v8 = _urlForKeyStruct(&self->_keyStruct, dCopy, contextCopy);
    cachedUrl = self->_cachedUrl;
    self->_cachedUrl = v8;
  }

  os_unfair_lock_unlock(&fileURLForAssetID_inContext__cacheUrlLock);
  v10 = self->_cachedUrl;
  v11 = v10;

  return v10;
}

- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset
{
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = PLPrimaryResourceDataStoreReferenceFileKey;
  v7 = [(PLPrimaryResourceDataStoreKey *)&v11 _initFromExistingLocationOfExternalResource:resourceCopy asset:asset];
  if (v7)
  {
    v8 = v7;
    if ([resourceCopy resourceType] > 0x1F)
    {
      v9 = 0;
    }

    else
    {
      v9 = -[PLPrimaryResourceDataStoreReferenceFileKey initWithResourceType:]([PLPrimaryResourceDataStoreReferenceFileKey alloc], "initWithResourceType:", [resourceCopy resourceType]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PLPrimaryResourceDataStoreReferenceFileKey)initWithResourceType:(unsigned int)type
{
  if (type >= 0x20)
  {
    __assert_rtn("[PLPrimaryResourceDataStoreReferenceFileKey initWithResourceType:]", "PLPrimaryResourceDataStoreReferenceFileKey.m", 105, "resourceType <= kPLResourceTypeMax");
  }

  typeCopy = type;
  v5.receiver = self;
  v5.super_class = PLPrimaryResourceDataStoreReferenceFileKey;
  result = [(PLPrimaryResourceDataStoreKey *)&v5 _init];
  if (result)
  {
    *&result->_keyStruct = *&result->_keyStruct & 0x8000 | (typeCopy << 10) | 4;
  }

  return result;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d
{
  dataCopy = data;
  v4 = _urlForKeyStruct(&dataCopy, d, 0);

  return v4;
}

@end