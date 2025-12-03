@interface SharedImageCache
- (id)fetchImageForKey:(id)key;
- (void)cache:(id)cache forKey:(id)key;
- (void)cache:(id)cache forKey:(id)key immediately:(BOOL)immediately;
@end

@implementation SharedImageCache

- (id)fetchImageForKey:(id)key
{
  v3 = sub_1D8190F14();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  v7 = SharedImageCache.fetchImage(_:)(v6);

  return v7;
}

- (void)cache:(id)cache forKey:(id)key immediately:(BOOL)immediately
{
  v6 = sub_1D8190F14();
  v8 = v7;
  cacheCopy = cache;

  v10._countAndFlagsBits = v6;
  v10._object = v8;
  SharedImageCache.cache(_:forKey:immediately:)(cacheCopy, v10, 0);
}

- (void)cache:(id)cache forKey:(id)key
{
  v5 = sub_1D8190F14();
  v7 = v6;
  cacheCopy = cache;

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  SharedImageCache.cache(_:forKey:)(cacheCopy, v9);
}

@end