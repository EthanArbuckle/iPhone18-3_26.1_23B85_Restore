@interface SBAlertItemsObjectQueue
- (BOOL)hasObjectOfClass:(Class)class;
- (SBAlertItemsObjectQueue)init;
- (id)dequeueAllObjects;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)objectsOfClass:(Class)class;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)appendObject:(id)object;
- (void)prependObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation SBAlertItemsObjectQueue

- (SBAlertItemsObjectQueue)init
{
  v6.receiver = self;
  v6.super_class = SBAlertItemsObjectQueue;
  v2 = [(SBAlertItemsObjectQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    objects = v2->_objects;
    v2->_objects = v3;
  }

  return v2;
}

- (void)appendObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (!objectCopy)
  {
    [(SBAlertItemsObjectQueue *)a2 appendObject:?];
    objectCopy = 0;
  }

  [(NSMutableOrderedSet *)self->_objects addObject:objectCopy];
}

- (void)prependObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (!objectCopy)
  {
    [(SBAlertItemsObjectQueue *)a2 prependObject:?];
    objectCopy = 0;
  }

  [(NSMutableOrderedSet *)self->_objects insertObject:objectCopy atIndex:0];
}

- (id)dequeueAllObjects
{
  v3 = [(NSMutableOrderedSet *)self->_objects copy];
  [(NSMutableOrderedSet *)self->_objects removeAllObjects];
  array = [v3 array];

  return array;
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  if (![(SBAlertItemsObjectQueue *)self containsObject:?])
  {
    [(SBAlertItemsObjectQueue *)a2 removeObject:?];
  }

  [(NSMutableOrderedSet *)self->_objects removeObject:objectCopy];
}

- (BOOL)hasObjectOfClass:(Class)class
{
  objects = self->_objects;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SBAlertItemsObjectQueue_hasObjectOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24lu32l8;
  v5[4] = class;
  return [(NSMutableOrderedSet *)objects indexOfObjectPassingTest:v5]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (id)objectsOfClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_objects;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAlertItemsObjectQueue *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_objects withName:@"objects"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAlertItemsObjectQueue *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)appendObject:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemsObjectQueue.m" lineNumber:34 description:@"Cannot append nil to the queue."];
}

- (void)prependObject:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemsObjectQueue.m" lineNumber:39 description:@"Cannot prepend nil to the queue."];
}

- (void)removeObject:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemsObjectQueue.m" lineNumber:58 description:@"Trying to remove an object that is not in the queue."];
}

@end