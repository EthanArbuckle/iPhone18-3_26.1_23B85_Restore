@interface _VUIMonogramAppleAccountImageGenerator
+ (BOOL)isAppleAccountsURL:(id)a3;
- (void)cancelLoad:(id)a3;
@end

@implementation _VUIMonogramAppleAccountImageGenerator

+ (BOOL)isAppleAccountsURL:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 isEqualToString:@"x-apple-identity-image"];

  return v4;
}

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 cancel];
  }
}

@end