@interface UISUISecurityContext
- (UISUISecurityContext)initWithCoder:(id)coder;
- (UISUISecurityContext)initWithSecurityScopedResources:(id)resources;
- (id)accessibleURLs;
- (id)description;
- (id)securityScopedResourcesMatchingPredicate:(id)predicate;
- (void)activate;
- (void)deactivate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISUISecurityContext

- (UISUISecurityContext)initWithSecurityScopedResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = UISUISecurityContext;
  v6 = [(UISUISecurityContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_securityScopedResources, resources);
    v7->_activationCount = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  isActive = [(UISUISecurityContext *)self isActive];
  v6 = @"NO";
  if (isActive)
  {
    v6 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p> active = %@, resources = %@", v4, self, v6, self->_securityScopedResources];
}

- (id)securityScopedResourcesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    securityScopedResources = [(UISUISecurityContext *)self securityScopedResources];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__UISUISecurityContext_securityScopedResourcesMatchingPredicate___block_invoke;
    v11[3] = &unk_1E71FAEE0;
    v13 = predicateCopy;
    v7 = array;
    v12 = v7;
    [securityScopedResources enumerateObjectsUsingBlock:v11];

    v8 = v12;
    securityScopedResources2 = v7;
  }

  else
  {
    securityScopedResources2 = [(UISUISecurityContext *)self securityScopedResources];
  }

  return securityScopedResources2;
}

void __65__UISUISecurityContext_securityScopedResourcesMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (UISUISecurityContext)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_securityScopedResources);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  v10 = [(UISUISecurityContext *)self initWithSecurityScopedResources:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  securityScopedResources = self->_securityScopedResources;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_securityScopedResources);
  [coderCopy encodeObject:securityScopedResources forKey:v5];
}

- (void)activate
{
  v18 = *MEMORY[0x1E69E9840];
  activationCount = self->_activationCount;
  self->_activationCount = activationCount + 1;
  if (!activationCount)
  {
    array = [MEMORY[0x1E695DF70] array];
    URLsBeingAccessed = self->_URLsBeingAccessed;
    self->_URLsBeingAccessed = array;

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