@interface WFEmailTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFEmailTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v21 = [a1 contextStoreKeyPathForCurrentState];
  v16 = MEMORY[0x277CFE360];
  v15 = [a1 selectedSubject];
  v22 = [MEMORY[0x277CFE338] subjectKey];
  v14 = [a1 selectedSubject];
  v20 = [MEMORY[0x277CFE338] subjectKey];
  v19 = [a1 selectedSubject];
  v18 = [a1 selectedRecipients];
  v13 = [a1 selectedRecipients];
  v17 = [MEMORY[0x277CFE338] recipientsKey];
  v12 = [a1 selectedRecipients];
  v11 = [a1 selectedSenders];
  v10 = [a1 selectedSenders];
  v2 = [a1 selectedSenders];
  v3 = [MEMORY[0x277CFE338] senderKey];
  v4 = [a1 selectedAccountIdentifiers];
  v5 = [a1 selectedAccountIdentifiers];
  v6 = [MEMORY[0x277CFE338] accountIdentifierKey];
  v7 = [a1 selectedAccountIdentifiers];
  v8 = [v16 predicateForKeyPath:v21 withFormat:v15, v22, v14, v20, v19, v18, v13, v17, v12, v11, v10, v2, v3, v4, v5, v6, v7];

  [v8 setEvaluateOnEveryKeyPathUpdate:1];

  return v8;
}

@end