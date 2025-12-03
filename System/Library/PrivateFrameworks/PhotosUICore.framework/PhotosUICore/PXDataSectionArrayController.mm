@interface PXDataSectionArrayController
- (NSArray)transformedObjects;
- (PXDataSectionArrayController)initWithDataSectionManager:(id)manager transformerClass:(Class)class;
- (PXDataSectionArrayControllerDelegate)delegate;
- (id)_associatedObjectForTransformedObject:(id)object;
- (id)auxiliaryObjectForTransformedObject:(id)object key:(id)key;
- (id)dataSectionObjectForTransformedObject:(id)object;
- (id)dataSectionObjectsWithIdentifiers:(id)identifiers;
- (void)_updateTransformedObjects;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)startBackgroundFetchingIfNeeded;
@end

@implementation PXDataSectionArrayController

- (PXDataSectionArrayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_associatedObjectForTransformedObject:(id)object
{
  objectCopy = object;
  delegate = [(PXDataSectionArrayController *)self delegate];
  v6 = [delegate dataSectionArrayController:self associatedObjectForTransformedObject:objectCopy];

  return v6;
}

- (void)_updateTransformedObjects
{
  v43 = *MEMORY[0x1E69E9840];
  dataSectionManager = [(PXDataSectionArrayController *)self dataSectionManager];
  dataSection = [dataSectionManager dataSection];
  transformerClass = [(PXDataSectionArrayController *)self transformerClass];
  transformedObjectsByIdentifier = [(PXDataSectionArrayController *)self transformedObjectsByIdentifier];
  auxiliaryObjectsByIdentifier = [(PXDataSectionArrayController *)self auxiliaryObjectsByIdentifier];
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXDataSection count](dataSection, "count")}];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allKeys = [transformedObjectsByIdentifier allKeys];
  v25 = [allKeys mutableCopy];

  objc_initWeak(&location, self);
  for (i = 0; i < [(PXDataSection *)dataSection count]; ++i)
  {
    v3 = [(PXDataSection *)dataSection objectAtIndex:?];
    v32 = [(objc_class *)transformerClass identifierForDataSectionObject:v3];
    v4 = [transformedObjectsByIdentifier objectForKeyedSubscript:?];
    if (v4)
    {
      [(objc_class *)transformerClass updateTransformedObject:v4 forDataSectionObject:v3];
      [v25 removeObject:v32];
      v30 = v4;
      v5 = [auxiliaryObjectsByIdentifier objectForKeyedSubscript:v32];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      allKeys2 = [v5 allKeys];
      v7 = [allKeys2 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
              objc_enumerationMutation(allKeys2);
            }

            v10 = *(*(&v37 + 1) + 8 * j);
            v11 = [v5 objectForKeyedSubscript:v10];
            v12 = [dataSectionManager auxiliaryObjectForKey:v10 dataSectionObject:v3 hintIndex:0x7FFFFFFFFFFFFFFFLL];
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

          v7 = [allKeys2 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
      v30 = [(objc_class *)transformerClass createTransformedObjectForDataSectionObject:v3 associatedObjectProvider:v35];
      [transformedObjectsByIdentifier setObject:? forKeyedSubscript:?];
      objc_destroyWeak(&v36);
    }

    [(NSArray *)v26 addObject:v30];
  }

  [transformedObjectsByIdentifier removeObjectsForKeys:v25];
  [auxiliaryObjectsByIdentifier removeObjectsForKeys:v25];
  transformedObjects = self->_transformedObjects;
  self->_transformedObjects = v26;
  v18 = v26;

  transformedObjectsWithUpdatedAuxiliaryObjects = self->_transformedObjectsWithUpdatedAuxiliaryObjects;
  self->_transformedObjectsWithUpdatedAuxiliaryObjects = v23;
  v20 = v23;

  currentDataSection = self->_currentDataSection;
  self->_currentDataSection = dataSection;

  objc_destroyWeak(&location);
}

id __57__PXDataSectionArrayController__updateTransformedObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _associatedObjectForTransformedObject:v3];

  return v5;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (DataSectionManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDataSectionArrayController.m" lineNumber:101 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v14 = observableCopy;
    [(PXDataSectionArrayController *)self _updateTransformedObjects];
    delegate = [(PXDataSectionArrayController *)self delegate];
    [delegate dataSectionArrayControllerDidUpdateTransformedObjects:self];

    transformedObjectsWithUpdatedAuxiliaryObjects = [(PXDataSectionArrayController *)self transformedObjectsWithUpdatedAuxiliaryObjects];
    if ([transformedObjectsWithUpdatedAuxiliaryObjects count])
    {
      delegate2 = [(PXDataSectionArrayController *)self delegate];
      [delegate2 dataSectionArrayController:self didUpdateAuxiliaryObjectForTransformedObjects:transformedObjectsWithUpdatedAuxiliaryObjects];
    }

    observableCopy = v14;
  }
}

- (id)auxiliaryObjectForTransformedObject:(id)object key:(id)key
{
  keyCopy = key;
  v7 = [(PXDataSectionArrayController *)self dataSectionObjectForTransformedObject:object];
  if (v7)
  {
    dataSectionManager = [(PXDataSectionArrayController *)self dataSectionManager];
    v9 = [dataSectionManager auxiliaryObjectForKey:keyCopy dataSectionObject:v7 hintIndex:0x7FFFFFFFFFFFFFFFLL];
    v10 = v9;
    if (v9)
    {
      null = v9;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v12 = null;

    v13 = [(objc_class *)[(PXDataSectionArrayController *)self transformerClass] identifierForDataSectionObject:v7];
    auxiliaryObjectsByIdentifier = [(PXDataSectionArrayController *)self auxiliaryObjectsByIdentifier];
    v15 = [auxiliaryObjectsByIdentifier objectForKeyedSubscript:v13];

    if (!v15)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      auxiliaryObjectsByIdentifier2 = [(PXDataSectionArrayController *)self auxiliaryObjectsByIdentifier];
      [auxiliaryObjectsByIdentifier2 setObject:v15 forKeyedSubscript:v13];
    }

    [v15 setObject:v12 forKeyedSubscript:keyCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dataSectionObjectForTransformedObject:(id)object
{
  objectCopy = object;
  v5 = [(objc_class *)[(PXDataSectionArrayController *)self transformerClass] dataSectionObjectForTransformedObject:objectCopy];

  return v5;
}

- (id)dataSectionObjectsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  currentDataSection = [(PXDataSectionArrayController *)self currentDataSection];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(currentDataSection, "count")}];
  if ([currentDataSection count] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [currentDataSection objectAtIndex:v7];
      v9 = [(objc_class *)[(PXDataSectionArrayController *)self transformerClass] identifierForDataSectionObject:v8];
      [v6 setObject:v8 forKeyedSubscript:v9];

      ++v7;
    }

    while (v7 < [currentDataSection count]);
  }

  v10 = v6;
  PXMap();
}

- (void)startBackgroundFetchingIfNeeded
{
  dataSectionManager = [(PXDataSectionArrayController *)self dataSectionManager];
  [dataSectionManager startBackgroundFetchingIfNeeded];
}

- (NSArray)transformedObjects
{
  transformedObjects = self->_transformedObjects;
  if (!transformedObjects)
  {
    dataSectionManager = [(PXDataSectionArrayController *)self dataSectionManager];
    [dataSectionManager registerChangeObserver:self context:DataSectionManagerObservationContext];

    [(PXDataSectionArrayController *)self _updateTransformedObjects];
    transformedObjects = self->_transformedObjects;
  }

  return transformedObjects;
}

- (PXDataSectionArrayController)initWithDataSectionManager:(id)manager transformerClass:(Class)class
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PXDataSectionArrayController;
  v8 = [(PXDataSectionArrayController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dataSectionManager, manager);
    objc_storeStrong(&v9->_transformerClass, class);
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