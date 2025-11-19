@interface RBSProcessLaunchdJobLabelPredicate
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessLaunchdJobLabelPredicate

- (BOOL)matchesProcess:(id)a3
{
  v4 = [a3 identity];
  v5 = [v4 hasConsistentLaunchdJob];
  v6 = [(RBSProcessStringPredicate *)self identifier];
  if (v5)
  {
    [v4 consistentLaunchdJobLabel];
  }

  else
  {
    [v4 applicationJobLabel];
  }
  v7 = ;
  v8 = [v6 isEqualToString:v7];

  return v8;
}

@end