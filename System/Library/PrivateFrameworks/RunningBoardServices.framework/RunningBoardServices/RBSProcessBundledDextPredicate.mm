@interface RBSProcessBundledDextPredicate
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessBundledDextPredicate

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessStringPredicate *)self identifier];
  v6 = [v4 identity];

  v7 = [v6 dextContainingAppBundleID];
  v8 = v7;
  if (v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v5 && v7)
    {
      v9 = [v5 isEqual:v7];
    }
  }

  return v9;
}

@end