@interface SUImageCache
- (SUImageCache)initWithMaximumCapacity:(int64_t)a3;
- (id)imageForURL:(id)a3 dataProvider:(id)a4;
- (void)addImage:(id)a3 forURL:(id)a4 dataProvider:(id)a5;
- (void)dealloc;
@end

@implementation SUImageCache

- (SUImageCache)initWithMaximumCapacity:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SUImageCache;
  v4 = [(SUImageCache *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [objc_alloc(MEMORY[0x1E698B690]) initWithMaximumCapacity:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUImageCache;
  [(SUImageCache *)&v3 dealloc];
}

- (void)addImage:(id)a3 forURL:(id)a4 dataProvider:(id)a5
{
  v9 = objc_alloc_init(SUImageCacheKey);
  v9->_dataProvider = a5;
  v9->_url = a4;
  [(CPLRUDictionary *)self->_dictionary setObject:a3 forKey:?];
}

- (id)imageForURL:(id)a3 dataProvider:(id)a4
{
  v7 = objc_alloc_init(SUImageCacheKey);
  v7->_dataProvider = a4;
  v7->_url = a3;
  v8 = [(CPLRUDictionary *)self->_dictionary objectForKey:v7];

  return v8;
}

@end