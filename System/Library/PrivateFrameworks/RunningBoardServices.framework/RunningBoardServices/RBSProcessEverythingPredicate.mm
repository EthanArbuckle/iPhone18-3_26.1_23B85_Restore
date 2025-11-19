@interface RBSProcessEverythingPredicate
+ (id)everythingPredicate;
- (BOOL)isEqual:(id)a3;
@end

@implementation RBSProcessEverythingPredicate

+ (id)everythingPredicate
{
  v2 = objc_alloc_init(RBSProcessEverythingPredicate);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end