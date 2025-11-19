@interface SharedImageCache
- (id)fetchImageForKey:(id)a3;
- (void)cache:(id)a3 forKey:(id)a4;
- (void)cache:(id)a3 forKey:(id)a4 immediately:(BOOL)a5;
@end

@implementation SharedImageCache

- (id)fetchImageForKey:(id)a3
{
  sub_22089136C();

  v3 = sub_22088B58C();

  return v3;
}

- (void)cache:(id)a3 forKey:(id)a4 immediately:(BOOL)a5
{
  sub_22089136C();
  v6 = a3;

  sub_22088B57C();
}

- (void)cache:(id)a3 forKey:(id)a4
{
  sub_22089136C();
  v5 = a3;

  sub_22088B57C();
}

@end