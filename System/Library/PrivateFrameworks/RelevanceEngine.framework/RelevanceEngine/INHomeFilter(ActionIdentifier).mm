@interface INHomeFilter(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INHomeFilter(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = [a1 entityIdentifiers];
  v2 = [v1 re_actionIdentifierHashValue];

  return v2;
}

@end