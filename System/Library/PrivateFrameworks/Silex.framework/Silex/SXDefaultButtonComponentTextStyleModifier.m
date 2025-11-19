@interface SXDefaultButtonComponentTextStyleModifier
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXDefaultButtonComponentTextStyleModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_shouldReturnUnmodifiedDOM)
  {
    v8 = +[SXButtonComponentClassification typeString];
    v9 = [SXComponentClassification classificationForComponentWithType:v8];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v9 defaultTextStyleIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v6 componentTextStyles];
          v17 = [v16 objectForKey:v15];

          if (v17 && [(SXComponentTextStyle *)v17 textAlignment])
          {
            self->_shouldReturnUnmodifiedDOM = 1;
            goto LABEL_17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = +[SXButtonComponentClassification typeString];
    v10 = SXDefaultTextStyleIdentifierForRole(v18);

    v19 = [v6 componentTextStyles];
    v20 = [v19 objectForKey:v10];

    v21 = [v20 JSONRepresentation];
    v22 = v21;
    if (!v21)
    {
      v21 = MEMORY[0x1E695E0F8];
    }

    v23 = [v21 mutableCopy];

    [v23 setObject:@"center" forKey:@"textAlignment"];
    v24 = [v20 identifier];

    if (!v24)
    {
      [v23 setObject:v10 forKey:@"identifier"];
    }

    v25 = [SXComponentTextStyle alloc];
    v26 = [v7 specVersion];
    v17 = [(SXJSONObject *)v25 initWithJSONObject:v23 andVersion:v26];

    v27 = [v6 componentTextStyles];
    [v27 setObject:v17 forKey:v10];

LABEL_17:
  }
}

@end