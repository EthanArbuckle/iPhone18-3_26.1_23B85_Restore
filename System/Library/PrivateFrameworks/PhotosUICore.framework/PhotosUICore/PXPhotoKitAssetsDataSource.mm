@interface PXPhotoKitAssetsDataSource
+ (PXPhotoKitAssetsDataSource)dataSourceWithAsset:(id)a3;
+ (PXPhotoKitAssetsDataSource)dataSourceWithAssetCollections:(id)a3;
+ (PXPhotoKitAssetsDataSource)dataSourceWithAssets:(id)a3 userInfo:(id)a4 transientIdentifier:(id)a5;
- (BOOL)areAllSectionsConsideredAccurate;
- (BOOL)containsAnyItems;
- (BOOL)containsMultipleItems;
- (BOOL)couldObjectReferenceAppear:(id)a3;
- (BOOL)getAssetCounts:(id *)a3 guestAssetCounts:(id *)a4 allowFetch:(BOOL)a5;
- (BOOL)hasCurationForAssetCollection:(id)a3;
- (BOOL)ignoreSharedLibraryFilters;
- (BOOL)includeOthersInSocialGroupAssets;
- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)a3;
- (BOOL)isFiltered;
- (BOOL)isFilteringAssetCollection:(id)a3;
- (BOOL)isFilteringDisabledForAssetCollection:(id)a3;
- (BOOL)isSectionConsideredAccurate:(int64_t)a3;
- (BOOL)isSorted;
- (BOOL)startsAtEnd;
- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)a3 withChange:(id)a4;
- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)a3 withChangeDetails:(id)a4;
- (PXSimpleIndexPath)_indexPathForObjectReference:(SEL)a3 restrictedToSection:(id)a4;
- (PXSimpleIndexPath)_indexPathForSavedSyndicatedAssetReference:(SEL)a3;
- (PXSimpleIndexPath)indexPathForObjectID:(SEL)a3;
- (PXSimpleIndexPath)keyAssetIndexPathForSectionIndexPath:(SEL)a3;
- (id)_assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate:(id)a3;
- (id)_assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch:(id)a3;
- (id)_fastKeyCuratedAssetForAssetCollection:(id)a3;
- (id)assetCollectionReferenceNearestToObjectReference:(id)a3;
- (id)assetCollectionReferencesWithParentAssetCollectionReference:(id)a3 assetCollectionReferenceWithSameKeyAssetAsParent:(id *)a4;
- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)container;
- (id)containerCollection;
- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)description;
- (id)endingAssetReference;
- (id)fetchAllItemObjects;
- (id)fetchAssetSortDatesForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)a3 dateRangeEliminationBlock:(id)a4;
- (id)filterPredicate;
- (id)firstAssetCollection;
- (id)indexPathSetForObjectIDs:(id)a3;
- (id)inputForItem:(id)a3;
- (id)keyAssetsForAssetCollection:(id)a3;
- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)lastAssetCollection;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectReferenceAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectReferenceNearestToObjectReference:(id)a3 inSection:(int64_t)a4;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3;
- (id)primaryFaceForAssetAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)selectionSnapshotForAsset:(id)a3 assetCollection:(id)a4;
- (id)selectionSnapshotForAssetsByAssetCollection:(id)a3;
- (id)sortDescriptorsForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)a3;
- (id)startingAssetReference;
- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)a3;
- (int64_t)identifier;
- (int64_t)libraryFilter;
- (int64_t)numberOfCuratedItemsInAssetCollection:(id)a3;
- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)a3;
- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)a3;
- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)startingSection;
- (unint64_t)estimatedAssetCountForSectionIndexPath:(PXSimpleIndexPath *)a3;
- (unint64_t)estimatedOtherCount;
- (unint64_t)estimatedPhotosCount;
- (unint64_t)estimatedVideosCount;
- (unint64_t)sortOrderForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)a3;
- (void)prefetchIndexPaths:(id)a3 level:(unint64_t)a4;
- (void)prefetchSections:(id)a3;
@end

@implementation PXPhotoKitAssetsDataSource

- (int64_t)identifier
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 versionIdentifier];

  return v3;
}

- (id)firstAssetCollection
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 firstAssetCollection];

  return v3;
}

- (BOOL)containsAnyItems
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 isEmpty];

  return v3 ^ 1;
}

- (int64_t)numberOfSections
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 numberOfSections];

  return v3;
}

- (BOOL)areAllSectionsConsideredAccurate
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 areAllSectionsConsideredAccurate];

  return v3;
}

- (int64_t)libraryFilter
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 libraryFilter];

  return v3;
}

- (id)containerCollection
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 containerCollection];

  return v3;
}

- (id)fetchAssetSortDatesForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)a3 dateRangeEliminationBlock:(id)a4
{
  v5 = *&a3->item;
  v10 = *&a3->dataSourceIdentifier;
  v11 = v5;
  v6 = a4;
  v7 = [(PXPhotoKitAssetsDataSource *)self assetsInSectionIndexPath:&v10];
  v8 = [v7 px_fetchAssetSortDatesWithDateRangeEliminationBlock:{v6, v10, v11}];

  return v8;
}

- (id)sortDescriptorsForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXPhotoKitAssetsDataSource *)self assetsInSectionIndexPath:v7];
  v5 = [v4 fetchSortDescriptors];

  return v5;
}

- (unint64_t)sortOrderForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXPhotoKitAssetsDataSource *)self assetsInSectionIndexPath:v7];
  v5 = [v4 px_sortOrder];

  return v5;
}

- (id)selectionSnapshotForAssetsByAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [off_1E77217C8 indexPathSet];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __74__PXPhotoKitAssetsDataSource_selectionSnapshotForAssetsByAssetCollection___block_invoke;
  v15 = &unk_1E773DC48;
  v16 = v5;
  v17 = v6;
  v7 = v6;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v12];

  v9 = [off_1E77218D8 alloc];
  v10 = [v9 initWithDataSource:self selectedIndexPaths:{v7, v12, v13, v14, v15}];

  return v10;
}

void __74__PXPhotoKitAssetsDataSource_selectionSnapshotForAssetsByAssetCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) indexPathForAsset:*(*(&v17 + 1) + 8 * v10) inCollection:v5];
        v12 = [*(a1 + 32) versionIdentifier];
        v13 = [v11 section];
        v14 = [v11 item];
        v15 = *(a1 + 40);
        v16[0] = v12;
        v16[1] = v13;
        v16[2] = v14;
        v16[3] = 0x7FFFFFFFFFFFFFFFLL;
        [v15 addIndexPath:v16];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)selectionSnapshotForAsset:(id)a3 assetCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = [v8 indexPathForAsset:v7 inCollection:v6];

  v12[0] = [v8 versionIdentifier];
  v12[1] = [v9 section];
  v12[2] = [v9 item];
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [[off_1E77218D8 alloc] initWithDataSource:self selectedIndexPath:v12];

  return v10;
}

- (id)inputForItem:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self identifier];
  v6 = [v4 px_section];
  v7 = [v4 px_item];
  v8 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = [v4 px_section];

  v10 = [v8 assetCollectionForSection:v9];

  v11 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  LODWORD(v9) = [v11 wantsCurationForAssetCollection:v10];

  v12 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v19[0] = v5;
  v19[1] = v6;
  v19[2] = v7;
  v19[3] = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [v12 assetAtSimpleIndexPath:v19];

  if (v9)
  {
    v14 = [v13 objectID];
    v15 = [(NSMutableDictionary *)self->_layoutItemByAssetCache objectForKey:v14];
    if (!v15)
    {
      v16 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      [v16 weightForAsset:v13];

      v17 = [off_1E7721790 alloc];
      [v13 size];
      v15 = [v17 initWithSize:? weight:?];
      [(NSMutableDictionary *)self->_layoutItemByAssetCache setObject:v15 forKey:v14];
    }
  }

  else
  {
    v15 = v13;
  }

  return v15;
}

- (id)fetchAllItemObjects
{
  if ([(PXPhotoKitAssetsDataSource *)self numberOfSections]== 1)
  {
    v3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    v4 = [v3 assetsInSection:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXPhotoKitAssetsDataSource;
    v4 = [(PXPhotoKitAssetsDataSource *)&v6 fetchAllItemObjects];
  }

  return v4;
}

- (void)prefetchSections:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  [v5 prefetchAssetsInSections:v4];
}

- (void)prefetchIndexPaths:(id)a3 level:(unint64_t)a4
{
  v5 = a4 == 1;
  v6 = a3;
  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  [v7 prefetchAssetsAtIndexPaths:v6 onlyThumbnailAssets:v5];
}

- (BOOL)isSectionConsideredAccurate:(int64_t)a3
{
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  LOBYTE(a3) = [v4 isSectionConsideredAccurate:a3];

  return a3;
}

- (BOOL)couldObjectReferenceAppear:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    v7 = [v5 asset];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 isEmpty];

      if (v8)
      {
        v9 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v10 = [v5 asset];
      v11 = [v10 px_isSharedAlbumAsset];

      v12 = [v6 numberOfSections];
      if (v12 < 1)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v13 = v12;
      v7 = 0;
      v14 = 1;
      do
      {
        v15 = v7;
        v7 = [v6 assetCollectionForSection:v14 - 1];

        v16 = v11 ^ [v7 px_isSharedAlbum];
      }

      while (v16 == 1 && v14++ < v13);
      v9 = v16 ^ 1;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_15;
  }

  v9 = 1;
LABEL_16:

  return v9;
}

- (BOOL)containsMultipleItems
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 containsMultipleAssets];

  return v3;
}

- (BOOL)isSorted
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 sortDescriptors];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)ignoreSharedLibraryFilters
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 ignoreSharedLibraryFilters];

  return v3;
}

- (BOOL)includeOthersInSocialGroupAssets
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 includeOthersInSocialGroupAssets];

  return v3;
}

- (id)filterPredicate
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 filterPredicate];

  return v3;
}

- (BOOL)isFiltered
{
  v3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v4 = [v3 filterPredicate];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    v5 = [v6 hasAnyAllowedUUIDs];
  }

  return v5;
}

- (BOOL)startsAtEnd
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 containerCollection];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startsAtEnd];
  }

  else if ([v2 numberOfSections] < 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 assetCollectionForSection:0];
    v5 = [v6 startsAtEnd];
  }

  v7 = [v2 reverseSortOrder];

  return v5 ^ v7;
}

- (int64_t)startingSection
{
  v3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  if ([v3 numberOfSections] < 1)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if ([(PXPhotoKitAssetsDataSource *)self startsAtEnd])
  {
    v4 = [v3 numberOfSections] - 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)endingAssetReference
{
  v10 = *(off_1E7722228 + 8);
  v11 = *(off_1E7722228 + 3);
  v3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  if ([v3 numberOfSections] < 1)
  {
    v4 = *off_1E7722228;
  }

  else
  {
    if ([(PXPhotoKitAssetsDataSource *)self startsAtEnd])
    {
      [(PXPhotoKitAssetsDataSource *)self firstItemIndexPath];
    }

    else
    {
      [(PXPhotoKitAssetsDataSource *)self lastItemIndexPath];
    }

    v4 = v7;
    v10 = v8;
    v11 = v9;
  }

  if (v4 == *off_1E7721F68)
  {
    v5 = 0;
  }

  else
  {
    v7 = v4;
    v8 = v10;
    v9 = v11;
    v5 = [(PXPhotoKitAssetsDataSource *)self assetReferenceAtItemIndexPath:&v7];
  }

  return v5;
}

- (id)startingAssetReference
{
  v10 = *(off_1E7722228 + 8);
  v11 = *(off_1E7722228 + 3);
  v3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  if ([v3 numberOfSections] < 1)
  {
    v4 = *off_1E7722228;
  }

  else
  {
    if ([(PXPhotoKitAssetsDataSource *)self startsAtEnd])
    {
      [(PXPhotoKitAssetsDataSource *)self lastItemIndexPath];
    }

    else
    {
      [(PXPhotoKitAssetsDataSource *)self firstItemIndexPath];
    }

    v4 = v7;
    v10 = v8;
    v11 = v9;
  }

  if (v4 == *off_1E7721F68)
  {
    v5 = 0;
  }

  else
  {
    v7 = v4;
    v8 = v10;
    v9 = v11;
    v5 = [(PXPhotoKitAssetsDataSource *)self assetReferenceAtItemIndexPath:&v7];
  }

  return v5;
}

- (id)assetCollectionReferencesWithParentAssetCollectionReference:(id)a3 assetCollectionReferenceWithSameKeyAssetAsParent:(id *)a4
{
  v4 = a3;
  [v4 assetCollection];
  v47 = v5 = 0x1E6978000uLL;
  if (!v47)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    [v33 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:825 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parentAssetCollectionReference.assetCollection", v35}];
LABEL_30:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v35 = NSStringFromClass(v36);
    v37 = [v47 px_descriptionForAssertionMessage];
    [v33 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:825 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parentAssetCollectionReference.assetCollection", v35, v37}];

    goto LABEL_30;
  }

LABEL_3:
  v43 = v4;
  v6 = [v4 keyAssetReference];
  v7 = [v6 asset];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v7 px_descriptionForAssertionMessage];
      [v38 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:826 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"parentAssetCollectionReference.keyAssetReference.asset", v40, v41}];
    }
  }

  v44 = v7;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(PXPhotoKitAssetsDataSource *)self identifier];
  v9 = [(PXPhotoKitAssetsDataSource *)self numberOfSections];
  v10 = v47;
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v49 = vnegq_f64(v13);
    while (1)
    {
      v50 = v8;
      v51 = v12;
      v52 = v49;
      v14 = [(PXPhotoKitAssetsDataSource *)self assetCollectionAtSectionIndexPath:&v50];
      if ([v14 px_highlightKind] != -1)
      {
        break;
      }

LABEL_17:

      if (v11 == ++v12)
      {
        goto LABEL_22;
      }
    }

    v15 = v14;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        v16 = v5;
        v17 = [v15 parentPhotosHighlight];
        v18 = [v10 objectID];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v20 = [off_1E7721488 alloc];
          v50 = v8;
          v51 = v12;
          v52 = v49;
          v21 = [v20 initWithAssetCollection:v15 keyAssetReference:0 indexPath:&v50];
          [v45 addObject:v21];
          if (a4)
          {
            v22 = [v44 objectID];
            v23 = [v15 keyAssetObjectIDForKind];
            v24 = [v22 isEqual:v23];

            if (v24)
            {
              v25 = v21;
              *a4 = v21;
            }
          }

          v10 = v47;
        }

        v5 = v16;
        goto LABEL_17;
      }

      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v28 = NSStringFromClass(v29);
      v30 = [v15 px_descriptionForAssertionMessage];
      [v26 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:836 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"candidateAssetCollection", v28, v30}];
    }

    else
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [v26 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:836 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"candidateAssetCollection", v28}];
    }

    goto LABEL_11;
  }

LABEL_22:
  if ([v45 count])
  {
    v31 = [v45 copy];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)lastAssetCollection
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 lastAssetCollection];

  return v3;
}

- (id)container
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 container];

  return v3;
}

- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:792 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v10 = [v9 assetsInSection:a3->section];
  v11 = [v10 objectIDAtIndex:a3->item];

  if (!v11)
  {
    v17.receiver = self;
    v17.super_class = PXPhotoKitAssetsDataSource;
    v15 = *&a3->item;
    v16[0] = *&a3->dataSourceIdentifier;
    v16[1] = v15;
    v11 = [(PXPhotoKitAssetsDataSource *)&v17 assetIdentifierAtItemIndexPath:v16];
  }

  return v11;
}

- (id)indexPathSetForObjectIDs:(id)a3
{
  v4 = a3;
  v22 = [v4 count];
  if (v22)
  {
    v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    v21 = [(PXPhotoKitAssetsDataSource *)self identifier];
    v20 = v5;
    v6 = [v5 numberOfSections];
    v23 = [off_1E77217C8 indexPathSet];
    v24 = v6;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
        v10 = [v9 assetsInSection:v8];

        v11 = [v10 fetchedObjectIDsSet];
        v12 = [MEMORY[0x1E695DFA8] setWithSet:v4];
        [v12 intersectSet:v11];
        if ([v12 count])
        {
          v13 = [v10 fetchedObjectIDs];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __55__PXPhotoKitAssetsDataSource_indexPathSetForObjectIDs___block_invoke;
          v27[3] = &unk_1E7731B98;
          v14 = v12;
          v28 = v14;
          v15 = [v13 indexesOfObjectsPassingTest:v27];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __55__PXPhotoKitAssetsDataSource_indexPathSetForObjectIDs___block_invoke_2;
          v25[3] = &unk_1E7731BC0;
          v26 = v15;
          v16 = v4;
          v17 = v15;
          [v23 modifyItemIndexSetForDataSourceIdentifier:v21 section:v8 usingBlock:v25];
          v7 += [v17 count];

          v4 = v16;
          if (v7 == v22)
          {
            break;
          }
        }

        if (v24 == ++v8)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_10:

    v18 = v23;
  }

  else
  {
    v18 = [off_1E7721768 indexPathSet];
  }

  return v18;
}

uint64_t __55__PXPhotoKitAssetsDataSource_indexPathSetForObjectIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) containsObject:v6];
  if (v7)
  {
    [*(a1 + 32) removeObject:v6];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }

  return v7;
}

- (PXSimpleIndexPath)indexPathForObjectID:(SEL)a3
{
  v18 = a4;
  v6 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v7 = [v6 numberOfSections];
  if (v7 < 1)
  {
LABEL_5:
    v14 = *(off_1E7722228 + 1);
    *&retstr->dataSourceIdentifier = *off_1E7722228;
    *&retstr->item = v14;
  }

  else
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v11 = [v10 assetsInSection:v9];

      v12 = [v11 fetchedObjectIDsSet];
      v13 = [v12 containsObject:v18];

      if (v13)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v15 = [v11 fetchedObjectIDs];
    v16 = [v15 indexOfObject:v18];

    retstr->dataSourceIdentifier = [(PXPhotoKitAssetsDataSource *)self identifier];
    retstr->section = v9;
    retstr->item = v16;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)assetCollectionReferenceNearestToObjectReference:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXPhotoKitAssetsDataSource;
  v5 = [(PXPhotoKitAssetsDataSource *)&v7 assetCollectionReferenceNearestToObjectReference:v4];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXPhotoKitAssetsDataSource *)self objectReferenceNearestToObjectReference:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v7 = [v6 options];

  if ((v7 & 0x800) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"PXOptionsHasSpecificValue(self.photosDataSource.options, PXPhotosDataSourceOptionAllowExhaustiveNearestToObjectSearch)"}];
  }

  v8 = [v5 asset];
  v9 = [v8 creationDate];
  v10 = v9;
  if (v9)
  {
    v29 = v5;
    v49 = 0;
    v50 = 0x7FFFFFFFFFFFFFFFLL;
    v47 = 0;
    v48 = 0x7FFFFFFFFFFFFFFFLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke;
    aBlock[3] = &unk_1E7731B20;
    v11 = v9;
    v45 = v11;
    v46 = self;
    v12 = _Block_copy(aBlock);
    v13 = [(PXPhotoKitAssetsDataSource *)self numberOfSections];
    v14 = [(PXPhotoKitAssetsDataSource *)self identifier];
    if (v13 >= 1)
    {
      v15 = v14;
      v16 = 0;
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v30 = vnegq_f64(v17);
      do
      {
        v39 = v15;
        v40 = v16;
        v41 = v30;
        v18 = [(PXPhotoKitAssetsDataSource *)self assetCollectionAtSectionIndexPath:&v39];
        v19 = [v18 startDate];
        v12[2](v12, v16, v19, -1, &v50, &v49);

        v20 = [v18 endDate];
        v12[2](v12, v16, v20, 1, &v48, &v47);

        v16 = (v16 + 1);
      }

      while (v13 != v16);
    }

    v39 = 0;
    v40 = &v39;
    *&v41.f64[0] = 0x4010000000;
    *&v41.f64[1] = &unk_1A561E057;
    v21 = *(off_1E7722228 + 1);
    v42 = *off_1E7722228;
    v43 = v21;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke_2;
    v34[3] = &unk_1E7731B48;
    v34[4] = self;
    v35 = v11;
    v36 = &v39;
    v37 = v38;
    v22 = _Block_copy(v34);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke_3;
    v32[3] = &unk_1E7731B70;
    v32[4] = self;
    v23 = v22;
    v33 = v23;
    v24 = _Block_copy(v32);
    v24[2](v24, v50);
    if (v48 != v50)
    {
      (v24[2])(v24);
    }

    if (v40[4] == *off_1E7721F68)
    {
      v25 = 0;
    }

    else
    {
      v26 = *(v40 + 3);
      v31[0] = *(v40 + 2);
      v31[1] = v26;
      v25 = [(PXPhotoKitAssetsDataSource *)self assetReferenceAtItemIndexPath:v31];
    }

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v39, 8);

    v5 = v29;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, double *a6)
{
  v11 = a3;
  if (v11)
  {
    v15 = v11;
    [v11 timeIntervalSinceDate:*(a1 + 32)];
    v11 = v15;
    v13 = v12 * a4;
    if (v13 >= 0.0 && (*a5 == 0x7FFFFFFFFFFFFFFFLL || v13 < *a6))
    {
      v14 = [*(a1 + 40) numberOfItemsInSection:a2] < 1;
      v11 = v15;
      if (!v14)
      {
        *a5 = a2;
        *a6 = v13;
      }
    }
  }
}

void __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke_2(void *a1, _OWORD *a2)
{
  v4 = a1[4];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  v6 = [v4 assetAtItemIndexPath:v14];
  v7 = [v6 creationDate];

  if (v7)
  {
    [v7 timeIntervalSinceDate:a1[5]];
    v9 = fabs(v8);
    v10 = *(a1[6] + 8);
    v12 = *(v10 + 32);
    v11 = (v10 + 32);
    if (v12 == *off_1E7721F68 || v9 < *(*(a1[7] + 8) + 24))
    {
      v13 = a2[1];
      *v11 = *a2;
      v11[1] = v13;
      *(*(a1[7] + 8) + 24) = v9;
    }
  }
}

uint64_t __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13[10] = v2;
    v13[11] = v3;
    v5 = result;
    v6 = [*(result + 32) identifier];
    result = [*(v5 + 32) numberOfItemsInSection:a2];
    if (result >= 1)
    {
      v9 = result;
      for (i = 0; i != v9; ++i)
      {
        v11 = *(v5 + 40);
        v12 = *(v11 + 16);
        v13[0] = v6;
        v13[1] = a2;
        v13[2] = i;
        v13[3] = 0x7FFFFFFFFFFFFFFFLL;
        result = v12(v11, v13, v7, v8);
      }
    }
  }

  return result;
}

- (id)_assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v7 = [v6 options];

  if ((v7 & 0x80) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"PXOptionsHasSpecificValue(photosDataSourceOptions, PXPhotosDataSourceOptionAssetCollectionsAreSortedByIncreasingCreationDate)"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 asset];
    v9 = [v8 creationDate];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v10 = v5;
  v11 = [v10 keyAssetReference];
  v8 = [v11 asset];

  if (!v8)
  {
    v12 = [v10 assetCollection];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        if ([v12 assetCollectionSubtype] == 1000000301)
        {
          v9 = [v12 startDate];
          v8 = 0;
        }

        else
        {
          v13 = PLCuratedLibraryGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v10;
            _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Missing key curated asset in %@. Degrading gracefully, but transitions might not work as expected.", &buf, 0xCu);
          }

          v8 = [(PXPhotoKitAssetsDataSource *)self _fastKeyCuratedAssetForAssetCollection:v12];
          v9 = [v8 creationDate];
        }

        goto LABEL_17;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      v21 = [v12 px_descriptionForAssertionMessage];
      [v17 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:557 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v19, v21}];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v17 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:557 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v19}];
    }

    goto LABEL_11;
  }

  v9 = [v8 creationDate];
LABEL_17:

LABEL_18:
  if (v9)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x4010000000;
    v24 = &unk_1A561E057;
    memset(v25, 0, sizeof(v25));
    *&v25[0] = [(PXPhotoKitAssetsDataSource *)self identifier];
    *(v25 + 8) = xmmword_1A5380D10;
    *(&v25[1] + 1) = 0x7FFFFFFFFFFFFFFFLL;
    [(PXPhotoKitAssetsDataSource *)self numberOfSections];
    v9;
    PXLastIndexInSortedRangePassingTest();
  }

LABEL_20:
  v14 = 0;

  return 0;
}

BOOL __118__PXPhotoKitAssetsDataSource__assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[6] + 8) + 40) = a2;
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 48);
  v12[0] = *(v4 + 32);
  v12[1] = v5;
  v6 = [v3 assetCollectionAtSectionIndexPath:v12];
  v7 = [v6 startDate];
  v8 = v7;
  if (v7)
  {
    [v7 timeIntervalSinceDate:a1[5]];
    v10 = v9 <= 0.0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __118__PXPhotoKitAssetsDataSource__assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  *(*(a1[6] + 8) + 40) = a2;
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 48);
  v11[0] = *(v7 + 32);
  v11[1] = v8;
  v9 = [v6 assetsInSectionIndexPath:v11];
  v10 = [v9 containsObject:a1[5]];

  if (v10)
  {
    *(*(a1[7] + 8) + 24) = a2;
    *a3 = 1;
  }
}

- (id)objectReferenceNearestToObjectReference:(id)a3 inSection:(int64_t)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = [v8 options];

  if (v7)
  {
    [v7 indexPath];
    v10 = v55;
  }

  else
  {
    v10 = 0;
    v55 = 0u;
    v56 = 0u;
  }

  if (v10 == [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7;
  if (v11)
  {
    goto LABEL_57;
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v54.receiver = self;
    v54.super_class = PXPhotoKitAssetsDataSource;
    v13 = [(PXPhotoKitAssetsDataSource *)&v54 objectReferenceNearestToObjectReference:v7];
  }

  else
  {
    *buf = 0u;
    v58 = 0u;
    [(PXPhotoKitAssetsDataSource *)self _indexPathForObjectReference:v7 restrictedToSection:a4];
    if (!*off_1E7721F68)
    {
      goto LABEL_13;
    }

    v52 = *buf;
    v53 = v58;
    v13 = [(PXPhotoKitAssetsDataSource *)self objectReferenceAtIndexPath:&v52];
  }

  v12 = v13;
  if (v13)
  {
    goto LABEL_57;
  }

LABEL_13:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 & 0x800) != 0 && ([(PXPhotoKitAssetsDataSource *)self _assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch:v7], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (v9 & 0x80) != 0 && ([(PXPhotoKitAssetsDataSource *)self _assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate:v7], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v14;
    goto LABEL_57;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 itemObject], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
  {
    v12 = 0;
    goto LABEL_57;
  }

  v17 = v7;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_23;
    }

    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = objc_opt_class();
    v40 = NSStringFromClass(v44);
    v45 = [v17 px_descriptionForAssertionMessage];
    [v38 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:463 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference", v40, v45}];
  }

  else
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [v38 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:463 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference", v40}];
  }

LABEL_23:
  v18 = [v17 asset];
  if (!v18)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    [v41 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v43}];
LABEL_65:

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = objc_opt_class();
    v43 = NSStringFromClass(v46);
    v47 = [v18 px_descriptionForAssertionMessage];
    [v41 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v43, v47}];

    goto LABEL_65;
  }

LABEL_25:
  assetReferenceNearestToAssetCache = self->_assetReferenceNearestToAssetCache;
  if (!assetReferenceNearestToAssetCache)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v21 = self->_assetReferenceNearestToAssetCache;
    self->_assetReferenceNearestToAssetCache = v20;

    assetReferenceNearestToAssetCache = self->_assetReferenceNearestToAssetCache;
  }

  v12 = [(NSCache *)assetReferenceNearestToAssetCache objectForKey:v18];
  if (!v12)
  {
    if ([(PXPhotoKitAssetsDataSource *)self containsAnyItems])
    {
      if (a4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *buf = 0u;
        v58 = 0u;
        if (v7)
        {
          [v17 indexPath];
        }

        v22 = [off_1E7721488 alloc];
        v23 = [v17 assetCollection];
        v24.f64[0] = NAN;
        v24.f64[1] = NAN;
        v52 = *buf;
        v53 = vnegq_f64(v24);
        v48 = v53;
        v25 = [v22 initWithAssetCollection:v23 keyAssetReference:0 indexPath:&v52];

        [(PXPhotoKitAssetsDataSource *)self indexPathForAssetCollectionReference:v25];
        v26 = v52;
        v27 = *off_1E7721F68;
        if (v52 == *off_1E7721F68)
        {
          v28 = *&buf[8];
          v29 = [(PXPhotoKitAssetsDataSource *)self numberOfSections]- 1;
          if (v28 < v29)
          {
            v29 = v28;
          }

          v30 = v29 & ~(v29 >> 63);
          v26 = [(PXPhotoKitAssetsDataSource *)self identifier];
          v31 = v48;
        }

        else
        {
          v30 = *(&v52 + 1);
          v31 = v53;
        }

        v50[0] = v26;
        v50[1] = v30;
        v51 = v31;
        [(PXPhotoKitAssetsDataSource *)self firstNonEmptySectionAtOrBeforeSection:v50];
        a4 = *(&v52 + 1);
        v32 = v52;
        if (v52 == v27)
        {
          [(PXPhotoKitAssetsDataSource *)self firstItemIndexPath];
          v32 = v27;
          if (v52 != v27)
          {
            [(PXPhotoKitAssetsDataSource *)self firstItemIndexPath];
            a4 = *(&v52 + 1);
            v32 = v52;
          }
        }
      }

      else
      {
        v32 = [(PXPhotoKitAssetsDataSource *)self identifier];
        v27 = *off_1E7721F68;
      }

      if (v32 == v27)
      {
        PXAssertGetLog();
      }

      v33 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v34 = [v33 assetsInSection:a4];
      v35 = [v34 px_indexOfSortedAssetNearestToAsset:v18];
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (![v34 count])
        {
          goto LABEL_54;
        }

        if (v7)
        {
          [v17 indexPath];
          v35 = v49;
        }

        else
        {
          v35 = 0;
        }

        v36 = [v34 count];
        if (v35 >= v36 - 1)
        {
          v35 = v36 - 1;
        }

        if (v35 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_54:
          PXAssertGetLog();
        }
      }

      *buf = [(PXPhotoKitAssetsDataSource *)self identifier];
      *&buf[8] = a4;
      *&v58.f64[0] = v35;
      v58.f64[1] = NAN;
      v12 = [(PXPhotoKitAssetsDataSource *)self assetReferenceAtItemIndexPath:buf];
      [(NSCache *)self->_assetReferenceNearestToAssetCache setObject:v12 forKey:v18];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_57:

  return v12;
}

- (id)_fastKeyCuratedAssetForAssetCollection:(id)a3
{
  v4 = a3;
  fetchedKeyAssetByAssetCollectionLocalIdentifierCache = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
  if (!fetchedKeyAssetByAssetCollectionLocalIdentifierCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v7 = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
    self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache = v6;

    fetchedKeyAssetByAssetCollectionLocalIdentifierCache = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
  }

  v8 = [v4 localIdentifier];
  v9 = [(NSCache *)fetchedKeyAssetByAssetCollectionLocalIdentifierCache objectForKey:v8];

  if (!v9)
  {
    if ([v4 px_supportsFastCuration])
    {
      v10 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v11 = [v10 photoLibrary];
      v12 = [PXPhotosAssetsFetcher sharedFetcherForPhotoLibrary:v11];

      v13 = objc_alloc_init(PXPhotosAssetsFetcherConfiguration);
      [(PXPhotosAssetsFetcherConfiguration *)v13 setCurationKind:5];
      [(PXPhotosAssetsFetcherConfiguration *)v13 setLibraryFilter:[(PXPhotoKitAssetsDataSource *)self libraryFilter]];
      v14 = [v12 fetchAssetsInContainer:v4 configuration:v13];
      v9 = [v14 firstObject];

      if (!v9)
      {
        v9 = [MEMORY[0x1E695DFB0] null];
      }

      v15 = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
      v16 = [v4 localIdentifier];
      [(NSCache *)v15 setObject:v9 forKey:v16];
    }

    else
    {
      v9 = 0;
    }
  }

  v17 = [MEMORY[0x1E695DFB0] null];

  if (v9 == v17)
  {

    v9 = 0;
  }

  return v9;
}

- (id)primaryFaceForAssetAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = *&a3->item;
  v9[0] = *&a3->dataSourceIdentifier;
  v9[1] = v5;
  v6 = [v4 facesAtSimpleIndexPath:v9];

  v7 = [v6 firstObject];

  return v7;
}

- (BOOL)getAssetCounts:(id *)a3 guestAssetCounts:(id *)a4 allowFetch:(BOOL)a5
{
  v26 = a5;
  v7 = *off_1E7721F78;
  v6 = *(off_1E7721F78 + 1);
  v8 = *(off_1E7721F78 + 2);
  v9 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v10 = [v9 photoLibrary];
  v28 = [PXPhotosMetadataFetcher sharedFetcherForPhotoLibrary:v10];

  v11 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v12 = [(PXPhotoKitAssetsDataSource *)self numberOfSections];
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = v7;
    v17 = v6;
    v18 = v8;
    v27 = v8;
    v29 = v8;
    while (1)
    {
      v19 = [v11 assetsInSection:v15];
      if (v19)
      {
        v20 = v19;
        v32 = *off_1E7721F78;
        v33 = v27;
        v25 = v32;
        v30 = v32;
        v31 = v27;
        if (![v28 getAssetCounts:&v32 guestAssetCounts:&v30 forFetchResult:v19 allowFetch:v26])
        {
          v7 = *off_1E7721F70;
          v6 = *(off_1E7721F70 + 1);
          v18 = *(off_1E7721F70 + 2);

          v29 = v18;
          goto LABEL_15;
        }

        v21 = [v11 assetCollectionForSection:v15];
        if (([v21 px_isAllPhotosSmartAlbum] & 1) != 0 || objc_msgSend(v21, "px_isRecentsSmartAlbum"))
        {
          PXDisplayAssetDetailedCountsSubtract();
        }

        if ([v21 px_isContentSyndicationAlbum])
        {
          v30 = v25;
          v31 = v27;
        }

        v7 += v32;
        v6 += *(&v32 + 1);
        v18 += v33;
        v16 += v30;
        v17 += *(&v30 + 1);
        v29 += v31;
      }

      v14 = ++v15 >= v13;
      if (v13 == v15)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = 1;
  v29 = v8;
  v18 = v8;
LABEL_15:
  v17 = v6;
  v16 = v7;
LABEL_16:
  if (a3)
  {
    a3->var0 = v7;
    a3->var1 = v6;
    a3->var2 = v18;
  }

  if (a4)
  {
    a4->var0 = v16;
    a4->var1 = v17;
    a4->var2 = v29;
  }

  return v14;
}

- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [v4 estimatedAssetsCountWithEnrichmentState:v3];

  return v5;
}

- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [v4 numberOfSectionsWithEnrichmentState:v3];

  return v5;
}

- (BOOL)hasCurationForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 hasCurationForAssetCollection:v4];

  return v6;
}

- (int64_t)numberOfCuratedItemsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 curatedAssetsForAssetCollection:v4];

  v7 = [v6 count];
  return v7;
}

- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 uncuratedAssetsForAssetCollection:v4];

  v7 = [v6 count];
  return v7;
}

- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [v7 curatedAssetsInSection:a3->section];
  v9 = [v8 count];

  return v9;
}

- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [v7 uncuratedAssetsInSection:a3->section];
  v9 = [v8 count];

  return v9;
}

- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [v7 uncuratedAssetsInSection:a3->section];

  return v8;
}

- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [v7 curatedAssetsInSection:a3->section];

  return v8;
}

- (PXSimpleIndexPath)keyAssetIndexPathForSectionIndexPath:(SEL)a3
{
  dataSourceIdentifier = a4->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  v9 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v10 = [v9 keyAssetIndexInSection:a4->section];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = *(off_1E7722228 + 1);
    *&retstr->dataSourceIdentifier = *off_1E7722228;
    *&retstr->item = v12;
  }

  else
  {
    result = [(PXPhotoKitAssetsDataSource *)self identifier];
    section = a4->section;
    retstr->dataSourceIdentifier = result;
    retstr->section = section;
    retstr->item = v10;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)keyAssetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 sectionForAssetCollection:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 keyAssetsInSection:v6];
  }

  return v7;
}

- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [v7 keyAssetsInSection:a3->section];

  return v8;
}

- (PXSimpleIndexPath)_indexPathForSavedSyndicatedAssetReference:(SEL)a3
{
  v7 = a4;
  v8 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v8;
  v9 = [v7 asset];
  if (!PXDisplayAssetIsSyndicatedAndUnsaved(v9))
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:271 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"removedDisplayAsset", v16}];
LABEL_12:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v10 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:271 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"removedDisplayAsset", v16, v18}];

    goto LABEL_12;
  }

LABEL_4:
  [v10 fetchPropertySetsIfNeeded];
  v11 = [v10 curationProperties];
  v12 = [v11 syndicationIdentifier];

  if (v12)
  {
    if (v7)
    {
      [v7 indexPath];
    }

    PXIndexPathFromSimpleIndexPath();
  }

LABEL_9:
  return result;
}

- (PXSimpleIndexPath)_indexPathForObjectReference:(SEL)a3 restrictedToSection:(id)a4
{
  v9 = a4;
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v55.receiver = self;
  v55.super_class = PXPhotoKitAssetsDataSource;
  [(PXSimpleIndexPath *)&v55 indexPathForObjectReference:v9];
  dataSourceIdentifier = retstr->dataSourceIdentifier;
  if (retstr->dataSourceIdentifier != *off_1E7721F68)
  {
    goto LABEL_49;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_43;
    }

    v14 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    v15 = v9;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }

      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v43 = NSStringFromClass(v45);
      v46 = [v15 px_descriptionForAssertionMessage];
      [v41 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:252 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference", v43, v46}];
    }

    else
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      [v41 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:252 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference", v43}];
    }

LABEL_9:
    v16 = [v15 assetCollection];
    v17 = [v14 sectionForAssetCollection:v16];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      retstr->dataSourceIdentifier = [(PXPhotoKitAssetsDataSource *)self identifier];
      retstr->section = v17;
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      *&retstr->item = vnegq_f64(v18);
    }

    goto LABEL_43;
  }

  v11 = v9;
  v54 = 0;
  v12 = [(PXPhotoKitAssetsDataSource *)self changeDetails];
  v13 = v12;
  if (v11)
  {
    [v11 indexPath];
    if (v13)
    {
LABEL_5:
      [v13 indexPathAfterApplyingChangesToIndexPath:v51 hasIncrementalChanges:&v54 objectChanged:0];
      goto LABEL_13;
    }
  }

  else
  {
    memset(v51, 0, sizeof(v51));
    if (v12)
    {
      goto LABEL_5;
    }
  }

  v52 = 0u;
  v53 = 0u;
LABEL_13:
  v19 = v53;
  *&retstr->dataSourceIdentifier = v52;
  *&retstr->item = v19;

  v20 = [v11 asset];
  v21 = v20;
  if (retstr->dataSourceIdentifier == dataSourceIdentifier)
  {
    if (v54)
    {
      if (PXDisplayAssetIsSyndicatedAndUnsaved(v20))
      {
        [(PXPhotoKitAssetsDataSource *)self _indexPathForSavedSyndicatedAssetReference:v11];
        v22 = v53;
        *&retstr->dataSourceIdentifier = v52;
        *&retstr->item = v22;
      }

      goto LABEL_42;
    }

    v23 = [v11 asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v26 = v25;
      if (a5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 asset];
        objc_claimAutoreleasedReturnValue();
        if (v11)
        {
          [v11 indexPath];
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        PXIndexPathFromSimpleIndexPath();
      }

      if ([v25 numberOfSections] > a5)
      {
        v29 = [v26 assetCollectionForSection:a5];
        if (v29)
        {
          v30 = v29;
          v49 = [v11 asset];
          v31 = [v26 indexPathForAsset:? inCollection:?];

          if (v31)
          {

            goto LABEL_40;
          }
        }
      }

      if (PXDisplayAssetIsSyndicatedAndUnsaved(v21))
      {
        [(PXPhotoKitAssetsDataSource *)self _indexPathForSavedSyndicatedAssetReference:v11];
        v32 = v53;
        *&retstr->dataSourceIdentifier = v52;
        *&retstr->item = v32;
      }
    }

    else
    {
      v26 = [v11 asset];
      if (objc_opt_respondsToSelector())
      {
        v27 = [v26 uuid];
        if (v27)
        {
          v48 = v27;
          if (objc_opt_respondsToSelector())
          {
            v28 = [v26 burstIdentifier];
          }

          else
          {
            v28 = 0;
          }

          objc_opt_class();
          v50 = v26;
          if (objc_opt_isKindOfClass())
          {
            v47 = v28;
          }

          else
          {

            v47 = 0;
          }

          v34 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
          v35 = [v34 indexPathForLastAsset];

          v36 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
          v33 = [v36 indexPathForAssetWithUUID:v48 orBurstIdentifier:v47 hintIndexPath:v35 hintCollection:0];

          if (v33)
          {
LABEL_40:
            [(PXPhotoKitAssetsDataSource *)self identifier];
            PXSimpleIndexPathFromIndexPath();
          }

          goto LABEL_41;
        }
      }
    }

    v33 = 0;
LABEL_41:
  }

LABEL_42:

LABEL_43:
  if (retstr->dataSourceIdentifier != dataSourceIdentifier)
  {
    section = retstr->section;
    if (section >= [(PXPhotoKitAssetsDataSource *)self numberOfSections])
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      [v40 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:259 description:@"Section must be valid"];
    }

    item = retstr->item;
    if (item != 0x7FFFFFFFFFFFFFFFLL && item >= [(PXPhotoKitAssetsDataSource *)self numberOfItemsInSection:retstr->section])
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      [v44 handleFailureInMethod:a3 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:260 description:@"Item must be valid"];
    }
  }

LABEL_49:

  return result;
}

- (id)objectReferenceAtIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = *off_1E7721F68;
  if (a3->dataSourceIdentifier != *off_1E7721F68 && a3->section != 0x7FFFFFFFFFFFFFFFLL && a3->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *&a3->item;
    v20 = *&a3->dataSourceIdentifier;
    v21 = v10;
    v11 = [(PXPhotoKitAssetsDataSource *)self assetCollectionAtSectionIndexPath:&v20];
    v20 = 0u;
    v21 = 0u;
    v12 = *&a3->item;
    v18 = *&a3->dataSourceIdentifier;
    v19 = v12;
    [(PXPhotoKitAssetsDataSource *)self keyAssetIndexPathForSectionIndexPath:&v18];
    if (v20 == v5)
    {
      v13 = 0;
    }

    else
    {
      v18 = v20;
      v19 = v21;
      v13 = [(PXPhotoKitAssetsDataSource *)self assetReferenceAtItemIndexPath:&v18];
    }

    v14 = [off_1E7721488 alloc];
    v15 = *&a3->item;
    v18 = *&a3->dataSourceIdentifier;
    v19 = v15;
    v9 = [v14 initWithAssetCollection:v11 keyAssetReference:v13 indexPath:&v18];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXPhotoKitAssetsDataSource;
    v8 = *&a3->item;
    v20 = *&a3->dataSourceIdentifier;
    v21 = v8;
    v9 = [(PXPhotoKitAssetsDataSource *)&v17 objectReferenceAtIndexPath:&v20];
  }

  return v9;
}

- (BOOL)isFilteringDisabledForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 infoForAssetCollection:v4];

  LOBYTE(v5) = [v6 explicitlyDisableFilters];
  return v5;
}

- (BOOL)isFilteringAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 infoForAssetCollection:v4];

  LOBYTE(v5) = [v6 UUIDFilterHidesSomeAssets];
  return v5;
}

- (unint64_t)estimatedOtherCount
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 estimatedOtherCount];

  return v3;
}

- (unint64_t)estimatedVideosCount
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 estimatedVideosCount];

  return v3;
}

- (unint64_t)estimatedPhotosCount
{
  v2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 estimatedPhotosCount];

  return v3;
}

- (unint64_t)estimatedAssetCountForSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [v4 assetCollectionForSection:a3->section];
  v6 = [v5 estimatedAssetCount];

  return v6;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  v6 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v7 = [v6 assetsInSection:a3->section];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 emptyAssetsFetchResult];
  }

  v10 = v9;

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == [self identifier]"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_12;
  }

  if (a3->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3->section != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v8 = [v7 assetCollectionForSection:a3->section];
      goto LABEL_9;
    }

LABEL_12:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v13 = *&a3->item;
    v14 = *&a3->dataSourceIdentifier;
    v15 = v13;
    PXSimpleIndexPathDescription();
  }

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v7 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = *&a3->item;
  v14 = *&a3->dataSourceIdentifier;
  v15 = v9;
  v8 = [v7 assetAtSimpleIndexPath:&v14];
LABEL_9:
  v10 = v8;

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [v4 numberOfItemsInSection:a3];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PXPhotoKitAssetsDataSource;
  v4 = [(PXPhotoKitAssetsDataSource *)&v9 description];
  v5 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [(PXPhotoKitAssetsDataSource *)self container];
  v7 = [v3 stringWithFormat:@"<%@ photosDataSource:%@, container:%@>", v4, v5, v6];

  return v7;
}

- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)a3 withChangeDetails:(id)a4
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = PXPhotoKitAssetsDataSource;
  v10 = [(PXPhotoKitAssetsDataSource *)&v15 init];
  if (v10)
  {
    if (([v8 options] & 4) == 0)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v10 file:@"PXPhotoKitAssetsDataSource.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"([immutablePhotosDataSource options] & PXPhotosDataSourceOptionDisableChangeHandling) == PXPhotosDataSourceOptionDisableChangeHandling"}];
    }

    objc_storeStrong(&v10->_photosDataSource, a3);
    objc_storeStrong(&v10->_changeDetails, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    layoutItemByAssetCache = v10->_layoutItemByAssetCache;
    v10->_layoutItemByAssetCache = v11;
  }

  return v10;
}

- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)a3 withChange:(id)a4
{
  v6 = a3;
  v7 = [a4 sectionedDataSourceChangeDetails];
  v8 = [(PXPhotoKitAssetsDataSource *)self initWithImmutablePhotosDataSource:v6 withChangeDetails:v7];

  return v8;
}

+ (PXPhotoKitAssetsDataSource)dataSourceWithAssetCollections:(id)a3
{
  v3 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:a3 title:0];
  v4 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v3 options:0];
  v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v4 options:4];
  v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
  v7 = [[PXPhotoKitAssetsDataSource alloc] initWithImmutablePhotosDataSource:v6 withChange:0];

  return v7;
}

+ (PXPhotoKitAssetsDataSource)dataSourceWithAssets:(id)a3 userInfo:(id)a4 transientIdentifier:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (![v11 count])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetsDataSource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"assets.count > 0"}];
  }

  v12 = MEMORY[0x1E6978650];
  v13 = [v11 firstObject];
  v14 = [v13 photoLibrary];
  v15 = [v12 transientAssetCollectionWithAssets:v11 title:0 identifier:v9 photoLibrary:v14];

  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [a1 dataSourceWithAssetCollections:v16];

  [v17 setUserInfo:v10];

  return v17;
}

+ (PXPhotoKitAssetsDataSource)dataSourceWithAsset:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetsDataSource.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [a1 dataSourceWithAssets:v6];

  return v7;
}

- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)a3
{
  v4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v5;
  LOBYTE(a3) = [v4 isAssetAtIndexPathPartOfCuratedSet:v7];

  return a3;
}

@end