@interface PXNodeRunner
- (PXNodeRunner)init;
- (void)_processRunGraph:(id)graph;
- (void)processGraphForRunNode:(id)node;
@end

@implementation PXNodeRunner

- (void)processGraphForRunNode:(id)node
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithObject:node];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      dependencies = [v6 dependencies];
      v8 = [dependencies countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(dependencies);
            }

            [v4 addObject:*(*(&v14 + 1) + 8 * v11++)];
          }

          while (v9 != v11);
          v9 = [dependencies countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      ++v5;
    }

    while ([v4 count] > v5);
  }

  reversedOrderedSet = [v4 reversedOrderedSet];
  array = [reversedOrderedSet array];

  [(PXNodeRunner *)self _processRunGraph:array];
}

- (void)_processRunGraph:(id)graph
{
  v18 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  v5 = objc_alloc_init(PXRunNodeOperationMap);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(graphCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = graphCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PXRunNodeOperationMap *)v5 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v11), v13];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSOperationQueue *)self->_operationQueue addOperations:v6 waitUntilFinished:0];
}

- (PXNodeRunner)init
{
  v6.receiver = self;
  v6.super_class = PXNodeRunner;
  v2 = [(PXNodeRunner *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
  }

  return v2;
}

@end