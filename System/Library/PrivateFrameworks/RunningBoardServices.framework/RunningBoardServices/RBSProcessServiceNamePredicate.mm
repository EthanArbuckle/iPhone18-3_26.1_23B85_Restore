@interface RBSProcessServiceNamePredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessServiceNamePredicate

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  identifier = [(RBSProcessStringPredicate *)self identifier];
  identity = [processCopy identity];

  if ([identity hasConsistentLaunchdJob])
  {
    consistentLaunchdJobLabel = [identity consistentLaunchdJobLabel];
  }

  else if ([identity isXPCService])
  {
    consistentLaunchdJobLabel = [identity xpcServiceIdentifier];
  }

  else if ([identity isEmbeddedApplication])
  {
    consistentLaunchdJobLabel = [identity embeddedApplicationIdentifier];
  }

  else
  {
    if (![identity isApplication])
    {
      v9 = 0;
      goto LABEL_10;
    }

    consistentLaunchdJobLabel = [identity applicationJobLabel];
  }

  v8 = consistentLaunchdJobLabel;
  v9 = [identifier isEqualToString:consistentLaunchdJobLabel];

LABEL_10:
  return v9;
}

@end