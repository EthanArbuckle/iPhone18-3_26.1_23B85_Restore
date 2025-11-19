@interface UIViewController(BFFCustomStringConvertible)
- (uint64_t)customDescription;
@end

@implementation UIViewController(BFFCustomStringConvertible)

- (uint64_t)customDescription
{
  v0 = objc_opt_class();

  return [v0 description];
}

@end