@interface PEAnalyticsUtility
+ (id)adjustmentValueBucketizerFormatter;
+ (id)analyticPayloadForCompositionController:(id)a3;
+ (id)analyticPayloadForCopyEditsSettings:(id)a3;
+ (id)diffFromAdjustmentController:(id)a3 toAdjustmentController:(id)a4;
+ (id)diffKeysFromInitialComposition:(id)a3 toFinalComposition:(id)a4;
+ (id)semanticStyleCapturedCastForItem:(id)a3;
+ (id)semanticStylesIdentifierForItem:(id)a3;
+ (void)reportAnalyticsForChangeFrom:(id)a3 to:(id)a4 actionType:(unint64_t)a5;
@end

@implementation PEAnalyticsUtility

+ (id)analyticPayloadForCopyEditsSettings:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
        v10 = [v9 identifier];
        v11 = @"PECopyEditsSettingIdentifierCinematic";
        if ((v10 - 1) <= 8)
        {
          v11 = off_279A30190[v10 - 1];
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

+ (void)reportAnalyticsForChangeFrom:(id)a3 to:(id)a4 actionType:(unint64_t)a5
{
  if (a5 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_279A30128[a5];
  }

  v7 = [PEAnalyticsUtility diffKeysFromInitialComposition:a3 toFinalComposition:a4];
  if ([v7 count])
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:v5 forKeyedSubscript:@"actionType"];
    [v6 addEntriesFromDictionary:v7];
    [MEMORY[0x277CF6EC0] sendEvent:@"com.apple.photos.CPAnalytics.edit.editAction" withPayload:v6];
  }
}

+ (id)semanticStyleCapturedCastForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 fetchSmartStyleExtendedProperties];
    v5 = [v4 originalSmartStyleCast];
    v6 = [v5 intValue];

    if (v6)
    {
      v7 = [PEAdjustmentUtilities semanticStyleCastForPHAdjustmentStyleCast:v6];
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

+ (id)semanticStylesIdentifierForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [v4 fetchPropertySetsIfNeeded];
    v5 = [v4 photosInfoPanelExtendedProperties];
    v6 = [v5 semanticStylePreset];

    if (v6)
    {
      v7 = [v6 integerValue];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"sem_style_%ld", v7];
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

+ (id)diffFromAdjustmentController:(id)a3 toAdjustmentController:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v27 = v8;
    v29 = v5;
    v9 = [v5 analyticsPayload];
    v28 = v6;
    v10 = [v6 analyticsPayload];
    v11 = [v9 allKeys];
    v12 = [v11 mutableCopy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = v10;
    obj = [v10 allKeys];
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
          v18 = [v9 objectForKeyedSubscript:v17];

          v19 = v7;
          if (v18)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v21 = [v9 objectForKeyedSubscript:v17];
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

    v6 = v28;
    v5 = v29;
  }

  else
  {
    v25 = MEMORY[0x277CBEC10];
  }

  return v25;
}

+ (id)analyticPayloadForCompositionController:(id)a3
{
  v94[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 adjustmentValueBucketizerFormatter];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v4 smartToneAdjustmentController];
  v8 = [v4 smartColorAdjustmentController];
  v92 = v8;
  if ([v7 isAuto] && objc_msgSend(v8, "isAuto"))
  {
    [v6 setObject:@"1" forKeyedSubscript:@"auto-enhance"];
    [v7 inputLight];
    v10 = v9;
    [v7 inputLightDefault];
    if (vabdd_f64(v10, v11) <= 0.001)
    {
      [v6 addEntriesFromDictionary:&unk_28706EFC8];
      goto LABEL_7;
    }

    v93 = @"auto-enhance_intensity";
    v12 = MEMORY[0x277CCABB0];
    [v7 inputLight];
    v13 = [v12 numberWithDouble:?];
    v14 = [v5 stringFromNumber:v13];
    v94[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    [v6 addEntriesFromDictionary:v15];
  }

  else
  {
    v13 = [v7 analyticsPayload];
    v14 = [v8 analyticsPayload];
    [v6 addEntriesFromDictionary:v13];
    [v6 addEntriesFromDictionary:v14];
  }

LABEL_7:
  v16 = [v4 smartBWAdjustmentController];
  v17 = [v16 analyticsPayload];

  v18 = [v4 whiteBalanceAdjustmentController];
  v19 = [v18 analyticsPayload];

  v20 = [v4 cropAdjustmentController];
  v21 = [v20 analyticsPayload];

  v91 = v17;
  [v6 addEntriesFromDictionary:v17];
  v90 = v19;
  [v6 addEntriesFromDictionary:v19];
  v89 = v21;
  [v6 addEntriesFromDictionary:v21];
  v22 = [v4 inpaintAdjustmentController];
  v23 = [v22 analyticsPayload];

  v88 = v23;
  [v6 addEntriesFromDictionary:v23];
  v24 = [v4 semanticStyleAdjustmentController];
  v25 = [v24 analyticsPayload];

  [v6 addEntriesFromDictionary:v25];
  v26 = [v4 sharpenAdjustmentController];
  LODWORD(v23) = [v26 enabled];

  if (v23)
  {
    v27 = [v4 sharpenAdjustmentController];
    v28 = [MEMORY[0x277D3A978] intensityKey];
    v29 = [v27 valueForUndefinedKey:v28];
    [v29 doubleValue];
    v31 = v30;

    if (v31 != 0.0)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
      v33 = [v5 stringFromNumber:v32];
      [v6 setObject:v33 forKeyedSubscript:@"sharpness"];
    }
  }

  v34 = [v4 definitionAdjustmentController];
  v35 = [v34 enabled];

  if (v35)
  {
    v36 = [v4 definitionAdjustmentController];
    v37 = [MEMORY[0x277D3A8C0] intensityKey];
    v38 = [v36 valueForUndefinedKey:v37];
    [v38 doubleValue];
    v40 = v39;

    if (v40 != 0.0)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
      v42 = [v5 stringFromNumber:v41];
      [v6 setObject:v42 forKeyedSubscript:@"definition"];
    }
  }

  v43 = [v4 noiseReductionAdjustmentController];
  v44 = [v43 enabled];

  if (v44)
  {
    v45 = [v4 noiseReductionAdjustmentController];
    v46 = [MEMORY[0x277D3A910] amountKey];
    v47 = [v45 valueForUndefinedKey:v46];
    [v47 doubleValue];
    v49 = v48;

    if (v49 != 0.0)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
      v51 = [v5 stringFromNumber:v50];
      [v6 setObject:v51 forKeyedSubscript:@"noise_reduction"];
    }
  }

  v52 = [v4 vignetteAdjustmentController];
  v53 = [v52 enabled];

  if (v53)
  {
    v54 = [v4 vignetteAdjustmentController];
    [v54 intensity];
    v56 = v55;

    if (v56 != 0.0)
    {
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
      v58 = [v5 stringFromNumber:v57];
      [v6 setObject:v58 forKeyedSubscript:@"vignette"];
    }
  }

  v59 = v5;
  v60 = [v4 slomoAdjustmentController];

  if (v60)
  {
    v61 = [v4 slomoAdjustmentController];
    [v61 rate];
    v63 = v62;

    v64 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
    [v6 setObject:v64 forKeyedSubscript:@"slomo"];
  }

  v65 = [v4 cinematicAudioAdjustmentController];
  v66 = [v65 analyticsPayload];

  [v6 addEntriesFromDictionary:v66];
  v67 = [v4 semanticStyleAdjustmentController];
  v68 = [v67 analyticsPayload];

  [v6 addEntriesFromDictionary:v68];
  v69 = [v4 effect3DAdjustmentController];
  v70 = [v69 enabled];

  if (v70)
  {
    v71 = [v4 effect3DAdjustmentController];
    v72 = [v71 kind];

    if (v72 && ([v72 isEqualToString:&stru_2870659C0] & 1) == 0)
    {
      [v6 setObject:v72 forKeyedSubscript:@"filter"];
    }

    v73 = [v4 effect3DAdjustmentController];
  }

  else
  {
    v74 = [v4 effectAdjustmentController];
    v75 = [v74 enabled];

    if (!v75)
    {
      goto LABEL_34;
    }

    v76 = [v4 effectAdjustmentController];
    v72 = [v76 kind];

    if (v72 && ([v72 isEqualToString:&stru_2870659C0] & 1) == 0)
    {
      [v6 setObject:v72 forKeyedSubscript:@"filter"];
    }

    v73 = [v4 effectAdjustmentController];
  }

  v77 = v73;
  [v73 intensity];
  v79 = v78;

  if (v79 != 0.0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
    v81 = [v59 stringFromNumber:v80];
    [v6 setObject:v81 forKeyedSubscript:@"filter_intensity"];
  }

LABEL_34:
  v82 = [v4 portraitAdjustmentController];
  v83 = [v82 enabled];

  if (v83)
  {
    v84 = [v4 portraitAdjustmentController];
    v85 = [v84 kind];

    if (v85 && ([v85 isEqualToString:&stru_2870659C0] & 1) == 0)
    {
      [v6 setObject:v85 forKeyedSubscript:@"portrait_effect"];
    }
  }

  [v4 userOrientation];
  v86 = NUOrientationName();
  [v6 setObject:v86 forKeyedSubscript:@"user_orientation"];

  return v6;
}

+ (id)diffKeysFromInitialComposition:(id)a3 toFinalComposition:(id)a4
{
  v137[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D3A870]);
  v8 = [v6 copy];
  v109 = [v7 initWithComposition:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v5];
  v13 = [v12 semanticStyleAdjustmentController];

  v14 = 0x277CBE000uLL;
  v108 = v12;
  if (v13)
  {
    v15 = MEMORY[0x277D3AC20];
    v16 = *MEMORY[0x277D3AB10];
    v137[0] = *MEMORY[0x277D3AB10];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:1];
    LODWORD(v15) = [v15 isIdentityCompositionController:v12 forKeys:v17];

    if (v15)
    {
      [v12 removeAdjustmentWithKey:v16];
      v18 = [v12 composition];

      v5 = v18;
    }
  }

  v117 = [v109 composition];
  v110 = [PEAutoAdjustmentController isAutoEnhanceEnabledForCompositionController:v109];
  [v109 differingAdjustmentsWithComposition:v5];
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
    v106 = v6;
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
            v32 = [v5 objectForKeyedSubscript:v23];
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
            v53 = [v5 objectForKeyedSubscript:v23];
            v54 = [v52 initWithAdjustment:v53];

            v33 = v54;
          }

          v55 = [a1 diffFromAdjustmentController:v33 toAdjustmentController:v27];
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

        v34 = [v5 objectForKeyedSubscript:v23];
        if (v34 && (v35 = v34, [v117 objectForKeyedSubscript:v23], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, v36))
        {
          v37 = [v5 objectForKeyedSubscript:v23];
          v38 = [v37 valueForKey:@"enabled"];
          if ([v38 BOOLValue])
          {
            v39 = [v117 objectForKeyedSubscript:v23];
            v40 = [v39 valueForKey:@"enabled"];
            v41 = [v40 BOOLValue];

            v20 = v109;
            if (v41)
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

          v61 = [v5 objectForKeyedSubscript:v23];
          v62 = [v61 valueForKey:@"enabled"];
          if (([v62 BOOLValue] & 1) == 0)
          {

LABEL_46:
            v68 = [v5 objectForKeyedSubscript:v23];
            v69 = [v68 valueForKey:@"enabled"];
            if ([v69 BOOLValue])
            {

              goto LABEL_51;
            }

            v70 = [v117 objectForKeyedSubscript:v23];
            v71 = [v70 valueForKey:@"enabled"];
            v72 = [v71 BOOLValue];

            if (v72)
            {
              [v115 addObject:v23];
              v20 = v109;
              goto LABEL_62;
            }

LABEL_51:
            v73 = [v5 objectForKeyedSubscript:v23];
            v74 = [v73 valueForKey:@"value"];
            if (v74)
            {
              v75 = v74;
              v76 = [v117 objectForKeyedSubscript:v23];
              v77 = [v76 valueForKey:@"value"];

              if (v77)
              {
                v78 = [v5 objectForKeyedSubscript:v23];
                v79 = [v78 valueForKey:@"value"];
                v80 = [v79 stringValue];

                v81 = [v117 objectForKeyedSubscript:v23];
                v82 = [v81 valueForKey:@"value"];
                v83 = [v82 stringValue];

                v20 = v109;
                if (([v80 isEqualToString:v83] & 1) == 0)
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

            v80 = [v5 objectForKeyedSubscript:v23];
            v84 = [v80 valueForKey:@"rate"];
            v20 = v109;
            if (v84)
            {
              v85 = v84;
              v86 = [v117 objectForKeyedSubscript:v23];
              v87 = [v86 valueForKey:@"rate"];

              if (v87)
              {
                v88 = [v5 objectForKeyedSubscript:v23];
                v89 = [v88 valueForKey:@"rate"];
                [v89 floatValue];
                v91 = v90;

                v92 = [v117 objectForKeyedSubscript:v23];
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

          v63 = [v117 objectForKeyedSubscript:v23];
          v64 = [v63 valueForKey:@"enabled"];
          v65 = [v64 BOOLValue];

          if (v65)
          {
            goto LABEL_46;
          }

          v21 = v116;
          [v116 addObject:v23];
          v20 = v109;
        }

        else
        {
          v42 = [v5 objectForKeyedSubscript:v23];
          if (!v42 || (v43 = v42, [v117 objectForKeyedSubscript:v23], v44 = objc_claimAutoreleasedReturnValue(), v44, v43, v44))
          {
            v45 = [v5 objectForKeyedSubscript:v23];
            if (!v45)
            {
              v66 = [v117 objectForKeyedSubscript:v23];

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
        v6 = v106;
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