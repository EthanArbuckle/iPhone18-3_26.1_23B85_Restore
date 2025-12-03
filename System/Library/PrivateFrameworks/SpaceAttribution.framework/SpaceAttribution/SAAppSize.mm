@interface SAAppSize
+ (id)newWithFixedSize:(unint64_t)size dataSize:(unint64_t)dataSize cloneSize:(unint64_t)cloneSize purgeableSize:(unint64_t)purgeableSize cloneFixUpSize:(int64_t)upSize physicalSize:(unint64_t)physicalSize appCacheSize:(unint64_t)cacheSize CDPluginSize:(unint64_t)self0;
- (SAAppSize)init;
- (SAAppSize)initWithCoder:(id)coder;
- (SAAppSize)initWithFixedSize:(unint64_t)size dataSize:(unint64_t)dataSize cloneSize:(unint64_t)cloneSize purgeableSize:(unint64_t)purgeableSize cloneFixUpSize:(int64_t)upSize physicalSize:(unint64_t)physicalSize appCacheSize:(unint64_t)cacheSize CDPluginSize:(unint64_t)self0;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
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

- (SAAppSize)initWithFixedSize:(unint64_t)size dataSize:(unint64_t)dataSize cloneSize:(unint64_t)cloneSize purgeableSize:(unint64_t)purgeableSize cloneFixUpSize:(int64_t)upSize physicalSize:(unint64_t)physicalSize appCacheSize:(unint64_t)cacheSize CDPluginSize:(unint64_t)self0
{
  v17.receiver = self;
  v17.super_class = SAAppSize;
  result = [(SAAppSize *)&v17 init];
  if (result)
  {
    result->_fixedSize = size;
    result->_dataSize = dataSize;
    result->_purgeableSize = purgeableSize;
    result->_cloneSize = cloneSize;
    result->_physicalSize = physicalSize;
    result->_cloneFixUpSize = upSize;
    result->_appCacheSize = cacheSize;
    result->_cacheDeletePluginSize = pluginSize;
  }

  return result;
}

+ (id)newWithFixedSize:(unint64_t)size dataSize:(unint64_t)dataSize cloneSize:(unint64_t)cloneSize purgeableSize:(unint64_t)purgeableSize cloneFixUpSize:(int64_t)upSize physicalSize:(unint64_t)physicalSize appCacheSize:(unint64_t)cacheSize CDPluginSize:(unint64_t)self0
{
  v16 = [SAAppSize alloc];

  return [SAAppSize initWithFixedSize:v16 dataSize:"initWithFixedSize:dataSize:cloneSize:purgeableSize:cloneFixUpSize:physicalSize:appCacheSize:CDPluginSize:" cloneSize:size purgeableSize:dataSize cloneFixUpSize:cloneSize physicalSize:purgeableSize appCacheSize:upSize CDPluginSize:physicalSize];
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

- (void)encodeWithCoder:(id)coder
{
  fixedSize = self->_fixedSize;
  coderCopy = coder;
  [coderCopy encodeInt64:fixedSize forKey:@"fixedSize"];
  [coderCopy encodeInt64:self->_dataSize forKey:@"dataSize"];
  [coderCopy encodeInt64:self->_purgeableSize forKey:@"purgeableSize"];
  [coderCopy encodeInt64:self->_cloneSize forKey:@"cloneSize"];
  [coderCopy encodeInt64:self->_physicalSize forKey:@"physicalSize"];
  [coderCopy encodeInt64:self->_cloneFixUpSize forKey:@"CloneFixUpSize"];
  [coderCopy encodeInt64:self->_cacheDeletePluginSize forKey:@"CDPluginSize"];
  [coderCopy encodeInt64:self->_appCacheSize forKey:@"appCacheSizeSize"];
  [coderCopy encodeObject:self->_vendorName forKey:@"vendorName"];
  [coderCopy encodeBool:self->_cacheIsPurgeable forKey:@"CacheIsPurgeable"];
}

- (SAAppSize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SAAppSize;
  v5 = [(SAAppSize *)&v9 init];
  if (v5)
  {
    v5->_fixedSize = [coderCopy decodeInt64ForKey:@"fixedSize"];
    v5->_dataSize = [coderCopy decodeInt64ForKey:@"dataSize"];
    v5->_purgeableSize = [coderCopy decodeInt64ForKey:@"purgeableSize"];
    v5->_cloneSize = [coderCopy decodeInt64ForKey:@"cloneSize"];
    v5->_physicalSize = [coderCopy decodeInt64ForKey:@"physicalSize"];
    v5->_cloneFixUpSize = [coderCopy decodeInt64ForKey:@"CloneFixUpSize"];
    v5->_cacheDeletePluginSize = [coderCopy decodeInt64ForKey:@"CDPluginSize"];
    v5->_appCacheSize = [coderCopy decodeInt64ForKey:@"appCacheSizeSize"];
    v6 = [coderCopy decodeObjectForKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v6;

    v5->_cacheIsPurgeable = [coderCopy decodeBoolForKey:@"CacheIsPurgeable"];
  }

  return v5;
}

@end