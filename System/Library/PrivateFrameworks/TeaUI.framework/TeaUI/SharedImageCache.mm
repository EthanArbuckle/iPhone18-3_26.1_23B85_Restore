@interface SharedImageCache
- (id)fetchImageForKey:(id)a3;
- (void)cache:(id)a3 forKey:(id)a4;
- (void)cache:(id)a3 forKey:(id)a4 immediately:(BOOL)a5;
@end

@implementation SharedImageCache

- (id)fetchImageForKey:(id)a3
{
  v3 = sub_1D8190F14();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  v7 = SharedImageCache.fetchImage(_:)(v6);

  return v7;
}

- (void)cache:(id)a3 forKey:(id)a4 immediately:(BOOL)a5
{
  v6 = sub_1D8190F14();
  v8 = v7;
  v9 = a3;

  v10._countAndFlagsBits = v6;
  v10._object = v8;
  SharedImageCache.cache(_:forKey:immediately:)(v9, v10, 0);
}

- (void)cache:(id)a3 forKey:(id)a4
{
  v5 = sub_1D8190F14();
  v7 = v6;
  v8 = a3;

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  SharedImageCache.cache(_:forKey:)(v8, v9);
}

@end