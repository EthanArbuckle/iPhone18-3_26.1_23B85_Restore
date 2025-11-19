@interface PXRunNodeOperationMap
- (PXRunNodeOperationMap)init;
- (id)operationForRunNode:(id)a3;
@end

@implementation PXRunNodeOperationMap

- (id)operationForRunNode:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(NSMapTable *)self->_operationMap objectForKey:v5];
  if (!v6)
  {
    v6 = [v5 newOperation];
    if (!v6)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXNodeRunner.m" lineNumber:117 description:{@"Attempt to process run node that's already being processed: %@", v5}];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 dependencies];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(PXRunNodeOperationMap *)self operationForRunNode:*(*(&v15 + 1) + 8 * i)];
          [v6 addDependency:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [(NSMapTable *)self->_operationMap setObject:v6 forKey:v5];
  }

  return v6;
}

- (PXRunNodeOperationMap)init
{
  v6.receiver = self;
  v6.super_class = PXRunNodeOperationMap;
  v2 = [(PXRunNodeOperationMap *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    operationMap = v2->_operationMap;
    v2->_operationMap = v3;
  }

  return v2;
}

@end