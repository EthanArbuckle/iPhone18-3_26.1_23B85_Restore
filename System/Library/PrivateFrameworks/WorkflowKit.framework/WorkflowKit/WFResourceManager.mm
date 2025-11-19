@interface WFResourceManager
- (BOOL)currentlyRequiresResourceOfClass:(Class)a3;
- (BOOL)currentlyRequiresResourceOfClasses:(id)a3;
- (BOOL)nodeIsAvailable:(id)a3 error:(id *)a4;
- (BOOL)nodeIsRelevant:(id)a3;
- (BOOL)resourcesAvailable;
- (BOOL)resourcesRequiredForDisplayAvailable;
- (NSArray)resourceNodes;
- (NSMutableOrderedSet)unavailableResources;
- (NSOrderedSet)unavailableResourceErrors;
- (NSSet)accessResources;
- (WFResourceManager)initWithDefinitions:(id)a3;
- (id)currentlyRequiredResourcesOfClass:(Class)a3;
- (id)relevantNodes;
- (id)resourceObjectsConformingToProtocol:(id)a3;
- (id)resourceObjectsOfClass:(Class)a3;
- (id)resourceObjectsOfClasses:(id)a3;
- (id)selectorSetForTarget:(id)a3;
- (void)addResource:(id)a3;
- (void)addResourceNodes:(id)a3;
- (void)addTarget:(id)a3 selector:(SEL)a4;
- (void)evaluateAvailabilityOfNodesIfNeeded;
- (void)evaluateAvailabilityOfNodesWithChangedNode:(id)a3;
- (void)makeAccessResourcesAvailableWithUserInterface:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)notifyTargets;
- (void)refreshAvailabilityOfRequiredResourcesOfClasses:(id)a3;
- (void)removeResourceNodes:(id)a3;
- (void)removeTarget:(id)a3 selector:(SEL)a4;
- (void)resourceNodeAvailabilityChanged:(id)a3;
@end

@implementation WFResourceManager

- (NSArray)resourceNodes
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSMutableArray *)self->_resourceNodes copy];
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (BOOL)resourcesAvailable
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  resourcesAvailable = self->_resourcesAvailable;
  os_unfair_lock_unlock(&self->_stateLock);
  return resourcesAvailable;
}

- (void)evaluateAvailabilityOfNodesIfNeeded
{
  if (!self->_didEvaluateAvailabilityOfNodes)
  {
    [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:0];
  }
}

- (void)notifyTargets
{
  os_unfair_lock_lock(&self->_targetSelectorLock);
  v3 = [(WFResourceManager *)self targetSelectorTable];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_targetSelectorLock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__WFResourceManager_notifyTargets__block_invoke;
  v6[3] = &unk_1E837F870;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __34__WFResourceManager_notifyTargets__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [*(a1 + 32) objectForKey:{v7, 0}];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 performSelector:NSSelectorFromString(*(*(&v14 + 1) + 8 * v12++)) withObject:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeResourceNodes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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
        [(NSMutableArray *)self->_resourceNodes removeObject:v10, v12];
        [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)addResourceNodes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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
        [v10 setDelegate:{self, v12}];
        [(NSMutableArray *)self->_resourceNodes addObject:v10];
        [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)addResource:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[WFResourceNode alloc] initWithResource:v4];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(WFResourceManager *)self addResourceNodes:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  os_unfair_lock_lock(&self->_targetSelectorLock);
  v8 = [(WFResourceManager *)self targetSelectorTable];
  v9 = [v8 objectForKey:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__WFResourceManager_removeTarget_selector___block_invoke;
  v13[3] = &unk_1E837EED0;
  v14 = v7;
  v10 = v7;
  v11 = [v9 objectsPassingTest:v13];

  if ([v11 count])
  {
    v12 = [(WFResourceManager *)self targetSelectorTable];
    [v12 setObject:v11 forKey:v6];
LABEL_5:

    goto LABEL_6;
  }

  if (v11)
  {
    v12 = [(WFResourceManager *)self targetSelectorTable];
    [v12 removeObjectForKey:v6];
    goto LABEL_5;
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_targetSelectorLock);
}

- (void)addTarget:(id)a3 selector:(SEL)a4
{
  v10 = a3;
  v6 = NSStringFromSelector(a4);
  os_unfair_lock_lock(&self->_targetSelectorLock);
  v7 = [(WFResourceManager *)self selectorSetForTarget:v10];
  if (([v7 containsObject:v6] & 1) == 0)
  {
    v8 = [(WFResourceManager *)self targetSelectorTable];
    v9 = [v7 setByAddingObject:v6];
    [v8 setObject:v9 forKey:v10];
  }

  os_unfair_lock_unlock(&self->_targetSelectorLock);
}

- (id)selectorSetForTarget:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_targetSelectorLock);
  v5 = [(WFResourceManager *)self targetSelectorTable];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (void)resourceNodeAvailabilityChanged:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  [(WFResourceManager *)self evaluateAvailabilityOfNodesWithChangedNode:v4];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (NSOrderedSet)unavailableResourceErrors
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  v3 = self->_unavailableResourceErrors;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (NSMutableOrderedSet)unavailableResources
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  v3 = self->_unavailableResources;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (BOOL)resourcesRequiredForDisplayAvailable
{
  os_unfair_lock_lock(&self->_stateLock);
  [(WFResourceManager *)self evaluateAvailabilityOfNodesIfNeeded];
  resourcesRequiredForDisplayAvailable = self->_resourcesRequiredForDisplayAvailable;
  os_unfair_lock_unlock(&self->_stateLock);
  return resourcesRequiredForDisplayAvailable;
}

- (void)evaluateAvailabilityOfNodesWithChangedNode:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (v4)
  {
    v5 = [(NSMutableOrderedSet *)self->_unavailableResources mutableCopy];
    resourcesAvailable = self->_resourcesAvailable;
    resourcesRequiredForDisplayAvailable = self->_resourcesRequiredForDisplayAvailable;
    if ([(WFResourceManager *)self nodeIsAvailable:v4 error:0])
    {
      v8 = [v4 resource];
      [v5 removeObject:v8];

      v9 = [v5 count] == 0;
      v10 = v9 || resourcesRequiredForDisplayAvailable;
      v11 = v9 || resourcesAvailable;
    }

    else
    {
      v21 = [v4 resource];
      v22 = [objc_opt_class() mustBeAvailableForDisplay];

      v10 = (v22 ^ 1) & resourcesRequiredForDisplayAvailable;
      v23 = [v4 resource];
      [v5 addObject:v23];

      v11 = 0;
    }
  }

  else
  {
    v5 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = self->_resourceNodes;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      v10 = 1;
      v11 = 1;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          if (![(WFResourceManager *)self nodeIsAvailable:v17 error:0])
          {
            v18 = [v17 resource];
            v19 = [objc_opt_class() mustBeAvailableForDisplay];

            v10 &= v19 ^ 1;
            v20 = [v17 resource];
            [v5 addObject:v20];

            v11 = 0;
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    else
    {
      v10 = 1;
      v11 = 1;
    }

    self->_didEvaluateAvailabilityOfNodes = 1;
    v4 = 0;
  }

  v24 = [v5 if_compactMap:&__block_literal_global_178_69510];
  unavailableResources = self->_unavailableResources;
  if (v5 | unavailableResources && ([(NSMutableOrderedSet *)unavailableResources isEqualToOrderedSet:v5]& 1) == 0)
  {
    [(WFResourceManager *)self setUnavailableResources:v5];
  }

  unavailableResourceErrors = self->_unavailableResourceErrors;
  if (unavailableResourceErrors | v24 && ![(NSOrderedSet *)unavailableResourceErrors isEqualToOrderedSet:v24])
  {
    [(WFResourceManager *)self setUnavailableResourceErrors:v24];
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (self->_resourcesAvailable != (v11 & 1))
  {
    [(WFResourceManager *)self setResourcesAvailable:?];
    v27 = 1;
  }

  if (self->_resourcesRequiredForDisplayAvailable != (v10 & 1))
  {
    [(WFResourceManager *)self setResourcesRequiredForDisplayAvailable:?];
  }

  if (v27)
  {
    [(WFResourceManager *)self notifyTargets];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)nodeIsAvailable:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (-[WFResourceManager nodeIsRelevant:](self, "nodeIsRelevant:", v6) && ([v6 resource], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isAvailable"), v7, (v8 & 1) == 0))
  {
    if (a4)
    {
      v10 = [v6 resource];
      v11 = [v10 availabilityError];

      if (v11)
      {
        v12 = [v6 resource];
        *a4 = [v12 availabilityError];
      }

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

- (BOOL)nodeIsRelevant:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 subnodes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![(WFResourceManager *)self nodeIsAvailable:*(*(&v12 + 1) + 8 * i) error:0])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)relevantNodes
{
  v3 = [(WFResourceManager *)self resourceNodes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__WFResourceManager_relevantNodes__block_invoke;
  v6[3] = &unk_1E837EE88;
  v6[4] = self;
  v4 = [v3 if_objectsPassingTest:v6];

  return v4;
}

- (id)resourceObjectsOfClasses:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 anyObject])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(WFResourceManager *)self resourceNodes];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * i) addResourceObjectsOfClassesOrProtocols:v4 toSet:v5];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)resourceObjectsConformingToProtocol:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(WFResourceManager *)self resourceNodes];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695DFD8] setWithObject:v4];
        [v11 addResourceObjectsOfClassesOrProtocols:v12 toSet:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)resourceObjectsOfClass:(Class)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(WFResourceManager *)self resourceObjectsOfClasses:v4];

  return v5;
}

- (void)makeAccessResourcesAvailableWithUserInterface:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFResourceManager *)self relevantNodes];
  v12 = [v11 if_compactMap:&__block_literal_global_69515];

  if ([v12 count])
  {
    v13 = objc_opt_new();
    aBlock = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_2;
    v30 = &unk_1E837EE38;
    v31 = v8;
    v14 = v13;
    v32 = v14;
    v15 = _Block_copy(&aBlock);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_4;
    v24 = &unk_1E837EE60;
    v25 = v14;
    v26 = v10;
    v16 = v14;
    v17 = _Block_copy(&v21);
    if (v9)
    {
      [v12 if_enumerateAsynchronouslyInSequenceOnQueue:v9 block:v15 completionHandler:{v17, v21, v22, v23, v24, v25, v26, aBlock, v28, v29, v30, v31}];
    }

    else
    {
      v19 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v34 = "[WFResourceManager makeAccessResourcesAvailableWithUserInterface:completionQueue:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEBUG, "%s No completionQueue provided to if_enumerateAsynchronouslyInSequence", buf, 0xCu);
      }

      [v12 if_enumerateAsynchronouslyInSequence:v15 completionHandler:{v17, v21, v22, v23, v24, v25, v26, aBlock, v28, v29, v30, v31}];
    }
  }

  else
  {
    v18 = objc_opt_new();
    (*(v10 + 2))(v10, v18);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_3;
  v9[3] = &unk_1E837EE10;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v6;
  v8 = v6;
  [a2 makeAvailableWithUserInterface:v7 completionHandler:v9];
}

void __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

uint64_t __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) addObject:?];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

id __101__WFResourceManager_makeAccessResourcesAvailableWithUserInterface_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 resource];
    v6 = [v5 status] == 1;
    if ((v6 | [objc_opt_class() alwaysMakeAvailable]))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)currentlyRequiredResourcesOfClass:(Class)a3
{
  v4 = MEMORY[0x1E695DFB8];
  v5 = [(WFResourceManager *)self relevantNodes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFResourceManager_currentlyRequiredResourcesOfClass___block_invoke;
  v9[3] = &__block_descriptor_40_e39___WFResource_24__0__WFResourceNode_8Q16lu32l8;
  v9[4] = a3;
  v6 = [v5 if_compactMap:v9];
  v7 = [v4 orderedSetWithArray:v6];

  return v7;
}

id __55__WFResourceManager_currentlyRequiredResourcesOfClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resource];
  v5 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 resource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)accessResources
{
  v3 = objc_opt_class();

  return [(WFResourceManager *)self resourceObjectsOfClass:v3];
}

- (BOOL)currentlyRequiresResourceOfClasses:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(WFResourceManager *)self resourceNodes];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 resource];
        v12 = WFResourceClassIsInArray(v11, v4);

        if (v12)
        {
          v13 = [(WFResourceManager *)self nodeIsRelevant:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)currentlyRequiresResourceOfClass:(Class)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  LOBYTE(self) = [(WFResourceManager *)self currentlyRequiresResourceOfClasses:v4];

  v5 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)refreshAvailabilityOfRequiredResourcesOfClasses:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(WFResourceManager *)self resourceNodes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 resource];
        v12 = WFResourceClassIsInArray(v11, v4);

        if (v12)
        {
          [v10 refreshAvailability];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (WFResourceManager)initWithDefinitions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFResourceManager;
  v5 = [(WFResourceManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v5->_targetSelectorLock._os_unfair_lock_opaque = 0;
    v7 = [WFResourceNode nodesWithDefinitions:v4];
    v8 = [v7 mutableCopy];
    resourceNodes = v6->_resourceNodes;
    v6->_resourceNodes = v8;

    v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    targetSelectorTable = v6->_targetSelectorTable;
    v6->_targetSelectorTable = v10;

    [(NSMutableArray *)v6->_resourceNodes makeObjectsPerformSelector:sel_setDelegate_ withObject:v6];
  }

  return v6;
}

@end