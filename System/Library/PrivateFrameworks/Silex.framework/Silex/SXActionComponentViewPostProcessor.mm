@interface SXActionComponentViewPostProcessor
- (SXActionComponentViewPostProcessor)initWithActionProvider:(id)a3 interactionHandlerFactory:(id)a4 interactionHandlerManager:(id)a5;
- (void)processComponent:(id)a3 view:(id)a4;
@end

@implementation SXActionComponentViewPostProcessor

- (SXActionComponentViewPostProcessor)initWithActionProvider:(id)a3 interactionHandlerFactory:(id)a4 interactionHandlerManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXActionComponentViewPostProcessor;
  v12 = [(SXActionComponentViewPostProcessor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionProvider, a3);
    objc_storeStrong(&v13->_factory, a4);
    objc_storeStrong(&v13->_interactionHandlerManager, a5);
  }

  return v13;
}

- (void)processComponent:(id)a3 view:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [a3 additions];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 range] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [(SXActionComponentViewPostProcessor *)self actionProvider];
          v14 = [v13 actionForAddition:v12];

          if (v14)
          {
            v15 = [(SXActionComponentViewPostProcessor *)self factory];
            v16 = [v15 interactionHandlerForAction:v14];

            v17 = [(SXActionComponentViewPostProcessor *)self interactionHandlerManager];
            [v17 addInteractionHandler:v16 componentView:v6 types:10];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

@end