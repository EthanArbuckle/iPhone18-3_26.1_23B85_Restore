@interface SBHFocusMode
- (BOOL)customizedHomeScreenPagesEnabled;
- (BOOL)wantsListVisible:(id)visible;
- (NSArray)lists;
- (SBHFocusMode)initWithIdentifier:(id)identifier folder:(id)folder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addToList:(id)list;
- (void)removeFromList:(id)list;
@end

@implementation SBHFocusMode

- (SBHFocusMode)initWithIdentifier:(id)identifier folder:(id)folder
{
  identifierCopy = identifier;
  folderCopy = folder;
  if (identifierCopy && [identifierCopy length])
  {
    v13.receiver = self;
    v13.super_class = SBHFocusMode;
    v9 = [(SBHFocusMode *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, identifier);
      objc_storeStrong(p_isa + 10, folder);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)customizedHomeScreenPagesEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  folder = [(SBHFocusMode *)self folder];
  [folder lists];
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

- (void)addToList:(id)list
{
  listCopy = list;
  focusModeIdentifiers = [listCopy focusModeIdentifiers];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:focusModeIdentifiers];
  identifier = [(SBHFocusMode *)self identifier];
  [v5 addObject:identifier];

  [listCopy setFocusModeIdentifiers:v5];
}

- (void)removeFromList:(id)list
{
  listCopy = list;
  focusModeIdentifiers = [listCopy focusModeIdentifiers];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:focusModeIdentifiers];
  identifier = [(SBHFocusMode *)self identifier];
  [v5 removeObject:identifier];

  [listCopy setFocusModeIdentifiers:v5];
}

- (BOOL)wantsListVisible:(id)visible
{
  focusModeIdentifiers = [visible focusModeIdentifiers];
  identifier = [(SBHFocusMode *)self identifier];
  v6 = [focusModeIdentifiers containsObject:identifier];

  return v6;
}

- (NSArray)lists
{
  v17 = *MEMORY[0x1E69E9840];
  folder = [(SBHFocusMode *)self folder];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  lists = [folder lists];
  v6 = [lists countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(lists);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(SBHFocusMode *)self wantsListVisible:v10])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [lists countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHFocusMode *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHFocusMode *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHFocusMode *)self succinctDescriptionBuilder];
  identifier = [(SBHFocusMode *)self identifier];
  [succinctDescriptionBuilder appendString:identifier withName:@"identifier"];

  return succinctDescriptionBuilder;
}

@end