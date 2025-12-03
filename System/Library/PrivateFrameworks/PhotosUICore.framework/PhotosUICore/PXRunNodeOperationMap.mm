@interface PXRunNodeOperationMap
- (PXRunNodeOperationMap)init;
- (id)operationForRunNode:(id)node;
@end

@implementation PXRunNodeOperationMap

- (id)operationForRunNode:(id)node
{
  v20 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  newOperation = [(NSMapTable *)self->_operationMap objectForKey:nodeCopy];
  if (!newOperation)
  {
    newOperation = [nodeCopy newOperation];
    if (!newOperation)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXNodeRunner.m" lineNumber:117 description:{@"Attempt to process run node that's already being processed: %@", nodeCopy}];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    dependencies = [nodeCopy dependencies];
    v8 = [dependencies countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(dependencies);
          }

          v12 = [(PXRunNodeOperationMap *)self operationForRunNode:*(*(&v15 + 1) + 8 * i)];
          [newOperation addDependency:v12];
        }

        v9 = [dependencies countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [(NSMapTable *)self->_operationMap setObject:newOperation forKey:nodeCopy];
  }

  return newOperation;
}

- (PXRunNodeOperationMap)init
{
  v6.receiver = self;
  v6.super_class = PXRunNodeOperationMap;
  v2 = [(PXRunNodeOperationMap *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    operationMap = v2->_operationMap;
    v2->_operationMap = strongToStrongObjectsMapTable;
  }

  return v2;
}

@end