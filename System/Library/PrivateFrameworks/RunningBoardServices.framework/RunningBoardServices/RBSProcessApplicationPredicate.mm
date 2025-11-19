@interface RBSProcessApplicationPredicate
+ (id)applicationPredicate;
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessApplicationPredicate

+ (id)applicationPredicate
{
  if (applicationPredicate_onceToken != -1)
  {
    +[RBSProcessApplicationPredicate applicationPredicate];
  }

  v3 = applicationPredicate__predicate;

  return v3;
}

void __54__RBSProcessApplicationPredicate_applicationPredicate__block_invoke()
{
  v2 = objc_alloc_init(RBSProcessApplicationPredicate);
  v0 = [RBSProcessPredicate predicateMatching:v2];
  v1 = applicationPredicate__predicate;
  applicationPredicate__predicate = v0;
}

- (BOOL)matchesProcess:(id)a3
{
  v3 = [a3 identity];
  v4 = [v3 isEmbeddedApplication];

  return v4;
}

@end