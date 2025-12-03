@interface SSLRUCacheItem
- (NSCopying)key;
- (SSLRUCacheItem)initWithKey:(id)key object:(id)object;
@end

@implementation SSLRUCacheItem

- (SSLRUCacheItem)initWithKey:(id)key object:(id)object
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = SSLRUCacheItem;
  v7 = [(SSDoubleLinkedListNode *)&v10 initWithObject:object];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_key, keyCopy);
  }

  return v8;
}

- (NSCopying)key
{
  WeakRetained = objc_loadWeakRetained(&self->_key);

  return WeakRetained;
}

@end