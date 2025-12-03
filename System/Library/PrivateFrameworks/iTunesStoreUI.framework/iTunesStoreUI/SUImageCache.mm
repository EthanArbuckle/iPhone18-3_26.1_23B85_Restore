@interface SUImageCache
- (SUImageCache)initWithMaximumCapacity:(int64_t)capacity;
- (id)imageForURL:(id)l dataProvider:(id)provider;
- (void)addImage:(id)image forURL:(id)l dataProvider:(id)provider;
- (void)dealloc;
@end

@implementation SUImageCache

- (SUImageCache)initWithMaximumCapacity:(int64_t)capacity
{
  v6.receiver = self;
  v6.super_class = SUImageCache;
  v4 = [(SUImageCache *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [objc_alloc(MEMORY[0x1E698B690]) initWithMaximumCapacity:capacity];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUImageCache;
  [(SUImageCache *)&v3 dealloc];
}

- (void)addImage:(id)image forURL:(id)l dataProvider:(id)provider
{
  v9 = objc_alloc_init(SUImageCacheKey);
  v9->_dataProvider = provider;
  v9->_url = l;
  [(CPLRUDictionary *)self->_dictionary setObject:image forKey:?];
}

- (id)imageForURL:(id)l dataProvider:(id)provider
{
  v7 = objc_alloc_init(SUImageCacheKey);
  v7->_dataProvider = provider;
  v7->_url = l;
  v8 = [(CPLRUDictionary *)self->_dictionary objectForKey:v7];

  return v8;
}

@end