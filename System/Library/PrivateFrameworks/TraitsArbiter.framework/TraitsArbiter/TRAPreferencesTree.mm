@interface TRAPreferencesTree
+ (TRAPreferencesTree)treeWithNodesSpecifications:(id)specifications traversalType:(int64_t)type debugName:(id)name;
- (id)_initWithRootChildren:(id)children traversalType:(int64_t)type debugName:(id)name;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)participantsTopologicalSort;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)topologicalSort;
@end

@implementation TRAPreferencesTree

- (id)participantsTopologicalSort
{
  v17 = *MEMORY[0x277D85DE8];
  topologicalSort = [(TRAPreferencesTree *)self topologicalSort];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(topologicalSort, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = topologicalSort;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        participant = [*(*(&v12 + 1) + 8 * i) participant];
        [v3 addObject:participant];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)topologicalSort
{
  if (self->_isFlatTree)
  {
    v3 = self->_rootChildren;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_rootChildren, "count")}];
    preOrder(0, self->_rootChildren, v3, self->_traversalType);
  }

  return v3;
}

- (id)_initWithRootChildren:(id)children traversalType:(int64_t)type debugName:(id)name
{
  childrenCopy = children;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = TRAPreferencesTree;
  v10 = [(TRAPreferencesTree *)&v14 init];
  if (v10)
  {
    v11 = [childrenCopy sortedArrayUsingComparator:&__block_literal_global_136];
    rootChildren = v10->_rootChildren;
    v10->_rootChildren = v11;

    v10->_traversalType = type;
    objc_storeStrong(&v10->_debugName, name);
  }

  return v10;
}

uint64_t __68__TRAPreferencesTree__initWithRootChildren_traversalType_debugName___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (TRAPreferencesTree)treeWithNodesSpecifications:(id)specifications traversalType:(int64_t)type debugName:(id)name
{
  v69 = *MEMORY[0x277D85DE8];
  specificationsCopy = specifications;
  nameCopy = name;
  v9 = nameCopy;
  if (specificationsCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[TRAPreferencesTree treeWithNodesSpecifications:traversalType:debugName:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[TRAPreferencesTree treeWithNodesSpecifications:traversalType:debugName:];
LABEL_3:
  v43 = v9;
  v52 = [MEMORY[0x277CBEB58] setWithArray:specificationsCopy];
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(specificationsCopy, "count")}];
  v45 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(specificationsCopy, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = specificationsCopy;
  v10 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v62 + 1) + 8 * i);
        parentParticipant = [v15 parentParticipant];

        if (parentParticipant)
        {
          v13 = 0;
        }

        else
        {
          v17 = [TRAPreferencesTreeNode alloc];
          participant = [v15 participant];
          v19 = [(TRAPreferencesTreeNode *)v17 initWithParticipant:participant];

          [v15 order];
          [(TRAPreferencesTreeNode *)v19 setOrder:?];
          [v46 addObject:v19];
          [v52 removeObject:v15];
          uniqueIdentifier = [(TRAPreferencesTreeNode *)v19 uniqueIdentifier];
          [v45 setObject:v19 forKey:uniqueIdentifier];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

  v21 = v43;
  v22 = [[TRAPreferencesTree alloc] _initWithRootChildren:v46 traversalType:type debugName:v43];
  if ((v13 & 1) == 0 && [v46 count])
  {
    v42 = v22;
    v23 = [MEMORY[0x277CBEB18] arrayWithArray:v46];
    v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count")}];
    v44 = v23;
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count")}];
    do
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v25 = v44;
      v51 = [v25 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v51)
      {
        v48 = *v59;
        v49 = v25;
        do
        {
          v26 = 0;
          do
          {
            if (*v59 != v48)
            {
              objc_enumerationMutation(v25);
            }

            v53 = v26;
            v27 = *(*(&v58 + 1) + 8 * v26);
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v28 = v52;
            v29 = [v28 countByEnumeratingWithState:&v54 objects:v66 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v55;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v55 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v54 + 1) + 8 * j);
                  parentParticipant2 = [v33 parentParticipant];
                  participant2 = [v27 participant];

                  if (parentParticipant2 == participant2)
                  {
                    v36 = [TRAPreferencesTreeNode alloc];
                    participant3 = [v33 participant];
                    v38 = [(TRAPreferencesTreeNode *)v36 initWithParticipant:participant3];

                    [v33 order];
                    [(TRAPreferencesTreeNode *)v38 setOrder:?];
                    [v27 addChild:v38];
                    [v24 addObject:v38];
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v54 objects:v66 count:16];
              }

              while (v30);
            }

            [v50 addObject:v27];
            v26 = v53 + 1;
            v25 = v49;
          }

          while (v53 + 1 != v51);
          v51 = [v49 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v51);
      }

      [v25 removeObjectsInArray:v50];
      [v25 addObjectsFromArray:v24];
      [v24 removeAllObjects];
      [v50 removeAllObjects];
    }

    while ([v25 count]);

    v22 = v42;
    v21 = v43;
  }

  v39 = TRALogCommon();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    +[TRAPreferencesTree treeWithNodesSpecifications:traversalType:debugName:];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAPreferencesTree *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_debugName withName:@"name"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAPreferencesTree *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

+ (void)treeWithNodesSpecifications:traversalType:debugName:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"nodesSpecifications" object:? file:? lineNumber:? description:?];
}

+ (void)treeWithNodesSpecifications:traversalType:debugName:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"debugName" object:? file:? lineNumber:? description:?];
}

+ (void)treeWithNodesSpecifications:traversalType:debugName:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v10 = *MEMORY[0x277D85DE8];
  v3 = [v2 debugName];
  v4 = [v1 recursiveDescription];
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_debug_impl(&dword_26F353000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end