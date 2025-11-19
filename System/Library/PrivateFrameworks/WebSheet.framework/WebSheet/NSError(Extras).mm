@interface NSError(Extras)
- (id)failingURL;
@end

@implementation NSError(Extras)

- (id)failingURL
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"NSErrorFailingURLKey"];

  return v2;
}

@end