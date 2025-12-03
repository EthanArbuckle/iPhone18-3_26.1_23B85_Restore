@interface RBSProcessApplicationPredicate
+ (id)applicationPredicate;
- (BOOL)matchesProcess:(id)process;
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

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  isEmbeddedApplication = [identity isEmbeddedApplication];

  return isEmbeddedApplication;
}

@end