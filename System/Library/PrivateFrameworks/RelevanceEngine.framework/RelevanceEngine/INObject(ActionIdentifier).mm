@interface INObject(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INObject(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  identifier = [self identifier];
  re_actionIdentifierHashValue = [identifier re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end