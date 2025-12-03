@interface PEEditSessionEventBuilder
+ (id)allowedAdjustmentIdentifiers;
- (BOOL)shouldReportAdjustmentIdentifierString:(id)string;
- (CGSize)quickCropSelectedAspectRatio;
- (id)buildEvent;
@end

@implementation PEEditSessionEventBuilder

+ (id)allowedAdjustmentIdentifiers
{
  if (allowedAdjustmentIdentifiers_onceToken != -1)
  {
    dispatch_once(&allowedAdjustmentIdentifiers_onceToken, &__block_literal_global_2900);
  }

  v3 = allowedAdjustmentIdentifiers_identifiers;

  return v3;
}

void __57__PEEditSessionEventBuilder_allowedAdjustmentIdentifiers__block_invoke()
{
  v0 = allowedAdjustmentIdentifiers_identifiers;
  allowedAdjustmentIdentifiers_identifiers = &unk_28706EFB0;
}

- (CGSize)quickCropSelectedAspectRatio
{
  width = self->_quickCropSelectedAspectRatio.width;
  height = self->_quickCropSelectedAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)shouldReportAdjustmentIdentifierString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allowedAdjustmentIdentifiers = [objc_opt_class() allowedAdjustmentIdentifiers];
  v5 = [allowedAdjustmentIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allowedAdjustmentIdentifiers);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        lowercaseString = [stringCopy lowercaseString];
        lowercaseString2 = [v8 lowercaseString];
        v11 = [lowercaseString hasPrefix:lowercaseString2];

        if (v11)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [allowedAdjustmentIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)buildEvent
{
  v118 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  asset = [(PEEditSessionEventBuilder *)self asset];
  if (asset)
  {
    [v3 setObject:asset forKeyedSubscript:*MEMORY[0x277CF6E18]];
    asset2 = [(PEEditSessionEventBuilder *)self asset];
    pixelWidth = [asset2 pixelWidth];
    pixelHeight = [asset pixelHeight];

    v8 = 1000 * ((pixelHeight * pixelWidth + 500) / 0x3E8uLL);
  }

  else
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_ERROR, "PEEditAnalyticsEventBuilder building payload with nil asset", buf, 2u);
    }

    v8 = 0;
  }

  adjustmentIdentifierAndVersion = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];

  if (adjustmentIdentifierAndVersion)
  {
    adjustmentIdentifierAndVersion2 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];
    v12 = [(PEEditSessionEventBuilder *)self shouldReportAdjustmentIdentifierString:adjustmentIdentifierAndVersion2];

    if (v12)
    {
      adjustmentIdentifierAndVersion3 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];
      goto LABEL_16;
    }

    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      adjustmentIdentifierAndVersion4 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];
      *buf = 138412546;
      v115 = adjustmentIdentifierAndVersion4;
      v116 = 2112;
      v117 = @"ThirdPartyEditPlugin";
      _os_log_impl(&dword_25E6E9000, v15, OS_LOG_TYPE_DEFAULT, "PEEditAnalyticsEventBuilder - adjustmentIdentifierAndVersion (%@) doesn't seem to be part of our allow-list (1st party bundleIDs only), reporting it as %@", buf, 0x16u);
    }

    v14 = @"ThirdPartyEditPlugin";
  }

  else
  {
    v13 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PEEditAnalyticsEventBuilder - nil adjustmentIdentifierAndVersionString", buf, 2u);
    }

    v14 = &stru_2870659C0;
  }

  adjustmentIdentifierAndVersion3 = v14;
LABEL_16:
  v112[0] = @"assetInputPixelCount";
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v113[0] = v90;
  v112[1] = @"bundleIdentifier";
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v113[1] = bundleIdentifier;
  v112[2] = @"isFirstSinceLaunch";
  v87 = [MEMORY[0x277CCABB0] numberWithBool:{-[PEEditSessionEventBuilder isFirstSinceLaunch](self, "isFirstSinceLaunch")}];
  v113[2] = v87;
  v112[3] = @"sessionEndReason";
  sessionEndReason = [(PEEditSessionEventBuilder *)self sessionEndReason];
  v93 = asset;
  if ((sessionEndReason - 1) > 4)
  {
    v18 = @"Saved";
  }

  else
  {
    v18 = off_279A31388[sessionEndReason - 1];
  }

  v113[3] = v18;
  v112[4] = @"exitEditDuration";
  v19 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self exitEditDuration];
  v86 = [v19 numberWithDouble:?];
  v113[4] = v86;
  v112[5] = @"editSessionDuration";
  v20 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self editSessionDuration];
  v21 = [v20 numberWithDouble:?];
  v113[5] = v21;
  v112[6] = @"resourceLoadingDuration";
  v22 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self resourceLoadingDuration];
  v23 = [v22 numberWithDouble:?];
  v113[6] = v23;
  v112[7] = @"resourceDownloadDuration";
  v24 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self resourceDownloadDuration];
  v25 = [v24 numberWithDouble:?];
  v113[7] = v25;
  v112[8] = @"resourceCheckingDuration";
  v26 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self resourceCheckingDuration];
  v27 = [v26 numberWithDouble:?];
  v113[8] = v27;
  v112[9] = @"resourceProcessingDuration";
  v28 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self resourceProcessingDuration];
  v29 = [v28 numberWithDouble:?];
  v113[9] = v29;
  v112[10] = @"enterEditDuration";
  v30 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self enterEditDuration];
  v31 = [v30 numberWithDouble:?];
  v113[10] = v31;
  v112[11] = @"autoCalcDuration";
  v32 = MEMORY[0x277CCABB0];
  [(PEEditSessionEventBuilder *)self autoCalcDuration];
  v33 = [v32 numberWithDouble:?];
  v113[11] = v33;
  v113[12] = adjustmentIdentifierAndVersion3;
  v112[12] = @"adjustmentIdentifierAndVersion";
  v112[13] = @"sessionEntryPoint";
  sessionEntryPoint = [(PEEditSessionEventBuilder *)self sessionEntryPoint];
  v35 = @"1UPButton";
  if (sessionEntryPoint == 1)
  {
    v35 = @"1UPQuickCrop";
  }

  if (sessionEntryPoint == 2)
  {
    v35 = @"Arrowing";
  }

  v113[13] = v35;
  selfCopy = self;
  v36 = MEMORY[0x277CBEAC0];
  v37 = v35;
  v38 = [v36 dictionaryWithObjects:v113 forKeys:v112 count:14];

  [v3 addEntriesFromDictionary:v38];
  v39 = selfCopy;

  v40 = v3;
  if (![(PEEditSessionEventBuilder *)selfCopy sessionEndReason])
  {
    saveActionType = [(PEEditSessionEventBuilder *)selfCopy saveActionType];
    v42 = @"Save";
    if (saveActionType == 2)
    {
      v42 = @"SaveAsDuplicate";
    }

    if (saveActionType == 1)
    {
      v42 = @"SaveAsNewClip";
    }

    v110 = @"saveActionType";
    v111 = v42;
    v43 = MEMORY[0x277CBEAC0];
    v44 = v42;
    v45 = [v43 dictionaryWithObjects:&v111 forKeys:&v110 count:1];

    [v3 addEntriesFromDictionary:v45];
  }

  if ([(PEEditSessionEventBuilder *)selfCopy sessionEntryPoint]== 1)
  {
    [(PEEditSessionEventBuilder *)selfCopy quickCropSelectedAspectRatio];
    if (v46 == 0.0 || ([(PEEditSessionEventBuilder *)selfCopy quickCropSelectedAspectRatio], v47 == 0.0))
    {
      [v3 addEntriesFromDictionary:&unk_28706EFF0];
    }

    else
    {
      v78 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v78 setMinimumFractionDigits:1];
      [v78 setMaximumFractionDigits:2];
      v108 = @"quickCropSelectedAspectRatio";
      v79 = MEMORY[0x277CCABB0];
      [(PEEditSessionEventBuilder *)selfCopy quickCropSelectedAspectRatio];
      v81 = v80;
      [(PEEditSessionEventBuilder *)selfCopy quickCropSelectedAspectRatio];
      v83 = [v79 numberWithDouble:v81 / v82];
      v84 = [v78 stringFromNumber:v83];
      v109 = v84;
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      [v3 addEntriesFromDictionary:v85];
    }
  }

  initialComposition = [(PEEditSessionEventBuilder *)selfCopy initialComposition];
  compositionController = [(PEEditSessionEventBuilder *)selfCopy compositionController];
  composition = [compositionController composition];
  v51 = [PEAnalyticsUtility diffKeysFromInitialComposition:initialComposition toFinalComposition:composition];

  v91 = v51;
  [v3 addEntriesFromDictionary:v51];
  if (v93)
  {
    v52 = [PEAnalyticsUtility semanticStylesIdentifierForItem:v93];
    v53 = v52;
    if (v52 && [v52 length])
    {
      v106 = @"semantic_style";
      v107 = v53;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      [v3 addEntriesFromDictionary:v54];
    }

    v55 = [PEAnalyticsUtility semanticStyleCapturedCastForItem:v93];
    v56 = v55;
    if (v55 && [v55 length])
    {
      v104 = @"captured_style_cast";
      v105 = v56;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      [v3 addEntriesFromDictionary:v57];
    }
  }

  if ([(PEEditSessionEventBuilder *)selfCopy segmentationCount])
  {
    v102 = @"cleanup_presegmented_count";
    v58 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder segmentationCount](selfCopy, "segmentationCount")}];
    v103 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    [v3 addEntriesFromDictionary:v59];
  }

  if ([(PEEditSessionEventBuilder *)selfCopy numberOfConsecutiveInpaints])
  {
    v100[0] = @"cleanup_consecutive_inpaints";
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder numberOfConsecutiveInpaints](selfCopy, "numberOfConsecutiveInpaints")}];
    v101[0] = v60;
    v100[1] = @"cleanup_cumulative_consecutive_inpaint_kpixels";
    v61 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder cumulativePixelsOfConsecutiveInpaints](selfCopy, "cumulativePixelsOfConsecutiveInpaints") / 1000}];
    v101[1] = v61;
    v100[2] = @"cleanup_highest_thermal_state";
    v62 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder highestEncounteredThermalStateInCleanup](selfCopy, "highestEncounteredThermalStateInCleanup")}];
    v101[2] = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
    [v3 addEntriesFromDictionary:v63];
  }

  timeSpentInEachTab = [(PEEditSessionEventBuilder *)selfCopy timeSpentInEachTab];

  if (timeSpentInEachTab)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    timeSpentInEachTab2 = [(PEEditSessionEventBuilder *)selfCopy timeSpentInEachTab];
    allKeys = [timeSpentInEachTab2 allKeys];

    v67 = [allKeys countByEnumeratingWithState:&v95 objects:v99 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v96;
      do
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v96 != v69)
          {
            objc_enumerationMutation(allKeys);
          }

          v71 = *(*(&v95 + 1) + 8 * i);
          v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"time_in_tool_%d", objc_msgSend(v71, "unsignedIntValue")];
          timeSpentInEachTab3 = [(PEEditSessionEventBuilder *)v39 timeSpentInEachTab];
          v74 = [timeSpentInEachTab3 objectForKeyedSubscript:v71];
          [v3 setObject:v74 forKeyedSubscript:v72];

          v39 = selfCopy;
        }

        v68 = [allKeys countByEnumeratingWithState:&v95 objects:v99 count:16];
      }

      while (v68);
    }

    v40 = v3;
  }

  compositionController2 = [(PEEditSessionEventBuilder *)v39 compositionController];
  v76 = [PEAnalyticsUtility analyticPayloadForCompositionController:compositionController2];

  [v40 addEntriesFromDictionary:v76];

  return v40;
}

@end