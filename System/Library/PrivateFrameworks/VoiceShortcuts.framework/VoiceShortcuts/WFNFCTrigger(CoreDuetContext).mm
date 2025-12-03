@interface WFNFCTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFNFCTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v3 = MEMORY[0x277CFE360];
  tagIdentifier = [self tagIdentifier];
  v5 = [v3 predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"%@ IN SELF.%@.value", tagIdentifier, contextStoreKeyPathForCurrentState];

  [v5 setEvaluateOnEveryKeyPathUpdate:1];

  return v5;
}

@end