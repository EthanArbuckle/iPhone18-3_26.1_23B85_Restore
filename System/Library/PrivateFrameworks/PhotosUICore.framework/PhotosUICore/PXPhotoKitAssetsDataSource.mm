@interface PXPhotoKitAssetsDataSource
+ (PXPhotoKitAssetsDataSource)dataSourceWithAsset:(id)asset;
+ (PXPhotoKitAssetsDataSource)dataSourceWithAssetCollections:(id)collections;
+ (PXPhotoKitAssetsDataSource)dataSourceWithAssets:(id)assets userInfo:(id)info transientIdentifier:(id)identifier;
- (BOOL)areAllSectionsConsideredAccurate;
- (BOOL)containsAnyItems;
- (BOOL)containsMultipleItems;
- (BOOL)couldObjectReferenceAppear:(id)appear;
- (BOOL)getAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts allowFetch:(BOOL)fetch;
- (BOOL)hasCurationForAssetCollection:(id)collection;
- (BOOL)ignoreSharedLibraryFilters;
- (BOOL)includeOthersInSocialGroupAssets;
- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)set;
- (BOOL)isFiltered;
- (BOOL)isFilteringAssetCollection:(id)collection;
- (BOOL)isFilteringDisabledForAssetCollection:(id)collection;
- (BOOL)isSectionConsideredAccurate:(int64_t)accurate;
- (BOOL)isSorted;
- (BOOL)startsAtEnd;
- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)source withChange:(id)change;
- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)source withChangeDetails:(id)details;
- (PXSimpleIndexPath)_indexPathForObjectReference:(SEL)reference restrictedToSection:(id)section;
- (PXSimpleIndexPath)_indexPathForSavedSyndicatedAssetReference:(SEL)reference;
- (PXSimpleIndexPath)indexPathForObjectID:(SEL)d;
- (PXSimpleIndexPath)keyAssetIndexPathForSectionIndexPath:(SEL)path;
- (id)_assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate:(id)date;
- (id)_assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch:(id)search;
- (id)_fastKeyCuratedAssetForAssetCollection:(id)collection;
- (id)assetCollectionReferenceNearestToObjectReference:(id)reference;
- (id)assetCollectionReferencesWithParentAssetCollectionReference:(id)reference assetCollectionReferenceWithSameKeyAssetAsParent:(id *)parent;
- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)container;
- (id)containerCollection;
- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)description;
- (id)endingAssetReference;
- (id)fetchAllItemObjects;
- (id)fetchAssetSortDatesForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)path dateRangeEliminationBlock:(id)block;
- (id)filterPredicate;
- (id)firstAssetCollection;
- (id)indexPathSetForObjectIDs:(id)ds;
- (id)inputForItem:(id)item;
- (id)keyAssetsForAssetCollection:(id)collection;
- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)lastAssetCollection;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectReferenceAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectReferenceNearestToObjectReference:(id)reference inSection:(int64_t)section;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (id)primaryFaceForAssetAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)selectionSnapshotForAsset:(id)asset assetCollection:(id)collection;
- (id)selectionSnapshotForAssetsByAssetCollection:(id)collection;
- (id)sortDescriptorsForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)startingAssetReference;
- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)state;
- (int64_t)identifier;
- (int64_t)libraryFilter;
- (int64_t)numberOfCuratedItemsInAssetCollection:(id)collection;
- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)state;
- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)collection;
- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)startingSection;
- (unint64_t)estimatedAssetCountForSectionIndexPath:(PXSimpleIndexPath *)path;
- (unint64_t)estimatedOtherCount;
- (unint64_t)estimatedPhotosCount;
- (unint64_t)estimatedVideosCount;
- (unint64_t)sortOrderForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)path;
- (void)prefetchIndexPaths:(id)paths level:(unint64_t)level;
- (void)prefetchSections:(id)sections;
@end

@implementation PXPhotoKitAssetsDataSource

- (int64_t)identifier
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  versionIdentifier = [photosDataSource versionIdentifier];

  return versionIdentifier;
}

- (id)firstAssetCollection
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  firstAssetCollection = [photosDataSource firstAssetCollection];

  return firstAssetCollection;
}

- (BOOL)containsAnyItems
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  isEmpty = [photosDataSource isEmpty];

  return isEmpty ^ 1;
}

- (int64_t)numberOfSections
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  numberOfSections = [photosDataSource numberOfSections];

  return numberOfSections;
}

- (BOOL)areAllSectionsConsideredAccurate
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  areAllSectionsConsideredAccurate = [photosDataSource areAllSectionsConsideredAccurate];

  return areAllSectionsConsideredAccurate;
}

- (int64_t)libraryFilter
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  libraryFilter = [photosDataSource libraryFilter];

  return libraryFilter;
}

- (id)containerCollection
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  containerCollection = [photosDataSource containerCollection];

  return containerCollection;
}

- (id)fetchAssetSortDatesForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)path dateRangeEliminationBlock:(id)block
{
  v5 = *&path->item;
  v10 = *&path->dataSourceIdentifier;
  v11 = v5;
  blockCopy = block;
  v7 = [(PXPhotoKitAssetsDataSource *)self assetsInSectionIndexPath:&v10];
  v8 = [v7 px_fetchAssetSortDatesWithDateRangeEliminationBlock:{blockCopy, v10, v11}];

  return v8;
}

- (id)sortDescriptorsForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXPhotoKitAssetsDataSource *)self assetsInSectionIndexPath:v7];
  fetchSortDescriptors = [v4 fetchSortDescriptors];

  return fetchSortDescriptors;
}

- (unint64_t)sortOrderForFetchResultAtSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXPhotoKitAssetsDataSource *)self assetsInSectionIndexPath:v7];
  px_sortOrder = [v4 px_sortOrder];

  return px_sortOrder;
}

- (id)selectionSnapshotForAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  indexPathSet = [off_1E77217C8 indexPathSet];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __74__PXPhotoKitAssetsDataSource_selectionSnapshotForAssetsByAssetCollection___block_invoke;
  v15 = &unk_1E773DC48;
  v16 = photosDataSource;
  v17 = indexPathSet;
  v7 = indexPathSet;
  v8 = photosDataSource;
  [collectionCopy enumerateKeysAndObjectsUsingBlock:&v12];

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

- (id)selectionSnapshotForAsset:(id)asset assetCollection:(id)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = [photosDataSource indexPathForAsset:assetCopy inCollection:collectionCopy];

  v12[0] = [photosDataSource versionIdentifier];
  v12[1] = [v9 section];
  v12[2] = [v9 item];
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [[off_1E77218D8 alloc] initWithDataSource:self selectedIndexPath:v12];

  return v10;
}

- (id)inputForItem:(id)item
{
  itemCopy = item;
  identifier = [(PXPhotoKitAssetsDataSource *)self identifier];
  px_section = [itemCopy px_section];
  px_item = [itemCopy px_item];
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  px_section2 = [itemCopy px_section];

  v10 = [photosDataSource assetCollectionForSection:px_section2];

  photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  LODWORD(px_section2) = [photosDataSource2 wantsCurationForAssetCollection:v10];

  photosDataSource3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v19[0] = identifier;
  v19[1] = px_section;
  v19[2] = px_item;
  v19[3] = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [photosDataSource3 assetAtSimpleIndexPath:v19];

  if (px_section2)
  {
    objectID = [v13 objectID];
    v15 = [(NSMutableDictionary *)self->_layoutItemByAssetCache objectForKey:objectID];
    if (!v15)
    {
      photosDataSource4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      [photosDataSource4 weightForAsset:v13];

      v17 = [off_1E7721790 alloc];
      [v13 size];
      v15 = [v17 initWithSize:? weight:?];
      [(NSMutableDictionary *)self->_layoutItemByAssetCache setObject:v15 forKey:objectID];
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
    photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    fetchAllItemObjects = [photosDataSource assetsInSection:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXPhotoKitAssetsDataSource;
    fetchAllItemObjects = [(PXPhotoKitAssetsDataSource *)&v6 fetchAllItemObjects];
  }

  return fetchAllItemObjects;
}

- (void)prefetchSections:(id)sections
{
  sectionsCopy = sections;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  [photosDataSource prefetchAssetsInSections:sectionsCopy];
}

- (void)prefetchIndexPaths:(id)paths level:(unint64_t)level
{
  v5 = level == 1;
  pathsCopy = paths;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  [photosDataSource prefetchAssetsAtIndexPaths:pathsCopy onlyThumbnailAssets:v5];
}

- (BOOL)isSectionConsideredAccurate:(int64_t)accurate
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  LOBYTE(accurate) = [photosDataSource isSectionConsideredAccurate:accurate];

  return accurate;
}

- (BOOL)couldObjectReferenceAppear:(id)appear
{
  appearCopy = appear;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = appearCopy;
    photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    asset = [v5 asset];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEmpty = [photosDataSource isEmpty];

      if (isEmpty)
      {
        v9 = 1;
LABEL_15:

        goto LABEL_16;
      }

      asset2 = [v5 asset];
      px_isSharedAlbumAsset = [asset2 px_isSharedAlbumAsset];

      numberOfSections = [photosDataSource numberOfSections];
      if (numberOfSections < 1)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v13 = numberOfSections;
      asset = 0;
      v14 = 1;
      do
      {
        v15 = asset;
        asset = [photosDataSource assetCollectionForSection:v14 - 1];

        v16 = px_isSharedAlbumAsset ^ [asset px_isSharedAlbum];
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
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  containsMultipleAssets = [photosDataSource containsMultipleAssets];

  return containsMultipleAssets;
}

- (BOOL)isSorted
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  sortDescriptors = [photosDataSource sortDescriptors];
  v4 = sortDescriptors != 0;

  return v4;
}

- (BOOL)ignoreSharedLibraryFilters
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  ignoreSharedLibraryFilters = [photosDataSource ignoreSharedLibraryFilters];

  return ignoreSharedLibraryFilters;
}

- (BOOL)includeOthersInSocialGroupAssets
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  includeOthersInSocialGroupAssets = [photosDataSource includeOthersInSocialGroupAssets];

  return includeOthersInSocialGroupAssets;
}

- (id)filterPredicate
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  filterPredicate = [photosDataSource filterPredicate];

  return filterPredicate;
}

- (BOOL)isFiltered
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  filterPredicate = [photosDataSource filterPredicate];
  if (filterPredicate)
  {
    hasAnyAllowedUUIDs = 1;
  }

  else
  {
    photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    hasAnyAllowedUUIDs = [photosDataSource2 hasAnyAllowedUUIDs];
  }

  return hasAnyAllowedUUIDs;
}

- (BOOL)startsAtEnd
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  containerCollection = [photosDataSource containerCollection];
  v4 = containerCollection;
  if (containerCollection)
  {
    startsAtEnd = [containerCollection startsAtEnd];
  }

  else if ([photosDataSource numberOfSections] < 1)
  {
    startsAtEnd = 0;
  }

  else
  {
    v6 = [photosDataSource assetCollectionForSection:0];
    startsAtEnd = [v6 startsAtEnd];
  }

  reverseSortOrder = [photosDataSource reverseSortOrder];

  return startsAtEnd ^ reverseSortOrder;
}

- (int64_t)startingSection
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  if ([photosDataSource numberOfSections] < 1)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if ([(PXPhotoKitAssetsDataSource *)self startsAtEnd])
  {
    v4 = [photosDataSource numberOfSections] - 1;
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
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  if ([photosDataSource numberOfSections] < 1)
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
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  if ([photosDataSource numberOfSections] < 1)
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

- (id)assetCollectionReferencesWithParentAssetCollectionReference:(id)reference assetCollectionReferenceWithSameKeyAssetAsParent:(id *)parent
{
  referenceCopy = reference;
  [referenceCopy assetCollection];
  v47 = v5 = 0x1E6978000uLL;
  if (!v47)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:825 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parentAssetCollectionReference.assetCollection", v35}];
LABEL_30:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v35 = NSStringFromClass(v36);
    px_descriptionForAssertionMessage = [v47 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:825 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parentAssetCollectionReference.assetCollection", v35, px_descriptionForAssertionMessage}];

    goto LABEL_30;
  }

LABEL_3:
  v43 = referenceCopy;
  keyAssetReference = [referenceCopy keyAssetReference];
  asset = [keyAssetReference asset];

  if (asset)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      px_descriptionForAssertionMessage2 = [asset px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:826 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"parentAssetCollectionReference.keyAssetReference.asset", v40, px_descriptionForAssertionMessage2}];
    }
  }

  v44 = asset;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  identifier = [(PXPhotoKitAssetsDataSource *)self identifier];
  numberOfSections = [(PXPhotoKitAssetsDataSource *)self numberOfSections];
  v10 = v47;
  if (numberOfSections)
  {
    v11 = numberOfSections;
    v12 = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v49 = vnegq_f64(v13);
    while (1)
    {
      v50 = identifier;
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
        parentPhotosHighlight = [v15 parentPhotosHighlight];
        objectID = [v10 objectID];
        v19 = [parentPhotosHighlight isEqual:objectID];

        if (v19)
        {
          v20 = [off_1E7721488 alloc];
          v50 = identifier;
          v51 = v12;
          v52 = v49;
          v21 = [v20 initWithAssetCollection:v15 keyAssetReference:0 indexPath:&v50];
          [v45 addObject:v21];
          if (parent)
          {
            objectID2 = [v44 objectID];
            keyAssetObjectIDForKind = [v15 keyAssetObjectIDForKind];
            v24 = [objectID2 isEqual:keyAssetObjectIDForKind];

            if (v24)
            {
              v25 = v21;
              *parent = v21;
            }
          }

          v10 = v47;
        }

        v5 = v16;
        goto LABEL_17;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v28 = NSStringFromClass(v29);
      px_descriptionForAssertionMessage3 = [v15 px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:836 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"candidateAssetCollection", v28, px_descriptionForAssertionMessage3}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:836 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"candidateAssetCollection", v28}];
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
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  lastAssetCollection = [photosDataSource lastAssetCollection];

  return lastAssetCollection;
}

- (id)container
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  container = [photosDataSource container];

  return container;
}

- (id)assetIdentifierAtItemIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:792 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v10 = [photosDataSource assetsInSection:path->section];
  v11 = [v10 objectIDAtIndex:path->item];

  if (!v11)
  {
    v17.receiver = self;
    v17.super_class = PXPhotoKitAssetsDataSource;
    v15 = *&path->item;
    v16[0] = *&path->dataSourceIdentifier;
    v16[1] = v15;
    v11 = [(PXPhotoKitAssetsDataSource *)&v17 assetIdentifierAtItemIndexPath:v16];
  }

  return v11;
}

- (id)indexPathSetForObjectIDs:(id)ds
{
  dsCopy = ds;
  v22 = [dsCopy count];
  if (v22)
  {
    photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    identifier = [(PXPhotoKitAssetsDataSource *)self identifier];
    v20 = photosDataSource;
    numberOfSections = [photosDataSource numberOfSections];
    indexPathSet = [off_1E77217C8 indexPathSet];
    v24 = numberOfSections;
    if (numberOfSections >= 1)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
        v10 = [photosDataSource2 assetsInSection:v8];

        fetchedObjectIDsSet = [v10 fetchedObjectIDsSet];
        v12 = [MEMORY[0x1E695DFA8] setWithSet:dsCopy];
        [v12 intersectSet:fetchedObjectIDsSet];
        if ([v12 count])
        {
          fetchedObjectIDs = [v10 fetchedObjectIDs];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __55__PXPhotoKitAssetsDataSource_indexPathSetForObjectIDs___block_invoke;
          v27[3] = &unk_1E7731B98;
          v14 = v12;
          v28 = v14;
          v15 = [fetchedObjectIDs indexesOfObjectsPassingTest:v27];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __55__PXPhotoKitAssetsDataSource_indexPathSetForObjectIDs___block_invoke_2;
          v25[3] = &unk_1E7731BC0;
          v26 = v15;
          v16 = dsCopy;
          v17 = v15;
          [indexPathSet modifyItemIndexSetForDataSourceIdentifier:identifier section:v8 usingBlock:v25];
          v7 += [v17 count];

          dsCopy = v16;
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

    indexPathSet2 = indexPathSet;
  }

  else
  {
    indexPathSet2 = [off_1E7721768 indexPathSet];
  }

  return indexPathSet2;
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

- (PXSimpleIndexPath)indexPathForObjectID:(SEL)d
{
  v18 = a4;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  numberOfSections = [photosDataSource numberOfSections];
  if (numberOfSections < 1)
  {
LABEL_5:
    v14 = *(off_1E7722228 + 1);
    *&retstr->dataSourceIdentifier = *off_1E7722228;
    *&retstr->item = v14;
  }

  else
  {
    v8 = numberOfSections;
    v9 = 0;
    while (1)
    {
      photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v11 = [photosDataSource2 assetsInSection:v9];

      fetchedObjectIDsSet = [v11 fetchedObjectIDsSet];
      v13 = [fetchedObjectIDsSet containsObject:v18];

      if (v13)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    fetchedObjectIDs = [v11 fetchedObjectIDs];
    v16 = [fetchedObjectIDs indexOfObject:v18];

    retstr->dataSourceIdentifier = [(PXPhotoKitAssetsDataSource *)self identifier];
    retstr->section = v9;
    retstr->item = v16;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)assetCollectionReferenceNearestToObjectReference:(id)reference
{
  referenceCopy = reference;
  v7.receiver = self;
  v7.super_class = PXPhotoKitAssetsDataSource;
  v5 = [(PXPhotoKitAssetsDataSource *)&v7 assetCollectionReferenceNearestToObjectReference:referenceCopy];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXPhotoKitAssetsDataSource *)self objectReferenceNearestToObjectReference:referenceCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch:(id)search
{
  searchCopy = search;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  options = [photosDataSource options];

  if ((options & 0x800) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"PXOptionsHasSpecificValue(self.photosDataSource.options, PXPhotosDataSourceOptionAllowExhaustiveNearestToObjectSearch)"}];
  }

  asset = [searchCopy asset];
  creationDate = [asset creationDate];
  v10 = creationDate;
  if (creationDate)
  {
    v29 = searchCopy;
    v49 = 0;
    v50 = 0x7FFFFFFFFFFFFFFFLL;
    v47 = 0;
    v48 = 0x7FFFFFFFFFFFFFFFLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __99__PXPhotoKitAssetsDataSource__assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch___block_invoke;
    aBlock[3] = &unk_1E7731B20;
    v11 = creationDate;
    v45 = v11;
    selfCopy = self;
    v12 = _Block_copy(aBlock);
    numberOfSections = [(PXPhotoKitAssetsDataSource *)self numberOfSections];
    identifier = [(PXPhotoKitAssetsDataSource *)self identifier];
    if (numberOfSections >= 1)
    {
      v15 = identifier;
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
        startDate = [v18 startDate];
        v12[2](v12, v16, startDate, -1, &v50, &v49);

        endDate = [v18 endDate];
        v12[2](v12, v16, endDate, 1, &v48, &v47);

        v16 = (v16 + 1);
      }

      while (numberOfSections != v16);
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

    searchCopy = v29;
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

- (id)_assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate:(id)date
{
  v26 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  options = [photosDataSource options];

  if ((options & 0x80) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"PXOptionsHasSpecificValue(photosDataSourceOptions, PXPhotosDataSourceOptionAssetCollectionsAreSortedByIncreasingCreationDate)"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset = [dateCopy asset];
    creationDate = [asset creationDate];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    asset = 0;
    goto LABEL_20;
  }

  v10 = dateCopy;
  keyAssetReference = [v10 keyAssetReference];
  asset = [keyAssetReference asset];

  if (!asset)
  {
    assetCollection = [v10 assetCollection];
    if (assetCollection)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        if ([assetCollection assetCollectionSubtype] == 1000000301)
        {
          creationDate = [assetCollection startDate];
          asset = 0;
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

          asset = [(PXPhotoKitAssetsDataSource *)self _fastKeyCuratedAssetForAssetCollection:assetCollection];
          creationDate = [asset creationDate];
        }

        goto LABEL_17;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:557 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v19, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:557 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v19}];
    }

    goto LABEL_11;
  }

  creationDate = [asset creationDate];
LABEL_17:

LABEL_18:
  if (creationDate)
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
    creationDate;
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

- (id)objectReferenceNearestToObjectReference:(id)reference inSection:(int64_t)section
{
  v59 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  options = [photosDataSource options];

  if (referenceCopy)
  {
    [referenceCopy indexPath];
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
    v11 = referenceCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = referenceCopy;
  if (v11)
  {
    goto LABEL_57;
  }

  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v54.receiver = self;
    v54.super_class = PXPhotoKitAssetsDataSource;
    v13 = [(PXPhotoKitAssetsDataSource *)&v54 objectReferenceNearestToObjectReference:referenceCopy];
  }

  else
  {
    *buf = 0u;
    v58 = 0u;
    [(PXPhotoKitAssetsDataSource *)self _indexPathForObjectReference:referenceCopy restrictedToSection:section];
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
  if ((objc_opt_isKindOfClass() & 1) != 0 && (options & 0x800) != 0 && ([(PXPhotoKitAssetsDataSource *)self _assetReferenceReferenceNearestToAssetReferenceUsingExhaustiveSearch:referenceCopy], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (options & 0x80) != 0 && ([(PXPhotoKitAssetsDataSource *)self _assetCollectionReferenceNearestToObjectReferenceAssumingSortedByIncreasingCreationDate:referenceCopy], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v14;
    goto LABEL_57;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([referenceCopy itemObject], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
  {
    v12 = 0;
    goto LABEL_57;
  }

  v17 = referenceCopy;
  if (referenceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_23;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = objc_opt_class();
    v40 = NSStringFromClass(v44);
    px_descriptionForAssertionMessage = [v17 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:463 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference", v40, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:463 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference", v40}];
  }

LABEL_23:
  asset = [v17 asset];
  if (!asset)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v43}];
LABEL_65:

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = objc_opt_class();
    v43 = NSStringFromClass(v46);
    px_descriptionForAssertionMessage2 = [asset px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v43, px_descriptionForAssertionMessage2}];

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

  v12 = [(NSCache *)assetReferenceNearestToAssetCache objectForKey:asset];
  if (!v12)
  {
    if ([(PXPhotoKitAssetsDataSource *)self containsAnyItems])
    {
      if (section == 0x7FFFFFFFFFFFFFFFLL)
      {
        *buf = 0u;
        v58 = 0u;
        if (referenceCopy)
        {
          [v17 indexPath];
        }

        v22 = [off_1E7721488 alloc];
        assetCollection = [v17 assetCollection];
        v24.f64[0] = NAN;
        v24.f64[1] = NAN;
        v52 = *buf;
        v53 = vnegq_f64(v24);
        v48 = v53;
        v25 = [v22 initWithAssetCollection:assetCollection keyAssetReference:0 indexPath:&v52];

        [(PXPhotoKitAssetsDataSource *)self indexPathForAssetCollectionReference:v25];
        identifier = v52;
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
          identifier = [(PXPhotoKitAssetsDataSource *)self identifier];
          v31 = v48;
        }

        else
        {
          v30 = *(&v52 + 1);
          v31 = v53;
        }

        v50[0] = identifier;
        v50[1] = v30;
        v51 = v31;
        [(PXPhotoKitAssetsDataSource *)self firstNonEmptySectionAtOrBeforeSection:v50];
        section = *(&v52 + 1);
        identifier2 = v52;
        if (v52 == v27)
        {
          [(PXPhotoKitAssetsDataSource *)self firstItemIndexPath];
          identifier2 = v27;
          if (v52 != v27)
          {
            [(PXPhotoKitAssetsDataSource *)self firstItemIndexPath];
            section = *(&v52 + 1);
            identifier2 = v52;
          }
        }
      }

      else
      {
        identifier2 = [(PXPhotoKitAssetsDataSource *)self identifier];
        v27 = *off_1E7721F68;
      }

      if (identifier2 == v27)
      {
        PXAssertGetLog();
      }

      photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v34 = [photosDataSource2 assetsInSection:section];
      v35 = [v34 px_indexOfSortedAssetNearestToAsset:asset];
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (![v34 count])
        {
          goto LABEL_54;
        }

        if (referenceCopy)
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
      *&buf[8] = section;
      *&v58.f64[0] = v35;
      v58.f64[1] = NAN;
      v12 = [(PXPhotoKitAssetsDataSource *)self assetReferenceAtItemIndexPath:buf];
      [(NSCache *)self->_assetReferenceNearestToAssetCache setObject:v12 forKey:asset];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_57:

  return v12;
}

- (id)_fastKeyCuratedAssetForAssetCollection:(id)collection
{
  collectionCopy = collection;
  fetchedKeyAssetByAssetCollectionLocalIdentifierCache = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
  if (!fetchedKeyAssetByAssetCollectionLocalIdentifierCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v7 = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
    self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache = v6;

    fetchedKeyAssetByAssetCollectionLocalIdentifierCache = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
  }

  localIdentifier = [collectionCopy localIdentifier];
  firstObject = [(NSCache *)fetchedKeyAssetByAssetCollectionLocalIdentifierCache objectForKey:localIdentifier];

  if (!firstObject)
  {
    if ([collectionCopy px_supportsFastCuration])
    {
      photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      photoLibrary = [photosDataSource photoLibrary];
      v12 = [PXPhotosAssetsFetcher sharedFetcherForPhotoLibrary:photoLibrary];

      v13 = objc_alloc_init(PXPhotosAssetsFetcherConfiguration);
      [(PXPhotosAssetsFetcherConfiguration *)v13 setCurationKind:5];
      [(PXPhotosAssetsFetcherConfiguration *)v13 setLibraryFilter:[(PXPhotoKitAssetsDataSource *)self libraryFilter]];
      v14 = [v12 fetchAssetsInContainer:collectionCopy configuration:v13];
      firstObject = [v14 firstObject];

      if (!firstObject)
      {
        firstObject = [MEMORY[0x1E695DFB0] null];
      }

      v15 = self->_fetchedKeyAssetByAssetCollectionLocalIdentifierCache;
      localIdentifier2 = [collectionCopy localIdentifier];
      [(NSCache *)v15 setObject:firstObject forKey:localIdentifier2];
    }

    else
    {
      firstObject = 0;
    }
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (firstObject == null)
  {

    firstObject = 0;
  }

  return firstObject;
}

- (id)primaryFaceForAssetAtItemIndexPath:(PXSimpleIndexPath *)path
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v5;
  v6 = [photosDataSource facesAtSimpleIndexPath:v9];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)getAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts allowFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v7 = *off_1E7721F78;
  v6 = *(off_1E7721F78 + 1);
  v8 = *(off_1E7721F78 + 2);
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  photoLibrary = [photosDataSource photoLibrary];
  v28 = [PXPhotosMetadataFetcher sharedFetcherForPhotoLibrary:photoLibrary];

  photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  numberOfSections = [(PXPhotoKitAssetsDataSource *)self numberOfSections];
  if (numberOfSections >= 1)
  {
    v13 = numberOfSections;
    v14 = 0;
    v15 = 0;
    v16 = v7;
    v17 = v6;
    v18 = v8;
    v27 = v8;
    v29 = v8;
    while (1)
    {
      v19 = [photosDataSource2 assetsInSection:v15];
      if (v19)
      {
        v20 = v19;
        v32 = *off_1E7721F78;
        v33 = v27;
        v25 = v32;
        v30 = v32;
        v31 = v27;
        if (![v28 getAssetCounts:&v32 guestAssetCounts:&v30 forFetchResult:v19 allowFetch:fetchCopy])
        {
          v7 = *off_1E7721F70;
          v6 = *(off_1E7721F70 + 1);
          v18 = *(off_1E7721F70 + 2);

          v29 = v18;
          goto LABEL_15;
        }

        v21 = [photosDataSource2 assetCollectionForSection:v15];
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
  if (counts)
  {
    counts->var0 = v7;
    counts->var1 = v6;
    counts->var2 = v18;
  }

  if (assetCounts)
  {
    assetCounts->var0 = v16;
    assetCounts->var1 = v17;
    assetCounts->var2 = v29;
  }

  return v14;
}

- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)state
{
  stateCopy = state;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [photosDataSource estimatedAssetsCountWithEnrichmentState:stateCopy];

  return v5;
}

- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)state
{
  stateCopy = state;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [photosDataSource numberOfSectionsWithEnrichmentState:stateCopy];

  return v5;
}

- (BOOL)hasCurationForAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource hasCurationForAssetCollection:collectionCopy];

  return v6;
}

- (int64_t)numberOfCuratedItemsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource curatedAssetsForAssetCollection:collectionCopy];

  v7 = [v6 count];
  return v7;
}

- (int64_t)numberOfUncuratedItemsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource uncuratedAssetsForAssetCollection:collectionCopy];

  v7 = [v6 count];
  return v7;
}

- (int64_t)numberOfCuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [photosDataSource curatedAssetsInSection:path->section];
  v9 = [v8 count];

  return v9;
}

- (int64_t)numberOfUncuratedItemsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [photosDataSource uncuratedAssetsInSection:path->section];
  v9 = [v8 count];

  return v9;
}

- (id)uncuratedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [photosDataSource uncuratedAssetsInSection:path->section];

  return v8;
}

- (id)curatedAssetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [photosDataSource curatedAssetsInSection:path->section];

  return v8;
}

- (PXSimpleIndexPath)keyAssetIndexPathForSectionIndexPath:(SEL)path
{
  dataSourceIdentifier = a4->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:path object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v10 = [photosDataSource keyAssetIndexInSection:a4->section];

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

- (id)keyAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource sectionForAssetCollection:collectionCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [photosDataSource keyAssetsInSection:v6];
  }

  return v7;
}

- (id)keyAssetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [photosDataSource keyAssetsInSection:path->section];

  return v8;
}

- (PXSimpleIndexPath)_indexPathForSavedSyndicatedAssetReference:(SEL)reference
{
  v7 = a4;
  v8 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v8;
  asset = [v7 asset];
  if (!PXDisplayAssetIsSyndicatedAndUnsaved(asset))
  {
    goto LABEL_9;
  }

  v10 = asset;
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:reference object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:271 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"removedDisplayAsset", v16}];
LABEL_12:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:reference object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:271 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"removedDisplayAsset", v16, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_4:
  [v10 fetchPropertySetsIfNeeded];
  curationProperties = [v10 curationProperties];
  syndicationIdentifier = [curationProperties syndicationIdentifier];

  if (syndicationIdentifier)
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

- (PXSimpleIndexPath)_indexPathForObjectReference:(SEL)reference restrictedToSection:(id)section
{
  sectionCopy = section;
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v55.receiver = self;
  v55.super_class = PXPhotoKitAssetsDataSource;
  [(PXSimpleIndexPath *)&v55 indexPathForObjectReference:sectionCopy];
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

    photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
    v15 = sectionCopy;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v43 = NSStringFromClass(v45);
      px_descriptionForAssertionMessage = [v15 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:reference object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:252 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference", v43, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      [currentHandler handleFailureInMethod:reference object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:252 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference", v43}];
    }

LABEL_9:
    assetCollection = [v15 assetCollection];
    v17 = [photosDataSource sectionForAssetCollection:assetCollection];

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

  v11 = sectionCopy;
  v54 = 0;
  changeDetails = [(PXPhotoKitAssetsDataSource *)self changeDetails];
  v13 = changeDetails;
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
    if (changeDetails)
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

  asset = [v11 asset];
  v21 = asset;
  if (retstr->dataSourceIdentifier == dataSourceIdentifier)
  {
    if (v54)
    {
      if (PXDisplayAssetIsSyndicatedAndUnsaved(asset))
      {
        [(PXPhotoKitAssetsDataSource *)self _indexPathForSavedSyndicatedAssetReference:v11];
        v22 = v53;
        *&retstr->dataSourceIdentifier = v52;
        *&retstr->item = v22;
      }

      goto LABEL_42;
    }

    asset2 = [v11 asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      photosDataSource2 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      asset4 = photosDataSource2;
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

      if ([photosDataSource2 numberOfSections] > a5)
      {
        v29 = [asset4 assetCollectionForSection:a5];
        if (v29)
        {
          v30 = v29;
          asset3 = [v11 asset];
          v31 = [asset4 indexPathForAsset:? inCollection:?];

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
      asset4 = [v11 asset];
      if (objc_opt_respondsToSelector())
      {
        uuid = [asset4 uuid];
        if (uuid)
        {
          v48 = uuid;
          if (objc_opt_respondsToSelector())
          {
            burstIdentifier = [asset4 burstIdentifier];
          }

          else
          {
            burstIdentifier = 0;
          }

          objc_opt_class();
          v50 = asset4;
          if (objc_opt_isKindOfClass())
          {
            v47 = burstIdentifier;
          }

          else
          {

            v47 = 0;
          }

          photosDataSource3 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
          indexPathForLastAsset = [photosDataSource3 indexPathForLastAsset];

          photosDataSource4 = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
          v33 = [photosDataSource4 indexPathForAssetWithUUID:v48 orBurstIdentifier:v47 hintIndexPath:indexPathForLastAsset hintCollection:0];

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
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:reference object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:259 description:@"Section must be valid"];
    }

    item = retstr->item;
    if (item != 0x7FFFFFFFFFFFFFFFLL && item >= [(PXPhotoKitAssetsDataSource *)self numberOfItemsInSection:retstr->section])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:260 description:@"Item must be valid"];
    }
  }

LABEL_49:

  return result;
}

- (id)objectReferenceAtIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *off_1E7721F68;
  if (path->dataSourceIdentifier != *off_1E7721F68 && path->section != 0x7FFFFFFFFFFFFFFFLL && path->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *&path->item;
    v20 = *&path->dataSourceIdentifier;
    v21 = v10;
    v11 = [(PXPhotoKitAssetsDataSource *)self assetCollectionAtSectionIndexPath:&v20];
    v20 = 0u;
    v21 = 0u;
    v12 = *&path->item;
    v18 = *&path->dataSourceIdentifier;
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
    v15 = *&path->item;
    v18 = *&path->dataSourceIdentifier;
    v19 = v15;
    v9 = [v14 initWithAssetCollection:v11 keyAssetReference:v13 indexPath:&v18];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXPhotoKitAssetsDataSource;
    v8 = *&path->item;
    v20 = *&path->dataSourceIdentifier;
    v21 = v8;
    v9 = [(PXPhotoKitAssetsDataSource *)&v17 objectReferenceAtIndexPath:&v20];
  }

  return v9;
}

- (BOOL)isFilteringDisabledForAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource infoForAssetCollection:collectionCopy];

  LOBYTE(photosDataSource) = [v6 explicitlyDisableFilters];
  return photosDataSource;
}

- (BOOL)isFilteringAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource infoForAssetCollection:collectionCopy];

  LOBYTE(photosDataSource) = [v6 UUIDFilterHidesSomeAssets];
  return photosDataSource;
}

- (unint64_t)estimatedOtherCount
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  estimatedOtherCount = [photosDataSource estimatedOtherCount];

  return estimatedOtherCount;
}

- (unint64_t)estimatedVideosCount
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  estimatedVideosCount = [photosDataSource estimatedVideosCount];

  return estimatedVideosCount;
}

- (unint64_t)estimatedPhotosCount
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  estimatedPhotosCount = [photosDataSource estimatedPhotosCount];

  return estimatedPhotosCount;
}

- (unint64_t)estimatedAssetCountForSectionIndexPath:(PXSimpleIndexPath *)path
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [photosDataSource assetCollectionForSection:path->section];
  estimatedAssetCount = [v5 estimatedAssetCount];

  return estimatedAssetCount;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v7 = [photosDataSource assetsInSection:path->section];
  v8 = v7;
  if (v7)
  {
    emptyAssetsFetchResult = v7;
  }

  else
  {
    emptyAssetsFetchResult = [photosDataSource emptyAssetsFetchResult];
  }

  v10 = emptyAssetsFetchResult;

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotoKitAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == [self identifier]"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_12;
  }

  if (path->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (path->section != 0x7FFFFFFFFFFFFFFFLL)
    {
      photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
      v8 = [photosDataSource assetCollectionForSection:path->section];
      goto LABEL_9;
    }

LABEL_12:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v13 = *&path->item;
    v14 = *&path->dataSourceIdentifier;
    v15 = v13;
    PXSimpleIndexPathDescription();
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = *&path->item;
  v14 = *&path->dataSourceIdentifier;
  v15 = v9;
  v8 = [photosDataSource assetAtSimpleIndexPath:&v14];
LABEL_9:
  v10 = v8;

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = [photosDataSource numberOfItemsInSection:section];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PXPhotoKitAssetsDataSource;
  v4 = [(PXPhotoKitAssetsDataSource *)&v9 description];
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  container = [(PXPhotoKitAssetsDataSource *)self container];
  v7 = [v3 stringWithFormat:@"<%@ photosDataSource:%@, container:%@>", v4, photosDataSource, container];

  return v7;
}

- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)source withChangeDetails:(id)details
{
  sourceCopy = source;
  detailsCopy = details;
  v15.receiver = self;
  v15.super_class = PXPhotoKitAssetsDataSource;
  v10 = [(PXPhotoKitAssetsDataSource *)&v15 init];
  if (v10)
  {
    if (([sourceCopy options] & 4) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXPhotoKitAssetsDataSource.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"([immutablePhotosDataSource options] & PXPhotosDataSourceOptionDisableChangeHandling) == PXPhotosDataSourceOptionDisableChangeHandling"}];
    }

    objc_storeStrong(&v10->_photosDataSource, source);
    objc_storeStrong(&v10->_changeDetails, details);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    layoutItemByAssetCache = v10->_layoutItemByAssetCache;
    v10->_layoutItemByAssetCache = v11;
  }

  return v10;
}

- (PXPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)source withChange:(id)change
{
  sourceCopy = source;
  sectionedDataSourceChangeDetails = [change sectionedDataSourceChangeDetails];
  v8 = [(PXPhotoKitAssetsDataSource *)self initWithImmutablePhotosDataSource:sourceCopy withChangeDetails:sectionedDataSourceChangeDetails];

  return v8;
}

+ (PXPhotoKitAssetsDataSource)dataSourceWithAssetCollections:(id)collections
{
  v3 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:collections title:0];
  v4 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v3 options:0];
  v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v4 options:4];
  v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
  v7 = [[PXPhotoKitAssetsDataSource alloc] initWithImmutablePhotosDataSource:v6 withChange:0];

  return v7;
}

+ (PXPhotoKitAssetsDataSource)dataSourceWithAssets:(id)assets userInfo:(id)info transientIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  assetsCopy = assets;
  if (![assetsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"assets.count > 0"}];
  }

  v12 = MEMORY[0x1E6978650];
  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v15 = [v12 transientAssetCollectionWithAssets:assetsCopy title:0 identifier:identifierCopy photoLibrary:photoLibrary];

  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [self dataSourceWithAssetCollections:v16];

  [v17 setUserInfo:infoCopy];

  return v17;
}

+ (PXPhotoKitAssetsDataSource)dataSourceWithAsset:(id)asset
{
  v10[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSource.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v10[0] = assetCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [self dataSourceWithAssets:v6];

  return v7;
}

- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)set
{
  photosDataSource = [(PXPhotoKitAssetsDataSource *)self photosDataSource];
  v5 = *&set->item;
  v7[0] = *&set->dataSourceIdentifier;
  v7[1] = v5;
  LOBYTE(set) = [photosDataSource isAssetAtIndexPathPartOfCuratedSet:v7];

  return set;
}

@end