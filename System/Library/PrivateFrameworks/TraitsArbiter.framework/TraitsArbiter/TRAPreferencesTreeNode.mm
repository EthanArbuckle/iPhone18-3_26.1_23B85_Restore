@interface TRAPreferencesTreeNode
- (TRAPreferencesTreeNode)initWithParticipant:(id)participant;
- (TRAPreferencesTreeNode)parent;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addChild:(id)child;
- (void)setChildren:(id)children;
@end

@implementation TRAPreferencesTreeNode

- (TRAPreferencesTreeNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (TRAPreferencesTreeNode)initWithParticipant:(id)participant
{
  participantCopy = participant;
  v12.receiver = self;
  v12.super_class = TRAPreferencesTreeNode;
  v6 = [(TRAPreferencesTreeNode *)&v12 init];
  if (v6)
  {
    uniqueIdentifier = [participantCopy uniqueIdentifier];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = uniqueIdentifier;

    objc_storeStrong(&v6->_participant, participant);
    role = [participantCopy role];
    role = v6->_role;
    v6->_role = role;
  }

  return v6;
}

- (void)addChild:(id)child
{
  childCopy = child;
  v7 = childCopy;
  if (!childCopy)
  {
    [TRAPreferencesTreeNode addChild:];
    childCopy = 0;
  }

  [childCopy setParent:self];
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_children];
  [(NSArray *)v5 addObject:v7];
  [(NSArray *)v5 sortUsingComparator:&__block_literal_global_0];
  children = self->_children;
  self->_children = v5;
}

uint64_t __35__TRAPreferencesTreeNode_addChild___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 order];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 order];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (void)setChildren:(id)children
{
  v19 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  if (!childrenCopy)
  {
    [TRAPreferencesTreeNode setChildren:];
  }

  v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_children];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = childrenCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 setParent:{self, v14}];
        [(NSArray *)v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSArray *)v5 sortUsingComparator:&__block_literal_global_14];
  children = self->_children;
  self->_children = v5;

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __38__TRAPreferencesTreeNode_setChildren___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 order];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 order];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAPreferencesTreeNode *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_uniqueIdentifier withName:@"uniqueIdentifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAPreferencesTreeNode *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)addChild:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"child" object:? file:? lineNumber:? description:?];
}

- (void)setChildren:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"children" object:? file:? lineNumber:? description:?];
}

@end