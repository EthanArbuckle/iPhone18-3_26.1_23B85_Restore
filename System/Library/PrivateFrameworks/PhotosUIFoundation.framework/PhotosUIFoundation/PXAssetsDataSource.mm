@interface PXAssetsDataSource
- (BOOL)getAssetCounts:(id *)a3 guestAssetCounts:(id *)a4 allowFetch:(BOOL)a5;
- (BOOL)isFilteringDisabledForSectionIndexPath:(PXSimpleIndexPath *)a3;
- (BOOL)isFilteringSectionIndexPath:(PXSimpleIndexPath *)a3;
- (PXAssetReference)endingAssetReference;
- (PXAssetReference)firstAssetReference;
- (PXAssetReference)startingAssetReference;
- (PXDisplayAsset)keyAsset;
- (PXDisplayAssetCollection)firstAssetCollection;
- (PXDisplayAssetCollection)lastAssetCollection;
- (PXDisplayCollection)containerCollection;
- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)a3;
- (id)assetAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)assetCollectionAtSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)assetCollectionReferenceAtSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)assetCollectionReferenceForAssetCollectionReference:(id)a3;
- (id)assetCollectionReferenceNearestToObjectReference:(id)a3;
- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)assetReferenceAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)displayAssetAtIndexPath:(id)a3;
- (id)indexPathForDisplayAsset:(id)a3 hintIndexPath:(id)a4;
- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectReferenceNearestToObjectReference:(id)a3 inSection:(int64_t)a4;
@end

@implementation PXAssetsDataSource

- (id)assetCollectionReferenceNearestToObjectReference:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PXSectionedDataSource *)self objectReferenceForObjectReference:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0u;
      v9 = 0u;
      v6 = [(PXSectionedDataSource *)self objectReferenceNearestToObjectReference:v4];
      [(PXSectionedDataSource *)self indexPathForObjectReference:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (id)objectReferenceNearestToObjectReference:(id)a3 inSection:(int64_t)a4
{
  v5 = [(PXSectionedDataSource *)self objectReferenceNearestToObjectReference:a3];
  v6 = v5;
  if (v5)
  {
    [v5 indexPath];
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == a4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (BOOL)isFilteringDisabledForSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = self;
  v4 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v4;
  v5 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:v7];
  LOBYTE(v3) = [(PXAssetsDataSource *)v3 isFilteringDisabledForAssetCollection:v5];

  return v3;
}

- (BOOL)isFilteringSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = self;
  v4 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v4;
  v5 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:v7];
  LOBYTE(v3) = [(PXAssetsDataSource *)v3 isFilteringAssetCollection:v5];

  return v3;
}

- (PXDisplayAsset)keyAsset
{
  v3 = [(PXAssetsDataSource *)self containerCollection];
  if (![v3 canContainAssets] || (-[PXAssetsDataSource keyAssetsForAssetCollection:](self, "keyAssetsForAssetCollection:", v3), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [(PXAssetsDataSource *)self startingAssetReference];
    v5 = [v6 asset];
  }

  return v5;
}

- (PXAssetReference)endingAssetReference
{
  v6 = 0u;
  v7 = 0u;
  if ([(PXAssetsDataSource *)self startsAtEnd])
  {
    [(PXSectionedDataSource *)self firstItemIndexPath];
  }

  else
  {
    [(PXSectionedDataSource *)self lastItemIndexPath];
  }

  if (v6)
  {
    v5[0] = v6;
    v5[1] = v7;
    v3 = [(PXAssetsDataSource *)self assetReferenceAtItemIndexPath:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXAssetReference)startingAssetReference
{
  v6 = 0u;
  v7 = 0u;
  if ([(PXAssetsDataSource *)self startsAtEnd])
  {
    [(PXSectionedDataSource *)self lastItemIndexPath];
  }

  else
  {
    [(PXSectionedDataSource *)self firstItemIndexPath];
  }

  if (v6)
  {
    v5[0] = v6;
    v5[1] = v7;
    v3 = [(PXAssetsDataSource *)self assetReferenceAtItemIndexPath:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXAssetReference)firstAssetReference
{
  [(PXSectionedDataSource *)self firstItemIndexPath];

  return 0;
}

- (BOOL)getAssetCounts:(id *)a3 guestAssetCounts:(id *)a4 allowFetch:(BOOL)a5
{
  v25 = a5;
  v28 = 0uLL;
  v29 = 0;
  v23 = [(PXSectionedDataSource *)self identifier];
  v24 = self;
  v6 = [(PXSectionedDataSource *)self numberOfSections];
  if (v6 < 1)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v8 = 1;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v22 = vnegq_f64(v13);
    while (1)
    {
      v26[0] = v23;
      v26[1] = v9;
      v27 = v22;
      v14 = [(PXAssetsDataSource *)v24 assetsInSectionIndexPath:v26];
      v15 = v14;
      if (v25)
      {
        v16 = [v14 countOfAssetsWithMediaType:1];
        v17 = [v15 countOfAssetsWithMediaType:2];
        v18 = [v15 countOfAssetsWithMediaType:3];
      }

      else
      {
        v16 = [v14 cachedCountOfAssetsWithMediaType:1];
        v17 = [v15 cachedCountOfAssetsWithMediaType:2];
        v18 = [v15 cachedCountOfAssetsWithMediaType:3];
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v10 += v16;
      v11 += v17;
      v12 += v18;

      v8 = ++v9 >= v7;
      if (v7 == v9)
      {
        goto LABEL_13;
      }
    }

    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = PXDisplayAssetDetailedCountsUndefined;

    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_13:
  if (a3)
  {
    a3->var0 = v10;
    a3->var1 = v11;
    a3->var2 = v12;
  }

  if (a4)
  {
    *&a4->var0 = v28;
    a4->var2 = v29;
  }

  return v8;
}

- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)a3
{
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  return [(PXSectionedDataSource *)self indexPathForObjectReference:a4];
}

- (id)assetReferenceAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectReferenceAtIndexPath:v6];

  return v4;
}

- (id)assetCollectionReferenceForAssetCollectionReference:(id)a3
{
  v5 = [(PXSectionedDataSource *)self objectReferenceForObjectReference:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:self file:@"PXAssetsDataSource.m" lineNumber:88 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self objectReferenceForObjectReference:assetCollectionReference]", v9, v10}];
    }
  }

  return v5;
}

- (id)assetCollectionReferenceAtSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = *&a3->item;
  v13[0] = *&a3->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSectionedDataSource *)self objectReferenceAtIndexPath:v13];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v6 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXAssetsDataSource.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectReferenceAtIndexPath:indexPath]", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXAssetsDataSource.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectReferenceAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXDisplayAssetCollection)lastAssetCollection
{
  v3 = [(PXSectionedDataSource *)self numberOfSections];
  v4 = v3 - 1;
  if (v3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v8[0] = [(PXSectionedDataSource *)self identifier];
    v8[1] = v4;
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    v9 = vnegq_f64(v5);
    v6 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:v8];
  }

  return v6;
}

- (PXDisplayAssetCollection)firstAssetCollection
{
  if ([(PXSectionedDataSource *)self numberOfSections]< 1)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(PXSectionedDataSource *)self identifier];
    v6 = xmmword_1B4074EC0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v3 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:&v5];
  }

  return v3;
}

- (PXDisplayCollection)containerCollection
{
  if ([(PXSectionedDataSource *)self numberOfSections]== 1)
  {
    v3 = [(PXAssetsDataSource *)self firstAssetCollection];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXAssetsDataSource *)self assetAtItemIndexPath:v7];
  v5 = [v4 uuid];

  return v5;
}

- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXAssetsDataSource *)self assetIdentifierAtItemIndexPath:v6];

  return v4;
}

- (id)assetAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectsInIndexPath:v6];

  return v4;
}

- (id)assetCollectionAtSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)indexPathForDisplayAsset:(id)a3 hintIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PXAssetReference alloc];
  PXSimpleIndexPathFromIndexPath(COERCE_FLOAT64_T([(PXSectionedDataSource *)self identifier]), v6, v12);

  v9 = [(PXSectionedObjectReference *)v8 initWithSectionObject:0 itemObject:v7 subitemObject:0 indexPath:v12];
  [(PXSectionedDataSource *)self indexPathForObjectReference:v9];
  v10 = PXIndexPathFromSimpleIndexPath(v12);

  return v10;
}

- (id)displayAssetAtIndexPath:(id)a3
{
  v4 = a3;
  PXSimpleIndexPathFromIndexPath(COERCE_FLOAT64_T([(PXSectionedDataSource *)self identifier]), v4, v7);

  v5 = [(PXAssetsDataSource *)self assetAtItemIndexPath:v7];

  return v5;
}

@end