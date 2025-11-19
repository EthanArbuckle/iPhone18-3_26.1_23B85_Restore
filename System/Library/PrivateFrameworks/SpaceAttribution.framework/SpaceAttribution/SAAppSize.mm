@interface SAAppSize
+ (id)newWithFixedSize:(unint64_t)a3 dataSize:(unint64_t)a4 cloneSize:(unint64_t)a5 purgeableSize:(unint64_t)a6 cloneFixUpSize:(int64_t)a7 physicalSize:(unint64_t)a8 appCacheSize:(unint64_t)a9 CDPluginSize:(unint64_t)a10;
- (SAAppSize)init;
- (SAAppSize)initWithCoder:(id)a3;
- (SAAppSize)initWithFixedSize:(unint64_t)a3 dataSize:(unint64_t)a4 cloneSize:(unint64_t)a5 purgeableSize:(unint64_t)a6 cloneFixUpSize:(int64_t)a7 physicalSize:(unint64_t)a8 appCacheSize:(unint64_t)a9 CDPluginSize:(unint64_t)a10;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SAAppSize

- (SAAppSize)init
{
  v3.receiver = self;
  v3.super_class = SAAppSize;
  result = [(SAAppSize *)&v3 init];
  if (result)
  {
    result->_cacheIsPurgeable = 0;
    *&result->_fixedSize = 0u;
    *&result->_purgeableSize = 0u;
    *&result->_physicalSize = 0u;
    *&result->_appCacheSize = 0u;
  }

  return result;
}

- (SAAppSize)initWithFixedSize:(unint64_t)a3 dataSize:(unint64_t)a4 cloneSize:(unint64_t)a5 purgeableSize:(unint64_t)a6 cloneFixUpSize:(int64_t)a7 physicalSize:(unint64_t)a8 appCacheSize:(unint64_t)a9 CDPluginSize:(unint64_t)a10
{
  v17.receiver = self;
  v17.super_class = SAAppSize;
  result = [(SAAppSize *)&v17 init];
  if (result)
  {
    result->_fixedSize = a3;
    result->_dataSize = a4;
    result->_purgeableSize = a6;
    result->_cloneSize = a5;
    result->_physicalSize = a8;
    result->_cloneFixUpSize = a7;
    result->_appCacheSize = a9;
    result->_cacheDeletePluginSize = a10;
  }

  return result;
}

+ (id)newWithFixedSize:(unint64_t)a3 dataSize:(unint64_t)a4 cloneSize:(unint64_t)a5 purgeableSize:(unint64_t)a6 cloneFixUpSize:(int64_t)a7 physicalSize:(unint64_t)a8 appCacheSize:(unint64_t)a9 CDPluginSize:(unint64_t)a10
{
  v16 = [SAAppSize alloc];

  return [SAAppSize initWithFixedSize:v16 dataSize:"initWithFixedSize:dataSize:cloneSize:purgeableSize:cloneFixUpSize:physicalSize:appCacheSize:CDPluginSize:" cloneSize:a3 purgeableSize:a4 cloneFixUpSize:a5 physicalSize:a6 appCacheSize:a7 CDPluginSize:a8];
}

- (id)copy
{
  v3 = objc_opt_new();
  [v3 setFixedSize:self->_fixedSize];
  [v3 setDataSize:self->_dataSize];
  [v3 setCloneSize:self->_cloneSize];
  [v3 setPurgeableSize:self->_purgeableSize];
  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  fixedSize = self->_fixedSize;
  v5 = a3;
  [v5 encodeInt64:fixedSize forKey:@"fixedSize"];
  [v5 encodeInt64:self->_dataSize forKey:@"dataSize"];
  [v5 encodeInt64:self->_purgeableSize forKey:@"purgeableSize"];
  [v5 encodeInt64:self->_cloneSize forKey:@"cloneSize"];
  [v5 encodeInt64:self->_physicalSize forKey:@"physicalSize"];
  [v5 encodeInt64:self->_cloneFixUpSize forKey:@"CloneFixUpSize"];
  [v5 encodeInt64:self->_cacheDeletePluginSize forKey:@"CDPluginSize"];
  [v5 encodeInt64:self->_appCacheSize forKey:@"appCacheSizeSize"];
  [v5 encodeObject:self->_vendorName forKey:@"vendorName"];
  [v5 encodeBool:self->_cacheIsPurgeable forKey:@"CacheIsPurgeable"];
}

- (SAAppSize)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SAAppSize;
  v5 = [(SAAppSize *)&v9 init];
  if (v5)
  {
    v5->_fixedSize = [v4 decodeInt64ForKey:@"fixedSize"];
    v5->_dataSize = [v4 decodeInt64ForKey:@"dataSize"];
    v5->_purgeableSize = [v4 decodeInt64ForKey:@"purgeableSize"];
    v5->_cloneSize = [v4 decodeInt64ForKey:@"cloneSize"];
    v5->_physicalSize = [v4 decodeInt64ForKey:@"physicalSize"];
    v5->_cloneFixUpSize = [v4 decodeInt64ForKey:@"CloneFixUpSize"];
    v5->_cacheDeletePluginSize = [v4 decodeInt64ForKey:@"CDPluginSize"];
    v5->_appCacheSize = [v4 decodeInt64ForKey:@"appCacheSizeSize"];
    v6 = [v4 decodeObjectForKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v6;

    v5->_cacheIsPurgeable = [v4 decodeBoolForKey:@"CacheIsPurgeable"];
  }

  return v5;
}

@end