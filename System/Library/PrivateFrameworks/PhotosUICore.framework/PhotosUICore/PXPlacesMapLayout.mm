@interface PXPlacesMapLayout
- (PXPlacesMapLayout)initWithDataSource:(id)source;
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (id)layoutForViewPort:(id)port andDataSourceChange:(id)change;
@end

@implementation PXPlacesMapLayout

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->pipelineComponentProvider);

  return WeakRetained;
}

- (id)layoutForViewPort:(id)port andDataSourceChange:(id)change
{
  v37 = *MEMORY[0x1E69E9840];
  portCopy = port;
  changeCopy = change;
  if (!portCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayout.m" lineNumber:36 description:@"-[PXPlacesMapSimpleLayout layout] viewPort cannot be nil"];
  }

  dataSource = [(PXPlacesMapLayout *)self dataSource];

  if (!dataSource)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayout.m" lineNumber:37 description:@"-[PXPlacesMapSimpleLayout layout] dataSource cannot be nil"];
  }

  v10 = objc_alloc_init(PXPlacesMapLayoutResultImpl);
  [portCopy mapRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  dataSource2 = [(PXPlacesMapLayout *)self dataSource];
  v20 = [dataSource2 findItemsInMapRect:{v12, v14, v16, v18}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        v27 = [PXPlacesMapLayoutItemImpl alloc];
        [v26 coordinate];
        v28 = [(PXPlacesMapLayoutItemImpl *)v27 initWithCoordinate:?];
        [(PXPlacesMapLayoutItemImpl *)v28 addGeotaggable:v26];
        [(PXPlacesMapLayoutResultImpl *)v10 addItem:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v23);
  }

  return v10;
}

- (PXPlacesMapLayout)initWithDataSource:(id)source
{
  sourceCopy = source;
  v6 = [(PXPlacesMapLayout *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

@end