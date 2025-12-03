@interface SBHIconLayoutHidingCompoundAssertion
- (NSArray)icons;
- (SBHIconLayoutHidingCompoundAssertion)initWithInvalidationHandler:(id)handler icons:(id)icons reason:(id)reason options:(unint64_t)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addAssertion:(id)assertion forChild:(id)child;
- (void)addAssertionFromChild:(id)child;
- (void)addIcon:(id)icon;
- (void)dealloc;
- (void)invalidate;
- (void)removeAndInvalidateAssertionsForChild:(id)child;
- (void)setOptions:(unint64_t)options;
@end

@implementation SBHIconLayoutHidingCompoundAssertion

- (SBHIconLayoutHidingCompoundAssertion)initWithInvalidationHandler:(id)handler icons:(id)icons reason:(id)reason options:(unint64_t)options
{
  handlerCopy = handler;
  iconsCopy = icons;
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = SBHIconLayoutHidingCompoundAssertion;
  v14 = [(SBHIconLayoutHidingCompoundAssertion *)&v20 init];
  if (v14)
  {
    v15 = [iconsCopy mutableCopy];
    icons = v14->_icons;
    v14->_icons = v15;

    objc_storeStrong(&v14->_invalidationHandler, handler);
    v17 = [reasonCopy copy];
    reason = v14->_reason;
    v14->_reason = v17;

    v14->_options = options;
  }

  return v14;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBHIconLayoutHidingCompoundAssertion deallocated but not invalidated! Reason: %@", &v3, 0xCu);
}

- (void)addAssertion:(id)assertion forChild:(id)child
{
  assertionCopy = assertion;
  childCopy = child;
  childAssertions = self->_childAssertions;
  if (!childAssertions)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_childAssertions;
    self->_childAssertions = weakToStrongObjectsMapTable;

    childAssertions = self->_childAssertions;
  }

  v10 = [(NSMapTable *)childAssertions objectForKey:childCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMapTable *)self->_childAssertions setObject:v10 forKey:childCopy];
  }

  [v10 addObject:assertionCopy];
}

- (void)addAssertionFromChild:(id)child
{
  childCopy = child;
  icons = [(SBHIconLayoutHidingCompoundAssertion *)self icons];
  reason = [(SBHIconLayoutHidingCompoundAssertion *)self reason];
  v6 = [childCopy beginHidingIconsFromLayout:icons reason:reason options:{-[SBHIconLayoutHidingCompoundAssertion options](self, "options")}];
  if (v6)
  {
    [(SBHIconLayoutHidingCompoundAssertion *)self addAssertion:v6 forChild:childCopy];
  }
}

- (void)removeAndInvalidateAssertionsForChild:(id)child
{
  v15 = *MEMORY[0x1E69E9840];
  childCopy = child;
  v5 = [(NSMapTable *)self->_childAssertions objectForKey:childCopy];
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

  [(NSMapTable *)self->_childAssertions removeObjectForKey:childCopy];
}

- (void)addIcon:(id)icon
{
  v25 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  [(NSMutableArray *)self->_icons addObject:iconCopy];
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

              [*(*(&v15 + 1) + 8 * v14++) addIcon:iconCopy];
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

- (void)setOptions:(unint64_t)options
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_options != options)
  {
    self->_options = options;
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

                [*(*(&v15 + 1) + 8 * v14++) setOptions:options];
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

    invalidationHandler = [(SBHIconLayoutHidingCompoundAssertion *)self invalidationHandler];
    [invalidationHandler layoutHidingCompoundAssertionDidInvalidate:self];

    [(SBHIconLayoutHidingCompoundAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconLayoutHidingCompoundAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconLayoutHidingCompoundAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconLayoutHidingCompoundAssertion *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_childAssertions withName:@"childAssertions"];
  reason = [(SBHIconLayoutHidingCompoundAssertion *)self reason];
  v7 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v8 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHIconLayoutHidingCompoundAssertion options](self withName:"options") format:{@"options", 1}];
  invalidationHandler = [(SBHIconLayoutHidingCompoundAssertion *)self invalidationHandler];
  v10 = [succinctDescriptionBuilder appendPointer:invalidationHandler withName:@"invalidationHandler"];

  return succinctDescriptionBuilder;
}

@end