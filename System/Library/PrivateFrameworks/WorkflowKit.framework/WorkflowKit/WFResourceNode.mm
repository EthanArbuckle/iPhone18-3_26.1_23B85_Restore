@interface WFResourceNode
+ (id)nodesWithDefinitions:(id)definitions;
- (NSString)description;
- (WFResourceNode)initWithDefinition:(id)definition;
- (WFResourceNode)initWithResource:(id)resource subnodes:(id)subnodes;
- (WFResourceNodeDelegate)delegate;
- (id)resourceObjectsConformingToProtocol:(id)protocol;
- (id)resourceObjectsOfClass:(Class)class;
- (id)resourceObjectsOfClasses:(id)classes;
- (void)addResourceObjectsOfClassesOrProtocols:(id)protocols toSet:(id)set;
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
  resource = [(WFResourceNode *)self resource];
  subnodes = [(WFResourceNode *)self subnodes];
  v8 = [v3 stringWithFormat:@"<%@: %p, resource: %@, subnodes count: %lu>", v5, self, resource, objc_msgSend(subnodes, "count")];

  return v8;
}

- (void)addResourceObjectsOfClassesOrProtocols:(id)protocols toSet:(id)set
{
  v35 = *MEMORY[0x1E69E9840];
  protocolsCopy = protocols;
  setCopy = set;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [protocolsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(protocolsCopy);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        isClass = object_isClass(v12);
        resource = [(WFResourceNode *)self resource];
        v15 = resource;
        if (!isClass)
        {
          v17 = [resource conformsToProtocol:v12];

          if (!v17)
          {
            continue;
          }

LABEL_10:
          resource2 = [(WFResourceNode *)self resource];
          [setCopy addObject:resource2];

          continue;
        }

        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_10;
        }
      }

      v9 = [protocolsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  subnodes = [(WFResourceNode *)self subnodes];
  v20 = [subnodes countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(subnodes);
        }

        [*(*(&v25 + 1) + 8 * j) addResourceObjectsOfClassesOrProtocols:protocolsCopy toSet:setCopy];
      }

      v21 = [subnodes countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)resourceObjectsOfClasses:(id)classes
{
  classesCopy = classes;
  v5 = objc_opt_new();
  if ([classesCopy anyObject])
  {
    [(WFResourceNode *)self addResourceObjectsOfClassesOrProtocols:classesCopy toSet:v5];
  }

  return v5;
}

- (id)resourceObjectsConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFD8] setWithObject:protocolCopy];

  [(WFResourceNode *)self addResourceObjectsOfClassesOrProtocols:v6 toSet:v5];

  return v5;
}

- (id)resourceObjectsOfClass:(Class)class
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:class];
  v5 = [(WFResourceNode *)self resourceObjectsOfClasses:v4];

  return v5;
}

- (void)refreshAvailability
{
  subnodes = [(WFResourceNode *)self subnodes];
  [subnodes makeObjectsPerformSelector:sel_refreshAvailability];

  resource = [(WFResourceNode *)self resource];
  [resource refreshAvailabilityWithNotification];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"WFResourceAvailabilityChangedNotification" object:self->_resource];

  v4.receiver = self;
  v4.super_class = WFResourceNode;
  [(WFResourceNode *)&v4 dealloc];
}

- (void)resourceUpdated
{
  delegate = [(WFResourceNode *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFResourceNode *)self delegate];
    [delegate2 resourceNodeAvailabilityChanged:self];
  }
}

- (WFResourceNode)initWithResource:(id)resource subnodes:(id)subnodes
{
  resourceCopy = resource;
  subnodesCopy = subnodes;
  v16.receiver = self;
  v16.super_class = WFResourceNode;
  v9 = [(WFResourceNode *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, resource);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_resourceUpdated name:@"WFResourceAvailabilityChangedNotification" object:v10->_resource];

    v12 = [subnodesCopy copy];
    subnodes = v10->_subnodes;
    v10->_subnodes = v12;

    [(NSArray *)v10->_subnodes makeObjectsPerformSelector:sel_setDelegate_ withObject:v10];
    v14 = v10;
  }

  return v10;
}

- (WFResourceNode)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [definitionCopy objectForKey:@"WFResourceClass"];
  v6 = NSClassFromString(v5);

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    if ([(objc_class *)v6 isSingleton])
    {
      sharedInstance = [(objc_class *)v6 sharedInstance];
    }

    else
    {
      sharedInstance = [[v6 alloc] initWithDefinition:definitionCopy];
    }

    v9 = sharedInstance;
    v10 = objc_opt_class();
    v11 = [definitionCopy objectForKey:@"RequiredResources"];
    v12 = [v10 nodesWithDefinitions:v11];

    self = [(WFResourceNode *)self initWithResource:v9 subnodes:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)nodesWithDefinitions:(id)definitions
{
  v25 = *MEMORY[0x1E69E9840];
  definitionsCopy = definitions;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = definitionsCopy;
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