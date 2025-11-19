@interface PUActivityItemSourceConfiguration
+ (BOOL)_dontAllowRAWForActivityType:(id)a3;
+ (BOOL)isAssetBundleSupportedByActivityType:(id)a3;
+ (BOOL)isIndividualItemPreparationSupportedByActivityType:(id)a3;
+ (BOOL)isLivePhotoBundleSupportedByActivityType:(id)a3;
+ (BOOL)isMomentShareLinkSupportedByActivityType:(id)a3;
+ (BOOL)shouldExcludeAlternateVariantForActivityType:(id)a3;
+ (BOOL)shouldProvideAlternateVariantForActivityType:(id)a3 forAsset:(id)a4 inPreferredExportFormat:(int64_t)a5 withAvailableSharingVariants:(id)a6;
+ (BOOL)shouldProvideCompatibleFormatForActivityType:(id)a3 forAsset:(id)a4 inPreferredExportFormat:(int64_t)a5 withAvailableSharingVariants:(id)a6;
+ (BOOL)supportsAssetLocalIdentifierForActivityType:(id)a3;
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
+ (id)descriptionForAssetExportKind:(int64_t)a3;
+ (id)descriptionForOutputType:(int64_t)a3;
+ (unint64_t)maxFileSizeLimitForActivityType:(id)a3 asset:(id)a4;
- ($9D9B13A340AA60ED2DD68408BD7D962F)sharingPreferences;
- (BOOL)_requiresAssetExportForAsset:(id)a3 forActivityType:(id)a4;
- (BOOL)_requiresAssetsLibraryURLForAsset:(id)a3 forActivityType:(id)a4;
- (BOOL)_shouldFlattenSlomoVideoForActivityType:(id)a3;
- (BOOL)_wantsAssetBundleForActivityType:(id)a3;
- (BOOL)_wantsLivePhotoBundleForActivityType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (PUActivityItemSourceConfiguration)initWithAsset:(id)a3 availableSharingVariants:(id)a4 activityType:(id)a5 preferences:(id)a6;
- (id)_customAccessibilityLabel;
- (id)_videoExportFileTypeForActivityType:(id)a3;
- (id)_videoExportPresetForActivityType:(id)a3;
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

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PUActivityItemSourceConfiguration *)self asset];
  v6 = [v4 asset];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(PUActivityItemSourceConfiguration *)self activityType];
  v9 = [v4 activityType];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [(PUActivityItemSourceConfiguration *)self sharingPreferences];
  v13 = v12;
  v15 = [v4 sharingPreferences] ^ v11;
  if ((v15 & 0x101010101) != 0)
  {
    goto LABEL_4;
  }

  v16 = 0;
  if ((v15 & 0x10000000000) == 0 && v13 == v14)
  {
    v18 = [(PUActivityItemSourceConfiguration *)self maxFileSizeLimit];
    if (v18 != [v4 maxFileSizeLimit] || (v19 = -[PUActivityItemSourceConfiguration outputType](self, "outputType"), v19 != objc_msgSend(v4, "outputType")) || (v20 = -[PUActivityItemSourceConfiguration requiresAssetExport](self, "requiresAssetExport"), v20 != objc_msgSend(v4, "requiresAssetExport")) || (v21 = -[PUActivityItemSourceConfiguration assetExportKind](self, "assetExportKind"), v21 != objc_msgSend(v4, "assetExportKind")))
    {
LABEL_4:
      v16 = 0;
      goto LABEL_5;
    }

    v22 = [(PUActivityItemSourceConfiguration *)self assetExportRequestOptions];

    if (v22)
    {
      v23 = [(PUActivityItemSourceConfiguration *)self assetExportRequestOptions];
      v24 = [v4 assetExportRequestOptions];
      v16 = [v23 isEqual:v24];
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_5:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)_wantsAssetBundleForActivityType:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() isAssetBundleSupportedByActivityType:v4];

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

- (BOOL)_wantsLivePhotoBundleForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(PUActivityItemSourceConfiguration *)self sharingPreferences];
  v6 = [(PHAsset *)self->_asset playbackStyle];
  v7 = [(PHAsset *)self->_asset isMediaSubtype:8];
  if (([(PUActivityItemSourceConfiguration *)self sharingPreferences]& 0x10000000000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = [objc_opt_class() _shouldExportAsUnmodifiedOriginalForActivityType:v4];
  }

  v9 = v6 == 3;
  v10 = v7 ^ 1;
  if (v6 == 3)
  {
    v10 = 1;
  }

  if (!v10)
  {
    v9 = v8;
  }

  if (v5 & 1 | !v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_opt_class() isLivePhotoBundleSupportedByActivityType:v4];
  }

  return v11;
}

- (id)_customAccessibilityLabel
{
  v2 = [(PHAsset *)self->_asset descriptionProperties];
  v3 = [v2 accessibilityDescription];

  return v3;
}

- (id)_videoExportFileTypeForActivityType:(id)a3
{
  v4 = a3;
  if (-[PUActivityItemSourceConfiguration _shouldFlattenSlomoVideoForActivityType:](self, "_shouldFlattenSlomoVideoForActivityType:", v4) && [v4 isEqualToString:*MEMORY[0x1E69C3CF8]])
  {
    v5 = *MEMORY[0x1E69874B8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_videoExportPresetForActivityType:(id)a3
{
  v4 = a3;
  if ([(PUActivityItemSourceConfiguration *)self _shouldFlattenSlomoVideoForActivityType:v4])
  {
    if ([v4 isEqualToString:*MEMORY[0x1E69C3CF8]])
    {
      v5 = MEMORY[0x1E6987348];
LABEL_6:
      v6 = *v5;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69CDAB0]])
    {
      v5 = MEMORY[0x1E6987328];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (BOOL)_shouldFlattenSlomoVideoForActivityType:(id)a3
{
  asset = self->_asset;
  v5 = a3;
  v6 = [(PUActivityItemSourceConfiguration *)self _requiresAssetsLibraryURLForAsset:asset forActivityType:v5];
  v7 = [v5 isEqualToString:*MEMORY[0x1E69CDA90]];
  v8 = [(PUActivityItemSourceConfiguration *)self _wantsAssetBundleForActivityType:v5];

  v9 = 0;
  if ([(PHAsset *)self->_asset isHighFrameRateVideo]&& (v7 & 1) == 0 && !v6 && !v8)
  {
    [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
    v10 = [(PHAsset *)self->_asset adjustmentProperties];
    v11 = MEMORY[0x1E69C0910];
    v12 = [v10 formatIdentifier];
    v13 = [v10 formatVersion];
    LOBYTE(v11) = [v11 isRecognizedSlowMotionFormatWithIdentifier:v12 version:v13];

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v14 = [(PUActivityItemSourceConfiguration *)self _customAccessibilityLabel];
      v9 = v14 != 0;
    }
  }

  return v9;
}

- (BOOL)_requiresAssetExportForAsset:(id)a3 forActivityType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _activitiesThatDontRequireAssetExport];
  v9 = [v8 containsObject:v6];

  LOBYTE(self) = [(PUActivityItemSourceConfiguration *)self _requiresAssetsLibraryURLForAsset:v7 forActivityType:v6];
  return self | v9 ^ 1;
}

- (BOOL)_requiresAssetsLibraryURLForAsset:(id)a3 forActivityType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C3A18] sharedInstance];
  v8 = [v7 sendAssetURLsToMessages];

  if (v8 && [v5 isVideo] && (objc_msgSend(v5, "canPlayAutoloop") & 1) == 0 && (objc_msgSend(v5, "isStreamedVideo") & 1) == 0 && objc_msgSend(v5, "isHighFrameRateVideo") && (objc_msgSend(MEMORY[0x1E6978630], "isOriginalKnownUnsupportedFormatForAsset:failureInfo:", v5, 0) & 1) == 0)
  {
    v9 = [v6 isEqualToString:*MEMORY[0x1E69CDAB0]];
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
  v3 = [(PUActivityItemSourceConfiguration *)self asset];
  v4 = [(PUActivityItemSourceConfiguration *)self activityType];
  self->_requiresAssetExport = [(PUActivityItemSourceConfiguration *)self _requiresAssetExportForAsset:v3 forActivityType:v4];
  v5 = [(PUActivityItemSourceConfiguration *)self _requiresAssetsLibraryURLForAsset:v3 forActivityType:v4];
  v6 = [v4 isEqualToString:*MEMORY[0x1E69CDA90]];
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
    v13 = [(PUActivityItemSourceConfiguration *)self sharingVariants];
    v14 = [v10 shouldProvideAlternateVariantForActivityType:v4 forAsset:v3 inPreferredExportFormat:v12 withAvailableSharingVariants:v13];

    v15 = objc_opt_class();
    [(PUActivityItemSourceConfiguration *)self sharingPreferences];
    v17 = v16;
    v18 = [(PUActivityItemSourceConfiguration *)self sharingVariants];
    v19 = [v15 shouldProvideCompatibleFormatForActivityType:v4 forAsset:v3 inPreferredExportFormat:v17 withAvailableSharingVariants:v18];

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
    if ([objc_opt_class() _shouldExportAsUnmodifiedOriginalForActivityType:v4])
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
    v23 = [(PUActivityItemSourceConfiguration *)self _wantsLivePhotoBundleForActivityType:v4];
    v47 = [(PUActivityItemSourceConfiguration *)self _wantsAssetBundleForActivityType:v4];
    [v9 setIncludeAllAssetResources:?];
    [v9 setFlattenSlomoVideos:{-[PUActivityItemSourceConfiguration _shouldFlattenSlomoVideoForActivityType:](self, "_shouldFlattenSlomoVideoForActivityType:", v4)}];
    v24 = [(PUActivityItemSourceConfiguration *)self _videoExportPresetForActivityType:v4];
    [v9 setVideoExportPreset:v24];
    v45 = [(PUActivityItemSourceConfiguration *)self _videoExportFileTypeForActivityType:v4];
    [v9 setVideoExportFileType:?];
    self->_maxFileSizeLimit = [objc_opt_class() maxFileSizeLimitForActivityType:v4 asset:v3];
    if ((v22 & 1) == 0)
    {
      [v9 setDontAllowRAW:{objc_msgSend(objc_opt_class(), "_dontAllowRAWForActivityType:", v4)}];
    }

    v46 = v23;
    [v9 setTreatLivePhotoAsStill:!v23];
    [v9 setShouldStripLocation:{(v22 ^ 1) & (-[PUActivityItemSourceConfiguration sharingPreferences](self, "sharingPreferences") >> 8)}];
    [v9 setShouldStripCaption:{(v22 ^ 1) & (-[PUActivityItemSourceConfiguration sharingPreferences](self, "sharingPreferences") >> 16)}];
    [v9 setShouldStripAccessibilityDescription:{(v22 ^ 1) & (-[PUActivityItemSourceConfiguration sharingPreferences](self, "sharingPreferences") >> 24)}];
    [v9 setShouldExportUnmodifiedOriginalResources:v22];
    v25 = MEMORY[0x1E69C08F0];
    v26 = [(PHAsset *)self->_asset uniformTypeIdentifier];
    v27 = [v25 typeWithIdentifier:v26];

    if ([v27 conformsToType:*MEMORY[0x1E6982F28]])
    {
      v28 = [v4 isEqualToString:*MEMORY[0x1E69C3CF8]];
    }

    else
    {
      v28 = 0;
    }

    [v9 setAllowMetadataConversionsForPNG:v28];
    v29 = [MEMORY[0x1E69C3A18] sharedInstance];
    v30 = [v29 locationBakingComparisonStrategy];
    if (v30 == 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * (v30 == 2);
    }

    [v9 setLocationComparisonStrategy:v31];
    if ([v29 disableMetadataCorrections])
    {
      v32 = PLShareSheetGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        [v3 uuid];
        v44 = v24;
        v34 = v33 = v14;
        *buf = 138543362;
        v49 = v34;
        _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "Based on internal debug settings, disabling metadata corrections asset: %{public}@.", buf, 0xCu);

        v14 = v33;
        v24 = v44;
      }

      [v9 setDisableMetadataCorrections:{objc_msgSend(v29, "disableMetadataCorrections")}];
    }

    [v9 setForceDateTimeMetadataBaking:{objc_msgSend(v29, "forceDateTimeMetadataBaking")}];
    [v9 setForceLocationMetadataBaking:{objc_msgSend(v29, "forceLocationMetadataBaking")}];
    [v9 setForceCaptionMetadataBaking:{objc_msgSend(v29, "forceCaptionMetadataBaking")}];
    [v9 setForceAccessibilityDescriptionMetadataBaking:{objc_msgSend(v29, "forceAccessibilityDescriptionMetadataBaking")}];
    if ([v9 shouldExportUnmodifiedOriginalResources])
    {
      v35 = [v29 shouldUpdateFileCreationDatesForUnmodifiedOriginalExports];
    }

    else
    {
      v35 = [v29 shouldUpdateFileCreationDatesForRegularExports];
    }

    [v9 setDisableUpdatingFileCreationDatesOnExportedFileURLs:v35 ^ 1u];
    v36 = [(PHAsset *)self->_asset canPlayLoopingVideo];
    v37 = ([(PHAsset *)self->_asset isMediaSubtype:8]^ 1) & v36;
    if (v22)
    {
      v38 = v37;
    }

    else
    {
      v38 = v36;
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

- (PUActivityItemSourceConfiguration)initWithAsset:(id)a3 availableSharingVariants:(id)a4 activityType:(id)a5 preferences:(id)a6
{
  var6 = a6.var6;
  v7 = *&a6.var0;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v22.receiver = self;
  v22.super_class = PUActivityItemSourceConfiguration;
  v15 = [(PUActivityItemSourceConfiguration *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_asset, a3);
    v17 = [v13 copy];
    sharingVariants = v16->_sharingVariants;
    v16->_sharingVariants = v17;

    v19 = [v14 copy];
    activityType = v16->_activityType;
    v16->_activityType = v19;

    *&v16->_sharingPreferences.excludeLiveness = v7;
    v16->_sharingPreferences.preferredExportFormat = var6;
    [(PUActivityItemSourceConfiguration *)v16 _configure];
  }

  return v16;
}

+ (id)descriptionForAssetExportKind:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B770D8[a3];
  }
}

+ (id)descriptionForOutputType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B770B8[a3];
  }
}

+ (BOOL)isIndividualItemPreparationSupportedByActivityType:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _activitiesThatOnlySupportMomentShareLinks];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

+ (BOOL)isMomentShareLinkSupportedByActivityType:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _activitiesThatDontSupportMomentShareLinks];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

+ (unint64_t)maxFileSizeLimitForActivityType:(id)a3 asset:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:*MEMORY[0x1E69C3CF8]] && objc_msgSend(v5, "playbackStyle") == 2)
  {
    v6 = [MEMORY[0x1E69BE6A8] maxGIFSizeForPublishing];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldExcludeAlternateVariantForActivityType:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (shouldExcludeAlternateVariantForActivityType__onceToken != -1)
    {
      dispatch_once(&shouldExcludeAlternateVariantForActivityType__onceToken, &__block_literal_global_62);
    }

    if ([shouldExcludeAlternateVariantForActivityType___alternateVariantExcludedActivities containsObject:v3])
    {
      v4 = 1;
    }

    else
    {
      v5 = [objc_opt_class() _photosInternalActivities];
      v4 = [v5 containsObject:v3];
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

+ (BOOL)shouldProvideAlternateVariantForActivityType:(id)a3 forAsset:(id)a4 inPreferredExportFormat:(int64_t)a5 withAvailableSharingVariants:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  LOBYTE(v12) = 0;
  if (v9 && v10)
  {
    if (shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants__onceToken != -1)
    {
      dispatch_once(&shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants__onceToken, &__block_literal_global_58);
    }

    if ([v10 canPlayLoopingVideo])
    {
      v13 = [shouldProvideAlternateVariantForActivityType_forAsset_inPreferredExportFormat_withAvailableSharingVariants___alternateVariantRequiredActivities containsObject:v9];
      if (a5)
      {
        v12 = 0;
      }

      else
      {
        v12 = v13;
      }

      if (v11 && v12)
      {
        v14 = [v11 objectForKeyedSubscript:&unk_1F2B7DCA0];
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

+ (BOOL)shouldProvideCompatibleFormatForActivityType:(id)a3 forAsset:(id)a4 inPreferredExportFormat:(int64_t)a5 withAvailableSharingVariants:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  IsCompatibilityConversionDisabled = PXPreferencesIsCompatibilityConversionDisabled();
  LOBYTE(v13) = 0;
  if (v11)
  {
    if ((IsCompatibilityConversionDisabled & 1) == 0)
    {
      v13 = [v11 objectForKeyedSubscript:&unk_1F2B7DC88];

      if (v13)
      {
        if (a5)
        {
          LOBYTE(v13) = a5 == 2;
        }

        else
        {
          v14 = [objc_opt_class() _activitiesThatSupportHEIFHEVC];
          v17 = 0;
          if (([v14 containsObject:v9] & 1) == 0)
          {
            v15 = [objc_opt_class() _photosInternalActivities];
            v16 = [v15 containsObject:v9];

            if (!v16)
            {
              v17 = 1;
            }
          }

          v18 = [objc_opt_class() _activitiesThatSupportSpatial];
          v19 = [v18 containsObject:v9];
          LODWORD(v13) = v17 & (v17 & [v10 isSpatialMedia] & v19 ^ 1);
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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

+ (BOOL)_dontAllowRAWForActivityType:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _activitiesThatDontAllowRAW];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (BOOL)supportsAssetLocalIdentifierForActivityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69C3E58]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E69C3D48]];
  }

  return v4;
}

+ (BOOL)isAssetBundleSupportedByActivityType:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() _activitiesThatSupportAssetBundles];
  v5 = [MEMORY[0x1E69C3A18] sharedInstance];
  v6 = [v5 savePhotosBundlesToFilesWithoutExtractingMedia];

  if (v6)
  {
    v7 = *MEMORY[0x1E69C3DA0];
    v12[0] = *MEMORY[0x1E69CDB00];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v4 arrayByAddingObjectsFromArray:v8];

    v4 = v9;
  }

  v10 = [v4 containsObject:v3];

  return v10;
}

+ (BOOL)isLivePhotoBundleSupportedByActivityType:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() _activitiesThatSupportLivePhotoBundles];
  v5 = [MEMORY[0x1E69C3A18] sharedInstance];
  v6 = [v5 savePhotosBundlesToFilesWithoutExtractingMedia];

  if (v6)
  {
    v7 = *MEMORY[0x1E69C3DA0];
    v12[0] = *MEMORY[0x1E69CDB00];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v4 arrayByAddingObjectsFromArray:v8];

    v4 = v9;
  }

  v10 = [v4 containsObject:v3];

  return v10;
}

@end