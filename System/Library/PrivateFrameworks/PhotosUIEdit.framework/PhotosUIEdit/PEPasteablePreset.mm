@interface PEPasteablePreset
+ (BOOL)hasValidAdjustmentsInCompositionController:(id)a3;
+ (void)sanitizeCompositionController:(id)a3;
- (BOOL)_isSmart;
- (BOOL)isEligibleForAsyncProcessingOnAsset:(id)a3;
- (BOOL)isEligibleForSmartPasteWithPhotoLibrary:(id)a3 fallbackPayload:(id *)a4;
- (PEAdjustmentPresetAutoDelegate)autoDelegate;
- (PEPasteablePreset)initWithCompositionController:(id)a3 asset:(id)a4 isSmart:(BOOL)a5;
- (id)expAndWBAdjustmentsDebugDescription;
- (id)resourceManager;
- (id)sourceAssetUUID;
- (void)_runAutoCalculatorForCompositionController:(id)a3;
- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 invalidAdjustmentKeys:(id)a6 completion:(id)a7;
@end

@implementation PEPasteablePreset

+ (void)sanitizeCompositionController:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v61.receiver = a1;
  v61.super_class = &OBJC_METACLASS___PEPasteablePreset;
  objc_msgSendSuper2(&v61, sel_sanitizeCompositionController_, v4);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = [v4 adjustmentKeys];
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        v11 = [v4 adjustmentControllerForKey:v10];
        if ([v11 canBeEnabled] && (objc_msgSend(v11, "enabled") & 1) == 0)
        {
          [v4 removeAdjustmentWithKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v7);
  }

  v12 = [v4 cinematicAudioAdjustmentController];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 renderingStyle];
    v15 = *MEMORY[0x277D3A9F0];

    if (v14 == v15)
    {
      [v4 removeAdjustmentWithKey:*MEMORY[0x277D3A9E0]];
    }
  }

  v50 = v13;
  v16 = [v4 cropAdjustmentController];
  v17 = MEMORY[0x277D3AA08];
  if (v16)
  {
    v18 = [v4 orientationAdjustmentController];
    [v18 orientation];

    [v16 cropRect];
    NUOrientationTransformSize();
    v20 = v19;
    v22 = v21;
    v23 = [v16 constraintWidth];
    if (([v16 constraintHeight] | v23) < 0)
    {
      v48 = [MEMORY[0x277CCA890] currentHandler];
      v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
      [v48 handleFailureInFunction:v49 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
    }

    v24 = NUOrientationTransformImageSize();
    v25 = *v17;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __51__PEPasteablePreset_sanitizeCompositionController___block_invoke;
    v56[3] = &__block_descriptor_80_e36_v16__0__PICropAdjustmentController_8l;
    v56[4] = 0;
    v56[5] = 0;
    v56[6] = v20;
    v56[7] = v22;
    v56[8] = v24;
    v56[9] = v26;
    [v4 modifyAdjustmentWithKey:v25 modificationBlock:v56];
  }

  v27 = [v4 userOrientation];
  if (v27 == 1 || (v28 = v27, !NUOrientationIsValid()))
  {
    v29 = *MEMORY[0x277D3AA88];
    [v4 removeAdjustmentWithKey:*MEMORY[0x277D3AA88]];
  }

  else
  {
    v29 = *MEMORY[0x277D3AA88];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __51__PEPasteablePreset_sanitizeCompositionController___block_invoke_2;
    v55[3] = &__block_descriptor_40_e43_v16__0__PIOrientationAdjustmentController_8l;
    v55[4] = v28;
    [v4 modifyAdjustmentWithKey:v29 modificationBlock:v55];
  }

  v30 = [MEMORY[0x277D3A938] adjustmentConstants];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v31 = [MEMORY[0x277D3A938] geometryBasedAdjustmentIdentifiers];
  v32 = [v31 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v52;
    v35 = *v17;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v51 + 1) + 8 * j);
        if (([v37 isEqualToString:v35] & 1) == 0 && (objc_msgSend(v37, "isEqualToString:", v29) & 1) == 0)
        {
          [v4 removeAdjustmentWithKey:v37];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v33);
  }

  v38 = [v30 PILivePhotoKeyFrameAdjustmentKey];
  [v4 removeAdjustmentWithKey:v38];

  v39 = [v30 PIAutoLoopAdjustmentKey];
  [v4 removeAdjustmentWithKey:v39];

  v40 = [v30 PIVideoCrossfadeLoopAdjustmentKey];
  [v4 removeAdjustmentWithKey:v40];

  v41 = [v30 PIVideoPosterFrameAdjustmentKey];
  [v4 removeAdjustmentWithKey:v41];

  v42 = [v30 PIMuteAdjustmentKey];
  [v4 removeAdjustmentWithKey:v42];

  v43 = [v30 PITrimAdjustmentKey];
  [v4 removeAdjustmentWithKey:v43];

  v44 = [v30 PIVideoStabilizeAdjustmentKey];
  [v4 removeAdjustmentWithKey:v44];

  v45 = [v30 PINoiseReductionAdjustmentKey];
  [v4 removeAdjustmentWithKey:v45];

  v46 = [v30 PIRawAdjustmentKey];
  [v4 removeAdjustmentWithKey:v46];

  v47 = [v30 PIRawNoiseReductionAdjustmentKey];
  [v4 removeAdjustmentWithKey:v47];
}

void __51__PEPasteablePreset_sanitizeCompositionController___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setCropRect:{v3, v4, v5, v6}];
  [v7 setConstraintWidth:*(a1 + 8)];
  [v7 setConstraintHeight:*(a1 + 9)];
}

+ (BOOL)hasValidAdjustmentsInCompositionController:(id)a3
{
  v3 = [a3 copy];
  [objc_opt_class() sanitizeCompositionController:v3];
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 slomoAdjustmentController];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 semanticStyleAdjustmentController];

  v7 = [MEMORY[0x277D3AC20] isIdentityCompositionController:v3];
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PEAdjustmentPresetAutoDelegate)autoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_autoDelegate);

  return WeakRetained;
}

- (id)expAndWBAdjustmentsDebugDescription
{
  v2 = [(PEAdjustmentPreset *)self composition];
  v3 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v2];
  v4 = [v3 smartToneAdjustmentController];
  [v4 offsetExposure];
  v6 = v5;

  v7 = [v3 whiteBalanceAdjustmentController];
  [v7 warmTemp];
  v9 = v8;

  v10 = [v3 whiteBalanceAdjustmentController];
  [v10 warmTint];
  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exp(%.2f), Warmth(%.2f), Tint(%.2f)", v6, v9, v12];

  return v13;
}

- (BOOL)_isSmart
{
  v2 = [(PEAdjustmentPreset *)self serializedDictionary];
  v3 = [v2 objectForKey:@"PEAdjustmentPresetSmartKey"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_runAutoCalculatorForCompositionController:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v51 = [v3 adjustmentConstants];
  v4 = [v3 smartToneAdjustmentController];
  if (v4)
  {
    v5 = [v3 smartToneAdjustmentController];
    v6 = [v5 statistics];

    if (!v6)
    {
      v7 = objc_alloc(MEMORY[0x277D3A9A8]);
      v8 = [v3 composition];
      v9 = [v7 initWithComposition:v8];

      [v9 setName:@"PEAdjustmentPresetManager-PISmartToneAutoCalculator"];
      v76 = 0;
      v10 = [v9 submitSynchronous:&v76];
      v11 = v76;
      if (v10)
      {
        v12 = [v51 PISmartToneAdjustmentKey];
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke;
        v74[3] = &unk_279A302D0;
        v75 = v10;
        [v3 modifyAdjustmentWithKey:v12 modificationBlock:v74];

        v13 = v75;
      }

      else
      {
        v13 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPresetManager smart tone calculator failed: %@", &buf, 0xCu);
        }
      }
    }
  }

  v14 = [v3 smartColorAdjustmentController];
  if (v14)
  {
    v15 = [v3 smartColorAdjustmentController];
    v16 = [v15 statistics];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277D3A990]);
      v19 = [v3 composition];
      v20 = [v18 initWithComposition:v19];

      [v20 setName:@"PEAdjustmentPresetManager-PISmartColorAutoCalculator"];
      v73 = 0;
      v21 = [v20 submitSynchronous:&v73];
      v22 = v73;
      if (v21)
      {
        v23 = [v51 PISmartColorAdjustmentKey];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_328;
        v71[3] = &unk_279A30BB8;
        v72 = v21;
        [v3 modifyAdjustmentWithKey:v23 modificationBlock:v71];

        v24 = v72;
      }

      else
      {
        v24 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v22;
          _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset smart color calculator failed: %@", &buf, 0xCu);
        }
      }
    }
  }

  v25 = [v3 portraitAdjustmentController];
  if (v25)
  {
  }

  else
  {
    v26 = [v3 depthAdjustmentController];
    v27 = v26 == 0;

    if (v27)
    {
      goto LABEL_33;
    }
  }

  v50 = [v3 portraitAdjustmentController];
  v28 = [v51 PIPortraitAdjustmentKey];
  [v3 removeAdjustmentWithKey:v28];

  v49 = [v3 depthAdjustmentController];
  v29 = [v51 PIDepthAdjustmentKey];
  [v3 removeAdjustmentWithKey:v29];

  v30 = objc_alloc(MEMORY[0x277D3A940]);
  v31 = [v3 composition];
  v32 = [v30 initWithComposition:v31];

  [v32 setName:@"PEPasteablePreset-PIPortraitAutoCalculator"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy_;
  v82 = __Block_byref_object_dispose_;
  v83 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy_;
  v69 = __Block_byref_object_dispose_;
  v70 = 0;
  v33 = dispatch_group_create();
  dispatch_group_enter(v33);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_333;
  v61[3] = &unk_279A30318;
  p_buf = &buf;
  v64 = &v65;
  v34 = v33;
  v62 = v34;
  [v32 submit:v61];
  dispatch_group_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(&buf + 1) + 40))
  {
    v35 = [v50 kind];
    v36 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:*MEMORY[0x277D3AAA0]];
    LOBYTE(v37) = [v36 count] != 0;
    v38 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:*MEMORY[0x277D3AA98]];
    v39 = v38;
    if (v38 && [v38 BOOLValue])
    {
      v37 = [MEMORY[0x277D3A938] isPortraitStageEffect:v35] ^ 1;
    }

    v40 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:*MEMORY[0x277D3A9D8]];
    v41 = [v40 intValue];
    v42 = v41 > 1;
    if (v35)
    {
      v43 = [MEMORY[0x277D3AD30] equivalentEffectForIdentifier:v35 version:v41];
      if (((v43 != 0) & v37) == 1 && v50)
      {
        v44 = [v51 PIPortraitAdjustmentKey];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_2;
        v55[3] = &unk_279A30340;
        v56 = v50;
        v43 = v43;
        v57 = v43;
        v58 = v36;
        v59 = &buf;
        v60 = v42;
        [v3 modifyAdjustmentWithKey:v44 modificationBlock:v55];
      }
    }

    else
    {
      v43 = 0;
    }

    v46 = [v3 depthAdjustmentController];
    v47 = v46 == 0;

    if (v47)
    {
      v48 = *MEMORY[0x277D3AA20];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_3;
      v52[3] = &unk_279A30368;
      v54 = &buf;
      v53 = v49;
      [v3 modifyAdjustmentWithKey:v48 modificationBlock:v52];
    }
  }

  else
  {
    v35 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v66[5];
      *v77 = 138412290;
      v78 = v45;
      _os_log_impl(&dword_25E6E9000, v35, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset portrait calculator failed: %@", v77, 0xCu);
    }
  }

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&buf, 8);

LABEL_33:
}

void __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_333(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 32));
}

void __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 40) filterIdentifier];
  [*(a1 + 32) setKind:v3];

  [*(a1 + 32) setPortraitInfo:*(a1 + 48)];
  v4 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D3AAA8]];
  [*(a1 + 32) setSpillMatteAllowed:v4];

  if ((*(a1 + 64) & 1) == 0)
  {
    [v6 defaultStrength];
    [*(a1 + 32) setStrength:?];
  }

  v5 = [*(a1 + 32) adjustment];
  [v6 setFromAdjustment:v5];
}

void __64__PEPasteablePreset__runAutoCalculatorForCompositionController___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D3AA40]];
  v4 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D3AA28]];
  [v4 floatValue];
  v6 = v5;

  [v12 setDepthInfo:v3];
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 aperture];
  }

  else
  {
    v8 = v6;
  }

  [v12 setAperture:v8];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v9 enabled];
  }

  else
  {
    v10 = 1;
  }

  [v12 setEnabled:v10];
  v11 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D3AA38]];
  [v12 setGlassesMatteAllowed:v11];
}

- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 invalidAdjustmentKeys:(id)a6 completion:(id)a7
{
  v216 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v157 = a5;
  v14 = a6;
  v153 = a7;
  v15 = [(PEAdjustmentPreset *)self composition];
  v16 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v15];
  v155 = v15;
  v17 = [v15 contents];
  v18 = [v17 allKeys];
  v19 = [v18 mutableCopy];

  v163 = v12;
  v20 = [v12 copy];
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v202 objects:v209 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v203;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v203 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v19 removeObject:*(*(&v202 + 1) + 8 * i)];
      }

      v23 = [v21 countByEnumeratingWithState:&v202 objects:v209 count:16];
    }

    while (v23);
  }

  v154 = v21;

  v151 = *MEMORY[0x277D3AA08];
  [v19 removeObject:?];
  v150 = *MEMORY[0x277D3ABA8];
  [v19 removeObject:?];
  v158 = *MEMORY[0x277D3AA88];
  [v19 removeObject:?];
  v26 = *MEMORY[0x277D3AB10];
  v27 = [v20 adjustmentControllerForKey:*MEMORY[0x277D3AB10]];
  v28 = *MEMORY[0x277D3AA50];
  v29 = MEMORY[0x277D3AA48];
  v161 = v16;
  if (!v27)
  {
    v31 = *MEMORY[0x277D3AA48];
    goto LABEL_14;
  }

  v30 = v27;
  if ([v19 containsObject:v28])
  {

    v31 = *v29;
  }

  else
  {
    v31 = *v29;
    v32 = [v19 containsObject:*v29];

    if ((v32 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  [v19 removeObject:v31];
  [v19 removeObject:v28];
LABEL_14:
  v208[0] = v28;
  v208[1] = v31;
  v208[2] = *MEMORY[0x277D3AA90];
  v208[3] = v26;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v208 count:4];
  v197 = MEMORY[0x277D85DD0];
  v198 = 3221225472;
  v199 = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke;
  v200 = &unk_279A30258;
  v34 = v19;
  v201 = v34;
  v160 = PFFind();
  v156 = v13;
  v152 = v33;
  if (v160)
  {
    v192 = MEMORY[0x277D85DD0];
    v193 = 3221225472;
    v194 = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_2;
    v195 = &unk_279A30258;
    v196 = v20;
    v162 = PFFind();
    [v196 removeAdjustmentWithKey:?];
  }

  else
  {
    v162 = 0;
  }

  v35 = [v163 composition];
  v36 = [v35 mediaType];

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v37 = v34;
  v38 = [v37 countByEnumeratingWithState:&v188 objects:v207 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v189;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v189 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v188 + 1) + 8 * j);
        v187[5] = MEMORY[0x277D85DD0];
        v187[6] = 3221225472;
        v187[7] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_3;
        v187[8] = &unk_279A30280;
        v187[9] = self;
        v187[10] = v42;
        v187[11] = v36;
        [v20 modifyAdjustmentWithKey:? modificationBlock:?];
      }

      v39 = [v37 countByEnumeratingWithState:&v188 objects:v207 count:16];
    }

    while (v39);
  }

  v43 = v161;
  v44 = [v161 orientationAdjustmentController];
  v45 = [v44 orientation];

  if (v45 != 1 && NUOrientationIsValid())
  {
    [v20 imageOrientation];
    v46 = NUOrientationConcat();
    v187[0] = MEMORY[0x277D85DD0];
    v187[1] = 3221225472;
    v187[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_4;
    v187[3] = &__block_descriptor_40_e43_v16__0__PIOrientationAdjustmentController_8l;
    v187[4] = v46;
    [v20 modifyAdjustmentWithKey:v158 modificationBlock:v187];
  }

  v159 = [v161 cropAdjustmentController];
  if (v159)
  {
    v47 = objc_alloc(MEMORY[0x277D2CFB0]);
    v48 = [v20 composition];
    v49 = [v47 initWithComposition:v48];

    v186 = 0;
    v50 = [v49 submitSynchronous:&v186];
    v51 = v186;
    v52 = [v50 geometry];

    if (v52)
    {
      [v52 extent];
      NUPixelRectToCGRect();
      v148 = v55;
      v57 = v56;
      v58 = v53;
      v59 = v54;
      if (v53 == 0.0 || v54 == 0.0 || v53 == *MEMORY[0x277D3A858] && v54 == *(MEMORY[0x277D3A858] + 8))
      {
        v60 = 1.0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 134218496;
          v211 = v58;
          v212 = 2048;
          v213 = v59;
          v214 = 2048;
          v215 = 0x3FF0000000000000;
          _os_log_fault_impl(&dword_25E6E9000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
        }
      }

      else
      {
        v60 = fabs(v53 / v54);
      }

      [v159 cropRect];
      v64 = v62;
      v65 = v63;
      if (v62 == 0.0 || v63 == 0.0 || v62 == *MEMORY[0x277D3A858] && v63 == *(MEMORY[0x277D3A858] + 8))
      {
        v66 = 1.0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 134218496;
          v211 = v64;
          v212 = 2048;
          v213 = v65;
          v214 = 2048;
          v215 = 0x3FF0000000000000;
          _os_log_fault_impl(&dword_25E6E9000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
        }
      }

      else
      {
        v66 = fabs(v62 / v63);
      }

      if (vabdd_f64(v66, v60) > 0.00000999999975)
      {
        v67 = v57 + v59 * 0.5;
        PFSizeWithAspectRatioFittingSize();
        v69 = v68;
        v71 = v70;
        v72 = v148 + v58 * 0.5 + v68 * -0.5;
        v73 = v67 + v70 * -0.5;
        [v52 orientation];
        NUOrientationInverse();
        if (NUOrientationIsValid())
        {
          NUPixelSizeFromCGSize();
          NUOrientationTransformRect();
          v72 = v74;
          v73 = v75;
          v69 = v76;
          v71 = v77;
        }

        v78 = [v20 cropAdjustmentController];
        [v78 cropRect];
        v80 = v79;
        v82 = v81;

        v217.origin.x = v72;
        v217.origin.y = v73;
        v217.size.width = v69;
        v217.size.height = v71;
        v218 = CGRectOffset(v217, v80, v82);
        x = v218.origin.x;
        y = v218.origin.y;
        width = v218.size.width;
        height = v218.size.height;
        v87 = [v159 constraintWidth];
        if (([v159 constraintHeight] | v87) < 0)
        {
          v149 = [MEMORY[0x277CCA890] currentHandler];
          v147 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
          [v149 handleFailureInFunction:@"(width >= 0) && (height >= 0)" file:? lineNumber:? description:?];
        }

        v88 = NUOrientationTransformImageSize();
        v185[0] = MEMORY[0x277D85DD0];
        v185[1] = 3221225472;
        v185[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_5;
        v185[3] = &__block_descriptor_80_e36_v16__0__PICropAdjustmentController_8l;
        *&v185[4] = x;
        *&v185[5] = y;
        *&v185[6] = width;
        *&v185[7] = height;
        v185[8] = v88;
        v185[9] = v89;
        [v20 modifyAdjustmentWithKey:v151 modificationBlock:v185];
        v43 = v161;
      }
    }

    else
    {
      v61 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v211 = *&v51;
        _os_log_impl(&dword_25E6E9000, v61, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset: Failed to paste crop: %@", buf, 0xCu);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    v90 = [v43 slomoAdjustmentController];
    [v90 rate];
    v92 = v91;

    if (v92 > 0.0)
    {
      v93 = [PEPlaybackRateOption playbackRateOptionsForEditSource:v157];
      v94 = [v93 firstObject];
      [v94 playbackRate];
      v96 = v95;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v97 = v93;
      v98 = [v97 countByEnumeratingWithState:&v181 objects:v206 count:16];
      if (v98)
      {
        v99 = v98;
        v100 = vabds_f32(v92, v96);
        v101 = *v182;
        do
        {
          for (k = 0; k != v99; ++k)
          {
            if (*v182 != v101)
            {
              objc_enumerationMutation(v97);
            }

            v103 = *(*(&v181 + 1) + 8 * k);
            [v103 playbackRate];
            v105 = vabds_f32(v104, v92);
            if (v105 < v100)
            {
              v106 = v103;

              v94 = v106;
              v100 = v105;
            }
          }

          v99 = [v97 countByEnumeratingWithState:&v181 objects:v206 count:16];
        }

        while (v99);
      }

      v43 = v161;
      if (v94)
      {
        v107 = [v156 mediaSubtypes];
        [v94 playbackRate];
        if (v108 != 1.0 || (v107 & 0x20000) != 0)
        {
          v178[0] = MEMORY[0x277D85DD0];
          v178[1] = 3221225472;
          v178[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_306;
          v178[3] = &unk_279A302A8;
          v179 = v94;
          v180 = v157;
          [v20 modifyAdjustmentWithKey:v150 modificationBlock:v178];
        }

        else
        {
          [v20 removeAdjustmentWithKey:v150];
        }
      }
    }
  }

  v109 = [v20 smartToneAdjustmentController];
  if (v109)
  {
    v110 = objc_alloc(MEMORY[0x277D3A870]);
    v111 = [MEMORY[0x277D3A938] newComposition];
    v112 = [v110 initWithComposition:v111];

    v113 = *MEMORY[0x277D3ABC0];
    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_2_309;
    v176[3] = &unk_279A302D0;
    v114 = v109;
    v177 = v114;
    [v112 modifyAdjustmentWithKey:v113 modificationBlock:v176];
    v115 = [v112 smartToneAdjustmentController];
    LODWORD(v114) = [v115 isEqualToAdjustmentController:v114];

    if (v114)
    {
      [v20 removeAdjustmentWithKey:v113];
    }
  }

  v116 = [v20 smartColorAdjustmentController];
  if (v116)
  {
    v117 = objc_alloc(MEMORY[0x277D3A870]);
    v118 = [MEMORY[0x277D3A938] newComposition];
    v119 = [v117 initWithComposition:v118];

    v120 = *MEMORY[0x277D3ABB8];
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_3_311;
    v174[3] = &unk_279A30BB8;
    v121 = v116;
    v175 = v121;
    [v119 modifyAdjustmentWithKey:v120 modificationBlock:v174];
    v122 = [v119 smartColorAdjustmentController];
    LODWORD(v121) = [v122 isEqualToAdjustmentController:v121];

    if (v121)
    {
      [v20 removeAdjustmentWithKey:v120];
    }
  }

  [(PEPasteablePreset *)self _runAutoCalculatorForCompositionController:v20];
  if (v162)
  {
    v123 = [v20 adjustmentControllerForKey:v160];

    if (!v123)
    {
      v124 = [v163 composition];
      v125 = [v124 objectForKeyedSubscript:v162];
      [v20 replaceAdjustment:v125 withKey:v162];
    }
  }

  v126 = [v20 depthAdjustmentController];
  if (v126)
  {
    v127 = [v163 depthAdjustmentController];
    [v127 aperture];
    v129 = v128;

    [v126 aperture];
    v131 = v130;
    if (![v126 canAdjustApertureValue])
    {
      if (v131 == v129)
      {
        goto LABEL_92;
      }

      v137 = *MEMORY[0x277D3AA20];
      v172[0] = MEMORY[0x277D85DD0];
      v172[1] = 3221225472;
      v172[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_5_315;
      v172[3] = &__block_descriptor_40_e37_v16__0__PIDepthAdjustmentController_8l;
      *&v172[4] = v129;
      v138 = v172;
      goto LABEL_91;
    }

    [v126 minimumAperture];
    v133 = v132;
    [v126 maximumAperture];
    v135 = v134;
    [v126 aperture];
    if (v133 >= v136)
    {
      v136 = v133;
    }

    if (v136 >= v135)
    {
      v136 = v135;
    }

    if (v131 != v136)
    {
      v137 = *MEMORY[0x277D3AA20];
      v173[0] = MEMORY[0x277D85DD0];
      v173[1] = 3221225472;
      v173[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_4_313;
      v173[3] = &__block_descriptor_40_e37_v16__0__PIDepthAdjustmentController_8l;
      *&v173[4] = v136;
      v138 = v173;
LABEL_91:
      [v20 modifyAdjustmentWithKey:v137 modificationBlock:v138];
    }
  }

LABEL_92:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_6;
  aBlock[3] = &unk_279A313C0;
  v139 = v163;
  v169 = v139;
  v140 = v20;
  v170 = v140;
  v141 = v153;
  v171 = v141;
  v142 = _Block_copy(aBlock);
  if ([(PEAdjustmentPreset *)self isAutoEnhanceEnabled])
  {
    v143 = [(PEPasteablePreset *)self autoDelegate];

    if (v143)
    {
      v144 = [(PEPasteablePreset *)self autoDelegate];
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_317;
      v166[3] = &unk_279A31028;
      v167 = v142;
      [v144 applyAutoEnhance:v140 completion:v166];

      v145 = v167;
    }

    else
    {
      v146 = [(PEAdjustmentPreset *)self autoType]== 1;
      v164[0] = MEMORY[0x277D85DD0];
      v164[1] = 3221225472;
      v164[2] = __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_2_319;
      v164[3] = &unk_279A31028;
      v165 = v142;
      [PEAutoEnhanceActionHelper applyAutoEnhance:v140 replacesAffectedAdjustments:0 useCompositionIntensity:v146 enabled:1 completion:v164];
      v145 = v165;
    }

    v43 = v161;
  }

  else
  {
    v142[2](v142);
  }
}

BOOL __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) adjustmentControllerForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) composition];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    [v5 pasteAdjustment:v4 forMediaType:*(a1 + 48)];
  }
}

void __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_5(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setCropRect:{v3, v4, v5, v6}];
  [v7 setConstraintWidth:*(a1 + 8)];
  [v7 setConstraintHeight:*(a1 + 9)];
  [v7 setIsAuto:0];
  [v7 setEnabled:1];
}

void __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_306(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) playbackRate];
  [v3 setRate:v4];
  if (v3)
  {
    [v3 startTime];
    if ((v15 & 0x100000000) != 0)
    {
      [v3 endTime];
      if (v13)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v5 = MEMORY[0x277CE63D8];
  v6 = [*(a1 + 40) videoURL];
  v7 = [v5 assetWithURL:v6];

  v8 = [MEMORY[0x277D3B518] defaultSlowMotionAdjustmentsForAsset:v7];
  v9 = v8;
  memset(&v12, 0, sizeof(v12));
  if (v8)
  {
    [v8 slowMotionTimeRange];
  }

  *&v10.start.value = *&v12.start.value;
  v10.start.epoch = v12.start.epoch;
  [v3 setStartTime:&v10];
  v10 = v12;
  CMTimeRangeGetEnd(&v11, &v10);
  v10.start = v11;
  [v3 setEndTime:&v10];

LABEL_9:
}

void __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_2_309(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 statistics];
  [v5 setStatistics:v4];

  [v5 setEnabled:{objc_msgSend(*(a1 + 32), "enabled")}];
}

void __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_3_311(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 statistics];
  [v5 setStatistics:v4];

  [v5 setEnabled:{objc_msgSend(*(a1 + 32), "enabled")}];
}

uint64_t __100__PEPasteablePreset_applyToCompositionController_asset_editSource_invalidAdjustmentKeys_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) applyChangesFromCompositionController:*(a1 + 40)];
  if ([MEMORY[0x277D3AC20] isIdentityCompositionController:*(a1 + 32)] && (objc_msgSend(*(a1 + 32), "slomoAdjustmentController"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v3 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v3, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset: No edits applied to compositionController", buf, 2u);
    }
  }

  else
  {
    v3 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E6E9000, v3, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset: Applied edits to compositionController", v5, 2u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (BOOL)isEligibleForSmartPasteWithPhotoLibrary:(id)a3 fallbackPayload:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(PEPasteablePreset *)self _isSmart])
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset isEligibleForSmartPaste=NO: Not a smart preset.", v21, 2u);
    }

    goto LABEL_10;
  }

  if (![(PEAdjustmentPreset *)self isAutoEnhanceEnabled])
  {
    v10 = [(PEPasteablePreset *)self sourceAssetUUID];
    v11 = [v6 librarySpecificFetchOptions];
    [v11 setFetchLimit:1];
    if (!v10 || [v10 isEqualToString:&stru_2870659C0])
    {
      v12 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_25E6E9000, v12, OS_LOG_TYPE_ERROR, "PEPasteablePreset isEligibleForSmartPaste=NO: sourceAssetUUID is invalid.", v21, 2u);
      }

      if (a4)
      {
        [PESCAPReviewPayload legacyPayloadWithReason:3];
        *a4 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_32;
    }

    v13 = MEMORY[0x277CD97A8];
    v22[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v15 = [v13 fetchAssetsWithLocalIdentifiers:v14 options:v11];

    v16 = [v15 firstObject];
    if (v16)
    {
      if ([PESmartPasteablePreset isAssetTypeEligibleForSmartPaste:v16])
      {
        v8 = 1;
LABEL_31:

LABEL_32:
        goto LABEL_33;
      }

      v19 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_25E6E9000, v19, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset isEligibleForSmartPaste=NO: Source asset is a video.", v21, 2u);
      }

      if (a4)
      {
        v18 = 4;
        goto LABEL_29;
      }
    }

    else
    {
      v17 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_25E6E9000, v17, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset isEligibleForSmartPaste=NO: Couldn't fetch the source asset.", v21, 2u);
      }

      if (a4)
      {
        v18 = 3;
LABEL_29:
        [PESCAPReviewPayload legacyPayloadWithReason:v18];
        *a4 = v8 = 0;
        goto LABEL_31;
      }
    }

    v8 = 0;
    goto LABEL_31;
  }

  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "PEPasteablePreset isEligibleForSmartPaste=NO: AutoEnhance is applied to the source asset.", v21, 2u);
  }

  if (!a4)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_33;
  }

  [PESCAPReviewPayload legacyPayloadWithReason:2];
  *a4 = v8 = 0;
LABEL_33:

  return v8;
}

- (BOOL)isEligibleForAsyncProcessingOnAsset:(id)a3
{
  v4 = a3;
  v5 = [(PEPasteablePreset *)self resourceManager];
  v6 = [v5 compositionControllerWithoutSource:v4 originalComposition:0 editorBundleID:0];

  v7 = [(PEAdjustmentPreset *)self composition];
  v8 = [v6 composition];
  v9 = [v4 pixelWidth];
  if (([v4 pixelHeight] * v9) / 1000000.0 > 20.0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
      if (-[NSObject isPhoto](v10, "isPhoto") && (-[NSObject mediaSubtypes](v10, "mediaSubtypes") & 0x10) != 0 && (v7 && ([MEMORY[0x277D3A938] compositionHasAnyStageEffect:v7] & 1) != 0 || v8 && objc_msgSend(MEMORY[0x277D3A938], "compositionHasAnyStageEffect:", v8)))
      {
        v11 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 0;
          v12 = "PEPasteablePreset isEligibleForAsyncProcessingOnAsset=NO: Composition has a stage effect that will be rendered on the 24MP portrait target asset.";
          v13 = &v31;
LABEL_27:
          _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }
  }

  if (v6)
  {
    v14 = [v6 inpaintAdjustmentController];

    if (v14)
    {
      v10 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 0;
        v15 = "PEPasteablePreset isEligibleForAsyncProcessingOnAsset=NO: Destination composition has inpainting.";
        v16 = &v30;
        v17 = v10;
        v18 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
        _os_log_impl(&dword_25E6E9000, v17, v18, v15, v16, 2u);
        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v7];
    v19 = [v10 semanticStyleAdjustmentController];
    if (v19)
    {
    }

    else
    {
      v20 = [v6 semanticStyleAdjustmentController];

      if (!v20)
      {
        goto LABEL_35;
      }
    }

    if ([PESupport assetCanRenderStyles:v4])
    {
      v21 = +[PEGlobalSettings sharedSettings];
      v22 = [v21 synchronousStylesCopyPaste];

      if (v22)
      {
        v11 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          v12 = "PEPasteablePreset isEligibleForAsyncProcessingOnAsset=NO: Destination composition has a Style.";
          v13 = v28;
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      v24 = +[PEGlobalSettings sharedSettings];
      if ([v24 synchronousLivePhotoStylesCopyPaste])
      {
        v25 = [v4 isLivePhoto];

        if (v25)
        {
          v11 = PLPhotoEditGetLog();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v27 = 0;
          v12 = "PEPasteablePreset isEligibleForAsyncProcessingOnAsset=NO: Async Live Photo Styles paste is disabled.";
          v13 = &v27;
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

LABEL_35:
    v23 = 1;
    goto LABEL_36;
  }

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v15 = "PEPasteablePreset isEligibleForAsyncProcessingOnAsset=NO: Source composition is nil";
    v16 = buf;
    v17 = v10;
    v18 = OS_LOG_TYPE_FAULT;
    goto LABEL_21;
  }

LABEL_29:
  v23 = 0;
LABEL_36:

  return v23;
}

- (id)sourceAssetUUID
{
  v2 = [(PEAdjustmentPreset *)self serializedDictionary];
  v3 = [v2 objectForKeyedSubscript:@"PEAdjustmentPresetSourceAssetUUIDKey"];

  return v3;
}

- (id)resourceManager
{
  resourceManager = self->_resourceManager;
  if (!resourceManager)
  {
    v4 = objc_alloc_init(PEResourceManager);
    v5 = self->_resourceManager;
    self->_resourceManager = v4;

    resourceManager = self->_resourceManager;
  }

  return resourceManager;
}

- (PEPasteablePreset)initWithCompositionController:(id)a3 asset:(id)a4 isSmart:(BOOL)a5
{
  v5 = a5;
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = @"PEAdjustmentPresetSmartKey";
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithBool:v5];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [(PEAdjustmentPreset *)self initWithCompositionController:v10 asset:v9 additionalSerializationEntries:v12 includeSidecar:0];

  return v13;
}

@end