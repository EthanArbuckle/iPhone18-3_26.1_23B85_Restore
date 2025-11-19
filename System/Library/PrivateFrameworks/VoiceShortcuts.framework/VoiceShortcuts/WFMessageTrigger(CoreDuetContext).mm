@interface WFMessageTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFMessageTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = [a1 contextStoreKeyPathForCurrentState];
  v3 = MEMORY[0x277CFE360];
  v4 = [a1 selectedContents];
  v5 = [MEMORY[0x277CFE338] contentKey];
  v6 = [a1 selectedContents];
  v7 = [a1 selectedSendersStrings];
  v8 = [a1 selectedSendersStrings];
  v9 = [a1 selectedSendersStrings];
  v10 = [MEMORY[0x277CFE338] senderHandlesKey];
  v11 = [MEMORY[0x277CFE338] senderContactIDKey];
  v12 = [v3 predicateForKeyPath:v2 withFormat:@"SUBQUERY(SELF.%@.value, $message, (%@ = NULL OR $message.%K CONTAINS[cd] %@) AND                 (%@ = NULL OR %@.@count = 0 OR SUBQUERY(%@, $sender, $sender IN[cd] $message.%K OR $message.%K = $sender).@count > 0)            ).@count > 0", v2, v4, v5, v6, v7, v8, v9, v10, v11];

  [v12 setEvaluateOnEveryKeyPathUpdate:1];

  return v12;
}

@end