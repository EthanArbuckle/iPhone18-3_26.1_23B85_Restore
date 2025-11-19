@interface PXStaticDisplayAssetsDataSource
- (PXPhotosDataSource)photosDataSource;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (PXStaticDisplayAssetsDataSource)initWithAssetCollectionBySection:(id)a3 assetsBySection:(id)a4 curatedAssetsBySection:(id)a5 keyAssetsBySection:(id)a6 sectionContent:(int64_t)a7;
- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)keyAssetsForAssetCollection:(id)a3;
- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3;
- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfCuratedItemsInAssetCollection:(id)a3;
- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)a3;
- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXStaticDisplayAssetsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v14 = a4;
  v6 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v6;
  v7 = [(PXStaticDisplayAssetsDataSource *)self identifier];
  v8 = [v14 leafObject];
  if ([(PXStaticDisplayAssetsDataSource *)self numberOfSections]>= 1)
  {
    v9 = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = v10;
    if (v8 == v10)
    {
    }

    else
    {
      v12 = [v8 isEqual:v10];

      if ((v12 & 1) == 0)
      {
        [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
        [objc_claimAutoreleasedReturnValue() objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        PXSectionedFetchResultIndexOfObject();
      }
    }

    retstr->dataSourceIdentifier = v7;
    retstr->section = 0;
    retstr->item = 0x7FFFFFFFFFFFFFFFLL;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)keyAssetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PXStaticDisplayAssetsDataSource *)self keyAssetsBySection];
    v7 = [v8 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXStaticDisplayAssetsDataSource *)self keyAssetsBySection];
  v8 = [v7 objectAtIndexedSubscript:a3->section];

  return v8;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:133 description:@"Index path has to be for a section."];

    abort();
  }

  v9 = [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
  v10 = [v9 objectAtIndexedSubscript:a3->section];

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:122 description:@"Index path has to be for a section or item."];

    abort();
  }

  item = a3->item;
  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
    v9 = [v8 objectAtIndexedSubscript:a3->section];
    goto LABEL_11;
  }

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v8 = [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
  v10 = [v8 objectAtIndexedSubscript:a3->section];
  v9 = [v10 objectAtIndexedSubscript:a3->item];

LABEL_11:

  return v9;
}

- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXStaticDisplayAssetsDataSource *)self assetsBySection];
  v8 = [v7 objectAtIndexedSubscript:a3->section];

  return v8;
}

- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXStaticDisplayAssetsDataSource *)self uncuratedAssetsInSectionIndexPath:v7];
  v5 = [v4 count];

  return v5;
}

- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXStaticDisplayAssetsDataSource *)self curatedAssetsBySection];
  v8 = [v7 objectAtIndexedSubscript:a3->section];

  return v8;
}

- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXStaticDisplayAssetsDataSource *)self curatedAssetsInSectionIndexPath:v7];
  v5 = [v4 count];

  return v5;
}

- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(PXStaticDisplayAssetsDataSource *)self assetsBySection];
  v9 = [v8 objectAtIndexedSubscript:v6];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfCuratedItemsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(PXStaticDisplayAssetsDataSource *)self curatedAssetsBySection];
  v9 = [v8 objectAtIndexedSubscript:v6];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  v2 = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v3 = [v2 count];

  return v3;
}

- (PXStaticDisplayAssetsDataSource)initWithAssetCollectionBySection:(id)a3 assetsBySection:(id)a4 curatedAssetsBySection:(id)a5 keyAssetsBySection:(id)a6 sectionContent:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v33.receiver = self;
  v33.super_class = PXStaticDisplayAssetsDataSource;
  v17 = [(PXStaticDisplayAssetsDataSource *)&v33 init];
  if (!v17)
  {
    goto LABEL_27;
  }

  v31 = a2;
  obj = a6;
  v18 = [v13 count];
  v19 = [v14 count];
  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = [v15 count];
  v22 = [v16 count];
  if (v21 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v20 <= v23)
  {
    v20 = v23;
  }

  if (v13 && [v13 count] != v20)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"!assetCollectionBySection || assetCollectionBySection.count == maxCount"}];

    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else if (!v14)
  {
    goto LABEL_15;
  }

  if ([v14 count] != v20)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!assetsBySection || assetsBySection.count == maxCount"}];
  }

LABEL_15:
  if (v15 && [v15 count] != v20)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"!curatedAssetsBySection || curatedAssetsBySection.count == maxCount"}];

    if (v16)
    {
LABEL_18:
      if ([v16 count] != v20)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"!keyAssetsBySection || keyAssetsBySection.count == maxCount"}];
      }
    }
  }

  else if (v16)
  {
    goto LABEL_18;
  }

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v20 >= 1)
    {
      do
      {
        v24 = [[PXMockDisplayAssetCollection alloc] initWithTitle:0 subtitle:0 type:1 subtype:2];
        [v13 addObject:v24];

        --v20;
      }

      while (v20);
    }
  }

  objc_storeStrong(&v17->_assetCollectionBySection, v13);
  objc_storeStrong(&v17->_assetsBySection, a4);
  objc_storeStrong(&v17->_curatedAssetsBySection, a5);
  objc_storeStrong(&v17->_keyAssetsBySection, obj);
  v17->_sectionContent = a7;
  v25 = v14;
  if (!a7)
  {
    goto LABEL_26;
  }

  if (a7 == 1)
  {
    v25 = v15;
LABEL_26:
    objc_storeStrong(&v17->_exposedAssetsBySection, v25);
  }

LABEL_27:

  return v17;
}

- (PXPhotosDataSource)photosDataSource
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(PXStaticDisplayAssetsDataSource *)self fetchAllItemObjects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v2 title:0];
LABEL_5:
    v4 = v3;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v2 title:0];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v4 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v5 title:0];

LABEL_14:
  v11 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetCollection:v4 options:0];
  v12 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v11];

  return v12;
}

@end