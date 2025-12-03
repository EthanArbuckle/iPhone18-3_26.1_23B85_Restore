@interface RBSProcessBundledDextPredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessBundledDextPredicate

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  identifier = [(RBSProcessStringPredicate *)self identifier];
  identity = [processCopy identity];

  dextContainingAppBundleID = [identity dextContainingAppBundleID];
  v8 = dextContainingAppBundleID;
  if (identifier == dextContainingAppBundleID)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (identifier && dextContainingAppBundleID)
    {
      v9 = [identifier isEqual:dextContainingAppBundleID];
    }
  }

  return v9;
}

@end