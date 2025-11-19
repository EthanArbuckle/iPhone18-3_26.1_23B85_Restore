@interface SBHIconLayoutHidingCompoundAssertion
- (NSArray)icons;
- (SBHIconLayoutHidingCompoundAssertion)initWithInvalidationHandler:(id)a3 icons:(id)a4 reason:(id)a5 options:(unint64_t)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)addAssertion:(id)a3 forChild:(id)a4;
- (void)addAssertionFromChild:(id)a3;
- (void)addIcon:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeAndInvalidateAssertionsForChild:(id)a3;
- (void)setOptions:(unint64_t)a3;
@end

@implementation SBHIconLayoutHidingCompoundAssertion

- (SBHIconLayoutHidingCompoundAssertion)initWithInvalidationHandler:(id)a3 icons:(id)a4 reason:(id)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = SBHIconLayoutHidingCompoundAssertion;
  v14 = [(SBHIconLayoutHidingCompoundAssertion *)&v20 init];
  if (v14)
  {
    v15 = [v12 mutableCopy];
    icons = v14->_icons;
    v14->_icons = v15;

    objc_storeStrong(&v14->_invalidationHandler, a3);
    v17 = [v13 copy];
    reason = v14->_reason;
    v14->_reason = v17;

    v14->_options = a6;
  }

  return v14;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBHIconLayoutHidingCompoundAssertion deallocated but not invalidated! Reason: %@", &v3, 0xCu);
}

- (void)addAssertion:(id)a3 forChild:(id)a4
{
  v11 = a3;
  v6 = a4;
  childAssertions = self->_childAssertions;
  if (!childAssertions)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_childAssertions;
    self->_childAssertions = v8;

    childAssertions = self->_childAssertions;
  }

  v10 = [(NSMapTable *)childAssertions objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMapTable *)self->_childAssertions setObject:v10 forKey:v6];
  }

  [v10 addObject:v11];
}

- (void)addAssertionFromChild:(id)a3
{
  v7 = a3;
  v4 = [(SBHIconLayoutHidingCompoundAssertion *)self icons];
  v5 = [(SBHIconLayoutHidingCompoundAssertion *)self reason];
  v6 = [v7 beginHidingIconsFromLayout:v4 reason:v5 options:{-[SBHIconLayoutHidingCompoundAssertion options](self, "options")}];
  if (v6)
  {
    [(SBHIconLayoutHidingCompoundAssertion *)self addAssertion:v6 forChild:v7];
  }
}

- (void)removeAndInvalidateAssertionsForChild:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMapTable *)self->_childAssertions objectForKey:v4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMapTable *)self->_childAssertions removeObjectForKey:v4];
}

- (void)addIcon:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableArray *)self->_icons addObject:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_childAssertions;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_childAssertions objectForKey:*(*(&v19 + 1) + 8 * v9)];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14++) addIcon:v4];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }
}

- (NSArray)icons
{
  v2 = [(NSMutableArray *)self->_icons copy];

  return v2;
}

- (void)setOptions:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_options != a3)
  {
    self->_options = a3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_childAssertions;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMapTable *)self->_childAssertions objectForKey:*(*(&v19 + 1) + 8 * v9)];
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v16;
            do
            {
              v14 = 0;
              do
              {
                if (*v16 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v15 + 1) + 8 * v14++) setOptions:a3];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v12);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }
  }
}

- (void)invalidate
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(SBHIconLayoutHidingCompoundAssertion *)self isInvalidated])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = self->_childAssertions;
    v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [(NSMapTable *)self->_childAssertions objectForKey:*(*(&v18 + 1) + 8 * v7)];
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
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

                [*(*(&v14 + 1) + 8 * v12++) invalidate];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v10);
          }

          ++v7;
        }

        while (v7 != v5);
        v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v13 = [(SBHIconLayoutHidingCompoundAssertion *)self invalidationHandler];
    [v13 layoutHidingCompoundAssertionDidInvalidate:self];

    [(SBHIconLayoutHidingCompoundAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBHIconLayoutHidingCompoundAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconLayoutHidingCompoundAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconLayoutHidingCompoundAssertion *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_childAssertions withName:@"childAssertions"];
  v6 = [(SBHIconLayoutHidingCompoundAssertion *)self reason];
  v7 = [v4 appendObject:v6 withName:@"reason"];

  v8 = [v4 appendUnsignedInteger:-[SBHIconLayoutHidingCompoundAssertion options](self withName:"options") format:{@"options", 1}];
  v9 = [(SBHIconLayoutHidingCompoundAssertion *)self invalidationHandler];
  v10 = [v4 appendPointer:v9 withName:@"invalidationHandler"];

  return v4;
}

@end