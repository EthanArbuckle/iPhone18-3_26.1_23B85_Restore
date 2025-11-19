@interface SSSQLitePredicate
- (unint64_t)hash;
@end

@implementation SSSQLitePredicate

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end