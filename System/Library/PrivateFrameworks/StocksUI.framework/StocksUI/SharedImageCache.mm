@interface SharedImageCache
- (id)fetchImageForKey:(id)key;
- (void)cache:(id)cache forKey:(id)key;
- (void)cache:(id)cache forKey:(id)key immediately:(BOOL)immediately;
@end

@implementation SharedImageCache

- (id)fetchImageForKey:(id)key
{
  sub_22089136C();

  v3 = sub_22088B58C();

  return v3;
}

- (void)cache:(id)cache forKey:(id)key immediately:(BOOL)immediately
{
  sub_22089136C();
  cacheCopy = cache;

  sub_22088B57C();
}

- (void)cache:(id)cache forKey:(id)key
{
  sub_22089136C();
  cacheCopy = cache;

  sub_22088B57C();
}

@end