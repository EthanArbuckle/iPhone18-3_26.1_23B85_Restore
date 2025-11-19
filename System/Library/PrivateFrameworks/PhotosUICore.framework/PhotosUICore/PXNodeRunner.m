@interface PXNodeRunner
- (PXNodeRunner)init;
- (void)_processRunGraph:(id)a3;
- (void)processGraphForRunNode:(id)a3;
@end

@implementation PXNodeRunner

- (void)processGraphForRunNode:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithObject:a3];
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
      v7 = [v6 dependencies];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(v7);
            }

            [v4 addObject:*(*(&v14 + 1) + 8 * v11++)];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      ++v5;
    }

    while ([v4 count] > v5);
  }

  v12 = [v4 reversedOrderedSet];
  v13 = [v12 array];

  [(PXNodeRunner *)self _processRunGraph:v13];
}

- (void)_processRunGraph:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(PXRunNodeOperationMap);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
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