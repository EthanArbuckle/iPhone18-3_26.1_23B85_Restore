@interface PUActivityItemSourceConfiguration
+ (BOOL)_dontAllowRAWForActivityType:(id)type;
+ (BOOL)isAssetBundleSupportedByActivityType:(id)type;
+ (BOOL)isIndividualItemPreparationSupportedByActivityType:(id)type;
+ (BOOL)isLivePhotoBundleSupportedByActivityType:(id)type;
+ (BOOL)isMomentShareLinkSupportedByActivityType:(id)type;
+ (BOOL)shouldExcludeAlternateVariantForActivityType:(id)type;
+ (BOOL)shouldProvideAlternateVariantForActivityType:(id)type forAsset:(id)asset inPreferredExportFormat:(int64_t)format withAvailableSharingVariants:(id)variants;
+ (BOOL)shouldProvideCompatibleFormatForActivityType:(id)type forAsset:(id)asset inPreferredExportFormat:(int64_t)format withAvailableSharingVariants:(id)variants;
+ (BOOL)supportsAssetLocalIdentifierForActivityType:(id)type;
+ (id)_activitiesThatDontAllowRAW;
+ (id)_activitiesThatDontRequireAssetExport;
+ (id)_activitiesThatDontSupportMomentShareLinks;
+ (id)_activitiesThatOnlySupportMomentShareLinks;
+ (id)_activitiesThatSupportAssetBundles;
+ (id)_activitiesThatSupportHEIFHEVC;
+ (id)_activitiesThatSupportLivePhotoBundles;
+ (id)_activitiesThatSupportSpatial;
+ (id)_photosActionSheetActivities;
+ (id)_photosInternalActivities;
+ (id)_systemActivitiesThatDontSupportMomentShareLinks;
+ (id)descriptionForAssetExportKind:(int64_t)kind;
+ (id)descriptionForOutputType:(int64_t)type;
+ (unint64_t)maxFileSizeLimitForActivityType:(id)type asset:(id)asset;
- ($9D9B13A340AA60ED2DD68408BD7D962F)sharingPreferences;
- (BOOL)_requiresAssetExportForAsset:(id)asset forActivityType:(id)type;
- (BOOL)_requiresAssetsLibraryURLForAsset:(id)asset forActivityType:(id)type;
- (BOOL)_shouldFlattenSlomoVideoForActivityType:(id)type;
- (BOOL)_wantsAssetBundleForActivityType:(id)type;
- (BOOL)_wantsLivePhotoBundleForActivityType:(id)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (PUActivityItemSourceConfiguration)initWithAsset:(id)asset availableSharingVariants:(id)variants activityType:(id)type preferences:(id)preferences;
- (id)_customAccessibilityLabel;
- (id)_videoExportFileTypeForActivityType:(id)type;
- (id)_videoExportPresetForActivityType:(id)type;
- (void)_configure;
@end

@implementation PUActivityItemSourceConfiguration

- ($9D9B13A340AA60ED2DD68408BD7D962F)sharingPreferences
{
  preferredExportFormat = self->_sharingPreferences.preferredExportFormat;
  v3 = *&self->_sharingPreferences.excludeLiveness;
  result.var6 = preferredExportFormat;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = BYTE3(v3);
  result.var4 = BYTE4(v3);
  result.var5 = BYTE5(v3);
  return result;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  asset = [(PUActivityItemSourceConfiguration *)self asset];
  asset2 = [configurationCopy asset];
  v7 = [asset isEqual:asset2];

  if (!v7)
  {
    goto LABEL_4;
  }

  activityType = [(PUActivityItemSourceConfiguration *)self activityType];
  activityType2 = [configurationCopy activityType];
  v10 = [activityType isEqualToString:activityType2];

  if (!v10)
  {
    goto LABEL_4;
  }

  sharingPreferences = [(PUActivityItemSourceConfiguration *)self sharingPreferences];
  v13 = v12;
  v15 = [configurationCopy sharingPreferences] ^ sharingPreferences;
  if ((v15 & 0x101010101) != 0)
  {
    goto LABEL_4;
  }

  v16 = 0;
  if ((v15 & 0x10000000000) == 0 && v13 == v14)
  {
    maxFileSizeLimit = [(PUActivityItemSourceConfiguration *)self maxFileSizeLimit];
    if (maxFileSizeLimit != [configurationCopy maxFileSizeLimit] || (v19 = -[PUActivityItemSourceConfiguration outputType](self, "outputType"), v19 != objc_msgSend(configurationCopy, "outputType")) || (v20 = -[PUActivityItemSourceConfiguration requiresAssetExport](self, "requiresAssetExport"), v20 != objc_msgSend(configurationCopy, "requiresAssetExport")) || (v21 = -[PUActivityItemSourceConfiguration assetExportKind](self, "assetExportKind"), v21 != objc_msgSend(configurationCopy, "assetExportKind")))
    {
LABEL_4:
      v16 = 0;
      goto LABEL_5;
    }

    assetExportRequestOptions = [(PUActivityItemSourceConfiguration *)self assetExportRequestOptions];

    if (assetExportRequestOptions)
    {
      assetExportRequestOptions2 = [(PUActivityItemSourceConfiguration *)self assetExportRequestOptions];
      assetExportRequestOptions3 = [configurationCopy assetExportRequestOptions];
      v16 = [assetExportRequestOptions2 isEqual:assetExportRequestOptions3];
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_5:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PUActivityItemSourceConfiguration *)self isEqualToConfiguration:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)_wantsAssetBundleForActivityType:(id)type
{
  typeCopy = type;
  v5 = [objc_opt_class() isAssetBundleSupportedByActivityType:typeCopy];

  if (v5)
  {
    return ([(PUActivityItemSourceConfiguration *)self sharingPreferences]>> 32) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_wantsLivePhotoBundleForActivityType:(id)type
{
  typeCopy = type;
  sharingPreferences = [(PUActivityItemSourceConfiguration *)self sharingPreferences];
  playbackStyle = [(PHAsset *)self->_asset playbackStyle];
  v7 = [(PHAsset *)self->_asset isMediaSubtype:8];
  if (([(PUActivityItemSourceConfiguration *)self sharingPreferences]& 0x10000000000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = [objc_opt_class() _shouldExportAsUnmodifiedOriginalForActivityType:typeCopy];
  }

  v9 = playbackStyle == 3;
  v10 = v7 ^ 1;
  if (playbackStyle == 3)
  {
    v10 = 1;
  }

  if (!v10)
  {
    v9 = v8;
  }

  if (sharingPreferences & 1 | !v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_opt_class() isLivePhotoBundleSupportedByActivityType:typeCopy];
  }

  return v11;
}

- (id)_customAccessibilityLabel
{
  descriptionProperties = [(PHAsset *)self->_asset descriptionProperties];
  accessibilityDescription = [descriptionProperties accessibilityDescription];

  return accessibilityDescription;
}

- (id)_videoExportFileTypeForActivityType:(id)type
{
  typeCopy = type;
  if (-[PUActivityItemSourceConfiguration _shouldFlattenSlomoVideoForActivityType:](self, "_shouldFlattenSlomoVideoForActivityType:", typeCopy) && [typeCopy isEqualToString:*MEMORY[0x1E69C3CF8]])
  {
    v5 = *MEMORY[0x1E69874B8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_videoExportPresetForActivityType:(id)type
{
  typeCopy = type;
  if ([(PUActivityItemSourceConfiguration *)self _shouldFlattenSlomoVideoForActivityType:typeCopy])
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E69C3CF8]])
    {
      v5 = MEMORY[0x1E6987348];
LABEL_6:
      v6 = *v5;
      goto LABEL_8;
    }

    if ([typeCopy isEqualToString:*MEMORY[0x1E69CDAB0]])
    {
      v5 = MEMORY[0x1E6987328];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (BOOL)_shouldFlattenSlomoVideoForActivityType:(id)type
{
  asset = self->_asset;
  typeCopy = type;
  v6 = [(PUActivityItemSourceConfiguration *)self _requiresAssetsLibraryURLForAsset:asset forActivityType:typeCopy];
  v7 = [typeCopy isEqualToString:*MEMORY[0x1E69CDA90]];
  v8 = [(PUActivityItemSourceConfiguration *)self _wantsAssetBundleForActivityType:typeCopy];

  v9 = 0;
  if ([(PHAsset *)self->_asset isHighFrameRateVideo]&& (v7 & 1) == 0 && !v6 && !v8)
  {
    [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
    adjustmentProperties = [(PHAsset *)self->_asset adjustmentProperties];
    v11 = MEMORY[0x1E69C0910];
    formatIdentifier = [adjustmentProperties formatIdentifier];
    formatVersion = [adjustmentProperties formatVersion];
    LOBYTE(v11) = [v11 isRecognizedSlowMotionFormatWithIdentifier:formatIdentifier version:formatVersion];

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      _customAccessibilityLabel = [(PUActivityItemSourceConfiguration *)self _customAccessibilityLabel];
      v9 = _customAccessibilityLabel != 0;
    }
  }

  return v9;
}

- (BOOL)_requiresAssetExportForAsset:(id)asset forActivityType:(id)type
{
  typeCopy = type;
  assetCopy = asset;
  _activitiesThatDontRequireAssetExport = [objc_opt_class() _activitiesThatDontRequireAssetExport];
  v9 = [_activitiesThatDontRequireAssetExport containsObject:typeCopy];

  LOBYTE(self) = [(PUActivityItemSourceConfiguration *)self _requiresAssetsLibraryURLForAsset:assetCopy forActivityType:typeCopy];
  return self | v9 ^ 1;
}

- (BOOL)_requiresAssetsLibraryURLForAsset:(id)asset forActivityType:(id)type
{
  assetCopy = asset;
  typeCopy = type;
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  sendAssetURLsToMessages = [mEMORY[0x1E69C3A18] sendAssetURLsToMessages];

  if (sendAssetURLsToMessages && [assetCopy isVideo] && (objc_msgSend(assetCopy, "canPlayAutoloop") & 1) == 0 && (objc_msgSend(assetCopy, "isStreamedVideo") & 1) == 0 && objc_msgSend(assetCopy, "isHighFrameRateVideo") && (objc_msgSend(MEMORY[0x1E6978630], "isOriginalKnownUnsupportedFormatForAsset:failureInfo:", assetCopy, 0) & 1) == 0)
  {
    v9 = [typeCopy isEqualToString:*MEMORY[0x1E69CDAB0]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_configure
{
  v50 = *MEMORY[0x1E69E9840];
  asset = [(PUActivityItemSourceConfiguration *)self asset];
  activityType = [(PUActivityItemSourceConfiguration *)self activityType];
  self->_requiresAssetExport = [(PUActivityItemSourceConfiguration *)self _requiresAssetExportForAsset:asset forActivityType:activityType];
  v5 = [(PUActivityItemSourceConfiguration *)self _requiresAssetsLibraryURLForAsset:asset forActivityType:activityType];
  v6 = [activityType isEqualToString:*MEMORY[0x1E69CDA90]];
  requiresAssetExport = self->_requiresAssetExport;
  v8 = 3;
  if (self->_requiresAssetExport)
  {
    v8 = 0;
  }

  if (v5)
  {
    v8 = 2;
  }

  if (v6)
  {
    v8 = 1;
  }

  self->_outputType = v8;
  if (requiresAssetExport)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69786B0]);
    v10 = objc_opt_class();
    [(PUActivityItemSourceConfiguration *)self sharingPreferences];
    v12 = v11;
    sharingVariants = [(PUActivityItemSourceConfiguration *)self sharingVariants];
    v14 = [v10 shouldProvideAlternateVariantForActivityType:activityType forAsset:asset inPreferredExportFormat:v12 withAvailableSharingVariants:sharingVariants];

    v15 = objc_opt_class();
    [(PUActivityItemSourceConfiguration *)self sharingPreferences];
    v17 = v16;
    sharingVariants2 = [(PUActivityItemSourceConfiguration *)self sharingVariants];
    v19 = [v15 shouldProvideCompatibleFormatForActivityType:activityType forAsset:asset inPreferredExportFormat:v17 withAvailableSharingVariants:sharingVariants2];

    if (([(PUActivityItemSourceConfiguration *)self sharingPreferences]& 0x10000000000) != 0)
    {
      goto LABEL_15;
    }

    v20 = 1;
    if (v19)
    {
      v20 = 2;
    }

    v21 = v14 ? 3 : v20;
    if ([objc_opt_class() _shouldExportAsUnmodifiedOriginalForActivityType:activityType])
    {
LABEL_15:
      v22 = 1;
      v21 = 1;
    }

    else
    {
      v22 = 0;
    }

    [v9 setVariant:v21];
    v23 = [(PUActivityItemSourceConfiguration *)self _wantsLivePhotoBundleForActivityType:activityType];
    v47 = [(PUActivityItemSourceConfiguration *)self _wantsAssetBundleForActivityType:activityType];
    [v9 setIncludeAllAssetResources:?];
    [v9 setFlattenSlomoVideos:{-[PUActivityItemSourceConfiguration _shouldFlattenSlomoVideoForActivityType:](self, "_shouldFlattenSlomoVideoForActivityType:", activityType)}];
    v24 = [(PUActivityItemSourceConfiguration *)self _videoExportPresetForActivityType:activityType];
    [v9 setVideoExportPreset:v24];
    v45 = [(PUActivityItemSourceConfiguration *)self _videoExportFileTypeForActivityType:activityType];
    [v9 setVideoExportFileType:?];
    self->_maxFileSizeLimit = [objc_opt_class() maxFileSizeLimitForActivityType:activityType asset:asset];
    if ((v22 & 1) == 0)
    {
      [v9 setDontAllowRAW:{objc_msgSend(objc_opt_class(), "_dontAllowRAWForActivityType:", activityType)}];
    }

    v46 = v23;
    [v9 setTreatLivePhotoAsStill:!v23];
    [v9 setShouldStripLocation:{(v22 ^ 1) & (-[PUActivityItemSourceConfiguration sharingPreferences](self, "sharingPreferences") >> 8)}];
    [v9 setShouldStripCaption:{(v22 ^ 1) & (-[PUActivityItemSourceConfiguration sharingPreferences](self, "sharingPreferences") >> 16)}];
    [v9 setShouldStripAccessibilityDescription:{(v22 ^ 1) & (-[PUActivityItemSourceConfiguration sharingPreferences](self, "sharingPreferences") >> 24)}];
    [v9 setShouldExportUnmodifiedOriginalResources:v22];
    v25 = MEMORY[0x1E69C08F0];
    uniformTypeIdentifier = [(PHAsset *)self->_asset uniformTypeIdentifier];
    v27 = [v25 typeWithIdentifier:uniformTypeIdentifier];

    if ([v27 conformsToType:*MEMORY[0x1E6982F28]])
    {
      v28 = [activityType isEqualToString:*MEMORY[0x1E69C3CF8]];
    }

    else
    {
      v28 = 0;
    }

    [v9 setAllowMetadataConversionsForPNG:v28];
    mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
    locationBakingComparisonStrategy = [mEMORY[0x1E69C3A18] locationBakingComparisonStrategy];
    if (locationBakingComparisonStrategy == 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * (locationBakingComparisonStrategy == 2);
    }

    [v9 setLocationComparisonStrategy:v31];
    if ([mEMORY[0x1E69C3A18] disableMetadataCorrections])
    {
      v32 = PLShareSheetGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        [asset uuid];
        v44 = v24;
        v34 = v33 = v14;
        *buf = 138543362;
        v49 = v34;
        _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "Based on internal debug settings, disabling metadata corrections asset: %{public}@.", buf, 0xCu);

        v14 = v33;
        v24 = v44;
      }

      [v9 setDisableMetadataCorrections:{objc_msgSend(mEMORY[0x1E69C3A18], "disableMetadataCorrections")}];
    }

    [v9 setForceDateTimeMetadataBaking:{objc_msgSend(mEMORY[0x1E69C3A18], "forceDateTimeMetadataBaking")}];
    [v9 setForceLocationMetadataBaking:{objc_msgSend(mEMORY[0x1E69C3A18], "forceLocationMetadataBaking")}];
    [v9 setForceCaptionMetadataBaking:{objc_msgSend(mEMORY[0x1E69C3A18], "forceCaptionMetadataBaking")}];
    [v9 setForceAccessibilityDescriptionMetadataBaking:{objc_msgSend(mEMORY[0x1E69C3A18], "forceAccessibilityDescriptionMetadataBaking")}];
    if ([v9 shouldExportUnmodifiedOriginalResources])
    {
      shouldUpdateFileCreationDatesForUnmodifiedOriginalExports = [mEMORY[0x1E69C3A18] shouldUpdateFileCreationDatesForUnmodifiedOriginalExports];
    }

    else
    {
      shouldUpdateFileCreationDatesForUnmodifiedOriginalExports = [mEMORY[0x1E69C3A18] shouldUpdateFileCreationDatesForRegularExports];
    }

    [v9 setDisableUpdatingFileCreationDatesOnExportedFileURLs:shouldUpdateFileCreationDatesForUnmodifiedOriginalExports ^ 1u];
    canPlayLoopingVideo = [(PHAsset *)self->_asset canPlayLoopingVideo];
    v37 = ([(PHAsset *)self->_asset isMediaSubtype:8]^ 1) & canPlayLoopingVideo;
    if (v22)
    {
      v38 = v37;
    }

    else
    {
      v38 = canPlayLoopingVideo;
    }

    v39 = ([(PHAsset *)self->_asset playbackStyle]== 4) | v38;
    v40 = 3;
    if (!v46)
    {
      v40 = 1;
    }

    v41 = (v39 & 1) == 0;
    v42 = 2;
    if (v41)
    {
      v42 = v40;
    }

    if (v47)
    {
      v42 = 4;
    }

    assetExportRequestOptions = self->_assetExportRequestOptions;
    if (v14)
    {
      v42 = 5;
    }

    self->_assetExportKind = v42;
    self->_assetExportRequestOptions = v9;
  }
}

- (PUActivityItemSourceConfiguration)initWithAsset:(id)asset availableSharingVariants:(id)variants activityType:(id)type preferences:(id)preferences
{
  var6 = preferences.var6;
  v7 = *&preferences.var0;
  assetCopy = asset;
  variantsCopy = variants;
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = PUActivityItemSourceConfiguration;
  v15 = [(PUActivityItemSourceConfiguration *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_asset, asset);
    v17 = [variantsCopy copy];
    sharingVariants = v16->_sharingVariants;
    v16->_sharingVariants = v17;

    v19 = [typeCopy copy];
    activityType = v16->_activityType;
    v16->_activityType = v19;

    *&v16->_sharingPreferences.excludeLiveness = v7;
    v16->_sharingPreferences.preferredExportFormat = var6;
    [(PUActivityItemSourceConfiguration *)v16 _configure];
  }

  return v16;
}

+ (id)descriptionForAssetExportKind:(int64_t)kind
{
  if (kind > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B770D8[kind];
  }
}

+ (id)descriptionForOutputType:(int64_t)type
{
  if (type > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B770B8[type];
  }
}

+ (BOOL)isIndividualItemPreparationSupportedByActivityType:(id)type
{
  typeCopy = type;
  _activitiesThatOnlySupportMomentShareLinks = [objc_opt_class() _activitiesThatOnlySupportMomentShareLinks];
  v5 = [_activitiesThatOnlySupportMomentShareLinks containsObject:typeCopy];

  return v5 ^ 1;
}

+ (BOOL)isMomentShareLinkSupportedByActivityType:(id)type
{
  typeCopy = type;
  _activitiesThatDontSupportMomentShareLinks = [objc_opt_class() _activitiesThatDontSupportMomentShareLinks];
  v5 = [_activitiesThatDontSupportMomentShareLinks containsObject:typeCopy];

  return v5 ^ 1;
}

+ (unint64_t)maxFileSizeLimitForActivityType:(id)type asset:(id)asset
{
  assetCopy = asset;
  if ([type isEqualToString:*MEMORY[0x1E69C3CF8]] && objc_msgSend(assetCopy, "playbackStyle") == 2)
  {
    maxGIFSizeForPublishing = [MEMORY[0x1E69BE6A8] maxGIFSizeForPublishing];
  }

  else
  {
    maxGIFSizeForPublishing = 0;
  }

  return maxGIFSizeForPublishing;
}

+ (BOOL)shouldExcludeAlternateVariantForActivityType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    if (shouldExcludeAlternateVariantForActivityType__onceToken != -1)
    {
      dispatch_once(&shouldExcludeAlternateVariantForActivityType__onceToken, &__block_literal_global_62);
    }

    if ([shouldExcludeAlternateVariantForActivityType___alternateVariantExcludedActivities containsObject:typeCopy])
    {
      v4 = 1;
    }

    else
    {
      _photosInternalActivities = [objc_opt_class() _photosInternalActivities];
      v4 = [_photosInternalActivities containsObject:typeCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __82__PUActivityItemSourceConfiguration_shouldExcludeAlternateVariantForActivityType___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CDB00];
  v3[0] = *MEMORY[0x1E69CDA78];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = shouldExcludeAlternateVariantForActivityType___alternateVariantExcludedActivities;
  shouldExcludeAlternateVariantForActivityType___alternateVariantExcludedActivities = v1;
}

+ (BOOL)shouldProvideAlternateVariantForActivityType:(id)type forAsset:(id)asset inPreferredExportFormat:(int64_t)format withAvailableSharingVariants:(id)variants
{
  typeCopy = type;
  assetCopy = asset;
  variantsCopy = variants;
  LOBYTE(v12) = 0;
  if (typeCopy && assetCopy)
  {
    if (shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants__onceToken != -1)
    {
      dispatch_once(&shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants__onceToken, &__block_literal_global_58);
    }

    if ([assetCopy canPlayLoopingVideo])
    {
      v13 = [shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants___alternateVariantRequiredActivities containsObject:typeCopy];
      if (format)
      {
        v12 = 0;
      }

      else
      {
        v12 = v13;
      }

      if (variantsCopy && v12)
      {
        v14 = [variantsCopy objectForKeyedSubscript:&unk_1F2B7DCA0];
        LOBYTE(v12) = v14 != 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

void __144__PUActivityItemSourceConfiguration_shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C3DD8];
  v3[0] = *MEMORY[0x1E69CDAA0];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants___alternateVariantRequiredActivities;
  shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants___alternateVariantRequiredActivities = v1;
}

+ (BOOL)shouldProvideCompatibleFormatForActivityType:(id)type forAsset:(id)asset inPreferredExportFormat:(int64_t)format withAvailableSharingVariants:(id)variants
{
  typeCopy = type;
  assetCopy = asset;
  variantsCopy = variants;
  IsCompatibilityConversionDisabled = PXPreferencesIsCompatibilityConversionDisabled();
  LOBYTE(v13) = 0;
  if (variantsCopy)
  {
    if ((IsCompatibilityConversionDisabled & 1) == 0)
    {
      v13 = [variantsCopy objectForKeyedSubscript:&unk_1F2B7DC88];

      if (v13)
      {
        if (format)
        {
          LOBYTE(v13) = format == 2;
        }

        else
        {
          _activitiesThatSupportHEIFHEVC = [objc_opt_class() _activitiesThatSupportHEIFHEVC];
          v17 = 0;
          if (([_activitiesThatSupportHEIFHEVC containsObject:typeCopy] & 1) == 0)
          {
            _photosInternalActivities = [objc_opt_class() _photosInternalActivities];
            v16 = [_photosInternalActivities containsObject:typeCopy];

            if (!v16)
            {
              v17 = 1;
            }
          }

          _activitiesThatSupportSpatial = [objc_opt_class() _activitiesThatSupportSpatial];
          v19 = [_activitiesThatSupportSpatial containsObject:typeCopy];
          LODWORD(v13) = v17 & (v17 & [assetCopy isSpatialMedia] & v19 ^ 1);
        }
      }
    }
  }

  return v13;
}

+ (id)_activitiesThatSupportSpatial
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PUActivityItemSourceConfiguration__activitiesThatSupportSpatial__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_activitiesThatSupportSpatial_onceToken != -1)
  {
    dispatch_once(&_activitiesThatSupportSpatial_onceToken, block);
  }

  v2 = _activitiesThatSupportSpatial__activitiesSupportingSpatial;

  return v2;
}

void __66__PUActivityItemSourceConfiguration__activitiesThatSupportSpatial__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _activitiesThatSupportHEIFHEVC];
  v2 = *MEMORY[0x1E69CDA90];
  v6[0] = *MEMORY[0x1E69CDAA0];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v1 arrayByAddingObjectsFromArray:v3];
  v5 = _activitiesThatSupportSpatial__activitiesSupportingSpatial;
  _activitiesThatSupportSpatial__activitiesSupportingSpatial = v4;
}

+ (id)_activitiesThatSupportHEIFHEVC
{
  if (_activitiesThatSupportHEIFHEVC_onceToken != -1)
  {
    dispatch_once(&_activitiesThatSupportHEIFHEVC_onceToken, &__block_literal_global_52);
  }

  v3 = _activitiesThatSupportHEIFHEVC__activitiesSupportingHEIFHEVC;

  return v3;
}

void __67__PUActivityItemSourceConfiguration__activitiesThatSupportHEIFHEVC__block_invoke()
{
  v6[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CDA78];
  v6[0] = *MEMORY[0x1E69CDAB0];
  v6[1] = v0;
  v1 = *MEMORY[0x1E69CDB00];
  v6[2] = *MEMORY[0x1E69CDAF0];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69CDB08];
  v6[4] = *MEMORY[0x1E69C3DA0];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E69CDA98];
  v6[7] = @"com.apple.journal.JournalShareExtension";
  v3 = *MEMORY[0x1E69C3EC0];
  v6[8] = *MEMORY[0x1E69C3EC8];
  v6[9] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:10];
  v5 = _activitiesThatSupportHEIFHEVC__activitiesSupportingHEIFHEVC;
  _activitiesThatSupportHEIFHEVC__activitiesSupportingHEIFHEVC = v4;
}

+ (id)_activitiesThatOnlySupportMomentShareLinks
{
  if (_activitiesThatOnlySupportMomentShareLinks_onceToken != -1)
  {
    dispatch_once(&_activitiesThatOnlySupportMomentShareLinks_onceToken, &__block_literal_global_50);
  }

  v3 = _activitiesThatOnlySupportMomentShareLinks__momentShareExclusiveActivities;

  return v3;
}

void __79__PUActivityItemSourceConfiguration__activitiesThatOnlySupportMomentShareLinks__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E69C3D30];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = _activitiesThatOnlySupportMomentShareLinks__momentShareExclusiveActivities;
  _activitiesThatOnlySupportMomentShareLinks__momentShareExclusiveActivities = v0;
}

+ (id)_activitiesThatDontSupportMomentShareLinks
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PUActivityItemSourceConfiguration__activitiesThatDontSupportMomentShareLinks__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_activitiesThatDontSupportMomentShareLinks_onceToken != -1)
  {
    dispatch_once(&_activitiesThatDontSupportMomentShareLinks_onceToken, block);
  }

  v2 = _activitiesThatDontSupportMomentShareLinks__momentShareUnsupportedActivities;

  return v2;
}

void __79__PUActivityItemSourceConfiguration__activitiesThatDontSupportMomentShareLinks__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = [objc_opt_class() _photosInternalActivities];
  v11 = [v0 setWithArray:v1];

  v2 = MEMORY[0x1E695DFD8];
  v3 = [objc_opt_class() _activitiesThatDontRequireAssetExport];
  v4 = [v2 setWithArray:v3];

  v5 = [objc_opt_class() _photosActionSheetActivities];
  v6 = [objc_opt_class() _systemActivitiesThatDontSupportMomentShareLinks];
  v7 = [v11 setByAddingObjectsFromSet:v4];
  v8 = [v7 mutableCopy];

  [v8 addObjectsFromArray:v5];
  [v8 addObjectsFromArray:v6];
  [v8 addObject:*MEMORY[0x1E69CDA78]];
  [v8 addObject:*MEMORY[0x1E69CDA90]];
  v9 = [v8 allObjects];
  v10 = _activitiesThatDontSupportMomentShareLinks__momentShareUnsupportedActivities;
  _activitiesThatDontSupportMomentShareLinks__momentShareUnsupportedActivities = v9;
}

+ (id)_systemActivitiesThatDontSupportMomentShareLinks
{
  if (_systemActivitiesThatDontSupportMomentShareLinks_onceToken != -1)
  {
    dispatch_once(&_systemActivitiesThatDontSupportMomentShareLinks_onceToken, &__block_literal_global_48);
  }

  v3 = _systemActivitiesThatDontSupportMomentShareLinks__internalActivities;

  return v3;
}

void __85__PUActivityItemSourceConfiguration__systemActivitiesThatDontSupportMomentShareLinks__block_invoke()
{
  v6[9] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CDAB8];
  v6[0] = *MEMORY[0x1E69CDAF0];
  v6[1] = v0;
  v1 = *MEMORY[0x1E69C3DA0];
  v6[2] = *MEMORY[0x1E69CDB00];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69C3F30];
  v6[4] = *MEMORY[0x1E69C3D48];
  v6[5] = v2;
  v3 = *MEMORY[0x1E69CDA80];
  v6[6] = *MEMORY[0x1E69C3F28];
  v6[7] = v3;
  v6[8] = *MEMORY[0x1E69C3E58];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:9];
  v5 = _systemActivitiesThatDontSupportMomentShareLinks__internalActivities;
  _systemActivitiesThatDontSupportMomentShareLinks__internalActivities = v4;
}

+ (id)_photosActionSheetActivities
{
  if (_photosActionSheetActivities_onceToken != -1)
  {
    dispatch_once(&_photosActionSheetActivities_onceToken, &__block_literal_global_46);
  }

  v3 = _photosActionSheetActivities__internalActivities;

  return v3;
}

void __65__PUActivityItemSourceConfiguration__photosActionSheetActivities__block_invoke()
{
  v21[39] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C3E30];
  v21[0] = *MEMORY[0x1E69C3CC0];
  v21[1] = v0;
  v1 = *MEMORY[0x1E69C3CD8];
  v21[2] = *MEMORY[0x1E69C3CD0];
  v21[3] = v1;
  v2 = *MEMORY[0x1E69C3D28];
  v21[4] = *MEMORY[0x1E69C3D00];
  v21[5] = v2;
  v3 = *MEMORY[0x1E69C3D60];
  v21[6] = *MEMORY[0x1E69C3D38];
  v21[7] = v3;
  v4 = *MEMORY[0x1E69C3D68];
  v21[8] = *MEMORY[0x1E69C3D70];
  v21[9] = v4;
  v5 = *MEMORY[0x1E69C3D50];
  v21[10] = *MEMORY[0x1E69C3DA8];
  v21[11] = v5;
  v6 = *MEMORY[0x1E69C3DB0];
  v21[12] = *MEMORY[0x1E69C3D58];
  v21[13] = v6;
  v7 = *MEMORY[0x1E69C3EB8];
  v21[14] = *MEMORY[0x1E69C3E80];
  v21[15] = v7;
  v8 = *MEMORY[0x1E69C3DC0];
  v21[16] = *MEMORY[0x1E69C3D20];
  v21[17] = v8;
  v9 = *MEMORY[0x1E69C3E20];
  v21[18] = *MEMORY[0x1E69C3D08];
  v21[19] = v9;
  v10 = *MEMORY[0x1E69C3EA8];
  v21[20] = *MEMORY[0x1E69C3E98];
  v21[21] = v10;
  v11 = *MEMORY[0x1E69C3F18];
  v21[22] = *MEMORY[0x1E69C3ED0];
  v21[23] = v11;
  v12 = *MEMORY[0x1E69C3F40];
  v21[24] = *MEMORY[0x1E69C3F38];
  v21[25] = v12;
  v13 = *MEMORY[0x1E69C3E68];
  v21[26] = *MEMORY[0x1E69C3E50];
  v21[27] = v13;
  v14 = *MEMORY[0x1E69C3F20];
  v21[28] = *MEMORY[0x1E69C3E70];
  v21[29] = v14;
  v15 = *MEMORY[0x1E69C3EE8];
  v21[30] = *MEMORY[0x1E69C3E28];
  v21[31] = v15;
  v16 = *MEMORY[0x1E69C3EF0];
  v21[32] = *MEMORY[0x1E69C3ED8];
  v21[33] = v16;
  v17 = *MEMORY[0x1E69C3F00];
  v21[34] = *MEMORY[0x1E69C3EF8];
  v21[35] = v17;
  v18 = *MEMORY[0x1E69C3E88];
  v21[36] = *MEMORY[0x1E69C3F10];
  v21[37] = v18;
  v21[38] = *MEMORY[0x1E69C3E90];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:39];
  v20 = _photosActionSheetActivities__internalActivities;
  _photosActionSheetActivities__internalActivities = v19;
}

+ (id)_photosInternalActivities
{
  if (_photosInternalActivities_onceToken != -1)
  {
    dispatch_once(&_photosInternalActivities_onceToken, &__block_literal_global_44);
  }

  v3 = _photosInternalActivities__internalActivities;

  return v3;
}

void __62__PUActivityItemSourceConfiguration__photosInternalActivities__block_invoke()
{
  v13[22] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C3DB8];
  v13[0] = *MEMORY[0x1E69CDAF8];
  v13[1] = v0;
  v1 = *MEMORY[0x1E69C3E78];
  v13[2] = *MEMORY[0x1E69C3E60];
  v13[3] = v1;
  v2 = *MEMORY[0x1E69C3DC8];
  v13[4] = *MEMORY[0x1E69C3E18];
  v13[5] = v2;
  v3 = *MEMORY[0x1E69C3EA0];
  v13[6] = *MEMORY[0x1E69C3D78];
  v13[7] = v3;
  v4 = *MEMORY[0x1E69C3CE0];
  v13[8] = *MEMORY[0x1E69C3CC8];
  v13[9] = v4;
  v5 = *MEMORY[0x1E69C3F30];
  v13[10] = *MEMORY[0x1E69C3CE8];
  v13[11] = v5;
  v6 = *MEMORY[0x1E69C3CF8];
  v13[12] = *MEMORY[0x1E69C3F28];
  v13[13] = v6;
  v7 = *MEMORY[0x1E69C3E50];
  v13[14] = *MEMORY[0x1E69C3EC0];
  v13[15] = v7;
  v8 = *MEMORY[0x1E69C3E70];
  v13[16] = *MEMORY[0x1E69C3E68];
  v13[17] = v8;
  v9 = *MEMORY[0x1E69C3E08];
  v13[18] = *MEMORY[0x1E69C3E10];
  v13[19] = v9;
  v10 = *MEMORY[0x1E69C3D88];
  v13[20] = *MEMORY[0x1E69C3D80];
  v13[21] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:22];
  v12 = _photosInternalActivities__internalActivities;
  _photosInternalActivities__internalActivities = v11;
}

+ (id)_activitiesThatDontRequireAssetExport
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PUActivityItemSourceConfiguration__activitiesThatDontRequireAssetExport__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_activitiesThatDontRequireAssetExport_onceToken != -1)
  {
    dispatch_once(&_activitiesThatDontRequireAssetExport_onceToken, block);
  }

  v2 = _activitiesThatDontRequireAssetExport__activitiesNotRequiringExport;

  return v2;
}

void __74__PUActivityItemSourceConfiguration__activitiesThatDontRequireAssetExport__block_invoke(uint64_t a1)
{
  v17[19] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69C3DB8];
  v17[0] = *MEMORY[0x1E69C3CF0];
  v17[1] = v2;
  v3 = *MEMORY[0x1E69C3EA0];
  v17[2] = *MEMORY[0x1E69C3D78];
  v17[3] = v3;
  v4 = *MEMORY[0x1E69C3E60];
  v17[4] = *MEMORY[0x1E69CDB20];
  v17[5] = v4;
  v5 = *MEMORY[0x1E69C3E18];
  v17[6] = *MEMORY[0x1E69C3E78];
  v17[7] = v5;
  v6 = *MEMORY[0x1E69C3CE0];
  v17[8] = *MEMORY[0x1E69C3CC8];
  v17[9] = v6;
  v7 = *MEMORY[0x1E69C3DF8];
  v17[10] = *MEMORY[0x1E69C3CE8];
  v17[11] = v7;
  v8 = *MEMORY[0x1E69C3E68];
  v17[12] = *MEMORY[0x1E69C3E50];
  v17[13] = v8;
  v9 = *MEMORY[0x1E69C3E10];
  v17[14] = *MEMORY[0x1E69C3E70];
  v17[15] = v9;
  v10 = *MEMORY[0x1E69C3D80];
  v17[16] = *MEMORY[0x1E69C3E08];
  v17[17] = v10;
  v17[18] = *MEMORY[0x1E69C3D88];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:19];
  v12 = _activitiesThatDontRequireAssetExport__activitiesNotRequiringExport;
  _activitiesThatDontRequireAssetExport__activitiesNotRequiringExport = v11;

  v13 = _activitiesThatDontRequireAssetExport__activitiesNotRequiringExport;
  v14 = [*(a1 + 32) _photosActionSheetActivities];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  v16 = _activitiesThatDontRequireAssetExport__activitiesNotRequiringExport;
  _activitiesThatDontRequireAssetExport__activitiesNotRequiringExport = v15;
}

+ (id)_activitiesThatSupportAssetBundles
{
  if (_activitiesThatSupportAssetBundles_onceToken != -1)
  {
    dispatch_once(&_activitiesThatSupportAssetBundles_onceToken, &__block_literal_global_42);
  }

  v3 = _activitiesThatSupportAssetBundles__activitiesSupportingAssetBundles;

  return v3;
}

void __71__PUActivityItemSourceConfiguration__activitiesThatSupportAssetBundles__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C3DF0];
  v3[0] = *MEMORY[0x1E69CDA78];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = _activitiesThatSupportAssetBundles__activitiesSupportingAssetBundles;
  _activitiesThatSupportAssetBundles__activitiesSupportingAssetBundles = v1;
}

+ (id)_activitiesThatSupportLivePhotoBundles
{
  if (_activitiesThatSupportLivePhotoBundles_onceToken != -1)
  {
    dispatch_once(&_activitiesThatSupportLivePhotoBundles_onceToken, &__block_literal_global_40);
  }

  v3 = _activitiesThatSupportLivePhotoBundles__activitiesSupportingLivePhotoBundles;

  return v3;
}

void __75__PUActivityItemSourceConfiguration__activitiesThatSupportLivePhotoBundles__block_invoke()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CDAB0];
  v6[0] = *MEMORY[0x1E69CDA78];
  v6[1] = v0;
  v1 = *MEMORY[0x1E69C3EB0];
  v6[2] = *MEMORY[0x1E69CDAF8];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69C3EC0];
  v6[4] = *MEMORY[0x1E69C3CF8];
  v6[5] = v2;
  v3 = *MEMORY[0x1E69C3F28];
  v6[6] = *MEMORY[0x1E69C3F30];
  v6[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v5 = _activitiesThatSupportLivePhotoBundles__activitiesSupportingLivePhotoBundles;
  _activitiesThatSupportLivePhotoBundles__activitiesSupportingLivePhotoBundles = v4;
}

+ (id)_activitiesThatDontAllowRAW
{
  if (_activitiesThatDontAllowRAW_onceToken != -1)
  {
    dispatch_once(&_activitiesThatDontAllowRAW_onceToken, &__block_literal_global_24872);
  }

  v3 = _activitiesThatDontAllowRAW__activitiesThatDontAllowRAW;

  return v3;
}

uint64_t __64__PUActivityItemSourceConfiguration__activitiesThatDontAllowRAW__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E69C3CF8], *MEMORY[0x1E69CDAA0], 0}];
  v2 = _activitiesThatDontAllowRAW__activitiesThatDontAllowRAW;
  _activitiesThatDontAllowRAW__activitiesThatDontAllowRAW = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (BOOL)_dontAllowRAWForActivityType:(id)type
{
  typeCopy = type;
  _activitiesThatDontAllowRAW = [objc_opt_class() _activitiesThatDontAllowRAW];
  v5 = [_activitiesThatDontAllowRAW containsObject:typeCopy];

  return v5;
}

+ (BOOL)supportsAssetLocalIdentifierForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E69C3E58]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:*MEMORY[0x1E69C3D48]];
  }

  return v4;
}

+ (BOOL)isAssetBundleSupportedByActivityType:(id)type
{
  v12[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  _activitiesThatSupportAssetBundles = [objc_opt_class() _activitiesThatSupportAssetBundles];
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  savePhotosBundlesToFilesWithoutExtractingMedia = [mEMORY[0x1E69C3A18] savePhotosBundlesToFilesWithoutExtractingMedia];

  if (savePhotosBundlesToFilesWithoutExtractingMedia)
  {
    v7 = *MEMORY[0x1E69C3DA0];
    v12[0] = *MEMORY[0x1E69CDB00];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [_activitiesThatSupportAssetBundles arrayByAddingObjectsFromArray:v8];

    _activitiesThatSupportAssetBundles = v9;
  }

  v10 = [_activitiesThatSupportAssetBundles containsObject:typeCopy];

  return v10;
}

+ (BOOL)isLivePhotoBundleSupportedByActivityType:(id)type
{
  v12[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  _activitiesThatSupportLivePhotoBundles = [objc_opt_class() _activitiesThatSupportLivePhotoBundles];
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  savePhotosBundlesToFilesWithoutExtractingMedia = [mEMORY[0x1E69C3A18] savePhotosBundlesToFilesWithoutExtractingMedia];

  if (savePhotosBundlesToFilesWithoutExtractingMedia)
  {
    v7 = *MEMORY[0x1E69C3DA0];
    v12[0] = *MEMORY[0x1E69CDB00];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [_activitiesThatSupportLivePhotoBundles arrayByAddingObjectsFromArray:v8];

    _activitiesThatSupportLivePhotoBundles = v9;
  }

  v10 = [_activitiesThatSupportLivePhotoBundles containsObject:typeCopy];

  return v10;
}

@end