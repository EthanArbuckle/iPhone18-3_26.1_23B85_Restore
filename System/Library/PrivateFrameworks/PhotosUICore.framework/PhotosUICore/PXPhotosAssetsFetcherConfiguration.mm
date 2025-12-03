@interface PXPhotosAssetsFetcherConfiguration
- (PXPhotosAssetsFetcherConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PXPhotosAssetsFetcherConfiguration

- (PXPhotosAssetsFetcherConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosAssetsFetcherConfiguration;
  result = [(PXPhotosAssetsFetcherConfiguration *)&v3 init];
  if (result)
  {
    result->_curationType = 0;
    result->_includeOthersInSocialGroupAssets = 0;
    *&result->_includeUnsavedSyndicatedAssets = 0;
    *&result->_curationKind = 0u;
    *&result->_options = 0u;
    result->_fetchLimit = 0;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetCollectionCurationKindDescription(self->_curationKind);
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetCollectionCurationLengthDescription();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXPhotosAssetsFetcherConfiguration);
  [(PXPhotosAssetsFetcherConfiguration *)v4 setCurationKind:[(PXPhotosAssetsFetcherConfiguration *)self curationKind]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setCurationLength:[(PXPhotosAssetsFetcherConfiguration *)self curationLength]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setOptions:[(PXPhotosAssetsFetcherConfiguration *)self options]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setLibraryFilter:[(PXPhotosAssetsFetcherConfiguration *)self libraryFilter]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setFetchLimit:[(PXPhotosAssetsFetcherConfiguration *)self fetchLimit]];
  filterPredicate = [(PXPhotosAssetsFetcherConfiguration *)self filterPredicate];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setFilterPredicate:filterPredicate];

  inclusionPredicate = [(PXPhotosAssetsFetcherConfiguration *)self inclusionPredicate];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setInclusionPredicate:inclusionPredicate];

  sortDescriptors = [(PXPhotosAssetsFetcherConfiguration *)self sortDescriptors];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setSortDescriptors:sortDescriptors];

  fetchPropertySets = [(PXPhotosAssetsFetcherConfiguration *)self fetchPropertySets];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setFetchPropertySets:fetchPropertySets];

  [(PXPhotosAssetsFetcherConfiguration *)v4 setIncludeUnsavedSyndicatedAssets:[(PXPhotosAssetsFetcherConfiguration *)self includeUnsavedSyndicatedAssets]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setIncludeSharedCollectionAssets:[(PXPhotosAssetsFetcherConfiguration *)self includeSharedCollectionAssets]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setIncludeAllBurstAssets:[(PXPhotosAssetsFetcherConfiguration *)self includeAllBurstAssets]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setReverseSortOrder:[(PXPhotosAssetsFetcherConfiguration *)self reverseSortOrder]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setHideHiddenAssets:[(PXPhotosAssetsFetcherConfiguration *)self hideHiddenAssets]];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setCurationType:[(PXPhotosAssetsFetcherConfiguration *)self curationType]];
  referencePersons = [(PXPhotosAssetsFetcherConfiguration *)self referencePersons];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setReferencePersons:referencePersons];

  referenceAsset = [(PXPhotosAssetsFetcherConfiguration *)self referenceAsset];
  [(PXPhotosAssetsFetcherConfiguration *)v4 setReferenceAsset:referenceAsset];

  [(PXPhotosAssetsFetcherConfiguration *)v4 setIncludeOthersInSocialGroupAssets:[(PXPhotosAssetsFetcherConfiguration *)self includeOthersInSocialGroupAssets]];
  return v4;
}

@end