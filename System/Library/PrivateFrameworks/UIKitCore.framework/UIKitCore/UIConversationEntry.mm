@interface UIConversationEntry
- (id)inputContextEntryRepresentation;
@end

@implementation UIConversationEntry

- (id)inputContextEntryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E69D9678]);
  text = [(UIConversationEntry *)self text];
  [v3 setText:text];

  senderIdentifier = [(UIConversationEntry *)self senderIdentifier];
  [v3 setSenderIdentifier:senderIdentifier];

  sentDate = [(UIConversationEntry *)self sentDate];
  [v3 setTimestamp:sentDate];

  replyThreadIdentifier = [(UIConversationEntry *)self replyThreadIdentifier];
  [v3 setThreadIdentifier:replyThreadIdentifier];

  primaryRecipientIdentifiers = [(UIConversationEntry *)self primaryRecipientIdentifiers];
  [v3 setPrimaryRecipientIdentifiers:primaryRecipientIdentifiers];

  return v3;
}

@end