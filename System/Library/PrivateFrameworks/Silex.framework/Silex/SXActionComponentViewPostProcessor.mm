@interface SXActionComponentViewPostProcessor
- (SXActionComponentViewPostProcessor)initWithActionProvider:(id)provider interactionHandlerFactory:(id)factory interactionHandlerManager:(id)manager;
- (void)processComponent:(id)component view:(id)view;
@end

@implementation SXActionComponentViewPostProcessor

- (SXActionComponentViewPostProcessor)initWithActionProvider:(id)provider interactionHandlerFactory:(id)factory interactionHandlerManager:(id)manager
{
  providerCopy = provider;
  factoryCopy = factory;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = SXActionComponentViewPostProcessor;
  v12 = [(SXActionComponentViewPostProcessor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionProvider, provider);
    objc_storeStrong(&v13->_factory, factory);
    objc_storeStrong(&v13->_interactionHandlerManager, manager);
  }

  return v13;
}

- (void)processComponent:(id)component view:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  additions = [component additions];
  v8 = [additions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(additions);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 range] == 0x7FFFFFFFFFFFFFFFLL)
        {
          actionProvider = [(SXActionComponentViewPostProcessor *)self actionProvider];
          v14 = [actionProvider actionForAddition:v12];

          if (v14)
          {
            factory = [(SXActionComponentViewPostProcessor *)self factory];
            v16 = [factory interactionHandlerForAction:v14];

            interactionHandlerManager = [(SXActionComponentViewPostProcessor *)self interactionHandlerManager];
            [interactionHandlerManager addInteractionHandler:v16 componentView:viewCopy types:10];
          }
        }
      }

      v9 = [additions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

@end