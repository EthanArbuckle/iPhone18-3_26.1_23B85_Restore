@interface RBSProcessPredicateTypeApplication
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessPredicateTypeApplication

- (BOOL)matchesProcess:(id)a3
{
  v3 = [a3 identity];
  v4 = [v3 isApplication];

  return v4;
}

@end