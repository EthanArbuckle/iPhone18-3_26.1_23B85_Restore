@interface PXAssetsDataSource
- (BOOL)getAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts allowFetch:(BOOL)fetch;
- (BOOL)isFilteringDisabledForSectionIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)isFilteringSectionIndexPath:(PXSimpleIndexPath *)path;
- (PXAssetReference)endingAssetReference;
- (PXAssetReference)firstAssetReference;
- (PXAssetReference)startingAssetReference;
- (PXDisplayAsset)keyAsset;
- (PXDisplayAssetCollection)firstAssetCollection;
- (PXDisplayAssetCollection)lastAssetCollection;
- (PXDisplayCollection)containerCollection;
- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)reference;
- (id)assetAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)assetCollectionAtSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)assetCollectionReferenceAtSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)assetCollectionReferenceForAssetCollectionReference:(id)reference;
- (id)assetCollectionReferenceNearestToObjectReference:(id)reference;
- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)assetReferenceAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)displayAssetAtIndexPath:(id)path;
- (id)indexPathForDisplayAsset:(id)asset hintIndexPath:(id)path;
- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectReferenceNearestToObjectReference:(id)reference inSection:(int64_t)section;
@end

@implementation PXAssetsDataSource

- (id)assetCollectionReferenceNearestToObjectReference:(id)reference
{
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PXSectionedDataSource *)self objectReferenceForObjectReference:referenceCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0u;
      v9 = 0u;
      v6 = [(PXSectionedDataSource *)self objectReferenceNearestToObjectReference:referenceCopy];
      [(PXSectionedDataSource *)self indexPathForObjectReference:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (id)objectReferenceNearestToObjectReference:(id)reference inSection:(int64_t)section
{
  v5 = [(PXSectionedDataSource *)self objectReferenceNearestToObjectReference:reference];
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

  if (v7 == section)
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

- (BOOL)isFilteringDisabledForSectionIndexPath:(PXSimpleIndexPath *)path
{
  selfCopy = self;
  v4 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v4;
  v5 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:v7];
  LOBYTE(selfCopy) = [(PXAssetsDataSource *)selfCopy isFilteringDisabledForAssetCollection:v5];

  return selfCopy;
}

- (BOOL)isFilteringSectionIndexPath:(PXSimpleIndexPath *)path
{
  selfCopy = self;
  v4 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v4;
  v5 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:v7];
  LOBYTE(selfCopy) = [(PXAssetsDataSource *)selfCopy isFilteringAssetCollection:v5];

  return selfCopy;
}

- (PXDisplayAsset)keyAsset
{
  containerCollection = [(PXAssetsDataSource *)self containerCollection];
  if (![containerCollection canContainAssets] || (-[PXAssetsDataSource keyAssetsForAssetCollection:](self, "keyAssetsForAssetCollection:", containerCollection), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), asset = objc_claimAutoreleasedReturnValue(), v4, !asset))
  {
    startingAssetReference = [(PXAssetsDataSource *)self startingAssetReference];
    asset = [startingAssetReference asset];
  }

  return asset;
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

- (BOOL)getAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts allowFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v28 = 0uLL;
  v29 = 0;
  identifier = [(PXSectionedDataSource *)self identifier];
  selfCopy = self;
  numberOfSections = [(PXSectionedDataSource *)self numberOfSections];
  if (numberOfSections < 1)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v8 = 1;
  }

  else
  {
    v7 = numberOfSections;
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
      v26[0] = identifier;
      v26[1] = v9;
      v27 = v22;
      v14 = [(PXAssetsDataSource *)selfCopy assetsInSectionIndexPath:v26];
      v15 = v14;
      if (fetchCopy)
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
  if (counts)
  {
    counts->var0 = v10;
    counts->var1 = v11;
    counts->var2 = v12;
  }

  if (assetCounts)
  {
    *&assetCounts->var0 = v28;
    assetCounts->var2 = v29;
  }

  return v8;
}

- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)reference
{
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  return [(PXSectionedDataSource *)self indexPathForObjectReference:a4];
}

- (id)assetReferenceAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectReferenceAtIndexPath:v6];

  return v4;
}

- (id)assetCollectionReferenceForAssetCollectionReference:(id)reference
{
  v5 = [(PXSectionedDataSource *)self objectReferenceForObjectReference:reference];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSource.m" lineNumber:88 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self objectReferenceForObjectReference:assetCollectionReference]", v9, px_descriptionForAssertionMessage}];
    }
  }

  return v5;
}

- (id)assetCollectionReferenceAtSectionIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v13[0] = *&path->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSectionedDataSource *)self objectReferenceAtIndexPath:v13];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSource.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectReferenceAtIndexPath:indexPath]", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSource.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectReferenceAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXDisplayAssetCollection)lastAssetCollection
{
  numberOfSections = [(PXSectionedDataSource *)self numberOfSections];
  v4 = numberOfSections - 1;
  if (numberOfSections < 1)
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
    identifier = [(PXSectionedDataSource *)self identifier];
    v6 = xmmword_1B4074EC0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v3 = [(PXAssetsDataSource *)self assetCollectionAtSectionIndexPath:&identifier];
  }

  return v3;
}

- (PXDisplayCollection)containerCollection
{
  if ([(PXSectionedDataSource *)self numberOfSections]== 1)
  {
    firstAssetCollection = [(PXAssetsDataSource *)self firstAssetCollection];
  }

  else
  {
    firstAssetCollection = 0;
  }

  return firstAssetCollection;
}

- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXAssetsDataSource *)self assetAtItemIndexPath:v7];
  uuid = [v4 uuid];

  return uuid;
}

- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXAssetsDataSource *)self assetIdentifierAtItemIndexPath:v6];

  return v4;
}

- (id)assetAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectsInIndexPath:v6];

  return v4;
}

- (id)assetCollectionAtSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)indexPathForDisplayAsset:(id)asset hintIndexPath:(id)path
{
  pathCopy = path;
  assetCopy = asset;
  v8 = [PXAssetReference alloc];
  PXSimpleIndexPathFromIndexPath(COERCE_FLOAT64_T([(PXSectionedDataSource *)self identifier]), pathCopy, v12);

  v9 = [(PXSectionedObjectReference *)v8 initWithSectionObject:0 itemObject:assetCopy subitemObject:0 indexPath:v12];
  [(PXSectionedDataSource *)self indexPathForObjectReference:v9];
  v10 = PXIndexPathFromSimpleIndexPath(v12);

  return v10;
}

- (id)displayAssetAtIndexPath:(id)path
{
  pathCopy = path;
  PXSimpleIndexPathFromIndexPath(COERCE_FLOAT64_T([(PXSectionedDataSource *)self identifier]), pathCopy, v7);

  v5 = [(PXAssetsDataSource *)self assetAtItemIndexPath:v7];

  return v5;
}

@end