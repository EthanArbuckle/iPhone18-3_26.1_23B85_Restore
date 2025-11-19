@interface INPersonHandle(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INPersonHandle(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = [a1 value];
  v2 = [v1 re_actionIdentifierHashValue];

  return v2;
}

@end