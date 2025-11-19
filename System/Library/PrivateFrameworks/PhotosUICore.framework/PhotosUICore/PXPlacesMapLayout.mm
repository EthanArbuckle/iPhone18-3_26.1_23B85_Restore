@interface PXPlacesMapLayout
- (PXPlacesMapLayout)initWithDataSource:(id)a3;
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (id)layoutForViewPort:(id)a3 andDataSourceChange:(id)a4;
@end

@implementation PXPlacesMapLayout

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->pipelineComponentProvider);

  return WeakRetained;
}

- (id)layoutForViewPort:(id)a3 andDataSourceChange:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayout.m" lineNumber:36 description:@"-[PXPlacesMapSimpleLayout layout] viewPort cannot be nil"];
  }

  v9 = [(PXPlacesMapLayout *)self dataSource];

  if (!v9)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayout.m" lineNumber:37 description:@"-[PXPlacesMapSimpleLayout layout] dataSource cannot be nil"];
  }

  v10 = objc_alloc_init(PXPlacesMapLayoutResultImpl);
  [v7 mapRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(PXPlacesMapLayout *)self dataSource];
  v20 = [v19 findItemsInMapRect:{v12, v14, v16, v18}];

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

- (PXPlacesMapLayout)initWithDataSource:(id)a3
{
  v5 = a3;
  v6 = [(PXPlacesMapLayout *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

@end