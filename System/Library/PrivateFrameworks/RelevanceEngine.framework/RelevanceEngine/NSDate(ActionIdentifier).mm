@interface NSDate(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSDate(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = MEMORY[0x277CCABB0];
  [self timeIntervalSinceReferenceDate];
  v2 = [v1 numberWithDouble:?];
  re_actionIdentifierHashValue = [v2 re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end