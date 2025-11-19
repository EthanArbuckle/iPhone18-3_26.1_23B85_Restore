@interface INObject(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INObject(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = [a1 identifier];
  v2 = [v1 re_actionIdentifierHashValue];

  return v2;
}

@end