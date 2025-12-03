@interface INHomeUserTask(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INHomeUserTask(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  taskType = [self taskType];
  v3 = [self attribute] ^ taskType;
  value = [self value];
  re_actionIdentifierHashValue = [value re_actionIdentifierHashValue];

  return v3 ^ re_actionIdentifierHashValue;
}

@end