@interface RBSProcessPredicateLaunchServicesProcesses
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessPredicateLaunchServicesProcesses

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  isApplication = [identity isApplication];

  return isApplication;
}

@end