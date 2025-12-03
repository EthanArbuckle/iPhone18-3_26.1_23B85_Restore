@interface PXPhotoKitCollectionsDataSourceManagerConfiguration
+ (id)_generatePredicateForAssetTypesToInclude:(unint64_t)include;
- (BOOL)_shouldSupportSyndicatedAssetFetches:(id)fetches;
- (PHFetchResult)collectionsFetchResult;
- (PXPhotoKitCollectionsDataSourceManagerConfiguration)initWithCollectionList:(id)list collectionsFetchResult:(id)result;
- (id)_newConfigurationWithCollectionList:(id)list collectionsFetchResult:(id)result;
- (id)customFetchOptionsForCollection:(id)collection;
@end

@implementation PXPhotoKitCollectionsDataSourceManagerConfiguration

- (id)_newConfigurationWithCollectionList:(id)list collectionsFetchResult:(id)result
{
  resultCopy = result;
  listCopy = list;
  v8 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:listCopy collectionsFetchResult:resultCopy];

  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSeparateSectionsForSmartAndUserCollections:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self separateSectionsForSmartAndUserCollections]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setIncludePeopleAlbum:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self includePeopleAlbum]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setAssetTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self assetTypesToInclude]];
  assetsFilterPredicate = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self assetsFilterPredicate];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setAssetsFilterPredicate:assetsFilterPredicate];

  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self collectionTypesToInclude]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setShouldExcludePrivacySensitiveAlbums:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self shouldExcludePrivacySensitiveAlbums]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setShouldIgnoreLibraryChanges:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self shouldIgnoreLibraryChanges]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipKeyAssetFetches:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipKeyAssetFetches]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipKeyAssetFetchesForSmartAlbums:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipKeyAssetFetchesForSmartAlbums]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipAssetFetches:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipAssetFetches]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipSyndicatedAssetFetches:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipSyndicatedAssetFetches]];
  return v8;
}

- (BOOL)_shouldSupportSyndicatedAssetFetches:(id)fetches
{
  fetchesCopy = fetches;
  if (-[PXPhotoKitCollectionsDataSourceManagerConfiguration skipSyndicatedAssetFetches](self, "skipSyndicatedAssetFetches") || ([fetchesCopy photoLibrary], v5 = objc_claimAutoreleasedReturnValue(), +[PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:](PXContentSyndicationConfigurationProvider, "contentSyndicationConfigurationProviderWithPhotoLibrary:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "showUnsavedSyndicatedContentInPhotosGrids"), v6, v5, !v7))
  {
    ShouldShowUnsavedAssetsInAssetCollection = 0;
  }

  else if ([fetchesCopy canContainAssets])
  {
    ShouldShowUnsavedAssetsInAssetCollection = PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(fetchesCopy);
  }

  else
  {
    ShouldShowUnsavedAssetsInAssetCollection = 1;
  }

  return ShouldShowUnsavedAssetsInAssetCollection;
}

- (id)customFetchOptionsForCollection:(id)collection
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

  v7 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self _shouldSupportSyndicatedAssetFetches:collectionCopy];
  [px_standardLibrarySpecificFetchOptions setIncludeGuestAssets:v7];
  assetsFilterPredicate = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self assetsFilterPredicate];
  v9 = assetsFilterPredicate;
  if (assetsFilterPredicate)
  {
    v10 = assetsFilterPredicate;
  }

  else
  {
    v10 = [objc_opt_class() _generatePredicateForAssetTypesToInclude:{-[PXPhotoKitCollectionsDataSourceManagerConfiguration assetTypesToInclude](self, "assetTypesToInclude")}];
  }

  v11 = v10;

  [px_standardLibrarySpecificFetchOptions setInternalPredicate:v11];

  return px_standardLibrarySpecificFetchOptions;
}

- (PHFetchResult)collectionsFetchResult
{
  collectionsFetchResult = self->_collectionsFetchResult;
  if (!collectionsFetchResult)
  {
    collectionList = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self collectionList];
    photoLibrary = [collectionList photoLibrary];
    px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

    [px_standardLibrarySpecificFetchOptions setIncludePlacesSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 6) & 1}];
    [px_standardLibrarySpecificFetchOptions setIncludeDuplicatesAlbums:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 16) & 1}];
    [px_standardLibrarySpecificFetchOptions setIncludeUserSmartAlbums:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 22) & 1}];
    [px_standardLibrarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 2) & 1}];
    [px_standardLibrarySpecificFetchOptions setIncludeRecentlyEditedSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 12) & 1}];
    [px_standardLibrarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 7) & 1}];
    [px_standardLibrarySpecificFetchOptions setIncludeProResSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 7) & 1}];
    v7 = MEMORY[0x1E6978758];
    collectionList2 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self collectionList];
    v9 = [v7 fetchCollectionsInCollectionList:collectionList2 options:px_standardLibrarySpecificFetchOptions];
    v10 = self->_collectionsFetchResult;
    self->_collectionsFetchResult = v9;

    collectionsFetchResult = self->_collectionsFetchResult;
  }

  return collectionsFetchResult;
}

- (PXPhotoKitCollectionsDataSourceManagerConfiguration)initWithCollectionList:(id)list collectionsFetchResult:(id)result
{
  listCopy = list;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = PXPhotoKitCollectionsDataSourceManagerConfiguration;
  v9 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetTypesToInclude = -1;
    v9->_collectionTypesToInclude = -1;
    objc_storeStrong(&v9->_collectionList, list);
    objc_storeStrong(&v10->_collectionsFetchResult, result);
  }

  return v10;
}

+ (id)_generatePredicateForAssetTypesToInclude:(unint64_t)include
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (include == -1)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_12;
  }

  includeCopy = include;
  if ((~include & 3) == 0)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) == %d OR noindex:(kind) == %d", 0, 1];
    v4 = LABEL_4:;
LABEL_5:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kindSubtype) != %d", 100];
    v6 = v5;
    if (v4)
    {
      v7 = MEMORY[0x1E696AB28];
      v11[0] = v4;
      v11[1] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
      v9 = [v7 andPredicateWithSubpredicates:v8];

      v4 = v9;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_12;
  }

  if ((include & 1) == 0)
  {
    if ((include & 2) != 0)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) == %d OR noindex:(playbackStyle) == %d", 1, 5];
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) == %d AND noindex:(playbackStyle) != %d", 0, 5];
  if ((includeCopy & 2) != 0)
  {
    goto LABEL_5;
  }

LABEL_12:

  return v4;
}

@end