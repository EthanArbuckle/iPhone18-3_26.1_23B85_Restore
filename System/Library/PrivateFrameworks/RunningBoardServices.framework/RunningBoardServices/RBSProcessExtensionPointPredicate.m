@interface RBSProcessExtensionPointPredicate
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessExtensionPointPredicate

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  v6 = [v5 isExtension];

  if (v6)
  {
    v7 = [(RBSProcessStringPredicate *)self identifier];
    v8 = [v4 bundle];
    v9 = [v8 extensionPointIdentifier];
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end