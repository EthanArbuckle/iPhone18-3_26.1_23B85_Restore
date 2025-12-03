@interface SBFAlwaysOnLiveRenderingAssertionWeakCollection
- (BOOL)isEmpty;
- (SBFAlwaysOnLiveRenderingAssertionWeakCollection)init;
- (id)mostRecentlyCreatedValidAssertion;
- (int64_t)count;
- (void)invalidateAll;
@end

@implementation SBFAlwaysOnLiveRenderingAssertionWeakCollection

- (BOOL)isEmpty
{
  anyObject = [(NSHashTable *)self->_assertions anyObject];
  v3 = anyObject == 0;

  return v3;
}

- (SBFAlwaysOnLiveRenderingAssertionWeakCollection)init
{
  v6.receiver = self;
  v6.super_class = SBFAlwaysOnLiveRenderingAssertionWeakCollection;
  v2 = [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v2->_assertions;
    v2->_assertions = weakObjectsHashTable;
  }

  return v2;
}

- (int64_t)count
{
  allObjects = [(NSHashTable *)self->_assertions allObjects];
  v3 = [allObjects count];

  return v3;
}

- (id)mostRecentlyCreatedValidAssertion
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allObjects = [(NSHashTable *)self->_assertions allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isValid])
        {
          createdAt = [v8 createdAt];
          [createdAt timeIntervalSince1970];
          v11 = v10;
          createdAt2 = [v5 createdAt];
          [createdAt2 timeIntervalSince1970];
          v14 = v13;

          if (v11 > v14)
          {
            v15 = v8;

            v5 = v15;
          }
        }
      }

      v4 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)invalidateAll
{
  allObjects = [(NSHashTable *)self->_assertions allObjects];
  [allObjects enumerateObjectsUsingBlock:&__block_literal_global_5];
}

@end