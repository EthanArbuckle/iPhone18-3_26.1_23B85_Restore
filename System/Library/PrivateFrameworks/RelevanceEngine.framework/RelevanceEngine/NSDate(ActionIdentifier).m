@interface NSDate(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSDate(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = MEMORY[0x277CCABB0];
  [a1 timeIntervalSinceReferenceDate];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 re_actionIdentifierHashValue];

  return v3;
}

@end