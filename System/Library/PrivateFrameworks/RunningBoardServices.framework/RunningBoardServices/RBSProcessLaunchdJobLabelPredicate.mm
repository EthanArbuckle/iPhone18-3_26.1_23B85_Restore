@interface RBSProcessLaunchdJobLabelPredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessLaunchdJobLabelPredicate

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  hasConsistentLaunchdJob = [identity hasConsistentLaunchdJob];
  identifier = [(RBSProcessStringPredicate *)self identifier];
  if (hasConsistentLaunchdJob)
  {
    [identity consistentLaunchdJobLabel];
  }

  else
  {
    [identity applicationJobLabel];
  }
  v7 = ;
  v8 = [identifier isEqualToString:v7];

  return v8;
}

@end