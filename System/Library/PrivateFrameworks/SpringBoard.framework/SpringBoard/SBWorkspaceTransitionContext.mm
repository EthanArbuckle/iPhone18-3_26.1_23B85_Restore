@interface SBWorkspaceTransitionContext
+ (id)context;
- (NSDictionary)entitiesByKey;
- (NSSet)entities;
- (NSSet)previousEntities;
- (SBWorkspaceTransitionContext)init;
- (SBWorkspaceTransitionRequest)request;
- (id)compactDescriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)entityForIdentifier:(id)a3;
- (id)previousEntityForIdentifier:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addFinalizeBlock:(id)a3;
- (void)enumerateEntitiesUsingBlock:(id)a3;
- (void)finalize;
- (void)setEntity:(id)a3 forKey:(id)a4;
- (void)setPreviousEntity:(id)a3 forKey:(id)a4;
@end

@implementation SBWorkspaceTransitionContext

- (NSSet)entities
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_entities allValues];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (SBWorkspaceTransitionRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (SBWorkspaceTransitionContext)init
{
  v10.receiver = self;
  v10.super_class = SBWorkspaceTransitionContext;
  v2 = [(SBWorkspaceTransitionContext *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entities = v2->_entities;
    v2->_entities = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    previousEntities = v2->_previousEntities;
    v2->_previousEntities = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finalizeBlocks = v2->_finalizeBlocks;
    v2->_finalizeBlocks = v7;
  }

  return v2;
}

- (NSSet)previousEntities
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_previousEntities allValues];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (NSDictionary)entitiesByKey
{
  v2 = [(NSMutableDictionary *)self->_entities copy];

  return v2;
}

- (void)finalize
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_finalized)
  {
    self->_finalized = 1;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_finalizeBlocks;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_finalizeBlocks removeAllObjects];
  }
}

+ (id)context
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)enumerateEntitiesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    entities = self->_entities;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__SBWorkspaceTransitionContext_enumerateEntitiesUsingBlock___block_invoke;
    v7[3] = &unk_2783B68B0;
    v8 = v4;
    [(NSMutableDictionary *)entities enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)setEntity:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBWorkspaceTransitionContext setEntity:a2 forKey:self];
  }

  entities = self->_entities;
  if (v9)
  {
    [(NSMutableDictionary *)entities setObject:v9 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)entities removeObjectForKey:v7];
  }
}

- (id)entityForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_entities allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setPreviousEntity:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBWorkspaceTransitionContext setPreviousEntity:a2 forKey:self];
  }

  v9 = [v7 copy];

  if (v9)
  {
    [v9 clearActivationSettings];
    [(NSMutableDictionary *)self->_previousEntities setObject:v9 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)self->_previousEntities removeObjectForKey:v8];
  }
}

- (id)previousEntityForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_previousEntities allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)addFinalizeBlock:(id)a3
{
  if (a3)
  {
    finalizeBlocks = self->_finalizeBlocks;
    v4 = MEMORY[0x223D6F7F0](a3, a2);
    [(NSMutableArray *)finalizeBlocks addObject:v4];
  }
}

- (id)compactDescriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  entities = self->_entities;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBWorkspaceTransitionContext_compactDescriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783B5670;
  v9[4] = self;
  [v6 appendDictionarySection:entities withName:@"entities" multilinePrefix:v5 skipIfEmpty:1 objectTransformer:v9];

  return v6;
}

id __77__SBWorkspaceTransitionContext_compactDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];
  v3 = [v2 succinctDescription];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBWorkspaceTransitionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_animationDisabled withName:@"animationDisabled"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWorkspaceTransitionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceTransitionContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBWorkspaceTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

uint64_t __70__SBWorkspaceTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"animationSettings" skipIfNil:1];
  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 16) withName:@"entities" skipIfEmpty:1];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 24);

  return [v3 appendDictionarySection:v4 withName:@"previousEntities" skipIfEmpty:1];
}

- (void)setEntity:(uint64_t)a1 forKey:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWorkspaceTransitionContext.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"key"}];
}

- (void)setPreviousEntity:(uint64_t)a1 forKey:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWorkspaceTransitionContext.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"key"}];
}

@end