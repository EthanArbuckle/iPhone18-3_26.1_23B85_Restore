@interface SSVBarrierOperationQueue
- (void)addBarrierOperation:(id)operation;
- (void)addOperation:(id)operation;
- (void)addOperationWithBlock:(id)block;
- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished;
@end

@implementation SSVBarrierOperationQueue

- (void)addOperation:(id)operation
{
  v21 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  isSuspended = [(SSVBarrierOperationQueue *)self isSuspended];
  [(SSVBarrierOperationQueue *)self setSuspended:1];
  [(SSVBarrierOperationQueue *)self operations];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = v19 = 0u;
  reverseObjectEnumerator = [v13 reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_getAssociatedObject(v10, _SSVBarrierOperationQueueAssociatedObjectKeyIsBarrierOperation);
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          [operationCopy addDependency:v10];
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15.receiver = self;
  v15.super_class = SSVBarrierOperationQueue;
  [(SSVBarrierOperationQueue *)&v15 addOperation:operationCopy];
  [(SSVBarrierOperationQueue *)self setSuspended:isSuspended];
}

- (void)addOperationWithBlock:(id)block
{
  v4 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:block];
  [(SSVBarrierOperationQueue *)self addOperation:v4];
}

- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  v34 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  isSuspended = [(SSVBarrierOperationQueue *)self isSuspended];
  [(SSVBarrierOperationQueue *)self setSuspended:1];
  selfCopy = self;
  [(SSVBarrierOperationQueue *)self operations];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v31 = 0u;
  reverseObjectEnumerator = [v18 reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = objc_getAssociatedObject(v10, _SSVBarrierOperationQueueAssociatedObjectKeyIsBarrierOperation);
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = operationsCopy;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(&v24 + 1) + 8 * j) addDependency:v10];
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v23.receiver = selfCopy;
  v23.super_class = SSVBarrierOperationQueue;
  [(SSVBarrierOperationQueue *)&v23 addOperations:operationsCopy waitUntilFinished:finishedCopy];
  [(SSVBarrierOperationQueue *)selfCopy setSuspended:isSuspended];
}

- (void)addBarrierOperation:(id)operation
{
  v17 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  isSuspended = [(SSVBarrierOperationQueue *)self isSuspended];
  [(SSVBarrierOperationQueue *)self setSuspended:1];
  operations = [(SSVBarrierOperationQueue *)self operations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(operations);
        }

        [operationCopy addDependency:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  objc_setAssociatedObject(operationCopy, _SSVBarrierOperationQueueAssociatedObjectKeyIsBarrierOperation, MEMORY[0x1E695E118], 1);
  v11.receiver = self;
  v11.super_class = SSVBarrierOperationQueue;
  [(SSVBarrierOperationQueue *)&v11 addOperation:operationCopy];
  [(SSVBarrierOperationQueue *)self setSuspended:isSuspended];
}

@end