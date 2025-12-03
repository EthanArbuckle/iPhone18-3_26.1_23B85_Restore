@interface INControlHomeIntent(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INControlHomeIntent(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  userTask = [self userTask];
  re_actionIdentifierHashValue = [userTask re_actionIdentifierHashValue];
  filters = [self filters];
  re_actionIdentifierHashValue2 = [filters re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue2 ^ re_actionIdentifierHashValue;
}

@end