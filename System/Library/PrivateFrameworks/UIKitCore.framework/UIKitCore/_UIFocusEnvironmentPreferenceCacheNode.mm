@interface _UIFocusEnvironmentPreferenceCacheNode
- (_UIFocusEnvironmentPreferenceCacheNode)initWithEnvironment:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)_reevaluateResolution;
- (void)_resolve:(id)a3 explicitly:(BOOL)a4;
- (void)_unresolve;
- (void)setChildNodes:(id)a3;
@end

@implementation _UIFocusEnvironmentPreferenceCacheNode

- (_UIFocusEnvironmentPreferenceCacheNode)initWithEnvironment:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UIFocusEnvironmentPreferenceCacheNode;
  v6 = [(_UIFocusEnvironmentPreferenceCacheNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, a3);
    v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:514];
    parentNodes = v7->_parentNodes;
    v7->_parentNodes = v8;
  }

  return v7;
}

- (void)_reevaluateResolution
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) == 0)
  {
    v3 = [(_UIFocusEnvironmentPreferenceCacheNode *)self childNodes];
    if (v3 && (v4 = v3, -[_UIFocusEnvironmentPreferenceCacheNode childNodes](self, "childNodes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [(_UIFocusEnvironmentPreferenceCacheNode *)self childNodes];
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            if (![v12 isResolved])
            {
              [(_UIFocusEnvironmentPreferenceCacheNode *)self _unresolve];
              goto LABEL_20;
            }

            v13 = [v12 resolvedEnvironment];
            if (v13)
            {
              v14 = v13;
              goto LABEL_19;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_19:

      [(_UIFocusEnvironmentPreferenceCacheNode *)self _resolve:v14 explicitly:0];
      v7 = v14;
LABEL_20:
    }

    else
    {

      [(_UIFocusEnvironmentPreferenceCacheNode *)self _unresolve];
    }
  }
}

- (void)_resolve:(id)a3 explicitly:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  flags = self->_flags;
  if ((flags & 2) == 0 || v4)
  {
    if ((*&self->_flags & 1) != 0 && self->_resolvedEnvironment == v7)
    {
      if (v4 | ((flags & 2) >> 1))
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      *&self->_flags = v17 | flags & 0xFD;
    }

    else
    {
      v10 = flags & 0xFC;
      if (v4)
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }

      *&self->_flags = v10 | v11;
      objc_storeStrong(&self->_resolvedEnvironment, a3);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = self->_parentNodes;
      v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v18 + 1) + 8 * i) _reevaluateResolution];
          }

          v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)_unresolve
{
  v15 = *MEMORY[0x1E69E9840];
  flags = self->_flags;
  if ((flags & 3) == 1)
  {
    *&self->_flags = flags & 0xFC;
    resolvedEnvironment = self->_resolvedEnvironment;
    self->_resolvedEnvironment = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_parentNodes;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v9++) _reevaluateResolution];
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setChildNodes:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(_UIFocusEnvironmentPreferenceCacheNode *)self childNodes];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(*(&v21 + 1) + 8 * v9++) + 8) removeObject:self];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];
  childNodes = self->_childNodes;
  self->_childNodes = v10;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(*(&v17 + 1) + 8 * v16++) + 8) addObject:{self, v17}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  [(_UIFocusEnvironmentPreferenceCacheNode *)self _reevaluateResolution];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  environment = self->_environment;
  if (environment)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = environment;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v3 appendObject:v9 withName:@"environment"];

  v11 = [v3 appendUnsignedInteger:-[NSHashTable count](self->_parentNodes withName:{"count"), @"parentNodes"}];
  v12 = [v3 appendUnsignedInteger:-[NSArray count](self->_childNodes withName:{"count"), @"childNodes"}];
  v13 = [v3 build];

  return v13;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  environment = self->_environment;
  if (environment)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = environment;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v3 appendObject:v9 withName:@"environment"];

  v11 = [v3 appendObject:self->_parentNodes withName:@"parentNodes"];
  v12 = [v3 appendObject:self->_childNodes withName:@"childNodes"];
  v13 = [v3 build];

  return v13;
}

@end