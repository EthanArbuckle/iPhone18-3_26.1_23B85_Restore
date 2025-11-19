@interface SBHFocusMode
- (BOOL)customizedHomeScreenPagesEnabled;
- (BOOL)wantsListVisible:(id)a3;
- (NSArray)lists;
- (SBHFocusMode)initWithIdentifier:(id)a3 folder:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)addToList:(id)a3;
- (void)removeFromList:(id)a3;
@end

@implementation SBHFocusMode

- (SBHFocusMode)initWithIdentifier:(id)a3 folder:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 length])
  {
    v13.receiver = self;
    v13.super_class = SBHFocusMode;
    v9 = [(SBHFocusMode *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, a3);
      objc_storeStrong(p_isa + 10, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)customizedHomeScreenPagesEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(SBHFocusMode *)self folder];
  [v3 lists];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(SBHFocusMode *)self wantsListVisible:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)addToList:(id)a3
{
  v4 = a3;
  v7 = [v4 focusModeIdentifiers];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v7];
  v6 = [(SBHFocusMode *)self identifier];
  [v5 addObject:v6];

  [v4 setFocusModeIdentifiers:v5];
}

- (void)removeFromList:(id)a3
{
  v4 = a3;
  v7 = [v4 focusModeIdentifiers];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v7];
  v6 = [(SBHFocusMode *)self identifier];
  [v5 removeObject:v6];

  [v4 setFocusModeIdentifiers:v5];
}

- (BOOL)wantsListVisible:(id)a3
{
  v4 = [a3 focusModeIdentifiers];
  v5 = [(SBHFocusMode *)self identifier];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (NSArray)lists
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(SBHFocusMode *)self folder];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 lists];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(SBHFocusMode *)self wantsListVisible:v10])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBHFocusMode *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHFocusMode *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHFocusMode *)self succinctDescriptionBuilder];
  v5 = [(SBHFocusMode *)self identifier];
  [v4 appendString:v5 withName:@"identifier"];

  return v4;
}

@end