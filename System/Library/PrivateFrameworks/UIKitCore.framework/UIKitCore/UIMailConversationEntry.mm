@interface UIMailConversationEntry
- (id)inputContextEntryRepresentation;
@end

@implementation UIMailConversationEntry

- (id)inputContextEntryRepresentation
{
  v6.receiver = self;
  v6.super_class = UIMailConversationEntry;
  v3 = [(UIConversationEntry *)&v6 inputContextEntryRepresentation];
  v4 = [(UIMailConversationEntry *)self responseSecondaryRecipientIdentifiers];
  [v3 setSecondaryRecipientIdentifiers:v4];

  return v3;
}

@end