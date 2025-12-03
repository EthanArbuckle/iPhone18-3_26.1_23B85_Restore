@interface PXSyntheticAssetsDataSource
- (PXSimpleIndexPath)indexPathForObjectID:(SEL)d;
- (PXSyntheticAssetsDataSource)initWithAssetsBySection:(id)section assetCollections:(id)collections;
- (PXSyntheticAssetsDataSource)initWithConfigurationBlock:(id)block;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section;
@end

@implementation PXSyntheticAssetsDataSource

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier)
  {
    v4 = path->section == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = *&path->item;
    v15[0] = *&path->dataSourceIdentifier;
    v15[1] = v13;
    v14 = PXSimpleIndexPathDescription(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:89 description:{@"%@ invalid indexPath:%@", self, v14}];

    abort();
  }

  assetsBySection = [(PXSyntheticAssetsDataSource *)self assetsBySection];
  v7 = [assetsBySection objectAtIndexedSubscript:path->section];

  v8 = [[PXSyntheticAssetsFetchResult alloc] initWithAssets:v7];

  return v8;
}

- (PXSimpleIndexPath)indexPathForObjectID:(SEL)d
{
  v5 = a4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:d object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectID", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:d object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectID", v16}];
  }

LABEL_3:
  numberOfSections = [(PXSyntheticAssetsDataSource *)self numberOfSections];
  if (numberOfSections < 1)
  {
LABEL_7:
    *&retstr->dataSourceIdentifier = *PXSimpleIndexPathNull;
    *&retstr->item = *&PXSimpleIndexPathNull[16];
  }

  else
  {
    v7 = numberOfSections;
    v8 = 0;
    while (1)
    {
      assetsBySection = [(PXSyntheticAssetsDataSource *)self assetsBySection];
      v10 = [assetsBySection objectAtIndexedSubscript:v8];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__PXSyntheticAssetsDataSource_indexPathForObjectID___block_invoke;
      v21[3] = &unk_1E7BB8920;
      v22 = v5;
      v11 = [v10 indexOfObjectPassingTest:v21];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }

    v12 = v11;
    retstr->dataSourceIdentifier = [(PXSectionedDataSource *)self identifier];
    retstr->section = v8;
    retstr->item = v12;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t __52__PXSyntheticAssetsDataSource_indexPathForObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:49 description:@"Invalid identifier"];
  }

  if (!path->dataSourceIdentifier)
  {
    goto LABEL_17;
  }

  item = path->item;
  if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    section = path->section;
    if (section != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (section >= [(PXSyntheticAssetsDataSource *)self numberOfSections])
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:59 description:@"Out-of-bounds index path"];
      }

      assetCollections = [(PXSyntheticAssetsDataSource *)self assetCollections];
      v10 = [assetCollections objectAtIndexedSubscript:section];
      goto LABEL_13;
    }

LABEL_17:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:63 description:@"Invalid index path"];

    abort();
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  v11 = path->section;
  if (v11 >= [(PXSyntheticAssetsDataSource *)self numberOfSections]|| item >= [(PXSyntheticAssetsDataSource *)self numberOfItemsInSection:v11])
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:53 description:@"Out-of-bounds index path"];
  }

  assetCollections = [(PXSyntheticAssetsDataSource *)self assetsBySection];
  v12 = [assetCollections objectAtIndexedSubscript:v11];
  v10 = [v12 objectAtIndexedSubscript:item];

LABEL_13:

  return v10;
}

- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:44 description:@"Subitems not supported"];

  abort();
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if ([(PXSyntheticAssetsDataSource *)self numberOfSections]<= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:38 description:@"Out-of-bounds section"];
  }

  assetsBySection = [(PXSyntheticAssetsDataSource *)self assetsBySection];
  v7 = [assetsBySection objectAtIndexedSubscript:section];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSections
{
  assetsBySection = [(PXSyntheticAssetsDataSource *)self assetsBySection];
  v3 = [assetsBySection count];

  return v3;
}

- (PXSyntheticAssetsDataSource)initWithConfigurationBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(PXSyntheticAssetsDataSourceBuilder);
  blockCopy[2](blockCopy, v5);

  assetsBySection = [(PXSyntheticAssetsDataSourceBuilder *)v5 assetsBySection];
  assetCollections = [(PXSyntheticAssetsDataSourceBuilder *)v5 assetCollections];
  v8 = [(PXSyntheticAssetsDataSource *)self initWithAssetsBySection:assetsBySection assetCollections:assetCollections];

  return v8;
}

- (PXSyntheticAssetsDataSource)initWithAssetsBySection:(id)section assetCollections:(id)collections
{
  sectionCopy = section;
  collectionsCopy = collections;
  v9 = [sectionCopy count];
  if (v9 != [collectionsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSource.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"assetsBySection.count == assetCollections.count"}];
  }

  v17.receiver = self;
  v17.super_class = PXSyntheticAssetsDataSource;
  v10 = [(PXSectionedDataSource *)&v17 init];
  if (v10)
  {
    v11 = [sectionCopy copy];
    assetsBySection = v10->_assetsBySection;
    v10->_assetsBySection = v11;

    v13 = [collectionsCopy copy];
    assetCollections = v10->_assetCollections;
    v10->_assetCollections = v13;
  }

  return v10;
}

@end