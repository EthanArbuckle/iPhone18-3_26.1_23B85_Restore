@interface RBSProcessBundleIdentifierPredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessBundleIdentifierPredicate

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  identifier = [(RBSProcessStringPredicate *)self identifier];
  identity = [processCopy identity];
  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
  if (embeddedApplicationIdentifier)
  {
    v8 = [identifier isEqualToString:embeddedApplicationIdentifier];
  }

  else
  {
    bundle = [processCopy bundle];
    identifier2 = [bundle identifier];
    v8 = [identifier isEqualToString:identifier2];
  }

  return v8;
}

@end