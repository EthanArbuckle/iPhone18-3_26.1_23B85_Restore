@interface PXDataSectionArrayController
- (NSArray)transformedObjects;
- (PXDataSectionArrayController)initWithDataSectionManager:(id)a3 transformerClass:(Class)a4;
- (PXDataSectionArrayControllerDelegate)delegate;
- (id)_associatedObjectForTransformedObject:(id)a3;
- (id)auxiliaryObjectForTransformedObject:(id)a3 key:(id)a4;
- (id)dataSectionObjectForTransformedObject:(id)a3;
- (id)dataSectionObjectsWithIdentifiers:(id)a3;
- (void)_updateTransformedObjects;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)startBackgroundFetchingIfNeeded;
@end

@implementation PXDataSectionArrayController

- (PXDataSectionArrayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_associatedObjectForTransformedObject:(id)a3
{
  v4 = a3;
  v5 = [(PXDataSectionArrayController *)self delegate];
  v6 = [v5 dataSectionArrayController:self associatedObjectForTransformedObject:v4];

  return v6;
}

- (void)_updateTransformedObjects
{
  v43 = *MEMORY[0x1E69E9840];
  v34 = [(PXDataSectionArrayController *)self dataSectionManager];
  v29 = [v34 dataSection];
  v28 = [(PXDataSectionArrayController *)self transformerClass];
  v27 = [(PXDataSectionArrayController *)self transformedObjectsByIdentifier];
  v24 = [(PXDataSectionArrayController *)self auxiliaryObjectsByIdentifier];
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXDataSection count](v29, "count")}];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [v27 allKeys];
  v25 = [v2 mutableCopy];

  objc_initWeak(&location, self);
  for (i = 0; i < [(PXDataSection *)v29 count]; ++i)
  {
    v3 = [(PXDataSection *)v29 objectAtIndex:?];
    v32 = [(objc_class *)v28 identifierForDataSectionObject:v3];
    v4 = [v27 objectForKeyedSubscript:?];
    if (v4)
    {
      [(objc_class *)v28 updateTransformedObject:v4 forDataSectionObject:v3];
      [v25 removeObject:v32];
      v30 = v4;
      v5 = [v24 objectForKeyedSubscript:v32];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v6 = [v5 allKeys];
      v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v7)
      {
        v33 = 0;
        v8 = *v38;
        do
        {
          for (j = 0; j != v7; ++j)
          {
            if (*v38 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v37 + 1) + 8 * j);
            v11 = [v5 objectForKeyedSubscript:v10];
            v12 = [v34 auxiliaryObjectForKey:v10 dataSectionObject:v3 hintIndex:0x7FFFFFFFFFFFFFFFLL];
            v13 = v11;
            v14 = v12;
            v15 = v14;
            if (v13 == v14)
            {
            }

            else
            {
              v16 = [v13 isEqual:v14];

              if ((v16 & 1) == 0)
              {
                [v5 setObject:v15 forKeyedSubscript:v10];
                v33 = 1;
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v7);

        if (v33)
        {
          [(NSArray *)v23 addObject:v30];
        }
      }

      else
      {
      }
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __57__PXDataSectionArrayController__updateTransformedObjects__block_invoke;
      v35[3] = &unk_1E7745428;
      objc_copyWeak(&v36, &location);
      v30 = [(objc_class *)v28 createTransformedObjectForDataSectionObject:v3 associatedObjectProvider:v35];
      [v27 setObject:? forKeyedSubscript:?];
      objc_destroyWeak(&v36);
    }

    [(NSArray *)v26 addObject:v30];
  }

  [v27 removeObjectsForKeys:v25];
  [v24 removeObjectsForKeys:v25];
  transformedObjects = self->_transformedObjects;
  self->_transformedObjects = v26;
  v18 = v26;

  transformedObjectsWithUpdatedAuxiliaryObjects = self->_transformedObjectsWithUpdatedAuxiliaryObjects;
  self->_transformedObjectsWithUpdatedAuxiliaryObjects = v23;
  v20 = v23;

  currentDataSection = self->_currentDataSection;
  self->_currentDataSection = v29;

  objc_destroyWeak(&location);
}

id __57__PXDataSectionArrayController__updateTransformedObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _associatedObjectForTransformedObject:v3];

  return v5;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (DataSectionManagerObservationContext != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXDataSectionArrayController.m" lineNumber:101 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v14 = v9;
    [(PXDataSectionArrayController *)self _updateTransformedObjects];
    v10 = [(PXDataSectionArrayController *)self delegate];
    [v10 dataSectionArrayControllerDidUpdateTransformedObjects:self];

    v11 = [(PXDataSectionArrayController *)self transformedObjectsWithUpdatedAuxiliaryObjects];
    if ([v11 count])
    {
      v12 = [(PXDataSectionArrayController *)self delegate];
      [v12 dataSectionArrayController:self didUpdateAuxiliaryObjectForTransformedObjects:v11];
    }

    v9 = v14;
  }
}

- (id)auxiliaryObjectForTransformedObject:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = [(PXDataSectionArrayController *)self dataSectionObjectForTransformedObject:a3];
  if (v7)
  {
    v8 = [(PXDataSectionArrayController *)self dataSectionManager];
    v9 = [v8 auxiliaryObjectForKey:v6 dataSectionObject:v7 hintIndex:0x7FFFFFFFFFFFFFFFLL];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v12 = v11;

    v13 = [(objc_class *)[(PXDataSectionArrayController *)self transformerClass] identifierForDataSectionObject:v7];
    v14 = [(PXDataSectionArrayController *)self auxiliaryObjectsByIdentifier];
    v15 = [v14 objectForKeyedSubscript:v13];

    if (!v15)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      v16 = [(PXDataSectionArrayController *)self auxiliaryObjectsByIdentifier];
      [v16 setObject:v15 forKeyedSubscript:v13];
    }

    [v15 setObject:v12 forKeyedSubscript:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dataSectionObjectForTransformedObject:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)[(PXDataSectionArrayController *)self transformerClass] dataSectionObjectForTransformedObject:v4];

  return v5;
}

- (id)dataSectionObjectsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PXDataSectionArrayController *)self currentDataSection];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndex:v7];
      v9 = [(objc_class *)[(PXDataSectionArrayController *)self transformerClass] identifierForDataSectionObject:v8];
      [v6 setObject:v8 forKeyedSubscript:v9];

      ++v7;
    }

    while (v7 < [v5 count]);
  }

  v10 = v6;
  PXMap();
}

- (void)startBackgroundFetchingIfNeeded
{
  v2 = [(PXDataSectionArrayController *)self dataSectionManager];
  [v2 startBackgroundFetchingIfNeeded];
}

- (NSArray)transformedObjects
{
  transformedObjects = self->_transformedObjects;
  if (!transformedObjects)
  {
    v4 = [(PXDataSectionArrayController *)self dataSectionManager];
    [v4 registerChangeObserver:self context:DataSectionManagerObservationContext];

    [(PXDataSectionArrayController *)self _updateTransformedObjects];
    transformedObjects = self->_transformedObjects;
  }

  return transformedObjects;
}

- (PXDataSectionArrayController)initWithDataSectionManager:(id)a3 transformerClass:(Class)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = PXDataSectionArrayController;
  v8 = [(PXDataSectionArrayController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dataSectionManager, a3);
    objc_storeStrong(&v9->_transformerClass, a4);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transformedObjectsByIdentifier = v9->_transformedObjectsByIdentifier;
    v9->_transformedObjectsByIdentifier = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    auxiliaryObjectsByIdentifier = v9->_auxiliaryObjectsByIdentifier;
    v9->_auxiliaryObjectsByIdentifier = v12;
  }

  return v9;
}

@end