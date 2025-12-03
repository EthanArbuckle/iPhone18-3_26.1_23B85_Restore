@interface UIMessageConversationContext
- (UIMessageConversationContext)init;
- (id)inputContextHistoryRepresentation;
@end

@implementation UIMessageConversationContext

- (UIMessageConversationContext)init
{
  v5.receiver = self;
  v5.super_class = UIMessageConversationContext;
  v2 = [(UIMessageConversationContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIConversationContext *)v2 setConversationType:1];
  }

  return v3;
}

- (id)inputContextHistoryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = UIMessageConversationContext;
  inputContextHistoryRepresentation = [(UIConversationContext *)&v15 inputContextHistoryRepresentation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  entries = [(UIConversationContext *)self entries];
  v5 = [entries countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(entries);
        }

        inputContextEntryRepresentation = [*(*(&v11 + 1) + 8 * i) inputContextEntryRepresentation];
        if ([(UIMessageConversationContext *)self isJunk])
        {
          [inputContextEntryRepresentation setEntryType:3];
        }

        [inputContextHistoryRepresentation addEntry:inputContextEntryRepresentation];
      }

      v6 = [entries countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return inputContextHistoryRepresentation;
}

@end