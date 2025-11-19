@interface SSVBarrierOperationQueue
- (void)addBarrierOperation:(id)a3;
- (void)addOperation:(id)a3;
- (void)addOperationWithBlock:(id)a3;
- (void)addOperations:(id)a3 waitUntilFinished:(BOOL)a4;
@end

@implementation SSVBarrierOperationQueue

- (void)addOperation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = [(SSVBarrierOperationQueue *)self isSuspended];
  [(SSVBarrierOperationQueue *)self setSuspended:1];
  [(SSVBarrierOperationQueue *)self operations];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = v19 = 0u;
  v5 = [v13 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_getAssociatedObject(v10, _SSVBarrierOperationQueueAssociatedObjectKeyIsBarrierOperation);
        v12 = [v11 BOOLValue];

        if (v12)
        {
          [v4 addDependency:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15.receiver = self;
  v15.super_class = SSVBarrierOperationQueue;
  [(SSVBarrierOperationQueue *)&v15 addOperation:v4];
  [(SSVBarrierOperationQueue *)self setSuspended:v14];
}

- (void)addOperationWithBlock:(id)a3
{
  v4 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:a3];
  [(SSVBarrierOperationQueue *)self addOperation:v4];
}

- (void)addOperations:(id)a3 waitUntilFinished:(BOOL)a4
{
  v20 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v19 = [(SSVBarrierOperationQueue *)self isSuspended];
  [(SSVBarrierOperationQueue *)self setSuspended:1];
  v21 = self;
  [(SSVBarrierOperationQueue *)self operations];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v31 = 0u;
  v5 = [v18 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = objc_getAssociatedObject(v10, _SSVBarrierOperationQueueAssociatedObjectKeyIsBarrierOperation);
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = v22;
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

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v23.receiver = v21;
  v23.super_class = SSVBarrierOperationQueue;
  [(SSVBarrierOperationQueue *)&v23 addOperations:v22 waitUntilFinished:v20];
  [(SSVBarrierOperationQueue *)v21 setSuspended:v19];
}

- (void)addBarrierOperation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSVBarrierOperationQueue *)self isSuspended];
  [(SSVBarrierOperationQueue *)self setSuspended:1];
  v6 = [(SSVBarrierOperationQueue *)self operations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v4 addDependency:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  objc_setAssociatedObject(v4, _SSVBarrierOperationQueueAssociatedObjectKeyIsBarrierOperation, MEMORY[0x1E695E118], 1);
  v11.receiver = self;
  v11.super_class = SSVBarrierOperationQueue;
  [(SSVBarrierOperationQueue *)&v11 addOperation:v4];
  [(SSVBarrierOperationQueue *)self setSuspended:v5];
}

@end