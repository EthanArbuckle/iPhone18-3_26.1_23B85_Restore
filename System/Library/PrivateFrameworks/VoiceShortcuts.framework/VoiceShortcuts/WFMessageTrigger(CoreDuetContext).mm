@interface WFMessageTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFMessageTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v3 = MEMORY[0x277CFE360];
  selectedContents = [self selectedContents];
  contentKey = [MEMORY[0x277CFE338] contentKey];
  selectedContents2 = [self selectedContents];
  selectedSendersStrings = [self selectedSendersStrings];
  selectedSendersStrings2 = [self selectedSendersStrings];
  selectedSendersStrings3 = [self selectedSendersStrings];
  senderHandlesKey = [MEMORY[0x277CFE338] senderHandlesKey];
  senderContactIDKey = [MEMORY[0x277CFE338] senderContactIDKey];
  v12 = [v3 predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SUBQUERY(SELF.%@.value, $message, (%@ = NULL OR $message.%K CONTAINS[cd] %@) AND                 (%@ = NULL OR %@.@count = 0 OR SUBQUERY(%@, $sender, $sender IN[cd] $message.%K OR $message.%K = $sender).@count > 0)            ).@count > 0", contextStoreKeyPathForCurrentState, selectedContents, contentKey, selectedContents2, selectedSendersStrings, selectedSendersStrings2, selectedSendersStrings3, senderHandlesKey, senderContactIDKey];

  [v12 setEvaluateOnEveryKeyPathUpdate:1];

  return v12;
}

@end