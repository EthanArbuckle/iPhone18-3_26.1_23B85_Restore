@interface _SKUIResourceCacheValue
- (_SKUIResourceCacheValue)initWithResource:(id)resource requestCacheKey:(id)key;
@end

@implementation _SKUIResourceCacheValue

- (_SKUIResourceCacheValue)initWithResource:(id)resource requestCacheKey:(id)key
{
  resourceCopy = resource;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = _SKUIResourceCacheValue;
  v9 = [(_SKUIResourceCacheValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, resource);
    objc_storeStrong(&v10->_requestCacheKey, key);
  }

  return v10;
}

@end