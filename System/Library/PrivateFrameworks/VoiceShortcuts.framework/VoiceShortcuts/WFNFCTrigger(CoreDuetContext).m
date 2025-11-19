@interface WFNFCTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFNFCTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = [a1 contextStoreKeyPathForCurrentState];
  v3 = MEMORY[0x277CFE360];
  v4 = [a1 tagIdentifier];
  v5 = [v3 predicateForKeyPath:v2 withFormat:@"%@ IN SELF.%@.value", v4, v2];

  [v5 setEvaluateOnEveryKeyPathUpdate:1];

  return v5;
}

@end