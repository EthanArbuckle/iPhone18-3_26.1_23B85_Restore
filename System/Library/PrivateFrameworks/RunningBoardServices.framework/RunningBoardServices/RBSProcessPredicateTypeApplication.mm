@interface RBSProcessPredicateTypeApplication
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessPredicateTypeApplication

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  isApplication = [identity isApplication];

  return isApplication;
}

@end