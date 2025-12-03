@interface PUPhotoKitAssetsDataSource
+ (BOOL)_shouldShowGyroBadgeForAsset:(id)asset;
+ (id)badgeInfoPromiseForAsset:(id)asset assetCollection:(id)collection spatialPresentationEnabled:(BOOL)enabled;
- (BOOL)couldAssetReferenceAppear:(id)appear;
- (BOOL)isEmpty;
- (PUPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)source withChange:(id)change fromDataSourceIdentifier:(id)identifier;
- (id)assetAtIndexPath:(id)path;
- (id)assetCollectionAtIndexPath:(id)path;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source;
- (id)indexPathForAssetCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (id)startingAssetReference;
- (int64_t)numberOfAssetsWithMaximum:(int64_t)maximum;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUPhotoKitAssetsDataSource

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [photosDataSource assetAtIndexPath:pathCopy];

  return v6;
}

- (BOOL)couldAssetReferenceAppear:(id)appear
{
  appearCopy = appear;
  photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  asset = [appearCopy asset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 1;
LABEL_12:

    goto LABEL_13;
  }

  isEmpty = [photosDataSource isEmpty];

  if ((isEmpty & 1) == 0)
  {
    asset2 = [appearCopy asset];
    px_isSharedAlbumAsset = [asset2 px_isSharedAlbumAsset];

    numberOfSections = [photosDataSource numberOfSections];
    if (numberOfSections < 1)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v12 = numberOfSections;
    asset = 0;
    v13 = 1;
    do
    {
      v14 = asset;
      asset = [photosDataSource assetCollectionForSection:v13 - 1];

      v15 = px_isSharedAlbumAsset ^ [asset px_isSharedAlbum];
    }

    while (v15 == 1 && v13++ < v12);
    v8 = v15 ^ 1;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (int64_t)numberOfAssetsWithMaximum:(int64_t)maximum
{
  maximumCopy = maximum;
  if (maximum)
  {
    if (maximum == 1)
    {
      photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      maximumCopy = [photosDataSource isEmpty] ^ 1;
    }

    else if (maximum == 2)
    {
      photosDataSource2 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      containsMultipleAssets = [photosDataSource2 containsMultipleAssets];

      if (containsMultipleAssets)
      {
        return 2;
      }

      else
      {
        photosDataSource3 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
        isEmpty = [photosDataSource3 isEmpty];

        return isEmpty ^ 1u;
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = PUPhotoKitAssetsDataSource;
      return [(PUAssetsDataSource *)&v11 numberOfAssetsWithMaximum:maximum];
    }
  }

  return maximumCopy;
}

- (BOOL)isEmpty
{
  photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  isEmpty = [photosDataSource isEmpty];

  return isEmpty;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  pathCopy = path;
  if ([pathCopy length] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"[indexPath length] == 2"}];
  }

  photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = [photosDataSource assetAtIndexPath:pathCopy];

  photosDataSource2 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  section = [pathCopy section];

  v12 = [photosDataSource2 assetCollectionForSection:section];

  v13 = [objc_opt_class() badgeInfoPromiseForAsset:v9 assetCollection:v12 spatialPresentationEnabled:enabledCopy];

  return v13;
}

- (id)startingAssetReference
{
  photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  if ([photosDataSource numberOfSections] < 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = [photosDataSource assetCollectionForSection:0];
    if ([v4 keyAssetsAtEnd])
    {
      [photosDataSource indexPathForLastAsset];
    }

    else
    {
      [photosDataSource indexPathForFirstAsset];
    }
    v6 = ;

    if (v6)
    {
      v5 = [(PUPhotoKitAssetsDataSource *)self assetReferenceAtIndexPath:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source
{
  pathCopy = path;
  sourceCopy = source;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [pathCopy length] == 2)
  {
    v8 = sourceCopy;
    change = [v8 change];
    if ([change hasIncrementalChanges])
    {
      changeFromDataSourceIdentifier = [v8 changeFromDataSourceIdentifier];
      identifier = [(PUTilingDataSource *)self identifier];
      v12 = [changeFromDataSourceIdentifier isEqualToString:identifier];

      if (v12)
      {
        change2 = [v8 change];
        v14 = [change2 indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath:pathCopy];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v16.receiver = self;
  v16.super_class = PUPhotoKitAssetsDataSource;
  v14 = [(PUAssetsDataSource *)&v16 convertIndexPath:pathCopy fromAssetsDataSource:sourceCopy];
LABEL_9:

  return v14;
}

- (id)indexPathForAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[PUPhotoKitAssetsDataSource photosDataSource](self, "photosDataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 sectionForAssetCollection:collectionCopy], v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [MEMORY[0x1E696AC88] indexPathWithIndex:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assetCollectionAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"[indexPath length] == 1"}];
  }

  v6 = [pathCopy indexAtPosition:0];
  photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [photosDataSource assetCollectionForSection:v6];

  return v8;
}

- (id)indexPathForAssetReference:(id)reference
{
  referenceCopy = reference;
  v6 = referenceCopy;
  if (!referenceCopy || ([referenceCopy dataSourceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    indexPath = [v6 indexPath];
    goto LABEL_26;
  }

  change = [(PUPhotoKitAssetsDataSource *)self change];
  if (([change hasIncrementalChanges] & 1) == 0)
  {

LABEL_14:
    asset = [v6 asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      asset2 = [v6 asset];
      indexPath2 = [v6 indexPath];
      assetCollection = [v6 assetCollection];
      indexPath = [photosDataSource indexPathForAsset:asset2 hintIndexPath:indexPath2 hintCollection:assetCollection];
    }

    else
    {
      asset3 = [v6 asset];
      uuid = [asset3 uuid];

      if (!uuid)
      {
        indexPath = 0;
        goto LABEL_26;
      }

      photosDataSource = [v6 asset];
      asset4 = [v6 asset];
      asset2 = [asset4 uuid];

      if (objc_opt_respondsToSelector())
      {
        indexPath2 = [photosDataSource burstIdentifier];
      }

      else
      {
        indexPath2 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        indexPath2 = 0;
      }

      photosDataSource2 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      assetCollection = [photosDataSource2 indexPathForLastAsset];

      photosDataSource3 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      indexPath = [photosDataSource3 indexPathForAssetWithUUID:asset2 orBurstIdentifier:indexPath2 hintIndexPath:assetCollection hintCollection:0];
    }

    goto LABEL_24;
  }

  changeFromDataSourceIdentifier = [(PUPhotoKitAssetsDataSource *)self changeFromDataSourceIdentifier];
  dataSourceIdentifier = [v6 dataSourceIdentifier];
  v14 = [changeFromDataSourceIdentifier isEqual:dataSourceIdentifier];

  if (!v14)
  {
    goto LABEL_14;
  }

  photosDataSource = [v6 indexPath];
  change2 = [(PUPhotoKitAssetsDataSource *)self change];
  v17 = [change2 indexPathAfterApplyingIncrementalChangesToIndexPath:photosDataSource];

  v18 = v17;
  asset2 = v18;
  if (!v18)
  {
    indexPath2 = [v6 asset];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![indexPath2 isGuestAsset])
    {
      asset2 = 0;
      indexPath = 0;
      goto LABEL_25;
    }

    assetCollection = indexPath2;
    if (assetCollection)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_33:
        currentHandler4 = photosDataSource;
        [assetCollection fetchPropertySetsIfNeeded];
        curationProperties = [assetCollection curationProperties];
        syndicationIdentifier = [curationProperties syndicationIdentifier];

        if (syndicationIdentifier)
        {
          photosDataSource4 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
          indexPath = [photosDataSource4 indexPathForAssetWithUUID:0 orSyndicationIdentifier:syndicationIdentifier hintIndexPath:currentHandler4 hintCollection:0];
        }

        else
        {
          indexPath = 0;
        }

        indexPath2 = assetCollection;
        goto LABEL_38;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v47 = NSStringFromClass(v48);
      px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v47, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v47}];
    }

    goto LABEL_33;
  }

  section = [v18 section];
  photosDataSource5 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  numberOfSections = [photosDataSource5 numberOfSections];

  if (section >= numberOfSections)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    change3 = [(PUPhotoKitAssetsDataSource *)self change];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:128 description:{@"Index path %@ converted using change %@ is invalid, section out of data source bounds: %@", photosDataSource, change3, asset2}];
  }

  item = [asset2 item];
  photosDataSource6 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v25 = [photosDataSource6 numberOfItemsInSection:{objc_msgSend(asset2, "section")}];

  if (item >= v25)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    change4 = [(PUPhotoKitAssetsDataSource *)self change];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:129 description:{@"Index path %@ converted using change %@ is invalid, outside section bounds: %@", photosDataSource, change4, asset2}];
  }

  indexPath2 = [v6 asset];
  photosDataSource7 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  assetCollection = [photosDataSource7 assetAtIndexPath:asset2];

  if (([indexPath2 isEqual:assetCollection] & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    syndicationIdentifier = [(PUPhotoKitAssetsDataSource *)self change];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:132 description:{@"Index path %@ converted using change %@ is invalid:%@ asset does not match: %@!=%@", photosDataSource, syndicationIdentifier, asset2, indexPath2, assetCollection}];
    indexPath = asset2;
LABEL_38:

    goto LABEL_24;
  }

  indexPath = asset2;
LABEL_24:

LABEL_25:
LABEL_26:

  return indexPath;
}

- (id)assetReferenceAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"[indexPath length] == 2"}];
  }

  v6 = [(NSCache *)self->__assetReferenceByIndexPathCache objectForKey:pathCopy];
  if (!v6)
  {
    photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
    v8 = [photosDataSource assetAtIndexPath:pathCopy];
    v9 = [photosDataSource assetCollectionForSection:{objc_msgSend(pathCopy, "section")}];
    v10 = [PUAssetReference alloc];
    identifier = [(PUTilingDataSource *)self identifier];
    v6 = [(PUAssetReference *)v10 initWithAsset:v8 assetCollection:v9 indexPath:pathCopy dataSourceIdentifier:identifier];

    [(NSCache *)self->__assetReferenceByIndexPathCache setObject:v6 forKey:pathCopy];
  }

  return v6;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy length];
  if (v6 == 1)
  {
    photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
    numberOfSections = [photosDataSource numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];
  }

  else
  {
    if (v6)
    {
      photosDataSource = [MEMORY[0x1E696AAA8] currentHandler];
      [photosDataSource handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:69 description:{@"invalid indexPath %@", pathCopy}];
      v9 = 0;
      goto LABEL_7;
    }

    photosDataSource = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
    numberOfSections = [photosDataSource numberOfSections];
  }

  v9 = numberOfSections;
LABEL_7:

  return v9;
}

- (PUPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)source withChange:(id)change fromDataSourceIdentifier:(id)identifier
{
  sourceCopy = source;
  changeCopy = change;
  identifierCopy = identifier;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"immutablePhotosDataSource != nil"}];
  }

  v19.receiver = self;
  v19.super_class = PUPhotoKitAssetsDataSource;
  v13 = [(PUTilingDataSource *)&v19 init];
  if (v13)
  {
    if (([sourceCopy options] & 4) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v13 file:@"PUPhotoKitAssetsDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"([immutablePhotosDataSource options] & PXPhotosDataSourceOptionDisableChangeHandling) == PXPhotosDataSourceOptionDisableChangeHandling"}];
    }

    objc_storeStrong(&v13->_photosDataSource, source);
    objc_storeStrong(&v13->_change, change);
    objc_storeStrong(&v13->_changeFromDataSourceIdentifier, identifier);
    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    assetReferenceByIndexPathCache = v13->__assetReferenceByIndexPathCache;
    v13->__assetReferenceByIndexPathCache = v14;
  }

  return v13;
}

+ (BOOL)_shouldShowGyroBadgeForAsset:(id)asset
{
  assetCopy = asset;
  if (((PFIsPhotosAppAnyPlatform() & 1) != 0 || PFIsCamera()) && PFPosterIsSpatialPhotoEnabled() && PFPosterDeviceSupportsSpatialPhoto())
  {
    v4 = [assetCopy isEligibleForSpatialGenerationIncludingStereo:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)badgeInfoPromiseForAsset:(id)asset assetCollection:(id)collection spatialPresentationEnabled:(BOOL)enabled
{
  assetCopy = asset;
  collectionCopy = collection;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke;
  aBlock[3] = &unk_1E7B7BBE0;
  v10 = assetCopy;
  v26 = v10;
  v11 = collectionCopy;
  v27 = v11;
  selfCopy = self;
  enabledCopy = enabled;
  v12 = _Block_copy(aBlock);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke_2;
  v22 = &unk_1E7B7BC30;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v15 = _Block_copy(&v19);
  v16 = [PUOneUpSettings sharedInstance:v19];
  if ([v16 debuggingBadges] || objc_msgSend(v16, "debuggingBadgesWhenFavorite"))
  {

    v15 = 0;
  }

  v17 = [[PUBadgeInfoPromise alloc] initWithBadgeInfoProvider:v12 countProvider:v15];

  return v17;
}

void __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [*(a1 + 32) mediaType];
  if (v4 == 1)
  {
    v5 = [*(a1 + 32) isMediaSubtype:2];
    v6 = [*(a1 + 32) isMediaSubtype:16];
  }

  else
  {
    if (v4 == 2)
    {
      [*(a1 + 32) isMediaSubtype:0x100000];
    }

    v5 = 0;
    v6 = 0;
  }

  v7 = [*(a1 + 32) hasEditableDepth];
  if ([*(a1 + 32) representsBurst])
  {
    v8 = [*(a1 + 40) canShowAvalancheStacks];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) RAWBadgeAttributes];
  v10 = *(MEMORY[0x1E69C4840] + 16);
  *a2 = *MEMORY[0x1E69C4840];
  a2[1] = v10;
  if (v5)
  {
    *a2 |= 4uLL;
    if (!v6)
    {
LABEL_11:
      if (!v8)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (!v6)
  {
    goto LABEL_11;
  }

  *a2 |= 0x10uLL;
  if (v8)
  {
LABEL_12:
    *a2 |= 8uLL;
  }

LABEL_13:
  if ([*(a1 + 32) isCinematicVideo])
  {
    *a2 |= 0x800000000uLL;
  }

  if ([*(a1 + 32) isProRes] && (objc_msgSend(*(a1 + 32), "isCinematicVideo") & 1) == 0)
  {
    v11 = [*(a1 + 32) px_isProResRAW];
    v12 = 0x400000000;
    if (v11)
    {
      v12 = 0x40000000000000;
    }

    *a2 |= v12;
  }

  if ([*(a1 + 32) isSpatialMedia])
  {
    *a2 |= 0x20000000000uLL;
  }

  if ([*(a1 + 32) isPhotoIris])
  {
    v13 = [MEMORY[0x1E69C38B0] sharedInstance];
    v14 = [v13 showActionableLivePhotosBadge];

    if (v14)
    {
      *a2 |= 0x2000uLL;
    }

    if ([*(a1 + 32) playbackVariation] == 1 && objc_msgSend(*(a1 + 32), "playbackStyle") == 5)
    {
      v15 = 128;
    }

    else if ([*(a1 + 32) playbackVariation] == 2 && objc_msgSend(*(a1 + 32), "playbackStyle") == 5)
    {
      v15 = 256;
    }

    else if ([*(a1 + 32) canPlayLongExposure])
    {
      v15 = 512;
    }

    else if ([*(a1 + 32) canPlayPhotoIris] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isPhotoIrisPlaceholder"))
    {
      v15 = 64;
    }

    else
    {
      if ([*(a1 + 32) isPhotoIrisPlaceholder])
      {
        goto LABEL_40;
      }

      v15 = 16777280;
    }

    *a2 |= v15;
  }

LABEL_40:
  if (v7 && ((v6 & 1) != 0 || [*(a1 + 32) isPhotoIris]))
  {
    *a2 |= 0x40000000000uLL;
  }

  if ((v9 - 1) <= 2)
  {
    *a2 |= qword_1B3D0D498[v9 - 1];
  }

  v16 = [MEMORY[0x1E69C3A00] sharedInstance];
  v17 = [v16 enableOneUpBadge];

  if (v17)
  {
    v18 = PUSharedLibraryStateForAsset(*(a1 + 32));
    if (v18 == 1)
    {
      v19 = 0xA000000000;
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_52;
      }

      v19 = 0x6000000000;
    }

    *a2 |= v19;
  }

LABEL_52:
  if ([*(a1 + 48) _shouldShowGyroBadgeForAsset:*(a1 + 32)])
  {
    [*(a1 + 32) fetchPropertySetsIfNeeded];
    v20 = 0x14000000000000;
    if (*(a1 + 56))
    {
      v20 = 0xC000000000000;
    }

    *a2 |= v20;
  }

  v25 = +[PUOneUpSettings sharedInstance];
  v21 = [v25 debuggingBadges];
  v22 = [v25 debuggingBadgesWhenFavorite];
  if (v21 | v22)
  {
    v23 = v22;
    if ([*(a1 + 32) isFavorite])
    {
      v24 = v23;
    }

    else
    {
      v24 = v21;
    }

    *a2 = v24;
    *(a2 + 2) = 42;
  }
}

uint64_t __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke_2(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ([*(a1 + 32) representsBurst] && objc_msgSend(*(a1 + 40), "canShowAvalancheStacks"))
  {
    v2 = [*(a1 + 32) burstIdentifier];
    if ([*(a1 + 32) sourceType] == 4)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = [*(a1 + 32) photoLibrary];
    v5 = [v4 photoLibrary];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke_3;
    v10[3] = &unk_1E7B7BC08;
    v13 = &v15;
    v6 = v2;
    v11 = v6;
    v14 = v3;
    v7 = v5;
    v12 = v7;
    [v7 performBlockAndWait:v10];
  }

  v8 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke_3(void *a1)
{
  result = [MEMORY[0x1E69BE2B0] countForAssetsWithAvalancheUUID:a1[4] sourceType:a1[7] inLibrary:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

@end