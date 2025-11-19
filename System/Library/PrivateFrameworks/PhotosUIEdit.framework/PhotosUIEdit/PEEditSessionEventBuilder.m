@interface PEEditSessionEventBuilder
+ (id)allowedAdjustmentIdentifiers;
- (BOOL)shouldReportAdjustmentIdentifierString:(id)a3;
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

- (BOOL)shouldReportAdjustmentIdentifierString:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [objc_opt_class() allowedAdjustmentIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v3 lowercaseString];
        v10 = [v8 lowercaseString];
        v11 = [v9 hasPrefix:v10];

        if (v11)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v4 = [(PEEditSessionEventBuilder *)self asset];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CF6E18]];
    v5 = [(PEEditSessionEventBuilder *)self asset];
    v6 = [v5 pixelWidth];
    v7 = [v4 pixelHeight];

    v8 = 1000 * ((v7 * v6 + 500) / 0x3E8uLL);
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

  v10 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];

  if (v10)
  {
    v11 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];
    v12 = [(PEEditSessionEventBuilder *)self shouldReportAdjustmentIdentifierString:v11];

    if (v12)
    {
      v92 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];
      goto LABEL_16;
    }

    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(PEEditSessionEventBuilder *)self adjustmentIdentifierAndVersion];
      *buf = 138412546;
      v115 = v16;
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

  v92 = v14;
LABEL_16:
  v112[0] = @"assetInputPixelCount";
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v113[0] = v90;
  v112[1] = @"bundleIdentifier";
  v89 = [MEMORY[0x277CCA8D8] mainBundle];
  v88 = [v89 bundleIdentifier];
  v113[1] = v88;
  v112[2] = @"isFirstSinceLaunch";
  v87 = [MEMORY[0x277CCABB0] numberWithBool:{-[PEEditSessionEventBuilder isFirstSinceLaunch](self, "isFirstSinceLaunch")}];
  v113[2] = v87;
  v112[3] = @"sessionEndReason";
  v17 = [(PEEditSessionEventBuilder *)self sessionEndReason];
  v93 = v4;
  if ((v17 - 1) > 4)
  {
    v18 = @"Saved";
  }

  else
  {
    v18 = off_279A31388[v17 - 1];
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
  v113[12] = v92;
  v112[12] = @"adjustmentIdentifierAndVersion";
  v112[13] = @"sessionEntryPoint";
  v34 = [(PEEditSessionEventBuilder *)self sessionEntryPoint];
  v35 = @"1UPButton";
  if (v34 == 1)
  {
    v35 = @"1UPQuickCrop";
  }

  if (v34 == 2)
  {
    v35 = @"Arrowing";
  }

  v113[13] = v35;
  v94 = self;
  v36 = MEMORY[0x277CBEAC0];
  v37 = v35;
  v38 = [v36 dictionaryWithObjects:v113 forKeys:v112 count:14];

  [v3 addEntriesFromDictionary:v38];
  v39 = v94;

  v40 = v3;
  if (![(PEEditSessionEventBuilder *)v94 sessionEndReason])
  {
    v41 = [(PEEditSessionEventBuilder *)v94 saveActionType];
    v42 = @"Save";
    if (v41 == 2)
    {
      v42 = @"SaveAsDuplicate";
    }

    if (v41 == 1)
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

  if ([(PEEditSessionEventBuilder *)v94 sessionEntryPoint]== 1)
  {
    [(PEEditSessionEventBuilder *)v94 quickCropSelectedAspectRatio];
    if (v46 == 0.0 || ([(PEEditSessionEventBuilder *)v94 quickCropSelectedAspectRatio], v47 == 0.0))
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
      [(PEEditSessionEventBuilder *)v94 quickCropSelectedAspectRatio];
      v81 = v80;
      [(PEEditSessionEventBuilder *)v94 quickCropSelectedAspectRatio];
      v83 = [v79 numberWithDouble:v81 / v82];
      v84 = [v78 stringFromNumber:v83];
      v109 = v84;
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      [v3 addEntriesFromDictionary:v85];
    }
  }

  v48 = [(PEEditSessionEventBuilder *)v94 initialComposition];
  v49 = [(PEEditSessionEventBuilder *)v94 compositionController];
  v50 = [v49 composition];
  v51 = [PEAnalyticsUtility diffKeysFromInitialComposition:v48 toFinalComposition:v50];

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

  if ([(PEEditSessionEventBuilder *)v94 segmentationCount])
  {
    v102 = @"cleanup_presegmented_count";
    v58 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder segmentationCount](v94, "segmentationCount")}];
    v103 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    [v3 addEntriesFromDictionary:v59];
  }

  if ([(PEEditSessionEventBuilder *)v94 numberOfConsecutiveInpaints])
  {
    v100[0] = @"cleanup_consecutive_inpaints";
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder numberOfConsecutiveInpaints](v94, "numberOfConsecutiveInpaints")}];
    v101[0] = v60;
    v100[1] = @"cleanup_cumulative_consecutive_inpaint_kpixels";
    v61 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder cumulativePixelsOfConsecutiveInpaints](v94, "cumulativePixelsOfConsecutiveInpaints") / 1000}];
    v101[1] = v61;
    v100[2] = @"cleanup_highest_thermal_state";
    v62 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PEEditSessionEventBuilder highestEncounteredThermalStateInCleanup](v94, "highestEncounteredThermalStateInCleanup")}];
    v101[2] = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
    [v3 addEntriesFromDictionary:v63];
  }

  v64 = [(PEEditSessionEventBuilder *)v94 timeSpentInEachTab];

  if (v64)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v65 = [(PEEditSessionEventBuilder *)v94 timeSpentInEachTab];
    v66 = [v65 allKeys];

    v67 = [v66 countByEnumeratingWithState:&v95 objects:v99 count:16];
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
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v95 + 1) + 8 * i);
          v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"time_in_tool_%d", objc_msgSend(v71, "unsignedIntValue")];
          v73 = [(PEEditSessionEventBuilder *)v39 timeSpentInEachTab];
          v74 = [v73 objectForKeyedSubscript:v71];
          [v3 setObject:v74 forKeyedSubscript:v72];

          v39 = v94;
        }

        v68 = [v66 countByEnumeratingWithState:&v95 objects:v99 count:16];
      }

      while (v68);
    }

    v40 = v3;
  }

  v75 = [(PEEditSessionEventBuilder *)v39 compositionController];
  v76 = [PEAnalyticsUtility analyticPayloadForCompositionController:v75];

  [v40 addEntriesFromDictionary:v76];

  return v40;
}

@end