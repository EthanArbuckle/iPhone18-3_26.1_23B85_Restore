@interface SXDefaultButtonComponentTextStyleModifier
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXDefaultButtonComponentTextStyleModifier

- (void)modifyDOM:(id)m context:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  mCopy = m;
  contextCopy = context;
  if (!self->_shouldReturnUnmodifiedDOM)
  {
    v8 = +[SXButtonComponentClassification typeString];
    v9 = [SXComponentClassification classificationForComponentWithType:v8];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    defaultTextStyleIdentifiers = [v9 defaultTextStyleIdentifiers];
    v11 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(defaultTextStyleIdentifiers);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          componentTextStyles = [mCopy componentTextStyles];
          v17 = [componentTextStyles objectForKey:v15];

          if (v17 && [(SXComponentTextStyle *)v17 textAlignment])
          {
            self->_shouldReturnUnmodifiedDOM = 1;
            goto LABEL_17;
          }
        }

        v12 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = +[SXButtonComponentClassification typeString];
    defaultTextStyleIdentifiers = SXDefaultTextStyleIdentifierForRole(v18);

    componentTextStyles2 = [mCopy componentTextStyles];
    v20 = [componentTextStyles2 objectForKey:defaultTextStyleIdentifiers];

    jSONRepresentation = [v20 JSONRepresentation];
    v22 = jSONRepresentation;
    if (!jSONRepresentation)
    {
      jSONRepresentation = MEMORY[0x1E695E0F8];
    }

    v23 = [jSONRepresentation mutableCopy];

    [v23 setObject:@"center" forKey:@"textAlignment"];
    identifier = [v20 identifier];

    if (!identifier)
    {
      [v23 setObject:defaultTextStyleIdentifiers forKey:@"identifier"];
    }

    v25 = [SXComponentTextStyle alloc];
    specVersion = [contextCopy specVersion];
    v17 = [(SXJSONObject *)v25 initWithJSONObject:v23 andVersion:specVersion];

    componentTextStyles3 = [mCopy componentTextStyles];
    [componentTextStyles3 setObject:v17 forKey:defaultTextStyleIdentifiers];

LABEL_17:
  }
}

@end