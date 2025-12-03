@interface INPersonHandle(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INPersonHandle(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  value = [self value];
  re_actionIdentifierHashValue = [value re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end