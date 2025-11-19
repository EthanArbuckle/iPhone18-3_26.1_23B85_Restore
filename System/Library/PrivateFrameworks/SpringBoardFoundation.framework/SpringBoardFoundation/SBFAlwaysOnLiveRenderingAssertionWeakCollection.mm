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
  v2 = [(NSHashTable *)self->_assertions anyObject];
  v3 = v2 == 0;

  return v3;
}

- (SBFAlwaysOnLiveRenderingAssertionWeakCollection)init
{
  v6.receiver = self;
  v6.super_class = SBFAlwaysOnLiveRenderingAssertionWeakCollection;
  v2 = [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (int64_t)count
{
  v2 = [(NSHashTable *)self->_assertions allObjects];
  v3 = [v2 count];

  return v3;
}

- (id)mostRecentlyCreatedValidAssertion
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(NSHashTable *)self->_assertions allObjects];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isValid])
        {
          v9 = [v8 createdAt];
          [v9 timeIntervalSince1970];
          v11 = v10;
          v12 = [v5 createdAt];
          [v12 timeIntervalSince1970];
          v14 = v13;

          if (v11 > v14)
          {
            v15 = v8;

            v5 = v15;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v2 = [(NSHashTable *)self->_assertions allObjects];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_5];
}

@end