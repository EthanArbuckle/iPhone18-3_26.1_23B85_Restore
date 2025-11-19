@interface PUPhotoKitAssetsDataSource
+ (BOOL)_shouldShowGyroBadgeForAsset:(id)a3;
+ (id)badgeInfoPromiseForAsset:(id)a3 assetCollection:(id)a4 spatialPresentationEnabled:(BOOL)a5;
- (BOOL)couldAssetReferenceAppear:(id)a3;
- (BOOL)isEmpty;
- (PUPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)a3 withChange:(id)a4 fromDataSourceIdentifier:(id)a5;
- (id)assetAtIndexPath:(id)a3;
- (id)assetCollectionAtIndexPath:(id)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4;
- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4;
- (id)indexPathForAssetCollection:(id)a3;
- (id)indexPathForAssetReference:(id)a3;
- (id)startingAssetReference;
- (int64_t)numberOfAssetsWithMaximum:(int64_t)a3;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUPhotoKitAssetsDataSource

- (id)assetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v5 assetAtIndexPath:v4];

  return v6;
}

- (BOOL)couldAssetReferenceAppear:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v6 = [v4 asset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v7 = [v5 isEmpty];

  if ((v7 & 1) == 0)
  {
    v9 = [v4 asset];
    v10 = [v9 px_isSharedAlbumAsset];

    v11 = [v5 numberOfSections];
    if (v11 < 1)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v12 = v11;
    v6 = 0;
    v13 = 1;
    do
    {
      v14 = v6;
      v6 = [v5 assetCollectionForSection:v13 - 1];

      v15 = v10 ^ [v6 px_isSharedAlbum];
    }

    while (v15 == 1 && v13++ < v12);
    v8 = v15 ^ 1;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (int64_t)numberOfAssetsWithMaximum:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      v3 = [v7 isEmpty] ^ 1;
    }

    else if (a3 == 2)
    {
      v5 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      v6 = [v5 containsMultipleAssets];

      if (v6)
      {
        return 2;
      }

      else
      {
        v8 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
        v9 = [v8 isEmpty];

        return v9 ^ 1u;
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = PUPhotoKitAssetsDataSource;
      return [(PUAssetsDataSource *)&v11 numberOfAssetsWithMaximum:a3];
    }
  }

  return v3;
}

- (BOOL)isEmpty
{
  v2 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v3 = [v2 isEmpty];

  return v3;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([v7 length] != 2)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"[indexPath length] == 2"}];
  }

  v8 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v9 = [v8 assetAtIndexPath:v7];

  v10 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v11 = [v7 section];

  v12 = [v10 assetCollectionForSection:v11];

  v13 = [objc_opt_class() badgeInfoPromiseForAsset:v9 assetCollection:v12 spatialPresentationEnabled:v4];

  return v13;
}

- (id)startingAssetReference
{
  v3 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  if ([v3 numberOfSections] < 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = [v3 assetCollectionForSection:0];
    if ([v4 keyAssetsAtEnd])
    {
      [v3 indexPathForLastAsset];
    }

    else
    {
      [v3 indexPathForFirstAsset];
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

- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length] == 2)
  {
    v8 = v7;
    v9 = [v8 change];
    if ([v9 hasIncrementalChanges])
    {
      v10 = [v8 changeFromDataSourceIdentifier];
      v11 = [(PUTilingDataSource *)self identifier];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        v13 = [v8 change];
        v14 = [v13 indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath:v6];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v16.receiver = self;
  v16.super_class = PUPhotoKitAssetsDataSource;
  v14 = [(PUAssetsDataSource *)&v16 convertIndexPath:v6 fromAssetsDataSource:v7];
LABEL_9:

  return v14;
}

- (id)indexPathForAssetCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[PUPhotoKitAssetsDataSource photosDataSource](self, "photosDataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 sectionForAssetCollection:v4], v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [MEMORY[0x1E696AC88] indexPathWithIndex:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assetCollectionAtIndexPath:(id)a3
{
  v5 = a3;
  if ([v5 length] != 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"[indexPath length] == 1"}];
  }

  v6 = [v5 indexAtPosition:0];
  v7 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v8 = [v7 assetCollectionForSection:v6];

  return v8;
}

- (id)indexPathForAssetReference:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5 || ([v5 dataSourceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    v10 = [v6 indexPath];
    goto LABEL_26;
  }

  v11 = [(PUPhotoKitAssetsDataSource *)self change];
  if (([v11 hasIncrementalChanges] & 1) == 0)
  {

LABEL_14:
    v29 = [v6 asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      v19 = [v6 asset];
      v26 = [v6 indexPath];
      v28 = [v6 assetCollection];
      v10 = [v15 indexPathForAsset:v19 hintIndexPath:v26 hintCollection:v28];
    }

    else
    {
      v31 = [v6 asset];
      v32 = [v31 uuid];

      if (!v32)
      {
        v10 = 0;
        goto LABEL_26;
      }

      v15 = [v6 asset];
      v33 = [v6 asset];
      v19 = [v33 uuid];

      if (objc_opt_respondsToSelector())
      {
        v26 = [v15 burstIdentifier];
      }

      else
      {
        v26 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v26 = 0;
      }

      v34 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      v28 = [v34 indexPathForLastAsset];

      v35 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
      v10 = [v35 indexPathForAssetWithUUID:v19 orBurstIdentifier:v26 hintIndexPath:v28 hintCollection:0];
    }

    goto LABEL_24;
  }

  v12 = [(PUPhotoKitAssetsDataSource *)self changeFromDataSourceIdentifier];
  v13 = [v6 dataSourceIdentifier];
  v14 = [v12 isEqual:v13];

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = [v6 indexPath];
  v16 = [(PUPhotoKitAssetsDataSource *)self change];
  v17 = [v16 indexPathAfterApplyingIncrementalChangesToIndexPath:v15];

  v18 = v17;
  v19 = v18;
  if (!v18)
  {
    v26 = [v6 asset];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![v26 isGuestAsset])
    {
      v19 = 0;
      v10 = 0;
      goto LABEL_25;
    }

    v28 = v26;
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_33:
        v37 = v15;
        [v28 fetchPropertySetsIfNeeded];
        v38 = [v28 curationProperties];
        v39 = [v38 syndicationIdentifier];

        if (v39)
        {
          v40 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
          v10 = [v40 indexPathForAssetWithUUID:0 orSyndicationIdentifier:v39 hintIndexPath:v37 hintCollection:0];
        }

        else
        {
          v10 = 0;
        }

        v26 = v28;
        goto LABEL_38;
      }

      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v47 = NSStringFromClass(v48);
      v49 = [v28 px_descriptionForAssertionMessage];
      [v45 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v47, v49}];
    }

    else
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      [v45 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v47}];
    }

    goto LABEL_33;
  }

  v20 = [v18 section];
  v21 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v22 = [v21 numberOfSections];

  if (v20 >= v22)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [(PUPhotoKitAssetsDataSource *)self change];
    [v41 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:128 description:{@"Index path %@ converted using change %@ is invalid, section out of data source bounds: %@", v15, v42, v19}];
  }

  v23 = [v19 item];
  v24 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v25 = [v24 numberOfItemsInSection:{objc_msgSend(v19, "section")}];

  if (v23 >= v25)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [(PUPhotoKitAssetsDataSource *)self change];
    [v43 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:129 description:{@"Index path %@ converted using change %@ is invalid, outside section bounds: %@", v15, v44, v19}];
  }

  v26 = [v6 asset];
  v27 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
  v28 = [v27 assetAtIndexPath:v19];

  if (([v26 isEqual:v28] & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = [(PUPhotoKitAssetsDataSource *)self change];
    [v37 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:132 description:{@"Index path %@ converted using change %@ is invalid:%@ asset does not match: %@!=%@", v15, v39, v19, v26, v28}];
    v10 = v19;
LABEL_38:

    goto LABEL_24;
  }

  v10 = v19;
LABEL_24:

LABEL_25:
LABEL_26:

  return v10;
}

- (id)assetReferenceAtIndexPath:(id)a3
{
  v5 = a3;
  if ([v5 length] != 2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"[indexPath length] == 2"}];
  }

  v6 = [(NSCache *)self->__assetReferenceByIndexPathCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
    v8 = [v7 assetAtIndexPath:v5];
    v9 = [v7 assetCollectionForSection:{objc_msgSend(v5, "section")}];
    v10 = [PUAssetReference alloc];
    v11 = [(PUTilingDataSource *)self identifier];
    v6 = [(PUAssetReference *)v10 initWithAsset:v8 assetCollection:v9 indexPath:v5 dataSourceIdentifier:v11];

    [(NSCache *)self->__assetReferenceByIndexPathCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 length];
  if (v6 == 1)
  {
    v7 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
    v8 = [v7 numberOfItemsInSection:{objc_msgSend(v5, "section")}];
  }

  else
  {
    if (v6)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:69 description:{@"invalid indexPath %@", v5}];
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [(PUPhotoKitAssetsDataSource *)self photosDataSource];
    v8 = [v7 numberOfSections];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (PUPhotoKitAssetsDataSource)initWithImmutablePhotosDataSource:(id)a3 withChange:(id)a4 fromDataSourceIdentifier:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetsDataSource.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"immutablePhotosDataSource != nil"}];
  }

  v19.receiver = self;
  v19.super_class = PUPhotoKitAssetsDataSource;
  v13 = [(PUTilingDataSource *)&v19 init];
  if (v13)
  {
    if (([v10 options] & 4) == 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v13 file:@"PUPhotoKitAssetsDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"([immutablePhotosDataSource options] & PXPhotosDataSourceOptionDisableChangeHandling) == PXPhotosDataSourceOptionDisableChangeHandling"}];
    }

    objc_storeStrong(&v13->_photosDataSource, a3);
    objc_storeStrong(&v13->_change, a4);
    objc_storeStrong(&v13->_changeFromDataSourceIdentifier, a5);
    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    assetReferenceByIndexPathCache = v13->__assetReferenceByIndexPathCache;
    v13->__assetReferenceByIndexPathCache = v14;
  }

  return v13;
}

+ (BOOL)_shouldShowGyroBadgeForAsset:(id)a3
{
  v3 = a3;
  if (((PFIsPhotosAppAnyPlatform() & 1) != 0 || PFIsCamera()) && PFPosterIsSpatialPhotoEnabled() && PFPosterDeviceSupportsSpatialPhoto())
  {
    v4 = [v3 isEligibleForSpatialGenerationIncludingStereo:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)badgeInfoPromiseForAsset:(id)a3 assetCollection:(id)a4 spatialPresentationEnabled:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PUPhotoKitAssetsDataSource_badgeInfoPromiseForAsset_assetCollection_spatialPresentationEnabled___block_invoke;
  aBlock[3] = &unk_1E7B7BBE0;
  v10 = v8;
  v26 = v10;
  v11 = v9;
  v27 = v11;
  v28 = a1;
  v29 = a5;
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