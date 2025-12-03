@interface WFEmailTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFEmailTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v16 = MEMORY[0x277CFE360];
  selectedSubject = [self selectedSubject];
  subjectKey = [MEMORY[0x277CFE338] subjectKey];
  selectedSubject2 = [self selectedSubject];
  subjectKey2 = [MEMORY[0x277CFE338] subjectKey];
  selectedSubject3 = [self selectedSubject];
  selectedRecipients = [self selectedRecipients];
  selectedRecipients2 = [self selectedRecipients];
  recipientsKey = [MEMORY[0x277CFE338] recipientsKey];
  selectedRecipients3 = [self selectedRecipients];
  selectedSenders = [self selectedSenders];
  selectedSenders2 = [self selectedSenders];
  selectedSenders3 = [self selectedSenders];
  senderKey = [MEMORY[0x277CFE338] senderKey];
  selectedAccountIdentifiers = [self selectedAccountIdentifiers];
  selectedAccountIdentifiers2 = [self selectedAccountIdentifiers];
  accountIdentifierKey = [MEMORY[0x277CFE338] accountIdentifierKey];
  selectedAccountIdentifiers3 = [self selectedAccountIdentifiers];
  v8 = [v16 predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:selectedSubject, subjectKey, selectedSubject2, subjectKey2, selectedSubject3, selectedRecipients, selectedRecipients2, recipientsKey, selectedRecipients3, selectedSenders, selectedSenders2, selectedSenders3, senderKey, selectedAccountIdentifiers, selectedAccountIdentifiers2, accountIdentifierKey, selectedAccountIdentifiers3];

  [v8 setEvaluateOnEveryKeyPathUpdate:1];

  return v8;
}

@end