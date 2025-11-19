@interface INHomeUserTask(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INHomeUserTask(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v2 = [a1 taskType];
  v3 = [a1 attribute] ^ v2;
  v4 = [a1 value];
  v5 = [v4 re_actionIdentifierHashValue];

  return v3 ^ v5;
}

@end