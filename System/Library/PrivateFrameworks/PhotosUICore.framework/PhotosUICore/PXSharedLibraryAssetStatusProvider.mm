@interface PXSharedLibraryAssetStatusProvider
+ (id)_appendMediaTypeForStatusStringFormat:(id)format mediaType:(int64_t)type;
+ (id)_applyAttributesToTitle:(id)title;
+ (id)_localizedContributionStatusForContributor:(id)contributor status:(unint64_t)status assetMediaType:(int64_t)type;
+ (id)localizedContributionStatusStringForParticipants:(id)participants assetMediaType:(int64_t)type showOnlyOneNameToShortenStatus:(BOOL)status;
- (PXSharedLibraryAssetStatusProvider)initWithAsset:(id)asset;
- (id)attributedLocalizedContributionStatusForPreferredWidth:(double)width maximumNumberOfLines:(double)lines;
- (id)fetchParticipants;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_setPhotoLibrary:(id)library;
- (void)_updateProperties;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)setAsset:(id)asset;
- (void)setHasSharedLibraryOrPreview:(BOOL)preview;
- (void)setLocalizedContributionStatus:(id)status;
- (void)setStatus:(unint64_t)status;
@end

@implementation PXSharedLibraryAssetStatusProvider

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 3) != 0 && PXSharedLibraryStatusProviderObservationContext_116869 == context)
  {
    hasSharedLibraryOrPreview = [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider hasSharedLibraryOrPreview];

    [(PXSharedLibraryAssetStatusProvider *)self setHasSharedLibraryOrPreview:hasSharedLibraryOrPreview];
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  v7 = infoCopy;
  if (infoCopy)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"current"];
    asset = [(PXSharedLibraryAssetStatusProvider *)self asset];

    if (v8 == asset)
    {
      v10 = [v7 objectForKeyedSubscript:@"new"];
      [(PXSharedLibraryAssetStatusProvider *)self setAsset:v10];
    }
  }
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v25[2] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__116876;
  v20 = __Block_byref_object_dispose__116877;
  v21 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXSharedLibraryAssetStatusProvider_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  if (v17[5])
  {
    v5 = [changeCopy changeDetailsForObject:?];
    v6 = v5;
    if (v5)
    {
      objectAfterChanges = [v5 objectAfterChanges];
      v8 = objectAfterChanges;
      if (objectAfterChanges)
      {
        v9 = v17[5];
        v24[0] = @"current";
        v24[1] = @"new";
        v25[0] = v9;
        v25[1] = objectAfterChanges;
        v10 = v24;
        v11 = v25;
        v12 = 2;
      }

      else
      {
        v22 = @"current";
        v23 = v17[5];
        v10 = &v22;
        v11 = &v23;
        v12 = 1;
      }

      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

void __67__PXSharedLibraryAssetStatusProvider_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asset];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)attributedLocalizedContributionStatusForPreferredWidth:(double)width maximumNumberOfLines:(double)lines
{
  fetchParticipants = [(PXSharedLibraryAssetStatusProvider *)self fetchParticipants];
  fetchedObjects = [fetchParticipants fetchedObjects];
  asset = [(PXSharedLibraryAssetStatusProvider *)self asset];
  mediaType = [asset mediaType];

  v11 = [PXSharedLibraryAssetStatusProvider localizedContributionStatusStringForParticipants:fetchedObjects assetMediaType:mediaType showOnlyOneNameToShortenStatus:0];
  v12 = [PXSharedLibraryAssetStatusProvider _applyAttributesToTitle:v11];
  [v12 px_sizeWithProposedWidth:(lines + 1.0) maximumLines:1 drawingOptions:width];
  v14 = v13;
  v15 = +[PXSharedLibraryAssetStatusProvider _primaryFont];
  [v15 lineHeight];
  v17 = v16;

  if (floor(v14 / v17) > lines)
  {
    v18 = [PXSharedLibraryAssetStatusProvider localizedContributionStatusStringForParticipants:fetchedObjects assetMediaType:mediaType showOnlyOneNameToShortenStatus:1];

    v19 = [PXSharedLibraryAssetStatusProvider _applyAttributesToTitle:v18];

    v12 = v19;
    v11 = v18;
  }

  return v12;
}

- (void)_updateProperties
{
  v32[1] = *MEMORY[0x1E69E9840];
  asset = [(PXSharedLibraryAssetStatusProvider *)self asset];
  photoLibrary = [asset photoLibrary];
  [(PXSharedLibraryAssetStatusProvider *)self _setPhotoLibrary:photoLibrary];

  asset = self->_asset;
  if (asset && [(PHAsset *)asset isInSharedLibrary]&& self->_hasSharedLibraryOrPreview)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v7 = [MEMORY[0x1E6978AC0] fetchContributorsForAsset:self->_asset options:librarySpecificFetchOptions];
    if ([v7 count])
    {
      v8 = 3;
    }

    else
    {
      librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v32[0] = *MEMORY[0x1E6978C80];
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [librarySpecificFetchOptions2 setFetchPropertySets:v13];

      v14 = MEMORY[0x1E6978630];
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      v31 = localIdentifier;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:librarySpecificFetchOptions2];

      firstObject = [v17 firstObject];
      participatesInLibraryScope = [firstObject participatesInLibraryScope];
      libraryScopeProperties = [firstObject libraryScopeProperties];
      assetIsInOnboardingPreviewState = [libraryScopeProperties assetIsInOnboardingPreviewState];

      if (participatesInLibraryScope)
      {
        v22 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = self->_asset;
          *buf = 138412546;
          v28 = v7;
          v29 = 2112;
          v30 = v23;
          _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEBUG, "No name for contributors: %@, of asset: %@", buf, 0x16u);
        }

        v8 = 3;
      }

      else if (assetIsInOnboardingPreviewState)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  fetchedObjects = [v7 fetchedObjects];
  v10 = [PXSharedLibraryAssetStatusProvider _localizedContributionStatusForContributor:fetchedObjects status:v8 assetMediaType:[(PHAsset *)self->_asset mediaType]];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__PXSharedLibraryAssetStatusProvider__updateProperties__block_invoke;
  v24[3] = &unk_1E77499B0;
  v25 = v10;
  v26 = v8;
  v24[4] = self;
  v11 = v10;
  [(PXSharedLibraryAssetStatusProvider *)self performChanges:v24];
}

uint64_t __55__PXSharedLibraryAssetStatusProvider__updateProperties__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStatus:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setLocalizedContributionStatus:v3];
}

- (void)_setPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = self->_photoLibrary;
  v6 = v5;
  if (v5 == libraryCopy)
  {
  }

  else
  {
    v7 = [(PHPhotoLibrary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      photoLibrary = self->_photoLibrary;
      if (photoLibrary)
      {
        [(PHPhotoLibrary *)photoLibrary px_unregisterChangeObserver:self];
        [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider unregisterChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext_116869];
        sharedLibraryStatusProvider = self->_sharedLibraryStatusProvider;
        self->_sharedLibraryStatusProvider = 0;

        self->_hasSharedLibraryOrPreview = 0;
      }

      objc_storeStrong(&self->_photoLibrary, library);
      v10 = self->_photoLibrary;
      if (v10)
      {
        [(PHPhotoLibrary *)v10 px_registerChangeObserver:self];
        v11 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:self->_photoLibrary];
        v12 = self->_sharedLibraryStatusProvider;
        self->_sharedLibraryStatusProvider = v11;

        [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider registerChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext_116869];
        self->_hasSharedLibraryOrPreview = [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider hasSharedLibraryOrPreview];
      }
    }
  }
}

- (void)setLocalizedContributionStatus:(id)status
{
  statusCopy = status;
  v5 = self->_localizedContributionStatus;
  v6 = v5;
  if (v5 == statusCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_localizedContributionStatus, status);
      [(PXSharedLibraryAssetStatusProvider *)self signalChange:2];
    }
  }
}

- (void)setStatus:(unint64_t)status
{
  if (self->_status != status)
  {
    self->_status = status;
    [(PXSharedLibraryAssetStatusProvider *)self signalChange:1];
  }
}

- (void)setHasSharedLibraryOrPreview:(BOOL)preview
{
  if (self->_hasSharedLibraryOrPreview != preview)
  {
    self->_hasSharedLibraryOrPreview = preview;
    [(PXSharedLibraryAssetStatusProvider *)self _updateProperties];
  }
}

- (id)fetchParticipants
{
  asset = [(PXSharedLibraryAssetStatusProvider *)self asset];
  fetchedParticipants = [(PXSharedLibraryAssetStatusProvider *)self fetchedParticipants];
  if (!fetchedParticipants && asset)
  {
    if (![(PXSharedLibraryAssetStatusProvider *)self hasSharedLibraryOrPreview])
    {
      goto LABEL_6;
    }

    fetchedParticipants = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v5 = [MEMORY[0x1E6978AC0] fetchContributorsForAsset:asset options:fetchedParticipants];
    [(PXSharedLibraryAssetStatusProvider *)self setFetchedParticipants:v5];
  }

LABEL_6:
  fetchedParticipants2 = [(PXSharedLibraryAssetStatusProvider *)self fetchedParticipants];

  return fetchedParticipants2;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  v4 = self->_asset;
  asset = v4;
  if (v4 != assetCopy)
  {
    v6 = [(PHAsset *)v4 isEqual:?];

    if (v6)
    {
      goto LABEL_10;
    }

    if (assetCopy)
    {
      if ([(PHAsset *)assetCopy px_isSharedAlbumAsset])
      {
        v7 = 0;
      }

      else
      {
        v7 = assetCopy;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    asset = self->_asset;
    self->_asset = v8;
  }

LABEL_10:
  [(PXSharedLibraryAssetStatusProvider *)self setFetchedParticipants:0];
  [(PXSharedLibraryAssetStatusProvider *)self _updateProperties];
}

- (PXSharedLibraryAssetStatusProvider)initWithAsset:(id)asset
{
  assetCopy = asset;
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssetStatusProvider;
  v5 = [(PXSharedLibraryAssetStatusProvider *)&v8 init];
  if (v5)
  {
    if (assetCopy)
    {
      if ([assetCopy px_isSharedAlbumAsset])
      {
        v6 = 0;
      }

      else
      {
        v6 = assetCopy;
      }
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&v5->_asset, v6);
    [(PXSharedLibraryAssetStatusProvider *)v5 _updateProperties];
  }

  return v5;
}

+ (id)_applyAttributesToTitle:(id)title
{
  v22[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v16 = +[PXSharedLibraryAssetStatusProvider _primaryFont];
  v4 = +[PXSharedLibraryAssetStatusProvider _displayNameFont];
  v5 = +[PXSharedLibraryAssetStatusProvider _libraryNameFont];
  v7 = *MEMORY[0x1E69DB650];
  v21[0] = *MEMORY[0x1E69DB648];
  v6 = v21[0];
  v21[1] = v7;
  v22[0] = v16;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v22[1] = secondaryLabelColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v19[1] = v7;
  v20[0] = v4;
  v19[0] = v6;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v20[1] = labelColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v17[1] = v7;
  v18[0] = v5;
  v17[0] = v6;
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v18[1] = labelColor2;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v14 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:titleCopy defaultAttributes:v9 emphasizedAttributes:v11 italicizedAttributes:v13];

  return v14;
}

+ (id)_appendMediaTypeForStatusStringFormat:(id)format mediaType:(int64_t)type
{
  formatCopy = format;
  v6 = formatCopy;
  v7 = @"Item";
  if (type == 2)
  {
    v7 = @"Video";
  }

  if (type == 1)
  {
    v8 = @"Photo";
  }

  else
  {
    v8 = v7;
  }

  v9 = [formatCopy stringByAppendingString:v8];

  return v9;
}

+ (id)localizedContributionStatusStringForParticipants:(id)participants assetMediaType:(int64_t)type showOnlyOneNameToShortenStatus:(BOOL)status
{
  statusCopy = status;
  v34 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = participantsCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if ([v15 isCurrentUser])
        {
          v12 = 1;
        }

        else
        {
          v16 = PXSharedLibraryShortNameForParticipant(v15);
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);

    if (v12)
    {
      if ([v8 count] > 2 || statusCopy && objc_msgSend(v8, "count"))
      {
        v17 = [PXSharedLibraryAssetStatusProvider _appendMediaTypeForStatusStringFormat:@"PXSharedLibraryInfoPanelTitle_YouAndOtherContributors_" mediaType:type];
        PXLocalizedSharedLibraryString(v17);
        objc_claimAutoreleasedReturnValue();

        [v8 count];
        PXLocalizedStringWithValidatedFormat();
      }

      if ([v8 count] == 2)
      {
        v24 = @"PXSharedLibraryInfoPanelTitle_YouAndTwoContributors_";
        goto LABEL_31;
      }

      if ([v8 count] == 1)
      {
        v27 = @"PXSharedLibraryInfoPanelTitle_YouAndOneContributors_";
        goto LABEL_38;
      }

      v19 = @"PXSharedLibraryInfoPanelTitle_YouContributor_";
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ([v8 count])
  {
    if ([v8 count] > 3 || statusCopy && objc_msgSend(v8, "count") >= 2)
    {
      v18 = [PXSharedLibraryAssetStatusProvider _appendMediaTypeForStatusStringFormat:@"PXSharedLibraryInfoPanelTitle_OneAndOtherContributors_" mediaType:type];
      PXLocalizedSharedLibraryString(v18);
      objc_claimAutoreleasedReturnValue();

      [v8 firstObject];
      objc_claimAutoreleasedReturnValue();
      [v8 count];
      goto LABEL_20;
    }

    if ([v8 count] == 3)
    {
      v23 = [PXSharedLibraryAssetStatusProvider _appendMediaTypeForStatusStringFormat:@"PXSharedLibraryInfoPanelTitle_ThreeContributors_" mediaType:type];
      PXLocalizedSharedLibraryString(v23);
      objc_claimAutoreleasedReturnValue();

      [v8 objectAtIndex:0];
      objc_claimAutoreleasedReturnValue();
      [v8 objectAtIndex:1];
      objc_claimAutoreleasedReturnValue();
      [v8 objectAtIndex:2];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    if ([v8 count] == 2)
    {
      v24 = @"PXSharedLibraryInfoPanelTitle_TwoContributors_";
LABEL_31:
      v25 = [PXSharedLibraryAssetStatusProvider _appendMediaTypeForStatusStringFormat:v24 mediaType:type];
      PXLocalizedSharedLibraryString(v25);
      objc_claimAutoreleasedReturnValue();

      [v8 objectAtIndex:0];
      objc_claimAutoreleasedReturnValue();
      [v8 objectAtIndex:1];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v27 = @"PXSharedLibraryInfoPanelTitle_OneContributor_";
LABEL_38:
    v28 = [PXSharedLibraryAssetStatusProvider _appendMediaTypeForStatusStringFormat:v27 mediaType:type];
    PXLocalizedSharedLibraryString(v28);
    objc_claimAutoreleasedReturnValue();

    [v8 firstObject];
    objc_claimAutoreleasedReturnValue();
LABEL_20:
    PXLocalizedStringWithValidatedFormat();
  }

  v19 = @"PXSharedLibraryInfoPanelTitle_NoContributors_";
LABEL_22:
  v20 = [PXSharedLibraryAssetStatusProvider _appendMediaTypeForStatusStringFormat:v19 mediaType:type];
  v21 = PXLocalizedSharedLibraryString(v20);

  v22 = v21;

  return v22;
}

+ (id)_localizedContributionStatusForContributor:(id)contributor status:(unint64_t)status assetMediaType:(int64_t)type
{
  contributorCopy = contributor;
  v8 = contributorCopy;
  if (status == 1)
  {
    v12 = @"PXSharedLibrary_AssetStatus_NotShared";
  }

  else
  {
    if (status != 2)
    {
      if (status == 3 && [contributorCopy count])
      {
        v9 = [PXSharedLibraryAssetStatusProvider localizedContributionStatusStringForParticipants:v8 assetMediaType:type showOnlyOneNameToShortenStatus:0];
        v10 = [PXSharedLibraryAssetStatusProvider _applyAttributesToTitle:v9];
        string = [v10 string];
      }

      else
      {
        string = 0;
      }

      goto LABEL_10;
    }

    v12 = @"PXSharedLibrary_AssetStatus_SharedByMe";
  }

  string = PXLocalizedSharedLibraryString(v12);
LABEL_10:

  return string;
}

@end