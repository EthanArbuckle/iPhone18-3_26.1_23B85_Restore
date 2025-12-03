@interface NSError(Extras)
- (id)failingURL;
@end

@implementation NSError(Extras)

- (id)failingURL
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"NSErrorFailingURLKey"];

  return v2;
}

@end