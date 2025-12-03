@interface RBSProcessBeforeTranslocationBundlePathPredicate
- (BOOL)matchesProcess:(id)process;
- (RBSProcessBeforeTranslocationBundlePathPredicate)init;
- (RBSProcessBeforeTranslocationBundlePathPredicate)initWithIdentifier:(id)identifier;
@end

@implementation RBSProcessBeforeTranslocationBundlePathPredicate

- (RBSProcessBeforeTranslocationBundlePathPredicate)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = RBSProcessBeforeTranslocationBundlePathPredicate;
  result = [(RBSProcessStringPredicate *)&v4 initWithIdentifier:identifier];
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

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  beforeTranslocationBundlePath = [(RBSProcessBeforeTranslocationBundlePathPredicate *)self beforeTranslocationBundlePath];
  beforeTranslocationBundlePath2 = [processCopy beforeTranslocationBundlePath];

  LOBYTE(processCopy) = [beforeTranslocationBundlePath isEqualToString:beforeTranslocationBundlePath2];
  return processCopy;
}

@end