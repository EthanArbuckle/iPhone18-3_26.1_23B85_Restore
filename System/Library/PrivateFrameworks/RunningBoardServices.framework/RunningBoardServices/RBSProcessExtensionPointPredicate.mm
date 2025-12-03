@interface RBSProcessExtensionPointPredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessExtensionPointPredicate

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  identity = [processCopy identity];
  isExtension = [identity isExtension];

  if (isExtension)
  {
    identifier = [(RBSProcessStringPredicate *)self identifier];
    bundle = [processCopy bundle];
    extensionPointIdentifier = [bundle extensionPointIdentifier];
    v10 = [identifier isEqualToString:extensionPointIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end