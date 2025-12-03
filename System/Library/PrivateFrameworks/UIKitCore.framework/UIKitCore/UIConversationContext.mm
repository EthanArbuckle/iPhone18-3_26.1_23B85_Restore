@interface UIConversationContext
- (id)infoDictionary;
- (id)inputContextHistoryRepresentation;
@end

@implementation UIConversationContext

- (id)inputContextHistoryRepresentation
{
  v3 = [UIInputContextHistory alloc];
  threadIdentifier = [(UIConversationContext *)self threadIdentifier];
  participantNameByIdentifier = [(UIConversationContext *)self participantNameByIdentifier];
  selfIdentifiers = [(UIConversationContext *)self selfIdentifiers];
  responsePrimaryRecipientIdentifiers = [(UIConversationContext *)self responsePrimaryRecipientIdentifiers];
  secondaryRecipientIdentifiers = [(UIConversationContext *)self secondaryRecipientIdentifiers];
  infoDictionary = [(UIConversationContext *)self infoDictionary];
  v10 = [(UIInputContextHistory *)v3 initWithThreadIdentifier:threadIdentifier participantsIDtoNames:participantNameByIdentifier firstPerson:selfIdentifiers primaryRecipients:responsePrimaryRecipientIdentifiers secondaryRecipients:secondaryRecipientIdentifiers info:infoDictionary];

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