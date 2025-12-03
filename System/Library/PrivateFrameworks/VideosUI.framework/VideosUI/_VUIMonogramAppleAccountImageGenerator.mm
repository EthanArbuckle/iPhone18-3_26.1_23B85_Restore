@interface _VUIMonogramAppleAccountImageGenerator
+ (BOOL)isAppleAccountsURL:(id)l;
- (void)cancelLoad:(id)load;
@end

@implementation _VUIMonogramAppleAccountImageGenerator

+ (BOOL)isAppleAccountsURL:(id)l
{
  scheme = [l scheme];
  v4 = [scheme isEqualToString:@"x-apple-identity-image"];

  return v4;
}

- (void)cancelLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [loadCopy cancel];
  }
}

@end