@interface RBSProcessServiceNamePredicate
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessServiceNamePredicate

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessStringPredicate *)self identifier];
  v6 = [v4 identity];

  if ([v6 hasConsistentLaunchdJob])
  {
    v7 = [v6 consistentLaunchdJobLabel];
  }

  else if ([v6 isXPCService])
  {
    v7 = [v6 xpcServiceIdentifier];
  }

  else if ([v6 isEmbeddedApplication])
  {
    v7 = [v6 embeddedApplicationIdentifier];
  }

  else
  {
    if (![v6 isApplication])
    {
      v9 = 0;
      goto LABEL_10;
    }

    v7 = [v6 applicationJobLabel];
  }

  v8 = v7;
  v9 = [v5 isEqualToString:v7];

LABEL_10:
  return v9;
}

@end