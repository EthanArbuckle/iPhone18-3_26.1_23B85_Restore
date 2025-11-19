@interface UISUISecurityContext
- (UISUISecurityContext)initWithCoder:(id)a3;
- (UISUISecurityContext)initWithSecurityScopedResources:(id)a3;
- (id)accessibleURLs;
- (id)description;
- (id)securityScopedResourcesMatchingPredicate:(id)a3;
- (void)activate;
- (void)deactivate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISUISecurityContext

- (UISUISecurityContext)initWithSecurityScopedResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UISUISecurityContext;
  v6 = [(UISUISecurityContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_securityScopedResources, a3);
    v7->_activationCount = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UISUISecurityContext *)self isActive];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p> active = %@, resources = %@", v4, self, v6, self->_securityScopedResources];
}

- (id)securityScopedResourcesMatchingPredicate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(UISUISecurityContext *)self securityScopedResources];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__UISUISecurityContext_securityScopedResourcesMatchingPredicate___block_invoke;
    v11[3] = &unk_1E71FAEE0;
    v13 = v4;
    v7 = v5;
    v12 = v7;
    [v6 enumerateObjectsUsingBlock:v11];

    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = [(UISUISecurityContext *)self securityScopedResources];
  }

  return v9;
}

void __65__UISUISecurityContext_securityScopedResourcesMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (UISUISecurityContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_securityScopedResources);
  v9 = [v5 decodeObjectOfClasses:v7 forKey:v8];

  v10 = [(UISUISecurityContext *)self initWithSecurityScopedResources:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  securityScopedResources = self->_securityScopedResources;
  v4 = a3;
  v5 = NSStringFromSelector(sel_securityScopedResources);
  [v4 encodeObject:securityScopedResources forKey:v5];
}

- (void)activate
{
  v18 = *MEMORY[0x1E69E9840];
  activationCount = self->_activationCount;
  self->_activationCount = activationCount + 1;
  if (!activationCount)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    URLsBeingAccessed = self->_URLsBeingAccessed;
    self->_URLsBeingAccessed = v4;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_securityScopedResources;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 startAccessing])
          {
            v12 = [v11 url];
            if (v12)
            {
              [(NSMutableArray *)self->_URLsBeingAccessed addObject:v12];
            }
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)deactivate
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self->_activationCount - 1;
  self->_activationCount = v2;
  if (!v2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_securityScopedResources;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) stopAccessing];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    URLsBeingAccessed = self->_URLsBeingAccessed;
    self->_URLsBeingAccessed = 0;
  }
}

- (id)accessibleURLs
{
  v2 = [(NSMutableArray *)self->_URLsBeingAccessed copy];

  return v2;
}

@end