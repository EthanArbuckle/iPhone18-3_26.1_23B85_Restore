@interface SSLRUCacheItem
- (NSCopying)key;
- (SSLRUCacheItem)initWithKey:(id)a3 object:(id)a4;
@end

@implementation SSLRUCacheItem

- (SSLRUCacheItem)initWithKey:(id)a3 object:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SSLRUCacheItem;
  v7 = [(SSDoubleLinkedListNode *)&v10 initWithObject:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_key, v6);
  }

  return v8;
}

- (NSCopying)key
{
  WeakRetained = objc_loadWeakRetained(&self->_key);

  return WeakRetained;
}

@end