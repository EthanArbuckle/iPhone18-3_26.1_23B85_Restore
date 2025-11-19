@interface UIConversationEntry
- (id)inputContextEntryRepresentation;
@end

@implementation UIConversationEntry

- (id)inputContextEntryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E69D9678]);
  v4 = [(UIConversationEntry *)self text];
  [v3 setText:v4];

  v5 = [(UIConversationEntry *)self senderIdentifier];
  [v3 setSenderIdentifier:v5];

  v6 = [(UIConversationEntry *)self sentDate];
  [v3 setTimestamp:v6];

  v7 = [(UIConversationEntry *)self replyThreadIdentifier];
  [v3 setThreadIdentifier:v7];

  v8 = [(UIConversationEntry *)self primaryRecipientIdentifiers];
  [v3 setPrimaryRecipientIdentifiers:v8];

  return v3;
}

@end