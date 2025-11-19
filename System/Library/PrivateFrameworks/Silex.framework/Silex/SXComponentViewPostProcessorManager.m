@interface SXComponentViewPostProcessorManager
- (SXComponentViewPostProcessorManager)init;
- (void)addProcessor:(id)a3;
- (void)processComponent:(id)a3 view:(id)a4;
- (void)removeProcessor:(id)a3;
@end

@implementation SXComponentViewPostProcessorManager

- (SXComponentViewPostProcessorManager)init
{
  v6.receiver = self;
  v6.super_class = SXComponentViewPostProcessorManager;
  v2 = [(SXComponentViewPostProcessorManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    processors = v2->_processors;
    v2->_processors = v3;
  }

  return v2;
}

- (void)processComponent:(id)a3 view:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(SXComponentViewPostProcessorManager *)self processors];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) processComponent:v6 view:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addProcessor:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(SXComponentViewPostProcessorManager *)self processors];
    v5 = [v4 containsObject:v7];

    if ((v5 & 1) == 0)
    {
      v6 = [(SXComponentViewPostProcessorManager *)self processors];
      [v6 addObject:v7];
    }
  }
}

- (void)removeProcessor:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentViewPostProcessorManager *)self processors];
    [v5 removeObject:v4];
  }
}

@end