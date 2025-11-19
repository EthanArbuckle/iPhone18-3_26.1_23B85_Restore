@interface PLPrimaryResourceDataStoreReferenceFileKey
+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4;
- (PLPrimaryResourceDataStoreReferenceFileKey)initWithKeyStruct:(const void *)a3;
- (PLPrimaryResourceDataStoreReferenceFileKey)initWithResourceType:(unsigned int)a3;
- (id)fileURLForAssetID:(id)a3 inContext:(id)a4;
- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4;
@end

@implementation PLPrimaryResourceDataStoreReferenceFileKey

- (PLPrimaryResourceDataStoreReferenceFileKey)initWithKeyStruct:(const void *)a3
{
  v5.receiver = self;
  v5.super_class = PLPrimaryResourceDataStoreReferenceFileKey;
  result = [(PLPrimaryResourceDataStoreKey *)&v5 _initWithKeyStruct:?];
  if (result)
  {
    *&result->_keyStruct = *a3;
  }

  return result;
}

- (id)fileURLForAssetID:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&fileURLForAssetID_inContext__cacheUrlLock);
  if (!self->_cachedUrl)
  {
    v8 = _urlForKeyStruct(&self->_keyStruct, v6, v7);
    cachedUrl = self->_cachedUrl;
    self->_cachedUrl = v8;
  }

  os_unfair_lock_unlock(&fileURLForAssetID_inContext__cacheUrlLock);
  v10 = self->_cachedUrl;
  v11 = v10;

  return v10;
}

- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PLPrimaryResourceDataStoreReferenceFileKey;
  v7 = [(PLPrimaryResourceDataStoreKey *)&v11 _initFromExistingLocationOfExternalResource:v6 asset:a4];
  if (v7)
  {
    v8 = v7;
    if ([v6 resourceType] > 0x1F)
    {
      v9 = 0;
    }

    else
    {
      v9 = -[PLPrimaryResourceDataStoreReferenceFileKey initWithResourceType:]([PLPrimaryResourceDataStoreReferenceFileKey alloc], "initWithResourceType:", [v6 resourceType]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PLPrimaryResourceDataStoreReferenceFileKey)initWithResourceType:(unsigned int)a3
{
  if (a3 >= 0x20)
  {
    __assert_rtn("[PLPrimaryResourceDataStoreReferenceFileKey initWithResourceType:]", "PLPrimaryResourceDataStoreReferenceFileKey.m", 105, "resourceType <= kPLResourceTypeMax");
  }

  v3 = a3;
  v5.receiver = self;
  v5.super_class = PLPrimaryResourceDataStoreReferenceFileKey;
  result = [(PLPrimaryResourceDataStoreKey *)&v5 _init];
  if (result)
  {
    *&result->_keyStruct = *&result->_keyStruct & 0x8000 | (v3 << 10) | 4;
  }

  return result;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4
{
  v6 = a3;
  v4 = _urlForKeyStruct(&v6, a4, 0);

  return v4;
}

@end