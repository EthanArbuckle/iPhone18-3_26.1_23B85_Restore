@interface PXFileBackedAssetsDataSource
- (PXFileBackedAssetsDataSource)init;
- (PXFileBackedAssetsDataSource)initWithFileBackedAssetDescriptionsBySection:(id)section;
- (PXFileBackedAssetsDataSource)initWithFileURLsBySection:(id)section;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)inputForItem:(id)item;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
@end

@implementation PXFileBackedAssetsDataSource

- (id)inputForItem:(id)item
{
  itemCopy = item;
  identifier = [(PXSectionedDataSource *)self identifier];
  px_section = [itemCopy px_section];
  px_item = [itemCopy px_item];

  v10[0] = identifier;
  v10[1] = px_section;
  v10[2] = px_item;
  v10[3] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(PXFileBackedAssetsDataSource *)self objectAtIndexPath:v10];

  return v8;
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v7 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4010000000;
  v32 = "";
  v33 = 0u;
  v34 = 0u;
  v28.receiver = self;
  v28.super_class = PXFileBackedAssetsDataSource;
  [(PXSimpleIndexPath *)&v28 indexPathForObjectReference:v7];
  if (!v30[4])
  {
    sectionObject = [v7 sectionObject];
    if (sectionObject)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        px_descriptionForAssertionMessage = [sectionObject px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:reference object:self file:@"PXFileBackedAssetsDataSource.m" lineNumber:186 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"objectReference.sectionObject", v18, px_descriptionForAssertionMessage}];
      }
    }

    itemObject = [v7 itemObject];
    if (itemObject)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        px_descriptionForAssertionMessage2 = [itemObject px_descriptionForAssertionMessage];
        [currentHandler2 handleFailureInMethod:reference object:self file:@"PXFileBackedAssetsDataSource.m" lineNumber:187 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, px_descriptionForAssertionMessage2}];
      }

      assetDescriptionsBySection = [(PXFileBackedAssetsDataSource *)self assetDescriptionsBySection];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __60__PXFileBackedAssetsDataSource_indexPathForObjectReference___block_invoke;
      v26[3] = &unk_1E7BB66A8;
      v27[1] = self;
      v27[2] = &v29;
      v27[0] = itemObject;
      [assetDescriptionsBySection enumerateKeysAndObjectsUsingBlock:v26];
      v12 = v27;
    }

    else
    {
      if (!sectionObject)
      {
LABEL_13:
        v14 = *(v30 + 3);
        *&retstr->dataSourceIdentifier = *(v30 + 2);
        *&retstr->item = v14;

        goto LABEL_14;
      }

      assetCollectionBySection = self->_assetCollectionBySection;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __60__PXFileBackedAssetsDataSource_indexPathForObjectReference___block_invoke_2;
      v24[3] = &unk_1E7BB66D0;
      v25[1] = self;
      v25[2] = &v29;
      v25[0] = sectionObject;
      [(NSDictionary *)assetCollectionBySection enumerateKeysAndObjectsUsingBlock:v24];
      v12 = v25;
    }

    goto LABEL_13;
  }

  v8 = *(v30 + 3);
  *&retstr->dataSourceIdentifier = *(v30 + 2);
  *&retstr->item = v8;
LABEL_14:
  _Block_object_dispose(&v29, 8);

  return result;
}

void __60__PXFileBackedAssetsDataSource_indexPathForObjectReference___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    v21 = v6;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      v10 += v9;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v22 + 1) + 8 * v12) url];
        v15 = [*(a1 + 32) url];
        v16 = [v14 isEqual:v15];

        if (v16)
        {
          v17 = [*(a1 + 40) identifier];
          v6 = v21;
          v18 = [v21 integerValue];
          v19 = *(*(a1 + 48) + 8);
          v19[4] = v17;
          v19[5] = v18;
          v19[6] = v13;
          v19[7] = 0x7FFFFFFFFFFFFFFFLL;
          *v20 = 1;
          goto LABEL_11;
        }

        ++v13;
        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v6 = v21;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __60__PXFileBackedAssetsDataSource_indexPathForObjectReference___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    v7 = [*(a1 + 40) identifier];
    v8 = [v11 integerValue];
    v9 = *(*(a1 + 48) + 8);
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *(v9 + 48) = vnegq_f64(v10);
    *a4 = 1;
  }
}

- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  assetDescriptionsBySection = [(PXFileBackedAssetsDataSource *)self assetDescriptionsBySection];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:path->section];
  v8 = [assetDescriptionsBySection objectForKeyedSubscript:v7];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[PXFileBackedAsset alloc] initWithDescription:*(*(&v16 + 1) + 8 * i)];
        if (v13)
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [[PXFileBackedFetchResult alloc] initWithAssets:array];

  return v14;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAssetsDataSource.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == [self identifier]"}];
  }

  if (!path->dataSourceIdentifier)
  {
    goto LABEL_12;
  }

  if (path->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (path->section != 0x7FFFFFFFFFFFFFFFLL)
    {
      assetCollectionBySection = self->_assetCollectionBySection;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v9 = [(NSDictionary *)assetCollectionBySection objectForKeyedSubscript:v8];
      goto LABEL_9;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *&path->item;
    v18[0] = *&path->dataSourceIdentifier;
    v18[1] = v16;
    v17 = PXSimpleIndexPathDescription(v18);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFileBackedAssetsDataSource.m" lineNumber:163 description:{@"%@ invalid indexPath:%@", self, v17}];

    abort();
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  assetDescriptionsBySection = [(PXFileBackedAssetsDataSource *)self assetDescriptionsBySection];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:path->section];
  v8 = [assetDescriptionsBySection objectForKeyedSubscript:v11];

  v12 = [v8 objectAtIndexedSubscript:path->item];
  v9 = [[PXFileBackedAsset alloc] initWithDescription:v12];

LABEL_9:

  return v9;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  assetDescriptionsBySection = [(PXFileBackedAssetsDataSource *)self assetDescriptionsBySection];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v6 = [assetDescriptionsBySection objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (int64_t)numberOfSections
{
  assetDescriptionsBySection = [(PXFileBackedAssetsDataSource *)self assetDescriptionsBySection];
  v3 = [assetDescriptionsBySection count];

  return v3;
}

- (PXFileBackedAssetsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAssetsDataSource.m" lineNumber:137 description:{@"%s is not available as initializer", "-[PXFileBackedAssetsDataSource init]"}];

  abort();
}

- (PXFileBackedAssetsDataSource)initWithFileURLsBySection:(id)section
{
  v4 = MEMORY[0x1E695DF90];
  sectionCopy = section;
  dictionary = [v4 dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PXFileBackedAssetsDataSource_initWithFileURLsBySection___block_invoke;
  v10[3] = &unk_1E7BB6680;
  v11 = dictionary;
  v7 = dictionary;
  [sectionCopy enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [(PXFileBackedAssetsDataSource *)self initWithFileBackedAssetDescriptionsBySection:v7];
  return v8;
}

void __58__PXFileBackedAssetsDataSource_initWithFileURLsBySection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [PXFileBackedAssetDescription simpleImageDescriptionWithURL:*(*(&v14 + 1) + 8 * v12), v14];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

- (PXFileBackedAssetsDataSource)initWithFileBackedAssetDescriptionsBySection:(id)section
{
  sectionCopy = section;
  v15.receiver = self;
  v15.super_class = PXFileBackedAssetsDataSource;
  v5 = [(PXSectionedDataSource *)&v15 init];
  if (v5)
  {
    v6 = [sectionCopy copy];
    assetDescriptionsBySection = v5->_assetDescriptionsBySection;
    v5->_assetDescriptionsBySection = v6;

    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(sectionCopy, "count")}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PXFileBackedAssetsDataSource_initWithFileBackedAssetDescriptionsBySection___block_invoke;
    v13[3] = &unk_1E7BB6658;
    v9 = v8;
    v14 = v9;
    [sectionCopy enumerateKeysAndObjectsUsingBlock:v13];
    assetCollectionBySection = v5->_assetCollectionBySection;
    v5->_assetCollectionBySection = v9;
    v11 = v9;
  }

  return v5;
}

void __77__PXFileBackedAssetsDataSource_initWithFileBackedAssetDescriptionsBySection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_PXFileBackedAssetCollection);
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

@end