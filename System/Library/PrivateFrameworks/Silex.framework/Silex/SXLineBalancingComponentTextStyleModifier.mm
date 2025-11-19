@interface SXLineBalancingComponentTextStyleModifier
- (SXLineBalancingComponentTextStyleModifier)initWithSettings:(id)a3;
- (void)enableLineBalancingForComponentTextStyleWithIdentifier:(id)a3 DOM:(id)a4 context:(id)a5;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXLineBalancingComponentTextStyleModifier

- (SXLineBalancingComponentTextStyleModifier)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXLineBalancingComponentTextStyleModifier;
  v6 = [(SXLineBalancingComponentTextStyleModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(SXLineBalancingSettings *)self->_settings enableLineBalancing])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 componentTextStyles];
    v9 = [v8 allKeys];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v9);
          }

          [(SXLineBalancingComponentTextStyleModifier *)self enableLineBalancingForComponentTextStyleWithIdentifier:*(*(&v14 + 1) + 8 * v13++) DOM:v6 context:v7];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)enableLineBalancingForComponentTextStyleWithIdentifier:(id)a3 DOM:(id)a4 context:(id)a5
{
  v18 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 componentTextStyles];
  v10 = [v9 objectForKey:v18];

  if ([v10 textAlignment] == 2)
  {
    v11 = [v10 JSONRepresentation];
    v12 = v11;
    if (!v11)
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    v13 = [v11 mutableCopy];

    [v13 setObject:MEMORY[0x1E695E118] forKey:@"lineBalancing"];
    v14 = [SXComponentTextStyle alloc];
    v15 = [v8 specVersion];
    v16 = [(SXJSONObject *)v14 initWithJSONObject:v13 andVersion:v15];

    v17 = [v7 componentTextStyles];
    [v17 setObject:v16 forKey:v18];

    v10 = v16;
  }
}

@end