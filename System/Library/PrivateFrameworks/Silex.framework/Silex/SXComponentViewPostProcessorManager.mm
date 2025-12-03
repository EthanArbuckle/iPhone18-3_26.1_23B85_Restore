@interface SXComponentViewPostProcessorManager
- (SXComponentViewPostProcessorManager)init;
- (void)addProcessor:(id)processor;
- (void)processComponent:(id)component view:(id)view;
- (void)removeProcessor:(id)processor;
@end

@implementation SXComponentViewPostProcessorManager

- (SXComponentViewPostProcessorManager)init
{
  v6.receiver = self;
  v6.super_class = SXComponentViewPostProcessorManager;
  v2 = [(SXComponentViewPostProcessorManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    processors = v2->_processors;
    v2->_processors = array;
  }

  return v2;
}

- (void)processComponent:(id)component view:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  viewCopy = view;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  processors = [(SXComponentViewPostProcessorManager *)self processors];
  v9 = [processors countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(processors);
        }

        [*(*(&v13 + 1) + 8 * v12++) processComponent:componentCopy view:viewCopy];
      }

      while (v10 != v12);
      v10 = [processors countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addProcessor:(id)processor
{
  processorCopy = processor;
  if (processorCopy)
  {
    processors = [(SXComponentViewPostProcessorManager *)self processors];
    v5 = [processors containsObject:processorCopy];

    if ((v5 & 1) == 0)
    {
      processors2 = [(SXComponentViewPostProcessorManager *)self processors];
      [processors2 addObject:processorCopy];
    }
  }
}

- (void)removeProcessor:(id)processor
{
  if (processor)
  {
    processorCopy = processor;
    processors = [(SXComponentViewPostProcessorManager *)self processors];
    [processors removeObject:processorCopy];
  }
}

@end