@interface PXStaticDisplayAssetsDataSource
- (PXPhotosDataSource)photosDataSource;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (PXStaticDisplayAssetsDataSource)initWithAssetCollectionBySection:(id)section assetsBySection:(id)bySection curatedAssetsBySection:(id)assetsBySection keyAssetsBySection:(id)keyAssetsBySection sectionContent:(int64_t)content;
- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)keyAssetsForAssetCollection:(id)collection;
- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfCuratedItemsInAssetCollection:(id)collection;
- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)collection;
- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXStaticDisplayAssetsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v14 = a4;
  v6 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v6;
  identifier = [(PXStaticDisplayAssetsDataSource *)self identifier];
  leafObject = [v14 leafObject];
  if ([(PXStaticDisplayAssetsDataSource *)self numberOfSections]>= 1)
  {
    assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
    v10 = [assetCollectionBySection objectAtIndexedSubscript:0];
    v11 = v10;
    if (leafObject == v10)
    {
    }

    else
    {
      v12 = [leafObject isEqual:v10];

      if ((v12 & 1) == 0)
      {
        [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
        [objc_claimAutoreleasedReturnValue() objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        PXSectionedFetchResultIndexOfObject();
      }
    }

    retstr->dataSourceIdentifier = identifier;
    retstr->section = 0;
    retstr->item = 0x7FFFFFFFFFFFFFFFLL;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)keyAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v6 = [assetCollectionBySection indexOfObject:collectionCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    keyAssetsBySection = [(PXStaticDisplayAssetsDataSource *)self keyAssetsBySection];
    v7 = [keyAssetsBySection objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  keyAssetsBySection = [(PXStaticDisplayAssetsDataSource *)self keyAssetsBySection];
  v8 = [keyAssetsBySection objectAtIndexedSubscript:path->section];

  return v8;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:133 description:@"Index path has to be for a section."];

    abort();
  }

  exposedAssetsBySection = [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
  v10 = [exposedAssetsBySection objectAtIndexedSubscript:path->section];

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:122 description:@"Index path has to be for a section or item."];

    abort();
  }

  item = path->item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
    v9 = [assetCollectionBySection objectAtIndexedSubscript:path->section];
    goto LABEL_11;
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
  v10 = [assetCollectionBySection objectAtIndexedSubscript:path->section];
  v9 = [v10 objectAtIndexedSubscript:path->item];

LABEL_11:

  return v9;
}

- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  assetsBySection = [(PXStaticDisplayAssetsDataSource *)self assetsBySection];
  v8 = [assetsBySection objectAtIndexedSubscript:path->section];

  return v8;
}

- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXStaticDisplayAssetsDataSource *)self uncuratedAssetsInSectionIndexPath:v7];
  v5 = [v4 count];

  return v5;
}

- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXStaticDisplayAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  curatedAssetsBySection = [(PXStaticDisplayAssetsDataSource *)self curatedAssetsBySection];
  v8 = [curatedAssetsBySection objectAtIndexedSubscript:path->section];

  return v8;
}

- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXStaticDisplayAssetsDataSource *)self curatedAssetsInSectionIndexPath:v7];
  v5 = [v4 count];

  return v5;
}

- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v6 = [assetCollectionBySection indexOfObject:collectionCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  assetsBySection = [(PXStaticDisplayAssetsDataSource *)self assetsBySection];
  v9 = [assetsBySection objectAtIndexedSubscript:v6];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfCuratedItemsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v6 = [assetCollectionBySection indexOfObject:collectionCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  curatedAssetsBySection = [(PXStaticDisplayAssetsDataSource *)self curatedAssetsBySection];
  v9 = [curatedAssetsBySection objectAtIndexedSubscript:v6];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  exposedAssetsBySection = [(PXStaticDisplayAssetsDataSource *)self exposedAssetsBySection];
  v5 = [exposedAssetsBySection objectAtIndexedSubscript:section];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  assetCollectionBySection = [(PXStaticDisplayAssetsDataSource *)self assetCollectionBySection];
  v3 = [assetCollectionBySection count];

  return v3;
}

- (PXStaticDisplayAssetsDataSource)initWithAssetCollectionBySection:(id)section assetsBySection:(id)bySection curatedAssetsBySection:(id)assetsBySection keyAssetsBySection:(id)keyAssetsBySection sectionContent:(int64_t)content
{
  sectionCopy = section;
  bySectionCopy = bySection;
  assetsBySectionCopy = assetsBySection;
  keyAssetsBySectionCopy = keyAssetsBySection;
  v33.receiver = self;
  v33.super_class = PXStaticDisplayAssetsDataSource;
  v17 = [(PXStaticDisplayAssetsDataSource *)&v33 init];
  if (!v17)
  {
    goto LABEL_27;
  }

  v31 = a2;
  obj = keyAssetsBySection;
  v18 = [sectionCopy count];
  v19 = [bySectionCopy count];
  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = [assetsBySectionCopy count];
  v22 = [keyAssetsBySectionCopy count];
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

  if (sectionCopy && [sectionCopy count] != v20)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"!assetCollectionBySection || assetCollectionBySection.count == maxCount"}];

    if (!bySectionCopy)
    {
      goto LABEL_15;
    }
  }

  else if (!bySectionCopy)
  {
    goto LABEL_15;
  }

  if ([bySectionCopy count] != v20)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!assetsBySection || assetsBySection.count == maxCount"}];
  }

LABEL_15:
  if (assetsBySectionCopy && [assetsBySectionCopy count] != v20)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"!curatedAssetsBySection || curatedAssetsBySection.count == maxCount"}];

    if (keyAssetsBySectionCopy)
    {
LABEL_18:
      if ([keyAssetsBySectionCopy count] != v20)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:v31 object:v17 file:@"PXStaticDisplayAssetsDataSource.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"!keyAssetsBySection || keyAssetsBySection.count == maxCount"}];
      }
    }
  }

  else if (keyAssetsBySectionCopy)
  {
    goto LABEL_18;
  }

  if (!sectionCopy)
  {
    sectionCopy = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v20 >= 1)
    {
      do
      {
        v24 = [[PXMockDisplayAssetCollection alloc] initWithTitle:0 subtitle:0 type:1 subtype:2];
        [sectionCopy addObject:v24];

        --v20;
      }

      while (v20);
    }
  }

  objc_storeStrong(&v17->_assetCollectionBySection, sectionCopy);
  objc_storeStrong(&v17->_assetsBySection, bySection);
  objc_storeStrong(&v17->_curatedAssetsBySection, assetsBySection);
  objc_storeStrong(&v17->_keyAssetsBySection, obj);
  v17->_sectionContent = content;
  v25 = bySectionCopy;
  if (!content)
  {
    goto LABEL_26;
  }

  if (content == 1)
  {
    v25 = assetsBySectionCopy;
LABEL_26:
    objc_storeStrong(&v17->_exposedAssetsBySection, v25);
  }

LABEL_27:

  return v17;
}

- (PXPhotosDataSource)photosDataSource
{
  v19 = *MEMORY[0x1E69E9840];
  fetchAllItemObjects = [(PXStaticDisplayAssetsDataSource *)self fetchAllItemObjects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:fetchAllItemObjects title:0];
LABEL_5:
    v4 = v3;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:fetchAllItemObjects title:0];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fetchAllItemObjects, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = fetchAllItemObjects;
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