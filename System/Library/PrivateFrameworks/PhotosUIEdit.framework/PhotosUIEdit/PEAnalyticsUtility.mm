@interface PEAnalyticsUtility
+ (id)adjustmentValueBucketizerFormatter;
+ (id)analyticPayloadForCompositionController:(id)controller;
+ (id)analyticPayloadForCopyEditsSettings:(id)settings;
+ (id)diffFromAdjustmentController:(id)controller toAdjustmentController:(id)adjustmentController;
+ (id)diffKeysFromInitialComposition:(id)composition toFinalComposition:(id)finalComposition;
+ (id)semanticStyleCapturedCastForItem:(id)item;
+ (id)semanticStylesIdentifierForItem:(id)item;
+ (void)reportAnalyticsForChangeFrom:(id)from to:(id)to actionType:(unint64_t)type;
@end

@implementation PEAnalyticsUtility

+ (id)analyticPayloadForCopyEditsSettings:(id)settings
{
  v22 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = +[PECopyEditsSetting allSettings];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = @"PECopyEditsSettingIdentifierCinematic";
        if ((identifier - 1) <= 8)
        {
          v11 = off_279A30190[identifier - 1];
        }

        v12 = v11;
        v13 = PFExists();
        v14 = @"-1";
        if (v13)
        {
          if ([v9 enabled])
          {
            v14 = @"1";
          }

          else
          {
            v14 = @"0";
          }
        }

        [v4 setObject:v14 forKey:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

BOOL __58__PEAnalyticsUtility_analyticPayloadForCopyEditsSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  return v4 == v5;
}

+ (void)reportAnalyticsForChangeFrom:(id)from to:(id)to actionType:(unint64_t)type
{
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_279A30128[type];
  }

  v7 = [PEAnalyticsUtility diffKeysFromInitialComposition:from toFinalComposition:to];
  if ([v7 count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v5 forKeyedSubscript:@"actionType"];
    [dictionary addEntriesFromDictionary:v7];
    [MEMORY[0x277CF6EC0] sendEvent:@"com.apple.photos.CPAnalytics.edit.editAction" withPayload:dictionary];
  }
}

+ (id)semanticStyleCapturedCastForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fetchSmartStyleExtendedProperties = [itemCopy fetchSmartStyleExtendedProperties];
    originalSmartStyleCast = [fetchSmartStyleExtendedProperties originalSmartStyleCast];
    intValue = [originalSmartStyleCast intValue];

    if (intValue)
    {
      v7 = [PEAdjustmentUtilities semanticStyleCastForPHAdjustmentStyleCast:intValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)semanticStylesIdentifierForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    [v4 fetchPropertySetsIfNeeded];
    photosInfoPanelExtendedProperties = [v4 photosInfoPanelExtendedProperties];
    semanticStylePreset = [photosInfoPanelExtendedProperties semanticStylePreset];

    if (semanticStylePreset)
    {
      integerValue = [semanticStylePreset integerValue];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"sem_style_%ld", integerValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)adjustmentValueBucketizerFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setUsesSignificantDigits:0];
  [v2 setRoundingMode:1];
  [v2 setRoundingIncrement:&unk_28706F018];
  [v2 setMultiplier:&unk_28706F030];
  [v2 setZeroSymbol:@"zero"];

  return v2;
}

+ (id)diffFromAdjustmentController:(id)controller toAdjustmentController:(id)adjustmentController
{
  v40 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  adjustmentControllerCopy = adjustmentController;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v27 = v8;
    v29 = controllerCopy;
    analyticsPayload = [controllerCopy analyticsPayload];
    v28 = adjustmentControllerCopy;
    analyticsPayload2 = [adjustmentControllerCopy analyticsPayload];
    allKeys = [analyticsPayload allKeys];
    v12 = [allKeys mutableCopy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = analyticsPayload2;
    obj = [analyticsPayload2 allKeys];
    v13 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          [v12 removeObject:v17];
          v18 = [analyticsPayload objectForKeyedSubscript:v17];

          v19 = v7;
          if (v18)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v21 = [analyticsPayload objectForKeyedSubscript:v17];
            v22 = [v31 objectForKeyedSubscript:v17];
            v23 = (isKindOfClass & 1) != 0 ? [v21 isEqualToString:v22] : objc_msgSend(v21, "isEqual:", v22);
            v24 = v23;

            v19 = v32;
            if (v24)
            {
              continue;
            }
          }

          [v19 addObject:v17];
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    v8 = v27;
    [v27 addObjectsFromArray:v12];
    v37[0] = kDiffAddedKey;
    v37[1] = kDiffModifiedKey;
    v38[0] = v7;
    v38[1] = v32;
    v37[2] = kDiffRemovedKey;
    v38[2] = v27;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

    adjustmentControllerCopy = v28;
    controllerCopy = v29;
  }

  else
  {
    v25 = MEMORY[0x277CBEC10];
  }

  return v25;
}

+ (id)analyticPayloadForCompositionController:(id)controller
{
  v94[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  adjustmentValueBucketizerFormatter = [self adjustmentValueBucketizerFormatter];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  smartToneAdjustmentController = [controllerCopy smartToneAdjustmentController];
  smartColorAdjustmentController = [controllerCopy smartColorAdjustmentController];
  v92 = smartColorAdjustmentController;
  if ([smartToneAdjustmentController isAuto] && objc_msgSend(smartColorAdjustmentController, "isAuto"))
  {
    [v6 setObject:@"1" forKeyedSubscript:@"auto-enhance"];
    [smartToneAdjustmentController inputLight];
    v10 = v9;
    [smartToneAdjustmentController inputLightDefault];
    if (vabdd_f64(v10, v11) <= 0.001)
    {
      [v6 addEntriesFromDictionary:&unk_28706EFC8];
      goto LABEL_7;
    }

    v93 = @"auto-enhance_intensity";
    v12 = MEMORY[0x277CCABB0];
    [smartToneAdjustmentController inputLight];
    analyticsPayload = [v12 numberWithDouble:?];
    analyticsPayload2 = [adjustmentValueBucketizerFormatter stringFromNumber:analyticsPayload];
    v94[0] = analyticsPayload2;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    [v6 addEntriesFromDictionary:v15];
  }

  else
  {
    analyticsPayload = [smartToneAdjustmentController analyticsPayload];
    analyticsPayload2 = [smartColorAdjustmentController analyticsPayload];
    [v6 addEntriesFromDictionary:analyticsPayload];
    [v6 addEntriesFromDictionary:analyticsPayload2];
  }

LABEL_7:
  smartBWAdjustmentController = [controllerCopy smartBWAdjustmentController];
  analyticsPayload3 = [smartBWAdjustmentController analyticsPayload];

  whiteBalanceAdjustmentController = [controllerCopy whiteBalanceAdjustmentController];
  analyticsPayload4 = [whiteBalanceAdjustmentController analyticsPayload];

  cropAdjustmentController = [controllerCopy cropAdjustmentController];
  analyticsPayload5 = [cropAdjustmentController analyticsPayload];

  v91 = analyticsPayload3;
  [v6 addEntriesFromDictionary:analyticsPayload3];
  v90 = analyticsPayload4;
  [v6 addEntriesFromDictionary:analyticsPayload4];
  v89 = analyticsPayload5;
  [v6 addEntriesFromDictionary:analyticsPayload5];
  inpaintAdjustmentController = [controllerCopy inpaintAdjustmentController];
  analyticsPayload6 = [inpaintAdjustmentController analyticsPayload];

  v88 = analyticsPayload6;
  [v6 addEntriesFromDictionary:analyticsPayload6];
  semanticStyleAdjustmentController = [controllerCopy semanticStyleAdjustmentController];
  analyticsPayload7 = [semanticStyleAdjustmentController analyticsPayload];

  [v6 addEntriesFromDictionary:analyticsPayload7];
  sharpenAdjustmentController = [controllerCopy sharpenAdjustmentController];
  LODWORD(analyticsPayload6) = [sharpenAdjustmentController enabled];

  if (analyticsPayload6)
  {
    sharpenAdjustmentController2 = [controllerCopy sharpenAdjustmentController];
    intensityKey = [MEMORY[0x277D3A978] intensityKey];
    v29 = [sharpenAdjustmentController2 valueForUndefinedKey:intensityKey];
    [v29 doubleValue];
    v31 = v30;

    if (v31 != 0.0)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
      v33 = [adjustmentValueBucketizerFormatter stringFromNumber:v32];
      [v6 setObject:v33 forKeyedSubscript:@"sharpness"];
    }
  }

  definitionAdjustmentController = [controllerCopy definitionAdjustmentController];
  enabled = [definitionAdjustmentController enabled];

  if (enabled)
  {
    definitionAdjustmentController2 = [controllerCopy definitionAdjustmentController];
    intensityKey2 = [MEMORY[0x277D3A8C0] intensityKey];
    v38 = [definitionAdjustmentController2 valueForUndefinedKey:intensityKey2];
    [v38 doubleValue];
    v40 = v39;

    if (v40 != 0.0)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
      v42 = [adjustmentValueBucketizerFormatter stringFromNumber:v41];
      [v6 setObject:v42 forKeyedSubscript:@"definition"];
    }
  }

  noiseReductionAdjustmentController = [controllerCopy noiseReductionAdjustmentController];
  enabled2 = [noiseReductionAdjustmentController enabled];

  if (enabled2)
  {
    noiseReductionAdjustmentController2 = [controllerCopy noiseReductionAdjustmentController];
    amountKey = [MEMORY[0x277D3A910] amountKey];
    v47 = [noiseReductionAdjustmentController2 valueForUndefinedKey:amountKey];
    [v47 doubleValue];
    v49 = v48;

    if (v49 != 0.0)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
      v51 = [adjustmentValueBucketizerFormatter stringFromNumber:v50];
      [v6 setObject:v51 forKeyedSubscript:@"noise_reduction"];
    }
  }

  vignetteAdjustmentController = [controllerCopy vignetteAdjustmentController];
  enabled3 = [vignetteAdjustmentController enabled];

  if (enabled3)
  {
    vignetteAdjustmentController2 = [controllerCopy vignetteAdjustmentController];
    [vignetteAdjustmentController2 intensity];
    v56 = v55;

    if (v56 != 0.0)
    {
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
      v58 = [adjustmentValueBucketizerFormatter stringFromNumber:v57];
      [v6 setObject:v58 forKeyedSubscript:@"vignette"];
    }
  }

  v59 = adjustmentValueBucketizerFormatter;
  slomoAdjustmentController = [controllerCopy slomoAdjustmentController];

  if (slomoAdjustmentController)
  {
    slomoAdjustmentController2 = [controllerCopy slomoAdjustmentController];
    [slomoAdjustmentController2 rate];
    v63 = v62;

    v64 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
    [v6 setObject:v64 forKeyedSubscript:@"slomo"];
  }

  cinematicAudioAdjustmentController = [controllerCopy cinematicAudioAdjustmentController];
  analyticsPayload8 = [cinematicAudioAdjustmentController analyticsPayload];

  [v6 addEntriesFromDictionary:analyticsPayload8];
  semanticStyleAdjustmentController2 = [controllerCopy semanticStyleAdjustmentController];
  analyticsPayload9 = [semanticStyleAdjustmentController2 analyticsPayload];

  [v6 addEntriesFromDictionary:analyticsPayload9];
  effect3DAdjustmentController = [controllerCopy effect3DAdjustmentController];
  enabled4 = [effect3DAdjustmentController enabled];

  if (enabled4)
  {
    effect3DAdjustmentController2 = [controllerCopy effect3DAdjustmentController];
    kind = [effect3DAdjustmentController2 kind];

    if (kind && ([kind isEqualToString:&stru_2870659C0] & 1) == 0)
    {
      [v6 setObject:kind forKeyedSubscript:@"filter"];
    }

    effect3DAdjustmentController3 = [controllerCopy effect3DAdjustmentController];
  }

  else
  {
    effectAdjustmentController = [controllerCopy effectAdjustmentController];
    enabled5 = [effectAdjustmentController enabled];

    if (!enabled5)
    {
      goto LABEL_34;
    }

    effectAdjustmentController2 = [controllerCopy effectAdjustmentController];
    kind = [effectAdjustmentController2 kind];

    if (kind && ([kind isEqualToString:&stru_2870659C0] & 1) == 0)
    {
      [v6 setObject:kind forKeyedSubscript:@"filter"];
    }

    effect3DAdjustmentController3 = [controllerCopy effectAdjustmentController];
  }

  v77 = effect3DAdjustmentController3;
  [effect3DAdjustmentController3 intensity];
  v79 = v78;

  if (v79 != 0.0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
    v81 = [v59 stringFromNumber:v80];
    [v6 setObject:v81 forKeyedSubscript:@"filter_intensity"];
  }

LABEL_34:
  portraitAdjustmentController = [controllerCopy portraitAdjustmentController];
  enabled6 = [portraitAdjustmentController enabled];

  if (enabled6)
  {
    portraitAdjustmentController2 = [controllerCopy portraitAdjustmentController];
    kind2 = [portraitAdjustmentController2 kind];

    if (kind2 && ([kind2 isEqualToString:&stru_2870659C0] & 1) == 0)
    {
      [v6 setObject:kind2 forKeyedSubscript:@"portrait_effect"];
    }
  }

  [controllerCopy userOrientation];
  v86 = NUOrientationName();
  [v6 setObject:v86 forKeyedSubscript:@"user_orientation"];

  return v6;
}

+ (id)diffKeysFromInitialComposition:(id)composition toFinalComposition:(id)finalComposition
{
  v137[1] = *MEMORY[0x277D85DE8];
  compositionCopy = composition;
  finalCompositionCopy = finalComposition;
  v7 = objc_alloc(MEMORY[0x277D3A870]);
  v8 = [finalCompositionCopy copy];
  v109 = [v7 initWithComposition:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:compositionCopy];
  semanticStyleAdjustmentController = [v12 semanticStyleAdjustmentController];

  v14 = 0x277CBE000uLL;
  v108 = v12;
  if (semanticStyleAdjustmentController)
  {
    v15 = MEMORY[0x277D3AC20];
    v16 = *MEMORY[0x277D3AB10];
    v137[0] = *MEMORY[0x277D3AB10];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:1];
    LODWORD(v15) = [v15 isIdentityCompositionController:v12 forKeys:v17];

    if (v15)
    {
      [v12 removeAdjustmentWithKey:v16];
      composition = [v12 composition];

      compositionCopy = composition;
    }
  }

  composition2 = [v109 composition];
  v110 = [PEAutoAdjustmentController isAutoEnhanceEnabledForCompositionController:v109];
  [v109 differingAdjustmentsWithComposition:compositionCopy];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v133 = 0u;
  v121 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
  if (v121)
  {
    v114 = v10;
    v115 = v11;
    v105 = v9;
    v106 = finalCompositionCopy;
    v107 = 0;
    v118 = 0;
    v119 = *v131;
    v19 = *MEMORY[0x277D3ABB8];
    v125 = *MEMORY[0x277D3ABC0];
    v123 = *MEMORY[0x277D3AA08];
    v124 = *MEMORY[0x277D3ABE8];
    v122 = *MEMORY[0x277D3AA20];
    v120 = *MEMORY[0x277D3AA68];
    v111 = *MEMORY[0x277D3ABB0];
    v20 = v109;
    v21 = v116;
    while (1)
    {
      for (i = 0; i != v121; ++i)
      {
        if (*v131 != v119)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v130 + 1) + 8 * i);
        v135[0] = v19;
        v135[1] = v125;
        v135[2] = v124;
        v135[3] = v123;
        v135[4] = v122;
        v135[5] = v120;
        v24 = v14;
        v25 = [*(v14 + 2656) arrayWithObjects:v135 count:6];
        v26 = [v25 containsObject:v23];

        if (v26)
        {
          v27 = [v20 adjustmentControllerForKey:v23];
          if (!v27)
          {
            [v20 addAdjustmentWithKey:v23];
            v27 = [v20 adjustmentControllerForKey:v23];
          }

          v28 = [v23 isEqualToString:v19];
          v29 = 0x277D3A988;
          if ((v28 & 1) != 0 || (v30 = [v23 isEqualToString:v125], v29 = 0x277D3A9A0, v30))
          {
            v31 = objc_alloc(*v29);
            v32 = [compositionCopy objectForKeyedSubscript:v23];
            v33 = [v31 initWithAdjustment:v32];
          }

          else
          {
            v33 = 0;
          }

          v46 = [v23 isEqualToString:v111];
          v47 = 0x277D3A980;
          if (v46 & 1) != 0 || (v48 = [v23 isEqualToString:v124], v47 = 0x277D3A9B0, (v48) || (v49 = objc_msgSend(v23, "isEqualToString:", v123), v47 = 0x277D3A8B0, (v49) || (v50 = objc_msgSend(v23, "isEqualToString:", v122), v47 = 0x277D3A8C8, (v50) || (v51 = objc_msgSend(v23, "isEqualToString:", v120), v47 = 0x277D3A8F0, v51))
          {
            v52 = objc_alloc(*v47);
            v53 = [compositionCopy objectForKeyedSubscript:v23];
            v54 = [v52 initWithAdjustment:v53];

            v33 = v54;
          }

          v55 = [self diffFromAdjustmentController:v33 toAdjustmentController:v27];
          v56 = [v55 objectForKeyedSubscript:kDiffAddedKey];
          [v115 addObjectsFromArray:v56];

          v57 = [v55 objectForKeyedSubscript:kDiffModifiedKey];
          [v114 addObjectsFromArray:v57];

          v58 = [v55 objectForKeyedSubscript:kDiffRemovedKey];
          [v21 addObjectsFromArray:v58];

          if ((v118 & 1) == 0)
          {
            if (v110)
            {
              v107 = 1;
              v59 = v115;
              goto LABEL_35;
            }

            v60 = [PEAutoAdjustmentController isAutoEnhanceEnabledForCompositionController:v108];
            v59 = v21;
            if (v60)
            {
LABEL_35:
              [v59 addObject:@"auto-enhance"];
            }
          }

          v118 = 1;
          goto LABEL_63;
        }

        v34 = [compositionCopy objectForKeyedSubscript:v23];
        if (v34 && (v35 = v34, [composition2 objectForKeyedSubscript:v23], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, v36))
        {
          v37 = [compositionCopy objectForKeyedSubscript:v23];
          v38 = [v37 valueForKey:@"enabled"];
          if ([v38 BOOLValue])
          {
            v39 = [composition2 objectForKeyedSubscript:v23];
            v40 = [v39 valueForKey:@"enabled"];
            bOOLValue = [v40 BOOLValue];

            v20 = v109;
            if (bOOLValue)
            {
              [v114 addObject:v23];
LABEL_62:
              v21 = v116;
              goto LABEL_63;
            }
          }

          else
          {
          }

          v61 = [compositionCopy objectForKeyedSubscript:v23];
          v62 = [v61 valueForKey:@"enabled"];
          if (([v62 BOOLValue] & 1) == 0)
          {

LABEL_46:
            v68 = [compositionCopy objectForKeyedSubscript:v23];
            v69 = [v68 valueForKey:@"enabled"];
            if ([v69 BOOLValue])
            {

              goto LABEL_51;
            }

            v70 = [composition2 objectForKeyedSubscript:v23];
            v71 = [v70 valueForKey:@"enabled"];
            bOOLValue2 = [v71 BOOLValue];

            if (bOOLValue2)
            {
              [v115 addObject:v23];
              v20 = v109;
              goto LABEL_62;
            }

LABEL_51:
            v73 = [compositionCopy objectForKeyedSubscript:v23];
            v74 = [v73 valueForKey:@"value"];
            if (v74)
            {
              v75 = v74;
              v76 = [composition2 objectForKeyedSubscript:v23];
              v77 = [v76 valueForKey:@"value"];

              if (v77)
              {
                v78 = [compositionCopy objectForKeyedSubscript:v23];
                v79 = [v78 valueForKey:@"value"];
                stringValue = [v79 stringValue];

                v81 = [composition2 objectForKeyedSubscript:v23];
                v82 = [v81 valueForKey:@"value"];
                stringValue2 = [v82 stringValue];

                v20 = v109;
                if (([stringValue isEqualToString:stringValue2] & 1) == 0)
                {
                  [v114 addObject:v23];
                }

LABEL_61:
                goto LABEL_62;
              }
            }

            else
            {
            }

            stringValue = [compositionCopy objectForKeyedSubscript:v23];
            v84 = [stringValue valueForKey:@"rate"];
            v20 = v109;
            if (v84)
            {
              v85 = v84;
              v86 = [composition2 objectForKeyedSubscript:v23];
              v87 = [v86 valueForKey:@"rate"];

              if (v87)
              {
                v88 = [compositionCopy objectForKeyedSubscript:v23];
                v89 = [v88 valueForKey:@"rate"];
                [v89 floatValue];
                v91 = v90;

                v92 = [composition2 objectForKeyedSubscript:v23];
                v93 = [v92 valueForKey:@"rate"];
                [v93 floatValue];
                v95 = v94;

                v14 = v24;
                if (v91 != v95)
                {
                  v67 = v114;
LABEL_43:
                  [v67 addObject:v23];
                }

                goto LABEL_44;
              }

              goto LABEL_62;
            }

            goto LABEL_61;
          }

          v63 = [composition2 objectForKeyedSubscript:v23];
          v64 = [v63 valueForKey:@"enabled"];
          bOOLValue3 = [v64 BOOLValue];

          if (bOOLValue3)
          {
            goto LABEL_46;
          }

          v21 = v116;
          [v116 addObject:v23];
          v20 = v109;
        }

        else
        {
          v42 = [compositionCopy objectForKeyedSubscript:v23];
          if (!v42 || (v43 = v42, [composition2 objectForKeyedSubscript:v23], v44 = objc_claimAutoreleasedReturnValue(), v44, v43, v44))
          {
            v45 = [compositionCopy objectForKeyedSubscript:v23];
            if (!v45)
            {
              v66 = [composition2 objectForKeyedSubscript:v23];

              v14 = v24;
              if (v66)
              {
                v67 = v115;
                goto LABEL_43;
              }

LABEL_44:
              v21 = v116;
              continue;
            }

            goto LABEL_62;
          }

          v21 = v116;
          [v116 addObject:v23];
        }

LABEL_63:
        v14 = v24;
      }

      v121 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
      if (!v121)
      {
        v9 = v105;
        finalCompositionCopy = v106;
        v10 = v114;
        v11 = v115;
        if (v107)
        {
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v96 = [&unk_28706EF98 countByEnumeratingWithState:&v126 objects:v134 count:16];
          if (v96)
          {
            v97 = v96;
            v98 = *v127;
            do
            {
              for (j = 0; j != v97; ++j)
              {
                if (*v127 != v98)
                {
                  objc_enumerationMutation(&unk_28706EF98);
                }

                v100 = *(*(&v126 + 1) + 8 * j);
                [v115 removeObject:v100];
                [v114 removeObject:v100];
                [v116 removeObject:v100];
              }

              v97 = [&unk_28706EF98 countByEnumeratingWithState:&v126 objects:v134 count:16];
            }

            while (v97);
          }
        }

        break;
      }
    }
  }

  if ([v116 count])
  {
    v101 = [v116 componentsJoinedByString:{@", "}];
    [v9 setObject:v101 forKeyedSubscript:@"adjustments_removed"];
  }

  if ([v11 count])
  {
    v102 = [v11 componentsJoinedByString:{@", "}];
    [v9 setObject:v102 forKeyedSubscript:@"adjustments_added"];
  }

  if ([v10 count])
  {
    v103 = [v10 componentsJoinedByString:{@", "}];
    [v9 setObject:v103 forKeyedSubscript:@"adjustments_modified"];
  }

  return v9;
}

@end