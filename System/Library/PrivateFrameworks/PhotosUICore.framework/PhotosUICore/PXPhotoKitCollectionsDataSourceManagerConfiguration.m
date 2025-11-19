@interface PXPhotoKitCollectionsDataSourceManagerConfiguration
+ (id)_generatePredicateForAssetTypesToInclude:(unint64_t)a3;
- (BOOL)_shouldSupportSyndicatedAssetFetches:(id)a3;
- (PHFetchResult)collectionsFetchResult;
- (PXPhotoKitCollectionsDataSourceManagerConfiguration)initWithCollectionList:(id)a3 collectionsFetchResult:(id)a4;
- (id)_newConfigurationWithCollectionList:(id)a3 collectionsFetchResult:(id)a4;
- (id)customFetchOptionsForCollection:(id)a3;
@end

@implementation PXPhotoKitCollectionsDataSourceManagerConfiguration

- (id)_newConfigurationWithCollectionList:(id)a3 collectionsFetchResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:v7 collectionsFetchResult:v6];

  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSeparateSectionsForSmartAndUserCollections:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self separateSectionsForSmartAndUserCollections]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setIncludePeopleAlbum:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self includePeopleAlbum]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setAssetTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self assetTypesToInclude]];
  v9 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self assetsFilterPredicate];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setAssetsFilterPredicate:v9];

  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self collectionTypesToInclude]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setShouldExcludePrivacySensitiveAlbums:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self shouldExcludePrivacySensitiveAlbums]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setShouldIgnoreLibraryChanges:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self shouldIgnoreLibraryChanges]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipKeyAssetFetches:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipKeyAssetFetches]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipKeyAssetFetchesForSmartAlbums:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipKeyAssetFetchesForSmartAlbums]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipAssetFetches:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipAssetFetches]];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setSkipSyndicatedAssetFetches:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self skipSyndicatedAssetFetches]];
  return v8;
}

- (BOOL)_shouldSupportSyndicatedAssetFetches:(id)a3
{
  v4 = a3;
  if (-[PXPhotoKitCollectionsDataSourceManagerConfiguration skipSyndicatedAssetFetches](self, "skipSyndicatedAssetFetches") || ([v4 photoLibrary], v5 = objc_claimAutoreleasedReturnValue(), +[PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:](PXContentSyndicationConfigurationProvider, "contentSyndicationConfigurationProviderWithPhotoLibrary:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "showUnsavedSyndicatedContentInPhotosGrids"), v6, v5, !v7))
  {
    ShouldShowUnsavedAssetsInAssetCollection = 0;
  }

  else if ([v4 canContainAssets])
  {
    ShouldShowUnsavedAssetsInAssetCollection = PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(v4);
  }

  else
  {
    ShouldShowUnsavedAssetsInAssetCollection = 1;
  }

  return ShouldShowUnsavedAssetsInAssetCollection;
}

- (id)customFetchOptionsForCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 px_standardLibrarySpecificFetchOptions];

  v7 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self _shouldSupportSyndicatedAssetFetches:v4];
  [v6 setIncludeGuestAssets:v7];
  v8 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self assetsFilterPredicate];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [objc_opt_class() _generatePredicateForAssetTypesToInclude:{-[PXPhotoKitCollectionsDataSourceManagerConfiguration assetTypesToInclude](self, "assetTypesToInclude")}];
  }

  v11 = v10;

  [v6 setInternalPredicate:v11];

  return v6;
}

- (PHFetchResult)collectionsFetchResult
{
  collectionsFetchResult = self->_collectionsFetchResult;
  if (!collectionsFetchResult)
  {
    v4 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self collectionList];
    v5 = [v4 photoLibrary];
    v6 = [v5 px_standardLibrarySpecificFetchOptions];

    [v6 setIncludePlacesSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 6) & 1}];
    [v6 setIncludeDuplicatesAlbums:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 16) & 1}];
    [v6 setIncludeUserSmartAlbums:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 22) & 1}];
    [v6 setIncludeAllPhotosSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 2) & 1}];
    [v6 setIncludeRecentlyEditedSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 12) & 1}];
    [v6 setIncludeScreenRecordingsSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 7) & 1}];
    [v6 setIncludeProResSmartAlbum:{(-[PXPhotoKitCollectionsDataSourceManagerConfiguration collectionTypesToInclude](self, "collectionTypesToInclude") >> 7) & 1}];
    v7 = MEMORY[0x1E6978758];
    v8 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self collectionList];
    v9 = [v7 fetchCollectionsInCollectionList:v8 options:v6];
    v10 = self->_collectionsFetchResult;
    self->_collectionsFetchResult = v9;

    collectionsFetchResult = self->_collectionsFetchResult;
  }

  return collectionsFetchResult;
}

- (PXPhotoKitCollectionsDataSourceManagerConfiguration)initWithCollectionList:(id)a3 collectionsFetchResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPhotoKitCollectionsDataSourceManagerConfiguration;
  v9 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetTypesToInclude = -1;
    v9->_collectionTypesToInclude = -1;
    objc_storeStrong(&v9->_collectionList, a3);
    objc_storeStrong(&v10->_collectionsFetchResult, a4);
  }

  return v10;
}

+ (id)_generatePredicateForAssetTypesToInclude:(unint64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a3 == -1)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = a3;
  if ((~a3 & 3) == 0)
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

  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) != 0)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) == %d OR noindex:(playbackStyle) == %d", 1, 5];
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) == %d AND noindex:(playbackStyle) != %d", 0, 5];
  if ((v3 & 2) != 0)
  {
    goto LABEL_5;
  }

LABEL_12:

  return v4;
}

@end