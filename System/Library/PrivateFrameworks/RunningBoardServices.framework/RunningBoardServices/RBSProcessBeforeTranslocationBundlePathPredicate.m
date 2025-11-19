@interface RBSProcessBeforeTranslocationBundlePathPredicate
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessBeforeTranslocationBundlePathPredicate)init;
- (RBSProcessBeforeTranslocationBundlePathPredicate)initWithIdentifier:(id)a3;
@end

@implementation RBSProcessBeforeTranslocationBundlePathPredicate

- (RBSProcessBeforeTranslocationBundlePathPredicate)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = RBSProcessBeforeTranslocationBundlePathPredicate;
  result = [(RBSProcessStringPredicate *)&v4 initWithIdentifier:a3];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (RBSProcessBeforeTranslocationBundlePathPredicate)init
{
  v3.receiver = self;
  v3.super_class = RBSProcessBeforeTranslocationBundlePathPredicate;
  result = [(RBSProcessBeforeTranslocationBundlePathPredicate *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessBeforeTranslocationBundlePathPredicate *)self beforeTranslocationBundlePath];
  v6 = [v4 beforeTranslocationBundlePath];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

@end