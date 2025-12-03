@interface NSCache(PhotosUIFoundation)
- (id)px_objectForKey:()PhotosUIFoundation usingPromise:;
@end

@implementation NSCache(PhotosUIFoundation)

- (id)px_objectForKey:()PhotosUIFoundation usingPromise:
{
  v6 = a3;
  v7 = a4;
  v8 = [self objectForKey:v6];
  if (!v8)
  {
    v8 = v7[2](v7);
    [self setObject:v8 forKey:v6];
  }

  return v8;
}

@end