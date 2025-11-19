@interface UIConversationContext
- (id)infoDictionary;
- (id)inputContextHistoryRepresentation;
@end

@implementation UIConversationContext

- (id)inputContextHistoryRepresentation
{
  v3 = [UIInputContextHistory alloc];
  v4 = [(UIConversationContext *)self threadIdentifier];
  v5 = [(UIConversationContext *)self participantNameByIdentifier];
  v6 = [(UIConversationContext *)self selfIdentifiers];
  v7 = [(UIConversationContext *)self responsePrimaryRecipientIdentifiers];
  v8 = [(UIConversationContext *)self secondaryRecipientIdentifiers];
  v9 = [(UIConversationContext *)self infoDictionary];
  v10 = [(UIInputContextHistory *)v3 initWithThreadIdentifier:v4 participantsIDtoNames:v5 firstPerson:v6 primaryRecipients:v7 secondaryRecipients:v8 info:v9];

  return v10;
}

- (id)infoDictionary
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"ConversationType";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIConversationContext conversationType](self, "conversationType")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end