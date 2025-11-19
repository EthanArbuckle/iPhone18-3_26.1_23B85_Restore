@interface UIMailConversationContext
- (UIMailConversationContext)init;
- (id)infoDictionary;
- (id)inputContextHistoryRepresentation;
- (id)stringForMailSubtype:(int64_t)a3;
@end

@implementation UIMailConversationContext

- (UIMailConversationContext)init
{
  v5.receiver = self;
  v5.super_class = UIMailConversationContext;
  v2 = [(UIMailConversationContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIConversationContext *)v2 setConversationType:2];
  }

  return v3;
}

- (id)inputContextHistoryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = UIMailConversationContext;
  v3 = [(UIConversationContext *)&v15 inputContextHistoryRepresentation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UIConversationContext *)self entries];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) inputContextEntryRepresentation];
        [v3 addEntry:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)infoDictionary
{
  v15[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = UIMailConversationContext;
  v3 = [(UIConversationContext *)&v13 infoDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(UIConversationContext *)self entries];
  v6 = [v5 lastObject];

  v7 = -[UIMailConversationContext stringForMailSubtype:](self, "stringForMailSubtype:", [v6 kind]);
  v14[0] = @"hasCustomSignature";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIMailConversationContext responseHasCustomSignature](self, "responseHasCustomSignature")}];
  v14[1] = @"messageCategorySubtype";
  v15[0] = v8;
  v15[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v4 addEntriesFromDictionary:v9];

  v10 = [(UIMailConversationContext *)self responseSubject];

  if (v10)
  {
    v11 = [(UIMailConversationContext *)self responseSubject];
    [v4 setObject:v11 forKey:@"subject"];
  }

  return v4;
}

- (id)stringForMailSubtype:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"none";
  }

  else
  {
    return off_1E710AE08[a3 - 1];
  }
}

@end