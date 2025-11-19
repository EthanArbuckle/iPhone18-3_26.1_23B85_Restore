@interface WFResourceNode
+ (id)nodesWithDefinitions:(id)a3;
- (NSString)description;
- (WFResourceNode)initWithDefinition:(id)a3;
- (WFResourceNode)initWithResource:(id)a3 subnodes:(id)a4;
- (WFResourceNodeDelegate)delegate;
- (id)resourceObjectsConformingToProtocol:(id)a3;
- (id)resourceObjectsOfClass:(Class)a3;
- (id)resourceObjectsOfClasses:(id)a3;
- (void)addResourceObjectsOfClassesOrProtocols:(id)a3 toSet:(id)a4;
- (void)dealloc;
- (void)refreshAvailability;
- (void)resourceUpdated;
@end

@implementation WFResourceNode

- (WFResourceNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFResourceNode *)self resource];
  v7 = [(WFResourceNode *)self subnodes];
  v8 = [v3 stringWithFormat:@"<%@: %p, resource: %@, subnodes count: %lu>", v5, self, v6, objc_msgSend(v7, "count")];

  return v8;
}

- (void)addResourceObjectsOfClassesOrProtocols:(id)a3 toSet:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        isClass = object_isClass(v12);
        v14 = [(WFResourceNode *)self resource];
        v15 = v14;
        if (!isClass)
        {
          v17 = [v14 conformsToProtocol:v12];

          if (!v17)
          {
            continue;
          }

LABEL_10:
          v18 = [(WFResourceNode *)self resource];
          [v7 addObject:v18];

          continue;
        }

        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_10;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = [(WFResourceNode *)self subnodes];
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v25 + 1) + 8 * j) addResourceObjectsOfClassesOrProtocols:v6 toSet:v7];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)resourceObjectsOfClasses:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 anyObject])
  {
    [(WFResourceNode *)self addResourceObjectsOfClassesOrProtocols:v4 toSet:v5];
  }

  return v5;
}

- (id)resourceObjectsConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v4];

  [(WFResourceNode *)self addResourceObjectsOfClassesOrProtocols:v6 toSet:v5];

  return v5;
}

- (id)resourceObjectsOfClass:(Class)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(WFResourceNode *)self resourceObjectsOfClasses:v4];

  return v5;
}

- (void)refreshAvailability
{
  v3 = [(WFResourceNode *)self subnodes];
  [v3 makeObjectsPerformSelector:sel_refreshAvailability];

  v4 = [(WFResourceNode *)self resource];
  [v4 refreshAvailabilityWithNotification];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"WFResourceAvailabilityChangedNotification" object:self->_resource];

  v4.receiver = self;
  v4.super_class = WFResourceNode;
  [(WFResourceNode *)&v4 dealloc];
}

- (void)resourceUpdated
{
  v3 = [(WFResourceNode *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFResourceNode *)self delegate];
    [v5 resourceNodeAvailabilityChanged:self];
  }
}

- (WFResourceNode)initWithResource:(id)a3 subnodes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WFResourceNode;
  v9 = [(WFResourceNode *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, a3);
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v10 selector:sel_resourceUpdated name:@"WFResourceAvailabilityChangedNotification" object:v10->_resource];

    v12 = [v8 copy];
    subnodes = v10->_subnodes;
    v10->_subnodes = v12;

    [(NSArray *)v10->_subnodes makeObjectsPerformSelector:sel_setDelegate_ withObject:v10];
    v14 = v10;
  }

  return v10;
}

- (WFResourceNode)initWithDefinition:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"WFResourceClass"];
  v6 = NSClassFromString(v5);

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    if ([(objc_class *)v6 isSingleton])
    {
      v7 = [(objc_class *)v6 sharedInstance];
    }

    else
    {
      v7 = [[v6 alloc] initWithDefinition:v4];
    }

    v9 = v7;
    v10 = objc_opt_class();
    v11 = [v4 objectForKey:@"RequiredResources"];
    v12 = [v10 nodesWithDefinitions:v11];

    self = [(WFResourceNode *)self initWithResource:v9 subnodes:v12];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)nodesWithDefinitions:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[WFResourceNode alloc] initWithResource:v11 subnodes:v9];
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
LABEL_10:
          v13 = v12;
          if (!v12)
          {
            goto LABEL_21;
          }

LABEL_11:
          [v4 addObject:{v13, v18}];
          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
        {
          v22 = @"WFResourceClass";
          v23 = v11;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          v14 = v11;
        }

        v15 = v14;
        if (!v14)
        {
LABEL_20:
          v13 = 0;
          goto LABEL_21;
        }

        v13 = [[WFResourceNode alloc] initWithDefinition:v14];

        if (v13)
        {
          goto LABEL_11;
        }

LABEL_21:
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end