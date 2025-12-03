@interface UIMailConversationEntry
- (id)inputContextEntryRepresentation;
@end

@implementation UIMailConversationEntry

- (id)inputContextEntryRepresentation
{
  v6.receiver = self;
  v6.super_class = UIMailConversationEntry;
  inputContextEntryRepresentation = [(UIConversationEntry *)&v6 inputContextEntryRepresentation];
  responseSecondaryRecipientIdentifiers = [(UIMailConversationEntry *)self responseSecondaryRecipientIdentifiers];
  [inputContextEntryRepresentation setSecondaryRecipientIdentifiers:responseSecondaryRecipientIdentifiers];

  return inputContextEntryRepresentation;
}

@end