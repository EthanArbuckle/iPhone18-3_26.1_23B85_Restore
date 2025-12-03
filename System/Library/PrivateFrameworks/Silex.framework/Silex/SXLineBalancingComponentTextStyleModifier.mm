@interface SXLineBalancingComponentTextStyleModifier
- (SXLineBalancingComponentTextStyleModifier)initWithSettings:(id)settings;
- (void)enableLineBalancingForComponentTextStyleWithIdentifier:(id)identifier DOM:(id)m context:(id)context;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXLineBalancingComponentTextStyleModifier

- (SXLineBalancingComponentTextStyleModifier)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = SXLineBalancingComponentTextStyleModifier;
  v6 = [(SXLineBalancingComponentTextStyleModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

- (void)modifyDOM:(id)m context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  mCopy = m;
  contextCopy = context;
  if ([(SXLineBalancingSettings *)self->_settings enableLineBalancing])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    componentTextStyles = [mCopy componentTextStyles];
    allKeys = [componentTextStyles allKeys];

    v10 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          [(SXLineBalancingComponentTextStyleModifier *)self enableLineBalancingForComponentTextStyleWithIdentifier:*(*(&v14 + 1) + 8 * v13++) DOM:mCopy context:contextCopy];
        }

        while (v11 != v13);
        v11 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)enableLineBalancingForComponentTextStyleWithIdentifier:(id)identifier DOM:(id)m context:(id)context
{
  identifierCopy = identifier;
  mCopy = m;
  contextCopy = context;
  componentTextStyles = [mCopy componentTextStyles];
  v10 = [componentTextStyles objectForKey:identifierCopy];

  if ([v10 textAlignment] == 2)
  {
    jSONRepresentation = [v10 JSONRepresentation];
    v12 = jSONRepresentation;
    if (!jSONRepresentation)
    {
      jSONRepresentation = MEMORY[0x1E695E0F8];
    }

    v13 = [jSONRepresentation mutableCopy];

    [v13 setObject:MEMORY[0x1E695E118] forKey:@"lineBalancing"];
    v14 = [SXComponentTextStyle alloc];
    specVersion = [contextCopy specVersion];
    v16 = [(SXJSONObject *)v14 initWithJSONObject:v13 andVersion:specVersion];

    componentTextStyles2 = [mCopy componentTextStyles];
    [componentTextStyles2 setObject:v16 forKey:identifierCopy];

    v10 = v16;
  }
}

@end