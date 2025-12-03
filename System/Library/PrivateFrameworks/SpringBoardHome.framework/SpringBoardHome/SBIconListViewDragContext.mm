@interface SBIconListViewDragContext
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (uint64_t)addDragObserver:(uint64_t)observer;
- (void)enumerateDragObserversUsingBlock:(uint64_t)block;
@end

@implementation SBIconListViewDragContext

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewDragContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewDragContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewDragContext *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendBool:self->_hasReceivedDidConcludeDrop withName:@"hasReceivedDidConcludeDrop"];
  v6 = [succinctDescriptionBuilder appendBool:self->_hasReceivedDidEndSession withName:@"hasReceivedDidEndSession"];

  return succinctDescriptionBuilder;
}

- (uint64_t)addDragObserver:(uint64_t)observer
{
  v3 = a2;
  v4 = v3;
  if (observer)
  {
    v5 = *(observer + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = *(observer + 8);
      *(observer + 8) = v6;

      v5 = *(observer + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)enumerateDragObserversUsingBlock:(uint64_t)block
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (block)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(block + 8) copy];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v3[2](v3, *(*(&v9 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

@end