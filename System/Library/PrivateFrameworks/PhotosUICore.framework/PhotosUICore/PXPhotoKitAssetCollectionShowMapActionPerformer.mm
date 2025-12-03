@interface PXPhotoKitAssetCollectionShowMapActionPerformer
+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)_effectiveAssetsFetchResultWithAssetsFetchResult:(id)result assetCollectionReference:(id)reference dataSource:(id)source;
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShowMapActionPerformer

+ (id)_effectiveAssetsFetchResultWithAssetsFetchResult:(id)result assetCollectionReference:(id)reference dataSource:(id)source
{
  resultCopy = result;
  sourceCopy = source;
  v11 = resultCopy;
  v12 = v11;
  if (v11)
  {
    goto LABEL_2;
  }

  memset(v25, 0, sizeof(v25));
  v14 = [sourceCopy assetCollectionReferenceForAssetCollectionReference:reference];
  v15 = v14;
  if (v14)
  {
    [v14 indexPath];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  if (*&v25[0] != *off_1E7721F68 && *(&v25[0] + 1) != 0x7FFFFFFFFFFFFFFFLL && *&v25[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24[0] = v25[0];
    v24[1] = v25[1];
    v18 = [sourceCopy uncuratedAssetsInSectionIndexPath:v24];
    if (v18)
    {
      v12 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_2;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowMapActionPerformer.m" lineNumber:100 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[assetsDataSource uncuratedAssetsInSectionIndexPath:indexPath]", v21, px_descriptionForAssertionMessage}];
      goto LABEL_23;
    }
  }

  if ([sourceCopy numberOfSections] != 1)
  {
    v12 = 0;
    goto LABEL_2;
  }

  *&v25[0] = [sourceCopy identifier];
  *(v25 + 8) = xmmword_1A5380D10;
  *(&v25[1] + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v12 = [sourceCopy uncuratedAssetsInSectionIndexPath:v25];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v21 = NSStringFromClass(v23);
      px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowMapActionPerformer.m" lineNumber:105 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[assetsDataSource uncuratedAssetsInSectionIndexPath:indexPath]", v21, px_descriptionForAssertionMessage}];
LABEL_23:
    }
  }

LABEL_2:

  return v12;
}

+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  typeCopy = type;
  referenceCopy = reference;
  inputsCopy = inputs;
  assetCollection = [referenceCopy assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowMapActionPerformer.m" lineNumber:45 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v30, px_descriptionForAssertionMessage}];
    }

    assetCollectionSubtype = [assetCollection assetCollectionSubtype];
  }

  else
  {
    assetCollectionSubtype = 0;
  }

  v14 = 0;
  if (([assetCollection px_isSharedAlbum] & 1) == 0 && assetCollectionSubtype != 205 && assetCollectionSubtype != 1000000201)
  {
    assetsFetchResult = [inputsCopy assetsFetchResult];
    assetsDataSource = [inputsCopy assetsDataSource];
    v17 = [self _effectiveAssetsFetchResultWithAssetsFetchResult:assetsFetchResult assetCollectionReference:referenceCopy dataSource:assetsDataSource];

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v18 = [v17 count];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __110__PXPhotoKitAssetCollectionShowMapActionPerformer_canPerformActionType_onAssetCollectionReference_withInputs___block_invoke;
    v32[3] = &unk_1E7736408;
    v32[4] = &v33;
    v32[5] = v18;
    [v17 enumerateObjectsWithOptions:2 usingBlock:v32];
    if (v34[3])
    {
      v14 = 1;
    }

    else
    {
      fetchedObjectIDs = [v17 fetchedObjectIDs];
      if ([fetchedObjectIDs count])
      {
        v20 = MEMORY[0x1E6978830];
        photoLibrary = [v17 photoLibrary];
        firstObject = [v17 firstObject];
        v23 = [v20 fetchOptionsWithPhotoLibrary:photoLibrary orObject:firstObject];

        [v23 setFetchLimit:1];
        v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in (%@) AND additionalAttributes.locationHash != 0", fetchedObjectIDs];
        [v23 setInternalPredicate:v24];

        [v23 setInternalSortDescriptors:MEMORY[0x1E695E0F0]];
        v25 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v23];
        v26 = [v25 count] != 0;
        *(v34 + 24) = v26;
      }

      v14 = *(v34 + 24);
    }

    _Block_object_dispose(&v33, 8);
  }

  return v14 & 1;
}

void __110__PXPhotoKitAssetCollectionShowMapActionPerformer_canPerformActionType_onAssetCollectionReference_withInputs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 location];
  *(*(*(a1 + 32) + 8) + 24) = v7 != 0;

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || (*(a1 + 40) - a3) >= 0xC9)
  {
    *a4 = 1;
  }
}

- (void)performUserInteractionTask
{
  v4 = objc_opt_class();
  assetsFetchResult = [(PXAssetCollectionActionPerformer *)self assetsFetchResult];
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  assetsDataSource = [(PXAssetCollectionActionPerformer *)self assetsDataSource];
  v18 = [v4 _effectiveAssetsFetchResultWithAssetsFetchResult:assetsFetchResult assetCollectionReference:assetCollectionReference dataSource:assetsDataSource];

  v8 = v18;
  if (!v18)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowMapActionPerformer.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"assetsFetchResult"}];

    v8 = 0;
  }

  photoLibrary = [v8 photoLibrary];
  v10 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v18 subtype:0x7FFFFFFFFFFFFFFFLL];
  v11 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
  v12 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v11];
  v13 = PXPhotoKitAssetCollectionSupportsNearbyAssetsAffordance(v10);
  viewMode = [(PXLibraryFilterState *)v12 viewMode];
  v15 = [_TtC12PhotosUICore17PXLemonadeMapView makeViewWithPhotoLibrary:photoLibrary collection:v10 libraryFilterViewMode:viewMode initialCenterCoordinate:1 wantsDismissButton:v13 wantsNearbyAssetsAffordance:1 enableGridView:*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)];
  if ([(PXActionPerformer *)self presentViewController:v15])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present mapViewController"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v16];
  }
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXPhotoKitAssetCollectionShowMapActionPerformer *)self activityType];

  if (activityType != activityType2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowMapActionPerformer.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"activity.activityType == self.activityType"}];
  }

  return 1;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v5 = objc_opt_class();
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v7 = [v5 localizedTitleForUseCase:case assetCollectionReference:assetCollectionReference withInputs:0];

  return v7;
}

@end