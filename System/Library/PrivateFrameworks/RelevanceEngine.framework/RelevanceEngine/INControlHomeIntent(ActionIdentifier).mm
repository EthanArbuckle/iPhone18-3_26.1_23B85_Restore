@interface INControlHomeIntent(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INControlHomeIntent(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v2 = [a1 userTask];
  v3 = [v2 re_actionIdentifierHashValue];
  v4 = [a1 filters];
  v5 = [v4 re_actionIdentifierHashValue];

  return v5 ^ v3;
}

@end