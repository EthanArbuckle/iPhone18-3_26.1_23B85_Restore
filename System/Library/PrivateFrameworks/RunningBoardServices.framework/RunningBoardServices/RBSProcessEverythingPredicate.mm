@interface RBSProcessEverythingPredicate
+ (id)everythingPredicate;
- (BOOL)isEqual:(id)equal;
@end

@implementation RBSProcessEverythingPredicate

+ (id)everythingPredicate
{
  v2 = objc_alloc_init(RBSProcessEverythingPredicate);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end